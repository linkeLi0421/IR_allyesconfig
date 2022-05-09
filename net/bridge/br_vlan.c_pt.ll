; ModuleID = '/llk/IR_all_yes/net/bridge/br_vlan.c_pt.bc'
source_filename = "../net/bridge/br_vlan.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+br_vlan_enabled\22, \22a\22\09"
module asm "\09.weak\09__crc_br_vlan_enabled\09\09\09\09"
module asm "\09.long\09__crc_br_vlan_enabled\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_br_vlan_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22br_vlan_enabled\22\09\09\09\09\09"
module asm "__kstrtabns_br_vlan_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+br_vlan_get_proto\22, \22a\22\09"
module asm "\09.weak\09__crc_br_vlan_get_proto\09\09\09\09"
module asm "\09.long\09__crc_br_vlan_get_proto\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_br_vlan_get_proto:\09\09\09\09\09"
module asm "\09.asciz \09\22br_vlan_get_proto\22\09\09\09\09\09"
module asm "__kstrtabns_br_vlan_get_proto:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+br_vlan_get_pvid\22, \22a\22\09"
module asm "\09.weak\09__crc_br_vlan_get_pvid\09\09\09\09"
module asm "\09.long\09__crc_br_vlan_get_pvid\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_br_vlan_get_pvid:\09\09\09\09\09"
module asm "\09.asciz \09\22br_vlan_get_pvid\22\09\09\09\09\09"
module asm "__kstrtabns_br_vlan_get_pvid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+br_vlan_get_pvid_rcu\22, \22a\22\09"
module asm "\09.weak\09__crc_br_vlan_get_pvid_rcu\09\09\09\09"
module asm "\09.long\09__crc_br_vlan_get_pvid_rcu\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_br_vlan_get_pvid_rcu:\09\09\09\09\09"
module asm "\09.asciz \09\22br_vlan_get_pvid_rcu\22\09\09\09\09\09"
module asm "__kstrtabns_br_vlan_get_pvid_rcu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+br_vlan_get_info\22, \22a\22\09"
module asm "\09.weak\09__crc_br_vlan_get_info\09\09\09\09"
module asm "\09.long\09__crc_br_vlan_get_info\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_br_vlan_get_info:\09\09\09\09\09"
module asm "\09.asciz \09\22br_vlan_get_info\22\09\09\09\09\09"
module asm "__kstrtabns_br_vlan_get_info:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+br_vlan_get_info_rcu\22, \22a\22\09"
module asm "\09.weak\09__crc_br_vlan_get_info_rcu\09\09\09\09"
module asm "\09.long\09__crc_br_vlan_get_info_rcu\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_br_vlan_get_info_rcu:\09\09\09\09\09"
module asm "\09.asciz \09\22br_vlan_get_info_rcu\22\09\09\09\09\09"
module asm "__kstrtabns_br_vlan_get_info_rcu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.cpumask = type { [1 x i32] }
%struct.lock_class_key = type { %union.anon.7 }
%union.anon.7 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nla_policy = type { i8, i8, i16, %union.anon.27 }
%union.anon.27 = type { i32 }
%struct.anon.28 = type { i16, i16 }
%struct.sk_buff = type { %union.anon, %union.anon.127, %union.anon.128, [48 x i8], %union.anon.129, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.131, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.127 = type { ptr }
%union.anon.128 = type { i64 }
%union.anon.129 = type { %struct.anon.130 }
%struct.anon.130 = type { i32, ptr }
%union.anon.131 = type { %struct.anon.132 }
%struct.anon.132 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.133, i32, i32, i32, i16, i16, %union.anon.135, i32, %union.anon.136, %union.anon.137, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.133 = type { i32 }
%union.anon.135 = type { i32 }
%union.anon.136 = type { i32 }
%union.anon.137 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.net_bridge_vlan = type { %struct.rhash_head, %struct.rhash_head, i16, i16, i16, i8, ptr, %union.anon.151, %union.anon.152, %struct.br_tunnel_info, %union.anon.153, %struct.list_head, %struct.callback_head }
%struct.rhash_head = type { ptr }
%union.anon.151 = type { ptr }
%union.anon.152 = type { %struct.refcount_struct }
%struct.br_tunnel_info = type { i64, ptr }
%union.anon.153 = type { %struct.net_bridge_mcast }
%struct.net_bridge_mcast = type { ptr, ptr, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, %struct.hlist_head, %struct.timer_list, %struct.bridge_mcast_other_query, %struct.bridge_mcast_own_query, %struct.bridge_mcast_querier, %struct.hlist_head, %struct.timer_list, %struct.bridge_mcast_other_query, %struct.bridge_mcast_own_query, %struct.bridge_mcast_querier }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.bridge_mcast_other_query = type { %struct.timer_list, i32 }
%struct.bridge_mcast_own_query = type { %struct.timer_list, i32 }
%struct.bridge_mcast_querier = type { %struct.br_ip, i32, %struct.seqcount_spinlock }
%struct.br_ip = type { %union.anon.149, %union.anon.150, i16, i16 }
%union.anon.149 = type { %struct.in6_addr }
%struct.in6_addr = type { %union.anon.26 }
%union.anon.26 = type { [4 x i32] }
%union.anon.150 = type { %struct.in6_addr }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.net_bridge = type { %struct.spinlock, %struct.spinlock, %struct.hlist_head, ptr, i32, i16, i16, ptr, %struct.rhashtable, %struct.list_head, %union.anon.148, i16, i16, %struct.bridge_id, %struct.bridge_id, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i8], i32, %struct.net_bridge_mcast, ptr, i32, %struct.spinlock, %struct.rhashtable, %struct.rhashtable, %struct.hlist_head, %struct.hlist_head, %struct.work_struct, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.delayed_work, ptr, i32, i32, i32, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head }
%union.anon.148 = type { %struct.rt6_info }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.bridge_id = type { [2 x i8], [6 x i8] }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.126, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.126 = type { ptr }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.pcpu_sw_netstats = type { i64, i64, i64, i64, %struct.u64_stats_sync }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.net_bridge_port = type { ptr, ptr, ptr, %struct.list_head, i32, ptr, ptr, i8, i8, i16, i8, i8, i16, i16, %struct.bridge_id, %struct.bridge_id, i32, i32, i32, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.kobject, %struct.callback_head, %struct.net_bridge_mcast_port, ptr, i32, i32, %struct.hlist_head, [16 x i8], ptr, i32, i32, %struct.netdev_phys_item_id, i16, i16, %struct.bridge_stp_xstats }
%struct.net_bridge_mcast_port = type { ptr, ptr, %struct.bridge_mcast_own_query, %struct.timer_list, %struct.hlist_node, %struct.bridge_mcast_own_query, %struct.timer_list, %struct.hlist_node, i8 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%struct.bridge_stp_xstats = type { i64, i64, i64, i64, i64, i64 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.vlan_ethhdr = type { %union.anon.155, i16, i16, i16 }
%union.anon.155 = type { %struct.anon.156 }
%struct.anon.156 = type { [6 x i8], [6 x i8] }
%struct.net_bridge_vlan_group = type { %struct.rhashtable, %struct.rhashtable, %struct.list_head, i16, i16, i8 }
%struct.bucket_table = type { i32, i32, i32, %struct.list_head, %struct.callback_head, ptr, %struct.lockdep_map, [68 x i8], [0 x ptr] }
%struct.switchdev_attr = type { ptr, i32, i32, ptr, ptr, %union.anon.154 }
%union.anon.154 = type { %struct.switchdev_brport_flags }
%struct.switchdev_brport_flags = type { i32, i32 }
%struct.net_device_path_ctx = type { ptr, ptr, i32, [2 x %struct.anon.121] }
%struct.anon.121 = type { i16, i16 }
%struct.net_device_path = type { i32, ptr, %union.anon.122 }
%union.anon.122 = type { %struct.anon.124, [4 x i8] }
%struct.anon.124 = type { i32, i16, i16 }
%struct.bridge_vlan_info = type { i16, i16 }
%struct.br_vlan_link_state_walk_data = type { ptr }
%struct.netdev_nested_priv = type { i8, ptr }
%struct.netdev_notifier_changeupper_info = type { %struct.netdev_notifier_info, ptr, i8, i8, ptr }
%struct.netdev_notifier_info = type { ptr, ptr }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.116 }
%union.anon.116 = type { [6 x i32], [24 x i8] }
%struct.sock_common = type { %union.anon.100, %union.anon.102, %union.anon.103, i16, i8, i8, i32, %union.anon.105, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.108, [0 x i32], %union.anon.109, i16, i16, %union.anon.110, %struct.refcount_struct, [0 x i32], %union.anon.111 }
%union.anon.100 = type { i64 }
%union.anon.102 = type { i32 }
%union.anon.103 = type { i32 }
%union.anon.105 = type { %struct.hlist_node }
%struct.atomic64_t = type { i64 }
%union.anon.108 = type { i32 }
%union.anon.109 = type { %struct.hlist_node }
%union.anon.110 = type { i32 }
%union.anon.111 = type { i32 }
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
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.99, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
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
%struct.sk_buff_head = type { %union.anon.94, i32, %struct.spinlock }
%union.anon.94 = type { %struct.anon.95 }
%struct.anon.95 = type { ptr, ptr }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.netlink_ext_ack = type { ptr, ptr, ptr, [20 x i8], i8 }
%struct.nlattr = type { i16, i16 }
%struct.br_vlan_bind_walk_data = type { i16, ptr }
%struct.rhashtable_compare_arg = type { ptr, ptr }

@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@br_vlan_add.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"net/bridge/br_vlan.c\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@br_vlan_add.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&(&stat->syncp)->seq\00", [43 x i8] zeroinitializer }, align 32
@br_vlan_delete.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@br_vlan_flush.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@br_vlan_filter_toggle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str, i32 855, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\016%s: vlan filtering disabled, automatically disabling multicast vlan snooping\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"br_vlan_filter_toggle\00", [42 x i8] zeroinitializer }, align 32
@br_vlan_filter_toggle._entry_ptr = internal global ptr @br_vlan_filter_toggle._entry, section ".printk_index", align 4
@__kstrtab_br_vlan_enabled = external dso_local constant [0 x i8], align 1
@__kstrtabns_br_vlan_enabled = external dso_local constant [0 x i8], align 1
@__ksymtab_br_vlan_enabled = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @br_vlan_enabled to i32), ptr @__kstrtab_br_vlan_enabled, ptr @__kstrtabns_br_vlan_enabled }, section "___ksymtab_gpl+br_vlan_enabled", align 4
@__kstrtab_br_vlan_get_proto = external dso_local constant [0 x i8], align 1
@__kstrtabns_br_vlan_get_proto = external dso_local constant [0 x i8], align 1
@__ksymtab_br_vlan_get_proto = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @br_vlan_get_proto to i32), ptr @__kstrtab_br_vlan_get_proto, ptr @__kstrtabns_br_vlan_get_proto }, section "___ksymtab_gpl+br_vlan_get_proto", align 4
@br_vlan_set_default_pvid.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@br_vlan_set_default_pvid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str, i32 1142, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016Please disable vlan filtering to change default_pvid\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"br_vlan_set_default_pvid\00", [39 x i8] zeroinitializer }, align 32
@br_vlan_set_default_pvid._entry_ptr = internal global ptr @br_vlan_set_default_pvid._entry, section ".printk_index", align 4
@br_vlan_rht_params = internal constant { %struct.rhashtable_params, [36 x i8] } { %struct.rhashtable_params { i16 3, i16 2, i16 8, i16 0, i32 4096, i16 0, i8 1, ptr null, ptr null, ptr @br_vlan_cmp }, [36 x i8] zeroinitializer }, align 32
@nbp_vlan_add.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@nbp_vlan_delete.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@nbp_vlan_flush.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@br_vlan_get_pvid.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_br_vlan_get_pvid = external dso_local constant [0 x i8], align 1
@__kstrtabns_br_vlan_get_pvid = external dso_local constant [0 x i8], align 1
@__ksymtab_br_vlan_get_pvid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @br_vlan_get_pvid to i32), ptr @__kstrtab_br_vlan_get_pvid, ptr @__kstrtabns_br_vlan_get_pvid }, section "___ksymtab_gpl+br_vlan_get_pvid", align 4
@__kstrtab_br_vlan_get_pvid_rcu = external dso_local constant [0 x i8], align 1
@__kstrtabns_br_vlan_get_pvid_rcu = external dso_local constant [0 x i8], align 1
@__ksymtab_br_vlan_get_pvid_rcu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @br_vlan_get_pvid_rcu to i32), ptr @__kstrtab_br_vlan_get_pvid_rcu, ptr @__kstrtabns_br_vlan_get_pvid_rcu }, section "___ksymtab_gpl+br_vlan_get_pvid_rcu", align 4
@br_vlan_get_info.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_br_vlan_get_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_br_vlan_get_info = external dso_local constant [0 x i8], align 1
@__ksymtab_br_vlan_get_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @br_vlan_get_info to i32), ptr @__kstrtab_br_vlan_get_info, ptr @__kstrtabns_br_vlan_get_info }, section "___ksymtab_gpl+br_vlan_get_info", align 4
@__kstrtab_br_vlan_get_info_rcu = external dso_local constant [0 x i8], align 1
@__kstrtabns_br_vlan_get_info_rcu = external dso_local constant [0 x i8], align 1
@__ksymtab_br_vlan_get_info_rcu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @br_vlan_get_info_rcu to i32), ptr @__kstrtab_br_vlan_get_info_rcu, ptr @__kstrtabns_br_vlan_get_info_rcu }, section "___ksymtab_gpl+br_vlan_get_info_rcu", align 4
@br_vlan_notify.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@nbp_vlan_group_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"net/bridge/br_private.h\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@br_vlan_group.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@br_vlan_add_existing._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str, i32 688, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013%s: failed to insert local address into bridge forwarding table\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"br_vlan_add_existing\00", [43 x i8] zeroinitializer }, align 32
@br_vlan_add_existing._entry_ptr = internal global ptr @br_vlan_add_existing._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__vlan_add.__key = internal global %struct.lock_class_key zeroinitializer, align 4
@__vlan_add._entry = internal constant %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str, i32 298, ptr null, ptr null }, align 1
@.str.13 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013%s: failed insert local address into bridge forwarding table\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"__vlan_add\00", [21 x i8] zeroinitializer }, align 32
@__vlan_add._entry_ptr = internal global ptr @__vlan_add._entry, section ".printk_index", align 4
@__rhashtable_insert_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/rhashtable.h\00", [37 x i8] zeroinitializer }, align 32
@__rhashtable_insert_fast.__warned.17 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.20 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@rht_ptr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__rhashtable_remove_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast.__warned.21 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.23 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.25 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_lookup.__warned.26 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rht_ptr_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nbp_vlan_group.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@br_rx_handler_check_rtnl.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@br_port_get_rtnl_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@br_rx_handler_check_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@br_port_get_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@br_vlan_group_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@br_vlan_db_dump_pol = internal constant { [2 x %struct.nla_policy], [16 x i8] } { [2 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.27 zeroinitializer }], [16 x i8] zeroinitializer }, align 32
@br_vlan_rtm_dump.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.28 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@__nlmsg_parse.__msg = internal constant [22 x i8] c"Invalid header length\00", align 1
@br_vlan_dump_dev.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@br_vlan_rtm_process.__msg = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"bridge: The device is not a valid bridge or bridge port\00", [40 x i8] zeroinitializer }, align 32
@br_vlan_rtm_process.__msg.29 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"bridge: No vlans found to process\00", [62 x i8] zeroinitializer }, align 32
@br_vlan_rtm_process_one.__msg = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"bridge: Missing vlan entry info\00", [32 x i8] zeroinitializer }, align 32
@br_vlan_rtm_process_one.__msg.30 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"bridge: Old-style vlan ranges are not allowed when using RTM vlan calls\00", [56 x i8] zeroinitializer }, align 32
@br_port_get_rtnl.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nla_parse_nested.__msg = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"NLA_F_NESTED is missing\00", [40 x i8] zeroinitializer }, align 32
@br_vlan_db_policy = internal constant { <{ %struct.nla_policy, { i8, i8, i16, { %struct.anon.28 } }, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy }>, [40 x i8] } { <{ %struct.nla_policy, { i8, i8, i16, { %struct.anon.28 } }, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy }> <{ %struct.nla_policy zeroinitializer, { i8, i8, i16, { %struct.anon.28 } } { i8 11, i8 1, i16 0, { %struct.anon.28 } { %struct.anon.28 { i16 4, i16 4 } } }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.27 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.27 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.27 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.27 zeroinitializer } }>, [40 x i8] zeroinitializer }, align 32
@br_vlan_valid_id.__msg = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bridge: Vlan id is invalid\00", [37 x i8] zeroinitializer }, align 32
@br_vlan_valid_range.__msg = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"bridge: Pvid isn't allowed in a range\00", [58 x i8] zeroinitializer }, align 32
@br_vlan_valid_range.__msg.32 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"bridge: Found a new vlan range start while processing one\00", [38 x i8] zeroinitializer }, align 32
@br_vlan_valid_range.__msg.33 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"bridge: Vlan range end flag is missing\00", [57 x i8] zeroinitializer }, align 32
@br_vlan_valid_range.__msg.34 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"bridge: End vlan id is less than or equal to start vlan id\00", [37 x i8] zeroinitializer }, align 32
@br_vlan_valid_range.__msg.35 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"bridge: Both vlan range flags are missing\00", [54 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967201]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967201]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967201]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967201]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967201]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 112, i64 113]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967201]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967201]
@__sancov_gen_cov_switch_values.44 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 4, i64 5, i64 6, i64 21]
@__sancov_gen_cov_switch_values.45 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 6]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 16, i64 112, i64 113]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 6]
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 721, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 734, i32 16 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 855, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 1142, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant [19 x i8] c"br_vlan_rht_params\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 22, i32 39 }
@___asan_gen_.85 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 271, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 1489, i32 9 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 1471, i32 9 }
@___asan_gen_.96 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 688, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 298, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant [30 x i8] c"../include/linux/rhashtable.h\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 715, i32 8 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 695, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 723, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 991, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant [20 x i8] c"br_vlan_db_dump_pol\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 1993, i32 32 }
@___asan_gen_.129 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 2027, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 2185, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 2210, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 2090, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 2098, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 1208, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant [18 x i8] c"br_vlan_db_policy\00", align 1
@___asan_gen_.148 = private constant [24 x i8] c"../net/bridge/br_vlan.c\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 2049, i32 32 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 640, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 651, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 661, i32 4 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 664, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 667, i32 4 }
@___asan_gen_.165 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.166 = private unnamed_addr constant [27 x i8] c"../net/bridge/br_private.h\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 675, i32 3 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @__ksymtab_br_vlan_enabled, ptr @__ksymtab_br_vlan_get_info, ptr @__ksymtab_br_vlan_get_info_rcu, ptr @__ksymtab_br_vlan_get_proto, ptr @__ksymtab_br_vlan_get_pvid, ptr @__ksymtab_br_vlan_get_pvid_rcu, ptr @__vlan_add._entry, ptr @__vlan_add._entry_ptr, ptr @br_vlan_add_existing._entry, ptr @br_vlan_add_existing._entry_ptr, ptr @br_vlan_filter_toggle._entry, ptr @br_vlan_filter_toggle._entry_ptr, ptr @br_vlan_set_default_pvid._entry, ptr @br_vlan_set_default_pvid._entry_ptr, ptr @.str, ptr @.str.1, ptr @br_vlan_add.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @br_vlan_rht_params, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.27, ptr @br_vlan_db_dump_pol, ptr @.str.28, ptr @br_vlan_rtm_process.__msg, ptr @br_vlan_rtm_process.__msg.29, ptr @br_vlan_rtm_process_one.__msg, ptr @br_vlan_rtm_process_one.__msg.30, ptr @nla_parse_nested.__msg, ptr @br_vlan_db_policy, ptr @br_vlan_valid_id.__msg, ptr @br_vlan_valid_range.__msg, ptr @br_vlan_valid_range.__msg.32, ptr @br_vlan_valid_range.__msg.33, ptr @br_vlan_valid_range.__msg.34, ptr @br_vlan_valid_range.__msg.35], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_vlan_add.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_vlan_filter_toggle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_vlan_set_default_pvid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_vlan_rht_params to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_vlan_add_existing._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_vlan_db_dump_pol to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_vlan_rtm_process.__msg to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_vlan_rtm_process.__msg.29 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_vlan_rtm_process_one.__msg to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_vlan_rtm_process_one.__msg.30 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nla_parse_nested.__msg to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_vlan_db_policy to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_vlan_valid_id.__msg to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_vlan_valid_range.__msg to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_vlan_valid_range.__msg.32 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_vlan_valid_range.__msg.33 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_vlan_valid_range.__msg.34 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_vlan_valid_range.__msg.35 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @br_handle_vlan(ptr noundef %br, ptr noundef readonly %p, ptr noundef %vg, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %vlan_filtered = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %vlan_filtered to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %vlan_filtered, align 1
  %1 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %vlan_present.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %2 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %bf.load.i = load i32, ptr %vlan_present.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i)
  %tobool.not.i = icmp sgt i32 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end.br_vlan_get_tag.exit_crit_edge, label %if.then.i

if.end.br_vlan_get_tag.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_vlan_get_tag.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %vlan_tci.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %3 = ptrtoint ptr %vlan_tci.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %vlan_tci.i, align 2
  %5 = and i16 %4, 4095
  br label %br_vlan_get_tag.exit

br_vlan_get_tag.exit:                             ; preds = %if.then.i, %if.end.br_vlan_get_tag.exit_crit_edge
  %storemerge.i = phi i16 [ %5, %if.then.i ], [ 0, %if.end.br_vlan_get_tag.exit_crit_edge ]
  %tobool.not.i57 = icmp eq ptr %vg, null
  br i1 %tobool.not.i57, label %br_vlan_get_tag.exit.if.then4_crit_edge, label %br_vlan_find.exit

br_vlan_get_tag.exit.if.then4_crit_edge:          ; preds = %br_vlan_get_tag.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then4

br_vlan_find.exit:                                ; preds = %br_vlan_get_tag.exit
  %call.i = tail call fastcc ptr @br_vlan_lookup(ptr noundef nonnull %vg, i16 noundef zeroext %storemerge.i) #17
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %br_vlan_find.exit.if.then4_crit_edge, label %lor.lhs.false

br_vlan_find.exit.if.then4_crit_edge:             ; preds = %br_vlan_find.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then4

lor.lhs.false:                                    ; preds = %br_vlan_find.exit
  %flags.i.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %flags.i.i, align 2
  %8 = and i16 %7, 33
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %8)
  %.not = icmp eq i16 %8, 1
  br i1 %.not, label %lor.lhs.false.if.then4_crit_edge, label %if.end8

lor.lhs.false.if.then4_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then4

if.then4:                                         ; preds = %lor.lhs.false.if.then4_crit_edge, %br_vlan_find.exit.if.then4_crit_edge, %br_vlan_get_tag.exit.if.then4_crit_edge
  %dev = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 3
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 14
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 8
  %and = and i32 %12, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.then4.cleanup.sink.split_crit_edge, label %land.lhs.true

if.then4.cleanup.sink.split_crit_edge:            ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.sink.split

land.lhs.true:                                    ; preds = %if.then4
  %13 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %cmp = icmp eq ptr %15, %10
  br i1 %cmp, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.cleanup.sink.split_crit_edge

land.lhs.true.cleanup.sink.split_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.sink.split

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false
  %options.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 4
  %16 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %options.i, align 4
  %18 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool10.not = icmp eq i32 %18, 0
  br i1 %tobool10.not, label %if.end8.if.end17_crit_edge, label %do.body

if.end8.if.end17_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end17

do.body:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #19
  %stats12 = getelementptr inbounds %struct.net_bridge_vlan, ptr %call.i, i32 0, i32 6
  %19 = ptrtoint ptr %stats12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %stats12, align 8
  %21 = ptrtoint ptr %20 to i32
  %22 = tail call i32 @llvm.read_register.i32(metadata !155) #17
  %and.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %25
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx, align 4
  %add = add i32 %27, %21
  %28 = inttoptr i32 %add to ptr
  %syncp = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %28, i32 0, i32 4
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp)
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %29 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len, align 4
  %conv = zext i32 %30 to i64
  %tx_bytes = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %28, i32 0, i32 3
  %31 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %tx_bytes, align 8
  %add15 = add i64 %32, %conv
  store i64 %add15, ptr %tx_bytes, align 8
  %tx_packets = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %28, i32 0, i32 2
  %33 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %tx_packets, align 16
  %inc = add i64 %34, 1
  store i64 %inc, ptr %tx_packets, align 16
  %dep_map.i.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %28, i32 0, i32 4, i32 0, i32 1
  %35 = tail call ptr @llvm.returnaddress(i32 0) #17
  %36 = ptrtoint ptr %35 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %36) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !165
  %37 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %38, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  br label %if.end17

if.end17:                                         ; preds = %do.body, %if.end8.if.end17_crit_edge
  %39 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %flags.i.i, align 2
  %41 = and i16 %40, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool21.not = icmp eq i16 %41, 0
  br i1 %tobool21.not, label %if.end17.if.end25_crit_edge, label %land.lhs.true22

if.end17.if.end25_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end25

land.lhs.true22:                                  ; preds = %if.end17
  %call23 = tail call zeroext i1 @br_switchdev_frame_uses_tx_fwd_offload(ptr noundef %skb) #17
  br i1 %call23, label %land.lhs.true22.if.end25_crit_edge, label %if.then24

land.lhs.true22.if.end25_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end25

if.then24:                                        ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #19
  %42 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %bf.load.i59 = load i32, ptr %vlan_present.i, align 2
  %bf.clear.i = and i32 %bf.load.i59, 2147483647
  store i32 %bf.clear.i, ptr %vlan_present.i, align 2
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %land.lhs.true22.if.end25_crit_edge, %if.end17.if.end25_crit_edge
  %tobool26.not = icmp eq ptr %p, null
  br i1 %tobool26.not, label %if.end25.cleanup_crit_edge, label %land.lhs.true27

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

land.lhs.true27:                                  ; preds = %if.end25
  %flags28 = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 4
  %43 = ptrtoint ptr %flags28 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flags28, align 4
  %and29 = and i32 %44, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %land.lhs.true27.cleanup_crit_edge, label %land.lhs.true31

land.lhs.true27.cleanup_crit_edge:                ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

land.lhs.true31:                                  ; preds = %land.lhs.true27
  %call32 = tail call i32 @br_handle_egress_vlan_tunnel(ptr noundef %skb, ptr noundef nonnull %call.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %land.lhs.true31.cleanup_crit_edge, label %land.lhs.true31.cleanup.sink.split_crit_edge

land.lhs.true31.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.sink.split

land.lhs.true31.cleanup_crit_edge:                ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

cleanup.sink.split:                               ; preds = %land.lhs.true31.cleanup.sink.split_crit_edge, %land.lhs.true.cleanup.sink.split_crit_edge, %if.then4.cleanup.sink.split_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #17
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true31.cleanup_crit_edge, %land.lhs.true27.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %skb, %if.end25.cleanup_crit_edge ], [ %skb, %land.lhs.true27.cleanup_crit_edge ], [ %skb, %land.lhs.true31.cleanup_crit_edge ], [ %skb, %land.lhs.true.cleanup_crit_edge ], [ %skb, %entry.cleanup_crit_edge ], [ null, %cleanup.sink.split ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @br_vlan_find(ptr noundef %vg, i16 noundef zeroext %vid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %vg, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call = tail call fastcc ptr @br_vlan_lookup(ptr noundef nonnull %vg, i16 noundef zeroext %vid)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi ptr [ %call, %if.end ], [ null, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @u64_stats_update_begin(ptr noundef %syncp) unnamed_addr #2 align 64 {
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
  %1 = tail call i32 @llvm.read_register.i32(metadata !155) #17
  %and.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %4, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !166
  %5 = tail call i32 @llvm.read_register.i32(metadata !155) #17
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
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !167
  %14 = tail call i32 @llvm.read_register.i32(metadata !155) #17
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
  %18 = tail call i32 @llvm.read_register.i32(metadata !155) #17
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
  %22 = tail call i32 @llvm.read_register.i32(metadata !155) #17
  %and.i.i.i9.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %25, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !168
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
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !169
  %33 = tail call i32 @llvm.read_register.i32(metadata !155) #17
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
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !170

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 271, i32 noundef 9, ptr noundef null) #17
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %entry.__seqprop_assert.exit_crit_edge
  %37 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %38, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !171
  %dep_map.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %39 = tail call ptr @llvm.returnaddress(i32 0) #17
  %40 = ptrtoint ptr %39 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %40) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @br_switchdev_frame_uses_tx_fwd_offload(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_handle_egress_vlan_tunnel(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @br_allowed_ingress(ptr noundef %br, ptr noundef %vg, ptr noundef %skb, ptr nocapture noundef %vid, ptr nocapture noundef %state, ptr nocapture noundef writeonly %vlan) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vlan to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %vlan, align 4
  %options.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 4
  %1 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %options.i, align 4
  %and1.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not = icmp eq i32 %and1.i.i, 0
  %vlan_filtered = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 7
  %3 = ptrtoint ptr %vlan_filtered to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %vlan_filtered, align 1
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %bf.clear = and i8 %bf.load, -17
  %4 = ptrtoint ptr %vlan_filtered to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %bf.clear, ptr %vlan_filtered, align 1
  br label %return

if.end:                                           ; preds = %entry
  %bf.set.i = or i8 %bf.load, 16
  %5 = ptrtoint ptr %vlan_filtered to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %bf.set.i, ptr %vlan_filtered, align 1
  %vlan_present.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %6 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %bf.load1.i = load i32, ptr %vlan_present.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load1.i)
  %tobool.not.i = icmp sgt i32 %bf.load1.i, -1
  br i1 %tobool.not.i, label %land.rhs.i, label %if.end.if.end16.i_crit_edge

if.end.if.end16.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end16.i

land.rhs.i:                                       ; preds = %if.end
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %7 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %protocol.i, align 8
  %vlan_proto.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 5
  %9 = ptrtoint ptr %vlan_proto.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %vlan_proto.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %10)
  %cmp.i = icmp eq i16 %8, %10
  br i1 %cmp.i, label %if.then.i, label %land.rhs.i.if.end16.i_crit_edge, !prof !172

land.rhs.i.if.end16.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end16.i

if.then.i:                                        ; preds = %land.rhs.i
  %call.i = tail call ptr @skb_vlan_untag(ptr noundef %skb) #17
  %tobool6.not.i = icmp eq ptr %call.i, null
  br i1 %tobool6.not.i, label %if.then.i.return_crit_edge, label %if.then.i.if.end16.i_crit_edge, !prof !172

if.then.i.if.end16.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end16.i

if.then.i.return_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.end16.i:                                       ; preds = %if.then.i.if.end16.i_crit_edge, %land.rhs.i.if.end16.i_crit_edge, %if.end.if.end16.i_crit_edge
  %skb.addr.0.i = phi ptr [ %call.i, %if.then.i.if.end16.i_crit_edge ], [ %skb, %land.rhs.i.if.end16.i_crit_edge ], [ %skb, %if.end.if.end16.i_crit_edge ]
  %vlan_present.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i, i32 0, i32 15, i32 0, i32 3
  %11 = ptrtoint ptr %vlan_present.i.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %bf.load.i.i = load i32, ptr %vlan_present.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i32 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %if.end16.i.if.then46.sink.split.i_crit_edge, label %if.then19.i

if.end16.i.if.then46.sink.split.i_crit_edge:      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then46.sink.split.i

if.then19.i:                                      ; preds = %if.end16.i
  %vlan_tci.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i, i32 0, i32 15, i32 0, i32 10
  %12 = ptrtoint ptr %vlan_tci.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vlan_tci.i.i, align 2
  %14 = and i16 %13, 4095
  %15 = ptrtoint ptr %vid to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %vid, align 2
  %vlan_proto20.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i, i32 0, i32 15, i32 0, i32 9
  %16 = ptrtoint ptr %vlan_proto20.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vlan_proto20.i, align 8
  %vlan_proto22.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 5
  %18 = ptrtoint ptr %vlan_proto22.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %vlan_proto22.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %17, i16 %19)
  %cmp24.not.i = icmp eq i16 %17, %19
  br i1 %cmp24.not.i, label %if.end44.i, label %if.then26.i

if.then26.i:                                      ; preds = %if.then19.i
  %call27.i = tail call ptr @skb_push(ptr noundef %skb.addr.0.i, i32 noundef 14) #17
  %20 = ptrtoint ptr %vlan_proto20.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %vlan_proto20.i, align 8
  %22 = ptrtoint ptr %vlan_tci.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %vlan_tci.i.i, align 2
  %cloned.i.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i, i32 0, i32 12
  %24 = ptrtoint ptr %cloned.i.i.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load.i.i.i.i.i.i.i = load i8, ptr %cloned.i.i.i.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i.i.i = icmp sgt i8 %bf.load.i.i.i.i.i.i.i, -1
  br i1 %tobool.not.i.i.i.i.i.i.i, label %skb_header_cloned.exit.thread.i.i.i.i.i.i, label %skb_header_cloned.exit.i.i.i.i.i.i

skb_header_cloned.exit.i.i.i.i.i.i:               ; preds = %if.then26.i
  %end.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i, i32 0, i32 17
  %25 = ptrtoint ptr %end.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %end.i.i.i.i.i.i.i.i, align 4
  %dataref1.i.i.i.i.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %26, i32 0, i32 10
  %call.i.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i.i.i.i.i.i, i32 noundef 4) #17
  %27 = ptrtoint ptr %dataref1.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %dataref1.i.i.i.i.i.i.i, align 4
  %data.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i, i32 0, i32 19
  %29 = ptrtoint ptr %data.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data.i.i.i.i.i.i.i.i, align 4
  %head.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i, i32 0, i32 18
  %31 = ptrtoint ptr %head.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %head.i.i.i.i.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i.i.i.i.i = ptrtoint ptr %30 to i32
  %sub.ptr.rhs.cast.i.i.i.i.i.i.i.i = ptrtoint ptr %32 to i32
  %sub.ptr.sub.i.i.i.i.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.ptr.sub.i.i.i.i.i.i.i.i)
  %cmp.i1.i.i.i.i.i.i = icmp ult i32 %sub.ptr.sub.i.i.i.i.i.i.i.i, 4
  br i1 %cmp.i1.i.i.i.i.i.i, label %skb_header_cloned.exit.i.i.i.i.i.i.if.end.thread.i.i.i.i.i.i.i_crit_edge, label %if.end.i2.i.i.i.i.i.i

skb_header_cloned.exit.i.i.i.i.i.i.if.end.thread.i.i.i.i.i.i.i_crit_edge: ; preds = %skb_header_cloned.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.thread.i.i.i.i.i.i.i

skb_header_cloned.exit.thread.i.i.i.i.i.i:        ; preds = %if.then26.i
  %data.i.i5.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i, i32 0, i32 19
  %33 = ptrtoint ptr %data.i.i5.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data.i.i5.i.i.i.i.i.i, align 4
  %head.i.i6.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i, i32 0, i32 18
  %35 = ptrtoint ptr %head.i.i6.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %head.i.i6.i.i.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i7.i.i.i.i.i.i = ptrtoint ptr %34 to i32
  %sub.ptr.rhs.cast.i.i8.i.i.i.i.i.i = ptrtoint ptr %36 to i32
  %sub.ptr.sub.i.i9.i.i.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i7.i.i.i.i.i.i, %sub.ptr.rhs.cast.i.i8.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.ptr.sub.i.i9.i.i.i.i.i.i)
  %cmp.i110.i.i.i.i.i.i = icmp ult i32 %sub.ptr.sub.i.i9.i.i.i.i.i.i, 4
  br i1 %cmp.i110.i.i.i.i.i.i, label %skb_header_cloned.exit.thread.i.i.i.i.i.i.if.end.thread.i.i.i.i.i.i.i_crit_edge, label %skb_header_cloned.exit.thread.i.i.i.i.i.i.vlan_insert_tag.exit.i.i_crit_edge

skb_header_cloned.exit.thread.i.i.i.i.i.i.vlan_insert_tag.exit.i.i_crit_edge: ; preds = %skb_header_cloned.exit.thread.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %vlan_insert_tag.exit.i.i

skb_header_cloned.exit.thread.i.i.i.i.i.i.if.end.thread.i.i.i.i.i.i.i_crit_edge: ; preds = %skb_header_cloned.exit.thread.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.thread.i.i.i.i.i.i.i

if.end.thread.i.i.i.i.i.i.i:                      ; preds = %skb_header_cloned.exit.thread.i.i.i.i.i.i.if.end.thread.i.i.i.i.i.i.i_crit_edge, %skb_header_cloned.exit.i.i.i.i.i.i.if.end.thread.i.i.i.i.i.i.i_crit_edge
  %sub.ptr.sub.i.i12.i.i.i.i.i.i = phi i32 [ %sub.ptr.sub.i.i9.i.i.i.i.i.i, %skb_header_cloned.exit.thread.i.i.i.i.i.i.if.end.thread.i.i.i.i.i.i.i_crit_edge ], [ %sub.ptr.sub.i.i.i.i.i.i.i.i, %skb_header_cloned.exit.i.i.i.i.i.i.if.end.thread.i.i.i.i.i.i.i_crit_edge ]
  %phi.bo.i.i.i.i.i.i.i = sub nuw nsw i32 131, %sub.ptr.sub.i.i12.i.i.i.i.i.i
  %phi.bo11.i.i.i.i.i.i.i = and i32 %phi.bo.i.i.i.i.i.i.i, -128
  br label %skb_cow_head.exit.i.i.i.i.i

if.end.i2.i.i.i.i.i.i:                            ; preds = %skb_header_cloned.exit.i.i.i.i.i.i
  %and.i.i.i.i.i.i.i = and i32 %28, 65535
  %shr.i.i.i.i.i.i.i = ashr i32 %28, 16
  %sub.i.i.i.i.i.i.i = sub nsw i32 %and.i.i.i.i.i.i.i, %shr.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i.i.i.i.i.i)
  %cmp.i.not.i.i.i.i.i.i = icmp eq i32 %sub.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.not.i.i.i.i.i.i, label %if.end.i2.i.i.i.i.i.i.vlan_insert_tag.exit.i.i_crit_edge, label %if.end.i2.i.i.i.i.i.i.skb_cow_head.exit.i.i.i.i.i_crit_edge

if.end.i2.i.i.i.i.i.i.skb_cow_head.exit.i.i.i.i.i_crit_edge: ; preds = %if.end.i2.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %skb_cow_head.exit.i.i.i.i.i

if.end.i2.i.i.i.i.i.i.vlan_insert_tag.exit.i.i_crit_edge: ; preds = %if.end.i2.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %vlan_insert_tag.exit.i.i

skb_cow_head.exit.i.i.i.i.i:                      ; preds = %if.end.i2.i.i.i.i.i.i.skb_cow_head.exit.i.i.i.i.i_crit_edge, %if.end.thread.i.i.i.i.i.i.i
  %delta.010.i.i.i.i.i.i.i = phi i32 [ %phi.bo11.i.i.i.i.i.i.i, %if.end.thread.i.i.i.i.i.i.i ], [ 0, %if.end.i2.i.i.i.i.i.i.skb_cow_head.exit.i.i.i.i.i_crit_edge ]
  %call4.i.i.i.i.i.i.i = tail call i32 @pskb_expand_head(ptr noundef %skb.addr.0.i, i32 noundef %delta.010.i.i.i.i.i.i.i, i32 noundef 0, i32 noundef 2592) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp slt i32 %call4.i.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i.i, label %vlan_insert_tag.exit.thread.i.i, label %skb_cow_head.exit.i.i.i.i.i.vlan_insert_tag.exit.i.i_crit_edge

skb_cow_head.exit.i.i.i.i.i.vlan_insert_tag.exit.i.i_crit_edge: ; preds = %skb_cow_head.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %vlan_insert_tag.exit.i.i

vlan_insert_tag.exit.thread.i.i:                  ; preds = %skb_cow_head.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @__dev_kfree_skb_any(ptr noundef %skb.addr.0.i, i32 noundef 1) #17
  br label %return

vlan_insert_tag.exit.i.i:                         ; preds = %skb_cow_head.exit.i.i.i.i.i.vlan_insert_tag.exit.i.i_crit_edge, %if.end.i2.i.i.i.i.i.i.vlan_insert_tag.exit.i.i_crit_edge, %skb_header_cloned.exit.thread.i.i.i.i.i.i.vlan_insert_tag.exit.i.i_crit_edge
  %call1.i.i.i.i.i = tail call ptr @skb_push(ptr noundef %skb.addr.0.i, i32 noundef 4) #17
  %data.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i, i32 0, i32 19
  %37 = ptrtoint ptr %data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data.i.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %38, i32 4
  %39 = call ptr @memmove(ptr %38, ptr %add.ptr.i.i.i.i.i, i32 12)
  %mac_header.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i, i32 0, i32 15, i32 0, i32 21
  %40 = ptrtoint ptr %mac_header.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %mac_header.i.i.i.i.i, align 2
  %sub7.i.i.i.i.i = add i16 %41, -4
  store i16 %sub7.i.i.i.i.i, ptr %mac_header.i.i.i.i.i, align 2
  %42 = load ptr, ptr %data.i.i.i.i.i, align 4
  %h_vlan_proto.i.i.i.i.i = getelementptr inbounds %struct.vlan_ethhdr, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %h_vlan_proto.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %21, ptr %h_vlan_proto.i.i.i.i.i, align 2
  %h_vlan_TCI.i.i.i.i.i = getelementptr inbounds %struct.vlan_ethhdr, ptr %42, i32 0, i32 2
  %44 = ptrtoint ptr %h_vlan_TCI.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %23, ptr %h_vlan_TCI.i.i.i.i.i, align 2
  %tobool.not.i155.i = icmp eq ptr %skb.addr.0.i, null
  br i1 %tobool.not.i155.i, label %vlan_insert_tag.exit.i.i.return_crit_edge, label %if.end40.i

vlan_insert_tag.exit.i.i.return_crit_edge:        ; preds = %vlan_insert_tag.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.end40.i:                                       ; preds = %vlan_insert_tag.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %protocol.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i, i32 0, i32 15, i32 0, i32 18
  %45 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %21, ptr %protocol.i.i, align 8
  %call41.i = tail call ptr @skb_pull(ptr noundef nonnull %skb.addr.0.i, i32 noundef 14) #17
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i, i32 0, i32 15, i32 0, i32 20
  %46 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %network_header.i.i, align 4
  %48 = ptrtoint ptr %mac_header.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %mac_header.i.i.i.i.i, align 2
  %sub.i.i = sub i16 %47, %49
  %mac_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i, i32 0, i32 8
  %50 = ptrtoint ptr %mac_len.i.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %sub.i.i, ptr %mac_len.i.i, align 4
  br label %if.then46.sink.split.i

if.end44.i:                                       ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool45.not.i = icmp eq i16 %14, 0
  br i1 %tobool45.not.i, label %if.end44.i.if.then46.i_crit_edge, label %if.end83.i

if.end44.i.if.then46.i_crit_edge:                 ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then46.i

if.then46.sink.split.i:                           ; preds = %if.end40.i, %if.end16.i.if.then46.sink.split.i_crit_edge
  %51 = ptrtoint ptr %vid to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 0, ptr %vid, align 2
  br label %if.then46.i

if.then46.i:                                      ; preds = %if.then46.sink.split.i, %if.end44.i.if.then46.i_crit_edge
  %tagged.0.off0181.i = phi i1 [ false, %if.end44.i.if.then46.i_crit_edge ], [ true, %if.then46.sink.split.i ]
  %tobool.not.i157.i = icmp eq ptr %vg, null
  br i1 %tobool.not.i157.i, label %if.then46.i.drop.i_crit_edge, label %br_get_pvid.exit.i

if.then46.i.drop.i_crit_edge:                     ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %drop.i

br_get_pvid.exit.i:                               ; preds = %if.then46.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !173
  %pvid.i.i = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %vg, i32 0, i32 4
  %52 = ptrtoint ptr %pvid.i.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %pvid.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %tobool48.not.i = icmp eq i16 %53, 0
  br i1 %tobool48.not.i, label %br_get_pvid.exit.i.drop.i_crit_edge, label %if.end50.i

br_get_pvid.exit.i.drop.i_crit_edge:              ; preds = %br_get_pvid.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %drop.i

if.end50.i:                                       ; preds = %br_get_pvid.exit.i
  %54 = ptrtoint ptr %vid to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %53, ptr %vid, align 2
  br i1 %tagged.0.off0181.i, label %if.then60.i, label %if.else62.i, !prof !170

if.then60.i:                                      ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #19
  %vlan_proto61.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 5
  %55 = ptrtoint ptr %vlan_proto61.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %vlan_proto61.i, align 4
  %vlan_proto1.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i, i32 0, i32 15, i32 0, i32 9
  %57 = ptrtoint ptr %vlan_proto1.i.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %vlan_proto1.i.i, align 8
  %vlan_tci2.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i, i32 0, i32 15, i32 0, i32 10
  %58 = ptrtoint ptr %vlan_tci2.i.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %53, ptr %vlan_tci2.i.i, align 2
  %59 = ptrtoint ptr %vlan_present.i.i to i32
  call void @__asan_loadN_noabort(i32 %59, i32 4)
  %bf.load.i159.i = load i32, ptr %vlan_present.i.i, align 2
  %bf.set.i.i = or i32 %bf.load.i159.i, -2147483648
  store i32 %bf.set.i.i, ptr %vlan_present.i.i, align 2
  br label %if.end67.i

if.else62.i:                                      ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #19
  %vlan_tci64.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i, i32 0, i32 15, i32 0, i32 10
  %60 = ptrtoint ptr %vlan_tci64.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %vlan_tci64.i, align 2
  %or154.i = or i16 %61, %53
  store i16 %or154.i, ptr %vlan_tci64.i, align 2
  br label %if.end67.i

if.end67.i:                                       ; preds = %if.else62.i, %if.then60.i
  %62 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %options.i, align 4
  %64 = and i32 %63, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool69.not.i = icmp eq i32 %64, 0
  br i1 %tobool69.not.i, label %land.lhs.true.i, label %if.end67.i.br_vlan_find.exit.i_crit_edge

if.end67.i.br_vlan_find.exit.i_crit_edge:         ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_vlan_find.exit.i

land.lhs.true.i:                                  ; preds = %if.end67.i
  %65 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %options.i, align 4
  %67 = and i32 %66, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool71.not.i = icmp eq i32 %67, 0
  br i1 %tobool71.not.i, label %if.then72.i, label %land.lhs.true.i.br_vlan_find.exit.i_crit_edge

land.lhs.true.i.br_vlan_find.exit.i_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_vlan_find.exit.i

if.then72.i:                                      ; preds = %land.lhs.true.i
  %68 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %69)
  %cmp74.i = icmp eq i8 %69, 3
  br i1 %cmp74.i, label %if.then76.i, label %if.then72.i.return_crit_edge

if.then72.i.return_crit_edge:                     ; preds = %if.then72.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.then76.i:                                      ; preds = %if.then72.i
  %pvid_state.i.i = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %vg, i32 0, i32 5
  %70 = ptrtoint ptr %pvid_state.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load volatile i8, ptr %pvid_state.i.i, align 4
  %72 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %71, ptr %state, align 1
  %73 = and i8 %71, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %73)
  %switch.i = icmp eq i8 %73, 2
  br i1 %switch.i, label %if.then76.i.return_crit_edge, label %if.then76.i.drop.i_crit_edge

if.then76.i.drop.i_crit_edge:                     ; preds = %if.then76.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %drop.i

if.then76.i.return_crit_edge:                     ; preds = %if.then76.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.end83.i:                                       ; preds = %if.end44.i
  %tobool.not.i164.i = icmp eq ptr %vg, null
  br i1 %tobool.not.i164.i, label %if.end83.i.drop.i_crit_edge, label %if.end83.i.br_vlan_find.exit.i_crit_edge

if.end83.i.br_vlan_find.exit.i_crit_edge:         ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_vlan_find.exit.i

if.end83.i.drop.i_crit_edge:                      ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %drop.i

br_vlan_find.exit.i:                              ; preds = %if.end83.i.br_vlan_find.exit.i_crit_edge, %land.lhs.true.i.br_vlan_find.exit.i_crit_edge, %if.end67.i.br_vlan_find.exit.i_crit_edge
  %74 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %vid, align 2
  %call.i.i = tail call fastcc ptr @br_vlan_lookup(ptr noundef nonnull %vg, i16 noundef zeroext %75) #17
  %tobool85.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool85.not.i, label %br_vlan_find.exit.i.drop.i_crit_edge, label %lor.lhs.false.i

br_vlan_find.exit.i.drop.i_crit_edge:             ; preds = %br_vlan_find.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %drop.i

lor.lhs.false.i:                                  ; preds = %br_vlan_find.exit.i
  %flags.i.i.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %call.i.i, i32 0, i32 3
  %76 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %flags.i.i.i, align 2
  %78 = and i16 %77, 33
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %78)
  %.not.i = icmp eq i16 %78, 1
  br i1 %.not.i, label %lor.lhs.false.i.drop.i_crit_edge, label %if.end88.i

lor.lhs.false.i.drop.i_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %drop.i

if.end88.i:                                       ; preds = %lor.lhs.false.i
  %79 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %80)
  %cmp90.i = icmp eq i8 %80, 3
  br i1 %cmp90.i, label %if.then92.i, label %if.end88.i.if.end97.i_crit_edge

if.end88.i.if.end97.i_crit_edge:                  ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end97.i

if.then92.i:                                      ; preds = %if.end88.i
  %state.i.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %call.i.i, i32 0, i32 5
  %81 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load volatile i8, ptr %state.i.i, align 2
  %83 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %state, align 1
  %84 = and i8 %82, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %84)
  %switch202.i = icmp eq i8 %84, 2
  br i1 %switch202.i, label %if.then92.i.if.end97.i_crit_edge, label %if.then92.i.drop.i_crit_edge

if.then92.i.drop.i_crit_edge:                     ; preds = %if.then92.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %drop.i

if.then92.i.if.end97.i_crit_edge:                 ; preds = %if.then92.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end97.i

if.end97.i:                                       ; preds = %if.then92.i.if.end97.i_crit_edge, %if.end88.i.if.end97.i_crit_edge
  %85 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %options.i, align 4
  %87 = and i32 %86, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool99.not.i = icmp eq i32 %87, 0
  br i1 %tobool99.not.i, label %if.end97.i.if.end107.i_crit_edge, label %do.body.i

if.end97.i.if.end107.i_crit_edge:                 ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end107.i

do.body.i:                                        ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #19
  %stats101.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %call.i.i, i32 0, i32 6
  %88 = ptrtoint ptr %stats101.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %stats101.i, align 8
  %90 = ptrtoint ptr %89 to i32
  %91 = tail call i32 @llvm.read_register.i32(metadata !155) #17
  %and.i.i = and i32 %91, -16384
  %92 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %92, i32 0, i32 3
  %93 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %94
  %95 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %96, %90
  %97 = inttoptr i32 %add.i to ptr
  %syncp.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %97, i32 0, i32 4
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp.i) #17
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i, i32 0, i32 6
  %98 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %len.i, align 4
  %conv104.i = zext i32 %99 to i64
  %rx_bytes.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %97, i32 0, i32 1
  %100 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %rx_bytes.i, align 8
  %add105.i = add i64 %101, %conv104.i
  store i64 %add105.i, ptr %rx_bytes.i, align 8
  %102 = ptrtoint ptr %97 to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %97, align 32
  %inc.i = add i64 %103, 1
  store i64 %inc.i, ptr %97, align 32
  %dep_map.i.i.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %97, i32 0, i32 4, i32 0, i32 1
  %104 = tail call ptr @llvm.returnaddress(i32 0) #17
  %105 = ptrtoint ptr %104 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %105) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !165
  %106 = ptrtoint ptr %syncp.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %syncp.i, align 4
  %inc.i.i.i.i = add i32 %107, 1
  store i32 %inc.i.i.i.i, ptr %syncp.i, align 4
  br label %if.end107.i

if.end107.i:                                      ; preds = %do.body.i, %if.end97.i.if.end107.i_crit_edge
  %108 = ptrtoint ptr %vlan to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %call.i.i, ptr %vlan, align 4
  br label %return

drop.i:                                           ; preds = %if.then92.i.drop.i_crit_edge, %lor.lhs.false.i.drop.i_crit_edge, %br_vlan_find.exit.i.drop.i_crit_edge, %if.end83.i.drop.i_crit_edge, %if.then76.i.drop.i_crit_edge, %br_get_pvid.exit.i.drop.i_crit_edge, %if.then46.i.drop.i_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb.addr.0.i, i32 noundef 0) #17
  br label %return

return:                                           ; preds = %drop.i, %if.end107.i, %if.then76.i.return_crit_edge, %if.then72.i.return_crit_edge, %vlan_insert_tag.exit.i.i.return_crit_edge, %vlan_insert_tag.exit.thread.i.i, %if.then.i.return_crit_edge, %if.then
  %retval.0 = phi i1 [ true, %if.then ], [ true, %if.end107.i ], [ false, %drop.i ], [ false, %if.then.i.return_crit_edge ], [ false, %vlan_insert_tag.exit.thread.i.i ], [ false, %vlan_insert_tag.exit.i.i.return_crit_edge ], [ true, %if.then72.i.return_crit_edge ], [ true, %if.then76.i.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @br_allowed_egress(ptr noundef %vg, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %vlan_filtered = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %vlan_filtered to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %vlan_filtered, align 1
  %1 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %vlan_present.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %2 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %bf.load.i = load i32, ptr %vlan_present.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i)
  %tobool.not.i = icmp sgt i32 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end.br_vlan_get_tag.exit_crit_edge, label %if.then.i

if.end.br_vlan_get_tag.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_vlan_get_tag.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %vlan_tci.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %3 = ptrtoint ptr %vlan_tci.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %vlan_tci.i, align 2
  %5 = and i16 %4, 4095
  br label %br_vlan_get_tag.exit

br_vlan_get_tag.exit:                             ; preds = %if.then.i, %if.end.br_vlan_get_tag.exit_crit_edge
  %storemerge.i = phi i16 [ %5, %if.then.i ], [ 0, %if.end.br_vlan_get_tag.exit_crit_edge ]
  %tobool.not.i13 = icmp eq ptr %vg, null
  br i1 %tobool.not.i13, label %br_vlan_get_tag.exit.cleanup_crit_edge, label %br_vlan_find.exit

br_vlan_get_tag.exit.cleanup_crit_edge:           ; preds = %br_vlan_get_tag.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

br_vlan_find.exit:                                ; preds = %br_vlan_get_tag.exit
  %call.i = tail call fastcc ptr @br_vlan_lookup(ptr noundef nonnull %vg, i16 noundef zeroext %storemerge.i) #17
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %br_vlan_find.exit.cleanup_crit_edge, label %land.lhs.true

br_vlan_find.exit.cleanup_crit_edge:              ; preds = %br_vlan_find.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

land.lhs.true:                                    ; preds = %br_vlan_find.exit
  %flags.i.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %flags.i.i, align 2
  %8 = and i16 %7, 33
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %8)
  %.not = icmp eq i16 %8, 1
  br i1 %.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true4

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

land.lhs.true4:                                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %state.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %call.i, i32 0, i32 5
  %9 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load volatile i8, ptr %state.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %10)
  %cond = icmp eq i8 %10, 3
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true4, %land.lhs.true.cleanup_crit_edge, %br_vlan_find.exit.cleanup_crit_edge, %br_vlan_get_tag.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %entry.cleanup_crit_edge ], [ false, %land.lhs.true.cleanup_crit_edge ], [ false, %br_vlan_find.exit.cleanup_crit_edge ], [ false, %br_vlan_get_tag.exit.cleanup_crit_edge ], [ %cond, %land.lhs.true4 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @br_should_learn(ptr noundef %p, ptr nocapture noundef readonly %skb, ptr nocapture noundef %vid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %options.i = getelementptr inbounds %struct.net_bridge, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %options.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %vlgrp.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 5
  %4 = ptrtoint ptr %vlgrp.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %vlgrp.i, align 8
  %call.i = tail call i32 @rcu_read_lock_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end.nbp_vlan_group_rcu.exit_crit_edge

if.end.nbp_vlan_group_rcu.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %nbp_vlan_group_rcu.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.nbp_vlan_group_rcu.exit_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.nbp_vlan_group_rcu.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %nbp_vlan_group_rcu.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b9.i = load i1, ptr @nbp_vlan_group_rcu.__warned, align 1
  br i1 %.b9.i, label %land.lhs.true4.i.nbp_vlan_group_rcu.exit_crit_edge, label %if.then.i

land.lhs.true4.i.nbp_vlan_group_rcu.exit_crit_edge: ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %nbp_vlan_group_rcu.exit

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @nbp_vlan_group_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 1489, ptr noundef nonnull @.str.9) #17
  br label %nbp_vlan_group_rcu.exit

nbp_vlan_group_rcu.exit:                          ; preds = %if.then.i, %land.lhs.true4.i.nbp_vlan_group_rcu.exit_crit_edge, %land.lhs.true.i.nbp_vlan_group_rcu.exit_crit_edge, %if.end.nbp_vlan_group_rcu.exit_crit_edge
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %nbp_vlan_group_rcu.exit.cleanup_crit_edge, label %lor.lhs.false

nbp_vlan_group_rcu.exit.cleanup_crit_edge:        ; preds = %nbp_vlan_group_rcu.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false:                                    ; preds = %nbp_vlan_group_rcu.exit
  %num_vlans = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %num_vlans to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %num_vlans, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool4.not = icmp eq i16 %7, 0
  br i1 %tobool4.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end6

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false
  %vlan_present.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %8 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %bf.load.i = load i32, ptr %vlan_present.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i)
  %tobool.not.i47 = icmp sgt i32 %bf.load.i, -1
  br i1 %tobool.not.i47, label %if.end6.br_get_pvid.exit.sink.split_crit_edge, label %land.lhs.true

if.end6.br_get_pvid.exit.sink.split_crit_edge:    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_get_pvid.exit.sink.split

land.lhs.true:                                    ; preds = %if.end6
  %vlan_tci.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %9 = ptrtoint ptr %vlan_tci.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %vlan_tci.i, align 2
  %11 = and i16 %10, 4095
  %12 = ptrtoint ptr %vid to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %vid, align 2
  %vlan_proto = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 9
  %13 = ptrtoint ptr %vlan_proto to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %vlan_proto, align 8
  %vlan_proto9 = getelementptr inbounds %struct.net_bridge, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %vlan_proto9 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %vlan_proto9, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %14, i16 %16)
  %cmp.not = icmp eq i16 %14, %16
  br i1 %cmp.not, label %if.end13, label %land.lhs.true.br_get_pvid.exit.sink.split_crit_edge

land.lhs.true.br_get_pvid.exit.sink.split_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_get_pvid.exit.sink.split

if.end13:                                         ; preds = %land.lhs.true
  %17 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %17)
  %.pr = load i16, ptr %vid, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.pr)
  %tobool14.not = icmp eq i16 %.pr, 0
  br i1 %tobool14.not, label %if.end13.br_get_pvid.exit_crit_edge, label %br_vlan_find.exit

if.end13.br_get_pvid.exit_crit_edge:              ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_get_pvid.exit

br_get_pvid.exit.sink.split:                      ; preds = %land.lhs.true.br_get_pvid.exit.sink.split_crit_edge, %if.end6.br_get_pvid.exit.sink.split_crit_edge
  %18 = ptrtoint ptr %vid to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %vid, align 2
  br label %br_get_pvid.exit

br_get_pvid.exit:                                 ; preds = %br_get_pvid.exit.sink.split, %if.end13.br_get_pvid.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !173
  %pvid.i = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %5, i32 0, i32 4
  %19 = ptrtoint ptr %pvid.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %pvid.i, align 2
  %21 = ptrtoint ptr %vid to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %vid, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool17.not = icmp eq i16 %20, 0
  br i1 %tobool17.not, label %br_get_pvid.exit.cleanup_crit_edge, label %lor.lhs.false18

br_get_pvid.exit.cleanup_crit_edge:               ; preds = %br_get_pvid.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false18:                                  ; preds = %br_get_pvid.exit
  call void @__sanitizer_cov_trace_pc() #19
  %pvid_state.i = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %5, i32 0, i32 5
  %22 = ptrtoint ptr %pvid_state.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load volatile i8, ptr %pvid_state.i, align 4
  %24 = and i8 %23, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %24)
  %switch = icmp eq i8 %24, 2
  br label %cleanup

br_vlan_find.exit:                                ; preds = %if.end13
  %call.i52 = tail call fastcc ptr @br_vlan_lookup(ptr noundef nonnull %5, i16 noundef zeroext %.pr) #17
  %tobool25.not = icmp eq ptr %call.i52, null
  br i1 %tobool25.not, label %br_vlan_find.exit.cleanup_crit_edge, label %land.lhs.true26

br_vlan_find.exit.cleanup_crit_edge:              ; preds = %br_vlan_find.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

land.lhs.true26:                                  ; preds = %br_vlan_find.exit
  call void @__sanitizer_cov_trace_pc() #19
  %state.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %call.i52, i32 0, i32 5
  %25 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load volatile i8, ptr %state.i, align 2
  %27 = and i8 %26, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %27)
  %switch64 = icmp eq i8 %27, 2
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true26, %br_vlan_find.exit.cleanup_crit_edge, %lor.lhs.false18, %br_get_pvid.exit.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %nbp_vlan_group_rcu.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %entry.cleanup_crit_edge ], [ false, %lor.lhs.false.cleanup_crit_edge ], [ false, %nbp_vlan_group_rcu.exit.cleanup_crit_edge ], [ false, %br_get_pvid.exit.cleanup_crit_edge ], [ false, %br_vlan_find.exit.cleanup_crit_edge ], [ %switch, %lor.lhs.false18 ], [ %switch64, %land.lhs.true26 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_vlan_add(ptr noundef %br, i16 noundef zeroext %vid, i16 noundef zeroext %flags, ptr nocapture noundef writeonly %changed, ptr noundef %extack) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_is_locked() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b113 = load i1, ptr @br_vlan_add.__already_done, align 1
  br i1 %.b113, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !170

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @br_vlan_add.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 721, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 721) #17
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %0 = ptrtoint ptr %changed to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %changed, align 1
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #17
  br i1 %call.i, label %if.end29.br_vlan_group.exit_crit_edge, label %land.lhs.true.i

if.end29.br_vlan_group.exit_crit_edge:            ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_vlan_group.exit

land.lhs.true.i:                                  ; preds = %if.end29
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.br_vlan_group.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.br_vlan_group.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_vlan_group.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @br_vlan_group.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.br_vlan_group.exit_crit_edge, label %if.then.i

land.lhs.true2.i.br_vlan_group.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_vlan_group.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @br_vlan_group.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 1471, ptr noundef nonnull @.str.10) #17
  br label %br_vlan_group.exit

br_vlan_group.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.br_vlan_group.exit_crit_edge, %land.lhs.true.i.br_vlan_group.exit_crit_edge, %if.end29.br_vlan_group.exit_crit_edge
  %vlgrp.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 7
  %1 = ptrtoint ptr %vlgrp.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vlgrp.i, align 4
  %tobool.not.i114 = icmp eq ptr %2, null
  br i1 %tobool.not.i114, label %br_vlan_group.exit.if.end42_crit_edge, label %br_vlan_find.exit

br_vlan_group.exit.if.end42_crit_edge:            ; preds = %br_vlan_group.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end42

br_vlan_find.exit:                                ; preds = %br_vlan_group.exit
  %call.i115 = tail call fastcc ptr @br_vlan_lookup(ptr noundef nonnull %2, i16 noundef zeroext %vid) #17
  %tobool39.not = icmp eq ptr %call.i115, null
  br i1 %tobool39.not, label %br_vlan_find.exit.if.end42_crit_edge, label %if.then40

br_vlan_find.exit.if.end42_crit_edge:             ; preds = %br_vlan_find.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end42

if.then40:                                        ; preds = %br_vlan_find.exit
  %dev.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 3
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %vid.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %call.i115, i32 0, i32 2
  %5 = ptrtoint ptr %vid.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %vid.i, align 8
  %call.i116 = tail call i32 @br_switchdev_port_vlan_add(ptr noundef %4, i16 noundef zeroext %6, i16 noundef zeroext %flags, ptr noundef %extack) #17
  %7 = zext i32 %call.i116 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i116, label %if.then40.cleanup_crit_edge [
    i32 0, label %if.then40.if.end.i117_crit_edge
    i32 -95, label %if.then40.if.end.i117_crit_edge125
  ]

if.then40.if.end.i117_crit_edge125:               ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i117

if.then40.if.end.i117_crit_edge:                  ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i117

if.then40.cleanup_crit_edge:                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end.i117:                                      ; preds = %if.then40.if.end.i117_crit_edge, %if.then40.if.end.i117_crit_edge125
  %flags.i.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %call.i115, i32 0, i32 3
  %8 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %flags.i.i, align 2
  %10 = and i16 %9, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.i.not.i = icmp eq i16 %10, 0
  br i1 %tobool.i.not.i, label %if.then2.i, label %if.end.i117.if.end17.i_crit_edge

if.end.i117.if.end17.i_crit_edge:                 ; preds = %if.end.i117
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end17.i

if.then2.i:                                       ; preds = %if.end.i117
  %11 = and i16 %flags, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool3.not.i = icmp eq i16 %11, 0
  br i1 %tobool3.not.i, label %if.then2.i.err_flags.i_crit_edge, label %if.end5.i

if.then2.i.err_flags.i_crit_edge:                 ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_flags.i

if.end5.i:                                        ; preds = %if.then2.i
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 86
  %14 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_addr.i, align 64
  %16 = ptrtoint ptr %vid.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vid.i, align 8
  %call8.i = tail call i32 @br_fdb_add_local(ptr noundef %br, ptr noundef null, ptr noundef %15, i16 noundef zeroext %17) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end13.i, label %do.end.i

do.end.i:                                         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #19
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %19) #20
  br label %err_flags.i

if.end13.i:                                       ; preds = %if.end5.i
  %20 = getelementptr inbounds %struct.net_bridge_vlan, ptr %call.i115, i32 0, i32 8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %20, i32 noundef 4) #17
  tail call void @llvm.prefetch.p0(ptr %20, i32 1, i32 3, i32 1) #17
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %20, ptr %20, i32 1, ptr elementtype(i32) %20) #17, !srcloc !174
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end13.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !172

if.end13.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end13.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %22 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %.not.i.i.i.i = icmp sgt i32 %22, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.refcount_inc.exit.i_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !170

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.refcount_inc.exit.i_crit_edge:    ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %refcount_inc.exit.i

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end13.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end13.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %20, i32 noundef %.sink.i.i.i.i) #17
  br label %refcount_inc.exit.i

refcount_inc.exit.i:                              ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.refcount_inc.exit.i_crit_edge
  %23 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %flags.i.i, align 2
  %25 = or i16 %24, 32
  store i16 %25, ptr %flags.i.i, align 2
  %num_vlans.i = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %2, i32 0, i32 3
  %26 = ptrtoint ptr %num_vlans.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %num_vlans.i, align 4
  %inc.i = add i16 %27, 1
  store i16 %inc.i, ptr %num_vlans.i, align 4
  %28 = ptrtoint ptr %changed to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %changed, align 1
  tail call void @br_multicast_toggle_one_vlan(ptr noundef nonnull %call.i115, i1 noundef zeroext true) #17
  br label %if.end17.i

if.end17.i:                                       ; preds = %refcount_inc.exit.i, %if.end.i117.if.end17.i_crit_edge
  %call18.i = tail call fastcc zeroext i1 @__vlan_add_flags(ptr noundef nonnull %call.i115, i16 noundef zeroext %flags) #17
  br i1 %call18.i, label %if.then19.i, label %if.end17.i.cleanup_crit_edge

if.end17.i.cleanup_crit_edge:                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then19.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #19
  %29 = ptrtoint ptr %changed to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %changed, align 1
  br label %cleanup

err_flags.i:                                      ; preds = %do.end.i, %if.then2.i.err_flags.i_crit_edge
  %err.0.i = phi i32 [ %call8.i, %do.end.i ], [ -22, %if.then2.i.err_flags.i_crit_edge ]
  %30 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i, align 4
  %32 = ptrtoint ptr %vid.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %vid.i, align 8
  %call23.i = tail call i32 @br_switchdev_port_vlan_del(ptr noundef %31, i16 noundef zeroext %33) #17
  br label %cleanup

if.end42:                                         ; preds = %br_vlan_find.exit.if.end42_crit_edge, %br_vlan_group.exit.if.end42_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %34 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %34, i32 noundef 3520, i32 noundef 576) #21
  %tobool44.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool44.not, label %if.end42.cleanup_crit_edge, label %if.end46

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end46:                                         ; preds = %if.end42
  %call47 = tail call noalias ptr @__alloc_percpu_gfp(i32 noundef 64, i32 noundef 32, i32 noundef 3264) #22
  %tobool48.not = icmp eq ptr %call47, null
  br i1 %tobool48.not, label %if.then63, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end46
  %call50122 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %35 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call50122, i32 %35)
  %cmp123 = icmp ult i32 %call50122, %35
  br i1 %cmp123, label %for.body.lr.ph, label %for.cond.preheader.if.end64_crit_edge

for.cond.preheader.if.end64_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end64

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %36 = ptrtoint ptr %call47 to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %call50124 = phi i32 [ %call50122, %for.body.lr.ph ], [ %call50, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call50124
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx, align 4
  %add = add i32 %38, %36
  %39 = inttoptr i32 %add to ptr
  %syncp = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %39, i32 0, i32 4
  %dep_map.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %39, i32 0, i32 4, i32 0, i32 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @br_vlan_add.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  %40 = ptrtoint ptr %syncp to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %syncp, align 4
  %call50 = tail call i32 @cpumask_next(i32 noundef %call50124, ptr noundef nonnull @__cpu_possible_mask) #23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %41 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call50, %41
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.if.end64_crit_edge

for.body.if.end64_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end64

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

if.then63:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #19
  %stats121 = getelementptr inbounds %struct.net_bridge_vlan, ptr %call7.i.i, i32 0, i32 6
  %42 = ptrtoint ptr %stats121 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %stats121, align 8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #17
  br label %cleanup

if.end64:                                         ; preds = %for.body.if.end64_crit_edge, %for.cond.preheader.if.end64_crit_edge
  %stats = getelementptr inbounds %struct.net_bridge_vlan, ptr %call7.i.i, i32 0, i32 6
  %43 = ptrtoint ptr %stats to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call47, ptr %stats, align 8
  %vid65 = getelementptr inbounds %struct.net_bridge_vlan, ptr %call7.i.i, i32 0, i32 2
  %44 = ptrtoint ptr %vid65 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %vid, ptr %vid65, align 8
  %flags67 = getelementptr inbounds %struct.net_bridge_vlan, ptr %call7.i.i, i32 0, i32 3
  %or = and i16 %flags, -4
  %45 = or i16 %or, 1
  %46 = ptrtoint ptr %flags67 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %flags67, align 2
  %47 = getelementptr inbounds %struct.net_bridge_vlan, ptr %call7.i.i, i32 0, i32 7
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %br, ptr %47, align 4
  %49 = and i16 %flags, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %tobool73.not = icmp eq i16 %49, 0
  br i1 %tobool73.not, label %if.end64.if.end75_crit_edge, label %if.then74

if.end64.if.end75_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end75

if.then74:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #19
  %50 = getelementptr inbounds %struct.net_bridge_vlan, ptr %call7.i.i, i32 0, i32 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %50, i32 noundef 4) #17
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile i32 1, ptr %50, align 8
  br label %if.end75

if.end75:                                         ; preds = %if.then74, %if.end64.if.end75_crit_edge
  %call76 = tail call fastcc i32 @__vlan_add(ptr noundef nonnull %call7.i.i, i16 noundef zeroext %flags, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.else, label %if.then78

if.then78:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #19
  %52 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %stats, align 8
  tail call void @free_percpu(ptr noundef %53) #17
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #17
  br label %cleanup

if.else:                                          ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #19
  %54 = ptrtoint ptr %changed to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %changed, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then78, %if.then63, %if.end42.cleanup_crit_edge, %err_flags.i, %if.then19.i, %if.end17.i.cleanup_crit_edge, %if.then40.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then63 ], [ -12, %if.end42.cleanup_crit_edge ], [ 0, %if.else ], [ %call76, %if.then78 ], [ %err.0.i, %err_flags.i ], [ %call.i116, %if.then40.cleanup_crit_edge ], [ 0, %if.then19.i ], [ 0, %if.end17.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu_gfp(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__vlan_add(ptr noundef %v, i16 noundef zeroext %flags, ptr noundef %extack) unnamed_addr #0 align 64 {
entry:
  %changed.i = alloca i8, align 1
  %changed = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %v, i32 0, i32 3
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %flags.i, align 2
  %2 = and i16 %1, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.i.not = icmp eq i16 %2, 0
  %3 = getelementptr inbounds %struct.net_bridge_vlan, ptr %v, i32 0, i32 7
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  br i1 %tobool.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %dev1 = getelementptr inbounds %struct.net_bridge, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1, align 4
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #17
  br i1 %call.i, label %if.then.if.end.thread_crit_edge, label %land.lhs.true.i

if.then.if.end.thread_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.thread

land.lhs.true.i:                                  ; preds = %if.then
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.if.end.thread_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.if.end.thread_crit_edge:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.thread

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @br_vlan_group.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.if.end.thread_crit_edge, label %if.then.i

land.lhs.true2.i.if.end.thread_crit_edge:         ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.thread

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @br_vlan_group.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 1471, ptr noundef nonnull @.str.10) #17
  br label %if.end.thread

if.end.thread:                                    ; preds = %if.then.i, %land.lhs.true2.i.if.end.thread_crit_edge, %land.lhs.true.i.if.end.thread_crit_edge, %if.then.if.end.thread_crit_edge
  %vlgrp.i = getelementptr inbounds %struct.net_bridge, ptr %5, i32 0, i32 7
  %8 = ptrtoint ptr %vlgrp.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vlgrp.i, align 4
  br label %if.else54

if.else:                                          ; preds = %entry
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 8
  %dev4 = getelementptr inbounds %struct.net_bridge_port, ptr %5, i32 0, i32 1
  %12 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev4, align 4
  %call.i212 = tail call zeroext i1 @lockdep_rtnl_is_held() #17
  br i1 %call.i212, label %if.else.if.end_crit_edge, label %land.lhs.true.i215

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true.i215:                               ; preds = %if.else
  %call1.i213 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i213)
  %tobool.not.i214 = icmp eq i32 %call1.i213, 0
  br i1 %tobool.not.i214, label %land.lhs.true.i215.if.end_crit_edge, label %land.lhs.true2.i217

land.lhs.true.i215.if.end_crit_edge:              ; preds = %land.lhs.true.i215
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true2.i217:                              ; preds = %land.lhs.true.i215
  %.b4.i216 = load i1, ptr @nbp_vlan_group.__warned, align 1
  br i1 %.b4.i216, label %land.lhs.true2.i217.if.end_crit_edge, label %if.then.i218

land.lhs.true2.i217.if.end_crit_edge:             ; preds = %land.lhs.true2.i217
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then.i218:                                     ; preds = %land.lhs.true2.i217
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @nbp_vlan_group.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 1477, ptr noundef nonnull @.str.10) #17
  br label %if.end

if.end:                                           ; preds = %if.then.i218, %land.lhs.true2.i217.if.end_crit_edge, %land.lhs.true.i215.if.end_crit_edge, %if.else.if.end_crit_edge
  %vlgrp.i219 = getelementptr inbounds %struct.net_bridge_port, ptr %5, i32 0, i32 5
  %14 = ptrtoint ptr %vlgrp.i219 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vlgrp.i219, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end.if.else54_crit_edge, label %if.then6

if.end.if.else54_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else54

if.then6:                                         ; preds = %if.end
  %vid.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %v, i32 0, i32 2
  %16 = ptrtoint ptr %vid.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vid.i, align 8
  %call.i220 = tail call i32 @br_switchdev_port_vlan_add(ptr noundef %13, i16 noundef zeroext %17, i16 noundef zeroext %flags, ptr noundef %extack) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %call.i220)
  %cmp.i = icmp eq i32 %call.i220, -95
  br i1 %cmp.i, label %if.then.i221, label %if.end.i

if.then.i221:                                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #19
  %vlan_proto.i = getelementptr inbounds %struct.net_bridge, ptr %11, i32 0, i32 5
  %18 = ptrtoint ptr %vlan_proto.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %vlan_proto.i, align 4
  %20 = ptrtoint ptr %vid.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %vid.i, align 8
  %call2.i = tail call i32 @vlan_vid_add(ptr noundef %13, i16 noundef zeroext %19, i16 noundef zeroext %21) #17
  br label %__vlan_vid_add.exit

if.end.i:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #19
  %priv_flags.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %v, i32 0, i32 4
  %22 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %priv_flags.i, align 4
  %24 = or i16 %23, 2
  store i16 %24, ptr %priv_flags.i, align 4
  br label %__vlan_vid_add.exit

__vlan_vid_add.exit:                              ; preds = %if.end.i, %if.then.i221
  %retval.0.i = phi i32 [ %call2.i, %if.then.i221 ], [ %call.i220, %if.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool8.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool8.not, label %if.end10, label %__vlan_vid_add.exit.cleanup117_crit_edge

__vlan_vid_add.exit.cleanup117_crit_edge:         ; preds = %__vlan_vid_add.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup117

if.end10:                                         ; preds = %__vlan_vid_add.exit
  %25 = and i16 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool11.not = icmp eq i16 %25, 0
  br i1 %tobool11.not, label %if.end10.if.end23_crit_edge, label %if.then12

if.end10.if.end23_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end23

if.then12:                                        ; preds = %if.end10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %changed) #17
  %26 = ptrtoint ptr %changed to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -1, ptr %changed, align 1, !annotation !175
  %27 = ptrtoint ptr %vid.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %vid.i, align 8
  %or = or i16 %flags, 32
  %call15 = call i32 @br_vlan_add(ptr noundef %11, i16 noundef zeroext %28, i16 noundef zeroext %or, ptr noundef nonnull %changed, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %cleanup

if.end18:                                         ; preds = %if.then12
  %29 = ptrtoint ptr %changed to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %changed, align 1, !range !176
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool19.not = icmp eq i8 %30, 0
  br i1 %tobool19.not, label %if.end18.cleanup.thread_crit_edge, label %if.then20

if.end18.cleanup.thread_crit_edge:                ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.thread

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #19
  %31 = ptrtoint ptr %vid.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %vid.i, align 8
  tail call void @br_vlan_notify(ptr noundef %11, ptr noundef null, i16 noundef zeroext %32, i16 noundef zeroext 0, i32 noundef 112)
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then20, %if.end18.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %changed) #17
  br label %if.end23

cleanup:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %changed) #17
  br label %if.then97

if.end23:                                         ; preds = %cleanup.thread, %if.end10.if.end23_crit_edge
  %33 = ptrtoint ptr %vid.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %vid.i, align 8
  %call.i264 = tail call zeroext i1 @lockdep_rtnl_is_held() #17
  br i1 %call.i264, label %if.end23.br_vlan_group.exit273_crit_edge, label %land.lhs.true.i267

if.end23.br_vlan_group.exit273_crit_edge:         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_vlan_group.exit273

land.lhs.true.i267:                               ; preds = %if.end23
  %call1.i265 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i265)
  %tobool.not.i266 = icmp eq i32 %call1.i265, 0
  br i1 %tobool.not.i266, label %land.lhs.true.i267.br_vlan_group.exit273_crit_edge, label %land.lhs.true2.i269

land.lhs.true.i267.br_vlan_group.exit273_crit_edge: ; preds = %land.lhs.true.i267
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_vlan_group.exit273

land.lhs.true2.i269:                              ; preds = %land.lhs.true.i267
  %.b4.i268 = load i1, ptr @br_vlan_group.__warned, align 1
  br i1 %.b4.i268, label %land.lhs.true2.i269.br_vlan_group.exit273_crit_edge, label %if.then.i270

land.lhs.true2.i269.br_vlan_group.exit273_crit_edge: ; preds = %land.lhs.true2.i269
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_vlan_group.exit273

if.then.i270:                                     ; preds = %land.lhs.true2.i269
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @br_vlan_group.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 1471, ptr noundef nonnull @.str.10) #17
  br label %br_vlan_group.exit273

br_vlan_group.exit273:                            ; preds = %if.then.i270, %land.lhs.true2.i269.br_vlan_group.exit273_crit_edge, %land.lhs.true.i267.br_vlan_group.exit273_crit_edge, %if.end23.br_vlan_group.exit273_crit_edge
  %vlgrp.i271 = getelementptr inbounds %struct.net_bridge, ptr %11, i32 0, i32 7
  %35 = ptrtoint ptr %vlgrp.i271 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %vlgrp.i271, align 4
  %tobool.not.i259 = icmp eq ptr %36, null
  br i1 %tobool.not.i259, label %if.then.i226, label %br_vlan_find.exit263

br_vlan_find.exit263:                             ; preds = %br_vlan_group.exit273
  %call.i260 = tail call fastcc ptr @br_vlan_lookup(ptr noundef nonnull %36, i16 noundef zeroext %34) #17
  %tobool.not.i224 = icmp eq ptr %call.i260, null
  br i1 %tobool.not.i224, label %if.then.i226.thread, label %if.end32.i

if.then.i226:                                     ; preds = %br_vlan_group.exit273
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %changed.i) #17
  %call2.i225 = call i32 @br_vlan_add(ptr noundef %11, i16 noundef zeroext %34, i16 noundef zeroext 0, ptr noundef nonnull %changed.i, ptr noundef %extack) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i225)
  %tobool3.not.i = icmp eq i32 %call2.i225, 0
  br i1 %tobool3.not.i, label %if.then.i226.do.end.i_crit_edge, label %if.then.i226.br_vlan_get_master.exit.thread310_crit_edge

if.then.i226.br_vlan_get_master.exit.thread310_crit_edge: ; preds = %if.then.i226
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_vlan_get_master.exit.thread310

if.then.i226.do.end.i_crit_edge:                  ; preds = %if.then.i226
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

if.then.i226.thread:                              ; preds = %br_vlan_find.exit263
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %changed.i) #17
  %call2.i225301 = call i32 @br_vlan_add(ptr noundef %11, i16 noundef zeroext %34, i16 noundef zeroext 0, ptr noundef nonnull %changed.i, ptr noundef %extack) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i225301)
  %tobool3.not.i302 = icmp eq i32 %call2.i225301, 0
  br i1 %tobool3.not.i302, label %br_vlan_find.exit, label %if.then.i226.thread.br_vlan_get_master.exit.thread310_crit_edge

if.then.i226.thread.br_vlan_get_master.exit.thread310_crit_edge: ; preds = %if.then.i226.thread
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_vlan_get_master.exit.thread310

br_vlan_find.exit:                                ; preds = %if.then.i226.thread
  %call.i256 = tail call fastcc ptr @br_vlan_lookup(ptr noundef nonnull %36, i16 noundef zeroext %34) #17
  %tobool6.not.i = icmp eq ptr %call.i256, null
  br i1 %tobool6.not.i, label %br_vlan_find.exit.do.end.i_crit_edge, label %br_vlan_get_master.exit, !prof !172

br_vlan_find.exit.do.end.i_crit_edge:             ; preds = %br_vlan_find.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

do.end.i:                                         ; preds = %br_vlan_find.exit.do.end.i_crit_edge, %if.then.i226.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 160, i32 noundef 9, ptr noundef null) #17
  br label %br_vlan_get_master.exit.thread310

if.end32.i:                                       ; preds = %br_vlan_find.exit263
  %37 = getelementptr inbounds %struct.net_bridge_vlan, ptr %call.i260, i32 0, i32 8
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %37, i32 noundef 4) #17
  tail call void @llvm.prefetch.p0(ptr %37, i32 1, i32 3, i32 1) #17
  %38 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %37, ptr %37, i32 1, ptr elementtype(i32) %37) #17, !srcloc !174
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %38, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.end32.i.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !172

if.end32.i.if.end15.sink.split.i.i.i_crit_edge:   ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.end32.i
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %39 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %39)
  %.not.i.i.i = icmp sgt i32 %39, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.if.end28_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !170

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.if.end28_crit_edge:                 ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end28

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.end32.i.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.end32.i.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %37, i32 noundef %.sink.i.i.i) #17
  br label %if.end28

br_vlan_get_master.exit.thread310:                ; preds = %do.end.i, %if.then.i226.thread.br_vlan_get_master.exit.thread310_crit_edge, %if.then.i226.br_vlan_get_master.exit.thread310_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %changed.i) #17
  br label %if.then97

br_vlan_get_master.exit:                          ; preds = %br_vlan_find.exit
  call void @__sanitizer_cov_trace_pc() #19
  %40 = getelementptr inbounds %struct.net_bridge_vlan, ptr %call.i256, i32 0, i32 8
  %call.i.i.i254 = tail call zeroext i1 @__kasan_check_write(ptr noundef %40, i32 noundef 4) #17
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile i32 1, ptr %40, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %changed.i) #17
  br label %if.end28

if.end28:                                         ; preds = %br_vlan_get_master.exit, %if.end15.sink.split.i.i.i, %if.else.i.i.i.if.end28_crit_edge
  %retval.1.i307 = phi ptr [ %call.i256, %br_vlan_get_master.exit ], [ %call.i260, %if.else.i.i.i.if.end28_crit_edge ], [ %call.i260, %if.end15.sink.split.i.i.i ]
  %42 = getelementptr inbounds %struct.net_bridge_vlan, ptr %v, i32 0, i32 8
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %retval.1.i307, ptr %42, align 8
  %options.i = getelementptr inbounds %struct.net_bridge, ptr %11, i32 0, i32 4
  %44 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %options.i, align 4
  %46 = and i32 %45, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool30.not = icmp eq i32 %46, 0
  br i1 %tobool30.not, label %if.else50, label %if.then31

if.then31:                                        ; preds = %if.end28
  %call32 = tail call noalias ptr @__alloc_percpu_gfp(i32 noundef 64, i32 noundef 32, i32 noundef 3264) #22
  %tobool33.not = icmp eq ptr %call32, null
  br i1 %tobool33.not, label %if.then45.critedge, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then31
  %call35326 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %47 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call35326, i32 %47)
  %cmp327 = icmp ult i32 %call35326, %47
  br i1 %cmp327, label %for.body.lr.ph, label %for.cond.preheader.if.end46_crit_edge

for.cond.preheader.if.end46_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end46

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %48 = ptrtoint ptr %call32 to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %call35328 = phi i32 [ %call35326, %for.body.lr.ph ], [ %call35, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call35328
  %49 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx, align 4
  %add = add i32 %50, %48
  %51 = inttoptr i32 %add to ptr
  %syncp = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %51, i32 0, i32 4
  %dep_map.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %51, i32 0, i32 4, i32 0, i32 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @__vlan_add.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  %52 = ptrtoint ptr %syncp to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %syncp, align 4
  %call35 = tail call i32 @cpumask_next(i32 noundef %call35328, ptr noundef nonnull @__cpu_possible_mask) #23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %53 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call35, %53
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.if.end46_crit_edge

for.body.if.end46_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end46

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

if.then45.critedge:                               ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #19
  %stats.c = getelementptr inbounds %struct.net_bridge_vlan, ptr %v, i32 0, i32 6
  %54 = ptrtoint ptr %stats.c to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %stats.c, align 8
  br label %if.then97

if.end46:                                         ; preds = %for.body.if.end46_crit_edge, %for.cond.preheader.if.end46_crit_edge
  %stats = getelementptr inbounds %struct.net_bridge_vlan, ptr %v, i32 0, i32 6
  %55 = ptrtoint ptr %stats to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call32, ptr %stats, align 8
  %priv_flags = getelementptr inbounds %struct.net_bridge_vlan, ptr %v, i32 0, i32 4
  %56 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %priv_flags, align 4
  %58 = or i16 %57, 1
  store i16 %58, ptr %priv_flags, align 4
  br label %if.end53

if.else50:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #19
  %stats51 = getelementptr inbounds %struct.net_bridge_vlan, ptr %retval.1.i307, i32 0, i32 6
  %59 = ptrtoint ptr %stats51 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %stats51, align 8
  %stats52 = getelementptr inbounds %struct.net_bridge_vlan, ptr %v, i32 0, i32 6
  %61 = ptrtoint ptr %stats52 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %60, ptr %stats52, align 8
  br label %if.end53

if.end53:                                         ; preds = %if.else50, %if.end46
  %62 = getelementptr inbounds %struct.net_bridge_vlan, ptr %v, i32 0, i32 10
  tail call void @br_multicast_port_ctx_init(ptr noundef nonnull %5, ptr noundef %v, ptr noundef %62) #17
  br label %if.end66

if.else54:                                        ; preds = %if.end.if.else54_crit_edge, %if.end.thread
  %vg.0290 = phi ptr [ %9, %if.end.thread ], [ %15, %if.end.if.else54_crit_edge ]
  %dev.0288 = phi ptr [ %7, %if.end.thread ], [ %13, %if.end.if.else54_crit_edge ]
  %br.0282 = phi ptr [ %5, %if.end.thread ], [ %11, %if.end.if.else54_crit_edge ]
  %vid55 = getelementptr inbounds %struct.net_bridge_vlan, ptr %v, i32 0, i32 2
  %63 = ptrtoint ptr %vid55 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %vid55, align 8
  %call56 = tail call i32 @br_switchdev_port_vlan_add(ptr noundef %dev.0288, i16 noundef zeroext %64, i16 noundef zeroext %flags, ptr noundef %extack) #17
  %65 = zext i32 %call56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %call56, label %if.else54.cleanup117_crit_edge [
    i32 0, label %if.else54.if.end61_crit_edge
    i32 -95, label %if.else54.if.end61_crit_edge338
  ]

if.else54.if.end61_crit_edge338:                  ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end61

if.else54.if.end61_crit_edge:                     ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end61

if.else54.cleanup117_crit_edge:                   ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup117

if.end61:                                         ; preds = %if.else54.if.end61_crit_edge, %if.else54.if.end61_crit_edge338
  %66 = getelementptr inbounds %struct.net_bridge_vlan, ptr %v, i32 0, i32 10
  tail call void @br_multicast_ctx_init(ptr noundef %br.0282, ptr noundef %v, ptr noundef %66) #17
  %priv_flags62 = getelementptr inbounds %struct.net_bridge_vlan, ptr %v, i32 0, i32 4
  %67 = ptrtoint ptr %priv_flags62 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %priv_flags62, align 4
  %69 = or i16 %68, 8
  store i16 %69, ptr %priv_flags62, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.end61, %if.end53
  %tobool.not295 = phi i1 [ false, %if.end53 ], [ true, %if.end61 ]
  %p.0292 = phi ptr [ %5, %if.end53 ], [ null, %if.end61 ]
  %vg.0289 = phi ptr [ %15, %if.end53 ], [ %vg.0290, %if.end61 ]
  %dev.0287 = phi ptr [ %13, %if.end53 ], [ %dev.0288, %if.end61 ]
  %br.0281 = phi ptr [ %11, %if.end53 ], [ %br.0282, %if.end61 ]
  %masterv.0 = phi ptr [ %retval.1.i307, %if.end53 ], [ null, %if.end61 ]
  %70 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %flags.i, align 2
  %72 = and i16 %71, 33
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %72)
  %.not = icmp eq i16 %72, 1
  br i1 %.not, label %if.end66.if.end80_crit_edge, label %if.then68

if.end66.if.end80_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end80

if.then68:                                        ; preds = %if.end66
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev.0287, i32 0, i32 86
  %73 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev_addr, align 64
  %vid69 = getelementptr inbounds %struct.net_bridge_vlan, ptr %v, i32 0, i32 2
  %75 = ptrtoint ptr %vid69 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %vid69, align 8
  %call70 = tail call i32 @br_fdb_add_local(ptr noundef %br.0281, ptr noundef %p.0292, ptr noundef %74, i16 noundef zeroext %76) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.end79, label %do.end75

do.end75:                                         ; preds = %if.then68
  %dev77 = getelementptr inbounds %struct.net_bridge, ptr %br.0281, i32 0, i32 3
  %77 = ptrtoint ptr %dev77 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev77, align 4
  %call78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %78) #20
  br i1 %tobool.not295, label %do.end75.if.else113_crit_edge, label %do.end75.if.then97_crit_edge

do.end75.if.then97_crit_edge:                     ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then97

do.end75.if.else113_crit_edge:                    ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else113

if.end79:                                         ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #19
  %num_vlans = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %vg.0289, i32 0, i32 3
  %79 = ptrtoint ptr %num_vlans to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %num_vlans, align 4
  %inc = add i16 %80, 1
  store i16 %inc, ptr %num_vlans, align 4
  br label %if.end80

if.end80:                                         ; preds = %if.end79, %if.end66.if.end80_crit_edge
  %state = getelementptr inbounds %struct.net_bridge_vlan, ptr %v, i32 0, i32 5
  %81 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 3, ptr %state, align 2
  %head_offset.i.i = getelementptr inbounds %struct.rhashtable, ptr %vg.0289, i32 0, i32 3, i32 3
  %obj_hashfn.i = getelementptr inbounds %struct.rhashtable, ptr %vg.0289, i32 0, i32 3, i32 8
  %82 = ptrtoint ptr %obj_hashfn.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %obj_hashfn.i, align 4
  %tobool.not.i229 = icmp eq ptr %83, null
  br i1 %tobool.not.i229, label %do.end8.i, label %do.body3.i, !prof !170

do.body3.i:                                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/rhashtable.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 903, 0\0A.popsection", ""() #17, !srcloc !177
  unreachable

do.end8.i:                                        ; preds = %if.end80
  %84 = ptrtoint ptr %head_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %head_offset.i.i, align 2
  %conv.i.i = zext i16 %85 to i32
  %idx.neg.i.i = sub nsw i32 0, %conv.i.i
  %add.ptr.i.i = getelementptr i8, ptr %v, i32 %idx.neg.i.i
  %key_offset.i = getelementptr inbounds %struct.rhashtable, ptr %vg.0289, i32 0, i32 3, i32 2
  %86 = ptrtoint ptr %key_offset.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %key_offset.i, align 4
  %conv.i = zext i16 %87 to i32
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i, i32 %conv.i
  %88 = tail call i32 @llvm.read_register.i32(metadata !155) #17
  %and.i.i.i.i.i.i.i = and i32 %88, -16384
  %89 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %91, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !178
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #17
  %call.i.i.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i.i.i, label %do.end8.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

do.end8.i.rcu_read_lock.exit.i.i_crit_edge:       ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %do.end8.i
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 696, ptr noundef nonnull @.str.19) #17
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %do.end8.i.rcu_read_lock.exit.i.i_crit_edge
  %92 = ptrtoint ptr %vg.0289 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile ptr, ptr %vg.0289, align 4
  %call.i.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %vg.0289) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %rcu_read_lock.exit.i.i.do.end12.i.i_crit_edge

rcu_read_lock.exit.i.i.do.end12.i.i_crit_edge:    ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end12.i.i

lor.lhs.false.i.i:                                ; preds = %rcu_read_lock.exit.i.i
  %call5.i.i = tail call i32 @rcu_read_lock_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.do.end12.i.i_crit_edge

lor.lhs.false.i.i.do.end12.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end12.i.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call7.i.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool8.not.i.i, label %land.lhs.true.i.i.do.end12.i.i_crit_edge, label %land.lhs.true9.i.i

land.lhs.true.i.i.do.end12.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end12.i.i

land.lhs.true9.i.i:                               ; preds = %land.lhs.true.i.i
  %.b2.i.i = load i1, ptr @__rhashtable_insert_fast.__warned, align 1
  br i1 %.b2.i.i, label %land.lhs.true9.i.i.do.end12.i.i_crit_edge, label %if.then.i.i

land.lhs.true9.i.i.do.end12.i.i_crit_edge:        ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end12.i.i

if.then.i.i:                                      ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @__rhashtable_insert_fast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 715, ptr noundef nonnull @.str.9) #17
  br label %do.end12.i.i

do.end12.i.i:                                     ; preds = %if.then.i.i, %land.lhs.true9.i.i.do.end12.i.i_crit_edge, %land.lhs.true.i.i.do.end12.i.i_crit_edge, %lor.lhs.false.i.i.do.end12.i.i_crit_edge, %rcu_read_lock.exit.i.i.do.end12.i.i_crit_edge
  %94 = ptrtoint ptr %head_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %head_offset.i.i, align 2
  %conv.i.i.i.i = zext i16 %95 to i32
  %idx.neg.i.i.i.i = sub nsw i32 0, %conv.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %v, i32 %idx.neg.i.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 8
  %hash_rnd.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %93, i32 0, i32 2
  %96 = ptrtoint ptr %hash_rnd.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %hash_rnd.i.i.i.i, align 8
  %add1.i = add i32 %97, -559038735
  %arrayidx77.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 1
  %98 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx77.i, align 1
  %conv78.i = zext i8 %99 to i32
  %shl79.i = shl nuw nsw i32 %conv78.i, 8
  %add80.i = add i32 %shl79.i, %add1.i
  %100 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %add.ptr.i.i.i, align 1
  %conv83.i = zext i8 %101 to i32
  %add84.i = add i32 %add80.i, %conv83.i
  %or.i206.i = tail call i32 @llvm.fshl.i32(i32 %add1.i, i32 %add1.i, i32 14) #17
  %sub87.i = sub i32 0, %or.i206.i
  %xor88.i = xor i32 %add84.i, %sub87.i
  %or.i207.i = tail call i32 @llvm.fshl.i32(i32 %sub87.i, i32 %sub87.i, i32 11) #17
  %sub90.i = sub i32 %xor88.i, %or.i207.i
  %xor91.i = xor i32 %sub90.i, %add1.i
  %or.i208.i = tail call i32 @llvm.fshl.i32(i32 %sub90.i, i32 %sub90.i, i32 25) #17
  %sub93.i = sub i32 %xor91.i, %or.i208.i
  %xor94.i = xor i32 %sub93.i, %sub87.i
  %or.i209.i = tail call i32 @llvm.fshl.i32(i32 %sub93.i, i32 %sub93.i, i32 16) #17
  %sub96.i = sub i32 %xor94.i, %or.i209.i
  %xor97.i = xor i32 %sub96.i, %sub90.i
  %or.i210.i = tail call i32 @llvm.fshl.i32(i32 %sub96.i, i32 %sub96.i, i32 4) #17
  %sub99.i = sub i32 %xor97.i, %or.i210.i
  %xor100.i = xor i32 %sub99.i, %sub93.i
  %or.i211.i = tail call i32 @llvm.fshl.i32(i32 %sub99.i, i32 %sub99.i, i32 14) #17
  %sub102.i = sub i32 %xor100.i, %or.i211.i
  %xor103.i = xor i32 %sub102.i, %sub96.i
  %or.i212.i = tail call i32 @llvm.fshl.i32(i32 %sub102.i, i32 %sub102.i, i32 24) #17
  %sub105.i = sub i32 %xor103.i, %or.i212.i
  %102 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %93, align 128
  %sub.i.i.i.i.i = add i32 %103, -1
  %and.i3.i.i.i.i = and i32 %sub105.i, %sub.i.i.i.i.i
  %nest.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %93, i32 0, i32 1
  %104 = ptrtoint ptr %nest.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %nest.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool.not.i5.i.i = icmp eq i32 %105, 0
  br i1 %tobool.not.i5.i.i, label %cond.false.i8.i.i, label %cond.true.i7.i.i, !prof !170

cond.true.i7.i.i:                                 ; preds = %do.end12.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %call.i6.i.i = tail call ptr @rht_bucket_nested_insert(ptr noundef %vg.0289, ptr noundef %93, i32 noundef %and.i3.i.i.i.i) #17
  br label %rht_bucket_insert.exit.i.i

cond.false.i8.i.i:                                ; preds = %do.end12.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx.i.i.i = getelementptr %struct.bucket_table, ptr %93, i32 0, i32 8, i32 %and.i3.i.i.i.i
  br label %rht_bucket_insert.exit.i.i

rht_bucket_insert.exit.i.i:                       ; preds = %cond.false.i8.i.i, %cond.true.i7.i.i
  %cond.i9.i.i = phi ptr [ %call.i6.i.i, %cond.true.i7.i.i ], [ %arrayidx.i.i.i, %cond.false.i8.i.i ]
  %tobool17.not.i.i = icmp eq ptr %cond.i9.i.i, null
  br i1 %tobool17.not.i.i, label %rht_bucket_insert.exit.i.i.out.i.i_crit_edge, label %if.end19.i.i

rht_bucket_insert.exit.i.i.out.i.i_crit_edge:     ; preds = %rht_bucket_insert.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out.i.i

if.end19.i.i:                                     ; preds = %rht_bucket_insert.exit.i.i
  tail call fastcc void @rht_lock(ptr noundef %93, ptr noundef nonnull %cond.i9.i.i) #17
  %future_tbl.i.i = getelementptr inbounds %struct.bucket_table, ptr %93, i32 0, i32 5
  %106 = ptrtoint ptr %future_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load volatile ptr, ptr %future_tbl.i.i, align 4
  %tobool25.not.i.i = icmp eq ptr %107, null
  br i1 %tobool25.not.i.i, label %if.end30.i.i, label %if.end19.i.i.slow_path.i.i_crit_edge, !prof !170

if.end19.i.i.slow_path.i.i_crit_edge:             ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %slow_path.i.i

slow_path.i.i:                                    ; preds = %rht_grow_above_100.exit.i.i.slow_path.i.i_crit_edge, %for.end.i.i.slow_path.i.i_crit_edge, %if.end19.i.i.slow_path.i.i_crit_edge
  tail call fastcc void @rht_unlock(ptr noundef %93, ptr noundef nonnull %cond.i9.i.i) #17
  %call.i11.i.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i11.i.i, label %slow_path.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true.i14.i.i

slow_path.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %slow_path.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit.i.i

land.lhs.true.i14.i.i:                            ; preds = %slow_path.i.i
  %call1.i12.i.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i12.i.i)
  %tobool.not.i13.i.i = icmp eq i32 %call1.i12.i.i, 0
  br i1 %tobool.not.i13.i.i, label %land.lhs.true.i14.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true2.i16.i.i

land.lhs.true.i14.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i14.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit.i.i

land.lhs.true2.i16.i.i:                           ; preds = %land.lhs.true.i14.i.i
  %.b4.i15.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i15.i.i, label %land.lhs.true2.i16.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %if.then.i17.i.i

land.lhs.true2.i16.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i16.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit.i.i

if.then.i17.i.i:                                  ; preds = %land.lhs.true2.i16.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 724, ptr noundef nonnull @.str.20) #17
  br label %rcu_read_unlock.exit.i.i

rcu_read_unlock.exit.i.i:                         ; preds = %if.then.i17.i.i, %land.lhs.true2.i16.i.i.rcu_read_unlock.exit.i.i_crit_edge, %land.lhs.true.i14.i.i.rcu_read_unlock.exit.i.i_crit_edge, %slow_path.i.i.rcu_read_unlock.exit.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !179
  %108 = tail call i32 @llvm.read_register.i32(metadata !155) #17
  %and.i.i.i.i.i18.i.i = and i32 %108, -16384
  %109 = inttoptr i32 %and.i.i.i.i.i18.i.i to ptr
  %preempt_count.i.i.i.i19.i.i = getelementptr inbounds %struct.thread_info, ptr %109, i32 0, i32 1
  %110 = ptrtoint ptr %preempt_count.i.i.i.i19.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load volatile i32, ptr %preempt_count.i.i.i.i19.i.i, align 4
  %sub.i.i.i20.i.i = add i32 %111, -1
  store volatile i32 %sub.i.i.i20.i.i, ptr %preempt_count.i.i.i.i19.i.i, align 4
  tail call void @rcu_read_unlock_strict() #17
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  %call29.i.i = tail call ptr @rhashtable_insert_slow(ptr noundef %vg.0289, ptr noundef %add.ptr.i, ptr noundef %v) #17
  br label %rhashtable_lookup_insert_fast.exit

if.end30.i.i:                                     ; preds = %if.end19.i.i
  %call.i21.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %93, i32 noundef %and.i3.i.i.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21.i.i)
  %tobool.not.i22.i.i = icmp eq i32 %call.i21.i.i, 0
  br i1 %tobool.not.i22.i.i, label %land.lhs.true.i24.i.i, label %if.end30.i.i.rht_ptr.exit.i.i_crit_edge

if.end30.i.i.rht_ptr.exit.i.i_crit_edge:          ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rht_ptr.exit.i.i

land.lhs.true.i24.i.i:                            ; preds = %if.end30.i.i
  %call1.i23.i.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i23.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i23.i.i, 0
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i24.i.i.rht_ptr.exit.i.i_crit_edge, label %land.lhs.true3.i.i.i

land.lhs.true.i24.i.i.rht_ptr.exit.i.i_crit_edge: ; preds = %land.lhs.true.i24.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rht_ptr.exit.i.i

land.lhs.true3.i.i.i:                             ; preds = %land.lhs.true.i24.i.i
  %.b7.i.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i.i.i, label %land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge, label %if.then.i25.i.i

land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge:  ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rht_ptr.exit.i.i

if.then.i25.i.i:                                  ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 377, ptr noundef nonnull @.str.10) #17
  br label %rht_ptr.exit.i.i

rht_ptr.exit.i.i:                                 ; preds = %if.then.i25.i.i, %land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge, %land.lhs.true.i24.i.i.rht_ptr.exit.i.i_crit_edge, %if.end30.i.i.rht_ptr.exit.i.i_crit_edge
  %112 = ptrtoint ptr %cond.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %cond.i9.i.i, align 4
  %114 = ptrtoint ptr %113 to i32
  %and.i.i.i.i = and i32 %114, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  %115 = ptrtoint ptr %cond.i9.i.i to i32
  %or.i.i.i.i = or i32 %115, 1
  %cond.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 %or.i.i.i.i, i32 %and.i.i.i.i
  %and.i84.i.i = and i32 %cond.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i84.i.i)
  %tobool.i.not85.i.i = icmp eq i32 %and.i84.i.i, 0
  br i1 %tobool.i.not85.i.i, label %for.body.lr.ph.i.i, label %rht_ptr.exit.i.i.if.end152.i.i_crit_edge

rht_ptr.exit.i.i.if.end152.i.i_crit_edge:         ; preds = %rht_ptr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end152.i.i

for.body.lr.ph.i.i:                               ; preds = %rht_ptr.exit.i.i
  %116 = inttoptr i32 %cond.i.i.i.i to ptr
  %tobool35.not.i.i = icmp eq ptr %add.ptr.i, null
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %do.end147.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %head.087.i.i = phi ptr [ %116, %for.body.lr.ph.i.i ], [ %124, %do.end147.i.i.for.body.i.i_crit_edge ]
  %elasticity.086.i.i = phi i32 [ 16, %for.body.lr.ph.i.i ], [ %dec.i.i, %do.end147.i.i.for.body.i.i_crit_edge ]
  %dec.i.i = add i32 %elasticity.086.i.i, -1
  br i1 %tobool35.not.i.i, label %for.body.i.i.do.body136.i.i_crit_edge, label %lor.lhs.false36.i.i

for.body.i.i.do.body136.i.i_crit_edge:            ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body136.i.i

lor.lhs.false36.i.i:                              ; preds = %for.body.i.i
  %117 = ptrtoint ptr %head_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %head_offset.i.i, align 2
  %conv.i29.i.i = zext i16 %118 to i32
  %idx.neg.i30.i.i = sub nsw i32 0, %conv.i29.i.i
  %add.ptr.i31.i.i = getelementptr i8, ptr %head.087.i.i, i32 %idx.neg.i30.i.i
  %119 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %add.ptr.i, align 2
  %vid1.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %add.ptr.i31.i.i, i32 0, i32 2
  %121 = ptrtoint ptr %vid1.i to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %vid1.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %122, i16 %120)
  %cmp.i274.not = icmp eq i16 %122, %120
  br i1 %cmp.i274.not, label %lor.lhs.false36.i.i.out_unlock.i.i_crit_edge, label %lor.lhs.false36.i.i.do.body136.i.i_crit_edge

lor.lhs.false36.i.i.do.body136.i.i_crit_edge:     ; preds = %lor.lhs.false36.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body136.i.i

lor.lhs.false36.i.i.out_unlock.i.i_crit_edge:     ; preds = %lor.lhs.false36.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_unlock.i.i

do.body136.i.i:                                   ; preds = %lor.lhs.false36.i.i.do.body136.i.i_crit_edge, %for.body.i.i.do.body136.i.i_crit_edge
  %call137.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %93, i32 noundef %and.i3.i.i.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137.i.i)
  %tobool138.not.i.i = icmp eq i32 %call137.i.i, 0
  br i1 %tobool138.not.i.i, label %land.lhs.true139.i.i, label %do.body136.i.i.do.end147.i.i_crit_edge

do.body136.i.i.do.end147.i.i_crit_edge:           ; preds = %do.body136.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end147.i.i

land.lhs.true139.i.i:                             ; preds = %do.body136.i.i
  %call140.i.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140.i.i)
  %tobool141.not.i.i = icmp eq i32 %call140.i.i, 0
  br i1 %tobool141.not.i.i, label %land.lhs.true139.i.i.do.end147.i.i_crit_edge, label %land.lhs.true142.i.i

land.lhs.true139.i.i.do.end147.i.i_crit_edge:     ; preds = %land.lhs.true139.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end147.i.i

land.lhs.true142.i.i:                             ; preds = %land.lhs.true139.i.i
  %.b2811.i.i = load i1, ptr @__rhashtable_insert_fast.__warned.17, align 1
  br i1 %.b2811.i.i, label %land.lhs.true142.i.i.do.end147.i.i_crit_edge, label %if.then144.i.i

land.lhs.true142.i.i.do.end147.i.i_crit_edge:     ; preds = %land.lhs.true142.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end147.i.i

if.then144.i.i:                                   ; preds = %land.lhs.true142.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @__rhashtable_insert_fast.__warned.17, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 732, ptr noundef nonnull @.str.10) #17
  br label %do.end147.i.i

do.end147.i.i:                                    ; preds = %if.then144.i.i, %land.lhs.true142.i.i.do.end147.i.i_crit_edge, %land.lhs.true139.i.i.do.end147.i.i_crit_edge, %do.body136.i.i.do.end147.i.i_crit_edge
  %123 = ptrtoint ptr %head.087.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %head.087.i.i, align 4
  %125 = ptrtoint ptr %124 to i32
  %and.i.i.i = and i32 %125, 1
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %do.end147.i.i.for.body.i.i_crit_edge, label %for.end.i.i

do.end147.i.i.for.body.i.i_crit_edge:             ; preds = %do.end147.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %do.end147.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i.i)
  %phi.cmp.i.i = icmp slt i32 %dec.i.i, 1
  br i1 %phi.cmp.i.i, label %for.end.i.i.slow_path.i.i_crit_edge, label %for.end.i.i.if.end152.i.i_crit_edge

for.end.i.i.if.end152.i.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end152.i.i

for.end.i.i.slow_path.i.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %slow_path.i.i

if.end152.i.i:                                    ; preds = %for.end.i.i.if.end152.i.i_crit_edge, %rht_ptr.exit.i.i.if.end152.i.i_crit_edge
  %nelems.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %vg.0289, i32 0, i32 8
  %call.i.i.i39.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i.i, i32 noundef 4) #17
  %126 = ptrtoint ptr %nelems.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load volatile i32, ptr %nelems.i.i.i, align 4
  %max_elems.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %vg.0289, i32 0, i32 2
  %128 = ptrtoint ptr %max_elems.i.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %max_elems.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %127, i32 %129)
  %cmp.i.not.i.i = icmp ult i32 %127, %129
  br i1 %cmp.i.not.i.i, label %if.end162.i.i, label %if.end152.i.i.out_unlock.i.i_crit_edge, !prof !170

if.end152.i.i.out_unlock.i.i_crit_edge:           ; preds = %if.end152.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_unlock.i.i

if.end162.i.i:                                    ; preds = %if.end152.i.i
  %call.i.i.i41.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i.i, i32 noundef 4) #17
  %130 = ptrtoint ptr %nelems.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load volatile i32, ptr %nelems.i.i.i, align 4
  %132 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %93, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %131, i32 %133)
  %cmp.i42.i.i = icmp ugt i32 %131, %133
  br i1 %cmp.i42.i.i, label %rht_grow_above_100.exit.i.i, label %if.end162.i.i.if.end171.i.i_crit_edge

if.end162.i.i.if.end171.i.i_crit_edge:            ; preds = %if.end162.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end171.i.i

rht_grow_above_100.exit.i.i:                      ; preds = %if.end162.i.i
  %max_size.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %vg.0289, i32 0, i32 3, i32 4
  %134 = ptrtoint ptr %max_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %max_size.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %tobool.not.i43.i.i = icmp eq i32 %135, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %133, i32 %135)
  %cmp4.i.i.i = icmp ult i32 %133, %135
  %spec.select.i.i.i = select i1 %tobool.not.i43.i.i, i1 true, i1 %cmp4.i.i.i
  br i1 %spec.select.i.i.i, label %rht_grow_above_100.exit.i.i.slow_path.i.i_crit_edge, label %rht_grow_above_100.exit.i.i.if.end171.i.i_crit_edge, !prof !172

rht_grow_above_100.exit.i.i.if.end171.i.i_crit_edge: ; preds = %rht_grow_above_100.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end171.i.i

rht_grow_above_100.exit.i.i.slow_path.i.i_crit_edge: ; preds = %rht_grow_above_100.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %slow_path.i.i

if.end171.i.i:                                    ; preds = %rht_grow_above_100.exit.i.i.if.end171.i.i_crit_edge, %if.end162.i.i.if.end171.i.i_crit_edge
  %call.i44.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %93, i32 noundef %and.i3.i.i.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44.i.i)
  %tobool.not.i45.i.i = icmp eq i32 %call.i44.i.i, 0
  br i1 %tobool.not.i45.i.i, label %land.lhs.true.i48.i.i, label %if.end171.i.i.rht_ptr.exit56.i.i_crit_edge

if.end171.i.i.rht_ptr.exit56.i.i_crit_edge:       ; preds = %if.end171.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rht_ptr.exit56.i.i

land.lhs.true.i48.i.i:                            ; preds = %if.end171.i.i
  %call1.i46.i.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i46.i.i)
  %tobool2.not.i47.i.i = icmp eq i32 %call1.i46.i.i, 0
  br i1 %tobool2.not.i47.i.i, label %land.lhs.true.i48.i.i.rht_ptr.exit56.i.i_crit_edge, label %land.lhs.true3.i50.i.i

land.lhs.true.i48.i.i.rht_ptr.exit56.i.i_crit_edge: ; preds = %land.lhs.true.i48.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rht_ptr.exit56.i.i

land.lhs.true3.i50.i.i:                           ; preds = %land.lhs.true.i48.i.i
  %.b7.i49.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i49.i.i, label %land.lhs.true3.i50.i.i.rht_ptr.exit56.i.i_crit_edge, label %if.then.i51.i.i

land.lhs.true3.i50.i.i.rht_ptr.exit56.i.i_crit_edge: ; preds = %land.lhs.true3.i50.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rht_ptr.exit56.i.i

if.then.i51.i.i:                                  ; preds = %land.lhs.true3.i50.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 377, ptr noundef nonnull @.str.10) #17
  br label %rht_ptr.exit56.i.i

rht_ptr.exit56.i.i:                               ; preds = %if.then.i51.i.i, %land.lhs.true3.i50.i.i.rht_ptr.exit56.i.i_crit_edge, %land.lhs.true.i48.i.i.rht_ptr.exit56.i.i_crit_edge, %if.end171.i.i.rht_ptr.exit56.i.i_crit_edge
  %136 = ptrtoint ptr %cond.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %cond.i9.i.i, align 4
  %138 = ptrtoint ptr %137 to i32
  %and.i.i52.i.i = and i32 %138, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i52.i.i)
  %tobool.not.i.i53.i.i = icmp eq i32 %and.i.i52.i.i, 0
  %cond.i.i55.i.i = select i1 %tobool.not.i.i53.i.i, i32 %or.i.i.i.i, i32 %and.i.i52.i.i
  %139 = inttoptr i32 %cond.i.i55.i.i to ptr
  %140 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %140)
  store volatile ptr %139, ptr %v, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nelems.i.i.i, i32 noundef 4) #17
  tail call void @llvm.prefetch.p0(ptr %nelems.i.i.i, i32 1, i32 3, i32 1) #17
  %141 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nelems.i.i.i, ptr %nelems.i.i.i, i32 1, ptr elementtype(i32) %nelems.i.i.i) #17, !srcloc !180
  tail call fastcc void @rht_assign_unlock(ptr noundef %93, ptr noundef nonnull %cond.i9.i.i, ptr noundef %v) #17
  %call.i.i.i58.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i.i, i32 noundef 4) #17
  %142 = ptrtoint ptr %nelems.i.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load volatile i32, ptr %nelems.i.i.i, align 4
  %144 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %93, align 128
  %div8.i.i.i = lshr i32 %145, 2
  %mul.i.i.i = mul nuw i32 %div8.i.i.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %143, i32 %mul.i.i.i)
  %cmp.i59.i.i = icmp ugt i32 %143, %mul.i.i.i
  br i1 %cmp.i59.i.i, label %rht_grow_above_75.exit.i.i, label %rht_ptr.exit56.i.i.out.i.i_crit_edge

rht_ptr.exit56.i.i.out.i.i_crit_edge:             ; preds = %rht_ptr.exit56.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out.i.i

rht_grow_above_75.exit.i.i:                       ; preds = %rht_ptr.exit56.i.i
  %max_size.i60.i.i = getelementptr inbounds %struct.rhashtable, ptr %vg.0289, i32 0, i32 3, i32 4
  %146 = ptrtoint ptr %max_size.i60.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %max_size.i60.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %tobool.not.i61.i.i = icmp eq i32 %147, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %145, i32 %147)
  %cmp4.i62.i.i = icmp ult i32 %145, %147
  %spec.select.i63.i.i = select i1 %tobool.not.i61.i.i, i1 true, i1 %cmp4.i62.i.i
  br i1 %spec.select.i63.i.i, label %if.then207.i.i, label %rht_grow_above_75.exit.i.i.out.i.i_crit_edge

rht_grow_above_75.exit.i.i.out.i.i_crit_edge:     ; preds = %rht_grow_above_75.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out.i.i

if.then207.i.i:                                   ; preds = %rht_grow_above_75.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %run_work.i.i = getelementptr inbounds %struct.rhashtable, ptr %vg.0289, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %148 = load ptr, ptr @system_wq, align 4
  %call.i.i65.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %148, ptr noundef %run_work.i.i) #17
  br label %out.i.i

out.i.i:                                          ; preds = %out_unlock.i.i, %if.then207.i.i, %rht_grow_above_75.exit.i.i.out.i.i_crit_edge, %rht_ptr.exit56.i.i.out.i.i_crit_edge, %rht_bucket_insert.exit.i.i.out.i.i_crit_edge
  %data.2.i.i = phi ptr [ %data.3.i.i, %out_unlock.i.i ], [ inttoptr (i32 -12 to ptr), %rht_bucket_insert.exit.i.i.out.i.i_crit_edge ], [ null, %if.then207.i.i ], [ null, %rht_grow_above_75.exit.i.i.out.i.i_crit_edge ], [ null, %rht_ptr.exit56.i.i.out.i.i_crit_edge ]
  %call.i66.i.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i66.i.i, label %out.i.i.rcu_read_unlock.exit76.i.i_crit_edge, label %land.lhs.true.i69.i.i

out.i.i.rcu_read_unlock.exit76.i.i_crit_edge:     ; preds = %out.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit76.i.i

land.lhs.true.i69.i.i:                            ; preds = %out.i.i
  %call1.i67.i.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i67.i.i)
  %tobool.not.i68.i.i = icmp eq i32 %call1.i67.i.i, 0
  br i1 %tobool.not.i68.i.i, label %land.lhs.true.i69.i.i.rcu_read_unlock.exit76.i.i_crit_edge, label %land.lhs.true2.i71.i.i

land.lhs.true.i69.i.i.rcu_read_unlock.exit76.i.i_crit_edge: ; preds = %land.lhs.true.i69.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit76.i.i

land.lhs.true2.i71.i.i:                           ; preds = %land.lhs.true.i69.i.i
  %.b4.i70.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i70.i.i, label %land.lhs.true2.i71.i.i.rcu_read_unlock.exit76.i.i_crit_edge, label %if.then.i72.i.i

land.lhs.true2.i71.i.i.rcu_read_unlock.exit76.i.i_crit_edge: ; preds = %land.lhs.true2.i71.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit76.i.i

if.then.i72.i.i:                                  ; preds = %land.lhs.true2.i71.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 724, ptr noundef nonnull @.str.20) #17
  br label %rcu_read_unlock.exit76.i.i

rcu_read_unlock.exit76.i.i:                       ; preds = %if.then.i72.i.i, %land.lhs.true2.i71.i.i.rcu_read_unlock.exit76.i.i_crit_edge, %land.lhs.true.i69.i.i.rcu_read_unlock.exit76.i.i_crit_edge, %out.i.i.rcu_read_unlock.exit76.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !179
  %149 = tail call i32 @llvm.read_register.i32(metadata !155) #17
  %and.i.i.i.i.i73.i.i = and i32 %149, -16384
  %150 = inttoptr i32 %and.i.i.i.i.i73.i.i to ptr
  %preempt_count.i.i.i.i74.i.i = getelementptr inbounds %struct.thread_info, ptr %150, i32 0, i32 1
  %151 = ptrtoint ptr %preempt_count.i.i.i.i74.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load volatile i32, ptr %preempt_count.i.i.i.i74.i.i, align 4
  %sub.i.i.i75.i.i = add i32 %152, -1
  store volatile i32 %sub.i.i.i75.i.i, ptr %preempt_count.i.i.i.i74.i.i, align 4
  tail call void @rcu_read_unlock_strict() #17
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  br label %rhashtable_lookup_insert_fast.exit

out_unlock.i.i:                                   ; preds = %if.end152.i.i.out_unlock.i.i_crit_edge, %lor.lhs.false36.i.i.out_unlock.i.i_crit_edge
  %data.3.i.i = phi ptr [ inttoptr (i32 -7 to ptr), %if.end152.i.i.out_unlock.i.i_crit_edge ], [ %add.ptr.i31.i.i, %lor.lhs.false36.i.i.out_unlock.i.i_crit_edge ]
  tail call fastcc void @rht_unlock(ptr noundef %93, ptr noundef nonnull %cond.i9.i.i) #17
  br label %out.i.i

rhashtable_lookup_insert_fast.exit:               ; preds = %rcu_read_unlock.exit76.i.i, %rcu_read_unlock.exit.i.i
  %retval.0.i.i = phi ptr [ %call29.i.i, %rcu_read_unlock.exit.i.i ], [ %data.2.i.i, %rcu_read_unlock.exit76.i.i ]
  %cmp.i.i = icmp ugt ptr %retval.0.i.i, inttoptr (i32 -4096 to ptr)
  %153 = ptrtoint ptr %retval.0.i.i to i32
  %cmp.i230 = icmp eq ptr %retval.0.i.i, null
  %cond.i = select i1 %cmp.i230, i32 0, i32 -17
  %retval.0.i231 = select i1 %cmp.i.i, i32 %153, i32 %cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i231)
  %tobool82.not = icmp eq i32 %retval.0.i231, 0
  %154 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %flags.i, align 2
  br i1 %tobool82.not, label %if.end84, label %out_fdb_insert

if.end84:                                         ; preds = %rhashtable_lookup_insert_fast.exit
  %156 = and i16 %155, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %156)
  %tobool.i.not.i = icmp eq i16 %156, 0
  %157 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %3, align 4
  %call.i18.i = tail call zeroext i1 @lockdep_rtnl_is_held() #17
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then.i233

if.then.i233:                                     ; preds = %if.end84
  br i1 %call.i18.i, label %if.then.i233.br_vlan_group.exit.i_crit_edge, label %land.lhs.true.i.i235

if.then.i233.br_vlan_group.exit.i_crit_edge:      ; preds = %if.then.i233
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_vlan_group.exit.i

land.lhs.true.i.i235:                             ; preds = %if.then.i233
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i234 = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i234, label %land.lhs.true.i.i235.br_vlan_group.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i235.br_vlan_group.exit.i_crit_edge: ; preds = %land.lhs.true.i.i235
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_vlan_group.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i235
  %.b4.i.i = load i1, ptr @br_vlan_group.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.br_vlan_group.exit.i_crit_edge, label %if.then.i.i236

land.lhs.true2.i.i.br_vlan_group.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_vlan_group.exit.i

if.then.i.i236:                                   ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @br_vlan_group.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 1471, ptr noundef nonnull @.str.10) #17
  br label %br_vlan_group.exit.i

br_vlan_group.exit.i:                             ; preds = %if.then.i.i236, %land.lhs.true2.i.i.br_vlan_group.exit.i_crit_edge, %land.lhs.true.i.i235.br_vlan_group.exit.i_crit_edge, %if.then.i233.br_vlan_group.exit.i_crit_edge
  %vlgrp.i.i = getelementptr inbounds %struct.net_bridge, ptr %158, i32 0, i32 7
  br label %if.end.i237

if.else.i:                                        ; preds = %if.end84
  br i1 %call.i18.i, label %if.else.i.nbp_vlan_group.exit.i_crit_edge, label %land.lhs.true.i21.i

if.else.i.nbp_vlan_group.exit.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %nbp_vlan_group.exit.i

land.lhs.true.i21.i:                              ; preds = %if.else.i
  %call1.i19.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i19.i)
  %tobool.not.i20.i = icmp eq i32 %call1.i19.i, 0
  br i1 %tobool.not.i20.i, label %land.lhs.true.i21.i.nbp_vlan_group.exit.i_crit_edge, label %land.lhs.true2.i23.i

land.lhs.true.i21.i.nbp_vlan_group.exit.i_crit_edge: ; preds = %land.lhs.true.i21.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %nbp_vlan_group.exit.i

land.lhs.true2.i23.i:                             ; preds = %land.lhs.true.i21.i
  %.b4.i22.i = load i1, ptr @nbp_vlan_group.__warned, align 1
  br i1 %.b4.i22.i, label %land.lhs.true2.i23.i.nbp_vlan_group.exit.i_crit_edge, label %if.then.i24.i

land.lhs.true2.i23.i.nbp_vlan_group.exit.i_crit_edge: ; preds = %land.lhs.true2.i23.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %nbp_vlan_group.exit.i

if.then.i24.i:                                    ; preds = %land.lhs.true2.i23.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @nbp_vlan_group.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 1477, ptr noundef nonnull @.str.10) #17
  br label %nbp_vlan_group.exit.i

nbp_vlan_group.exit.i:                            ; preds = %if.then.i24.i, %land.lhs.true2.i23.i.nbp_vlan_group.exit.i_crit_edge, %land.lhs.true.i21.i.nbp_vlan_group.exit.i_crit_edge, %if.else.i.nbp_vlan_group.exit.i_crit_edge
  %vlgrp.i25.i = getelementptr inbounds %struct.net_bridge_port, ptr %158, i32 0, i32 5
  br label %if.end.i237

if.end.i237:                                      ; preds = %nbp_vlan_group.exit.i, %br_vlan_group.exit.i
  %vg.0.in.i = phi ptr [ %vlgrp.i.i, %br_vlan_group.exit.i ], [ %vlgrp.i25.i, %nbp_vlan_group.exit.i ]
  %159 = ptrtoint ptr %vg.0.in.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %vg.0.i = load ptr, ptr %vg.0.in.i, align 4
  %vlan_list.i = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %vg.0.i, i32 0, i32 2
  %prev.i = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %vg.0.i, i32 0, i32 2, i32 1
  %160 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %hpos.026.i = load ptr, ptr %prev.i, align 4
  %cmp.i.not27.i = icmp eq ptr %hpos.026.i, %vlan_list.i
  br i1 %cmp.i.not27.i, label %if.end.i237.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end.i237.for.end.i_crit_edge:                  ; preds = %if.end.i237
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end.i237
  %vid.i238 = getelementptr inbounds %struct.net_bridge_vlan, ptr %v, i32 0, i32 2
  %161 = ptrtoint ptr %vid.i238 to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %vid.i238, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %hpos.028.i = phi ptr [ %hpos.026.i, %for.body.lr.ph.i ], [ %hpos.0.i, %for.inc.i.for.body.i_crit_edge ]
  %vid4.i = getelementptr i8, ptr %hpos.028.i, i32 -548
  %163 = ptrtoint ptr %vid4.i to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %vid4.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %162, i16 %164)
  %cmp.not.i = icmp ult i16 %162, %164
  br i1 %cmp.not.i, label %for.inc.i, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i

for.inc.i:                                        ; preds = %for.body.i
  %prev9.i = getelementptr inbounds %struct.list_head, ptr %hpos.028.i, i32 0, i32 1
  %165 = ptrtoint ptr %prev9.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %hpos.0.i = load ptr, ptr %prev9.i, align 4
  %cmp.i.not.i = icmp eq ptr %hpos.0.i, %vlan_list.i
  br i1 %cmp.i.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge, %if.end.i237.for.end.i_crit_edge
  %hpos.0.lcssa.i = phi ptr [ %vlan_list.i, %if.end.i237.for.end.i_crit_edge ], [ %hpos.028.i, %for.body.i.for.end.i_crit_edge ], [ %vlan_list.i, %for.inc.i.for.end.i_crit_edge ]
  %vlist.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %v, i32 0, i32 11
  %166 = ptrtoint ptr %hpos.0.lcssa.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %hpos.0.lcssa.i, align 4
  %call.i.i.i239 = tail call zeroext i1 @__list_add_valid(ptr noundef %vlist.i, ptr noundef %hpos.0.lcssa.i, ptr noundef %167) #17
  br i1 %call.i.i.i239, label %if.end.i.i.i, label %for.end.i.__vlan_add_list.exit_crit_edge

for.end.i.__vlan_add_list.exit_crit_edge:         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__vlan_add_list.exit

if.end.i.i.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %168 = ptrtoint ptr %vlist.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %167, ptr %vlist.i, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %v, i32 0, i32 11, i32 1
  %169 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %hpos.0.lcssa.i, ptr %prev2.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !181
  %170 = ptrtoint ptr %hpos.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store volatile ptr %vlist.i, ptr %hpos.0.lcssa.i, align 4
  %prev37.i.i.i = getelementptr inbounds %struct.list_head, ptr %167, i32 0, i32 1
  %171 = ptrtoint ptr %prev37.i.i.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %vlist.i, ptr %prev37.i.i.i, align 4
  br label %__vlan_add_list.exit

__vlan_add_list.exit:                             ; preds = %if.end.i.i.i, %for.end.i.__vlan_add_list.exit_crit_edge
  %call85 = tail call fastcc zeroext i1 @__vlan_add_flags(ptr noundef %v, i16 noundef zeroext %flags)
  tail call void @br_multicast_toggle_one_vlan(ptr noundef %v, i1 noundef zeroext true) #17
  br i1 %tobool.not295, label %__vlan_add_list.exit.cleanup117_crit_edge, label %if.then87

__vlan_add_list.exit.cleanup117_crit_edge:        ; preds = %__vlan_add_list.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup117

if.then87:                                        ; preds = %__vlan_add_list.exit
  %vid88 = getelementptr inbounds %struct.net_bridge_vlan, ptr %v, i32 0, i32 2
  %172 = ptrtoint ptr %vid88 to i32
  call void @__asan_load2_noabort(i32 %172)
  %173 = load i16, ptr %vid88, align 8
  %174 = ptrtoint ptr %p.0292 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %p.0292, align 8
  %options.i.i = getelementptr inbounds %struct.net_bridge, ptr %175, i32 0, i32 4
  %176 = ptrtoint ptr %options.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load volatile i32, ptr %options.i.i, align 4
  %178 = and i32 %177, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %178)
  %tobool.not.i240 = icmp eq i32 %178, 0
  br i1 %tobool.not.i240, label %if.then87.cleanup117_crit_edge, label %if.end.i243

if.then87.cleanup117_crit_edge:                   ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup117

if.end.i243:                                      ; preds = %if.then87
  %dev.i = getelementptr inbounds %struct.net_bridge, ptr %175, i32 0, i32 3
  %179 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %dev.i, align 4
  %call2.i241 = tail call fastcc ptr @br_vlan_get_upper_bind_vlan_dev(ptr noundef %180, i16 noundef zeroext %173) #17
  %tobool3.not.i242 = icmp eq ptr %call2.i241, null
  br i1 %tobool3.not.i242, label %if.end.i243.cleanup117_crit_edge, label %if.then4.i

if.end.i243.cleanup117_crit_edge:                 ; preds = %if.end.i243
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup117

if.then4.i:                                       ; preds = %if.end.i243
  call void @__sanitizer_cov_trace_pc() #19
  %181 = ptrtoint ptr %p.0292 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %p.0292, align 8
  tail call fastcc void @br_vlan_set_vlan_dev_state(ptr noundef %182, ptr noundef nonnull %call2.i241) #17
  br label %cleanup117

out_fdb_insert:                                   ; preds = %rhashtable_lookup_insert_fast.exit
  %183 = and i16 %155, 33
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %183)
  %.not324 = icmp eq i16 %183, 1
  br i1 %.not324, label %out_filt, label %if.then91

if.then91:                                        ; preds = %out_fdb_insert
  %dev_addr92 = getelementptr inbounds %struct.net_device, ptr %dev.0287, i32 0, i32 86
  %184 = ptrtoint ptr %dev_addr92 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %dev_addr92, align 64
  %vid93 = getelementptr inbounds %struct.net_bridge_vlan, ptr %v, i32 0, i32 2
  %186 = ptrtoint ptr %vid93 to i32
  call void @__asan_load2_noabort(i32 %186)
  %187 = load i16, ptr %vid93, align 8
  tail call void @br_fdb_find_delete_local(ptr noundef %br.0281, ptr noundef %p.0292, ptr noundef %185, i16 noundef zeroext %187) #17
  %num_vlans94 = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %vg.0289, i32 0, i32 3
  %188 = ptrtoint ptr %num_vlans94 to i32
  call void @__asan_load2_noabort(i32 %188)
  %189 = load i16, ptr %num_vlans94, align 4
  %dec = add i16 %189, -1
  store i16 %dec, ptr %num_vlans94, align 4
  br i1 %tobool.not295, label %if.then91.if.else113_crit_edge, label %if.then91.if.then97_crit_edge

if.then91.if.then97_crit_edge:                    ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then97

if.then91.if.else113_crit_edge:                   ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else113

out_filt:                                         ; preds = %out_fdb_insert
  br i1 %tobool.not295, label %out_filt.if.else113_crit_edge, label %out_filt.if.then97_crit_edge

out_filt.if.then97_crit_edge:                     ; preds = %out_filt
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then97

out_filt.if.else113_crit_edge:                    ; preds = %out_filt
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else113

if.then97:                                        ; preds = %out_filt.if.then97_crit_edge, %if.then91.if.then97_crit_edge, %do.end75.if.then97_crit_edge, %if.then45.critedge, %br_vlan_get_master.exit.thread310, %cleanup
  %masterv.1321 = phi ptr [ %masterv.0, %out_filt.if.then97_crit_edge ], [ %masterv.0, %do.end75.if.then97_crit_edge ], [ %masterv.0, %if.then91.if.then97_crit_edge ], [ null, %br_vlan_get_master.exit.thread310 ], [ %retval.1.i307, %if.then45.critedge ], [ null, %cleanup ]
  %err.1320 = phi i32 [ %retval.0.i231, %out_filt.if.then97_crit_edge ], [ %call70, %do.end75.if.then97_crit_edge ], [ %retval.0.i231, %if.then91.if.then97_crit_edge ], [ -12, %br_vlan_get_master.exit.thread310 ], [ -12, %if.then45.critedge ], [ %call15, %cleanup ]
  %br.0285319 = phi ptr [ %br.0281, %out_filt.if.then97_crit_edge ], [ %br.0281, %do.end75.if.then97_crit_edge ], [ %br.0281, %if.then91.if.then97_crit_edge ], [ %11, %br_vlan_get_master.exit.thread310 ], [ %11, %if.then45.critedge ], [ %11, %cleanup ]
  %dev.0286318 = phi ptr [ %dev.0287, %out_filt.if.then97_crit_edge ], [ %dev.0287, %do.end75.if.then97_crit_edge ], [ %dev.0287, %if.then91.if.then97_crit_edge ], [ %13, %br_vlan_get_master.exit.thread310 ], [ %13, %if.then45.critedge ], [ %13, %cleanup ]
  %vid.i246 = getelementptr inbounds %struct.net_bridge_vlan, ptr %v, i32 0, i32 2
  %190 = ptrtoint ptr %vid.i246 to i32
  call void @__asan_load2_noabort(i32 %190)
  %191 = load i16, ptr %vid.i246, align 8
  %call.i247 = tail call i32 @br_switchdev_port_vlan_del(ptr noundef %dev.0286318, i16 noundef zeroext %191) #17
  %priv_flags.i248 = getelementptr inbounds %struct.net_bridge_vlan, ptr %v, i32 0, i32 4
  %192 = ptrtoint ptr %priv_flags.i248 to i32
  call void @__asan_load2_noabort(i32 %192)
  %193 = load i16, ptr %priv_flags.i248, align 4
  %194 = and i16 %193, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %194)
  %tobool.not.i249 = icmp eq i16 %194, 0
  br i1 %tobool.not.i249, label %if.then.i251, label %if.then97.__vlan_vid_del.exit_crit_edge

if.then97.__vlan_vid_del.exit_crit_edge:          ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #19
  br label %__vlan_vid_del.exit

if.then.i251:                                     ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #19
  %vlan_proto.i250 = getelementptr inbounds %struct.net_bridge, ptr %br.0285319, i32 0, i32 5
  %195 = ptrtoint ptr %vlan_proto.i250 to i32
  call void @__asan_load2_noabort(i32 %195)
  %196 = load i16, ptr %vlan_proto.i250, align 4
  %197 = ptrtoint ptr %vid.i246 to i32
  call void @__asan_load2_noabort(i32 %197)
  %198 = load i16, ptr %vid.i246, align 8
  tail call void @vlan_vid_del(ptr noundef %dev.0286318, i16 noundef zeroext %196, i16 noundef zeroext %198) #17
  br label %__vlan_vid_del.exit

__vlan_vid_del.exit:                              ; preds = %if.then.i251, %if.then97.__vlan_vid_del.exit_crit_edge
  %tobool99.not = icmp eq ptr %masterv.1321, null
  br i1 %tobool99.not, label %__vlan_vid_del.exit.cleanup117_crit_edge, label %if.then100

__vlan_vid_del.exit.cleanup117_crit_edge:         ; preds = %__vlan_vid_del.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup117

if.then100:                                       ; preds = %__vlan_vid_del.exit
  %stats101 = getelementptr inbounds %struct.net_bridge_vlan, ptr %v, i32 0, i32 6
  %199 = ptrtoint ptr %stats101 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %stats101, align 8
  %tobool102.not = icmp eq ptr %200, null
  br i1 %tobool102.not, label %if.then100.if.end110_crit_edge, label %land.lhs.true103

if.then100.if.end110_crit_edge:                   ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end110

land.lhs.true103:                                 ; preds = %if.then100
  %stats104 = getelementptr inbounds %struct.net_bridge_vlan, ptr %masterv.1321, i32 0, i32 6
  %201 = ptrtoint ptr %stats104 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %stats104, align 8
  %cmp106.not = icmp eq ptr %202, %200
  br i1 %cmp106.not, label %land.lhs.true103.if.end110_crit_edge, label %if.then108

land.lhs.true103.if.end110_crit_edge:             ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end110

if.then108:                                       ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @free_percpu(ptr noundef nonnull %200) #17
  br label %if.end110

if.end110:                                        ; preds = %if.then108, %land.lhs.true103.if.end110_crit_edge, %if.then100.if.end110_crit_edge
  %203 = ptrtoint ptr %stats101 to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr null, ptr %stats101, align 8
  tail call fastcc void @br_vlan_put_master(ptr noundef nonnull %masterv.1321)
  %204 = getelementptr inbounds %struct.net_bridge_vlan, ptr %v, i32 0, i32 8
  %205 = ptrtoint ptr %204 to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr null, ptr %204, align 8
  br label %cleanup117

if.else113:                                       ; preds = %out_filt.if.else113_crit_edge, %if.then91.if.else113_crit_edge, %do.end75.if.else113_crit_edge
  %err.1323 = phi i32 [ %call70, %do.end75.if.else113_crit_edge ], [ %retval.0.i231, %out_filt.if.else113_crit_edge ], [ %retval.0.i231, %if.then91.if.else113_crit_edge ]
  %vid114 = getelementptr inbounds %struct.net_bridge_vlan, ptr %v, i32 0, i32 2
  %206 = ptrtoint ptr %vid114 to i32
  call void @__asan_load2_noabort(i32 %206)
  %207 = load i16, ptr %vid114, align 8
  %call115 = tail call i32 @br_switchdev_port_vlan_del(ptr noundef %dev.0287, i16 noundef zeroext %207) #17
  br label %cleanup117

cleanup117:                                       ; preds = %if.else113, %if.end110, %__vlan_vid_del.exit.cleanup117_crit_edge, %if.then4.i, %if.end.i243.cleanup117_crit_edge, %if.then87.cleanup117_crit_edge, %__vlan_add_list.exit.cleanup117_crit_edge, %if.else54.cleanup117_crit_edge, %__vlan_vid_add.exit.cleanup117_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %__vlan_vid_add.exit.cleanup117_crit_edge ], [ %err.1320, %if.end110 ], [ %err.1320, %__vlan_vid_del.exit.cleanup117_crit_edge ], [ %err.1323, %if.else113 ], [ 0, %__vlan_add_list.exit.cleanup117_crit_edge ], [ %call56, %if.else54.cleanup117_crit_edge ], [ 0, %if.then87.cleanup117_crit_edge ], [ 0, %if.end.i243.cleanup117_crit_edge ], [ 0, %if.then4.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_vlan_delete(ptr noundef %br, i16 noundef zeroext %vid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_is_locked() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b56 = load i1, ptr @br_vlan_delete.__already_done, align 1
  br i1 %.b56, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !170

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @br_vlan_delete.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 764, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 764) #17
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #17
  br i1 %call.i, label %if.end29.br_vlan_group.exit_crit_edge, label %land.lhs.true.i

if.end29.br_vlan_group.exit_crit_edge:            ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_vlan_group.exit

land.lhs.true.i:                                  ; preds = %if.end29
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.br_vlan_group.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.br_vlan_group.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_vlan_group.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @br_vlan_group.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.br_vlan_group.exit_crit_edge, label %if.then.i

land.lhs.true2.i.br_vlan_group.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_vlan_group.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @br_vlan_group.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 1471, ptr noundef nonnull @.str.10) #17
  br label %br_vlan_group.exit

br_vlan_group.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.br_vlan_group.exit_crit_edge, %land.lhs.true.i.br_vlan_group.exit_crit_edge, %if.end29.br_vlan_group.exit_crit_edge
  %vlgrp.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 7
  %0 = ptrtoint ptr %vlgrp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vlgrp.i, align 4
  %tobool.not.i57 = icmp eq ptr %1, null
  br i1 %tobool.not.i57, label %br_vlan_group.exit.cleanup_crit_edge, label %br_vlan_find.exit

br_vlan_group.exit.cleanup_crit_edge:             ; preds = %br_vlan_group.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

br_vlan_find.exit:                                ; preds = %br_vlan_group.exit
  %call.i58 = tail call fastcc ptr @br_vlan_lookup(ptr noundef nonnull %1, i16 noundef zeroext %vid) #17
  %tobool39.not = icmp eq ptr %call.i58, null
  br i1 %tobool39.not, label %br_vlan_find.exit.cleanup_crit_edge, label %lor.lhs.false

br_vlan_find.exit.cleanup_crit_edge:              ; preds = %br_vlan_find.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false:                                    ; preds = %br_vlan_find.exit
  %flags.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %call.i58, i32 0, i32 3
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags.i, align 2
  %4 = and i16 %3, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.i.not = icmp eq i16 %4, 0
  br i1 %tobool.i.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end42

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end42:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  %dev = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 3
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 86
  %7 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_addr, align 64
  tail call void @br_fdb_find_delete_local(ptr noundef %br, ptr noundef null, ptr noundef %8, i16 noundef zeroext %vid) #17
  tail call void @br_fdb_delete_by_port(ptr noundef %br, ptr noundef null, i16 noundef zeroext %vid, i32 noundef 0) #17
  tail call void @vlan_tunnel_info_del(ptr noundef nonnull %1, ptr noundef nonnull %call.i58) #17
  %call43 = tail call fastcc i32 @__vlan_del(ptr noundef nonnull %call.i58)
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %lor.lhs.false.cleanup_crit_edge, %br_vlan_find.exit.cleanup_crit_edge, %br_vlan_group.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call43, %if.end42 ], [ -2, %lor.lhs.false.cleanup_crit_edge ], [ -2, %br_vlan_find.exit.cleanup_crit_edge ], [ -2, %br_vlan_group.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_fdb_find_delete_local(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_fdb_delete_by_port(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vlan_tunnel_info_del(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__vlan_del(ptr noundef %v) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %v, i32 0, i32 3
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %flags.i, align 2
  %2 = and i16 %1, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.i.not = icmp eq i16 %2, 0
  %3 = getelementptr inbounds %struct.net_bridge_vlan, ptr %v, i32 0, i32 7
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call.i62 = tail call zeroext i1 @lockdep_rtnl_is_held() #17
  br i1 %tobool.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %call.i62, label %if.then.br_vlan_group.exit_crit_edge, label %land.lhs.true.i

if.then.br_vlan_group.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_vlan_group.exit

land.lhs.true.i:                                  ; preds = %if.then
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.br_vlan_group.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.br_vlan_group.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_vlan_group.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @br_vlan_group.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.br_vlan_group.exit_crit_edge, label %if.then.i

land.lhs.true2.i.br_vlan_group.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_vlan_group.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @br_vlan_group.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 1471, ptr noundef nonnull @.str.10) #17
  br label %br_vlan_group.exit

br_vlan_group.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.br_vlan_group.exit_crit_edge, %land.lhs.true.i.br_vlan_group.exit_crit_edge, %if.then.br_vlan_group.exit_crit_edge
  %vlgrp.i = getelementptr inbounds %struct.net_bridge, ptr %5, i32 0, i32 7
  br label %if.end

if.else:                                          ; preds = %entry
  br i1 %call.i62, label %if.else.nbp_vlan_group.exit_crit_edge, label %land.lhs.true.i65

if.else.nbp_vlan_group.exit_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %nbp_vlan_group.exit

land.lhs.true.i65:                                ; preds = %if.else
  %call1.i63 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i63)
  %tobool.not.i64 = icmp eq i32 %call1.i63, 0
  br i1 %tobool.not.i64, label %land.lhs.true.i65.nbp_vlan_group.exit_crit_edge, label %land.lhs.true2.i67

land.lhs.true.i65.nbp_vlan_group.exit_crit_edge:  ; preds = %land.lhs.true.i65
  call void @__sanitizer_cov_trace_pc() #19
  br label %nbp_vlan_group.exit

land.lhs.true2.i67:                               ; preds = %land.lhs.true.i65
  %.b4.i66 = load i1, ptr @nbp_vlan_group.__warned, align 1
  br i1 %.b4.i66, label %land.lhs.true2.i67.nbp_vlan_group.exit_crit_edge, label %if.then.i68

land.lhs.true2.i67.nbp_vlan_group.exit_crit_edge: ; preds = %land.lhs.true2.i67
  call void @__sanitizer_cov_trace_pc() #19
  br label %nbp_vlan_group.exit

if.then.i68:                                      ; preds = %land.lhs.true2.i67
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @nbp_vlan_group.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 1477, ptr noundef nonnull @.str.10) #17
  br label %nbp_vlan_group.exit

nbp_vlan_group.exit:                              ; preds = %if.then.i68, %land.lhs.true2.i67.nbp_vlan_group.exit_crit_edge, %land.lhs.true.i65.nbp_vlan_group.exit_crit_edge, %if.else.nbp_vlan_group.exit_crit_edge
  %vlgrp.i69 = getelementptr inbounds %struct.net_bridge_port, ptr %5, i32 0, i32 5
  %6 = getelementptr inbounds %struct.net_bridge_vlan, ptr %v, i32 0, i32 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  br label %if.end

if.end:                                           ; preds = %nbp_vlan_group.exit, %br_vlan_group.exit
  %masterv.0 = phi ptr [ %v, %br_vlan_group.exit ], [ %8, %nbp_vlan_group.exit ]
  %vg.0.in = phi ptr [ %vlgrp.i, %br_vlan_group.exit ], [ %vlgrp.i69, %nbp_vlan_group.exit ]
  %p.0 = phi ptr [ null, %br_vlan_group.exit ], [ %5, %nbp_vlan_group.exit ]
  %9 = ptrtoint ptr %vg.0.in to i32
  call void @__asan_load4_noabort(i32 %9)
  %vg.0 = load ptr, ptr %vg.0.in, align 4
  %vid = getelementptr inbounds %struct.net_bridge_vlan, ptr %v, i32 0, i32 2
  %10 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %vid, align 8
  %pvid.i = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %vg.0, i32 0, i32 4
  %12 = ptrtoint ptr %pvid.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %pvid.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %11)
  %cmp.not.i = icmp eq i16 %13, %11
  br i1 %cmp.not.i, label %do.end.i, label %if.end.__vlan_delete_pvid.exit_crit_edge

if.end.__vlan_delete_pvid.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %__vlan_delete_pvid.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !182
  %14 = ptrtoint ptr %pvid.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %pvid.i, align 2
  br label %__vlan_delete_pvid.exit

__vlan_delete_pvid.exit:                          ; preds = %do.end.i, %if.end.__vlan_delete_pvid.exit_crit_edge
  %tobool.not = icmp eq ptr %p.0, null
  br i1 %tobool.not, label %if.else9, label %if.then4

if.then4:                                         ; preds = %__vlan_delete_pvid.exit
  %dev = getelementptr inbounds %struct.net_bridge_port, ptr %p.0, i32 0, i32 1
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %17 = ptrtoint ptr %p.0 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %p.0, align 8
  %19 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %vid, align 8
  %call.i70 = tail call i32 @br_switchdev_port_vlan_del(ptr noundef %16, i16 noundef zeroext %20) #17
  %priv_flags.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %v, i32 0, i32 4
  %21 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %priv_flags.i, align 4
  %23 = and i16 %22, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool.not.i71 = icmp eq i16 %23, 0
  br i1 %tobool.not.i71, label %if.then.i72, label %if.then4.__vlan_vid_del.exit_crit_edge

if.then4.__vlan_vid_del.exit_crit_edge:           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #19
  br label %__vlan_vid_del.exit

if.then.i72:                                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #19
  %vlan_proto.i = getelementptr inbounds %struct.net_bridge, ptr %18, i32 0, i32 5
  %24 = ptrtoint ptr %vlan_proto.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %vlan_proto.i, align 4
  %26 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %vid, align 8
  tail call void @vlan_vid_del(ptr noundef %16, i16 noundef zeroext %25, i16 noundef zeroext %27) #17
  br label %__vlan_vid_del.exit

__vlan_vid_del.exit:                              ; preds = %if.then.i72, %if.then4.__vlan_vid_del.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %call.i70)
  %cmp.i = icmp eq i32 %call.i70, -95
  %spec.select.i = select i1 %cmp.i, i32 0, i32 %call.i70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %tobool6.not = icmp eq i32 %spec.select.i, 0
  br i1 %tobool6.not, label %__vlan_vid_del.exit.if.end16_crit_edge, label %__vlan_vid_del.exit.out_crit_edge

__vlan_vid_del.exit.out_crit_edge:                ; preds = %__vlan_vid_del.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

__vlan_vid_del.exit.if.end16_crit_edge:           ; preds = %__vlan_vid_del.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end16

if.else9:                                         ; preds = %__vlan_delete_pvid.exit
  %28 = getelementptr inbounds %struct.net_bridge_vlan, ptr %v, i32 0, i32 7
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %dev10 = getelementptr inbounds %struct.net_bridge, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev10, align 4
  %33 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %vid, align 8
  %call12 = tail call i32 @br_switchdev_port_vlan_del(ptr noundef %32, i16 noundef zeroext %34) #17
  %35 = zext i32 %call12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %call12, label %if.else9.out_crit_edge [
    i32 0, label %if.else9.if.end16_crit_edge
    i32 -95, label %if.else9.if.end16_crit_edge74
  ]

if.else9.if.end16_crit_edge74:                    ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end16

if.else9.if.end16_crit_edge:                      ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end16

if.else9.out_crit_edge:                           ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end16:                                         ; preds = %if.else9.if.end16_crit_edge, %if.else9.if.end16_crit_edge74, %__vlan_vid_del.exit.if.end16_crit_edge
  %36 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %flags.i, align 2
  %38 = and i16 %37, 33
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %38)
  %.not = icmp eq i16 %38, 1
  br i1 %.not, label %if.end16.if.end20_crit_edge, label %if.then18

if.end16.if.end20_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end20

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #19
  %39 = and i16 %37, -33
  %40 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %flags.i, align 2
  %num_vlans = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %vg.0, i32 0, i32 3
  %41 = ptrtoint ptr %num_vlans to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %num_vlans, align 4
  %dec = add i16 %42, -1
  store i16 %dec, ptr %num_vlans, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end16.if.end20_crit_edge
  %cmp21.not = icmp eq ptr %masterv.0, %v
  br i1 %cmp21.not, label %if.end20.if.end26_crit_edge, label %if.then23

if.end20.if.end26_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end26

if.then23:                                        ; preds = %if.end20
  tail call void @vlan_tunnel_info_del(ptr noundef %vg.0, ptr noundef %v) #17
  tail call fastcc void @rhashtable_remove_fast(ptr noundef %vg.0, ptr noundef %v, [7 x i32] [i32 196610, i32 524288, i32 4096, i32 256, i32 0, i32 0, i32 ptrtoint (ptr @br_vlan_cmp to i32)])
  %vlist.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %v, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %vlist.i) #17
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then23.__vlan_del_list.exit_crit_edge

if.then23.__vlan_del_list.exit_crit_edge:         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #19
  br label %__vlan_del_list.exit

if.end.i.i.i:                                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %v, i32 0, i32 11, i32 1
  %43 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %prev.i.i.i, align 4
  %45 = ptrtoint ptr %vlist.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %vlist.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %44, ptr %prev1.i.i.i.i, align 4
  %48 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %46, ptr %44, align 4
  br label %__vlan_del_list.exit

__vlan_del_list.exit:                             ; preds = %if.end.i.i.i, %if.then23.__vlan_del_list.exit_crit_edge
  %prev.i.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %v, i32 0, i32 11, i32 1
  %49 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %50 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %vid, align 8
  %52 = ptrtoint ptr %p.0 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %p.0, align 8
  %options.i.i = getelementptr inbounds %struct.net_bridge, ptr %53, i32 0, i32 4
  %54 = ptrtoint ptr %options.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %options.i.i, align 4
  %56 = and i32 %55, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.not.i73 = icmp eq i32 %56, 0
  br i1 %tobool.not.i73, label %__vlan_del_list.exit.nbp_vlan_set_vlan_dev_state.exit_crit_edge, label %if.end.i

__vlan_del_list.exit.nbp_vlan_set_vlan_dev_state.exit_crit_edge: ; preds = %__vlan_del_list.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %nbp_vlan_set_vlan_dev_state.exit

if.end.i:                                         ; preds = %__vlan_del_list.exit
  %dev.i = getelementptr inbounds %struct.net_bridge, ptr %53, i32 0, i32 3
  %57 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev.i, align 4
  %call2.i = tail call fastcc ptr @br_vlan_get_upper_bind_vlan_dev(ptr noundef %58, i16 noundef zeroext %51) #17
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %if.end.i.nbp_vlan_set_vlan_dev_state.exit_crit_edge, label %if.then4.i

if.end.i.nbp_vlan_set_vlan_dev_state.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %nbp_vlan_set_vlan_dev_state.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %59 = ptrtoint ptr %p.0 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %p.0, align 8
  tail call fastcc void @br_vlan_set_vlan_dev_state(ptr noundef %60, ptr noundef nonnull %call2.i) #17
  br label %nbp_vlan_set_vlan_dev_state.exit

nbp_vlan_set_vlan_dev_state.exit:                 ; preds = %if.then4.i, %if.end.i.nbp_vlan_set_vlan_dev_state.exit_crit_edge, %__vlan_del_list.exit.nbp_vlan_set_vlan_dev_state.exit_crit_edge
  tail call void @br_multicast_toggle_one_vlan(ptr noundef %v, i1 noundef zeroext false) #17
  %61 = getelementptr inbounds %struct.net_bridge_vlan, ptr %v, i32 0, i32 10
  tail call void @br_multicast_port_ctx_deinit(ptr noundef %61) #17
  %rcu = getelementptr inbounds %struct.net_bridge_vlan, ptr %v, i32 0, i32 12
  tail call void @call_rcu(ptr noundef %rcu, ptr noundef nonnull @nbp_vlan_rcu_free) #17
  br label %if.end26

if.end26:                                         ; preds = %nbp_vlan_set_vlan_dev_state.exit, %if.end20.if.end26_crit_edge
  tail call fastcc void @br_vlan_put_master(ptr noundef %masterv.0)
  br label %out

out:                                              ; preds = %if.end26, %if.else9.out_crit_edge, %__vlan_vid_del.exit.out_crit_edge
  %err.1 = phi i32 [ %spec.select.i, %__vlan_vid_del.exit.out_crit_edge ], [ 0, %if.end26 ], [ %call12, %if.else9.out_crit_edge ]
  ret i32 %err.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @br_vlan_flush(ptr noundef %br) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_is_locked() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b55 = load i1, ptr @br_vlan_flush.__already_done, align 1
  br i1 %.b55, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !170

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @br_vlan_flush.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 783, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 783) #17
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #17
  br i1 %call.i, label %if.end29.br_vlan_group.exit_crit_edge, label %land.lhs.true.i

if.end29.br_vlan_group.exit_crit_edge:            ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_vlan_group.exit

land.lhs.true.i:                                  ; preds = %if.end29
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.br_vlan_group.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.br_vlan_group.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_vlan_group.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @br_vlan_group.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.br_vlan_group.exit_crit_edge, label %if.then.i

land.lhs.true2.i.br_vlan_group.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_vlan_group.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @br_vlan_group.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 1471, ptr noundef nonnull @.str.10) #17
  br label %br_vlan_group.exit

br_vlan_group.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.br_vlan_group.exit_crit_edge, %land.lhs.true.i.br_vlan_group.exit_crit_edge, %if.end29.br_vlan_group.exit_crit_edge
  %vlgrp.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 7
  %0 = ptrtoint ptr %vlgrp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vlgrp.i, align 4
  %pvid.i = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %1, i32 0, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !182
  %2 = ptrtoint ptr %pvid.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %pvid.i, align 2
  %vlan_list.i = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %vlan_list.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vlan_list.i, align 4
  %cmp.not45.i = icmp eq ptr %4, %vlan_list.i
  br i1 %cmp.not45.i, label %br_vlan_group.exit.__vlan_flush.exit_crit_edge, label %br_vlan_group.exit.for.body.i_crit_edge

br_vlan_group.exit.for.body.i_crit_edge:          ; preds = %br_vlan_group.exit
  br label %for.body.i

br_vlan_group.exit.__vlan_flush.exit_crit_edge:   ; preds = %br_vlan_group.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %__vlan_flush.exit

for.body.i:                                       ; preds = %if.end14.i.for.body.i_crit_edge, %br_vlan_group.exit.for.body.i_crit_edge
  %.pn.in48.i = phi ptr [ %.pn51.i, %if.end14.i.for.body.i_crit_edge ], [ %4, %br_vlan_group.exit.for.body.i_crit_edge ]
  %v_start.047.i = phi i16 [ %v_start.1.i, %if.end14.i.for.body.i_crit_edge ], [ 0, %br_vlan_group.exit.for.body.i_crit_edge ]
  %v_end.046.i = phi i16 [ %11, %if.end14.i.for.body.i_crit_edge ], [ 0, %br_vlan_group.exit.for.body.i_crit_edge ]
  %vlan.050.i = getelementptr i8, ptr %.pn.in48.i, i32 -556
  %5 = ptrtoint ptr %.pn.in48.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn51.i = load ptr, ptr %.pn.in48.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %v_start.047.i)
  %tobool.not.i56 = icmp eq i16 %v_start.047.i, 0
  %vid.i = getelementptr i8, ptr %.pn.in48.i, i32 -548
  %6 = ptrtoint ptr %vid.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vid.i, align 8
  br i1 %tobool.not.i56, label %for.body.i.if.end14.i_crit_edge, label %if.else.i

for.body.i.if.end14.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end14.i

if.else.i:                                        ; preds = %for.body.i
  %conv.i = zext i16 %7 to i32
  %conv9.i = zext i16 %v_end.046.i to i32
  %sub.i = sub nsw i32 %conv.i, %conv9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i)
  %cmp10.not.i = icmp eq i32 %sub.i, 1
  br i1 %cmp10.not.i, label %if.else.i.if.end14.i_crit_edge, label %if.then12.i

if.else.i.if.end14.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end14.i

if.then12.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @br_vlan_notify(ptr noundef %br, ptr noundef null, i16 noundef zeroext %v_start.047.i, i16 noundef zeroext %v_end.046.i, i32 noundef 113) #17
  %8 = ptrtoint ptr %vid.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %vid.i, align 8
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then12.i, %if.else.i.if.end14.i_crit_edge, %for.body.i.if.end14.i_crit_edge
  %v_start.1.i = phi i16 [ %9, %if.then12.i ], [ %v_start.047.i, %if.else.i.if.end14.i_crit_edge ], [ %7, %for.body.i.if.end14.i_crit_edge ]
  %10 = ptrtoint ptr %vid.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %vid.i, align 8
  %call16.i = tail call fastcc i32 @__vlan_del(ptr noundef %vlan.050.i) #17
  %cmp.not.i = icmp eq ptr %.pn51.i, %vlan_list.i
  br i1 %cmp.not.i, label %for.end.i, label %if.end14.i.for.body.i_crit_edge

if.end14.i.for.body.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.end.i:                                        ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %v_start.1.i)
  %tobool22.not.i = icmp eq i16 %v_start.1.i, 0
  br i1 %tobool22.not.i, label %for.end.i.__vlan_flush.exit_crit_edge, label %if.then23.i

for.end.i.__vlan_flush.exit_crit_edge:            ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__vlan_flush.exit

if.then23.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @br_vlan_notify(ptr noundef %br, ptr noundef null, i16 noundef zeroext %v_start.1.i, i16 noundef zeroext %11, i32 noundef 113) #17
  br label %__vlan_flush.exit

__vlan_flush.exit:                                ; preds = %if.then23.i, %for.end.i.__vlan_flush.exit_crit_edge, %br_vlan_group.exit.__vlan_flush.exit_crit_edge
  %12 = ptrtoint ptr %vlgrp.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr null, ptr %vlgrp.i, align 4
  tail call void @synchronize_rcu() #17
  %13 = ptrtoint ptr %vlan_list.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %vlan_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %14, %vlan_list.i
  br i1 %cmp.i.not.i, label %__vlan_flush.exit.__vlan_group_free.exit_crit_edge, label %do.end.i, !prof !170

__vlan_flush.exit.__vlan_group_free.exit_crit_edge: ; preds = %__vlan_flush.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %__vlan_group_free.exit

do.end.i:                                         ; preds = %__vlan_flush.exit
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 395, i32 noundef 9, ptr noundef null) #17
  br label %__vlan_group_free.exit

__vlan_group_free.exit:                           ; preds = %do.end.i, %__vlan_flush.exit.__vlan_group_free.exit_crit_edge
  tail call void @rhashtable_destroy(ptr noundef %1) #17
  tail call void @vlan_tunnel_deinit(ptr noundef %1) #17
  tail call void @kfree(ptr noundef %1) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @br_vlan_lookup(ptr noundef %tbl, i16 noundef zeroext %vid) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !155) #17
  %and.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !178
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #17
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 696, ptr noundef nonnull @.str.19) #17
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %4 = ptrtoint ptr %tbl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %tbl, align 4
  %call.i.i.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %tbl) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %lor.lhs.false.i.i.i, label %rcu_read_lock.exit.i.do.end12.i.i.i_crit_edge

rcu_read_lock.exit.i.do.end12.i.i.i_crit_edge:    ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end12.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %rcu_read_lock.exit.i
  %call5.i.i.i = tail call i32 @rcu_read_lock_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i.i)
  %tobool6.not.i.i.i = icmp eq i32 %call5.i.i.i, 0
  br i1 %tobool6.not.i.i.i, label %land.lhs.true.i.i.i, label %lor.lhs.false.i.i.i.do.end12.i.i.i_crit_edge

lor.lhs.false.i.i.i.do.end12.i.i.i_crit_edge:     ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end12.i.i.i

land.lhs.true.i.i.i:                              ; preds = %lor.lhs.false.i.i.i
  %call7.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i.i)
  %tobool8.not.i.i.i = icmp eq i32 %call7.i.i.i, 0
  br i1 %tobool8.not.i.i.i, label %land.lhs.true.i.i.i.do.end12.i.i.i_crit_edge, label %land.lhs.true9.i.i.i

land.lhs.true.i.i.i.do.end12.i.i.i_crit_edge:     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end12.i.i.i

land.lhs.true9.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b92.i.i.i = load i1, ptr @__rhashtable_lookup.__warned, align 1
  br i1 %.b92.i.i.i, label %land.lhs.true9.i.i.i.do.end12.i.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true9.i.i.i.do.end12.i.i.i_crit_edge:    ; preds = %land.lhs.true9.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end12.i.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true9.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @__rhashtable_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 594, ptr noundef nonnull @.str.9) #17
  br label %do.end12.i.i.i

do.end12.i.i.i:                                   ; preds = %if.then.i.i.i, %land.lhs.true9.i.i.i.do.end12.i.i.i_crit_edge, %land.lhs.true.i.i.i.do.end12.i.i.i_crit_edge, %lor.lhs.false.i.i.i.do.end12.i.i.i_crit_edge, %rcu_read_lock.exit.i.do.end12.i.i.i_crit_edge
  %head_offset.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %tbl, i32 0, i32 3, i32 3
  %rev = call i16 @llvm.bswap.i16(i16 %vid)
  %add80.i = zext i16 %rev to i32
  br label %restart.i.i.i

restart.i.i.i:                                    ; preds = %do.end60.i.i.i.restart.i.i.i_crit_edge, %do.end12.i.i.i
  %tbl.0.i.i.i = phi ptr [ %5, %do.end12.i.i.i ], [ %26, %do.end60.i.i.i.restart.i.i.i_crit_edge ]
  %hash_rnd.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %hash_rnd.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hash_rnd.i.i.i.i, align 8
  %add1.i = add i32 %7, -559038735
  %add84.i = add i32 %add1.i, %add80.i
  %or.i206.i = tail call i32 @llvm.fshl.i32(i32 %add1.i, i32 %add1.i, i32 14) #17
  %sub87.i = sub i32 0, %or.i206.i
  %xor88.i = xor i32 %add84.i, %sub87.i
  %or.i207.i = tail call i32 @llvm.fshl.i32(i32 %sub87.i, i32 %sub87.i, i32 11) #17
  %sub90.i = sub i32 %xor88.i, %or.i207.i
  %xor91.i = xor i32 %sub90.i, %add1.i
  %or.i208.i = tail call i32 @llvm.fshl.i32(i32 %sub90.i, i32 %sub90.i, i32 25) #17
  %sub93.i = sub i32 %xor91.i, %or.i208.i
  %xor94.i = xor i32 %sub93.i, %sub87.i
  %or.i209.i = tail call i32 @llvm.fshl.i32(i32 %sub93.i, i32 %sub93.i, i32 16) #17
  %sub96.i = sub i32 %xor94.i, %or.i209.i
  %xor97.i = xor i32 %sub96.i, %sub90.i
  %or.i210.i = tail call i32 @llvm.fshl.i32(i32 %sub96.i, i32 %sub96.i, i32 4) #17
  %sub99.i = sub i32 %xor97.i, %or.i210.i
  %xor100.i = xor i32 %sub99.i, %sub93.i
  %or.i211.i = tail call i32 @llvm.fshl.i32(i32 %sub99.i, i32 %sub99.i, i32 14) #17
  %sub102.i = sub i32 %xor100.i, %or.i211.i
  %xor103.i = xor i32 %sub102.i, %sub96.i
  %or.i212.i = tail call i32 @llvm.fshl.i32(i32 %sub102.i, i32 %sub102.i, i32 24) #17
  %sub105.i = sub i32 %xor103.i, %or.i212.i
  %8 = ptrtoint ptr %tbl.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tbl.0.i.i.i, align 128
  %sub.i.i.i.i.i = add i32 %9, -1
  %and.i3.i.i.i.i = and i32 %sub105.i, %sub.i.i.i.i.i
  %nest.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %nest.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nest.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i.i.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i.i.i.i, label %cond.false.i.i.i.i, label %cond.true.i.i.i.i, !prof !170

cond.true.i.i.i.i:                                ; preds = %restart.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %call.i.i.i.i = tail call ptr @rht_bucket_nested(ptr noundef %tbl.0.i.i.i, i32 noundef %and.i3.i.i.i.i) #17
  br label %rht_bucket.exit.i.i.i

cond.false.i.i.i.i:                               ; preds = %restart.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx.i.i.i.i = getelementptr %struct.bucket_table, ptr %tbl.0.i.i.i, i32 0, i32 8, i32 %and.i3.i.i.i.i
  br label %rht_bucket.exit.i.i.i

rht_bucket.exit.i.i.i:                            ; preds = %cond.false.i.i.i.i, %cond.true.i.i.i.i
  %cond.i.i.i.i = phi ptr [ %call.i.i.i.i, %cond.true.i.i.i.i ], [ %arrayidx.i.i.i.i, %cond.false.i.i.i.i ]
  %12 = ptrtoint ptr %cond.i.i.i.i to i32
  %or.i.i.i.i.i = or i32 %12, 1
  %13 = inttoptr i32 %or.i.i.i.i.i to ptr
  br label %do.body16.i.i.i

do.body16.i.i.i:                                  ; preds = %do.cond34.i.i.i.do.body16.i.i.i_crit_edge, %rht_bucket.exit.i.i.i
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !183
  %14 = ptrtoint ptr %cond.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %cond.i.i.i.i, align 4
  %call.i93.i.i.i = tail call i32 @rcu_read_lock_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93.i.i.i)
  %tobool.not.i94.i.i.i = icmp eq i32 %call.i93.i.i.i, 0
  br i1 %tobool.not.i94.i.i.i, label %land.lhs.true.i.i.i.i, label %do.body16.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge

do.body16.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge: ; preds = %do.body16.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rht_ptr_rcu.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %do.body16.i.i.i
  %call2.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i.i)
  %tobool3.not.i.i.i.i = icmp eq i32 %call2.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i.i, label %land.lhs.true.i.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge, label %land.lhs.true4.i.i.i.i

land.lhs.true.i.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rht_ptr_rcu.exit.i.i.i

land.lhs.true4.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b11.i.i.i.i = load i1, ptr @rht_ptr_rcu.__warned, align 1
  br i1 %.b11.i.i.i.i, label %land.lhs.true4.i.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true4.i.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge: ; preds = %land.lhs.true4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rht_ptr_rcu.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rht_ptr_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 369, ptr noundef nonnull @.str.9) #17
  br label %rht_ptr_rcu.exit.i.i.i

rht_ptr_rcu.exit.i.i.i:                           ; preds = %if.then.i.i.i.i, %land.lhs.true4.i.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge, %do.body16.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge
  %16 = ptrtoint ptr %15 to i32
  %and.i.i95.i.i.i = and i32 %16, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i95.i.i.i)
  %tobool.not.i.i96.i.i.i = icmp eq i32 %and.i.i95.i.i.i, 0
  %cond.i.i.i.i.i = select i1 %tobool.not.i.i96.i.i.i, i32 %or.i.i.i.i.i, i32 %and.i.i95.i.i.i
  %17 = inttoptr i32 %cond.i.i.i.i.i to ptr
  %and.i106.i.i.i = and i32 %cond.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i106.i.i.i)
  %tobool.i.not107.i.i.i = icmp eq i32 %and.i106.i.i.i, 0
  br i1 %tobool.i.not107.i.i.i, label %for.body.i.i.i.preheader, label %rht_ptr_rcu.exit.i.i.i.do.cond34.i.i.i_crit_edge

rht_ptr_rcu.exit.i.i.i.do.cond34.i.i.i_crit_edge: ; preds = %rht_ptr_rcu.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.cond34.i.i.i

for.body.i.i.i.preheader:                         ; preds = %rht_ptr_rcu.exit.i.i.i
  %18 = ptrtoint ptr %head_offset.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %head_offset.i.i.i.i, align 2
  %conv.i98.i.i.i = zext i16 %19 to i32
  %idx.neg.i99.i.i.i = sub nsw i32 0, %conv.i98.i.i.i
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.i.i.i.preheader
  %he.0108.i.i.i = phi ptr [ %23, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %17, %for.body.i.i.i.preheader ]
  %add.ptr.i100.i.i.i = getelementptr i8, ptr %he.0108.i.i.i, i32 %idx.neg.i99.i.i.i
  %vid1.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %add.ptr.i100.i.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %vid1.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %vid1.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %21, i16 %vid)
  %cmp.i.not = icmp eq i16 %21, %vid
  br i1 %cmp.i.not, label %__rhashtable_lookup.exit.i.i, label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %22 = ptrtoint ptr %he.0108.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %he.0108.i.i.i, align 4
  %24 = ptrtoint ptr %23 to i32
  %and.i.i.i.i = and i32 %24, 1
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %for.inc.i.i.i.for.body.i.i.i_crit_edge, label %for.inc.i.i.i.do.cond34.i.i.i_crit_edge

for.inc.i.i.i.do.cond34.i.i.i_crit_edge:          ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.cond34.i.i.i

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.i.i

do.cond34.i.i.i:                                  ; preds = %for.inc.i.i.i.do.cond34.i.i.i_crit_edge, %rht_ptr_rcu.exit.i.i.i.do.cond34.i.i.i_crit_edge
  %he.0.lcssa.i.i.i = phi ptr [ %17, %rht_ptr_rcu.exit.i.i.i.do.cond34.i.i.i_crit_edge ], [ %23, %for.inc.i.i.i.do.cond34.i.i.i_crit_edge ]
  %cmp.not.i.i.i = icmp eq ptr %he.0.lcssa.i.i.i, %13
  br i1 %cmp.not.i.i.i, label %do.end39.i.i.i, label %do.cond34.i.i.i.do.body16.i.i.i_crit_edge

do.cond34.i.i.i.do.body16.i.i.i_crit_edge:        ; preds = %do.cond34.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body16.i.i.i

do.end39.i.i.i:                                   ; preds = %do.cond34.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !184
  %future_tbl.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i.i, i32 0, i32 5
  %25 = ptrtoint ptr %future_tbl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %future_tbl.i.i.i, align 4
  %call47.i.i.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %tbl) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i.i.i)
  %tobool48.not.i.i.i = icmp eq i32 %call47.i.i.i, 0
  br i1 %tobool48.not.i.i.i, label %lor.lhs.false49.i.i.i, label %do.end39.i.i.i.do.end60.i.i.i_crit_edge

do.end39.i.i.i.do.end60.i.i.i_crit_edge:          ; preds = %do.end39.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end60.i.i.i

lor.lhs.false49.i.i.i:                            ; preds = %do.end39.i.i.i
  %call50.i.i.i = tail call i32 @rcu_read_lock_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i.i.i)
  %tobool51.not.i.i.i = icmp eq i32 %call50.i.i.i, 0
  br i1 %tobool51.not.i.i.i, label %land.lhs.true52.i.i.i, label %lor.lhs.false49.i.i.i.do.end60.i.i.i_crit_edge

lor.lhs.false49.i.i.i.do.end60.i.i.i_crit_edge:   ; preds = %lor.lhs.false49.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end60.i.i.i

land.lhs.true52.i.i.i:                            ; preds = %lor.lhs.false49.i.i.i
  %call53.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i.i.i)
  %tobool54.not.i.i.i = icmp eq i32 %call53.i.i.i, 0
  br i1 %tobool54.not.i.i.i, label %land.lhs.true52.i.i.i.do.end60.i.i.i_crit_edge, label %land.lhs.true55.i.i.i

land.lhs.true52.i.i.i.do.end60.i.i.i_crit_edge:   ; preds = %land.lhs.true52.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end60.i.i.i

land.lhs.true55.i.i.i:                            ; preds = %land.lhs.true52.i.i.i
  %.b9091.i.i.i = load i1, ptr @__rhashtable_lookup.__warned.26, align 1
  br i1 %.b9091.i.i.i, label %land.lhs.true55.i.i.i.do.end60.i.i.i_crit_edge, label %if.then57.i.i.i

land.lhs.true55.i.i.i.do.end60.i.i.i_crit_edge:   ; preds = %land.lhs.true55.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end60.i.i.i

if.then57.i.i.i:                                  ; preds = %land.lhs.true55.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @__rhashtable_lookup.__warned.26, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 614, ptr noundef nonnull @.str.9) #17
  br label %do.end60.i.i.i

do.end60.i.i.i:                                   ; preds = %if.then57.i.i.i, %land.lhs.true55.i.i.i.do.end60.i.i.i_crit_edge, %land.lhs.true52.i.i.i.do.end60.i.i.i_crit_edge, %lor.lhs.false49.i.i.i.do.end60.i.i.i_crit_edge, %do.end39.i.i.i.do.end60.i.i.i_crit_edge
  %tobool62.not.i.i.i = icmp eq ptr %26, null
  br i1 %tobool62.not.i.i.i, label %do.end60.i.i.i.rhashtable_lookup.exit.i_crit_edge, label %do.end60.i.i.i.restart.i.i.i_crit_edge, !prof !170

do.end60.i.i.i.restart.i.i.i_crit_edge:           ; preds = %do.end60.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %restart.i.i.i

do.end60.i.i.i.rhashtable_lookup.exit.i_crit_edge: ; preds = %do.end60.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rhashtable_lookup.exit.i

__rhashtable_lookup.exit.i.i:                     ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %tobool.not.i1.i = icmp eq ptr %he.0108.i.i.i, null
  %spec.select = select i1 %tobool.not.i1.i, ptr null, ptr %add.ptr.i100.i.i.i
  br label %rhashtable_lookup.exit.i

rhashtable_lookup.exit.i:                         ; preds = %__rhashtable_lookup.exit.i.i, %do.end60.i.i.i.rhashtable_lookup.exit.i_crit_edge
  %cond.i.i = phi ptr [ %spec.select, %__rhashtable_lookup.exit.i.i ], [ null, %do.end60.i.i.i.rhashtable_lookup.exit.i_crit_edge ]
  %call.i2.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i2.i, label %rhashtable_lookup.exit.i.rhashtable_lookup_fast.exit_crit_edge, label %land.lhs.true.i5.i

rhashtable_lookup.exit.i.rhashtable_lookup_fast.exit_crit_edge: ; preds = %rhashtable_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rhashtable_lookup_fast.exit

land.lhs.true.i5.i:                               ; preds = %rhashtable_lookup.exit.i
  %call1.i3.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3.i)
  %tobool.not.i4.i = icmp eq i32 %call1.i3.i, 0
  br i1 %tobool.not.i4.i, label %land.lhs.true.i5.i.rhashtable_lookup_fast.exit_crit_edge, label %land.lhs.true2.i7.i

land.lhs.true.i5.i.rhashtable_lookup_fast.exit_crit_edge: ; preds = %land.lhs.true.i5.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rhashtable_lookup_fast.exit

land.lhs.true2.i7.i:                              ; preds = %land.lhs.true.i5.i
  %.b4.i6.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6.i, label %land.lhs.true2.i7.i.rhashtable_lookup_fast.exit_crit_edge, label %if.then.i8.i

land.lhs.true2.i7.i.rhashtable_lookup_fast.exit_crit_edge: ; preds = %land.lhs.true2.i7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rhashtable_lookup_fast.exit

if.then.i8.i:                                     ; preds = %land.lhs.true2.i7.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 724, ptr noundef nonnull @.str.20) #17
  br label %rhashtable_lookup_fast.exit

rhashtable_lookup_fast.exit:                      ; preds = %if.then.i8.i, %land.lhs.true2.i7.i.rhashtable_lookup_fast.exit_crit_edge, %land.lhs.true.i5.i.rhashtable_lookup_fast.exit_crit_edge, %rhashtable_lookup.exit.i.rhashtable_lookup_fast.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !179
  %27 = tail call i32 @llvm.read_register.i32(metadata !155) #17
  %and.i.i.i.i.i9.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i.i.i9.i to ptr
  %preempt_count.i.i.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i.i.i10.i, align 4
  %sub.i.i.i.i = add i32 %30, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i10.i, align 4
  tail call void @rcu_read_unlock_strict() #17
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  ret ptr %cond.i.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @br_recalculate_fwd_mask(ptr noundef %br) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %options.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 4
  %0 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %options.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %lor.lhs.false

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

lor.lhs.false:                                    ; preds = %entry
  %vlan_proto = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 5
  %2 = ptrtoint ptr %vlan_proto to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vlan_proto, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %3)
  %cmp = icmp eq i16 %3, -32512
  br i1 %cmp, label %lor.lhs.false.if.end_crit_edge, label %if.else

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx = getelementptr %struct.net_bridge, ptr %br, i32 0, i32 27, i32 5
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv2 = zext i8 %5 to i32
  %shl = shl nuw i32 1, %conv2
  %6 = trunc i32 %shl to i16
  %7 = and i16 %6, -18431
  %conv3 = xor i16 %7, -18431
  br label %if.end

if.end:                                           ; preds = %if.else, %lor.lhs.false.if.end_crit_edge, %entry.if.end_crit_edge
  %conv3.sink = phi i16 [ %conv3, %if.else ], [ 0, %lor.lhs.false.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  %group_fwd_mask_required4 = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 12
  %8 = ptrtoint ptr %group_fwd_mask_required4 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv3.sink, ptr %group_fwd_mask_required4, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_vlan_filter_toggle(ptr noundef %br, i32 noundef %val, ptr noundef %extack) local_unnamed_addr #0 align 64 {
entry:
  %attr = alloca %struct.switchdev_attr, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %attr) #17
  %0 = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 1
  %1 = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 2
  %2 = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 3
  %3 = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 4
  %4 = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 5
  %dev = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 3
  %5 = getelementptr inbounds i8, ptr %attr, i32 20
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 -1, ptr %5, align 4
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %9 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %attr, align 4
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 6, ptr %0, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %1, align 4
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %2, align 4
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool = icmp ne i32 %val, 0
  %frombool = zext i1 %tobool to i8
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %frombool, ptr %4, align 4
  %options.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 4
  %15 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %options.i, align 4
  %lnot = xor i1 %tobool, true
  %17 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %18 = icmp eq i32 %17, 0
  %cmp = xor i1 %tobool, %18
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @br_opt_toggle(ptr noundef %br, i32 noundef 0, i1 noundef zeroext %tobool) #17
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  %call9 = call i32 @switchdev_port_attr_set(ptr noundef %20, ptr noundef nonnull %attr, ptr noundef %extack) #17
  %21 = zext i32 %call9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %call9, label %if.then12 [
    i32 0, label %if.end.if.end16_crit_edge
    i32 -95, label %if.end.if.end16_crit_edge51
  ]

if.end.if.end16_crit_edge51:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end16

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end16

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  call void @br_opt_toggle(ptr noundef %br, i32 noundef 0, i1 noundef zeroext %lnot) #17
  br label %cleanup

if.end16:                                         ; preds = %if.end.if.end16_crit_edge, %if.end.if.end16_crit_edge51
  call void @br_manage_promisc(ptr noundef %br) #17
  %22 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %options.i, align 4
  %24 = and i32 %23, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end16.recalculate_group_addr.exit_crit_edge

if.end16.recalculate_group_addr.exit_crit_edge:   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #19
  br label %recalculate_group_addr.exit

if.end.i:                                         ; preds = %if.end16
  call void @_raw_spin_lock_bh(ptr noundef %br) #17
  %25 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %options.i, align 4
  %and1.i.i16.i = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i16.i)
  %tobool2.not.i = icmp eq i32 %and1.i.i16.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end7.i_crit_edge, label %lor.lhs.false.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end7.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %vlan_proto.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 5
  %27 = ptrtoint ptr %vlan_proto.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %vlan_proto.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %28)
  %cmp.i = icmp eq i16 %28, -32512
  %spec.select.i = select i1 %cmp.i, i8 0, i8 8
  br label %if.end7.i

if.end7.i:                                        ; preds = %lor.lhs.false.i, %if.end.i.if.end7.i_crit_edge
  %.sink.i = phi i8 [ 0, %if.end.i.if.end7.i_crit_edge ], [ %spec.select.i, %lor.lhs.false.i ]
  %arrayidx6.i = getelementptr %struct.net_bridge, ptr %br, i32 0, i32 27, i32 5
  %29 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %.sink.i, ptr %arrayidx6.i, align 1
  call void @_raw_spin_unlock_bh(ptr noundef %br) #17
  br label %recalculate_group_addr.exit

recalculate_group_addr.exit:                      ; preds = %if.end7.i, %if.end16.recalculate_group_addr.exit_crit_edge
  %30 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %options.i, align 4
  %and1.i.i.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i44 = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i44, label %recalculate_group_addr.exit.br_recalculate_fwd_mask.exit_crit_edge, label %lor.lhs.false.i47

recalculate_group_addr.exit.br_recalculate_fwd_mask.exit_crit_edge: ; preds = %recalculate_group_addr.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_recalculate_fwd_mask.exit

lor.lhs.false.i47:                                ; preds = %recalculate_group_addr.exit
  %vlan_proto.i45 = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 5
  %32 = ptrtoint ptr %vlan_proto.i45 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %vlan_proto.i45, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %33)
  %cmp.i46 = icmp eq i16 %33, -32512
  br i1 %cmp.i46, label %lor.lhs.false.i47.br_recalculate_fwd_mask.exit_crit_edge, label %if.else.i

lor.lhs.false.i47.br_recalculate_fwd_mask.exit_crit_edge: ; preds = %lor.lhs.false.i47
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_recalculate_fwd_mask.exit

if.else.i:                                        ; preds = %lor.lhs.false.i47
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx.i = getelementptr %struct.net_bridge, ptr %br, i32 0, i32 27, i32 5
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.i, align 1
  %conv2.i = zext i8 %35 to i32
  %shl.i = shl nuw i32 1, %conv2.i
  %36 = trunc i32 %shl.i to i16
  %37 = and i16 %36, -18431
  %conv3.i = xor i16 %37, -18431
  br label %br_recalculate_fwd_mask.exit

br_recalculate_fwd_mask.exit:                     ; preds = %if.else.i, %lor.lhs.false.i47.br_recalculate_fwd_mask.exit_crit_edge, %recalculate_group_addr.exit.br_recalculate_fwd_mask.exit_crit_edge
  %conv3.sink.i = phi i16 [ %conv3.i, %if.else.i ], [ 0, %lor.lhs.false.i47.br_recalculate_fwd_mask.exit_crit_edge ], [ 0, %recalculate_group_addr.exit.br_recalculate_fwd_mask.exit_crit_edge ]
  %group_fwd_mask_required4.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 12
  %38 = ptrtoint ptr %group_fwd_mask_required4.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv3.sink.i, ptr %group_fwd_mask_required4.i, align 2
  br i1 %tobool, label %br_recalculate_fwd_mask.exit.cleanup_crit_edge, label %land.lhs.true18

br_recalculate_fwd_mask.exit.cleanup_crit_edge:   ; preds = %br_recalculate_fwd_mask.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

land.lhs.true18:                                  ; preds = %br_recalculate_fwd_mask.exit
  %39 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %options.i, align 4
  %41 = and i32 %40, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool20.not = icmp eq i32 %41, 0
  br i1 %tobool20.not, label %land.lhs.true18.cleanup_crit_edge, label %do.end

land.lhs.true18.cleanup_crit_edge:                ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.end:                                           ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #19
  %42 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev, align 4
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %43) #20
  %call24 = call i32 @br_multicast_toggle_vlan_snooping(ptr noundef %br, i1 noundef zeroext false, ptr noundef null) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end, %land.lhs.true18.cleanup_crit_edge, %br_recalculate_fwd_mask.exit.cleanup_crit_edge, %if.then12, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.then12 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %land.lhs.true18.cleanup_crit_edge ], [ 0, %br_recalculate_fwd_mask.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %attr) #17
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_opt_toggle(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @switchdev_port_attr_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_manage_promisc(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_multicast_toggle_vlan_snooping(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @br_vlan_enabled(ptr noundef %dev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %options.i = getelementptr i8, ptr %dev, i32 2400
  %0 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %options.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool = icmp ne i32 %and1.i.i, 0
  ret i1 %tobool
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @br_vlan_get_proto(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %p_proto) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %vlan_proto = getelementptr i8, ptr %dev, i32 2404
  %0 = ptrtoint ptr %vlan_proto to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vlan_proto, align 4
  %2 = ptrtoint ptr %p_proto to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %1, ptr %p_proto, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__br_vlan_set_proto(ptr noundef %br, i16 noundef zeroext %proto, ptr noundef %extack) local_unnamed_addr #0 align 64 {
entry:
  %attr = alloca %struct.switchdev_attr, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %attr) #17
  %0 = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 1
  %1 = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 2
  %2 = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 3
  %3 = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 4
  %4 = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 5
  %dev = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 3
  %5 = getelementptr inbounds i8, ptr %attr, i32 20
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 -1, ptr %5, align 4
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %9 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %attr, align 4
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 7, ptr %0, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %1, align 4
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %2, align 4
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %3, align 4
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %proto, ptr %4, align 4
  %vlan_proto = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 5
  %15 = ptrtoint ptr %vlan_proto to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %vlan_proto, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %16, i16 %proto)
  %cmp = icmp eq i16 %16, %proto
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @switchdev_port_attr_set(ptr noundef %8, ptr noundef nonnull %attr, ptr noundef %extack) #17
  %17 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %call, label %if.end.cleanup_crit_edge [
    i32 0, label %if.end.if.end8_crit_edge
    i32 -95, label %if.end.if.end8_crit_edge281
  ]

if.end.if.end8_crit_edge281:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end8

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end8:                                          ; preds = %if.end.if.end8_crit_edge, %if.end.if.end8_crit_edge281
  %port_list = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 9
  %18 = ptrtoint ptr %port_list to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn238 = load ptr, ptr %port_list, align 4
  %cmp10.not239 = icmp eq ptr %.pn238, %port_list
  br i1 %cmp10.not239, label %if.end8.for.end39_crit_edge, label %if.end8.for.body_crit_edge

if.end8.for.body_crit_edge:                       ; preds = %if.end8
  br label %for.body

if.end8.for.end39_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end39

for.cond.loopexit:                                ; preds = %for.cond17
  %19 = ptrtoint ptr %.pn240 to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn = load ptr, ptr %.pn240, align 4
  %cmp10.not = icmp eq ptr %.pn, %port_list
  br i1 %cmp10.not, label %for.cond.loopexit.for.end39_crit_edge, label %for.cond.loopexit.for.body_crit_edge

for.cond.loopexit.for.body_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.cond.loopexit.for.end39_crit_edge:            ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end39

for.body:                                         ; preds = %for.cond.loopexit.for.body_crit_edge, %if.end8.for.body_crit_edge
  %.pn240 = phi ptr [ %.pn, %for.cond.loopexit.for.body_crit_edge ], [ %.pn238, %if.end8.for.body_crit_edge ]
  %call.i = call zeroext i1 @lockdep_rtnl_is_held() #17
  br i1 %call.i, label %for.body.nbp_vlan_group.exit_crit_edge, label %land.lhs.true.i

for.body.nbp_vlan_group.exit_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %nbp_vlan_group.exit

land.lhs.true.i:                                  ; preds = %for.body
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.nbp_vlan_group.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.nbp_vlan_group.exit_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %nbp_vlan_group.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @nbp_vlan_group.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.nbp_vlan_group.exit_crit_edge, label %if.then.i

land.lhs.true2.i.nbp_vlan_group.exit_crit_edge:   ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %nbp_vlan_group.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @nbp_vlan_group.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 1477, ptr noundef nonnull @.str.10) #17
  br label %nbp_vlan_group.exit

nbp_vlan_group.exit:                              ; preds = %if.then.i, %land.lhs.true2.i.nbp_vlan_group.exit_crit_edge, %land.lhs.true.i.nbp_vlan_group.exit_crit_edge, %for.body.nbp_vlan_group.exit_crit_edge
  %vlgrp.i = getelementptr i8, ptr %.pn240, i32 12
  %20 = ptrtoint ptr %vlgrp.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vlgrp.i, align 8
  %vlan_list = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %21, i32 0, i32 2
  %dev23 = getelementptr i8, ptr %.pn240, i32 -8
  br label %for.cond17

for.cond17:                                       ; preds = %for.body22.for.cond17_crit_edge, %nbp_vlan_group.exit
  %.pn206.in = phi ptr [ %vlan_list, %nbp_vlan_group.exit ], [ %.pn206, %for.body22.for.cond17_crit_edge ]
  %22 = ptrtoint ptr %.pn206.in to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn206 = load ptr, ptr %.pn206.in, align 4
  %cmp19.not = icmp eq ptr %.pn206, %vlan_list
  br i1 %cmp19.not, label %for.cond.loopexit, label %for.body22

for.body22:                                       ; preds = %for.cond17
  %23 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev23, align 4
  %vid = getelementptr i8, ptr %.pn206, i32 -548
  %25 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %vid, align 8
  %call24 = call i32 @vlan_vid_add(ptr noundef %24, i16 noundef zeroext %proto, i16 noundef zeroext %26) #17
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %for.body22.for.cond17_crit_edge, label %err_filt

for.body22.for.cond17_crit_edge:                  ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond17

for.end39:                                        ; preds = %for.cond.loopexit.for.end39_crit_edge, %if.end8.for.end39_crit_edge
  %27 = ptrtoint ptr %vlan_proto to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %proto, ptr %vlan_proto, align 4
  %options.i.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 4
  %28 = ptrtoint ptr %options.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %options.i.i, align 4
  %30 = and i32 %29, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i210 = icmp eq i32 %30, 0
  br i1 %tobool.not.i210, label %if.end.i, label %for.end39.recalculate_group_addr.exit_crit_edge

for.end39.recalculate_group_addr.exit_crit_edge:  ; preds = %for.end39
  call void @__sanitizer_cov_trace_pc() #19
  br label %recalculate_group_addr.exit

if.end.i:                                         ; preds = %for.end39
  call void @_raw_spin_lock_bh(ptr noundef %br) #17
  %31 = ptrtoint ptr %options.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %options.i.i, align 4
  %and1.i.i16.i = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i16.i)
  %tobool2.not.i = icmp eq i32 %and1.i.i16.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end7.i_crit_edge, label %lor.lhs.false.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end7.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %33 = ptrtoint ptr %vlan_proto to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %vlan_proto, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %34)
  %cmp.i = icmp eq i16 %34, -32512
  %spec.select.i = select i1 %cmp.i, i8 0, i8 8
  br label %if.end7.i

if.end7.i:                                        ; preds = %lor.lhs.false.i, %if.end.i.if.end7.i_crit_edge
  %.sink.i = phi i8 [ 0, %if.end.i.if.end7.i_crit_edge ], [ %spec.select.i, %lor.lhs.false.i ]
  %arrayidx6.i = getelementptr %struct.net_bridge, ptr %br, i32 0, i32 27, i32 5
  %35 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %.sink.i, ptr %arrayidx6.i, align 1
  call void @_raw_spin_unlock_bh(ptr noundef %br) #17
  br label %recalculate_group_addr.exit

recalculate_group_addr.exit:                      ; preds = %if.end7.i, %for.end39.recalculate_group_addr.exit_crit_edge
  %36 = ptrtoint ptr %options.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %options.i.i, align 4
  %and1.i.i.i = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i212 = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i212, label %recalculate_group_addr.exit.br_recalculate_fwd_mask.exit_crit_edge, label %lor.lhs.false.i215

recalculate_group_addr.exit.br_recalculate_fwd_mask.exit_crit_edge: ; preds = %recalculate_group_addr.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_recalculate_fwd_mask.exit

lor.lhs.false.i215:                               ; preds = %recalculate_group_addr.exit
  %38 = ptrtoint ptr %vlan_proto to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %vlan_proto, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %39)
  %cmp.i214 = icmp eq i16 %39, -32512
  br i1 %cmp.i214, label %lor.lhs.false.i215.br_recalculate_fwd_mask.exit_crit_edge, label %if.else.i

lor.lhs.false.i215.br_recalculate_fwd_mask.exit_crit_edge: ; preds = %lor.lhs.false.i215
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_recalculate_fwd_mask.exit

if.else.i:                                        ; preds = %lor.lhs.false.i215
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx.i = getelementptr %struct.net_bridge, ptr %br, i32 0, i32 27, i32 5
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.i, align 1
  %conv2.i = zext i8 %41 to i32
  %shl.i = shl nuw i32 1, %conv2.i
  %42 = trunc i32 %shl.i to i16
  %43 = and i16 %42, -18431
  %conv3.i = xor i16 %43, -18431
  br label %br_recalculate_fwd_mask.exit

br_recalculate_fwd_mask.exit:                     ; preds = %if.else.i, %lor.lhs.false.i215.br_recalculate_fwd_mask.exit_crit_edge, %recalculate_group_addr.exit.br_recalculate_fwd_mask.exit_crit_edge
  %conv3.sink.i = phi i16 [ %conv3.i, %if.else.i ], [ 0, %lor.lhs.false.i215.br_recalculate_fwd_mask.exit_crit_edge ], [ 0, %recalculate_group_addr.exit.br_recalculate_fwd_mask.exit_crit_edge ]
  %group_fwd_mask_required4.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 12
  %44 = ptrtoint ptr %group_fwd_mask_required4.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv3.sink.i, ptr %group_fwd_mask_required4.i, align 2
  %45 = ptrtoint ptr %port_list to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pn204255 = load ptr, ptr %port_list, align 4
  %cmp49.not256 = icmp eq ptr %.pn204255, %port_list
  br i1 %cmp49.not256, label %br_recalculate_fwd_mask.exit.cleanup_crit_edge, label %br_recalculate_fwd_mask.exit.for.body52_crit_edge

br_recalculate_fwd_mask.exit.for.body52_crit_edge: ; preds = %br_recalculate_fwd_mask.exit
  br label %for.body52

br_recalculate_fwd_mask.exit.cleanup_crit_edge:   ; preds = %br_recalculate_fwd_mask.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.cond46.loopexit:                              ; preds = %for.body65.for.cond46.loopexit_crit_edge, %nbp_vlan_group.exit225.for.cond46.loopexit_crit_edge
  %46 = ptrtoint ptr %.pn204257 to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pn204 = load ptr, ptr %.pn204257, align 4
  %cmp49.not = icmp eq ptr %.pn204, %port_list
  br i1 %cmp49.not, label %for.cond46.loopexit.cleanup_crit_edge, label %for.cond46.loopexit.for.body52_crit_edge

for.cond46.loopexit.for.body52_crit_edge:         ; preds = %for.cond46.loopexit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body52

for.cond46.loopexit.cleanup_crit_edge:            ; preds = %for.cond46.loopexit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body52:                                       ; preds = %for.cond46.loopexit.for.body52_crit_edge, %br_recalculate_fwd_mask.exit.for.body52_crit_edge
  %.pn204257 = phi ptr [ %.pn204, %for.cond46.loopexit.for.body52_crit_edge ], [ %.pn204255, %br_recalculate_fwd_mask.exit.for.body52_crit_edge ]
  %call.i217 = call zeroext i1 @lockdep_rtnl_is_held() #17
  br i1 %call.i217, label %for.body52.nbp_vlan_group.exit225_crit_edge, label %land.lhs.true.i220

for.body52.nbp_vlan_group.exit225_crit_edge:      ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #19
  br label %nbp_vlan_group.exit225

land.lhs.true.i220:                               ; preds = %for.body52
  %call1.i218 = call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i218)
  %tobool.not.i219 = icmp eq i32 %call1.i218, 0
  br i1 %tobool.not.i219, label %land.lhs.true.i220.nbp_vlan_group.exit225_crit_edge, label %land.lhs.true2.i222

land.lhs.true.i220.nbp_vlan_group.exit225_crit_edge: ; preds = %land.lhs.true.i220
  call void @__sanitizer_cov_trace_pc() #19
  br label %nbp_vlan_group.exit225

land.lhs.true2.i222:                              ; preds = %land.lhs.true.i220
  %.b4.i221 = load i1, ptr @nbp_vlan_group.__warned, align 1
  br i1 %.b4.i221, label %land.lhs.true2.i222.nbp_vlan_group.exit225_crit_edge, label %if.then.i223

land.lhs.true2.i222.nbp_vlan_group.exit225_crit_edge: ; preds = %land.lhs.true2.i222
  call void @__sanitizer_cov_trace_pc() #19
  br label %nbp_vlan_group.exit225

if.then.i223:                                     ; preds = %land.lhs.true2.i222
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @nbp_vlan_group.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 1477, ptr noundef nonnull @.str.10) #17
  br label %nbp_vlan_group.exit225

nbp_vlan_group.exit225:                           ; preds = %if.then.i223, %land.lhs.true2.i222.nbp_vlan_group.exit225_crit_edge, %land.lhs.true.i220.nbp_vlan_group.exit225_crit_edge, %for.body52.nbp_vlan_group.exit225_crit_edge
  %vlgrp.i224 = getelementptr i8, ptr %.pn204257, i32 12
  %47 = ptrtoint ptr %vlgrp.i224 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %vlgrp.i224, align 8
  %vlan_list55 = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %vlan_list55 to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pn205252 = load ptr, ptr %vlan_list55, align 4
  %cmp62.not253 = icmp eq ptr %.pn205252, %vlan_list55
  br i1 %cmp62.not253, label %nbp_vlan_group.exit225.for.cond46.loopexit_crit_edge, label %for.body65.lr.ph

nbp_vlan_group.exit225.for.cond46.loopexit_crit_edge: ; preds = %nbp_vlan_group.exit225
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond46.loopexit

for.body65.lr.ph:                                 ; preds = %nbp_vlan_group.exit225
  %dev66 = getelementptr i8, ptr %.pn204257, i32 -8
  br label %for.body65

for.body65:                                       ; preds = %for.body65.for.body65_crit_edge, %for.body65.lr.ph
  %.pn205254 = phi ptr [ %.pn205252, %for.body65.lr.ph ], [ %.pn205, %for.body65.for.body65_crit_edge ]
  %50 = ptrtoint ptr %dev66 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev66, align 4
  %vid67 = getelementptr i8, ptr %.pn205254, i32 -548
  %52 = ptrtoint ptr %vid67 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %vid67, align 8
  call void @vlan_vid_del(ptr noundef %51, i16 noundef zeroext %16, i16 noundef zeroext %53) #17
  %54 = ptrtoint ptr %.pn205254 to i32
  call void @__asan_load4_noabort(i32 %54)
  %.pn205 = load ptr, ptr %.pn205254, align 4
  %cmp62.not = icmp eq ptr %.pn205, %vlan_list55
  br i1 %cmp62.not, label %for.body65.for.cond46.loopexit_crit_edge, label %for.body65.for.body65_crit_edge

for.body65.for.body65_crit_edge:                  ; preds = %for.body65
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body65

for.body65.for.cond46.loopexit_crit_edge:         ; preds = %for.body65
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond46.loopexit

err_filt:                                         ; preds = %for.body22
  %55 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %16, ptr %4, align 4
  %56 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev, align 4
  %call84 = call i32 @switchdev_port_attr_set(ptr noundef %57, ptr noundef nonnull %attr, ptr noundef null) #17
  %.pn207.in241 = getelementptr inbounds %struct.list_head, ptr %.pn206, i32 0, i32 1
  %58 = ptrtoint ptr %.pn207.in241 to i32
  call void @__asan_load4_noabort(i32 %58)
  %.pn207242 = load ptr, ptr %.pn207.in241, align 4
  %cmp92.not243 = icmp eq ptr %.pn207242, %vlan_list
  br i1 %cmp92.not243, label %err_filt.for.cond110.preheader_crit_edge, label %err_filt.for.body95_crit_edge

err_filt.for.body95_crit_edge:                    ; preds = %err_filt
  br label %for.body95

err_filt.for.cond110.preheader_crit_edge:         ; preds = %err_filt
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond110.preheader

for.cond110.preheader:                            ; preds = %for.body95.for.cond110.preheader_crit_edge, %err_filt.for.cond110.preheader_crit_edge
  %.pn208.in248 = getelementptr inbounds %struct.list_head, ptr %.pn240, i32 0, i32 1
  %59 = ptrtoint ptr %.pn208.in248 to i32
  call void @__asan_load4_noabort(i32 %59)
  %.pn208249 = load ptr, ptr %.pn208.in248, align 4
  %cmp113.not250 = icmp eq ptr %.pn208249, %port_list
  br i1 %cmp113.not250, label %for.cond110.preheader.cleanup_crit_edge, label %for.cond110.preheader.for.body116_crit_edge

for.cond110.preheader.for.body116_crit_edge:      ; preds = %for.cond110.preheader
  br label %for.body116

for.cond110.preheader.cleanup_crit_edge:          ; preds = %for.cond110.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body95:                                       ; preds = %for.body95.for.body95_crit_edge, %err_filt.for.body95_crit_edge
  %.pn207244 = phi ptr [ %.pn207, %for.body95.for.body95_crit_edge ], [ %.pn207242, %err_filt.for.body95_crit_edge ]
  %60 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev23, align 4
  %vid97 = getelementptr i8, ptr %.pn207244, i32 -548
  %62 = ptrtoint ptr %vid97 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %vid97, align 8
  call void @vlan_vid_del(ptr noundef %61, i16 noundef zeroext %proto, i16 noundef zeroext %63) #17
  %.pn207.in = getelementptr inbounds %struct.list_head, ptr %.pn207244, i32 0, i32 1
  %64 = ptrtoint ptr %.pn207.in to i32
  call void @__asan_load4_noabort(i32 %64)
  %.pn207 = load ptr, ptr %.pn207.in, align 4
  %cmp92.not = icmp eq ptr %.pn207, %vlan_list
  br i1 %cmp92.not, label %for.body95.for.cond110.preheader_crit_edge, label %for.body95.for.body95_crit_edge

for.body95.for.body95_crit_edge:                  ; preds = %for.body95
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body95

for.body95.for.cond110.preheader_crit_edge:       ; preds = %for.body95
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond110.preheader

for.cond110.loopexit:                             ; preds = %for.body129.for.cond110.loopexit_crit_edge, %nbp_vlan_group.exit234.for.cond110.loopexit_crit_edge
  %.pn208.in = getelementptr inbounds %struct.list_head, ptr %.pn208251, i32 0, i32 1
  %65 = ptrtoint ptr %.pn208.in to i32
  call void @__asan_load4_noabort(i32 %65)
  %.pn208 = load ptr, ptr %.pn208.in, align 4
  %cmp113.not = icmp eq ptr %.pn208, %port_list
  br i1 %cmp113.not, label %for.cond110.loopexit.cleanup_crit_edge, label %for.cond110.loopexit.for.body116_crit_edge

for.cond110.loopexit.for.body116_crit_edge:       ; preds = %for.cond110.loopexit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body116

for.cond110.loopexit.cleanup_crit_edge:           ; preds = %for.cond110.loopexit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body116:                                      ; preds = %for.cond110.loopexit.for.body116_crit_edge, %for.cond110.preheader.for.body116_crit_edge
  %.pn208251 = phi ptr [ %.pn208, %for.cond110.loopexit.for.body116_crit_edge ], [ %.pn208249, %for.cond110.preheader.for.body116_crit_edge ]
  %call.i226 = call zeroext i1 @lockdep_rtnl_is_held() #17
  br i1 %call.i226, label %for.body116.nbp_vlan_group.exit234_crit_edge, label %land.lhs.true.i229

for.body116.nbp_vlan_group.exit234_crit_edge:     ; preds = %for.body116
  call void @__sanitizer_cov_trace_pc() #19
  br label %nbp_vlan_group.exit234

land.lhs.true.i229:                               ; preds = %for.body116
  %call1.i227 = call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i227)
  %tobool.not.i228 = icmp eq i32 %call1.i227, 0
  br i1 %tobool.not.i228, label %land.lhs.true.i229.nbp_vlan_group.exit234_crit_edge, label %land.lhs.true2.i231

land.lhs.true.i229.nbp_vlan_group.exit234_crit_edge: ; preds = %land.lhs.true.i229
  call void @__sanitizer_cov_trace_pc() #19
  br label %nbp_vlan_group.exit234

land.lhs.true2.i231:                              ; preds = %land.lhs.true.i229
  %.b4.i230 = load i1, ptr @nbp_vlan_group.__warned, align 1
  br i1 %.b4.i230, label %land.lhs.true2.i231.nbp_vlan_group.exit234_crit_edge, label %if.then.i232

land.lhs.true2.i231.nbp_vlan_group.exit234_crit_edge: ; preds = %land.lhs.true2.i231
  call void @__sanitizer_cov_trace_pc() #19
  br label %nbp_vlan_group.exit234

if.then.i232:                                     ; preds = %land.lhs.true2.i231
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @nbp_vlan_group.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 1477, ptr noundef nonnull @.str.10) #17
  br label %nbp_vlan_group.exit234

nbp_vlan_group.exit234:                           ; preds = %if.then.i232, %land.lhs.true2.i231.nbp_vlan_group.exit234_crit_edge, %land.lhs.true.i229.nbp_vlan_group.exit234_crit_edge, %for.body116.nbp_vlan_group.exit234_crit_edge
  %vlgrp.i233 = getelementptr i8, ptr %.pn208251, i32 12
  %66 = ptrtoint ptr %vlgrp.i233 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %vlgrp.i233, align 8
  %vlan_list119 = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %vlan_list119 to i32
  call void @__asan_load4_noabort(i32 %68)
  %.pn209245 = load ptr, ptr %vlan_list119, align 4
  %cmp126.not246 = icmp eq ptr %.pn209245, %vlan_list119
  br i1 %cmp126.not246, label %nbp_vlan_group.exit234.for.cond110.loopexit_crit_edge, label %for.body129.lr.ph

nbp_vlan_group.exit234.for.cond110.loopexit_crit_edge: ; preds = %nbp_vlan_group.exit234
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond110.loopexit

for.body129.lr.ph:                                ; preds = %nbp_vlan_group.exit234
  %dev130 = getelementptr i8, ptr %.pn208251, i32 -8
  br label %for.body129

for.body129:                                      ; preds = %for.body129.for.body129_crit_edge, %for.body129.lr.ph
  %.pn209247 = phi ptr [ %.pn209245, %for.body129.lr.ph ], [ %.pn209, %for.body129.for.body129_crit_edge ]
  %69 = ptrtoint ptr %dev130 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev130, align 4
  %vid131 = getelementptr i8, ptr %.pn209247, i32 -548
  %71 = ptrtoint ptr %vid131 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %vid131, align 8
  call void @vlan_vid_del(ptr noundef %70, i16 noundef zeroext %proto, i16 noundef zeroext %72) #17
  %73 = ptrtoint ptr %.pn209247 to i32
  call void @__asan_load4_noabort(i32 %73)
  %.pn209 = load ptr, ptr %.pn209247, align 4
  %cmp126.not = icmp eq ptr %.pn209, %vlan_list119
  br i1 %cmp126.not, label %for.body129.for.cond110.loopexit_crit_edge, label %for.body129.for.body129_crit_edge

for.body129.for.body129_crit_edge:                ; preds = %for.body129
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body129

for.body129.for.cond110.loopexit_crit_edge:       ; preds = %for.body129
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond110.loopexit

cleanup:                                          ; preds = %for.cond110.loopexit.cleanup_crit_edge, %for.cond110.preheader.cleanup_crit_edge, %for.cond46.loopexit.cleanup_crit_edge, %br_recalculate_fwd_mask.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ 0, %br_recalculate_fwd_mask.exit.cleanup_crit_edge ], [ %call24, %for.cond110.preheader.cleanup_crit_edge ], [ 0, %for.cond46.loopexit.cleanup_crit_edge ], [ %call24, %for.cond110.loopexit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %attr) #17
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vlan_vid_add(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vlan_vid_del(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_vlan_set_proto(ptr noundef %br, i32 noundef %val, ptr noundef %extack) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %val to i16
  %0 = zext i16 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.40)
  switch i16 %conv, label %entry.return_crit_edge [
    i16 -30552, label %entry.if.end_crit_edge
    i16 -32512, label %entry.if.end_crit_edge4
  ]

entry.if.end_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge4
  %call2 = tail call i32 @__br_vlan_set_proto(ptr noundef %br, i16 noundef zeroext %conv, ptr noundef %extack)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -93, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_vlan_set_stats(ptr noundef %br, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %val)
  %switch = icmp ult i32 %val, 2
  br i1 %switch, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool = icmp ne i32 %val, 0
  tail call void @br_opt_toggle(ptr noundef %br, i32 noundef 1, i1 noundef zeroext %tobool) #17
  br label %return

return:                                           ; preds = %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_vlan_set_stats_per_port(ptr noundef %br, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %port_list = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 9
  br label %for.cond

for.cond:                                         ; preds = %nbp_vlan_group.exit.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %port_list, %entry ], [ %.pn, %nbp_vlan_group.exit.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %port_list
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #17
  br i1 %call.i, label %for.body.nbp_vlan_group.exit_crit_edge, label %land.lhs.true.i

for.body.nbp_vlan_group.exit_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %nbp_vlan_group.exit

land.lhs.true.i:                                  ; preds = %for.body
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.nbp_vlan_group.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.nbp_vlan_group.exit_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %nbp_vlan_group.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @nbp_vlan_group.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.nbp_vlan_group.exit_crit_edge, label %if.then.i

land.lhs.true2.i.nbp_vlan_group.exit_crit_edge:   ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %nbp_vlan_group.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @nbp_vlan_group.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 1477, ptr noundef nonnull @.str.10) #17
  br label %nbp_vlan_group.exit

nbp_vlan_group.exit:                              ; preds = %if.then.i, %land.lhs.true2.i.nbp_vlan_group.exit_crit_edge, %land.lhs.true.i.nbp_vlan_group.exit_crit_edge, %for.body.nbp_vlan_group.exit_crit_edge
  %vlgrp.i = getelementptr i8, ptr %.pn, i32 12
  %1 = ptrtoint ptr %vlgrp.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vlgrp.i, align 8
  %num_vlans = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %num_vlans to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %num_vlans, align 4
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %nbp_vlan_group.exit.for.cond_crit_edge, label %nbp_vlan_group.exit.cleanup10_crit_edge

nbp_vlan_group.exit.cleanup10_crit_edge:          ; preds = %nbp_vlan_group.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup10

nbp_vlan_group.exit.for.cond_crit_edge:           ; preds = %nbp_vlan_group.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %val)
  %switch = icmp ult i32 %val, 2
  br i1 %switch, label %sw.bb, label %for.end.cleanup10_crit_edge

for.end.cleanup10_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup10

sw.bb:                                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool7 = icmp ne i32 %val, 0
  tail call void @br_opt_toggle(ptr noundef %br, i32 noundef 12, i1 noundef zeroext %tobool7) #17
  br label %cleanup10

cleanup10:                                        ; preds = %sw.bb, %for.end.cleanup10_crit_edge, %nbp_vlan_group.exit.cleanup10_crit_edge
  %retval.2 = phi i32 [ 0, %sw.bb ], [ -22, %for.end.cleanup10_crit_edge ], [ -16, %nbp_vlan_group.exit.cleanup10_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__br_vlan_set_default_pvid(ptr noundef %br, i16 noundef zeroext %pvid, ptr noundef %extack) local_unnamed_addr #0 align 64 {
entry:
  %vlchange = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %vlchange) #17
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %pvid)
  %tobool.not = icmp eq i16 %pvid, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %default_pvid.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 6
  %0 = ptrtoint ptr %default_pvid.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %default_pvid.i, align 2
  %call.i.i = tail call zeroext i1 @lockdep_rtnl_is_held() #17
  br i1 %call.i.i, label %if.then.br_vlan_group.exit.i_crit_edge, label %land.lhs.true.i.i

if.then.br_vlan_group.exit.i_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_vlan_group.exit.i

land.lhs.true.i.i:                                ; preds = %if.then
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.br_vlan_group.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.br_vlan_group.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_vlan_group.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @br_vlan_group.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.br_vlan_group.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.br_vlan_group.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_vlan_group.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @br_vlan_group.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 1471, ptr noundef nonnull @.str.10) #17
  br label %br_vlan_group.exit.i

br_vlan_group.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.br_vlan_group.exit.i_crit_edge, %land.lhs.true.i.i.br_vlan_group.exit.i_crit_edge, %if.then.br_vlan_group.exit.i_crit_edge
  %vlgrp.i.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 7
  %2 = ptrtoint ptr %vlgrp.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vlgrp.i.i, align 4
  %pvid.i.i = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %pvid.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %pvid.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %1)
  %cmp.not.i.i = icmp eq i16 %5, %1
  br i1 %cmp.not.i.i, label %if.end.i.i, label %br_vlan_group.exit.i.if.end4.i_crit_edge

br_vlan_group.exit.i.if.end4.i_crit_edge:         ; preds = %br_vlan_group.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end4.i

if.end.i.i:                                       ; preds = %br_vlan_group.exit.i
  %call.i34.i = tail call fastcc ptr @br_vlan_lookup(ptr noundef %3, i16 noundef zeroext %1) #17
  %tobool.not.i35.i = icmp eq ptr %call.i34.i, null
  br i1 %tobool.not.i35.i, label %if.end.i.i.if.end4.i_crit_edge, label %land.lhs.true.i36.i

if.end.i.i.if.end4.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end4.i

land.lhs.true.i36.i:                              ; preds = %if.end.i.i
  %flags.i.i.i.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %call.i34.i, i32 0, i32 3
  %6 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %flags.i.i.i.i, align 2
  %8 = and i16 %7, 33
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %8)
  %9 = icmp eq i16 %8, 1
  %10 = and i16 %7, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool7.not.i.i = icmp eq i16 %10, 0
  %or.cond.i.i = or i1 %9, %tobool7.not.i.i
  br i1 %or.cond.i.i, label %land.lhs.true.i36.i.if.end4.i_crit_edge, label %if.then.i

land.lhs.true.i36.i.if.end4.i_crit_edge:          ; preds = %land.lhs.true.i36.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end4.i

if.then.i:                                        ; preds = %land.lhs.true.i36.i
  %call2.i = tail call i32 @br_vlan_delete(ptr noundef %br, i16 noundef zeroext %1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.then3.i, label %if.then.i.if.end4.i_crit_edge

if.then.i.if.end4.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end4.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @br_vlan_notify(ptr noundef %br, ptr noundef null, i16 noundef zeroext %1, i16 noundef zeroext 0, i32 noundef 113) #17
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %if.then.i.if.end4.i_crit_edge, %land.lhs.true.i36.i.if.end4.i_crit_edge, %if.end.i.i.if.end4.i_crit_edge, %br_vlan_group.exit.i.if.end4.i_crit_edge
  %port_list.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 9
  %11 = ptrtoint ptr %port_list.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn59.i = load ptr, ptr %port_list.i, align 4
  %cmp.not61.i = icmp eq ptr %.pn59.i, %port_list.i
  br i1 %cmp.not61.i, label %if.end4.i.br_vlan_disable_default_pvid.exit_crit_edge, label %if.end4.i.for.body.i_crit_edge

if.end4.i.for.body.i_crit_edge:                   ; preds = %if.end4.i
  br label %for.body.i

if.end4.i.br_vlan_disable_default_pvid.exit_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_vlan_disable_default_pvid.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end4.i.for.body.i_crit_edge
  %.pn62.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn59.i, %if.end4.i.for.body.i_crit_edge ]
  %p.063.i = getelementptr i8, ptr %.pn62.i, i32 -12
  %call.i37.i = tail call zeroext i1 @lockdep_rtnl_is_held() #17
  br i1 %call.i37.i, label %for.body.i.nbp_vlan_group.exit.i_crit_edge, label %land.lhs.true.i40.i

for.body.i.nbp_vlan_group.exit.i_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %nbp_vlan_group.exit.i

land.lhs.true.i40.i:                              ; preds = %for.body.i
  %call1.i38.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i38.i)
  %tobool.not.i39.i = icmp eq i32 %call1.i38.i, 0
  br i1 %tobool.not.i39.i, label %land.lhs.true.i40.i.nbp_vlan_group.exit.i_crit_edge, label %land.lhs.true2.i42.i

land.lhs.true.i40.i.nbp_vlan_group.exit.i_crit_edge: ; preds = %land.lhs.true.i40.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %nbp_vlan_group.exit.i

land.lhs.true2.i42.i:                             ; preds = %land.lhs.true.i40.i
  %.b4.i41.i = load i1, ptr @nbp_vlan_group.__warned, align 1
  br i1 %.b4.i41.i, label %land.lhs.true2.i42.i.nbp_vlan_group.exit.i_crit_edge, label %if.then.i43.i

land.lhs.true2.i42.i.nbp_vlan_group.exit.i_crit_edge: ; preds = %land.lhs.true2.i42.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %nbp_vlan_group.exit.i

if.then.i43.i:                                    ; preds = %land.lhs.true2.i42.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @nbp_vlan_group.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 1477, ptr noundef nonnull @.str.10) #17
  br label %nbp_vlan_group.exit.i

nbp_vlan_group.exit.i:                            ; preds = %if.then.i43.i, %land.lhs.true2.i42.i.nbp_vlan_group.exit.i_crit_edge, %land.lhs.true.i40.i.nbp_vlan_group.exit.i_crit_edge, %for.body.i.nbp_vlan_group.exit.i_crit_edge
  %vlgrp.i44.i = getelementptr i8, ptr %.pn62.i, i32 12
  %12 = ptrtoint ptr %vlgrp.i44.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vlgrp.i44.i, align 8
  %pvid.i45.i = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %pvid.i45.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %pvid.i45.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %15, i16 %1)
  %cmp.not.i46.i = icmp eq i16 %15, %1
  br i1 %cmp.not.i46.i, label %if.end.i49.i, label %nbp_vlan_group.exit.i.for.inc.i_crit_edge

nbp_vlan_group.exit.i.for.inc.i_crit_edge:        ; preds = %nbp_vlan_group.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

if.end.i49.i:                                     ; preds = %nbp_vlan_group.exit.i
  %call.i47.i = tail call fastcc ptr @br_vlan_lookup(ptr noundef %13, i16 noundef zeroext %1) #17
  %tobool.not.i48.i = icmp eq ptr %call.i47.i, null
  br i1 %tobool.not.i48.i, label %if.end.i49.i.for.inc.i_crit_edge, label %land.lhs.true.i53.i

if.end.i49.i.for.inc.i_crit_edge:                 ; preds = %if.end.i49.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

land.lhs.true.i53.i:                              ; preds = %if.end.i49.i
  %flags.i.i.i50.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %call.i47.i, i32 0, i32 3
  %16 = ptrtoint ptr %flags.i.i.i50.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %flags.i.i.i50.i, align 2
  %18 = and i16 %17, 33
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %18)
  %19 = icmp eq i16 %18, 1
  %20 = and i16 %17, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool7.not.i51.i = icmp eq i16 %20, 0
  %or.cond.i52.i = or i1 %19, %tobool7.not.i51.i
  br i1 %or.cond.i52.i, label %land.lhs.true.i53.i.for.inc.i_crit_edge, label %land.lhs.true.i

land.lhs.true.i53.i.for.inc.i_crit_edge:          ; preds = %land.lhs.true.i53.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %land.lhs.true.i53.i
  %call8.i = tail call i32 @nbp_vlan_delete(ptr noundef %p.063.i, i16 noundef zeroext %1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.then10.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

if.then10.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @br_vlan_notify(ptr noundef %br, ptr noundef %p.063.i, i16 noundef zeroext %1, i16 noundef zeroext 0, i32 noundef 113) #17
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then10.i, %land.lhs.true.i.for.inc.i_crit_edge, %land.lhs.true.i53.i.for.inc.i_crit_edge, %if.end.i49.i.for.inc.i_crit_edge, %nbp_vlan_group.exit.i.for.inc.i_crit_edge
  %21 = ptrtoint ptr %.pn62.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn.i = load ptr, ptr %.pn62.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %port_list.i
  br i1 %cmp.not.i, label %for.inc.i.br_vlan_disable_default_pvid.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.inc.i.br_vlan_disable_default_pvid.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_vlan_disable_default_pvid.exit

br_vlan_disable_default_pvid.exit:                ; preds = %for.inc.i.br_vlan_disable_default_pvid.exit_crit_edge, %if.end4.i.br_vlan_disable_default_pvid.exit_crit_edge
  %22 = ptrtoint ptr %default_pvid.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %default_pvid.i, align 2
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @bitmap_zalloc(i32 noundef 1024, i32 noundef 3264) #17
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %default_pvid = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 6
  %23 = ptrtoint ptr %default_pvid to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %default_pvid, align 2
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #17
  br i1 %call.i, label %if.end3.br_vlan_group.exit_crit_edge, label %land.lhs.true.i165

if.end3.br_vlan_group.exit_crit_edge:             ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_vlan_group.exit

land.lhs.true.i165:                               ; preds = %if.end3
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i164 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i164, label %land.lhs.true.i165.br_vlan_group.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i165.br_vlan_group.exit_crit_edge:  ; preds = %land.lhs.true.i165
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_vlan_group.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i165
  %.b4.i = load i1, ptr @br_vlan_group.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.br_vlan_group.exit_crit_edge, label %if.then.i166

land.lhs.true2.i.br_vlan_group.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_vlan_group.exit

if.then.i166:                                     ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @br_vlan_group.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 1471, ptr noundef nonnull @.str.10) #17
  br label %br_vlan_group.exit

br_vlan_group.exit:                               ; preds = %if.then.i166, %land.lhs.true2.i.br_vlan_group.exit_crit_edge, %land.lhs.true.i165.br_vlan_group.exit_crit_edge, %if.end3.br_vlan_group.exit_crit_edge
  %vlgrp.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 7
  %25 = ptrtoint ptr %vlgrp.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %vlgrp.i, align 4
  %tobool.not.i167 = icmp eq ptr %26, null
  br i1 %tobool.not.i167, label %br_vlan_group.exit.br_vlan_find.exit_crit_edge, label %if.end.i

br_vlan_group.exit.br_vlan_find.exit_crit_edge:   ; preds = %br_vlan_group.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_vlan_find.exit

if.end.i:                                         ; preds = %br_vlan_group.exit
  call void @__sanitizer_cov_trace_pc() #19
  %call.i168 = tail call fastcc ptr @br_vlan_lookup(ptr noundef nonnull %26, i16 noundef zeroext %pvid) #17
  br label %br_vlan_find.exit

br_vlan_find.exit:                                ; preds = %if.end.i, %br_vlan_group.exit.br_vlan_find.exit_crit_edge
  %retval.0.i = phi ptr [ %call.i168, %if.end.i ], [ null, %br_vlan_group.exit.br_vlan_find.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool6.not = icmp eq i16 %24, 0
  br i1 %tobool6.not, label %br_vlan_find.exit.land.lhs.true_crit_edge, label %lor.lhs.false

br_vlan_find.exit.land.lhs.true_crit_edge:        ; preds = %br_vlan_find.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true

lor.lhs.false:                                    ; preds = %br_vlan_find.exit
  %pvid.i = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %pvid.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %pvid.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %28, i16 %24)
  %cmp.not.i169 = icmp eq i16 %28, %24
  br i1 %cmp.not.i169, label %if.end.i172, label %lor.lhs.false.if.end20_crit_edge

lor.lhs.false.if.end20_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end20

if.end.i172:                                      ; preds = %lor.lhs.false
  %call.i170 = tail call fastcc ptr @br_vlan_lookup(ptr noundef %26, i16 noundef zeroext %24) #17
  %tobool.not.i171 = icmp eq ptr %call.i170, null
  br i1 %tobool.not.i171, label %if.end.i172.if.end20_crit_edge, label %land.lhs.true.i173

if.end.i172.if.end20_crit_edge:                   ; preds = %if.end.i172
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end20

land.lhs.true.i173:                               ; preds = %if.end.i172
  %flags.i.i.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %call.i170, i32 0, i32 3
  %29 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %flags.i.i.i, align 2
  %31 = and i16 %30, 33
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %31)
  %32 = icmp eq i16 %31, 1
  %33 = and i16 %30, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool7.not.i = icmp eq i16 %33, 0
  %or.cond.i = or i1 %32, %tobool7.not.i
  br i1 %or.cond.i, label %land.lhs.true.i173.if.end20_crit_edge, label %land.lhs.true.i173.land.lhs.true_crit_edge

land.lhs.true.i173.land.lhs.true_crit_edge:       ; preds = %land.lhs.true.i173
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true

land.lhs.true.i173.if.end20_crit_edge:            ; preds = %land.lhs.true.i173
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end20

land.lhs.true:                                    ; preds = %land.lhs.true.i173.land.lhs.true_crit_edge, %br_vlan_find.exit.land.lhs.true_crit_edge
  %tobool8.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool8.not, label %land.lhs.true.if.then11_crit_edge, label %lor.lhs.false9

land.lhs.true.if.then11_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then11

lor.lhs.false9:                                   ; preds = %land.lhs.true
  %flags.i.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %retval.0.i, i32 0, i32 3
  %34 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %flags.i.i, align 2
  %36 = and i16 %35, 33
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %36)
  %.not = icmp eq i16 %36, 1
  br i1 %.not, label %lor.lhs.false9.if.then11_crit_edge, label %lor.lhs.false9.if.end20_crit_edge

lor.lhs.false9.if.end20_crit_edge:                ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end20

lor.lhs.false9.if.then11_crit_edge:               ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then11

if.then11:                                        ; preds = %lor.lhs.false9.if.then11_crit_edge, %land.lhs.true.if.then11_crit_edge
  %call12 = call i32 @br_vlan_add(ptr noundef %br, i16 noundef zeroext %pvid, i16 noundef zeroext 38, ptr noundef nonnull %vlchange, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.then11.out_crit_edge

if.then11.out_crit_edge:                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end15:                                         ; preds = %if.then11
  %call16 = tail call i32 @br_vlan_delete(ptr noundef %br, i16 noundef zeroext %24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end15.if.end19_crit_edge, label %if.then18

if.end15.if.end19_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end19

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @br_vlan_notify(ptr noundef %br, ptr noundef null, i16 noundef zeroext %24, i16 noundef zeroext 0, i32 noundef 113)
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end15.if.end19_crit_edge
  tail call void @br_vlan_notify(ptr noundef %br, ptr noundef null, i16 noundef zeroext %pvid, i16 noundef zeroext 0, i32 noundef 112)
  %37 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %call, align 4
  %or.i = or i32 %38, 1
  store i32 %or.i, ptr %call, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %lor.lhs.false9.if.end20_crit_edge, %land.lhs.true.i173.if.end20_crit_edge, %if.end.i172.if.end20_crit_edge, %lor.lhs.false.if.end20_crit_edge
  %port_list = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 9
  %39 = ptrtoint ptr %port_list to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pn205 = load ptr, ptr %port_list, align 4
  %cmp.not207 = icmp eq ptr %.pn205, %port_list
  br i1 %cmp.not207, label %if.end20.for.end_crit_edge, label %if.end20.for.body_crit_edge

if.end20.for.body_crit_edge:                      ; preds = %if.end20
  br label %for.body

if.end20.for.end_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end20.for.body_crit_edge
  %.pn208 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn205, %if.end20.for.body_crit_edge ]
  %p.0209 = getelementptr i8, ptr %.pn208, i32 -12
  %call.i175 = tail call zeroext i1 @lockdep_rtnl_is_held() #17
  br i1 %call.i175, label %for.body.nbp_vlan_group.exit_crit_edge, label %land.lhs.true.i178

for.body.nbp_vlan_group.exit_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %nbp_vlan_group.exit

land.lhs.true.i178:                               ; preds = %for.body
  %call1.i176 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i176)
  %tobool.not.i177 = icmp eq i32 %call1.i176, 0
  br i1 %tobool.not.i177, label %land.lhs.true.i178.nbp_vlan_group.exit_crit_edge, label %land.lhs.true2.i180

land.lhs.true.i178.nbp_vlan_group.exit_crit_edge: ; preds = %land.lhs.true.i178
  call void @__sanitizer_cov_trace_pc() #19
  br label %nbp_vlan_group.exit

land.lhs.true2.i180:                              ; preds = %land.lhs.true.i178
  %.b4.i179 = load i1, ptr @nbp_vlan_group.__warned, align 1
  br i1 %.b4.i179, label %land.lhs.true2.i180.nbp_vlan_group.exit_crit_edge, label %if.then.i181

land.lhs.true2.i180.nbp_vlan_group.exit_crit_edge: ; preds = %land.lhs.true2.i180
  call void @__sanitizer_cov_trace_pc() #19
  br label %nbp_vlan_group.exit

if.then.i181:                                     ; preds = %land.lhs.true2.i180
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @nbp_vlan_group.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 1477, ptr noundef nonnull @.str.10) #17
  br label %nbp_vlan_group.exit

nbp_vlan_group.exit:                              ; preds = %if.then.i181, %land.lhs.true2.i180.nbp_vlan_group.exit_crit_edge, %land.lhs.true.i178.nbp_vlan_group.exit_crit_edge, %for.body.nbp_vlan_group.exit_crit_edge
  %vlgrp.i182 = getelementptr i8, ptr %.pn208, i32 12
  %40 = ptrtoint ptr %vlgrp.i182 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %vlgrp.i182, align 8
  br i1 %tobool6.not, label %nbp_vlan_group.exit.lor.lhs.false26_crit_edge, label %land.lhs.true24

nbp_vlan_group.exit.lor.lhs.false26_crit_edge:    ; preds = %nbp_vlan_group.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.lhs.false26

land.lhs.true24:                                  ; preds = %nbp_vlan_group.exit
  %pvid.i183 = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %41, i32 0, i32 4
  %42 = ptrtoint ptr %pvid.i183 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %pvid.i183, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %43, i16 %24)
  %cmp.not.i184 = icmp eq i16 %43, %24
  br i1 %cmp.not.i184, label %if.end.i187, label %land.lhs.true24.for.inc_crit_edge

land.lhs.true24.for.inc_crit_edge:                ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.end.i187:                                      ; preds = %land.lhs.true24
  %call.i185 = tail call fastcc ptr @br_vlan_lookup(ptr noundef %41, i16 noundef zeroext %24) #17
  %tobool.not.i186 = icmp eq ptr %call.i185, null
  br i1 %tobool.not.i186, label %if.end.i187.for.inc_crit_edge, label %land.lhs.true.i191

if.end.i187.for.inc_crit_edge:                    ; preds = %if.end.i187
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

land.lhs.true.i191:                               ; preds = %if.end.i187
  %flags.i.i.i188 = getelementptr inbounds %struct.net_bridge_vlan, ptr %call.i185, i32 0, i32 3
  %44 = ptrtoint ptr %flags.i.i.i188 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %flags.i.i.i188, align 2
  %46 = and i16 %45, 33
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %46)
  %47 = icmp eq i16 %46, 1
  %48 = and i16 %45, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %tobool7.not.i189 = icmp eq i16 %48, 0
  %or.cond.i190 = or i1 %47, %tobool7.not.i189
  br i1 %or.cond.i190, label %land.lhs.true.i191.for.inc_crit_edge, label %land.lhs.true.i191.lor.lhs.false26_crit_edge

land.lhs.true.i191.lor.lhs.false26_crit_edge:     ; preds = %land.lhs.true.i191
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.lhs.false26

land.lhs.true.i191.for.inc_crit_edge:             ; preds = %land.lhs.true.i191
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

lor.lhs.false26:                                  ; preds = %land.lhs.true.i191.lor.lhs.false26_crit_edge, %nbp_vlan_group.exit.lor.lhs.false26_crit_edge
  %tobool.not.i195 = icmp eq ptr %41, null
  br i1 %tobool.not.i195, label %lor.lhs.false26.if.end30_crit_edge, label %br_vlan_find.exit199

lor.lhs.false26.if.end30_crit_edge:               ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end30

br_vlan_find.exit199:                             ; preds = %lor.lhs.false26
  %call.i196 = tail call fastcc ptr @br_vlan_lookup(ptr noundef nonnull %41, i16 noundef zeroext %pvid) #17
  %tobool28.not = icmp eq ptr %call.i196, null
  br i1 %tobool28.not, label %br_vlan_find.exit199.if.end30_crit_edge, label %br_vlan_find.exit199.for.inc_crit_edge

br_vlan_find.exit199.for.inc_crit_edge:           ; preds = %br_vlan_find.exit199
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

br_vlan_find.exit199.if.end30_crit_edge:          ; preds = %br_vlan_find.exit199
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end30

if.end30:                                         ; preds = %br_vlan_find.exit199.if.end30_crit_edge, %lor.lhs.false26.if.end30_crit_edge
  %call31 = call i32 @nbp_vlan_add(ptr noundef %p.0209, i16 noundef zeroext %pvid, i16 noundef zeroext 6, ptr noundef nonnull %vlchange, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %for.cond51.preheader

for.cond51.preheader:                             ; preds = %if.end30
  %.pn161.in211 = getelementptr inbounds %struct.list_head, ptr %.pn208, i32 0, i32 1
  %49 = ptrtoint ptr %.pn161.in211 to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pn161212 = load ptr, ptr %.pn161.in211, align 4
  %cmp54.not214 = icmp eq ptr %.pn161212, %port_list
  br i1 %cmp54.not214, label %for.cond51.preheader.for.end76_crit_edge, label %for.cond51.preheader.for.body57_crit_edge

for.cond51.preheader.for.body57_crit_edge:        ; preds = %for.cond51.preheader
  br label %for.body57

for.cond51.preheader.for.end76_crit_edge:         ; preds = %for.cond51.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end76

if.end34:                                         ; preds = %if.end30
  %call35 = tail call i32 @nbp_vlan_delete(ptr noundef %p.0209, i16 noundef zeroext %24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end34.if.end38_crit_edge, label %if.then37

if.end34.if.end38_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end38

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @br_vlan_notify(ptr noundef %br, ptr noundef %p.0209, i16 noundef zeroext %24, i16 noundef zeroext 0, i32 noundef 113)
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.end34.if.end38_crit_edge
  %50 = ptrtoint ptr %p.0209 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %p.0209, align 8
  tail call void @br_vlan_notify(ptr noundef %51, ptr noundef %p.0209, i16 noundef zeroext %pvid, i16 noundef zeroext 0, i32 noundef 112)
  %port_no = getelementptr i8, ptr %.pn208, i32 22
  %52 = ptrtoint ptr %port_no to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %port_no, align 2
  %conv40 = zext i16 %53 to i32
  %rem.i = and i32 %conv40, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %conv40, 5
  %add.ptr.i = getelementptr i32, ptr %call, i32 %div2.i
  %54 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %add.ptr.i, align 4
  %or.i162 = or i32 %shl.i, %55
  store i32 %or.i162, ptr %add.ptr.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end38, %br_vlan_find.exit199.for.inc_crit_edge, %land.lhs.true.i191.for.inc_crit_edge, %if.end.i187.for.inc_crit_edge, %land.lhs.true24.for.inc_crit_edge
  %56 = ptrtoint ptr %.pn208 to i32
  call void @__asan_load4_noabort(i32 %56)
  %.pn = load ptr, ptr %.pn208, align 4
  %cmp.not = icmp eq ptr %.pn, %port_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end20.for.end_crit_edge
  %57 = ptrtoint ptr %default_pvid to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %pvid, ptr %default_pvid, align 2
  br label %out

out:                                              ; preds = %if.end83, %for.end76.out_crit_edge, %for.end, %if.then11.out_crit_edge
  %err.3 = phi i32 [ %call31, %if.end83 ], [ %call31, %for.end76.out_crit_edge ], [ 0, %for.end ], [ %call12, %if.then11.out_crit_edge ]
  tail call void @bitmap_free(ptr noundef nonnull %call) #17
  br label %cleanup

for.body57:                                       ; preds = %for.inc70.for.body57_crit_edge, %for.cond51.preheader.for.body57_crit_edge
  %.pn161215 = phi ptr [ %.pn161, %for.inc70.for.body57_crit_edge ], [ %.pn161212, %for.cond51.preheader.for.body57_crit_edge ]
  %p.1216 = getelementptr i8, ptr %.pn161215, i32 -12
  %port_no58 = getelementptr i8, ptr %.pn161215, i32 22
  %58 = ptrtoint ptr %port_no58 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %port_no58, align 2
  %conv59 = zext i16 %59 to i32
  %div3.i = lshr i32 %conv59, 5
  %arrayidx.i = getelementptr i32, ptr %call, i32 %div3.i
  %60 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %conv59, 31
  %62 = shl nuw i32 1, %and.i
  %63 = and i32 %62, %61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool61.not = icmp eq i32 %63, 0
  br i1 %tobool61.not, label %for.body57.for.inc70_crit_edge, label %if.end63

for.body57.for.inc70_crit_edge:                   ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc70

if.end63:                                         ; preds = %for.body57
  br i1 %tobool6.not, label %if.end63.if.end68_crit_edge, label %if.then65

if.end63.if.end68_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end68

if.then65:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #19
  %call66 = call i32 @nbp_vlan_add(ptr noundef %p.1216, i16 noundef zeroext %24, i16 noundef zeroext 6, ptr noundef nonnull %vlchange, ptr noundef null)
  %64 = ptrtoint ptr %p.1216 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %p.1216, align 8
  tail call void @br_vlan_notify(ptr noundef %65, ptr noundef %p.1216, i16 noundef zeroext %24, i16 noundef zeroext 0, i32 noundef 112)
  br label %if.end68

if.end68:                                         ; preds = %if.then65, %if.end63.if.end68_crit_edge
  %call69 = tail call i32 @nbp_vlan_delete(ptr noundef %p.1216, i16 noundef zeroext %pvid)
  tail call void @br_vlan_notify(ptr noundef %br, ptr noundef %p.1216, i16 noundef zeroext %pvid, i16 noundef zeroext 0, i32 noundef 113)
  br label %for.inc70

for.inc70:                                        ; preds = %if.end68, %for.body57.for.inc70_crit_edge
  %.pn161.in = getelementptr inbounds %struct.list_head, ptr %.pn161215, i32 0, i32 1
  %66 = ptrtoint ptr %.pn161.in to i32
  call void @__asan_load4_noabort(i32 %66)
  %.pn161 = load ptr, ptr %.pn161.in, align 4
  %cmp54.not = icmp eq ptr %.pn161, %port_list
  br i1 %cmp54.not, label %for.inc70.for.end76_crit_edge, label %for.inc70.for.body57_crit_edge

for.inc70.for.body57_crit_edge:                   ; preds = %for.inc70
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body57

for.inc70.for.end76_crit_edge:                    ; preds = %for.inc70
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end76

for.end76:                                        ; preds = %for.inc70.for.end76_crit_edge, %for.cond51.preheader.for.end76_crit_edge
  %67 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %call, align 4
  %and1.i163 = and i32 %68, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i163)
  %tobool78.not = icmp eq i32 %and1.i163, 0
  br i1 %tobool78.not, label %for.end76.out_crit_edge, label %if.then79

for.end76.out_crit_edge:                          ; preds = %for.end76
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.then79:                                        ; preds = %for.end76
  br i1 %tobool6.not, label %if.then79.if.end83_crit_edge, label %if.then81

if.then79.if.end83_crit_edge:                     ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end83

if.then81:                                        ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #19
  %call82 = call i32 @br_vlan_add(ptr noundef %br, i16 noundef zeroext %24, i16 noundef zeroext 38, ptr noundef nonnull %vlchange, ptr noundef null)
  tail call void @br_vlan_notify(ptr noundef %br, ptr noundef null, i16 noundef zeroext %24, i16 noundef zeroext 0, i32 noundef 112)
  br label %if.end83

if.end83:                                         ; preds = %if.then81, %if.then79.if.end83_crit_edge
  %call84 = tail call i32 @br_vlan_delete(ptr noundef %br, i16 noundef zeroext %pvid)
  tail call void @br_vlan_notify(ptr noundef %br, ptr noundef null, i16 noundef zeroext %pvid, i16 noundef zeroext 0, i32 noundef 113)
  br label %out

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %br_vlan_disable_default_pvid.exit
  %retval.0 = phi i32 [ %err.3, %out ], [ 0, %br_vlan_disable_default_pvid.exit ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %vlchange) #17
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bitmap_zalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @br_vlan_notify(ptr nocapture noundef readonly %br, ptr noundef readonly %p, i16 noundef zeroext %vid, i16 noundef zeroext %vid_range, i32 noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_is_locked() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b110 = load i1, ptr @br_vlan_notify.__already_done, align 1
  br i1 %.b110, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !170

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @br_vlan_notify.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1808, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 1808) #17
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %tobool37.not = icmp eq ptr %p, null
  br i1 %tobool37.not, label %if.else, label %if.then38

if.then38:                                        ; preds = %if.end29
  %dev = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %ifindex39 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %ifindex39 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ifindex39, align 4
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #17
  br i1 %call.i, label %if.then38.nbp_vlan_group.exit_crit_edge, label %land.lhs.true.i

if.then38.nbp_vlan_group.exit_crit_edge:          ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #19
  br label %nbp_vlan_group.exit

land.lhs.true.i:                                  ; preds = %if.then38
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.nbp_vlan_group.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.nbp_vlan_group.exit_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %nbp_vlan_group.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @nbp_vlan_group.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.nbp_vlan_group.exit_crit_edge, label %if.then.i

land.lhs.true2.i.nbp_vlan_group.exit_crit_edge:   ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %nbp_vlan_group.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @nbp_vlan_group.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 1477, ptr noundef nonnull @.str.10) #17
  br label %nbp_vlan_group.exit

nbp_vlan_group.exit:                              ; preds = %if.then.i, %land.lhs.true2.i.nbp_vlan_group.exit_crit_edge, %land.lhs.true.i.nbp_vlan_group.exit_crit_edge, %if.then38.nbp_vlan_group.exit_crit_edge
  %vlgrp.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 5
  br label %if.end48

if.else:                                          ; preds = %if.end29
  %dev43 = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 3
  %4 = ptrtoint ptr %dev43 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev43, align 4
  %ifindex44 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 17
  %6 = ptrtoint ptr %ifindex44 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ifindex44, align 4
  %call.i111 = tail call zeroext i1 @lockdep_rtnl_is_held() #17
  br i1 %call.i111, label %if.else.br_vlan_group.exit_crit_edge, label %land.lhs.true.i114

if.else.br_vlan_group.exit_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_vlan_group.exit

land.lhs.true.i114:                               ; preds = %if.else
  %call1.i112 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i112)
  %tobool.not.i113 = icmp eq i32 %call1.i112, 0
  br i1 %tobool.not.i113, label %land.lhs.true.i114.br_vlan_group.exit_crit_edge, label %land.lhs.true2.i116

land.lhs.true.i114.br_vlan_group.exit_crit_edge:  ; preds = %land.lhs.true.i114
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_vlan_group.exit

land.lhs.true2.i116:                              ; preds = %land.lhs.true.i114
  %.b4.i115 = load i1, ptr @br_vlan_group.__warned, align 1
  br i1 %.b4.i115, label %land.lhs.true2.i116.br_vlan_group.exit_crit_edge, label %if.then.i117

land.lhs.true2.i116.br_vlan_group.exit_crit_edge: ; preds = %land.lhs.true2.i116
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_vlan_group.exit

if.then.i117:                                     ; preds = %land.lhs.true2.i116
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @br_vlan_group.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 1471, ptr noundef nonnull @.str.10) #17
  br label %br_vlan_group.exit

br_vlan_group.exit:                               ; preds = %if.then.i117, %land.lhs.true2.i116.br_vlan_group.exit_crit_edge, %land.lhs.true.i114.br_vlan_group.exit_crit_edge, %if.else.br_vlan_group.exit_crit_edge
  %vlgrp.i118 = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 7
  br label %if.end48

if.end48:                                         ; preds = %br_vlan_group.exit, %nbp_vlan_group.exit
  %.pn.in = phi ptr [ %dev, %nbp_vlan_group.exit ], [ %dev43, %br_vlan_group.exit ]
  %ifindex.0 = phi i32 [ %3, %nbp_vlan_group.exit ], [ %7, %br_vlan_group.exit ]
  %vg.0.in = phi ptr [ %vlgrp.i, %nbp_vlan_group.exit ], [ %vlgrp.i118, %br_vlan_group.exit ]
  %8 = ptrtoint ptr %vg.0.in to i32
  call void @__asan_load4_noabort(i32 %8)
  %vg.0 = load ptr, ptr %vg.0.in, align 4
  %9 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn = load ptr, ptr %.pn.in, align 4
  %net.0.in = getelementptr inbounds %struct.net_device, ptr %.pn, i32 0, i32 127
  %10 = ptrtoint ptr %net.0.in to i32
  call void @__asan_load4_noabort(i32 %10)
  %net.0 = load ptr, ptr %net.0.in, align 4
  %call5.i = tail call i32 @br_vlan_opts_nl_size() #17
  %sub.i.i = add i32 %call5.i, 47
  %and.i.i = and i32 %sub.i.i, -4
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef %and.i.i, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #17
  %tobool51.not = icmp eq ptr %call.i.i, null
  br i1 %tobool51.not, label %if.end48.out_err_crit_edge, label %if.end53

if.end48.out_err_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_err

if.end53:                                         ; preds = %if.end48
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 7
  %11 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.i.not.i.i = icmp eq i32 %12, 0
  br i1 %tobool.i.not.i.i, label %skb_tailroom.exit.i, label %if.end53.out_err_crit_edge

if.end53.out_err_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_err

skb_tailroom.exit.i:                              ; preds = %if.end53
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 17
  %13 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %end.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %15 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %14 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %16 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %sub.ptr.sub.i.i)
  %cmp.i = icmp slt i32 %sub.ptr.sub.i.i, 24
  br i1 %cmp.i, label %skb_tailroom.exit.i.out_err_crit_edge, label %nlmsg_put.exit, !prof !172

skb_tailroom.exit.i.out_err_crit_edge:            ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_err

nlmsg_put.exit:                                   ; preds = %skb_tailroom.exit.i
  %call3.i = tail call ptr @__nlmsg_put(ptr noundef nonnull %call.i.i, i32 noundef 0, i32 noundef 0, i32 noundef %cmd, i32 noundef 8, i32 noundef 0) #17
  %tobool55.not = icmp eq ptr %call3.i, null
  br i1 %tobool55.not, label %nlmsg_put.exit.out_err_crit_edge, label %if.end57

nlmsg_put.exit.out_err_crit_edge:                 ; preds = %nlmsg_put.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_err

if.end57:                                         ; preds = %nlmsg_put.exit
  %add.ptr.i = getelementptr i8, ptr %call3.i, i32 16
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 8)
  store i64 504403158265495552, ptr %add.ptr.i, align 4
  %ifindex59 = getelementptr i8, ptr %call3.i, i32 20
  %18 = ptrtoint ptr %ifindex59 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %ifindex.0, ptr %ifindex59, align 4
  %19 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %cmd, label %if.end57.out_kfree_crit_edge [
    i32 112, label %sw.bb
    i32 113, label %if.end57.sw.epilog_crit_edge
  ]

if.end57.sw.epilog_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

if.end57.out_kfree_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_kfree

sw.bb:                                            ; preds = %if.end57
  %tobool.not.i120 = icmp eq ptr %vg.0, null
  br i1 %tobool.not.i120, label %sw.bb.out_kfree_crit_edge, label %br_vlan_find.exit

sw.bb.out_kfree_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_kfree

br_vlan_find.exit:                                ; preds = %sw.bb
  %call.i121 = tail call fastcc ptr @br_vlan_lookup(ptr noundef nonnull %vg.0, i16 noundef zeroext %vid) #17
  %tobool61.not = icmp eq ptr %call.i121, null
  br i1 %tobool61.not, label %br_vlan_find.exit.out_kfree_crit_edge, label %lor.lhs.false

br_vlan_find.exit.out_kfree_crit_edge:            ; preds = %br_vlan_find.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_kfree

lor.lhs.false:                                    ; preds = %br_vlan_find.exit
  %flags.i.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %call.i121, i32 0, i32 3
  %20 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %flags.i.i, align 2
  %22 = and i16 %21, 33
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %22)
  %.not = icmp eq i16 %22, 1
  br i1 %.not, label %lor.lhs.false.out_kfree_crit_edge, label %br_get_pvid.exit

lor.lhs.false.out_kfree_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_kfree

br_get_pvid.exit:                                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !173
  %pvid.i = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %vg.0, i32 0, i32 4
  %23 = ptrtoint ptr %pvid.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %pvid.i, align 2
  %vid67 = getelementptr inbounds %struct.net_bridge_vlan, ptr %call.i121, i32 0, i32 2
  %25 = ptrtoint ptr %vid67 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %vid67, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %24, i16 %26)
  %cmp = icmp eq i16 %24, %26
  %27 = or i16 %21, 2
  %spec.select = select i1 %cmp, i16 %27, i16 %21
  br label %sw.epilog

sw.epilog:                                        ; preds = %br_get_pvid.exit, %if.end57.sw.epilog_crit_edge
  %flags.0 = phi i16 [ 0, %if.end57.sw.epilog_crit_edge ], [ %spec.select, %br_get_pvid.exit ]
  %v.0 = phi ptr [ null, %if.end57.sw.epilog_crit_edge ], [ %call.i121, %br_get_pvid.exit ]
  %call74 = tail call fastcc zeroext i1 @br_vlan_fill_vids(ptr noundef nonnull %call.i.i, i16 noundef zeroext %vid, i16 noundef zeroext %vid_range, ptr noundef %v.0, i16 noundef zeroext %flags.0, i1 noundef zeroext false)
  br i1 %call74, label %if.end76, label %sw.epilog.out_err_crit_edge

sw.epilog.out_err_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_err

if.end76:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  %28 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %29 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %call3.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %30 = ptrtoint ptr %call3.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %sub.ptr.sub.i, ptr %call3.i, align 4
  tail call void @rtnl_notify(ptr noundef nonnull %call.i.i, ptr noundef %net.0, i32 noundef 0, i32 noundef 33, ptr noundef null, i32 noundef 3264) #17
  br label %cleanup

out_err:                                          ; preds = %sw.epilog.out_err_crit_edge, %nlmsg_put.exit.out_err_crit_edge, %skb_tailroom.exit.i.out_err_crit_edge, %if.end53.out_err_crit_edge, %if.end48.out_err_crit_edge
  %err.0 = phi i32 [ -90, %sw.epilog.out_err_crit_edge ], [ -90, %nlmsg_put.exit.out_err_crit_edge ], [ -105, %if.end48.out_err_crit_edge ], [ -90, %skb_tailroom.exit.i.out_err_crit_edge ], [ -90, %if.end53.out_err_crit_edge ]
  tail call void @rtnl_set_sk_err(ptr noundef %net.0, i32 noundef 33, i32 noundef %err.0) #17
  br label %out_kfree

out_kfree:                                        ; preds = %out_err, %lor.lhs.false.out_kfree_crit_edge, %br_vlan_find.exit.out_kfree_crit_edge, %sw.bb.out_kfree_crit_edge, %if.end57.out_kfree_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %call.i.i, i32 noundef 0) #17
  br label %cleanup

cleanup:                                          ; preds = %out_kfree, %if.end76
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nbp_vlan_add(ptr noundef %port, i16 noundef zeroext %vid, i16 noundef zeroext %flags, ptr nocapture noundef writeonly %changed, ptr noundef %extack) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_is_locked() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b79 = load i1, ptr @nbp_vlan_add.__already_done, align 1
  br i1 %.b79, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !170

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @nbp_vlan_add.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1245, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 1245) #17
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %0 = ptrtoint ptr %changed to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %changed, align 1
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #17
  br i1 %call.i, label %if.end29.nbp_vlan_group.exit_crit_edge, label %land.lhs.true.i

if.end29.nbp_vlan_group.exit_crit_edge:           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #19
  br label %nbp_vlan_group.exit

land.lhs.true.i:                                  ; preds = %if.end29
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.nbp_vlan_group.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.nbp_vlan_group.exit_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %nbp_vlan_group.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @nbp_vlan_group.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.nbp_vlan_group.exit_crit_edge, label %if.then.i

land.lhs.true2.i.nbp_vlan_group.exit_crit_edge:   ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %nbp_vlan_group.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @nbp_vlan_group.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 1477, ptr noundef nonnull @.str.10) #17
  br label %nbp_vlan_group.exit

nbp_vlan_group.exit:                              ; preds = %if.then.i, %land.lhs.true2.i.nbp_vlan_group.exit_crit_edge, %land.lhs.true.i.nbp_vlan_group.exit_crit_edge, %if.end29.nbp_vlan_group.exit_crit_edge
  %vlgrp.i = getelementptr inbounds %struct.net_bridge_port, ptr %port, i32 0, i32 5
  %1 = ptrtoint ptr %vlgrp.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vlgrp.i, align 8
  %tobool.not.i80 = icmp eq ptr %2, null
  br i1 %tobool.not.i80, label %nbp_vlan_group.exit.if.end47_crit_edge, label %br_vlan_find.exit

nbp_vlan_group.exit.if.end47_crit_edge:           ; preds = %nbp_vlan_group.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end47

br_vlan_find.exit:                                ; preds = %nbp_vlan_group.exit
  %call.i81 = tail call fastcc ptr @br_vlan_lookup(ptr noundef nonnull %2, i16 noundef zeroext %vid) #17
  %tobool39.not = icmp eq ptr %call.i81, null
  br i1 %tobool39.not, label %br_vlan_find.exit.if.end47_crit_edge, label %if.then40

br_vlan_find.exit.if.end47_crit_edge:             ; preds = %br_vlan_find.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end47

if.then40:                                        ; preds = %br_vlan_find.exit
  %dev = getelementptr inbounds %struct.net_bridge_port, ptr %port, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %call41 = tail call i32 @br_switchdev_port_vlan_add(ptr noundef %4, i16 noundef zeroext %vid, i16 noundef zeroext %flags, ptr noundef %extack) #17
  %5 = zext i32 %call41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %call41, label %if.then40.cleanup_crit_edge [
    i32 0, label %if.then40.if.end44_crit_edge
    i32 -95, label %if.then40.if.end44_crit_edge84
  ]

if.then40.if.end44_crit_edge84:                   ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end44

if.then40.if.end44_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end44

if.then40.cleanup_crit_edge:                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end44:                                         ; preds = %if.then40.if.end44_crit_edge, %if.then40.if.end44_crit_edge84
  %call45 = tail call fastcc zeroext i1 @__vlan_add_flags(ptr noundef nonnull %call.i81, i16 noundef zeroext %flags)
  %frombool46 = zext i1 %call45 to i8
  %6 = ptrtoint ptr %changed to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %frombool46, ptr %changed, align 1
  br label %cleanup

if.end47:                                         ; preds = %br_vlan_find.exit.if.end47_crit_edge, %nbp_vlan_group.exit.if.end47_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 576) #21
  %tobool49.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool49.not, label %if.end47.cleanup_crit_edge, label %if.end51

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end51:                                         ; preds = %if.end47
  %vid52 = getelementptr inbounds %struct.net_bridge_vlan, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %vid52 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %vid, ptr %vid52, align 8
  %9 = getelementptr inbounds %struct.net_bridge_vlan, ptr %call7.i.i, i32 0, i32 7
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %port, ptr %9, align 4
  %call53 = tail call fastcc i32 @__vlan_add(ptr noundef nonnull %call7.i.i, i16 noundef zeroext %flags, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.else, label %if.then55

if.then55:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #17
  br label %cleanup

if.else:                                          ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #19
  %11 = ptrtoint ptr %changed to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %changed, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then55, %if.end47.cleanup_crit_edge, %if.end44, %if.then40.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end44 ], [ %call41, %if.then40.cleanup_crit_edge ], [ -12, %if.end47.cleanup_crit_edge ], [ 0, %if.else ], [ %call53, %if.then55 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nbp_vlan_delete(ptr noundef %port, i16 noundef zeroext %vid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_is_locked() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b54 = load i1, ptr @nbp_vlan_delete.__already_done, align 1
  br i1 %.b54, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !170

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @nbp_vlan_delete.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1281, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 1281) #17
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #17
  br i1 %call.i, label %if.end29.nbp_vlan_group.exit_crit_edge, label %land.lhs.true.i

if.end29.nbp_vlan_group.exit_crit_edge:           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #19
  br label %nbp_vlan_group.exit

land.lhs.true.i:                                  ; preds = %if.end29
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.nbp_vlan_group.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.nbp_vlan_group.exit_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %nbp_vlan_group.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @nbp_vlan_group.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.nbp_vlan_group.exit_crit_edge, label %if.then.i

land.lhs.true2.i.nbp_vlan_group.exit_crit_edge:   ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %nbp_vlan_group.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @nbp_vlan_group.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 1477, ptr noundef nonnull @.str.10) #17
  br label %nbp_vlan_group.exit

nbp_vlan_group.exit:                              ; preds = %if.then.i, %land.lhs.true2.i.nbp_vlan_group.exit_crit_edge, %land.lhs.true.i.nbp_vlan_group.exit_crit_edge, %if.end29.nbp_vlan_group.exit_crit_edge
  %vlgrp.i = getelementptr inbounds %struct.net_bridge_port, ptr %port, i32 0, i32 5
  %0 = ptrtoint ptr %vlgrp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vlgrp.i, align 8
  %tobool.not.i55 = icmp eq ptr %1, null
  br i1 %tobool.not.i55, label %nbp_vlan_group.exit.cleanup_crit_edge, label %br_vlan_find.exit

nbp_vlan_group.exit.cleanup_crit_edge:            ; preds = %nbp_vlan_group.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

br_vlan_find.exit:                                ; preds = %nbp_vlan_group.exit
  %call.i56 = tail call fastcc ptr @br_vlan_lookup(ptr noundef nonnull %1, i16 noundef zeroext %vid) #17
  %tobool39.not = icmp eq ptr %call.i56, null
  br i1 %tobool39.not, label %br_vlan_find.exit.cleanup_crit_edge, label %if.end41

br_vlan_find.exit.cleanup_crit_edge:              ; preds = %br_vlan_find.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end41:                                         ; preds = %br_vlan_find.exit
  call void @__sanitizer_cov_trace_pc() #19
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 8
  %dev = getelementptr inbounds %struct.net_bridge_port, ptr %port, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 86
  %6 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_addr, align 64
  tail call void @br_fdb_find_delete_local(ptr noundef %3, ptr noundef %port, ptr noundef %7, i16 noundef zeroext %vid) #17
  %8 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %port, align 8
  tail call void @br_fdb_delete_by_port(ptr noundef %9, ptr noundef %port, i16 noundef zeroext %vid, i32 noundef 0) #17
  %call43 = tail call fastcc i32 @__vlan_del(ptr noundef nonnull %call.i56)
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %br_vlan_find.exit.cleanup_crit_edge, %nbp_vlan_group.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call43, %if.end41 ], [ -2, %br_vlan_find.exit.cleanup_crit_edge ], [ -2, %nbp_vlan_group.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_vlan_set_default_pvid(ptr noundef %br, i32 noundef %val, ptr noundef %extack) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %val to i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 4094, i32 %val)
  %cmp = icmp ugt i32 %val, 4094
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %default_pvid = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 6
  %0 = ptrtoint ptr %default_pvid to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %default_pvid, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %conv)
  %cmp4 = icmp eq i16 %1, %conv
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %options.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 4
  %2 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %options.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not, label %if.end25, label %land.end

land.end:                                         ; preds = %if.end7
  %.b33 = load i1, ptr @br_vlan_set_default_pvid.__already_done, align 1
  br i1 %.b33, label %land.end.cleanup_crit_edge, label %if.then15, !prof !170

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then15:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @br_vlan_set_default_pvid.__already_done, align 1
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #20
  br label %cleanup

if.end25:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  %call26 = tail call i32 @__br_vlan_set_default_pvid(ptr noundef %br, i16 noundef zeroext %conv, ptr noundef %extack)
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.then15, %land.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call26, %if.end25 ], [ -1, %if.then15 ], [ -1, %land.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_vlan_init(ptr noundef %br) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 472) #21
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @rhashtable_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @br_vlan_rht_params) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.err_rhtbl_crit_edge

if.end.err_rhtbl_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_rhtbl

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @vlan_tunnel_init(ptr noundef nonnull %call7.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %err_tunnel_init

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #19
  %vlan_list = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %call7.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %vlan_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %vlan_list, ptr %vlan_list, align 8
  %prev.i = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %call7.i.i, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %vlan_list, ptr %prev.i, align 4
  %vlan_proto = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 5
  %3 = ptrtoint ptr %vlan_proto to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -32512, ptr %vlan_proto, align 4
  %default_pvid = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 6
  %4 = ptrtoint ptr %default_pvid to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 1, ptr %default_pvid, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !185
  %vlgrp30 = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 7
  %5 = ptrtoint ptr %vlgrp30 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %call7.i.i, ptr %vlgrp30, align 4
  br label %out

out:                                              ; preds = %err_rhtbl, %if.end8, %entry.out_crit_edge
  %ret.0 = phi i32 [ %ret.1, %err_rhtbl ], [ 0, %if.end8 ], [ -12, %entry.out_crit_edge ]
  ret i32 %ret.0

err_tunnel_init:                                  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @rhashtable_destroy(ptr noundef nonnull %call7.i.i) #17
  br label %err_rhtbl

err_rhtbl:                                        ; preds = %err_tunnel_init, %if.end.err_rhtbl_crit_edge
  %ret.1 = phi i32 [ %call1, %if.end.err_rhtbl_crit_edge ], [ %call5, %err_tunnel_init ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #17
  br label %out
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rhashtable_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vlan_tunnel_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nbp_vlan_init(ptr noundef %p, ptr noundef %extack) local_unnamed_addr #0 align 64 {
entry:
  %attr = alloca %struct.switchdev_attr, align 4
  %changed = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %attr) #17
  %0 = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 1
  %1 = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 2
  %2 = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 3
  %3 = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 4
  %4 = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 5
  %5 = getelementptr inbounds i8, ptr %attr, i32 20
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 -1, ptr %5, align 4
  %7 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %p, align 8
  %dev = getelementptr inbounds %struct.net_bridge, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %11 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %attr, align 4
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 6, ptr %0, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %1, align 4
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %2, align 4
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %3, align 4
  %options.i = getelementptr inbounds %struct.net_bridge, ptr %8, i32 0, i32 4
  %16 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %options.i, align 4
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %4, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3520, i32 noundef 472) #21
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %entry.cleanup79_crit_edge, label %if.end

entry.cleanup79_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup79

if.end:                                           ; preds = %entry
  %dev4 = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 1
  %22 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev4, align 4
  %call5 = call i32 @switchdev_port_attr_set(ptr noundef %23, ptr noundef nonnull %attr, ptr noundef %extack) #17
  %24 = zext i32 %call5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %call5, label %if.end.err_vlan_enabled_crit_edge [
    i32 0, label %if.end.if.end8_crit_edge
    i32 -95, label %if.end.if.end8_crit_edge107
  ]

if.end.if.end8_crit_edge107:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end8

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end8

if.end.err_vlan_enabled_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_vlan_enabled

if.end8:                                          ; preds = %if.end.if.end8_crit_edge, %if.end.if.end8_crit_edge107
  %call9 = call i32 @rhashtable_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @br_vlan_rht_params) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.err_vlan_enabled_crit_edge

if.end8.err_vlan_enabled_crit_edge:               ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_vlan_enabled

if.end12:                                         ; preds = %if.end8
  %call13 = call i32 @vlan_tunnel_init(ptr noundef nonnull %call7.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.err_tunnel_init_crit_edge

if.end12.err_tunnel_init_crit_edge:               ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_tunnel_init

if.end16:                                         ; preds = %if.end12
  %vlan_list = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %call7.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %vlan_list to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %vlan_list, ptr %vlan_list, align 8
  %prev.i = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %call7.i.i, i32 0, i32 2, i32 1
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %vlan_list, ptr %prev.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !186
  %vlgrp40 = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 5
  %27 = ptrtoint ptr %vlgrp40 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %call7.i.i, ptr %vlgrp40, align 8
  %28 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %p, align 8
  %default_pvid = getelementptr inbounds %struct.net_bridge, ptr %29, i32 0, i32 6
  %30 = ptrtoint ptr %default_pvid to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %default_pvid, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool53.not = icmp eq i16 %31, 0
  br i1 %tobool53.not, label %if.end16.cleanup79_crit_edge, label %if.then54

if.end16.cleanup79_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup79

if.then54:                                        ; preds = %if.end16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %changed) #17
  %call57 = call i32 @nbp_vlan_add(ptr noundef %p, i16 noundef zeroext %31, i16 noundef zeroext 6, ptr noundef nonnull %changed, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %cleanup, label %do.body70

cleanup:                                          ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #19
  %32 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %p, align 8
  %default_pvid63 = getelementptr inbounds %struct.net_bridge, ptr %33, i32 0, i32 6
  %34 = ptrtoint ptr %default_pvid63 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %default_pvid63, align 2
  call void @br_vlan_notify(ptr noundef %33, ptr noundef %p, i16 noundef zeroext %35, i16 noundef zeroext 0, i32 noundef 112)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %changed) #17
  br label %cleanup79

do.body70:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %changed) #17
  %36 = ptrtoint ptr %vlgrp40 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr null, ptr %vlgrp40, align 8
  call void @synchronize_rcu() #17
  call void @vlan_tunnel_deinit(ptr noundef nonnull %call7.i.i) #17
  br label %err_tunnel_init

err_tunnel_init:                                  ; preds = %do.body70, %if.end12.err_tunnel_init_crit_edge
  %ret.1 = phi i32 [ %call13, %if.end12.err_tunnel_init_crit_edge ], [ %call57, %do.body70 ]
  call void @rhashtable_destroy(ptr noundef nonnull %call7.i.i) #17
  br label %err_vlan_enabled

err_vlan_enabled:                                 ; preds = %err_tunnel_init, %if.end8.err_vlan_enabled_crit_edge, %if.end.err_vlan_enabled_crit_edge
  %ret.2 = phi i32 [ %call9, %if.end8.err_vlan_enabled_crit_edge ], [ %ret.1, %err_tunnel_init ], [ %call5, %if.end.err_vlan_enabled_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #17
  br label %cleanup79

cleanup79:                                        ; preds = %err_vlan_enabled, %cleanup, %if.end16.cleanup79_crit_edge, %entry.cleanup79_crit_edge
  %retval.0 = phi i32 [ %ret.2, %err_vlan_enabled ], [ 0, %cleanup ], [ 0, %if.end16.cleanup79_crit_edge ], [ -12, %entry.cleanup79_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %attr) #17
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vlan_tunnel_deinit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_switchdev_port_vlan_add(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @__vlan_add_flags(ptr nocapture noundef %v, i16 noundef zeroext %flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %flags1 = getelementptr inbounds %struct.net_bridge_vlan, ptr %v, i32 0, i32 3
  %0 = ptrtoint ptr %flags1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %flags1, align 2
  %2 = and i16 %1, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.i.not = icmp eq i16 %2, 0
  %3 = getelementptr inbounds %struct.net_bridge_vlan, ptr %v, i32 0, i32 7
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call.i41 = tail call zeroext i1 @lockdep_rtnl_is_held() #17
  br i1 %tobool.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %call.i41, label %if.then.br_vlan_group.exit_crit_edge, label %land.lhs.true.i

if.then.br_vlan_group.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_vlan_group.exit

land.lhs.true.i:                                  ; preds = %if.then
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.br_vlan_group.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.br_vlan_group.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_vlan_group.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @br_vlan_group.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.br_vlan_group.exit_crit_edge, label %if.then.i

land.lhs.true2.i.br_vlan_group.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_vlan_group.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @br_vlan_group.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 1471, ptr noundef nonnull @.str.10) #17
  br label %br_vlan_group.exit

br_vlan_group.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.br_vlan_group.exit_crit_edge, %land.lhs.true.i.br_vlan_group.exit_crit_edge, %if.then.br_vlan_group.exit_crit_edge
  %vlgrp.i = getelementptr inbounds %struct.net_bridge, ptr %5, i32 0, i32 7
  br label %if.end

if.else:                                          ; preds = %entry
  br i1 %call.i41, label %if.else.nbp_vlan_group.exit_crit_edge, label %land.lhs.true.i44

if.else.nbp_vlan_group.exit_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %nbp_vlan_group.exit

land.lhs.true.i44:                                ; preds = %if.else
  %call1.i42 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i42)
  %tobool.not.i43 = icmp eq i32 %call1.i42, 0
  br i1 %tobool.not.i43, label %land.lhs.true.i44.nbp_vlan_group.exit_crit_edge, label %land.lhs.true2.i46

land.lhs.true.i44.nbp_vlan_group.exit_crit_edge:  ; preds = %land.lhs.true.i44
  call void @__sanitizer_cov_trace_pc() #19
  br label %nbp_vlan_group.exit

land.lhs.true2.i46:                               ; preds = %land.lhs.true.i44
  %.b4.i45 = load i1, ptr @nbp_vlan_group.__warned, align 1
  br i1 %.b4.i45, label %land.lhs.true2.i46.nbp_vlan_group.exit_crit_edge, label %if.then.i47

land.lhs.true2.i46.nbp_vlan_group.exit_crit_edge: ; preds = %land.lhs.true2.i46
  call void @__sanitizer_cov_trace_pc() #19
  br label %nbp_vlan_group.exit

if.then.i47:                                      ; preds = %land.lhs.true2.i46
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @nbp_vlan_group.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 1477, ptr noundef nonnull @.str.10) #17
  br label %nbp_vlan_group.exit

nbp_vlan_group.exit:                              ; preds = %if.then.i47, %land.lhs.true2.i46.nbp_vlan_group.exit_crit_edge, %land.lhs.true.i44.nbp_vlan_group.exit_crit_edge, %if.else.nbp_vlan_group.exit_crit_edge
  %vlgrp.i48 = getelementptr inbounds %struct.net_bridge_port, ptr %5, i32 0, i32 5
  br label %if.end

if.end:                                           ; preds = %nbp_vlan_group.exit, %br_vlan_group.exit
  %vg.0.in = phi ptr [ %vlgrp.i, %br_vlan_group.exit ], [ %vlgrp.i48, %nbp_vlan_group.exit ]
  %6 = ptrtoint ptr %vg.0.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %vg.0 = load ptr, ptr %vg.0.in, align 4
  %7 = and i16 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not = icmp eq i16 %7, 0
  br i1 %tobool.not, label %if.else6, label %if.then4

if.then4:                                         ; preds = %if.end
  %pvid.i = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %vg.0, i32 0, i32 4
  %8 = ptrtoint ptr %pvid.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %pvid.i, align 2
  %vid.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %v, i32 0, i32 2
  %10 = ptrtoint ptr %vid.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %vid.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %11)
  %cmp.i = icmp eq i16 %9, %11
  br i1 %cmp.i, label %if.then4.__vlan_add_pvid.exit_crit_edge, label %do.end.i

if.then4.__vlan_add_pvid.exit_crit_edge:          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #19
  br label %__vlan_add_pvid.exit

do.end.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !187
  %state.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %v, i32 0, i32 5
  %12 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %state.i, align 2
  %pvid_state.i.i = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %vg.0, i32 0, i32 5
  %14 = ptrtoint ptr %pvid_state.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store volatile i8 %13, ptr %pvid_state.i.i, align 4
  %15 = ptrtoint ptr %vid.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %vid.i, align 8
  %17 = ptrtoint ptr %pvid.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %pvid.i, align 2
  br label %__vlan_add_pvid.exit

__vlan_add_pvid.exit:                             ; preds = %do.end.i, %if.then4.__vlan_add_pvid.exit_crit_edge
  %18 = xor i1 %cmp.i, true
  br label %if.end9

if.else6:                                         ; preds = %if.end
  %vid = getelementptr inbounds %struct.net_bridge_vlan, ptr %v, i32 0, i32 2
  %19 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %vid, align 8
  %pvid.i49 = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %vg.0, i32 0, i32 4
  %21 = ptrtoint ptr %pvid.i49 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %pvid.i49, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %22, i16 %20)
  %cmp.not.i = icmp eq i16 %22, %20
  br i1 %cmp.not.i, label %do.end.i50, label %if.else6.if.end9_crit_edge

if.else6.if.end9_crit_edge:                       ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end9

do.end.i50:                                       ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !182
  %23 = ptrtoint ptr %pvid.i49 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 0, ptr %pvid.i49, align 2
  br label %if.end9

if.end9:                                          ; preds = %do.end.i50, %if.else6.if.end9_crit_edge, %__vlan_add_pvid.exit
  %ret.0.in = phi i1 [ %18, %__vlan_add_pvid.exit ], [ false, %if.else6.if.end9_crit_edge ], [ true, %do.end.i50 ]
  %and11 = and i16 %flags, 4
  %24 = ptrtoint ptr %flags1 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %flags1, align 2
  %26 = and i16 %25, -5
  %storemerge = or i16 %26, %and11
  store i16 %storemerge, ptr %flags1, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %storemerge)
  %tobool28 = icmp ne i16 %1, %storemerge
  %spec.select = select i1 %ret.0.in, i1 true, i1 %tobool28
  ret i1 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nbp_vlan_flush(ptr noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_is_locked() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b56 = load i1, ptr @nbp_vlan_flush.__already_done, align 1
  br i1 %.b56, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !170

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @nbp_vlan_flush.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1296, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 1296) #17
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #17
  br i1 %call.i, label %if.end29.nbp_vlan_group.exit_crit_edge, label %land.lhs.true.i

if.end29.nbp_vlan_group.exit_crit_edge:           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #19
  br label %nbp_vlan_group.exit

land.lhs.true.i:                                  ; preds = %if.end29
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.nbp_vlan_group.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.nbp_vlan_group.exit_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %nbp_vlan_group.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @nbp_vlan_group.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.nbp_vlan_group.exit_crit_edge, label %if.then.i

land.lhs.true2.i.nbp_vlan_group.exit_crit_edge:   ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %nbp_vlan_group.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @nbp_vlan_group.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 1477, ptr noundef nonnull @.str.10) #17
  br label %nbp_vlan_group.exit

nbp_vlan_group.exit:                              ; preds = %if.then.i, %land.lhs.true2.i.nbp_vlan_group.exit_crit_edge, %land.lhs.true.i.nbp_vlan_group.exit_crit_edge, %if.end29.nbp_vlan_group.exit_crit_edge
  %vlgrp.i = getelementptr inbounds %struct.net_bridge_port, ptr %port, i32 0, i32 5
  %0 = ptrtoint ptr %vlgrp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vlgrp.i, align 8
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 8
  %pvid.i = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %1, i32 0, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !182
  %4 = ptrtoint ptr %pvid.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %pvid.i, align 2
  %vlan_list.i = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %vlan_list.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vlan_list.i, align 4
  %cmp.not45.i = icmp eq ptr %6, %vlan_list.i
  br i1 %cmp.not45.i, label %nbp_vlan_group.exit.__vlan_flush.exit_crit_edge, label %nbp_vlan_group.exit.for.body.i_crit_edge

nbp_vlan_group.exit.for.body.i_crit_edge:         ; preds = %nbp_vlan_group.exit
  br label %for.body.i

nbp_vlan_group.exit.__vlan_flush.exit_crit_edge:  ; preds = %nbp_vlan_group.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %__vlan_flush.exit

for.body.i:                                       ; preds = %if.end14.i.for.body.i_crit_edge, %nbp_vlan_group.exit.for.body.i_crit_edge
  %.pn.in48.i = phi ptr [ %.pn51.i, %if.end14.i.for.body.i_crit_edge ], [ %6, %nbp_vlan_group.exit.for.body.i_crit_edge ]
  %v_start.047.i = phi i16 [ %v_start.1.i, %if.end14.i.for.body.i_crit_edge ], [ 0, %nbp_vlan_group.exit.for.body.i_crit_edge ]
  %v_end.046.i = phi i16 [ %13, %if.end14.i.for.body.i_crit_edge ], [ 0, %nbp_vlan_group.exit.for.body.i_crit_edge ]
  %vlan.050.i = getelementptr i8, ptr %.pn.in48.i, i32 -556
  %7 = ptrtoint ptr %.pn.in48.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn51.i = load ptr, ptr %.pn.in48.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %v_start.047.i)
  %tobool.not.i57 = icmp eq i16 %v_start.047.i, 0
  %vid.i = getelementptr i8, ptr %.pn.in48.i, i32 -548
  %8 = ptrtoint ptr %vid.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %vid.i, align 8
  br i1 %tobool.not.i57, label %for.body.i.if.end14.i_crit_edge, label %if.else.i

for.body.i.if.end14.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end14.i

if.else.i:                                        ; preds = %for.body.i
  %conv.i = zext i16 %9 to i32
  %conv9.i = zext i16 %v_end.046.i to i32
  %sub.i = sub nsw i32 %conv.i, %conv9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i)
  %cmp10.not.i = icmp eq i32 %sub.i, 1
  br i1 %cmp10.not.i, label %if.else.i.if.end14.i_crit_edge, label %if.then12.i

if.else.i.if.end14.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end14.i

if.then12.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @br_vlan_notify(ptr noundef %3, ptr noundef %port, i16 noundef zeroext %v_start.047.i, i16 noundef zeroext %v_end.046.i, i32 noundef 113) #17
  %10 = ptrtoint ptr %vid.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %vid.i, align 8
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then12.i, %if.else.i.if.end14.i_crit_edge, %for.body.i.if.end14.i_crit_edge
  %v_start.1.i = phi i16 [ %11, %if.then12.i ], [ %v_start.047.i, %if.else.i.if.end14.i_crit_edge ], [ %9, %for.body.i.if.end14.i_crit_edge ]
  %12 = ptrtoint ptr %vid.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vid.i, align 8
  %call16.i = tail call fastcc i32 @__vlan_del(ptr noundef %vlan.050.i) #17
  %cmp.not.i = icmp eq ptr %.pn51.i, %vlan_list.i
  br i1 %cmp.not.i, label %for.end.i, label %if.end14.i.for.body.i_crit_edge

if.end14.i.for.body.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.end.i:                                        ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %v_start.1.i)
  %tobool22.not.i = icmp eq i16 %v_start.1.i, 0
  br i1 %tobool22.not.i, label %for.end.i.__vlan_flush.exit_crit_edge, label %if.then23.i

for.end.i.__vlan_flush.exit_crit_edge:            ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__vlan_flush.exit

if.then23.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @br_vlan_notify(ptr noundef %3, ptr noundef %port, i16 noundef zeroext %v_start.1.i, i16 noundef zeroext %13, i32 noundef 113) #17
  br label %__vlan_flush.exit

__vlan_flush.exit:                                ; preds = %if.then23.i, %for.end.i.__vlan_flush.exit_crit_edge, %nbp_vlan_group.exit.__vlan_flush.exit_crit_edge
  %14 = ptrtoint ptr %vlgrp.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr null, ptr %vlgrp.i, align 8
  tail call void @synchronize_rcu() #17
  %15 = ptrtoint ptr %vlan_list.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %vlan_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %16, %vlan_list.i
  br i1 %cmp.i.not.i, label %__vlan_flush.exit.__vlan_group_free.exit_crit_edge, label %do.end.i, !prof !170

__vlan_flush.exit.__vlan_group_free.exit_crit_edge: ; preds = %__vlan_flush.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %__vlan_group_free.exit

do.end.i:                                         ; preds = %__vlan_flush.exit
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 395, i32 noundef 9, ptr noundef null) #17
  br label %__vlan_group_free.exit

__vlan_group_free.exit:                           ; preds = %do.end.i, %__vlan_flush.exit.__vlan_group_free.exit_crit_edge
  tail call void @rhashtable_destroy(ptr noundef %1) #17
  tail call void @vlan_tunnel_deinit(ptr noundef %1) #17
  tail call void @kfree(ptr noundef %1) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @br_vlan_get_stats(ptr nocapture noundef readonly %v, ptr nocapture noundef %stats) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %stats, i32 0, i32 64)
  %call32 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %1 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call32, i32 %1)
  %cmp33 = icmp ult i32 %call32, %1
  br i1 %cmp33, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %stats1 = getelementptr inbounds %struct.net_bridge_vlan, ptr %v, i32 0, i32 6
  %rx_bytes11 = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %stats, i32 0, i32 1
  %tx_bytes13 = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %stats, i32 0, i32 3
  %tx_packets15 = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %stats, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %do.end8.for.body_crit_edge, %for.body.lr.ph
  %call34 = phi i32 [ %call32, %for.body.lr.ph ], [ %call, %do.end8.for.body_crit_edge ]
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  %4 = ptrtoint ptr %3 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call34
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %add = add i32 %6, %4
  %7 = inttoptr i32 %add to ptr
  %syncp = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %7, i32 0, i32 4
  %dep_map.c48.i.i.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %7, i32 0, i32 4, i32 0, i32 1
  %rx_bytes = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %7, i32 0, i32 1
  %tx_bytes = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %7, i32 0, i32 3
  %tx_packets = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %7, i32 0, i32 2
  br label %do.body3

do.body3:                                         ; preds = %u64_stats_fetch_begin_irq.exit.do.body3_crit_edge, %for.body
  %8 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !188
  %and.i.i.i.i = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %do.body24.critedge.i.i.i

if.then.i.i.i:                                    ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @trace_hardirqs_off() #17
  %9 = tail call ptr @llvm.returnaddress(i32 0) #17
  %10 = ptrtoint ptr %9 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %10) #17
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i.i, i32 noundef %10) #17
  tail call void @trace_hardirqs_on() #17
  br label %do.body24.i.i.i

do.body24.critedge.i.i.i:                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #19
  %11 = tail call ptr @llvm.returnaddress(i32 0) #17
  %12 = ptrtoint ptr %11 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %12) #17
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i.i, i32 noundef %12) #17
  br label %do.body24.i.i.i

do.body24.i.i.i:                                  ; preds = %do.body24.critedge.i.i.i, %if.then.i.i.i
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #17, !srcloc !189
  %and.i.i.i.i.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool32.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool32.not.i.i.i, label %if.then36.i.i.i, label %do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge, !prof !172

do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge: ; preds = %do.body24.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %seqcount_lockdep_reader_access.exit.i.i

if.then36.i.i.i:                                  ; preds = %do.body24.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @warn_bogus_irq_restore() #17
  br label %seqcount_lockdep_reader_access.exit.i.i

seqcount_lockdep_reader_access.exit.i.i:          ; preds = %if.then36.i.i.i, %do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %8) #17, !srcloc !190
  %14 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %syncp, align 4
  %and18.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i.i)
  %tobool.not19.i.i = icmp eq i32 %and18.i.i, 0
  br i1 %tobool.not19.i.i, label %seqcount_lockdep_reader_access.exit.i.i.u64_stats_fetch_begin_irq.exit_crit_edge, label %seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge

seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i
  br label %do.end.i.i

seqcount_lockdep_reader_access.exit.i.i.u64_stats_fetch_begin_irq.exit_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %u64_stats_fetch_begin_irq.exit

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !191
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #17, !srcloc !192
  %16 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %syncp, align 4
  %and.i.i = and i32 %17, 1
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.end.i.i.u64_stats_fetch_begin_irq.exit_crit_edge, label %do.end.i.i.do.end.i.i_crit_edge

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i.i

do.end.i.i.u64_stats_fetch_begin_irq.exit_crit_edge: ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %u64_stats_fetch_begin_irq.exit

u64_stats_fetch_begin_irq.exit:                   ; preds = %do.end.i.i.u64_stats_fetch_begin_irq.exit_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.u64_stats_fetch_begin_irq.exit_crit_edge
  %.lcssa.i.i = phi i32 [ %15, %seqcount_lockdep_reader_access.exit.i.i.u64_stats_fetch_begin_irq.exit_crit_edge ], [ %17, %do.end.i.i.u64_stats_fetch_begin_irq.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !193
  %18 = ptrtoint ptr %7 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %7, align 32
  %20 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %rx_bytes, align 8
  %22 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %tx_bytes, align 8
  %24 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %tx_packets, align 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !194
  %26 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %syncp, align 4
  %cmp.i.i.i.i.not = icmp eq i32 %27, %.lcssa.i.i
  br i1 %cmp.i.i.i.i.not, label %do.end8, label %u64_stats_fetch_begin_irq.exit.do.body3_crit_edge

u64_stats_fetch_begin_irq.exit.do.body3_crit_edge: ; preds = %u64_stats_fetch_begin_irq.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body3

do.end8:                                          ; preds = %u64_stats_fetch_begin_irq.exit
  %28 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %stats, align 32
  %add10 = add i64 %29, %19
  store i64 %add10, ptr %stats, align 32
  %30 = ptrtoint ptr %rx_bytes11 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %rx_bytes11, align 8
  %add12 = add i64 %31, %21
  store i64 %add12, ptr %rx_bytes11, align 8
  %32 = ptrtoint ptr %tx_bytes13 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %tx_bytes13, align 8
  %add14 = add i64 %33, %23
  store i64 %add14, ptr %tx_bytes13, align 8
  %34 = ptrtoint ptr %tx_packets15 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %tx_packets15, align 16
  %add16 = add i64 %35, %25
  store i64 %add16, ptr %tx_packets15, align 16
  %call = tail call i32 @cpumask_next(i32 noundef %call34, ptr noundef nonnull @__cpu_possible_mask) #23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %36 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %36
  br i1 %cmp, label %do.end8.for.body_crit_edge, label %do.end8.for.end_crit_edge

do.end8.for.end_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

do.end8.for.body_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end:                                          ; preds = %do.end8.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_vlan_get_pvid(ptr noundef %dev, ptr nocapture noundef writeonly %p_pvid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_is_locked() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b55 = load i1, ptr @br_vlan_get_pvid.__already_done, align 1
  br i1 %.b55, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !170

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @br_vlan_get_pvid.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1337, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 1337) #17
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %call37 = tail call fastcc ptr @br_port_get_check_rtnl(ptr noundef %dev)
  %tobool38.not = icmp eq ptr %call37, null
  br i1 %tobool38.not, label %if.else, label %if.then39

if.then39:                                        ; preds = %if.end29
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #17
  br i1 %call.i, label %if.then39.nbp_vlan_group.exit_crit_edge, label %land.lhs.true.i

if.then39.nbp_vlan_group.exit_crit_edge:          ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #19
  br label %nbp_vlan_group.exit

land.lhs.true.i:                                  ; preds = %if.then39
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.nbp_vlan_group.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.nbp_vlan_group.exit_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %nbp_vlan_group.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @nbp_vlan_group.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.nbp_vlan_group.exit_crit_edge, label %if.then.i

land.lhs.true2.i.nbp_vlan_group.exit_crit_edge:   ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %nbp_vlan_group.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @nbp_vlan_group.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 1477, ptr noundef nonnull @.str.10) #17
  br label %nbp_vlan_group.exit

nbp_vlan_group.exit:                              ; preds = %if.then.i, %land.lhs.true2.i.nbp_vlan_group.exit_crit_edge, %land.lhs.true.i.nbp_vlan_group.exit_crit_edge, %if.then39.nbp_vlan_group.exit_crit_edge
  %vlgrp.i = getelementptr inbounds %struct.net_bridge_port, ptr %call37, i32 0, i32 5
  br label %if.end47

if.else:                                          ; preds = %if.end29
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %0 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %1, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.else.cleanup_crit_edge, label %if.then42

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then42:                                        ; preds = %if.else
  %call.i56 = tail call zeroext i1 @lockdep_rtnl_is_held() #17
  br i1 %call.i56, label %if.then42.br_vlan_group.exit_crit_edge, label %land.lhs.true.i59

if.then42.br_vlan_group.exit_crit_edge:           ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_vlan_group.exit

land.lhs.true.i59:                                ; preds = %if.then42
  %call1.i57 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i57)
  %tobool.not.i58 = icmp eq i32 %call1.i57, 0
  br i1 %tobool.not.i58, label %land.lhs.true.i59.br_vlan_group.exit_crit_edge, label %land.lhs.true2.i61

land.lhs.true.i59.br_vlan_group.exit_crit_edge:   ; preds = %land.lhs.true.i59
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_vlan_group.exit

land.lhs.true2.i61:                               ; preds = %land.lhs.true.i59
  %.b4.i60 = load i1, ptr @br_vlan_group.__warned, align 1
  br i1 %.b4.i60, label %land.lhs.true2.i61.br_vlan_group.exit_crit_edge, label %if.then.i62

land.lhs.true2.i61.br_vlan_group.exit_crit_edge:  ; preds = %land.lhs.true2.i61
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_vlan_group.exit

if.then.i62:                                      ; preds = %land.lhs.true2.i61
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @br_vlan_group.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 1471, ptr noundef nonnull @.str.10) #17
  br label %br_vlan_group.exit

br_vlan_group.exit:                               ; preds = %if.then.i62, %land.lhs.true2.i61.br_vlan_group.exit_crit_edge, %land.lhs.true.i59.br_vlan_group.exit_crit_edge, %if.then42.br_vlan_group.exit_crit_edge
  %vlgrp.i63 = getelementptr i8, ptr %dev, i32 2408
  br label %if.end47

if.end47:                                         ; preds = %br_vlan_group.exit, %nbp_vlan_group.exit
  %vg.0.in = phi ptr [ %vlgrp.i, %nbp_vlan_group.exit ], [ %vlgrp.i63, %br_vlan_group.exit ]
  %2 = ptrtoint ptr %vg.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %vg.0 = load ptr, ptr %vg.0.in, align 4
  %tobool.not.i64 = icmp eq ptr %vg.0, null
  br i1 %tobool.not.i64, label %if.end47.br_get_pvid.exit_crit_edge, label %do.end.i

if.end47.br_get_pvid.exit_crit_edge:              ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_get_pvid.exit

do.end.i:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !173
  %pvid.i = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %vg.0, i32 0, i32 4
  %3 = ptrtoint ptr %pvid.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %pvid.i, align 2
  br label %br_get_pvid.exit

br_get_pvid.exit:                                 ; preds = %do.end.i, %if.end47.br_get_pvid.exit_crit_edge
  %retval.0.i = phi i16 [ %4, %do.end.i ], [ 0, %if.end47.br_get_pvid.exit_crit_edge ]
  %5 = ptrtoint ptr %p_pvid to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %retval.0.i, ptr %p_pvid, align 2
  br label %cleanup

cleanup:                                          ; preds = %br_get_pvid.exit, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %br_get_pvid.exit ], [ -22, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @br_port_get_check_rtnl(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %rx_handler.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 94
  %0 = ptrtoint ptr %rx_handler.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %rx_handler.i, align 32
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #17
  br i1 %call.i, label %entry.br_rx_handler_check_rtnl.exit_crit_edge, label %lor.lhs.false.i

entry.br_rx_handler_check_rtnl.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_rx_handler_check_rtnl.exit

lor.lhs.false.i:                                  ; preds = %entry
  %call2.i = tail call i32 @rcu_read_lock_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.br_rx_handler_check_rtnl.exit_crit_edge

lor.lhs.false.i.br_rx_handler_check_rtnl.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_rx_handler_check_rtnl.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.br_rx_handler_check_rtnl.exit_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.br_rx_handler_check_rtnl.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_rx_handler_check_rtnl.exit

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b12.i = load i1, ptr @br_rx_handler_check_rtnl.__warned, align 1
  br i1 %.b12.i, label %land.lhs.true5.i.br_rx_handler_check_rtnl.exit_crit_edge, label %if.then.i

land.lhs.true5.i.br_rx_handler_check_rtnl.exit_crit_edge: ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_rx_handler_check_rtnl.exit

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @br_rx_handler_check_rtnl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 855, ptr noundef nonnull @.str.9) #17
  br label %br_rx_handler_check_rtnl.exit

br_rx_handler_check_rtnl.exit:                    ; preds = %if.then.i, %land.lhs.true5.i.br_rx_handler_check_rtnl.exit_crit_edge, %land.lhs.true.i.br_rx_handler_check_rtnl.exit_crit_edge, %lor.lhs.false.i.br_rx_handler_check_rtnl.exit_crit_edge, %entry.br_rx_handler_check_rtnl.exit_crit_edge
  %call10.i = tail call ptr @br_get_rx_handler(ptr noundef %dev) #17
  %cmp.i = icmp eq ptr %1, %call10.i
  br i1 %cmp.i, label %cond.true, label %br_rx_handler_check_rtnl.exit.cond.end_crit_edge

br_rx_handler_check_rtnl.exit.cond.end_crit_edge: ; preds = %br_rx_handler_check_rtnl.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end

cond.true:                                        ; preds = %br_rx_handler_check_rtnl.exit
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %2 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %priv_flags.i.i, align 16
  %and.i.i = and i64 %3, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %cond.true.cond.end_crit_edge, label %cond.true.i

cond.true.cond.end_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end

cond.true.i:                                      ; preds = %cond.true
  %rx_handler_data.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 95
  %4 = ptrtoint ptr %rx_handler_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %rx_handler_data.i, align 4
  %call2.i3 = tail call zeroext i1 @lockdep_rtnl_is_held() #17
  br i1 %call2.i3, label %cond.true.i.cond.end_crit_edge, label %lor.lhs.false.i6

cond.true.i.cond.end_crit_edge:                   ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end

lor.lhs.false.i6:                                 ; preds = %cond.true.i
  %call3.i4 = tail call i32 @rcu_read_lock_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i4)
  %tobool.not.i5 = icmp eq i32 %call3.i4, 0
  br i1 %tobool.not.i5, label %land.lhs.true.i7, label %lor.lhs.false.i6.cond.end_crit_edge

lor.lhs.false.i6.cond.end_crit_edge:              ; preds = %lor.lhs.false.i6
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end

land.lhs.true.i7:                                 ; preds = %lor.lhs.false.i6
  %call4.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i7.cond.end_crit_edge, label %land.lhs.true6.i

land.lhs.true.i7.cond.end_crit_edge:              ; preds = %land.lhs.true.i7
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i7
  %.b12.i8 = load i1, ptr @br_port_get_rtnl_rcu.__warned, align 1
  br i1 %.b12.i8, label %land.lhs.true6.i.cond.end_crit_edge, label %if.then.i9

land.lhs.true6.i.cond.end_crit_edge:              ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end

if.then.i9:                                       ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @br_port_get_rtnl_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 428, ptr noundef nonnull @.str.9) #17
  br label %cond.end

cond.end:                                         ; preds = %if.then.i9, %land.lhs.true6.i.cond.end_crit_edge, %land.lhs.true.i7.cond.end_crit_edge, %lor.lhs.false.i6.cond.end_crit_edge, %cond.true.i.cond.end_crit_edge, %cond.true.cond.end_crit_edge, %br_rx_handler_check_rtnl.exit.cond.end_crit_edge
  %cond = phi ptr [ null, %br_rx_handler_check_rtnl.exit.cond.end_crit_edge ], [ null, %cond.true.cond.end_crit_edge ], [ %5, %if.then.i9 ], [ %5, %land.lhs.true6.i.cond.end_crit_edge ], [ %5, %land.lhs.true.i7.cond.end_crit_edge ], [ %5, %lor.lhs.false.i6.cond.end_crit_edge ], [ %5, %cond.true.i.cond.end_crit_edge ]
  ret ptr %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_vlan_get_pvid_rcu(ptr noundef %dev, ptr nocapture noundef writeonly %p_pvid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_handler.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 94
  %0 = ptrtoint ptr %rx_handler.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %rx_handler.i.i, align 32
  %call.i.i = tail call i32 @rcu_read_lock_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %entry.br_rx_handler_check_rcu.exit.i_crit_edge

entry.br_rx_handler_check_rcu.exit.i_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_rx_handler_check_rcu.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call2.i.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.br_rx_handler_check_rcu.exit.i_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i.i.br_rx_handler_check_rcu.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_rx_handler_check_rcu.exit.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  %.b11.i.i = load i1, ptr @br_rx_handler_check_rcu.__warned, align 1
  br i1 %.b11.i.i, label %land.lhs.true4.i.i.br_rx_handler_check_rcu.exit.i_crit_edge, label %if.then.i.i

land.lhs.true4.i.i.br_rx_handler_check_rcu.exit.i_crit_edge: ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_rx_handler_check_rcu.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @br_rx_handler_check_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 850, ptr noundef nonnull @.str.9) #17
  br label %br_rx_handler_check_rcu.exit.i

br_rx_handler_check_rcu.exit.i:                   ; preds = %if.then.i.i, %land.lhs.true4.i.i.br_rx_handler_check_rcu.exit.i_crit_edge, %land.lhs.true.i.i.br_rx_handler_check_rcu.exit.i_crit_edge, %entry.br_rx_handler_check_rcu.exit.i_crit_edge
  %call9.i.i = tail call ptr @br_get_rx_handler(ptr noundef %dev) #17
  %cmp.i.i = icmp eq ptr %1, %call9.i.i
  br i1 %cmp.i.i, label %cond.true.i, label %br_rx_handler_check_rcu.exit.i.if.else_crit_edge

br_rx_handler_check_rcu.exit.i.if.else_crit_edge: ; preds = %br_rx_handler_check_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else

cond.true.i:                                      ; preds = %br_rx_handler_check_rcu.exit.i
  %rx_handler_data.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 95
  %2 = ptrtoint ptr %rx_handler_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %rx_handler_data.i.i, align 4
  %call.i3.i = tail call i32 @rcu_read_lock_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3.i)
  %tobool.not.i4.i = icmp eq i32 %call.i3.i, 0
  br i1 %tobool.not.i4.i, label %land.lhs.true.i7.i, label %cond.true.i.br_port_get_check_rcu.exit_crit_edge

cond.true.i.br_port_get_check_rcu.exit_crit_edge: ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_port_get_check_rcu.exit

land.lhs.true.i7.i:                               ; preds = %cond.true.i
  %call2.i5.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i5.i)
  %tobool3.not.i6.i = icmp eq i32 %call2.i5.i, 0
  br i1 %tobool3.not.i6.i, label %land.lhs.true.i7.i.br_port_get_check_rcu.exit_crit_edge, label %land.lhs.true4.i8.i

land.lhs.true.i7.i.br_port_get_check_rcu.exit_crit_edge: ; preds = %land.lhs.true.i7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_port_get_check_rcu.exit

land.lhs.true4.i8.i:                              ; preds = %land.lhs.true.i7.i
  %.b9.i.i = load i1, ptr @br_port_get_rcu.__warned, align 1
  br i1 %.b9.i.i, label %land.lhs.true4.i8.i.br_port_get_check_rcu.exit_crit_edge, label %if.then.i9.i

land.lhs.true4.i8.i.br_port_get_check_rcu.exit_crit_edge: ; preds = %land.lhs.true4.i8.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_port_get_check_rcu.exit

if.then.i9.i:                                     ; preds = %land.lhs.true4.i8.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @br_port_get_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 416, ptr noundef nonnull @.str.9) #17
  br label %br_port_get_check_rcu.exit

br_port_get_check_rcu.exit:                       ; preds = %if.then.i9.i, %land.lhs.true4.i8.i.br_port_get_check_rcu.exit_crit_edge, %land.lhs.true.i7.i.br_port_get_check_rcu.exit_crit_edge, %cond.true.i.br_port_get_check_rcu.exit_crit_edge
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %br_port_get_check_rcu.exit.if.else_crit_edge, label %if.then

br_port_get_check_rcu.exit.if.else_crit_edge:     ; preds = %br_port_get_check_rcu.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else

if.then:                                          ; preds = %br_port_get_check_rcu.exit
  %vlgrp.i = getelementptr inbounds %struct.net_bridge_port, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %vlgrp.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %vlgrp.i, align 8
  %call.i = tail call i32 @rcu_read_lock_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end7

land.lhs.true.i:                                  ; preds = %if.then
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.end7_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.if.end7_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end7

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b9.i = load i1, ptr @nbp_vlan_group_rcu.__warned, align 1
  br i1 %.b9.i, label %land.lhs.true4.i.if.end7_crit_edge, label %land.lhs.true4.i.if.end7.sink.split_crit_edge

land.lhs.true4.i.if.end7.sink.split_crit_edge:    ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end7.sink.split

land.lhs.true4.i.if.end7_crit_edge:               ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end7

if.else:                                          ; preds = %br_port_get_check_rcu.exit.if.else_crit_edge, %br_rx_handler_check_rcu.exit.i.if.else_crit_edge
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %6 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %7, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.else.cleanup_crit_edge, label %if.then3

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then3:                                         ; preds = %if.else
  %vlgrp.i13 = getelementptr i8, ptr %dev, i32 2408
  %8 = ptrtoint ptr %vlgrp.i13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %vlgrp.i13, align 4
  %call.i14 = tail call i32 @rcu_read_lock_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14)
  %tobool.not.i15 = icmp eq i32 %call.i14, 0
  br i1 %tobool.not.i15, label %land.lhs.true.i18, label %if.then3.if.end7_crit_edge

if.then3.if.end7_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end7

land.lhs.true.i18:                                ; preds = %if.then3
  %call2.i16 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i16)
  %tobool3.not.i17 = icmp eq i32 %call2.i16, 0
  br i1 %tobool3.not.i17, label %land.lhs.true.i18.if.end7_crit_edge, label %land.lhs.true4.i20

land.lhs.true.i18.if.end7_crit_edge:              ; preds = %land.lhs.true.i18
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end7

land.lhs.true4.i20:                               ; preds = %land.lhs.true.i18
  %.b9.i19 = load i1, ptr @br_vlan_group_rcu.__warned, align 1
  br i1 %.b9.i19, label %land.lhs.true4.i20.if.end7_crit_edge, label %land.lhs.true4.i20.if.end7.sink.split_crit_edge

land.lhs.true4.i20.if.end7.sink.split_crit_edge:  ; preds = %land.lhs.true4.i20
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end7.sink.split

land.lhs.true4.i20.if.end7_crit_edge:             ; preds = %land.lhs.true4.i20
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end7

if.end7.sink.split:                               ; preds = %land.lhs.true4.i20.if.end7.sink.split_crit_edge, %land.lhs.true4.i.if.end7.sink.split_crit_edge
  %br_vlan_group_rcu.__warned.sink = phi ptr [ @nbp_vlan_group_rcu.__warned, %land.lhs.true4.i.if.end7.sink.split_crit_edge ], [ @br_vlan_group_rcu.__warned, %land.lhs.true4.i20.if.end7.sink.split_crit_edge ]
  %.sink = phi i32 [ 1489, %land.lhs.true4.i.if.end7.sink.split_crit_edge ], [ 1483, %land.lhs.true4.i20.if.end7.sink.split_crit_edge ]
  %vg.0.ph = phi ptr [ %5, %land.lhs.true4.i.if.end7.sink.split_crit_edge ], [ %9, %land.lhs.true4.i20.if.end7.sink.split_crit_edge ]
  %10 = ptrtoint ptr %br_vlan_group_rcu.__warned.sink to i32
  call void @__asan_store1_noabort(i32 %10)
  store i1 true, ptr %br_vlan_group_rcu.__warned.sink, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef %.sink, ptr noundef nonnull @.str.9) #17
  br label %if.end7

if.end7:                                          ; preds = %if.end7.sink.split, %land.lhs.true4.i20.if.end7_crit_edge, %land.lhs.true.i18.if.end7_crit_edge, %if.then3.if.end7_crit_edge, %land.lhs.true4.i.if.end7_crit_edge, %land.lhs.true.i.if.end7_crit_edge, %if.then.if.end7_crit_edge
  %vg.0 = phi ptr [ %5, %if.then.if.end7_crit_edge ], [ %5, %land.lhs.true.i.if.end7_crit_edge ], [ %5, %land.lhs.true4.i.if.end7_crit_edge ], [ %9, %if.then3.if.end7_crit_edge ], [ %9, %land.lhs.true.i18.if.end7_crit_edge ], [ %9, %land.lhs.true4.i20.if.end7_crit_edge ], [ %vg.0.ph, %if.end7.sink.split ]
  %tobool.not.i22 = icmp eq ptr %vg.0, null
  br i1 %tobool.not.i22, label %if.end7.br_get_pvid.exit_crit_edge, label %do.end.i

if.end7.br_get_pvid.exit_crit_edge:               ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_get_pvid.exit

do.end.i:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !173
  %pvid.i = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %vg.0, i32 0, i32 4
  %11 = ptrtoint ptr %pvid.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %pvid.i, align 2
  br label %br_get_pvid.exit

br_get_pvid.exit:                                 ; preds = %do.end.i, %if.end7.br_get_pvid.exit_crit_edge
  %retval.0.i = phi i16 [ %12, %do.end.i ], [ 0, %if.end7.br_get_pvid.exit_crit_edge ]
  %13 = ptrtoint ptr %p_pvid to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %retval.0.i, ptr %p_pvid, align 2
  br label %cleanup

cleanup:                                          ; preds = %br_get_pvid.exit, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %br_get_pvid.exit ], [ -22, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @br_vlan_fill_forward_path_pvid(ptr noundef %br, ptr nocapture noundef readonly %ctx, ptr nocapture noundef writeonly %path) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %num_vlans = getelementptr inbounds %struct.net_device_path_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %num_vlans to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_vlans, align 4
  %sub = add i32 %1, -1
  %2 = getelementptr inbounds %struct.net_device_path, ptr %path, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %2, align 4
  %options.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 4
  %4 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %options.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #17
  br i1 %call.i, label %if.end.br_vlan_group.exit_crit_edge, label %land.lhs.true.i

if.end.br_vlan_group.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_vlan_group.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.br_vlan_group.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.br_vlan_group.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_vlan_group.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @br_vlan_group.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.br_vlan_group.exit_crit_edge, label %if.then.i

land.lhs.true2.i.br_vlan_group.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_vlan_group.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @br_vlan_group.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 1471, ptr noundef nonnull @.str.10) #17
  br label %br_vlan_group.exit

br_vlan_group.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.br_vlan_group.exit_crit_edge, %land.lhs.true.i.br_vlan_group.exit_crit_edge, %if.end.br_vlan_group.exit_crit_edge
  %vlgrp.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 7
  %6 = ptrtoint ptr %vlgrp.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vlgrp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp = icmp sgt i32 %sub, -1
  br i1 %cmp, label %land.lhs.true, label %br_vlan_group.exit.if.else_crit_edge

br_vlan_group.exit.if.else_crit_edge:             ; preds = %br_vlan_group.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else

land.lhs.true:                                    ; preds = %br_vlan_group.exit
  %proto = getelementptr %struct.net_device_path_ctx, ptr %ctx, i32 0, i32 3, i32 %sub, i32 1
  %8 = ptrtoint ptr %proto to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %proto, align 2
  %vlan_proto = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 5
  %10 = ptrtoint ptr %vlan_proto to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %vlan_proto, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %11)
  %cmp3 = icmp eq i16 %9, %11
  br i1 %cmp3, label %if.then5, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx = getelementptr %struct.net_device_path_ctx, ptr %ctx, i32 0, i32 3, i32 %sub
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx, align 4
  br label %if.end10

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %br_vlan_group.exit.if.else_crit_edge
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %2, align 4
  %tobool.not.i25 = icmp eq ptr %7, null
  br i1 %tobool.not.i25, label %if.else.if.end10_crit_edge, label %do.end.i

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end10

do.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !173
  %pvid.i = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %7, i32 0, i32 4
  %15 = ptrtoint ptr %pvid.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %pvid.i, align 2
  br label %if.end10

if.end10:                                         ; preds = %do.end.i, %if.else.if.end10_crit_edge, %if.then5
  %vid.0 = phi i16 [ %13, %if.then5 ], [ %16, %do.end.i ], [ 0, %if.else.if.end10_crit_edge ]
  %vlan_id = getelementptr inbounds %struct.net_device_path, ptr %path, i32 0, i32 2, i32 0, i32 1
  %17 = ptrtoint ptr %vlan_id to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %vid.0, ptr %vlan_id, align 4
  %vlan_proto11 = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 5
  %18 = ptrtoint ptr %vlan_proto11 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %vlan_proto11, align 4
  %vlan_proto12 = getelementptr inbounds %struct.net_device_path, ptr %path, i32 0, i32 2, i32 0, i32 2
  %20 = ptrtoint ptr %vlan_proto12 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %vlan_proto12, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_vlan_fill_forward_path_mode(ptr noundef %br, ptr noundef %dst, ptr nocapture noundef %path) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %options.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 4
  %0 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %options.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %vlgrp.i = getelementptr inbounds %struct.net_bridge_port, ptr %dst, i32 0, i32 5
  %2 = ptrtoint ptr %vlgrp.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %vlgrp.i, align 8
  %call.i = tail call i32 @rcu_read_lock_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end.nbp_vlan_group_rcu.exit_crit_edge

if.end.nbp_vlan_group_rcu.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %nbp_vlan_group_rcu.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.nbp_vlan_group_rcu.exit_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.nbp_vlan_group_rcu.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %nbp_vlan_group_rcu.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b9.i = load i1, ptr @nbp_vlan_group_rcu.__warned, align 1
  br i1 %.b9.i, label %land.lhs.true4.i.nbp_vlan_group_rcu.exit_crit_edge, label %if.then.i

land.lhs.true4.i.nbp_vlan_group_rcu.exit_crit_edge: ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %nbp_vlan_group_rcu.exit

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @nbp_vlan_group_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 1489, ptr noundef nonnull @.str.9) #17
  br label %nbp_vlan_group_rcu.exit

nbp_vlan_group_rcu.exit:                          ; preds = %if.then.i, %land.lhs.true4.i.nbp_vlan_group_rcu.exit_crit_edge, %land.lhs.true.i.nbp_vlan_group_rcu.exit_crit_edge, %if.end.nbp_vlan_group_rcu.exit_crit_edge
  %4 = getelementptr inbounds %struct.net_device_path, ptr %path, i32 0, i32 2
  %tobool.not.i30 = icmp eq ptr %3, null
  br i1 %tobool.not.i30, label %nbp_vlan_group_rcu.exit.cleanup_crit_edge, label %br_vlan_find.exit

nbp_vlan_group_rcu.exit.cleanup_crit_edge:        ; preds = %nbp_vlan_group_rcu.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

br_vlan_find.exit:                                ; preds = %nbp_vlan_group_rcu.exit
  %vlan_id = getelementptr inbounds %struct.net_device_path, ptr %path, i32 0, i32 2, i32 0, i32 1
  %5 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %vlan_id, align 4
  %call.i31 = tail call fastcc ptr @br_vlan_lookup(ptr noundef nonnull %3, i16 noundef zeroext %6) #17
  %tobool3.not = icmp eq ptr %call.i31, null
  br i1 %tobool3.not, label %br_vlan_find.exit.cleanup_crit_edge, label %lor.lhs.false

br_vlan_find.exit.cleanup_crit_edge:              ; preds = %br_vlan_find.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false:                                    ; preds = %br_vlan_find.exit
  %flags.i.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %call.i31, i32 0, i32 3
  %7 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %flags.i.i, align 2
  %9 = and i16 %8, 33
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %9)
  %.not = icmp eq i16 %9, 1
  br i1 %.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end6

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false
  %10 = and i16 %8, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool7.not = icmp eq i16 %10, 0
  br i1 %tobool7.not, label %if.end6.cleanup_crit_edge, label %if.end9

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp = icmp eq i32 %12, 1
  br i1 %cmp, label %if.end9.cleanup.sink.split_crit_edge, label %if.else

if.end9.cleanup.sink.split_crit_edge:             ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19
  %priv_flags = getelementptr inbounds %struct.net_bridge_vlan, ptr %call.i31, i32 0, i32 4
  %13 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %priv_flags, align 4
  %15 = and i16 %14, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool15.not = icmp eq i16 %15, 0
  %. = select i1 %tobool15.not, i32 2, i32 3
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else, %if.end9.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 0, %if.end9.cleanup.sink.split_crit_edge ], [ %., %if.else ]
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %.sink, ptr %4, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end6.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %br_vlan_find.exit.cleanup_crit_edge, %nbp_vlan_group_rcu.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %br_vlan_find.exit.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ], [ -22, %nbp_vlan_group_rcu.exit.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_vlan_get_info(ptr noundef %dev, i16 noundef zeroext %vid, ptr nocapture noundef %p_vinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_is_locked() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b75 = load i1, ptr @br_vlan_get_info.__already_done, align 1
  br i1 %.b75, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !170

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @br_vlan_get_info.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1431, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 1431) #17
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %call37 = tail call fastcc ptr @br_port_get_check_rtnl(ptr noundef %dev)
  %tobool38.not = icmp eq ptr %call37, null
  br i1 %tobool38.not, label %if.else, label %if.then39

if.then39:                                        ; preds = %if.end29
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #17
  br i1 %call.i, label %if.then39.nbp_vlan_group.exit_crit_edge, label %land.lhs.true.i

if.then39.nbp_vlan_group.exit_crit_edge:          ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #19
  br label %nbp_vlan_group.exit

land.lhs.true.i:                                  ; preds = %if.then39
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.nbp_vlan_group.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.nbp_vlan_group.exit_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %nbp_vlan_group.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @nbp_vlan_group.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.nbp_vlan_group.exit_crit_edge, label %if.then.i

land.lhs.true2.i.nbp_vlan_group.exit_crit_edge:   ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %nbp_vlan_group.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @nbp_vlan_group.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 1477, ptr noundef nonnull @.str.10) #17
  br label %nbp_vlan_group.exit

nbp_vlan_group.exit:                              ; preds = %if.then.i, %land.lhs.true2.i.nbp_vlan_group.exit_crit_edge, %land.lhs.true.i.nbp_vlan_group.exit_crit_edge, %if.then39.nbp_vlan_group.exit_crit_edge
  %vlgrp.i = getelementptr inbounds %struct.net_bridge_port, ptr %call37, i32 0, i32 5
  br label %if.end47

if.else:                                          ; preds = %if.end29
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %0 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %1, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.else.cleanup_crit_edge, label %if.then42

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then42:                                        ; preds = %if.else
  %call.i76 = tail call zeroext i1 @lockdep_rtnl_is_held() #17
  br i1 %call.i76, label %if.then42.br_vlan_group.exit_crit_edge, label %land.lhs.true.i79

if.then42.br_vlan_group.exit_crit_edge:           ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_vlan_group.exit

land.lhs.true.i79:                                ; preds = %if.then42
  %call1.i77 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i77)
  %tobool.not.i78 = icmp eq i32 %call1.i77, 0
  br i1 %tobool.not.i78, label %land.lhs.true.i79.br_vlan_group.exit_crit_edge, label %land.lhs.true2.i81

land.lhs.true.i79.br_vlan_group.exit_crit_edge:   ; preds = %land.lhs.true.i79
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_vlan_group.exit

land.lhs.true2.i81:                               ; preds = %land.lhs.true.i79
  %.b4.i80 = load i1, ptr @br_vlan_group.__warned, align 1
  br i1 %.b4.i80, label %land.lhs.true2.i81.br_vlan_group.exit_crit_edge, label %if.then.i82

land.lhs.true2.i81.br_vlan_group.exit_crit_edge:  ; preds = %land.lhs.true2.i81
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_vlan_group.exit

if.then.i82:                                      ; preds = %land.lhs.true2.i81
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @br_vlan_group.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 1471, ptr noundef nonnull @.str.10) #17
  br label %br_vlan_group.exit

br_vlan_group.exit:                               ; preds = %if.then.i82, %land.lhs.true2.i81.br_vlan_group.exit_crit_edge, %land.lhs.true.i79.br_vlan_group.exit_crit_edge, %if.then42.br_vlan_group.exit_crit_edge
  %vlgrp.i83 = getelementptr i8, ptr %dev, i32 2408
  br label %if.end47

if.end47:                                         ; preds = %br_vlan_group.exit, %nbp_vlan_group.exit
  %vg.0.in = phi ptr [ %vlgrp.i, %nbp_vlan_group.exit ], [ %vlgrp.i83, %br_vlan_group.exit ]
  %2 = ptrtoint ptr %vg.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %vg.0 = load ptr, ptr %vg.0.in, align 4
  %tobool.not.i84 = icmp eq ptr %vg.0, null
  br i1 %tobool.not.i84, label %if.end47.cleanup_crit_edge, label %br_vlan_find.exit

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

br_vlan_find.exit:                                ; preds = %if.end47
  %call.i85 = tail call fastcc ptr @br_vlan_lookup(ptr noundef nonnull %vg.0, i16 noundef zeroext %vid) #17
  %tobool49.not = icmp eq ptr %call.i85, null
  br i1 %tobool49.not, label %br_vlan_find.exit.cleanup_crit_edge, label %br_get_pvid.exit

br_vlan_find.exit.cleanup_crit_edge:              ; preds = %br_vlan_find.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

br_get_pvid.exit:                                 ; preds = %br_vlan_find.exit
  %vid52 = getelementptr inbounds %struct.bridge_vlan_info, ptr %p_vinfo, i32 0, i32 1
  %3 = ptrtoint ptr %vid52 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %vid, ptr %vid52, align 2
  %flags = getelementptr inbounds %struct.net_bridge_vlan, ptr %call.i85, i32 0, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %flags, align 2
  %6 = ptrtoint ptr %p_vinfo to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %p_vinfo, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !173
  %pvid.i = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %vg.0, i32 0, i32 4
  %7 = ptrtoint ptr %pvid.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %pvid.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %vid)
  %cmp = icmp eq i16 %8, %vid
  br i1 %cmp, label %if.then57, label %br_get_pvid.exit.cleanup_crit_edge

br_get_pvid.exit.cleanup_crit_edge:               ; preds = %br_get_pvid.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then57:                                        ; preds = %br_get_pvid.exit
  call void @__sanitizer_cov_trace_pc() #19
  %9 = ptrtoint ptr %p_vinfo to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %p_vinfo, align 2
  %11 = or i16 %10, 2
  store i16 %11, ptr %p_vinfo, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then57, %br_get_pvid.exit.cleanup_crit_edge, %br_vlan_find.exit.cleanup_crit_edge, %if.end47.cleanup_crit_edge, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.else.cleanup_crit_edge ], [ -2, %br_vlan_find.exit.cleanup_crit_edge ], [ 0, %if.then57 ], [ 0, %br_get_pvid.exit.cleanup_crit_edge ], [ -2, %if.end47.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_vlan_get_info_rcu(ptr noundef %dev, i16 noundef zeroext %vid, ptr nocapture noundef %p_vinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_handler.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 94
  %0 = ptrtoint ptr %rx_handler.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %rx_handler.i.i, align 32
  %call.i.i = tail call i32 @rcu_read_lock_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %entry.br_rx_handler_check_rcu.exit.i_crit_edge

entry.br_rx_handler_check_rcu.exit.i_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_rx_handler_check_rcu.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call2.i.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.br_rx_handler_check_rcu.exit.i_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i.i.br_rx_handler_check_rcu.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_rx_handler_check_rcu.exit.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  %.b11.i.i = load i1, ptr @br_rx_handler_check_rcu.__warned, align 1
  br i1 %.b11.i.i, label %land.lhs.true4.i.i.br_rx_handler_check_rcu.exit.i_crit_edge, label %if.then.i.i

land.lhs.true4.i.i.br_rx_handler_check_rcu.exit.i_crit_edge: ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_rx_handler_check_rcu.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @br_rx_handler_check_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 850, ptr noundef nonnull @.str.9) #17
  br label %br_rx_handler_check_rcu.exit.i

br_rx_handler_check_rcu.exit.i:                   ; preds = %if.then.i.i, %land.lhs.true4.i.i.br_rx_handler_check_rcu.exit.i_crit_edge, %land.lhs.true.i.i.br_rx_handler_check_rcu.exit.i_crit_edge, %entry.br_rx_handler_check_rcu.exit.i_crit_edge
  %call9.i.i = tail call ptr @br_get_rx_handler(ptr noundef %dev) #17
  %cmp.i.i = icmp eq ptr %1, %call9.i.i
  br i1 %cmp.i.i, label %cond.true.i, label %br_rx_handler_check_rcu.exit.i.if.else_crit_edge

br_rx_handler_check_rcu.exit.i.if.else_crit_edge: ; preds = %br_rx_handler_check_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else

cond.true.i:                                      ; preds = %br_rx_handler_check_rcu.exit.i
  %rx_handler_data.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 95
  %2 = ptrtoint ptr %rx_handler_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %rx_handler_data.i.i, align 4
  %call.i3.i = tail call i32 @rcu_read_lock_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3.i)
  %tobool.not.i4.i = icmp eq i32 %call.i3.i, 0
  br i1 %tobool.not.i4.i, label %land.lhs.true.i7.i, label %cond.true.i.br_port_get_check_rcu.exit_crit_edge

cond.true.i.br_port_get_check_rcu.exit_crit_edge: ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_port_get_check_rcu.exit

land.lhs.true.i7.i:                               ; preds = %cond.true.i
  %call2.i5.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i5.i)
  %tobool3.not.i6.i = icmp eq i32 %call2.i5.i, 0
  br i1 %tobool3.not.i6.i, label %land.lhs.true.i7.i.br_port_get_check_rcu.exit_crit_edge, label %land.lhs.true4.i8.i

land.lhs.true.i7.i.br_port_get_check_rcu.exit_crit_edge: ; preds = %land.lhs.true.i7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_port_get_check_rcu.exit

land.lhs.true4.i8.i:                              ; preds = %land.lhs.true.i7.i
  %.b9.i.i = load i1, ptr @br_port_get_rcu.__warned, align 1
  br i1 %.b9.i.i, label %land.lhs.true4.i8.i.br_port_get_check_rcu.exit_crit_edge, label %if.then.i9.i

land.lhs.true4.i8.i.br_port_get_check_rcu.exit_crit_edge: ; preds = %land.lhs.true4.i8.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_port_get_check_rcu.exit

if.then.i9.i:                                     ; preds = %land.lhs.true4.i8.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @br_port_get_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 416, ptr noundef nonnull @.str.9) #17
  br label %br_port_get_check_rcu.exit

br_port_get_check_rcu.exit:                       ; preds = %if.then.i9.i, %land.lhs.true4.i8.i.br_port_get_check_rcu.exit_crit_edge, %land.lhs.true.i7.i.br_port_get_check_rcu.exit_crit_edge, %cond.true.i.br_port_get_check_rcu.exit_crit_edge
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %br_port_get_check_rcu.exit.if.else_crit_edge, label %if.then

br_port_get_check_rcu.exit.if.else_crit_edge:     ; preds = %br_port_get_check_rcu.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else

if.then:                                          ; preds = %br_port_get_check_rcu.exit
  %vlgrp.i = getelementptr inbounds %struct.net_bridge_port, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %vlgrp.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %vlgrp.i, align 8
  %call.i = tail call i32 @rcu_read_lock_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end7

land.lhs.true.i:                                  ; preds = %if.then
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.end7_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.if.end7_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end7

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b9.i = load i1, ptr @nbp_vlan_group_rcu.__warned, align 1
  br i1 %.b9.i, label %land.lhs.true4.i.if.end7_crit_edge, label %land.lhs.true4.i.if.end7.sink.split_crit_edge

land.lhs.true4.i.if.end7.sink.split_crit_edge:    ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end7.sink.split

land.lhs.true4.i.if.end7_crit_edge:               ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end7

if.else:                                          ; preds = %br_port_get_check_rcu.exit.if.else_crit_edge, %br_rx_handler_check_rcu.exit.i.if.else_crit_edge
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %6 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %7, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.else.cleanup_crit_edge, label %if.then3

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then3:                                         ; preds = %if.else
  %vlgrp.i33 = getelementptr i8, ptr %dev, i32 2408
  %8 = ptrtoint ptr %vlgrp.i33 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %vlgrp.i33, align 4
  %call.i34 = tail call i32 @rcu_read_lock_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i34)
  %tobool.not.i35 = icmp eq i32 %call.i34, 0
  br i1 %tobool.not.i35, label %land.lhs.true.i38, label %if.then3.if.end7_crit_edge

if.then3.if.end7_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end7

land.lhs.true.i38:                                ; preds = %if.then3
  %call2.i36 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i36)
  %tobool3.not.i37 = icmp eq i32 %call2.i36, 0
  br i1 %tobool3.not.i37, label %land.lhs.true.i38.if.end7_crit_edge, label %land.lhs.true4.i40

land.lhs.true.i38.if.end7_crit_edge:              ; preds = %land.lhs.true.i38
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end7

land.lhs.true4.i40:                               ; preds = %land.lhs.true.i38
  %.b9.i39 = load i1, ptr @br_vlan_group_rcu.__warned, align 1
  br i1 %.b9.i39, label %land.lhs.true4.i40.if.end7_crit_edge, label %land.lhs.true4.i40.if.end7.sink.split_crit_edge

land.lhs.true4.i40.if.end7.sink.split_crit_edge:  ; preds = %land.lhs.true4.i40
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end7.sink.split

land.lhs.true4.i40.if.end7_crit_edge:             ; preds = %land.lhs.true4.i40
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end7

if.end7.sink.split:                               ; preds = %land.lhs.true4.i40.if.end7.sink.split_crit_edge, %land.lhs.true4.i.if.end7.sink.split_crit_edge
  %br_vlan_group_rcu.__warned.sink = phi ptr [ @nbp_vlan_group_rcu.__warned, %land.lhs.true4.i.if.end7.sink.split_crit_edge ], [ @br_vlan_group_rcu.__warned, %land.lhs.true4.i40.if.end7.sink.split_crit_edge ]
  %.sink = phi i32 [ 1489, %land.lhs.true4.i.if.end7.sink.split_crit_edge ], [ 1483, %land.lhs.true4.i40.if.end7.sink.split_crit_edge ]
  %vg.0.ph = phi ptr [ %5, %land.lhs.true4.i.if.end7.sink.split_crit_edge ], [ %9, %land.lhs.true4.i40.if.end7.sink.split_crit_edge ]
  %10 = ptrtoint ptr %br_vlan_group_rcu.__warned.sink to i32
  call void @__asan_store1_noabort(i32 %10)
  store i1 true, ptr %br_vlan_group_rcu.__warned.sink, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef %.sink, ptr noundef nonnull @.str.9) #17
  br label %if.end7

if.end7:                                          ; preds = %if.end7.sink.split, %land.lhs.true4.i40.if.end7_crit_edge, %land.lhs.true.i38.if.end7_crit_edge, %if.then3.if.end7_crit_edge, %land.lhs.true4.i.if.end7_crit_edge, %land.lhs.true.i.if.end7_crit_edge, %if.then.if.end7_crit_edge
  %vg.0 = phi ptr [ %5, %if.then.if.end7_crit_edge ], [ %5, %land.lhs.true.i.if.end7_crit_edge ], [ %5, %land.lhs.true4.i.if.end7_crit_edge ], [ %9, %if.then3.if.end7_crit_edge ], [ %9, %land.lhs.true.i38.if.end7_crit_edge ], [ %9, %land.lhs.true4.i40.if.end7_crit_edge ], [ %vg.0.ph, %if.end7.sink.split ]
  %tobool.not.i42 = icmp eq ptr %vg.0, null
  br i1 %tobool.not.i42, label %if.end7.cleanup_crit_edge, label %br_vlan_find.exit

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

br_vlan_find.exit:                                ; preds = %if.end7
  %call.i43 = tail call fastcc ptr @br_vlan_lookup(ptr noundef nonnull %vg.0, i16 noundef zeroext %vid) #17
  %tobool9.not = icmp eq ptr %call.i43, null
  br i1 %tobool9.not, label %br_vlan_find.exit.cleanup_crit_edge, label %br_get_pvid.exit

br_vlan_find.exit.cleanup_crit_edge:              ; preds = %br_vlan_find.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

br_get_pvid.exit:                                 ; preds = %br_vlan_find.exit
  %vid12 = getelementptr inbounds %struct.bridge_vlan_info, ptr %p_vinfo, i32 0, i32 1
  %11 = ptrtoint ptr %vid12 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %vid, ptr %vid12, align 2
  %flags = getelementptr inbounds %struct.net_bridge_vlan, ptr %call.i43, i32 0, i32 3
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %flags, align 2
  %14 = ptrtoint ptr %p_vinfo to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %p_vinfo, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !173
  %pvid.i = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %vg.0, i32 0, i32 4
  %15 = ptrtoint ptr %pvid.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %pvid.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %16, i16 %vid)
  %cmp = icmp eq i16 %16, %vid
  br i1 %cmp, label %if.then17, label %br_get_pvid.exit.cleanup_crit_edge

br_get_pvid.exit.cleanup_crit_edge:               ; preds = %br_get_pvid.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then17:                                        ; preds = %br_get_pvid.exit
  call void @__sanitizer_cov_trace_pc() #19
  %17 = ptrtoint ptr %p_vinfo to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %p_vinfo, align 2
  %19 = or i16 %18, 2
  store i16 %19, ptr %p_vinfo, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %br_get_pvid.exit.cleanup_crit_edge, %br_vlan_find.exit.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.else.cleanup_crit_edge ], [ -2, %br_vlan_find.exit.cleanup_crit_edge ], [ 0, %if.then17 ], [ 0, %br_get_pvid.exit.cleanup_crit_edge ], [ -2, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_vlan_bridge_event(ptr noundef %dev, i32 noundef %event, ptr nocapture noundef readonly %ptr) local_unnamed_addr #0 align 64 {
entry:
  %data.i = alloca %struct.br_vlan_link_state_walk_data, align 4
  %priv.i = alloca %struct.netdev_nested_priv, align 8
  %changed = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %changed) #17
  %0 = ptrtoint ptr %changed to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %changed, align 1
  %1 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %event, label %entry.if.end13_crit_edge [
    i32 5, label %sw.bb
    i32 6, label %sw.bb2
    i32 21, label %sw.bb5
    i32 4, label %entry.sw.bb7_crit_edge
    i32 1, label %entry.sw.bb7_crit_edge29
  ]

entry.sw.bb7_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb7

entry.sw.bb7_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb7

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %default_pvid = getelementptr i8, ptr %dev, i32 2406
  %2 = ptrtoint ptr %default_pvid to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %default_pvid, align 2
  %call1 = call i32 @br_vlan_add(ptr noundef %add.ptr.i, i16 noundef zeroext %3, i16 noundef zeroext 38, ptr noundef nonnull %changed, ptr noundef null)
  br label %sw.epilogthread-pre-split

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %default_pvid3 = getelementptr i8, ptr %dev, i32 2406
  %4 = ptrtoint ptr %default_pvid3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %default_pvid3, align 2
  %call4 = tail call i32 @br_vlan_delete(ptr noundef %add.ptr.i, i16 noundef zeroext %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  %frombool = zext i1 %tobool.not to i8
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %upper_dev = getelementptr inbounds %struct.netdev_notifier_changeupper_info, ptr %ptr, i32 0, i32 1
  %6 = ptrtoint ptr %upper_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %upper_dev, align 4
  %linking = getelementptr inbounds %struct.netdev_notifier_changeupper_info, ptr %ptr, i32 0, i32 3
  %8 = ptrtoint ptr %linking to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %linking, align 1, !range !176
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool6.not = icmp eq i8 %9, 0
  %priv_flags.i.i.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 15
  %10 = ptrtoint ptr %priv_flags.i.i.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %priv_flags.i.i.i, align 16
  %and.i.i.i = and i64 %11, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i64 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sw.bb5.sw.epilogthread-pre-split_crit_edge, label %br_vlan_is_bind_vlan_dev.exit.i

sw.bb5.sw.epilogthread-pre-split_crit_edge:       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilogthread-pre-split

br_vlan_is_bind_vlan_dev.exit.i:                  ; preds = %sw.bb5
  %flags.i.i = getelementptr i8, ptr %7, i32 2412
  %12 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %flags.i.i, align 4
  %14 = and i16 %13, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool.not.i = icmp eq i16 %14, 0
  br i1 %tobool.not.i, label %br_vlan_is_bind_vlan_dev.exit.i.sw.epilogthread-pre-split_crit_edge, label %if.end.i

br_vlan_is_bind_vlan_dev.exit.i.sw.epilogthread-pre-split_crit_edge: ; preds = %br_vlan_is_bind_vlan_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilogthread-pre-split

if.end.i:                                         ; preds = %br_vlan_is_bind_vlan_dev.exit.i
  br i1 %tobool6.not, label %if.else.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @br_vlan_set_vlan_dev_state(ptr noundef %add.ptr.i, ptr noundef %7) #17
  br label %cleanup.sink.split.i

if.else.i:                                        ; preds = %if.end.i
  %15 = tail call i32 @llvm.read_register.i32(metadata !155) #17
  %and.i.i.i.i.i.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %18, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !178
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #17
  %call.i.i.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i.i.i, label %if.else.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.else.i.rcu_read_lock.exit.i.i_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.else.i
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 696, ptr noundef nonnull @.str.19) #17
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %if.else.i.rcu_read_lock.exit.i.i_crit_edge
  %call.i.i = tail call i32 @netdev_walk_all_upper_dev_rcu(ptr noundef %dev, ptr noundef nonnull @br_vlan_is_bind_vlan_dev_fn, ptr noundef null) #17
  %call.i2.i.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i2.i.i, label %rcu_read_lock.exit.i.i.br_vlan_has_upper_bind_vlan_dev.exit.i_crit_edge, label %land.lhs.true.i5.i.i

rcu_read_lock.exit.i.i.br_vlan_has_upper_bind_vlan_dev.exit.i_crit_edge: ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_vlan_has_upper_bind_vlan_dev.exit.i

land.lhs.true.i5.i.i:                             ; preds = %rcu_read_lock.exit.i.i
  %call1.i3.i.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3.i.i)
  %tobool.not.i4.i.i = icmp eq i32 %call1.i3.i.i, 0
  br i1 %tobool.not.i4.i.i, label %land.lhs.true.i5.i.i.br_vlan_has_upper_bind_vlan_dev.exit.i_crit_edge, label %land.lhs.true2.i7.i.i

land.lhs.true.i5.i.i.br_vlan_has_upper_bind_vlan_dev.exit.i_crit_edge: ; preds = %land.lhs.true.i5.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_vlan_has_upper_bind_vlan_dev.exit.i

land.lhs.true2.i7.i.i:                            ; preds = %land.lhs.true.i5.i.i
  %.b4.i6.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6.i.i, label %land.lhs.true2.i7.i.i.br_vlan_has_upper_bind_vlan_dev.exit.i_crit_edge, label %if.then.i8.i.i

land.lhs.true2.i7.i.i.br_vlan_has_upper_bind_vlan_dev.exit.i_crit_edge: ; preds = %land.lhs.true2.i7.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_vlan_has_upper_bind_vlan_dev.exit.i

if.then.i8.i.i:                                   ; preds = %land.lhs.true2.i7.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 724, ptr noundef nonnull @.str.20) #17
  br label %br_vlan_has_upper_bind_vlan_dev.exit.i

br_vlan_has_upper_bind_vlan_dev.exit.i:           ; preds = %if.then.i8.i.i, %land.lhs.true2.i7.i.i.br_vlan_has_upper_bind_vlan_dev.exit.i_crit_edge, %land.lhs.true.i5.i.i.br_vlan_has_upper_bind_vlan_dev.exit.i_crit_edge, %rcu_read_lock.exit.i.i.br_vlan_has_upper_bind_vlan_dev.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !179
  %19 = tail call i32 @llvm.read_register.i32(metadata !155) #17
  %and.i.i.i.i.i9.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i9.i.i to ptr
  %preempt_count.i.i.i.i10.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i.i.i10.i.i, align 4
  %sub.i.i.i.i.i = add i32 %22, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i10.i.i, align 4
  tail call void @rcu_read_unlock_strict() #17
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.i.i = icmp ne i32 %call.i.i, 0
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %br_vlan_has_upper_bind_vlan_dev.exit.i, %if.then3.i
  %.sink.i = phi i1 [ true, %if.then3.i ], [ %tobool.i.i, %br_vlan_has_upper_bind_vlan_dev.exit.i ]
  tail call void @br_opt_toggle(ptr noundef %add.ptr.i, i32 noundef 14, i1 noundef zeroext %.sink.i) #17
  br label %sw.epilogthread-pre-split

sw.bb7:                                           ; preds = %entry.sw.bb7_crit_edge, %entry.sw.bb7_crit_edge29
  %options.i = getelementptr i8, ptr %dev, i32 2400
  %23 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %options.i, align 4
  %25 = and i32 %24, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool9.not = icmp eq i32 %25, 0
  br i1 %tobool9.not, label %sw.bb7.sw.epilogthread-pre-split_crit_edge, label %if.end

sw.bb7.sw.epilogthread-pre-split_crit_edge:       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilogthread-pre-split

if.end:                                           ; preds = %sw.bb7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i) #17
  %26 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %add.ptr.i, ptr %data.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %priv.i) #17
  %27 = ptrtoint ptr %priv.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 72057594037927935, ptr %priv.i, align 8, !annotation !175
  %data2.i = getelementptr inbounds %struct.netdev_nested_priv, ptr %priv.i, i32 0, i32 1
  %28 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %data.i, ptr %data2.i, align 4
  %29 = call i32 @llvm.read_register.i32(metadata !155) #17
  %and.i.i.i.i.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %32, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !178
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #17
  %call.i.i24 = call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i.i24, label %if.end.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.rcu_read_lock.exit.i_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 696, ptr noundef nonnull @.str.19) #17
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end.rcu_read_lock.exit.i_crit_edge
  %call.i = call i32 @netdev_walk_all_upper_dev_rcu(ptr noundef %dev, ptr noundef nonnull @br_vlan_link_state_change_fn, ptr noundef nonnull %priv.i) #17
  %call.i3.i = call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i3.i, label %rcu_read_lock.exit.i.br_vlan_link_state_change.exit_crit_edge, label %land.lhs.true.i6.i

rcu_read_lock.exit.i.br_vlan_link_state_change.exit_crit_edge: ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_vlan_link_state_change.exit

land.lhs.true.i6.i:                               ; preds = %rcu_read_lock.exit.i
  %call1.i4.i = call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4.i)
  %tobool.not.i5.i = icmp eq i32 %call1.i4.i, 0
  br i1 %tobool.not.i5.i, label %land.lhs.true.i6.i.br_vlan_link_state_change.exit_crit_edge, label %land.lhs.true2.i8.i

land.lhs.true.i6.i.br_vlan_link_state_change.exit_crit_edge: ; preds = %land.lhs.true.i6.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_vlan_link_state_change.exit

land.lhs.true2.i8.i:                              ; preds = %land.lhs.true.i6.i
  %.b4.i7.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7.i, label %land.lhs.true2.i8.i.br_vlan_link_state_change.exit_crit_edge, label %if.then.i9.i

land.lhs.true2.i8.i.br_vlan_link_state_change.exit_crit_edge: ; preds = %land.lhs.true2.i8.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_vlan_link_state_change.exit

if.then.i9.i:                                     ; preds = %land.lhs.true2.i8.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 724, ptr noundef nonnull @.str.20) #17
  br label %br_vlan_link_state_change.exit

br_vlan_link_state_change.exit:                   ; preds = %if.then.i9.i, %land.lhs.true2.i8.i.br_vlan_link_state_change.exit_crit_edge, %land.lhs.true.i6.i.br_vlan_link_state_change.exit_crit_edge, %rcu_read_lock.exit.i.br_vlan_link_state_change.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !179
  %33 = call i32 @llvm.read_register.i32(metadata !155) #17
  %and.i.i.i.i.i10.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i.i10.i to ptr
  %preempt_count.i.i.i.i11.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i.i11.i, align 4
  %sub.i.i.i.i = add i32 %36, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i11.i, align 4
  call void @rcu_read_unlock_strict() #17
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %priv.i) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #17
  br label %sw.epilogthread-pre-split

sw.epilogthread-pre-split:                        ; preds = %br_vlan_link_state_change.exit, %sw.bb7.sw.epilogthread-pre-split_crit_edge, %cleanup.sink.split.i, %br_vlan_is_bind_vlan_dev.exit.i.sw.epilogthread-pre-split_crit_edge, %sw.bb5.sw.epilogthread-pre-split_crit_edge, %sw.bb
  %vlcmd.0.ph = phi i32 [ 0, %cleanup.sink.split.i ], [ 0, %br_vlan_is_bind_vlan_dev.exit.i.sw.epilogthread-pre-split_crit_edge ], [ 0, %sw.bb5.sw.epilogthread-pre-split_crit_edge ], [ 112, %sw.bb ], [ 0, %sw.bb7.sw.epilogthread-pre-split_crit_edge ], [ 0, %br_vlan_link_state_change.exit ]
  %ret.0.ph = phi i32 [ 0, %cleanup.sink.split.i ], [ 0, %br_vlan_is_bind_vlan_dev.exit.i.sw.epilogthread-pre-split_crit_edge ], [ 0, %sw.bb5.sw.epilogthread-pre-split_crit_edge ], [ %call1, %sw.bb ], [ 0, %sw.bb7.sw.epilogthread-pre-split_crit_edge ], [ 0, %br_vlan_link_state_change.exit ]
  %37 = ptrtoint ptr %changed to i32
  call void @__asan_load1_noabort(i32 %37)
  %.pr = load i8, ptr %changed, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilogthread-pre-split, %sw.bb2
  %38 = phi i8 [ %.pr, %sw.epilogthread-pre-split ], [ %frombool, %sw.bb2 ]
  %vlcmd.0 = phi i32 [ %vlcmd.0.ph, %sw.epilogthread-pre-split ], [ 113, %sw.bb2 ]
  %ret.0 = phi i32 [ %ret.0.ph, %sw.epilogthread-pre-split ], [ 0, %sw.bb2 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool10.not = icmp eq i8 %38, 0
  br i1 %tobool10.not, label %sw.epilog.if.end13_crit_edge, label %if.then11

sw.epilog.if.end13_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13

if.then11:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  %default_pvid12 = getelementptr i8, ptr %dev, i32 2406
  %39 = ptrtoint ptr %default_pvid12 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %default_pvid12, align 2
  call void @br_vlan_notify(ptr noundef %add.ptr.i, ptr noundef null, i16 noundef zeroext %40, i16 noundef zeroext 0, i32 noundef %vlcmd.0)
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %sw.epilog.if.end13_crit_edge, %entry.if.end13_crit_edge
  %ret.028 = phi i32 [ %ret.0, %if.then11 ], [ %ret.0, %sw.epilog.if.end13_crit_edge ], [ 0, %entry.if.end13_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %changed) #17
  ret i32 %ret.028
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @br_vlan_port_event(ptr nocapture noundef readonly %p, i32 noundef %event) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %options.i = getelementptr inbounds %struct.net_bridge, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %options.i, align 4
  %4 = and i32 %3, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.sw.epilog_crit_edge, label %if.end

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

if.end:                                           ; preds = %entry
  %5 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %event, label %if.end.sw.epilog_crit_edge [
    i32 4, label %if.end.sw.bb_crit_edge
    i32 2, label %if.end.sw.bb_crit_edge2
    i32 1, label %if.end.sw.bb_crit_edge3
  ]

if.end.sw.bb_crit_edge3:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb

if.end.sw.bb_crit_edge2:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge2, %if.end.sw.bb_crit_edge3
  %call.i.i = tail call zeroext i1 @lockdep_rtnl_is_held() #17
  br i1 %call.i.i, label %sw.bb.nbp_vlan_group.exit.i_crit_edge, label %land.lhs.true.i.i

sw.bb.nbp_vlan_group.exit.i_crit_edge:            ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  br label %nbp_vlan_group.exit.i

land.lhs.true.i.i:                                ; preds = %sw.bb
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.nbp_vlan_group.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.nbp_vlan_group.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %nbp_vlan_group.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @nbp_vlan_group.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.nbp_vlan_group.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.nbp_vlan_group.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %nbp_vlan_group.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @nbp_vlan_group.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 1477, ptr noundef nonnull @.str.10) #17
  br label %nbp_vlan_group.exit.i

nbp_vlan_group.exit.i:                            ; preds = %if.then.i.i, %land.lhs.true2.i.i.nbp_vlan_group.exit.i_crit_edge, %land.lhs.true.i.i.nbp_vlan_group.exit.i_crit_edge, %sw.bb.nbp_vlan_group.exit.i_crit_edge
  %vlgrp.i.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 5
  %6 = ptrtoint ptr %vlgrp.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vlgrp.i.i, align 8
  %vlan_list.i = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %vlan_list.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn29.i = load ptr, ptr %vlan_list.i, align 4
  %cmp.not30.i = icmp eq ptr %.pn29.i, %vlan_list.i
  br i1 %cmp.not30.i, label %nbp_vlan_group.exit.i.sw.epilog_crit_edge, label %for.body.lr.ph.i

nbp_vlan_group.exit.i.sw.epilog_crit_edge:        ; preds = %nbp_vlan_group.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

for.body.lr.ph.i:                                 ; preds = %nbp_vlan_group.exit.i
  %dev3.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn31.i = phi ptr [ %.pn29.i, %for.body.lr.ph.i ], [ %.pn.i, %for.inc.i.for.body.i_crit_edge ]
  %9 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %p, align 8
  %dev.i = getelementptr inbounds %struct.net_bridge, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  %vid.i = getelementptr i8, ptr %.pn31.i, i32 -548
  %13 = ptrtoint ptr %vid.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %vid.i, align 8
  %call2.i = tail call fastcc ptr @br_vlan_get_upper_bind_vlan_dev(ptr noundef %12, i16 noundef zeroext %14) #17
  %tobool.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %15 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev3.i, align 4
  %flags.i.i = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 14
  %17 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i27.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i27.i, label %if.then.i.if.else.i_crit_edge, label %br_vlan_is_dev_up.exit.i

if.then.i.if.else.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else.i

br_vlan_is_dev_up.exit.i:                         ; preds = %if.then.i
  %operstate.i.i.i = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 50
  %19 = ptrtoint ptr %operstate.i.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %operstate.i.i.i, align 8
  %21 = zext i8 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.46)
  switch i8 %20, label %br_vlan_is_dev_up.exit.i.if.else.i_crit_edge [
    i8 6, label %br_vlan_is_dev_up.exit.i.if.then5.i_crit_edge
    i8 0, label %br_vlan_is_dev_up.exit.i.if.then5.i_crit_edge4
  ]

br_vlan_is_dev_up.exit.i.if.then5.i_crit_edge4:   ; preds = %br_vlan_is_dev_up.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then5.i

br_vlan_is_dev_up.exit.i.if.then5.i_crit_edge:    ; preds = %br_vlan_is_dev_up.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then5.i

br_vlan_is_dev_up.exit.i.if.else.i_crit_edge:     ; preds = %br_vlan_is_dev_up.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else.i

if.then5.i:                                       ; preds = %br_vlan_is_dev_up.exit.i.if.then5.i_crit_edge, %br_vlan_is_dev_up.exit.i.if.then5.i_crit_edge4
  %22 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %p, align 8
  %dev7.i = getelementptr inbounds %struct.net_bridge, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %dev7.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev7.i, align 4
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %state.i.i, align 4
  %28 = and i32 %27, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i28.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i28.i, label %if.then9.i, label %if.then5.i.for.inc.i_crit_edge

if.then5.i.for.inc.i_crit_edge:                   ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

if.then9.i:                                       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @netif_carrier_on(ptr noundef nonnull %call2.i) #17
  br label %for.inc.i

if.else.i:                                        ; preds = %br_vlan_is_dev_up.exit.i.if.else.i_crit_edge, %if.then.i.if.else.i_crit_edge
  %29 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %p, align 8
  tail call fastcc void @br_vlan_set_vlan_dev_state(ptr noundef %30, ptr noundef nonnull %call2.i) #17
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %if.then9.i, %if.then5.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %31 = ptrtoint ptr %.pn31.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pn.i = load ptr, ptr %.pn31.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %vlan_list.i
  br i1 %cmp.not.i, label %for.inc.i.sw.epilog_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.inc.i.sw.epilog_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.inc.i.sw.epilog_crit_edge, %nbp_vlan_group.exit.i.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @br_vlan_fill_vids(ptr noundef %skb, i16 noundef zeroext %vid, i16 noundef zeroext %vid_range, ptr noundef %v_opts, i16 noundef zeroext %flags, i1 noundef zeroext %dump_stats) unnamed_addr #0 align 64 {
entry:
  %tmp.i27.i = alloca i64, align 8
  %tmp.i25.i = alloca i64, align 8
  %tmp.i23.i = alloca i64, align 8
  %tmp.i.i = alloca i64, align 8
  %stats.i = alloca %struct.pcpu_sw_netstats, align 32
  %tmp.i = alloca i16, align 2
  %info = alloca %struct.bridge_vlan_info, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %info) #17
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %0 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 32769, i32 noundef 0, ptr noundef null) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %tobool.not69 = icmp eq ptr %1, null
  %tobool.not = select i1 %cmp.i.i, i1 true, i1 %tobool.not69
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds %struct.bridge_vlan_info, ptr %info, i32 0, i32 1
  %3 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %info, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %vid, ptr %2, align 2
  %conv = zext i16 %flags to i32
  %and = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.if.end7_crit_edge, label %if.then3

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end7

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %5 = ptrtoint ptr %info to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %info, align 4
  %7 = or i16 %6, 4
  store i16 %7, ptr %info, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.end.if.end7_crit_edge
  %and9 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end7.if.end16_crit_edge, label %if.then11

if.end7.if.end16_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end16

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  %8 = ptrtoint ptr %info to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %info, align 4
  %10 = or i16 %9, 2
  store i16 %10, ptr %info, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then11, %if.end7.if.end16_crit_edge
  %call17 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %info) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.if.then.i.i_crit_edge

if.end16.if.then.i.i_crit_edge:                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i.i

if.end20:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_cmp2(i16 %vid, i16 %vid_range)
  %cmp = icmp ult i16 %vid, %vid_range
  %11 = and i1 %cmp, %tobool10.not
  br i1 %11, label %land.lhs.true30, label %if.end20.if.end34_crit_edge

if.end20.if.end34_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end34

land.lhs.true30:                                  ; preds = %if.end20
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i) #17
  %12 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %vid_range, ptr %tmp.i, align 2
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 2, ptr noundef nonnull %tmp.i) #17
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool32.not = icmp eq i32 %call.i, 0
  br i1 %tobool32.not, label %land.lhs.true30.if.end34_crit_edge, label %land.lhs.true30.if.then.i.i_crit_edge

land.lhs.true30.if.then.i.i_crit_edge:            ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i.i

land.lhs.true30.if.end34_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end34

if.end34:                                         ; preds = %land.lhs.true30.if.end34_crit_edge, %if.end20.if.end34_crit_edge
  %tobool35.not = icmp eq ptr %v_opts, null
  br i1 %tobool35.not, label %if.end34.if.end46_crit_edge, label %if.then36

if.end34.if.end46_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end46

if.then36:                                        ; preds = %if.end34
  %call37 = call zeroext i1 @br_vlan_opts_fill(ptr noundef %skb, ptr noundef nonnull %v_opts) #17
  br i1 %call37, label %if.end39, label %if.then36.if.then.i.i_crit_edge

if.then36.if.then.i.i_crit_edge:                  ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i.i

if.end39:                                         ; preds = %if.then36
  br i1 %dump_stats, label %land.lhs.true42, label %if.end39.if.end46_crit_edge

if.end39.if.end46_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end46

land.lhs.true42:                                  ; preds = %if.end39
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %stats.i) #17
  %13 = call ptr @memset(ptr %stats.i, i32 255, i32 64)
  %14 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 32773, i32 noundef 0, ptr noundef null) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call1.i.i.i, 0
  %tobool.not30.i = icmp eq ptr %15, null
  %tobool.not.i = select i1 %cmp.i.i.i, i1 true, i1 %tobool.not30.i
  br i1 %tobool.not.i, label %land.lhs.true42.br_vlan_stats_fill.exit.thread_crit_edge, label %if.end.i

land.lhs.true42.br_vlan_stats_fill.exit.thread_crit_edge: ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_vlan_stats_fill.exit.thread

if.end.i:                                         ; preds = %land.lhs.true42
  call void @br_vlan_get_stats(ptr noundef nonnull %v_opts, ptr noundef nonnull %stats.i) #17
  %rx_bytes.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %stats.i, i32 0, i32 1
  %16 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %rx_bytes.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i.i) #17
  %18 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %tmp.i.i, align 8
  %call.i.i = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 1, i32 noundef 8, ptr noundef nonnull %tmp.i.i, i32 noundef 5) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i, label %lor.lhs.false.i, label %if.end.i.if.then.i.i.i_crit_edge

if.end.i.if.then.i.i.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i.i.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %19 = ptrtoint ptr %stats.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %stats.i, align 32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i23.i) #17
  %21 = ptrtoint ptr %tmp.i23.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %tmp.i23.i, align 8
  %call.i24.i = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 2, i32 noundef 8, ptr noundef nonnull %tmp.i23.i, i32 noundef 5) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i23.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24.i)
  %tobool4.not.i = icmp eq i32 %call.i24.i, 0
  br i1 %tobool4.not.i, label %lor.lhs.false5.i, label %lor.lhs.false.i.if.then.i.i.i_crit_edge

lor.lhs.false.i.if.then.i.i.i_crit_edge:          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i.i.i

lor.lhs.false5.i:                                 ; preds = %lor.lhs.false.i
  %tx_bytes.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %stats.i, i32 0, i32 3
  %22 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %tx_bytes.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i25.i) #17
  %24 = ptrtoint ptr %tmp.i25.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %tmp.i25.i, align 8
  %call.i26.i = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 3, i32 noundef 8, ptr noundef nonnull %tmp.i25.i, i32 noundef 5) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i25.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26.i)
  %tobool7.not.i = icmp eq i32 %call.i26.i, 0
  br i1 %tobool7.not.i, label %lor.lhs.false8.i, label %lor.lhs.false5.i.if.then.i.i.i_crit_edge

lor.lhs.false5.i.if.then.i.i.i_crit_edge:         ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i.i.i

lor.lhs.false8.i:                                 ; preds = %lor.lhs.false5.i
  %tx_packets.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %stats.i, i32 0, i32 2
  %25 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %tx_packets.i, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i27.i) #17
  %27 = ptrtoint ptr %tmp.i27.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %tmp.i27.i, align 8
  %call.i28.i = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 4, i32 noundef 8, ptr noundef nonnull %tmp.i27.i, i32 noundef 5) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i27.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28.i)
  %tobool10.not.i = icmp eq i32 %call.i28.i, 0
  br i1 %tobool10.not.i, label %br_vlan_stats_fill.exit, label %lor.lhs.false8.i.if.then.i.i.i_crit_edge

lor.lhs.false8.i.if.then.i.i.i_crit_edge:         ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %lor.lhs.false8.i.if.then.i.i.i_crit_edge, %lor.lhs.false5.i.if.then.i.i.i_crit_edge, %lor.lhs.false.i.if.then.i.i.i_crit_edge, %if.end.i.if.then.i.i.i_crit_edge
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %28 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i29.i = icmp ugt ptr %29, %15
  br i1 %cmp.i.i29.i, label %do.end.i.i.i, label %if.then.i.i.i.nla_nest_cancel.exit.i_crit_edge, !prof !172

if.then.i.i.i.nla_nest_cancel.exit.i_crit_edge:   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %nla_nest_cancel.exit.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 991, i32 noundef 9, ptr noundef null) #17
  br label %nla_nest_cancel.exit.i

nla_nest_cancel.exit.i:                           ; preds = %do.end.i.i.i, %if.then.i.i.i.nla_nest_cancel.exit.i_crit_edge
  %30 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %15 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %31 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i.i) #17
  br label %br_vlan_stats_fill.exit.thread

br_vlan_stats_fill.exit.thread:                   ; preds = %nla_nest_cancel.exit.i, %land.lhs.true42.br_vlan_stats_fill.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %stats.i) #17
  br label %if.then.i.i

br_vlan_stats_fill.exit:                          ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #19
  %32 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %33 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %15 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %34 = ptrtoint ptr %15 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv.i.i, ptr %15, align 2
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %stats.i) #17
  br label %if.end46

if.end46:                                         ; preds = %br_vlan_stats_fill.exit, %if.end39.if.end46_crit_edge, %if.end34.if.end46_crit_edge
  %35 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %36 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv.i, ptr %1, align 2
  br label %cleanup

if.then.i.i:                                      ; preds = %br_vlan_stats_fill.exit.thread, %if.then36.if.then.i.i_crit_edge, %land.lhs.true30.if.then.i.i_crit_edge, %if.end16.if.then.i.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %38 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i64 = icmp ugt ptr %39, %1
  br i1 %cmp.i.i64, label %do.end.i.i, label %if.then.i.i.nla_nest_cancel.exit_crit_edge, !prof !172

if.then.i.i.nla_nest_cancel.exit_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %nla_nest_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 991, i32 noundef 9, ptr noundef null) #17
  br label %nla_nest_cancel.exit

nla_nest_cancel.exit:                             ; preds = %do.end.i.i, %if.then.i.i.nla_nest_cancel.exit_crit_edge
  %40 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i65 = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i.i66 = ptrtoint ptr %41 to i32
  %sub.ptr.sub.i.i67 = sub i32 %sub.ptr.lhs.cast.i.i65, %sub.ptr.rhs.cast.i.i66
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i67) #17
  br label %cleanup

cleanup:                                          ; preds = %nla_nest_cancel.exit, %if.end46, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %nla_nest_cancel.exit ], [ true, %if.end46 ], [ false, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %info) #17
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_notify(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_set_sk_err(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @br_vlan_can_enter_range(ptr noundef %v_curr, ptr noundef %range_end) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %vid = getelementptr inbounds %struct.net_bridge_vlan, ptr %v_curr, i32 0, i32 2
  %0 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vid, align 8
  %conv = zext i16 %1 to i32
  %vid1 = getelementptr inbounds %struct.net_bridge_vlan, ptr %range_end, i32 0, i32 2
  %2 = ptrtoint ptr %vid1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vid1, align 8
  %conv2 = zext i16 %3 to i32
  %sub = sub nsw i32 %conv, %conv2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp = icmp eq i32 %sub, 1
  br i1 %cmp, label %land.lhs.true, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.net_bridge_vlan, ptr %range_end, i32 0, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %flags, align 2
  %flags5 = getelementptr inbounds %struct.net_bridge_vlan, ptr %v_curr, i32 0, i32 3
  %6 = ptrtoint ptr %flags5 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %flags5, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %7)
  %cmp7 = icmp eq i16 %5, %7
  br i1 %cmp7, label %land.rhs, label %land.lhs.true.land.end_crit_edge

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %call = tail call zeroext i1 @br_vlan_opts_eq_range(ptr noundef %v_curr, ptr noundef %range_end) #17
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %8 = phi i1 [ false, %land.lhs.true.land.end_crit_edge ], [ false, %entry.land.end_crit_edge ], [ %call, %land.rhs ]
  ret i1 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @br_vlan_opts_eq_range(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @br_vlan_rtnl_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_register_module(ptr noundef null, i32 noundef 7, i32 noundef 114, ptr noundef null, ptr noundef nonnull @br_vlan_rtm_dump, i32 noundef 0) #17
  %call1 = tail call i32 @rtnl_register_module(ptr noundef null, i32 noundef 7, i32 noundef 112, ptr noundef nonnull @br_vlan_rtm_process, ptr noundef null, i32 noundef 0) #17
  %call2 = tail call i32 @rtnl_register_module(ptr noundef null, i32 noundef 7, i32 noundef 113, ptr noundef nonnull @br_vlan_rtm_process, ptr noundef null, i32 noundef 0) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_register_module(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @br_vlan_rtm_dump(ptr noundef %skb, ptr nocapture noundef %cb) #0 align 64 {
entry:
  %dtb = alloca [2 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dtb) #17
  %0 = ptrtoint ptr %dtb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %dtb, align 4, !annotation !175
  %1 = getelementptr inbounds [2 x ptr], ptr %dtb, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !175
  %3 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %6 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %skc_net.i, align 4
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %11 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nlh, align 4
  %extack = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 6
  %13 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %extack, align 4
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %16)
  %cmp.i.i = icmp ult i32 %16, 24
  br i1 %cmp.i.i, label %do.body.i.i, label %nlmsg_parse.exit

do.body.i.i:                                      ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nlmsg_parse.__msg) #17
  %tobool.not.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i, label %do.body.i.i.cleanup_crit_edge, label %if.then1.i.i

do.body.i.i.cleanup_crit_edge:                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then1.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @__nlmsg_parse.__msg, ptr %14, align 4
  br label %cleanup

nlmsg_parse.exit:                                 ; preds = %entry
  %add.ptr.i.i.i = getelementptr i8, ptr %12, i32 24
  %sub1.i.i.i = add i32 %16, -24
  %call5.i.i = call i32 @__nla_parse(ptr noundef nonnull %dtb, i32 noundef 1, ptr noundef %add.ptr.i.i.i, i32 noundef %sub1.i.i.i, ptr noundef nonnull @br_vlan_db_dump_pol, i32 noundef 31, ptr noundef %14) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %cmp = icmp slt i32 %call5.i.i, 0
  br i1 %cmp, label %nlmsg_parse.exit.cleanup_crit_edge, label %if.end

nlmsg_parse.exit.cleanup_crit_edge:               ; preds = %nlmsg_parse.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %nlmsg_parse.exit
  %18 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %nlh, align 4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %21, null
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %if.then5

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 4
  %22 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr.i.i, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end.if.end8_crit_edge
  %dump_flags.0 = phi i32 [ %23, %if.then5 ], [ 0, %if.end.if.end8_crit_edge ]
  %24 = call i32 @llvm.read_register.i32(metadata !155) #17
  %and.i.i.i.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %27, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !178
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #17
  %call.i = call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i, label %if.end8.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end8.rcu_read_lock.exit_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end8
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #17
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
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 696, ptr noundef nonnull @.str.19) #17
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end8.rcu_read_lock.exit_crit_edge
  %ifindex = getelementptr i8, ptr %19, i32 20
  %28 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ifindex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool9.not = icmp eq i32 %29, 0
  br i1 %tobool9.not, label %do.body, label %if.then10

if.then10:                                        ; preds = %rcu_read_lock.exit
  %call12 = call ptr @dev_get_by_index_rcu(ptr noundef %10, i32 noundef %29) #17
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.then10.out_err_crit_edge, label %if.end15

if.then10.out_err_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_err

if.end15:                                         ; preds = %if.then10
  %call16 = call fastcc i32 @br_vlan_dump_dev(ptr noundef nonnull %call12, ptr noundef %skb, ptr noundef %cb, i32 noundef %dump_flags.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -90, i32 %call16)
  %cmp17.not = icmp eq i32 %call16, -90
  br i1 %cmp17.not, label %if.end15.if.end50_crit_edge, label %if.end15.out_err_crit_edge

if.end15.out_err_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_err

if.end15.if.end50_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end50

do.body:                                          ; preds = %rcu_read_lock.exit
  %call20 = call i32 @rcu_read_lock_any_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %land.lhs.true, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

land.lhs.true:                                    ; preds = %do.body
  %call22 = call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true24

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

land.lhs.true24:                                  ; preds = %land.lhs.true
  %.b83 = load i1, ptr @br_vlan_rtm_dump.__warned, align 1
  br i1 %.b83, label %land.lhs.true24.do.end_crit_edge, label %if.then26

land.lhs.true24.do.end_crit_edge:                 ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

if.then26:                                        ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @br_vlan_rtm_dump.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2027, ptr noundef nonnull @.str.28) #17
  br label %do.end

do.end:                                           ; preds = %if.then26, %land.lhs.true24.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %do.body.do.end_crit_edge
  %dev_base_head = getelementptr inbounds %struct.net, ptr %10, i32 0, i32 16
  %30 = ptrtoint ptr %dev_base_head to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pn106 = load volatile ptr, ptr %dev_base_head, align 4
  %cmp33.not108 = icmp eq ptr %.pn106, %dev_base_head
  br i1 %cmp33.not108, label %do.end.if.end50_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.if.end50_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end50

for.body:                                         ; preds = %skip.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn111 = phi ptr [ %.pn, %skip.for.body_crit_edge ], [ %.pn106, %do.end.for.body_crit_edge ]
  %idx.0109 = phi i32 [ %inc, %skip.for.body_crit_edge ], [ 0, %do.end.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.0109, i32 %5)
  %cmp34 = icmp slt i32 %idx.0109, %5
  br i1 %cmp34, label %for.body.skip_crit_edge, label %if.end36

for.body.skip_crit_edge:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %skip

if.end36:                                         ; preds = %for.body
  %dev.0112 = getelementptr i8, ptr %.pn111, i32 -40
  %call37 = call fastcc i32 @br_vlan_dump_dev(ptr noundef %dev.0112, ptr noundef %skb, ptr noundef %cb, i32 noundef %dump_flags.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -90, i32 %call37)
  %cmp38 = icmp eq i32 %call37, -90
  br i1 %cmp38, label %if.end36.if.end50_crit_edge, label %if.end36.skip_crit_edge

if.end36.skip_crit_edge:                          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #19
  br label %skip

if.end36.if.end50_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end50

skip:                                             ; preds = %if.end36.skip_crit_edge, %for.body.skip_crit_edge
  %inc = add i32 %idx.0109, 1
  %31 = ptrtoint ptr %.pn111 to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pn = load volatile ptr, ptr %.pn111, align 4
  %cmp33.not = icmp eq ptr %.pn, %dev_base_head
  br i1 %cmp33.not, label %skip.if.end50_crit_edge, label %skip.for.body_crit_edge

skip.for.body_crit_edge:                          ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

skip.if.end50_crit_edge:                          ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end50

if.end50:                                         ; preds = %skip.if.end50_crit_edge, %if.end36.if.end50_crit_edge, %do.end.if.end50_crit_edge, %if.end15.if.end50_crit_edge
  %idx.1 = phi i32 [ 0, %if.end15.if.end50_crit_edge ], [ 0, %do.end.if.end50_crit_edge ], [ %idx.0109, %if.end36.if.end50_crit_edge ], [ %inc, %skip.if.end50_crit_edge ]
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %idx.1, ptr %3, align 4
  %call.i84 = call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i84, label %if.end50.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i87

if.end50.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

land.lhs.true.i87:                                ; preds = %if.end50
  %call1.i85 = call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i85)
  %tobool.not.i86 = icmp eq i32 %call1.i85, 0
  br i1 %tobool.not.i86, label %land.lhs.true.i87.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i89

land.lhs.true.i87.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i87
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

land.lhs.true2.i89:                               ; preds = %land.lhs.true.i87
  %.b4.i88 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i88, label %land.lhs.true2.i89.rcu_read_unlock.exit_crit_edge, label %if.then.i90

land.lhs.true2.i89.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i89
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

if.then.i90:                                      ; preds = %land.lhs.true2.i89
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 724, ptr noundef nonnull @.str.20) #17
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i90, %land.lhs.true2.i89.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i87.rcu_read_unlock.exit_crit_edge, %if.end50.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !179
  %33 = call i32 @llvm.read_register.i32(metadata !155) #17
  %and.i.i.i.i.i91 = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i.i91 to ptr
  %preempt_count.i.i.i.i92 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i.i92 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i.i92, align 4
  %sub.i.i.i = add i32 %36, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i92, align 4
  call void @rcu_read_unlock_strict() #17
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %37 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %len, align 4
  br label %cleanup

out_err:                                          ; preds = %if.end15.out_err_crit_edge, %if.then10.out_err_crit_edge
  %err.0 = phi i32 [ %call16, %if.end15.out_err_crit_edge ], [ -19, %if.then10.out_err_crit_edge ]
  %call.i93 = call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i93, label %out_err.rcu_read_unlock.exit103_crit_edge, label %land.lhs.true.i96

out_err.rcu_read_unlock.exit103_crit_edge:        ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit103

land.lhs.true.i96:                                ; preds = %out_err
  %call1.i94 = call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i94)
  %tobool.not.i95 = icmp eq i32 %call1.i94, 0
  br i1 %tobool.not.i95, label %land.lhs.true.i96.rcu_read_unlock.exit103_crit_edge, label %land.lhs.true2.i98

land.lhs.true.i96.rcu_read_unlock.exit103_crit_edge: ; preds = %land.lhs.true.i96
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit103

land.lhs.true2.i98:                               ; preds = %land.lhs.true.i96
  %.b4.i97 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i97, label %land.lhs.true2.i98.rcu_read_unlock.exit103_crit_edge, label %if.then.i99

land.lhs.true2.i98.rcu_read_unlock.exit103_crit_edge: ; preds = %land.lhs.true2.i98
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit103

if.then.i99:                                      ; preds = %land.lhs.true2.i98
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 724, ptr noundef nonnull @.str.20) #17
  br label %rcu_read_unlock.exit103

rcu_read_unlock.exit103:                          ; preds = %if.then.i99, %land.lhs.true2.i98.rcu_read_unlock.exit103_crit_edge, %land.lhs.true.i96.rcu_read_unlock.exit103_crit_edge, %out_err.rcu_read_unlock.exit103_crit_edge
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !179
  %39 = call i32 @llvm.read_register.i32(metadata !155) #17
  %and.i.i.i.i.i100 = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i.i.i100 to ptr
  %preempt_count.i.i.i.i101 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %preempt_count.i.i.i.i101 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %preempt_count.i.i.i.i101, align 4
  %sub.i.i.i102 = add i32 %42, -1
  store volatile i32 %sub.i.i.i102, ptr %preempt_count.i.i.i.i101, align 4
  call void @rcu_read_unlock_strict() #17
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit103, %rcu_read_unlock.exit, %nlmsg_parse.exit.cleanup_crit_edge, %if.then1.i.i, %do.body.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %rcu_read_unlock.exit103 ], [ %38, %rcu_read_unlock.exit ], [ %call5.i.i, %nlmsg_parse.exit.cleanup_crit_edge ], [ -22, %if.then1.i.i ], [ -22, %do.body.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dtb) #17
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @br_vlan_rtm_process(ptr nocapture noundef readonly %skb, ptr noundef %nlh, ptr noundef %extack) #0 align 64 {
entry:
  %vrange_end.i = alloca %struct.bridge_vlan_info, align 4
  %tb.i = alloca [7 x ptr], align 4
  %changed.i = alloca i8, align 1
  %tmp_last.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  %5 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nlh, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %6)
  %cmp.i.i = icmp ult i32 %6, 24
  br i1 %cmp.i.i, label %do.body.i.i, label %nlmsg_parse.exit

do.body.i.i:                                      ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nlmsg_parse.__msg) #17
  %tobool.not.i.i = icmp eq ptr %extack, null
  br i1 %tobool.not.i.i, label %do.body.i.i.cleanup_crit_edge, label %do.body.i.i.cleanup.sink.split_crit_edge

do.body.i.i.cleanup.sink.split_crit_edge:         ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.sink.split

do.body.i.i.cleanup_crit_edge:                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

nlmsg_parse.exit:                                 ; preds = %entry
  %add.ptr.i.i.i = getelementptr i8, ptr %nlh, i32 24
  %sub1.i.i.i = add i32 %6, -24
  %call5.i.i = tail call i32 @__nla_parse(ptr noundef null, i32 noundef 2, ptr noundef %add.ptr.i.i.i, i32 noundef %sub1.i.i.i, ptr noundef null, i32 noundef 31, ptr noundef %extack) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %cmp = icmp slt i32 %call5.i.i, 0
  br i1 %cmp, label %nlmsg_parse.exit.cleanup_crit_edge, label %if.end

nlmsg_parse.exit.cleanup_crit_edge:               ; preds = %nlmsg_parse.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %nlmsg_parse.exit
  %ifindex = getelementptr i8, ptr %nlh, i32 20
  %7 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ifindex, align 4
  %call3 = tail call ptr @__dev_get_by_index(ptr noundef %4, i32 noundef %8) #17
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %call3, i32 0, i32 15
  %9 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %priv_flags.i, align 16
  %11 = and i64 %10, 514
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %.not = icmp eq i64 %11, 0
  br i1 %.not, label %do.body, label %if.end12

do.body:                                          ; preds = %if.end5
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @br_vlan_rtm_process.__msg) #17
  %tobool9.not = icmp eq ptr %extack, null
  br i1 %tobool9.not, label %do.body.cleanup_crit_edge, label %do.body.cleanup.sink.split_crit_edge

do.body.cleanup.sink.split_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.sink.split

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  %12 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nlh, align 4
  %sub1.i = add i32 %13, -24
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub1.i)
  %cmp.i84 = icmp sgt i32 %sub1.i, 3
  br i1 %cmp.i84, label %land.lhs.true.i.lr.ph, label %if.end12.do.body29_crit_edge

if.end12.do.body29_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body29

land.lhs.true.i.lr.ph:                            ; preds = %if.end12
  %nlmsg_type20 = getelementptr inbounds %struct.nlmsghdr, ptr %nlh, i32 0, i32 1
  %14 = getelementptr inbounds %struct.bridge_vlan_info, ptr %vrange_end.i, i32 0, i32 1
  %15 = getelementptr inbounds [7 x ptr], ptr %tb.i, i32 0, i32 1
  %16 = getelementptr inbounds [7 x ptr], ptr %tb.i, i32 0, i32 2
  %add.ptr.i.i = getelementptr i8, ptr %call3, i32 2304
  %vlgrp.i.i = getelementptr i8, ptr %call3, i32 2408
  %rx_handler_data.i.i = getelementptr inbounds %struct.net_device, ptr %call3, i32 0, i32 95
  %tobool86.not.i = icmp eq ptr %extack, null
  %bad_attr.i.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %policy3.i.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %for.inc.land.lhs.true.i_crit_edge, %land.lhs.true.i.lr.ph
  %vlans.088 = phi i32 [ 0, %land.lhs.true.i.lr.ph ], [ %vlans.1, %for.inc.land.lhs.true.i_crit_edge ]
  %err.087 = phi i32 [ %call5.i.i, %land.lhs.true.i.lr.ph ], [ %err.2, %for.inc.land.lhs.true.i_crit_edge ]
  %attr.086 = phi ptr [ %add.ptr.i.i.i, %land.lhs.true.i.lr.ph ], [ %add.ptr.i79, %for.inc.land.lhs.true.i_crit_edge ]
  %rem.085 = phi i32 [ %sub1.i, %land.lhs.true.i.lr.ph ], [ %sub1.i78, %for.inc.land.lhs.true.i_crit_edge ]
  %17 = ptrtoint ptr %attr.086 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %attr.086, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %18)
  %cmp1.i = icmp ult i16 %18, 4
  %conv.i = zext i16 %18 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.085, i32 %conv.i)
  %cmp5.i.not = icmp ult i32 %rem.085, %conv.i
  %or.cond = select i1 %cmp1.i, i1 true, i1 %cmp5.i.not
  br i1 %or.cond, label %land.lhs.true.i.for.end_crit_edge, label %for.body

land.lhs.true.i.for.end_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body:                                         ; preds = %land.lhs.true.i
  %nla_type.i = getelementptr inbounds %struct.nlattr, ptr %attr.086, i32 0, i32 1
  %19 = ptrtoint ptr %nla_type.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %nla_type.i, align 2
  %21 = and i16 %20, 16383
  %and.i71 = zext i16 %21 to i32
  %22 = zext i32 %and.i71 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %and.i71, label %for.body.for.inc_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb19
  ]

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

sw.bb:                                            ; preds = %for.body
  %23 = ptrtoint ptr %nlmsg_type20 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %nlmsg_type20, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vrange_end.i) #17
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %tb.i) #17
  %25 = call ptr @memset(ptr %tb.i, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %changed.i) #17
  %26 = ptrtoint ptr %changed.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %changed.i, align 1
  %27 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %priv_flags.i, align 16
  %and.i.i = and i64 %28, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb
  %call.i.i = call zeroext i1 @lockdep_rtnl_is_held() #17
  br i1 %call.i.i, label %if.then.i.if.end30.i_crit_edge, label %land.lhs.true.i.i

if.then.i.if.end30.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end30.i

land.lhs.true.i.i:                                ; preds = %if.then.i
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i72 = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i72, label %land.lhs.true.i.i.if.end30.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.if.end30.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end30.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @br_vlan_group.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.if.end30.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.if.end30.i_crit_edge:          ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end30.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @br_vlan_group.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 1471, ptr noundef nonnull @.str.10) #17
  br label %if.end30.i

if.else.i:                                        ; preds = %sw.bb
  %and.i.i.i = and i64 %28, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i64 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.else.i.do.end.i_crit_edge, label %do.body.i.i73

if.else.i.do.end.i_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

do.body.i.i73:                                    ; preds = %if.else.i
  %call1.i205.i = call zeroext i1 @lockdep_rtnl_is_held() #17
  br i1 %call1.i205.i, label %do.body.i.i73.br_port_get_rtnl.exit.i_crit_edge, label %land.lhs.true.i207.i

do.body.i.i73.br_port_get_rtnl.exit.i_crit_edge:  ; preds = %do.body.i.i73
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_port_get_rtnl.exit.i

land.lhs.true.i207.i:                             ; preds = %do.body.i.i73
  %call2.i.i = call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i206.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i206.i, label %land.lhs.true.i207.i.br_port_get_rtnl.exit.i_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i207.i.br_port_get_rtnl.exit.i_crit_edge: ; preds = %land.lhs.true.i207.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_port_get_rtnl.exit.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i207.i
  %.b6.i.i = load i1, ptr @br_port_get_rtnl.__warned, align 1
  br i1 %.b6.i.i, label %land.lhs.true3.i.i.br_port_get_rtnl.exit.i_crit_edge, label %if.then.i208.i

land.lhs.true3.i.i.br_port_get_rtnl.exit.i_crit_edge: ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_port_get_rtnl.exit.i

if.then.i208.i:                                   ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @br_port_get_rtnl.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 422, ptr noundef nonnull @.str.10) #17
  br label %br_port_get_rtnl.exit.i

br_port_get_rtnl.exit.i:                          ; preds = %if.then.i208.i, %land.lhs.true3.i.i.br_port_get_rtnl.exit.i_crit_edge, %land.lhs.true.i207.i.br_port_get_rtnl.exit.i_crit_edge, %do.body.i.i73.br_port_get_rtnl.exit.i_crit_edge
  %29 = ptrtoint ptr %rx_handler_data.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rx_handler_data.i.i, align 4
  %tobool.not.i = icmp eq ptr %30, null
  br i1 %tobool.not.i, label %br_port_get_rtnl.exit.i.do.end.i_crit_edge, label %if.end27.i, !prof !172

br_port_get_rtnl.exit.i.do.end.i_crit_edge:       ; preds = %br_port_get_rtnl.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

do.end.i:                                         ; preds = %br_port_get_rtnl.exit.i.do.end.i_crit_edge, %if.else.i.do.end.i_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2075, i32 noundef 9, ptr noundef null) #17
  br label %br_vlan_rtm_process_one.exit

if.end27.i:                                       ; preds = %br_port_get_rtnl.exit.i
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 8
  %call.i209.i = call zeroext i1 @lockdep_rtnl_is_held() #17
  br i1 %call.i209.i, label %if.end27.i.nbp_vlan_group.exit.i_crit_edge, label %land.lhs.true.i212.i

if.end27.i.nbp_vlan_group.exit.i_crit_edge:       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %nbp_vlan_group.exit.i

land.lhs.true.i212.i:                             ; preds = %if.end27.i
  %call1.i210.i = call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i210.i)
  %tobool.not.i211.i = icmp eq i32 %call1.i210.i, 0
  br i1 %tobool.not.i211.i, label %land.lhs.true.i212.i.nbp_vlan_group.exit.i_crit_edge, label %land.lhs.true2.i214.i

land.lhs.true.i212.i.nbp_vlan_group.exit.i_crit_edge: ; preds = %land.lhs.true.i212.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %nbp_vlan_group.exit.i

land.lhs.true2.i214.i:                            ; preds = %land.lhs.true.i212.i
  %.b4.i213.i = load i1, ptr @nbp_vlan_group.__warned, align 1
  br i1 %.b4.i213.i, label %land.lhs.true2.i214.i.nbp_vlan_group.exit.i_crit_edge, label %if.then.i215.i

land.lhs.true2.i214.i.nbp_vlan_group.exit.i_crit_edge: ; preds = %land.lhs.true2.i214.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %nbp_vlan_group.exit.i

if.then.i215.i:                                   ; preds = %land.lhs.true2.i214.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @nbp_vlan_group.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 1477, ptr noundef nonnull @.str.10) #17
  br label %nbp_vlan_group.exit.i

nbp_vlan_group.exit.i:                            ; preds = %if.then.i215.i, %land.lhs.true2.i214.i.nbp_vlan_group.exit.i_crit_edge, %land.lhs.true.i212.i.nbp_vlan_group.exit.i_crit_edge, %if.end27.i.nbp_vlan_group.exit.i_crit_edge
  %vlgrp.i216.i = getelementptr inbounds %struct.net_bridge_port, ptr %30, i32 0, i32 5
  br label %if.end30.i

if.end30.i:                                       ; preds = %nbp_vlan_group.exit.i, %if.then.i.i, %land.lhs.true2.i.i.if.end30.i_crit_edge, %land.lhs.true.i.i.if.end30.i_crit_edge, %if.then.i.if.end30.i_crit_edge
  %vg.0.in.i = phi ptr [ %vlgrp.i216.i, %nbp_vlan_group.exit.i ], [ %vlgrp.i.i, %if.then.i.i ], [ %vlgrp.i.i, %land.lhs.true2.i.i.if.end30.i_crit_edge ], [ %vlgrp.i.i, %land.lhs.true.i.i.if.end30.i_crit_edge ], [ %vlgrp.i.i, %if.then.i.if.end30.i_crit_edge ]
  %p.0.i = phi ptr [ %30, %nbp_vlan_group.exit.i ], [ null, %if.then.i.i ], [ null, %land.lhs.true2.i.i.if.end30.i_crit_edge ], [ null, %land.lhs.true.i.i.if.end30.i_crit_edge ], [ null, %if.then.i.if.end30.i_crit_edge ]
  %br.0.i = phi ptr [ %32, %nbp_vlan_group.exit.i ], [ %add.ptr.i.i, %if.then.i.i ], [ %add.ptr.i.i, %land.lhs.true2.i.i.if.end30.i_crit_edge ], [ %add.ptr.i.i, %land.lhs.true.i.i.if.end30.i_crit_edge ], [ %add.ptr.i.i, %if.then.i.if.end30.i_crit_edge ]
  %33 = ptrtoint ptr %vg.0.in.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %vg.0.i = load ptr, ptr %vg.0.in.i, align 4
  %tobool32.not.i = icmp eq ptr %vg.0.i, null
  br i1 %tobool32.not.i, label %do.end50.i, label %if.end66.i, !prof !172

do.end50.i:                                       ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2081, i32 noundef 9, ptr noundef null) #17
  br label %br_vlan_rtm_process_one.exit

if.end66.i:                                       ; preds = %if.end30.i
  %34 = ptrtoint ptr %nla_type.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %nla_type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %35)
  %tobool.not.i218.i = icmp sgt i16 %35, -1
  br i1 %tobool.not.i218.i, label %do.body.i219.i, label %nla_parse_nested.exit.i

do.body.i219.i:                                   ; preds = %if.end66.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @nla_parse_nested.__msg) #17
  br i1 %tobool86.not.i, label %do.body.i219.i.br_vlan_rtm_process_one.exit_crit_edge, label %if.then2.i.i

do.body.i219.i.br_vlan_rtm_process_one.exit_crit_edge: ; preds = %do.body.i219.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_vlan_rtm_process_one.exit

if.then2.i.i:                                     ; preds = %do.body.i219.i
  call void @__sanitizer_cov_trace_pc() #19
  %36 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @nla_parse_nested.__msg, ptr %extack, align 4
  %37 = ptrtoint ptr %bad_attr.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %attr.086, ptr %bad_attr.i.i, align 4
  %38 = ptrtoint ptr %policy3.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %policy3.i.i, align 4
  br label %br_vlan_rtm_process_one.exit

nla_parse_nested.exit.i:                          ; preds = %if.end66.i
  %add.ptr.i.i.i74 = getelementptr i8, ptr %attr.086, i32 4
  %39 = ptrtoint ptr %attr.086 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %attr.086, align 2
  %conv.i.i.i = zext i16 %40 to i32
  %sub.i.i.i = add nsw i32 %conv.i.i.i, -4
  %call6.i.i = call i32 @__nla_parse(ptr noundef nonnull %tb.i, i32 noundef 6, ptr noundef %add.ptr.i.i.i74, i32 noundef %sub.i.i.i, ptr noundef nonnull @br_vlan_db_policy, i32 noundef 31, ptr noundef %extack) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool68.not.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool68.not.i, label %if.end70.i, label %nla_parse_nested.exit.i.br_vlan_rtm_process_one.exit_crit_edge

nla_parse_nested.exit.i.br_vlan_rtm_process_one.exit_crit_edge: ; preds = %nla_parse_nested.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_vlan_rtm_process_one.exit

if.end70.i:                                       ; preds = %nla_parse_nested.exit.i
  %41 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %15, align 4
  %tobool71.not.i = icmp eq ptr %42, null
  br i1 %tobool71.not.i, label %do.body73.i, label %if.end79.i

do.body73.i:                                      ; preds = %if.end70.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @br_vlan_rtm_process_one.__msg) #17
  br i1 %tobool86.not.i, label %do.body73.i.br_vlan_rtm_process_one.exit_crit_edge, label %if.then75.i

do.body73.i.br_vlan_rtm_process_one.exit_crit_edge: ; preds = %do.body73.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_vlan_rtm_process_one.exit

if.then75.i:                                      ; preds = %do.body73.i
  call void @__sanitizer_cov_trace_pc() #19
  %43 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @br_vlan_rtm_process_one.__msg, ptr %extack, align 4
  br label %br_vlan_rtm_process_one.exit

if.end79.i:                                       ; preds = %if.end70.i
  %44 = ptrtoint ptr %vrange_end.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %vrange_end.i, align 4
  %add.ptr.i220.i = getelementptr i8, ptr %42, i32 4
  %45 = ptrtoint ptr %add.ptr.i220.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %add.ptr.i220.i, align 2
  %47 = and i16 %46, 24
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %tobool82.not.i = icmp eq i16 %47, 0
  br i1 %tobool82.not.i, label %if.end92.i, label %do.body84.i

do.body84.i:                                      ; preds = %if.end79.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @br_vlan_rtm_process_one.__msg.30) #17
  br i1 %tobool86.not.i, label %do.body84.i.br_vlan_rtm_process_one.exit_crit_edge, label %if.then87.i

do.body84.i.br_vlan_rtm_process_one.exit_crit_edge: ; preds = %do.body84.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_vlan_rtm_process_one.exit

if.then87.i:                                      ; preds = %do.body84.i
  call void @__sanitizer_cov_trace_pc() #19
  %48 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @br_vlan_rtm_process_one.__msg.30, ptr %extack, align 4
  br label %br_vlan_rtm_process_one.exit

if.end92.i:                                       ; preds = %if.end79.i
  %vid.i = getelementptr i8, ptr %42, i32 6
  %49 = ptrtoint ptr %vid.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %vid.i, align 2
  %51 = add i16 %50, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 4094, i16 %51)
  %52 = icmp ult i16 %51, 4094
  br i1 %52, label %if.end95.i, label %do.body.i221.i

do.body.i221.i:                                   ; preds = %if.end92.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @br_vlan_valid_id.__msg) #17
  br i1 %tobool86.not.i, label %do.body.i221.i.br_vlan_rtm_process_one.exit_crit_edge, label %if.then6.i.i

do.body.i221.i.br_vlan_rtm_process_one.exit_crit_edge: ; preds = %do.body.i221.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_vlan_rtm_process_one.exit

if.then6.i.i:                                     ; preds = %do.body.i221.i
  call void @__sanitizer_cov_trace_pc() #19
  %53 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @br_vlan_valid_id.__msg, ptr %extack, align 4
  br label %br_vlan_rtm_process_one.exit

if.end95.i:                                       ; preds = %if.end92.i
  %54 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %16, align 4
  %tobool97.not.i = icmp eq ptr %55, null
  br i1 %tobool97.not.i, label %if.end95.i.if.end115.i_crit_edge, label %if.then98.i

if.end95.i.if.end115.i_crit_edge:                 ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end115.i

if.then98.i:                                      ; preds = %if.end95.i
  %add.ptr.i.i222.i = getelementptr i8, ptr %55, i32 4
  %56 = ptrtoint ptr %add.ptr.i.i222.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %add.ptr.i.i222.i, align 2
  %58 = ptrtoint ptr %14 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %57, ptr %14, align 2
  %59 = ptrtoint ptr %add.ptr.i220.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %add.ptr.i220.i, align 2
  %61 = or i16 %60, 16
  %62 = ptrtoint ptr %vrange_end.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %61, ptr %vrange_end.i, align 4
  %63 = load i16, ptr %add.ptr.i220.i, align 2
  %64 = or i16 %63, 8
  store i16 %64, ptr %add.ptr.i220.i, align 2
  %65 = load i16, ptr %14, align 2
  %66 = add i16 %65, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 4094, i16 %66)
  %67 = icmp ult i16 %66, 4094
  br i1 %67, label %lor.lhs.false.i, label %do.body.i224.i

do.body.i224.i:                                   ; preds = %if.then98.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @br_vlan_valid_id.__msg) #17
  br i1 %tobool86.not.i, label %do.body.i224.i.br_vlan_rtm_process_one.exit_crit_edge, label %if.then6.i225.i

do.body.i224.i.br_vlan_rtm_process_one.exit_crit_edge: ; preds = %do.body.i224.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_vlan_rtm_process_one.exit

if.then6.i225.i:                                  ; preds = %do.body.i224.i
  call void @__sanitizer_cov_trace_pc() #19
  %68 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @br_vlan_valid_id.__msg, ptr %extack, align 4
  br label %br_vlan_rtm_process_one.exit

lor.lhs.false.i:                                  ; preds = %if.then98.i
  %call112.i = call fastcc zeroext i1 @br_vlan_valid_range(ptr noundef nonnull %vrange_end.i, ptr noundef %add.ptr.i220.i, ptr noundef %extack) #17
  br i1 %call112.i, label %lor.lhs.false.i.if.end115.i_crit_edge, label %lor.lhs.false.i.br_vlan_rtm_process_one.exit_crit_edge

lor.lhs.false.i.br_vlan_rtm_process_one.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_vlan_rtm_process_one.exit

lor.lhs.false.i.if.end115.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end115.i

if.end115.i:                                      ; preds = %lor.lhs.false.i.if.end115.i_crit_edge, %if.end95.i.if.end115.i_crit_edge
  %vinfo_last.0.i = phi ptr [ %add.ptr.i220.i, %lor.lhs.false.i.if.end115.i_crit_edge ], [ null, %if.end95.i.if.end115.i_crit_edge ]
  %vinfo.0.i = phi ptr [ %vrange_end.i, %lor.lhs.false.i.if.end115.i_crit_edge ], [ %add.ptr.i220.i, %if.end95.i.if.end115.i_crit_edge ]
  %69 = zext i16 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.48)
  switch i16 %24, label %if.end115.i.if.then126.i_crit_edge [
    i16 112, label %sw.epilog.i
    i16 113, label %sw.bb124.i
  ]

if.end115.i.if.then126.i_crit_edge:               ; preds = %if.end115.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then126.i

sw.bb124.i:                                       ; preds = %if.end115.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then126.i

sw.epilog.i:                                      ; preds = %if.end115.i
  %70 = ptrtoint ptr %vinfo.0.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %vinfo.0.i, align 2
  %72 = and i16 %71, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %72)
  %tobool119.not.i = icmp eq i16 %72, 0
  br i1 %tobool119.not.i, label %sw.epilog.i.if.then126.i_crit_edge, label %sw.epilog.i.if.then136.i_crit_edge

sw.epilog.i.if.then136.i_crit_edge:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then136.i

sw.epilog.i.if.then126.i_crit_edge:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then126.i

if.then126.i:                                     ; preds = %sw.epilog.i.if.then126.i_crit_edge, %sw.bb124.i, %if.end115.i.if.then126.i_crit_edge
  %cmdmap.0246.i = phi i32 [ 19, %sw.epilog.i.if.then126.i_crit_edge ], [ 17, %sw.bb124.i ], [ 0, %if.end115.i.if.then126.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp_last.i) #17
  %73 = ptrtoint ptr %tmp_last.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %vinfo_last.0.i, ptr %tmp_last.i, align 4
  %call127.i = call i32 @br_process_vlan_info(ptr noundef %br.0.i, ptr noundef %p.0.i, i32 noundef %cmdmap.0246.i, ptr noundef %vinfo.0.i, ptr noundef nonnull %tmp_last.i, ptr noundef nonnull %changed.i, ptr noundef %extack) #17
  %74 = ptrtoint ptr %changed.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %changed.i, align 1, !range !176
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool128.not.i = icmp eq i8 %75, 0
  br i1 %tobool128.not.i, label %if.then126.i.if.end130.i_crit_edge, label %if.then129.i

if.then126.i.if.end130.i_crit_edge:               ; preds = %if.then126.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end130.i

if.then129.i:                                     ; preds = %if.then126.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @br_ifinfo_notify(i32 noundef %cmdmap.0246.i, ptr noundef %br.0.i, ptr noundef %p.0.i) #17
  br label %if.end130.i

if.end130.i:                                      ; preds = %if.then129.i, %if.then126.i.if.end130.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127.i)
  %tobool131.not.i = icmp eq i32 %call127.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp_last.i) #17
  br i1 %tobool131.not.i, label %if.end134.i, label %if.end130.i.br_vlan_rtm_process_one.exit_crit_edge

if.end130.i.br_vlan_rtm_process_one.exit_crit_edge: ; preds = %if.end130.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_vlan_rtm_process_one.exit

if.end134.i:                                      ; preds = %if.end130.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 112, i16 %24)
  %cmp.i75 = icmp eq i16 %24, 112
  br i1 %cmp.i75, label %if.end134.i.if.then136.i_crit_edge, label %if.end134.i.br_vlan_rtm_process_one.exit_crit_edge

if.end134.i.br_vlan_rtm_process_one.exit_crit_edge: ; preds = %if.end134.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_vlan_rtm_process_one.exit

if.end134.i.if.then136.i_crit_edge:               ; preds = %if.end134.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then136.i

if.then136.i:                                     ; preds = %if.end134.i.if.then136.i_crit_edge, %sw.epilog.i.if.then136.i_crit_edge
  %tobool137.not.i = icmp eq ptr %vinfo_last.0.i, null
  br i1 %tobool137.not.i, label %br_vlan_find.exit239.i, label %br_vlan_find.exit234.i

br_vlan_find.exit234.i:                           ; preds = %if.then136.i
  call void @__sanitizer_cov_trace_pc() #19
  %vid139.i = getelementptr inbounds %struct.bridge_vlan_info, ptr %vinfo_last.0.i, i32 0, i32 1
  %76 = ptrtoint ptr %vid139.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %vid139.i, align 2
  %call.i228.i = call fastcc ptr @br_vlan_lookup(ptr noundef nonnull %vg.0.i, i16 noundef zeroext %77) #17
  %vid141.i = getelementptr inbounds %struct.bridge_vlan_info, ptr %vinfo.0.i, i32 0, i32 1
  %78 = ptrtoint ptr %vid141.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %vid141.i, align 2
  %call.i231.i = call fastcc ptr @br_vlan_lookup(ptr noundef nonnull %vg.0.i, i16 noundef zeroext %79) #17
  br label %if.end146.i

br_vlan_find.exit239.i:                           ; preds = %if.then136.i
  call void @__sanitizer_cov_trace_pc() #19
  %vid144.i = getelementptr inbounds %struct.bridge_vlan_info, ptr %vinfo.0.i, i32 0, i32 1
  %80 = ptrtoint ptr %vid144.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %vid144.i, align 2
  %call.i236.i = call fastcc ptr @br_vlan_lookup(ptr noundef nonnull %vg.0.i, i16 noundef zeroext %81) #17
  br label %if.end146.i

if.end146.i:                                      ; preds = %br_vlan_find.exit239.i, %br_vlan_find.exit234.i
  %range_start.0.i = phi ptr [ %call.i228.i, %br_vlan_find.exit234.i ], [ %call.i236.i, %br_vlan_find.exit239.i ]
  %range_end.0.i = phi ptr [ %call.i231.i, %br_vlan_find.exit234.i ], [ %call.i236.i, %br_vlan_find.exit239.i ]
  %call148.i = call i32 @br_vlan_process_options(ptr noundef %br.0.i, ptr noundef %p.0.i, ptr noundef %range_start.0.i, ptr noundef %range_end.0.i, ptr noundef nonnull %tb.i, ptr noundef %extack) #17
  br label %br_vlan_rtm_process_one.exit

br_vlan_rtm_process_one.exit:                     ; preds = %if.end146.i, %if.end134.i.br_vlan_rtm_process_one.exit_crit_edge, %if.end130.i.br_vlan_rtm_process_one.exit_crit_edge, %lor.lhs.false.i.br_vlan_rtm_process_one.exit_crit_edge, %if.then6.i225.i, %do.body.i224.i.br_vlan_rtm_process_one.exit_crit_edge, %if.then6.i.i, %do.body.i221.i.br_vlan_rtm_process_one.exit_crit_edge, %if.then87.i, %do.body84.i.br_vlan_rtm_process_one.exit_crit_edge, %if.then75.i, %do.body73.i.br_vlan_rtm_process_one.exit_crit_edge, %nla_parse_nested.exit.i.br_vlan_rtm_process_one.exit_crit_edge, %if.then2.i.i, %do.body.i219.i.br_vlan_rtm_process_one.exit_crit_edge, %do.end50.i, %do.end.i
  %retval.1.i = phi i32 [ -19, %do.end50.i ], [ %call127.i, %if.end130.i.br_vlan_rtm_process_one.exit_crit_edge ], [ -19, %do.end.i ], [ %call6.i.i, %nla_parse_nested.exit.i.br_vlan_rtm_process_one.exit_crit_edge ], [ -22, %if.then75.i ], [ -22, %do.body73.i.br_vlan_rtm_process_one.exit_crit_edge ], [ -22, %if.then87.i ], [ -22, %do.body84.i.br_vlan_rtm_process_one.exit_crit_edge ], [ -22, %lor.lhs.false.i.br_vlan_rtm_process_one.exit_crit_edge ], [ %call148.i, %if.end146.i ], [ 0, %if.end134.i.br_vlan_rtm_process_one.exit_crit_edge ], [ -22, %if.then2.i.i ], [ -22, %do.body.i219.i.br_vlan_rtm_process_one.exit_crit_edge ], [ -22, %do.body.i221.i.br_vlan_rtm_process_one.exit_crit_edge ], [ -22, %if.then6.i.i ], [ -22, %do.body.i224.i.br_vlan_rtm_process_one.exit_crit_edge ], [ -22, %if.then6.i225.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %changed.i) #17
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %tb.i) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vrange_end.i) #17
  br label %sw.epilog

sw.bb19:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  %82 = ptrtoint ptr %nlmsg_type20 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %nlmsg_type20, align 4
  %conv21 = zext i16 %83 to i32
  %call22 = call i32 @br_vlan_rtm_process_global_options(ptr noundef nonnull %call3, ptr noundef %attr.086, i32 noundef %conv21, ptr noundef %extack) #17
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb19, %br_vlan_rtm_process_one.exit
  %err.1 = phi i32 [ %call22, %sw.bb19 ], [ %retval.1.i, %br_vlan_rtm_process_one.exit ]
  %inc = add i32 %vlans.088, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool23.not = icmp eq i32 %err.1, 0
  br i1 %tobool23.not, label %sw.epilog.for.inc_crit_edge, label %sw.epilog.for.end_crit_edge

sw.epilog.for.end_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

sw.epilog.for.inc_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %err.2 = phi i32 [ %err.087, %for.body.for.inc_crit_edge ], [ 0, %sw.epilog.for.inc_crit_edge ]
  %vlans.1 = phi i32 [ %vlans.088, %for.body.for.inc_crit_edge ], [ %inc, %sw.epilog.for.inc_crit_edge ]
  %84 = ptrtoint ptr %attr.086 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %attr.086, align 2
  %conv.i76 = zext i16 %85 to i32
  %sub.i = add nuw nsw i32 %conv.i76, 3
  %and.i77 = and i32 %sub.i, 131068
  %sub1.i78 = sub nsw i32 %rem.085, %and.i77
  %add.ptr.i79 = getelementptr i8, ptr %attr.086, i32 %and.i77
  %cmp.i = icmp sgt i32 %sub1.i78, 3
  br i1 %cmp.i, label %for.inc.land.lhs.true.i_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.inc.land.lhs.true.i_crit_edge:                ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true.i

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %sw.epilog.for.end_crit_edge, %land.lhs.true.i.for.end_crit_edge
  %err.3 = phi i32 [ %err.1, %sw.epilog.for.end_crit_edge ], [ %err.087, %land.lhs.true.i.for.end_crit_edge ], [ %err.2, %for.inc.for.end_crit_edge ]
  %vlans.2 = phi i32 [ %inc, %sw.epilog.for.end_crit_edge ], [ %vlans.088, %land.lhs.true.i.for.end_crit_edge ], [ %vlans.1, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vlans.2)
  %tobool27.not = icmp eq i32 %vlans.2, 0
  br i1 %tobool27.not, label %for.end.do.body29_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.end.do.body29_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body29

do.body29:                                        ; preds = %for.end.do.body29_crit_edge, %if.end12.do.body29_crit_edge
  call void @do_trace_netlink_extack(ptr noundef nonnull @br_vlan_rtm_process.__msg.29) #17
  %tobool31.not = icmp eq ptr %extack, null
  br i1 %tobool31.not, label %do.body29.cleanup_crit_edge, label %do.body29.cleanup.sink.split_crit_edge

do.body29.cleanup.sink.split_crit_edge:           ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.sink.split

do.body29.cleanup_crit_edge:                      ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

cleanup.sink.split:                               ; preds = %do.body29.cleanup.sink.split_crit_edge, %do.body.cleanup.sink.split_crit_edge, %do.body.i.i.cleanup.sink.split_crit_edge
  %__nlmsg_parse.__msg.sink = phi ptr [ @__nlmsg_parse.__msg, %do.body.i.i.cleanup.sink.split_crit_edge ], [ @br_vlan_rtm_process.__msg, %do.body.cleanup.sink.split_crit_edge ], [ @br_vlan_rtm_process.__msg.29, %do.body29.cleanup.sink.split_crit_edge ]
  %86 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %__nlmsg_parse.__msg.sink, ptr %extack, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.body29.cleanup_crit_edge, %for.end.cleanup_crit_edge, %do.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %nlmsg_parse.exit.cleanup_crit_edge, %do.body.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5.i.i, %nlmsg_parse.exit.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -22, %do.body.cleanup_crit_edge ], [ %err.3, %for.end.cleanup_crit_edge ], [ -22, %do.body29.cleanup_crit_edge ], [ -22, %do.body.i.i.cleanup_crit_edge ], [ -22, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @br_vlan_rtnl_uninit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_unregister(i32 noundef 7, i32 noundef 114) #17
  %call1 = tail call i32 @rtnl_unregister(i32 noundef 7, i32 noundef 112) #17
  %call2 = tail call i32 @rtnl_unregister(i32 noundef 7, i32 noundef 113) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_unregister(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_vlan_untag(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_fdb_add_local(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_multicast_toggle_one_vlan(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_switchdev_port_vlan_del(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_multicast_port_ctx_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_multicast_ctx_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @br_vlan_put_master(ptr noundef %masterv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %masterv, i32 0, i32 3
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %flags.i, align 2
  %2 = and i16 %1, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.i.not = icmp eq i16 %2, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = getelementptr inbounds %struct.net_bridge_vlan, ptr %masterv, i32 0, i32 7
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #17
  br i1 %call.i, label %if.end.br_vlan_group.exit_crit_edge, label %land.lhs.true.i

if.end.br_vlan_group.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_vlan_group.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.br_vlan_group.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.br_vlan_group.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_vlan_group.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @br_vlan_group.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.br_vlan_group.exit_crit_edge, label %if.then.i

land.lhs.true2.i.br_vlan_group.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_vlan_group.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @br_vlan_group.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 1471, ptr noundef nonnull @.str.10) #17
  br label %br_vlan_group.exit

br_vlan_group.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.br_vlan_group.exit_crit_edge, %land.lhs.true.i.br_vlan_group.exit_crit_edge, %if.end.br_vlan_group.exit_crit_edge
  %vlgrp.i = getelementptr inbounds %struct.net_bridge, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %vlgrp.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vlgrp.i, align 4
  %8 = getelementptr inbounds %struct.net_bridge_vlan, ptr %masterv, i32 0, i32 8
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %8, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !195
  tail call void @llvm.prefetch.p0(ptr %8, i32 1, i32 3, i32 1) #17
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %8, ptr %8, i32 1, ptr elementtype(i32) %8) #17, !srcloc !196
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then3, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %br_vlan_group.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i, !prof !170

if.end5.i.i.i.cleanup_crit_edge:                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @refcount_warn_saturate(ptr noundef %8, i32 noundef 3) #17
  br label %cleanup

if.then3:                                         ; preds = %br_vlan_group.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !197
  tail call fastcc void @rhashtable_remove_fast(ptr noundef %7, ptr noundef %masterv, [7 x i32] [i32 196610, i32 524288, i32 4096, i32 256, i32 0, i32 0, i32 ptrtoint (ptr @br_vlan_cmp to i32)])
  %vlist.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %masterv, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %vlist.i) #17
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then3.__vlan_del_list.exit_crit_edge

if.then3.__vlan_del_list.exit_crit_edge:          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #19
  br label %__vlan_del_list.exit

if.end.i.i.i:                                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %masterv, i32 0, i32 11, i32 1
  %10 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i.i, align 4
  %12 = ptrtoint ptr %vlist.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vlist.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %__vlan_del_list.exit

__vlan_del_list.exit:                             ; preds = %if.end.i.i.i, %if.then3.__vlan_del_list.exit_crit_edge
  %prev.i.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %masterv, i32 0, i32 11, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @br_multicast_toggle_one_vlan(ptr noundef %masterv, i1 noundef zeroext false) #17
  %17 = getelementptr inbounds %struct.net_bridge_vlan, ptr %masterv, i32 0, i32 10
  tail call void @br_multicast_ctx_deinit(ptr noundef %17) #17
  %rcu = getelementptr inbounds %struct.net_bridge_vlan, ptr %masterv, i32 0, i32 12
  tail call void @call_rcu(ptr noundef %rcu, ptr noundef nonnull @br_master_vlan_rcu_free) #17
  br label %cleanup

cleanup:                                          ; preds = %__vlan_del_list.exit, %if.then10.i.i.i, %if.end5.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_mutex_is_held(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_lock(ptr noundef %tbl, ptr noundef %bkt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @local_bh_disable()
  %0 = tail call i32 @llvm.read_register.i32(metadata !155) #17
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %3, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !198
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.body14.i, %entry
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #17
  %4 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %bkt, align 4
  %and.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %test_and_set_bit_lock.exit.i, label %while.cond.i.do.body2.i_crit_edge, !prof !199

while.cond.i.do.body2.i_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body2.i

test_and_set_bit_lock.exit.i:                     ; preds = %while.cond.i
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #17
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #17, !srcloc !200
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !201
  %and1.i.i.i = and i32 %asmresult.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %phi.cmp.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %phi.cmp.i.not.i, label %__here, label %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, !prof !170

test_and_set_bit_lock.exit.i.do.body2.i_crit_edge: ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body2.i

do.body2.i:                                       ; preds = %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, %while.cond.i.do.body2.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !202
  %7 = tail call i32 @llvm.read_register.i32(metadata !155) #17
  %and.i.i.i1.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i1.i to ptr
  %preempt_count.i.i2.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i2.i, align 4
  %sub.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i2.i, align 4
  br label %do.body4.i

do.body4.i:                                       ; preds = %do.body4.i.do.body4.i_crit_edge, %do.body2.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !203
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #17, !srcloc !204
  %11 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %bkt, align 4
  %and1.i.i = and i32 %12, 1
  %tobool12.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool12.not.i, label %do.body14.i, label %do.body4.i.do.body4.i_crit_edge

do.body4.i.do.body4.i_crit_edge:                  ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body4.i

do.body14.i:                                      ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #19
  %13 = tail call i32 @llvm.read_register.i32(metadata !155) #17
  %and.i.i.i3.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i3.i to ptr
  %preempt_count.i.i4.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i4.i, align 4
  %add.i5.i = add i32 %16, 1
  store volatile i32 %add.i5.i, ptr %preempt_count.i.i4.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !205
  br label %while.cond.i

__here:                                           ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_acquire(ptr noundef %dep_map, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rht_lock, %__here) to i32)) #17
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_unlock(ptr noundef %tbl, ptr noundef %bkt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  br label %__here

__here:                                           ; preds = %entry
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@rht_unlock, %__here) to i32)) #17
  %0 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bkt, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %do.body4.i, label %bit_spin_unlock.exit, !prof !172

do.body4.i:                                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 60, 0\0A.popsection", ""() #17, !srcloc !206
  unreachable

bit_spin_unlock.exit:                             ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #19
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !207
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #17
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #17, !srcloc !208
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !209
  %3 = tail call i32 @llvm.read_register.i32(metadata !155) #17
  %and.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %6, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call fastcc void @local_bh_enable()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rhashtable_insert_slow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_bucket_is_held(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_assign_unlock(ptr noundef %tbl, ptr noundef %bkt, ptr noundef %obj) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %0 = ptrtoint ptr %obj to i32
  %and.i = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %spec.select = select i1 %tobool.i.not, ptr %obj, ptr null
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@rht_assign_unlock, %__here) to i32)) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !210
  %1 = ptrtoint ptr %bkt to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %spec.select, ptr %bkt, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !211
  %2 = tail call i32 @llvm.read_register.i32(metadata !155) #17
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i, align 4
  %sub.i = add i32 %5, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i, align 4
  tail call fastcc void @local_bh_enable()
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested_insert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @br_vlan_get_upper_bind_vlan_dev(ptr noundef %dev, i16 noundef zeroext %vid) unnamed_addr #0 align 64 {
entry:
  %data = alloca %struct.br_vlan_bind_walk_data, align 8
  %priv = alloca %struct.netdev_nested_priv, align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data) #17
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %data, align 8, !annotation !175
  store i16 %vid, ptr %data, align 8
  %result = getelementptr inbounds %struct.br_vlan_bind_walk_data, ptr %data, i32 0, i32 1
  %1 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %result, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %priv) #17
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 72057594037927935, ptr %priv, align 8, !annotation !175
  %data2 = getelementptr inbounds %struct.netdev_nested_priv, ptr %priv, i32 0, i32 1
  %3 = ptrtoint ptr %data2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %data, ptr %data2, align 4
  %4 = call i32 @llvm.read_register.i32(metadata !155) #17
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !178
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #17
  %call.i = call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #17
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
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 696, ptr noundef nonnull @.str.19) #17
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = call i32 @netdev_walk_all_upper_dev_rcu(ptr noundef %dev, ptr noundef nonnull @br_vlan_match_bind_vlan_dev_fn, ptr noundef nonnull %priv) #17
  %call.i4 = call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i4, label %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i7

rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

land.lhs.true.i7:                                 ; preds = %rcu_read_lock.exit
  %call1.i5 = call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i5)
  %tobool.not.i6 = icmp eq i32 %call1.i5, 0
  br i1 %tobool.not.i6, label %land.lhs.true.i7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i9

land.lhs.true.i7.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i7
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

land.lhs.true2.i9:                                ; preds = %land.lhs.true.i7
  %.b4.i8 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i8, label %land.lhs.true2.i9.rcu_read_unlock.exit_crit_edge, label %if.then.i10

land.lhs.true2.i9.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i9
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

if.then.i10:                                      ; preds = %land.lhs.true2.i9
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 724, ptr noundef nonnull @.str.20) #17
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i10, %land.lhs.true2.i9.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i7.rcu_read_unlock.exit_crit_edge, %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !179
  %8 = call i32 @llvm.read_register.i32(metadata !155) #17
  %and.i.i.i.i.i11 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i11 to ptr
  %preempt_count.i.i.i.i12 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i12, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i12, align 4
  call void @rcu_read_unlock_strict() #17
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  %12 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %result, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %priv) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data) #17
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @br_vlan_set_vlan_dev_state(ptr noundef readonly %br, ptr noundef %vlan_dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %vlan_id = getelementptr i8, ptr %vlan_dev, i32 2410
  %0 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vlan_id, align 2
  %dev = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @netif_carrier_off(ptr noundef %vlan_dev) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %port_list = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 9
  %7 = ptrtoint ptr %port_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn34 = load ptr, ptr %port_list, align 4
  %cmp.not35 = icmp eq ptr %.pn34, %port_list
  br i1 %cmp.not35, label %if.end.if.else_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn36 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn34, %if.end.for.body_crit_edge ]
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #17
  br i1 %call.i, label %for.body.nbp_vlan_group.exit_crit_edge, label %land.lhs.true.i

for.body.nbp_vlan_group.exit_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %nbp_vlan_group.exit

land.lhs.true.i:                                  ; preds = %for.body
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i28 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i28, label %land.lhs.true.i.nbp_vlan_group.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.nbp_vlan_group.exit_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %nbp_vlan_group.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @nbp_vlan_group.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.nbp_vlan_group.exit_crit_edge, label %if.then.i

land.lhs.true2.i.nbp_vlan_group.exit_crit_edge:   ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %nbp_vlan_group.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @nbp_vlan_group.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 1477, ptr noundef nonnull @.str.10) #17
  br label %nbp_vlan_group.exit

nbp_vlan_group.exit:                              ; preds = %if.then.i, %land.lhs.true2.i.nbp_vlan_group.exit_crit_edge, %land.lhs.true.i.nbp_vlan_group.exit_crit_edge, %for.body.nbp_vlan_group.exit_crit_edge
  %vlgrp.i = getelementptr i8, ptr %.pn36, i32 12
  %8 = ptrtoint ptr %vlgrp.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vlgrp.i, align 8
  %tobool.not.i29 = icmp eq ptr %9, null
  br i1 %tobool.not.i29, label %nbp_vlan_group.exit.for.inc_crit_edge, label %br_vlan_find.exit

nbp_vlan_group.exit.for.inc_crit_edge:            ; preds = %nbp_vlan_group.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

br_vlan_find.exit:                                ; preds = %nbp_vlan_group.exit
  %call.i30 = tail call fastcc ptr @br_vlan_lookup(ptr noundef nonnull %9, i16 noundef zeroext %1) #17
  %tobool.not = icmp eq ptr %call.i30, null
  br i1 %tobool.not, label %br_vlan_find.exit.for.inc_crit_edge, label %land.lhs.true

br_vlan_find.exit.for.inc_crit_edge:              ; preds = %br_vlan_find.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

land.lhs.true:                                    ; preds = %br_vlan_find.exit
  %dev5 = getelementptr i8, ptr %.pn36, i32 -8
  %10 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev5, align 4
  %flags.i = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 14
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i31 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i31, label %land.lhs.true.for.inc_crit_edge, label %br_vlan_is_dev_up.exit

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

br_vlan_is_dev_up.exit:                           ; preds = %land.lhs.true
  %operstate.i.i = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 50
  %14 = ptrtoint ptr %operstate.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %operstate.i.i, align 8
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.50)
  switch i8 %15, label %br_vlan_is_dev_up.exit.for.inc_crit_edge [
    i8 6, label %br_vlan_is_dev_up.exit.if.then15.critedge_crit_edge
    i8 0, label %br_vlan_is_dev_up.exit.if.then15.critedge_crit_edge37
  ]

br_vlan_is_dev_up.exit.if.then15.critedge_crit_edge37: ; preds = %br_vlan_is_dev_up.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then15.critedge

br_vlan_is_dev_up.exit.if.then15.critedge_crit_edge: ; preds = %br_vlan_is_dev_up.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then15.critedge

br_vlan_is_dev_up.exit.for.inc_crit_edge:         ; preds = %br_vlan_is_dev_up.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.inc:                                          ; preds = %br_vlan_is_dev_up.exit.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %br_vlan_find.exit.for.inc_crit_edge, %nbp_vlan_group.exit.for.inc_crit_edge
  %17 = ptrtoint ptr %.pn36 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn = load ptr, ptr %.pn36, align 4
  %cmp.not = icmp eq ptr %.pn, %port_list
  br i1 %cmp.not, label %for.inc.if.else_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.inc.if.else_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else

if.then15.critedge:                               ; preds = %br_vlan_is_dev_up.exit.if.then15.critedge_crit_edge, %br_vlan_is_dev_up.exit.if.then15.critedge_crit_edge37
  tail call void @netif_carrier_on(ptr noundef %vlan_dev) #17
  br label %cleanup

if.else:                                          ; preds = %for.inc.if.else_crit_edge, %if.end.if.else_crit_edge
  tail call void @netif_carrier_off(ptr noundef %vlan_dev) #17
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then15.critedge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netdev_walk_all_upper_dev_rcu(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @br_vlan_match_bind_vlan_dev_fn(ptr noundef %dev, ptr nocapture noundef readonly %priv) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr inbounds %struct.netdev_nested_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %2 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %priv_flags.i.i, align 16
  %and.i.i = and i64 %3, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.if.end_crit_edge, label %br_vlan_is_bind_vlan_dev.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

br_vlan_is_bind_vlan_dev.exit:                    ; preds = %entry
  %flags.i = getelementptr i8, ptr %dev, i32 2412
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %flags.i, align 4
  %6 = and i16 %5, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not = icmp eq i16 %6, 0
  br i1 %tobool.not, label %br_vlan_is_bind_vlan_dev.exit.if.end_crit_edge, label %land.lhs.true

br_vlan_is_bind_vlan_dev.exit.if.end_crit_edge:   ; preds = %br_vlan_is_bind_vlan_dev.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true:                                    ; preds = %br_vlan_is_bind_vlan_dev.exit
  %vlan_id = getelementptr i8, ptr %dev, i32 2410
  %7 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %vlan_id, align 2
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %10)
  %cmp = icmp eq i16 %8, %10
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %result = getelementptr inbounds %struct.br_vlan_bind_walk_data, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dev, ptr %result, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %br_vlan_is_bind_vlan_dev.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %found.0 = phi i32 [ 1, %if.then ], [ 0, %land.lhs.true.if.end_crit_edge ], [ 0, %br_vlan_is_bind_vlan_dev.exit.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %found.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rhashtable_remove_fast(ptr noundef %ht, ptr noundef %obj, [7 x i32] %params.coerce) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %0 = tail call i32 @llvm.read_register.i32(metadata !155) #17
  %and.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !178
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #17
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 696, ptr noundef nonnull @.str.19) #17
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %4 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %ht, align 4
  %call.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %rcu_read_lock.exit.i.do.end10.i_crit_edge

rcu_read_lock.exit.i.do.end10.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end10.i

lor.lhs.false.i:                                  ; preds = %rcu_read_lock.exit.i
  %call3.i = tail call i32 @rcu_read_lock_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.do.end10.i_crit_edge

lor.lhs.false.i.do.end10.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end10.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call5.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i.do.end10.i_crit_edge, label %land.lhs.true7.i

land.lhs.true.i.do.end10.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end10.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i
  %.b2.i = load i1, ptr @__rhashtable_remove_fast.__warned, align 1
  br i1 %.b2.i, label %land.lhs.true7.i.do.end10.i_crit_edge, label %if.then.i

land.lhs.true7.i.do.end10.i_crit_edge:            ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end10.i

if.then.i:                                        ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @__rhashtable_remove_fast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 1076, ptr noundef nonnull @.str.9) #17
  br label %do.end10.i

do.end10.i:                                       ; preds = %if.then.i, %land.lhs.true7.i.do.end10.i_crit_edge, %land.lhs.true.i.do.end10.i_crit_edge, %lor.lhs.false.i.do.end10.i_crit_edge, %rcu_read_lock.exit.i.do.end10.i_crit_edge
  %params.coerce.fca.0.extract.i.i.i = extractvalue [7 x i32] %params.coerce, 0
  %params.coerce.fca.5.extract.i.i.i = extractvalue [7 x i32] %params.coerce, 5
  %6 = inttoptr i32 %params.coerce.fca.5.extract.i.i.i to ptr
  %head_offset.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %params.coerce.fca.5.extract.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %params.coerce.fca.5.extract.i.i.i, 0
  %conv.i.i.i = and i32 %params.coerce.fca.0.extract.i.i.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %conv.i.i.i, 0
  %key_len6.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 1
  %params.coerce.fca.1.extract.i.i.i = extractvalue [7 x i32] %params.coerce, 1
  %params.sroa.3.4.extract.shift.i.i.i = lshr i32 %params.coerce.fca.1.extract.i.i.i, 16
  %hashfn.i.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 7
  %key_len1.i.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 1
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.end33.i.while.cond.i_crit_edge, %do.end10.i
  %tbl.0.i = phi ptr [ %5, %do.end10.i ], [ %45, %do.end33.i.while.cond.i_crit_edge ]
  %7 = ptrtoint ptr %head_offset.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %head_offset.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %8 to i32
  %idx.neg.i.i.i.i = sub nsw i32 0, %conv.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %obj, i32 %idx.neg.i.i.i.i
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i.i.i, label %cond.true.i.i.i, !prof !172

cond.true.i.i.i:                                  ; preds = %while.cond.i
  br i1 %tobool4.not.i.i.i, label %cond.false.i.i.i, label %cond.true.i.i.i.cond.end.i.i.i_crit_edge

cond.true.i.i.i.cond.end.i.i.i_crit_edge:         ; preds = %cond.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end.i.i.i

cond.false.i.i.i:                                 ; preds = %cond.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %9 = ptrtoint ptr %key_len6.i.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %key_len6.i.i.i, align 2
  %conv7.i.i.i = zext i16 %10 to i32
  br label %cond.end.i.i.i

cond.end.i.i.i:                                   ; preds = %cond.false.i.i.i, %cond.true.i.i.i.cond.end.i.i.i_crit_edge
  %cond.i.i.i = phi i32 [ %conv7.i.i.i, %cond.false.i.i.i ], [ %conv.i.i.i, %cond.true.i.i.i.cond.end.i.i.i_crit_edge ]
  %hash_rnd.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 2
  %11 = ptrtoint ptr %hash_rnd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hash_rnd.i.i.i, align 8
  %call8.i.i.i = tail call i32 %6(ptr noundef %add.ptr.i.i.i.i, i32 noundef %cond.i.i.i, i32 noundef %12) #17
  br label %rht_head_hashfn.exit.i.i

if.then.i.i.i.i.i:                                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  %hash_rnd.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 2
  %13 = ptrtoint ptr %hash_rnd.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hash_rnd.i.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %params.sroa.3.4.extract.shift.i.i.i
  %15 = ptrtoint ptr %hashfn.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hashfn.i.i.i.i.i, align 4
  %17 = ptrtoint ptr %key_len1.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %key_len1.i.i.i.i.i, align 4
  %call.i.i.i.i.i = tail call i32 %16(ptr noundef %add.ptr.i.i.i, i32 noundef %18, i32 noundef %14) #17
  br label %rht_head_hashfn.exit.i.i

rht_head_hashfn.exit.i.i:                         ; preds = %if.then.i.i.i.i.i, %cond.end.i.i.i
  %hash.2.i.i.sink.i.i.i = phi i32 [ %call8.i.i.i, %cond.end.i.i.i ], [ %call.i.i.i.i.i, %if.then.i.i.i.i.i ]
  %19 = ptrtoint ptr %tbl.0.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tbl.0.i, align 128
  %sub.i.i.i.i.i = add i32 %20, -1
  %and.i3.i.i.i.i = and i32 %sub.i.i.i.i.i, %hash.2.i.i.sink.i.i.i
  %nest.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 1
  %21 = ptrtoint ptr %nest.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nest.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i3.i.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i3.i.i, label %cond.false.i5.i.i, label %cond.true.i4.i.i, !prof !170

cond.true.i4.i.i:                                 ; preds = %rht_head_hashfn.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %call.i.i.i = tail call ptr @__rht_bucket_nested(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #17
  br label %rht_bucket_var.exit.i.i

cond.false.i5.i.i:                                ; preds = %rht_head_hashfn.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx.i.i.i = getelementptr %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 8, i32 %and.i3.i.i.i.i
  br label %rht_bucket_var.exit.i.i

rht_bucket_var.exit.i.i:                          ; preds = %cond.false.i5.i.i, %cond.true.i4.i.i
  %cond.i6.i.i = phi ptr [ %call.i.i.i, %cond.true.i4.i.i ], [ %arrayidx.i.i.i, %cond.false.i5.i.i ]
  %tobool.not.i3.i = icmp eq ptr %cond.i6.i.i, null
  br i1 %tobool.not.i3.i, label %rht_bucket_var.exit.i.i.land.rhs.i_crit_edge, label %if.end.i.i

rht_bucket_var.exit.i.i.land.rhs.i_crit_edge:     ; preds = %rht_bucket_var.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i

if.end.i.i:                                       ; preds = %rht_bucket_var.exit.i.i
  tail call fastcc void @rht_lock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i) #17
  %call.i8.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8.i.i)
  %tobool.not.i9.i.i = icmp eq i32 %call.i8.i.i, 0
  br i1 %tobool.not.i9.i.i, label %land.lhs.true.i.i.i, label %if.end.i.i.rht_ptr.exit.i.i_crit_edge

if.end.i.i.rht_ptr.exit.i.i_crit_edge:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rht_ptr.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i.i
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i.i.i.rht_ptr.exit.i.i_crit_edge, label %land.lhs.true3.i.i.i

land.lhs.true.i.i.i.rht_ptr.exit.i.i_crit_edge:   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rht_ptr.exit.i.i

land.lhs.true3.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b7.i.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i.i.i, label %land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge:  ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rht_ptr.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 377, ptr noundef nonnull @.str.10) #17
  br label %rht_ptr.exit.i.i

rht_ptr.exit.i.i:                                 ; preds = %if.then.i.i.i, %land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rht_ptr.exit.i.i_crit_edge, %if.end.i.i.rht_ptr.exit.i.i_crit_edge
  %23 = ptrtoint ptr %cond.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cond.i6.i.i, align 4
  %25 = ptrtoint ptr %24 to i32
  %and.i.i.i.i = and i32 %25, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  %26 = ptrtoint ptr %cond.i6.i.i to i32
  %or.i.i.i.i = or i32 %26, 1
  %cond.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 %or.i.i.i.i, i32 %and.i.i.i.i
  %and.i20.i.i = and i32 %cond.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i20.i.i)
  %tobool.i.not21.i.i = icmp eq i32 %and.i20.i.i, 0
  br i1 %tobool.i.not21.i.i, label %for.body.preheader.i.i, label %rht_ptr.exit.i.i.unlocked.i.i_crit_edge

rht_ptr.exit.i.i.unlocked.i.i_crit_edge:          ; preds = %rht_ptr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %unlocked.i.i

for.body.preheader.i.i:                           ; preds = %rht_ptr.exit.i.i
  %27 = inttoptr i32 %cond.i.i.i.i to ptr
  %cmp.not.i20.i = icmp eq ptr %27, %obj
  br i1 %cmp.not.i20.i, label %for.body.preheader.i.i.do.body54.i.i_crit_edge, label %for.body.preheader.i.i.do.body145.i.i_crit_edge

for.body.preheader.i.i.do.body145.i.i_crit_edge:  ; preds = %for.body.preheader.i.i
  br label %do.body145.i.i

for.body.preheader.i.i.do.body54.i.i_crit_edge:   ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body54.i.i

for.body.i.i:                                     ; preds = %do.end156.i.i
  %cmp.not.i.i = icmp eq ptr %32, %obj
  br i1 %cmp.not.i.i, label %for.body.i.i.do.body54.i.i_crit_edge, label %for.body.i.i.do.body145.i.i_crit_edge

for.body.i.i.do.body145.i.i_crit_edge:            ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body145.i.i

for.body.i.i.do.body54.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body54.i.i

do.body54.i.i:                                    ; preds = %for.body.i.i.do.body54.i.i_crit_edge, %for.body.preheader.i.i.do.body54.i.i_crit_edge
  %pprev.023.i.lcssa.i = phi ptr [ %he.022.i21.i, %for.body.i.i.do.body54.i.i_crit_edge ], [ null, %for.body.preheader.i.i.do.body54.i.i_crit_edge ]
  %call55.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i.i)
  %tobool56.not.i.i = icmp eq i32 %call55.i.i, 0
  br i1 %tobool56.not.i.i, label %land.lhs.true57.i.i, label %do.body54.i.i.do.end65.i.i_crit_edge

do.body54.i.i.do.end65.i.i_crit_edge:             ; preds = %do.body54.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end65.i.i

land.lhs.true57.i.i:                              ; preds = %do.body54.i.i
  %call58.i.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i.i)
  %tobool59.not.i.i = icmp eq i32 %call58.i.i, 0
  br i1 %tobool59.not.i.i, label %land.lhs.true57.i.i.do.end65.i.i_crit_edge, label %land.lhs.true60.i.i

land.lhs.true57.i.i.do.end65.i.i_crit_edge:       ; preds = %land.lhs.true57.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end65.i.i

land.lhs.true60.i.i:                              ; preds = %land.lhs.true57.i.i
  %.b2.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.23, align 1
  br i1 %.b2.i.i, label %land.lhs.true60.i.i.do.end65.i.i_crit_edge, label %if.then62.i.i

land.lhs.true60.i.i.do.end65.i.i_crit_edge:       ; preds = %land.lhs.true60.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end65.i.i

if.then62.i.i:                                    ; preds = %land.lhs.true60.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.23, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 1032, ptr noundef nonnull @.str.10) #17
  br label %do.end65.i.i

do.end65.i.i:                                     ; preds = %if.then62.i.i, %land.lhs.true60.i.i.do.end65.i.i_crit_edge, %land.lhs.true57.i.i.do.end65.i.i_crit_edge, %do.body54.i.i.do.end65.i.i_crit_edge
  %28 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %obj, align 4
  %tobool103.not.i.i = icmp eq ptr %pprev.023.i.lcssa.i, null
  br i1 %tobool103.not.i.i, label %if.else142.i.i, label %do.body105.i.i

do.body105.i.i:                                   ; preds = %do.end65.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !212
  %30 = ptrtoint ptr %pprev.023.i.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %29, ptr %pprev.023.i.lcssa.i, align 4
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i) #17
  br label %if.then160.i.i

if.else142.i.i:                                   ; preds = %do.end65.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @rht_assign_unlock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i, ptr noundef %29) #17
  br label %if.then160.i.i

do.body145.i.i:                                   ; preds = %for.body.i.i.do.body145.i.i_crit_edge, %for.body.preheader.i.i.do.body145.i.i_crit_edge
  %he.022.i21.i = phi ptr [ %32, %for.body.i.i.do.body145.i.i_crit_edge ], [ %27, %for.body.preheader.i.i.do.body145.i.i_crit_edge ]
  %call146.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146.i.i)
  %tobool147.not.i.i = icmp eq i32 %call146.i.i, 0
  br i1 %tobool147.not.i.i, label %land.lhs.true148.i.i, label %do.body145.i.i.do.end156.i.i_crit_edge

do.body145.i.i.do.end156.i.i_crit_edge:           ; preds = %do.body145.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end156.i.i

land.lhs.true148.i.i:                             ; preds = %do.body145.i.i
  %call149.i.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149.i.i)
  %tobool150.not.i.i = icmp eq i32 %call149.i.i, 0
  br i1 %tobool150.not.i.i, label %land.lhs.true148.i.i.do.end156.i.i_crit_edge, label %land.lhs.true151.i.i

land.lhs.true148.i.i.do.end156.i.i_crit_edge:     ; preds = %land.lhs.true148.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end156.i.i

land.lhs.true151.i.i:                             ; preds = %land.lhs.true148.i.i
  %.b2281.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.25, align 1
  br i1 %.b2281.i.i, label %land.lhs.true151.i.i.do.end156.i.i_crit_edge, label %if.then153.i.i

land.lhs.true151.i.i.do.end156.i.i_crit_edge:     ; preds = %land.lhs.true151.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end156.i.i

if.then153.i.i:                                   ; preds = %land.lhs.true151.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.25, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 1004, ptr noundef nonnull @.str.10) #17
  br label %do.end156.i.i

do.end156.i.i:                                    ; preds = %if.then153.i.i, %land.lhs.true151.i.i.do.end156.i.i_crit_edge, %land.lhs.true148.i.i.do.end156.i.i_crit_edge, %do.body145.i.i.do.end156.i.i_crit_edge
  %31 = ptrtoint ptr %he.022.i21.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %he.022.i21.i, align 4
  %33 = ptrtoint ptr %32 to i32
  %and.i.i.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %for.body.i.i, label %do.end156.i.i.unlocked.i.i_crit_edge

do.end156.i.i.unlocked.i.i_crit_edge:             ; preds = %do.end156.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %unlocked.i.i

unlocked.i.i:                                     ; preds = %do.end156.i.i.unlocked.i.i_crit_edge, %rht_ptr.exit.i.i.unlocked.i.i_crit_edge
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i) #17
  br label %land.rhs.i

if.then160.i.i:                                   ; preds = %if.else142.i.i, %do.body105.i.i
  %nelems.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nelems.i.i, i32 noundef 4) #17
  tail call void @llvm.prefetch.p0(ptr %nelems.i.i, i32 1, i32 3, i32 1) #17
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nelems.i.i, ptr %nelems.i.i, i32 1, ptr elementtype(i32) %nelems.i.i) #17, !srcloc !213
  %automatic_shrinking.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 6
  %35 = ptrtoint ptr %automatic_shrinking.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %automatic_shrinking.i.i, align 2, !range !176
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool161.not.i.i = icmp eq i8 %36, 0
  br i1 %tobool161.not.i.i, label %if.then160.i.i.while.end.i_crit_edge, label %land.rhs162.i.i

if.then160.i.i.while.end.i_crit_edge:             ; preds = %if.then160.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end.i

land.rhs162.i.i:                                  ; preds = %if.then160.i.i
  %call.i.i.i10.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i, i32 noundef 4) #17
  %37 = ptrtoint ptr %nelems.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %nelems.i.i, align 4
  %39 = ptrtoint ptr %tbl.0.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tbl.0.i, align 128
  %mul.i.i.i = mul i32 %40, 3
  %div.i.i.i = udiv i32 %mul.i.i.i, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %div.i.i.i)
  %cmp.i.i.i = icmp ult i32 %38, %div.i.i.i
  br i1 %cmp.i.i.i, label %rht_shrink_below_30.exit.i.i, label %land.rhs162.i.i.while.end.i_crit_edge

land.rhs162.i.i.while.end.i_crit_edge:            ; preds = %land.rhs162.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end.i

rht_shrink_below_30.exit.i.i:                     ; preds = %land.rhs162.i.i
  %min_size.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 5
  %41 = ptrtoint ptr %min_size.i.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %min_size.i.i.i, align 4
  %conv.i11.i.i = zext i16 %42 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %conv.i11.i.i)
  %cmp2.i.i.i = icmp ugt i32 %40, %conv.i11.i.i
  br i1 %cmp2.i.i.i, label %if.then168.i.i, label %rht_shrink_below_30.exit.i.i.while.end.i_crit_edge, !prof !172

rht_shrink_below_30.exit.i.i.while.end.i_crit_edge: ; preds = %rht_shrink_below_30.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end.i

if.then168.i.i:                                   ; preds = %rht_shrink_below_30.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %run_work.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %43 = load ptr, ptr @system_wq, align 4
  %call.i.i12.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %43, ptr noundef %run_work.i.i) #17
  br label %while.end.i

land.rhs.i:                                       ; preds = %unlocked.i.i, %rht_bucket_var.exit.i.i.land.rhs.i_crit_edge
  %future_tbl.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 5
  %44 = ptrtoint ptr %future_tbl.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %future_tbl.i, align 4
  %call20.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %lor.lhs.false22.i, label %land.rhs.i.do.end33.i_crit_edge

land.rhs.i.do.end33.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end33.i

lor.lhs.false22.i:                                ; preds = %land.rhs.i
  %call23.i = tail call i32 @rcu_read_lock_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %land.lhs.true25.i, label %lor.lhs.false22.i.do.end33.i_crit_edge

lor.lhs.false22.i.do.end33.i_crit_edge:           ; preds = %lor.lhs.false22.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end33.i

land.lhs.true25.i:                                ; preds = %lor.lhs.false22.i
  %call26.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %land.lhs.true25.i.do.end33.i_crit_edge, label %land.lhs.true28.i

land.lhs.true25.i.do.end33.i_crit_edge:           ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end33.i

land.lhs.true28.i:                                ; preds = %land.lhs.true25.i
  %.b401.i = load i1, ptr @__rhashtable_remove_fast.__warned.21, align 1
  br i1 %.b401.i, label %land.lhs.true28.i.do.end33.i_crit_edge, label %if.then30.i

land.lhs.true28.i.do.end33.i_crit_edge:           ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end33.i

if.then30.i:                                      ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @__rhashtable_remove_fast.__warned.21, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 1085, ptr noundef nonnull @.str.9) #17
  br label %do.end33.i

do.end33.i:                                       ; preds = %if.then30.i, %land.lhs.true28.i.do.end33.i_crit_edge, %land.lhs.true25.i.do.end33.i_crit_edge, %lor.lhs.false22.i.do.end33.i_crit_edge, %land.rhs.i.do.end33.i_crit_edge
  %tobool35.not.i = icmp eq ptr %45, null
  br i1 %tobool35.not.i, label %do.end33.i.while.end.i_crit_edge, label %do.end33.i.while.cond.i_crit_edge

do.end33.i.while.cond.i_crit_edge:                ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.cond.i

do.end33.i.while.end.i_crit_edge:                 ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end.i

while.end.i:                                      ; preds = %do.end33.i.while.end.i_crit_edge, %if.then168.i.i, %rht_shrink_below_30.exit.i.i.while.end.i_crit_edge, %land.rhs162.i.i.while.end.i_crit_edge, %if.then160.i.i.while.end.i_crit_edge
  %call.i4.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i4.i, label %while.end.i.__rhashtable_remove_fast.exit_crit_edge, label %land.lhs.true.i7.i

while.end.i.__rhashtable_remove_fast.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__rhashtable_remove_fast.exit

land.lhs.true.i7.i:                               ; preds = %while.end.i
  %call1.i5.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i5.i)
  %tobool.not.i6.i = icmp eq i32 %call1.i5.i, 0
  br i1 %tobool.not.i6.i, label %land.lhs.true.i7.i.__rhashtable_remove_fast.exit_crit_edge, label %land.lhs.true2.i9.i

land.lhs.true.i7.i.__rhashtable_remove_fast.exit_crit_edge: ; preds = %land.lhs.true.i7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__rhashtable_remove_fast.exit

land.lhs.true2.i9.i:                              ; preds = %land.lhs.true.i7.i
  %.b4.i8.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i8.i, label %land.lhs.true2.i9.i.__rhashtable_remove_fast.exit_crit_edge, label %if.then.i10.i

land.lhs.true2.i9.i.__rhashtable_remove_fast.exit_crit_edge: ; preds = %land.lhs.true2.i9.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__rhashtable_remove_fast.exit

if.then.i10.i:                                    ; preds = %land.lhs.true2.i9.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 724, ptr noundef nonnull @.str.20) #17
  br label %__rhashtable_remove_fast.exit

__rhashtable_remove_fast.exit:                    ; preds = %if.then.i10.i, %land.lhs.true2.i9.i.__rhashtable_remove_fast.exit_crit_edge, %land.lhs.true.i7.i.__rhashtable_remove_fast.exit_crit_edge, %while.end.i.__rhashtable_remove_fast.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !179
  %46 = tail call i32 @llvm.read_register.i32(metadata !155) #17
  %and.i.i.i.i.i11.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i.i.i11.i to ptr
  %preempt_count.i.i.i.i12.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %preempt_count.i.i.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %preempt_count.i.i.i.i12.i, align 4
  %sub.i.i.i.i = add i32 %49, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i12.i, align 4
  tail call void @rcu_read_unlock_strict() #17
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_multicast_ctx_deinit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @br_master_vlan_rcu_free(ptr noundef %rcu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr i8, ptr %rcu, i32 -554
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %flags.i, align 2
  %2 = and i16 %1, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.i.not = icmp eq i16 %2, 0
  br i1 %tobool.i.not, label %do.end, label %entry.if.end_crit_edge, !prof !172

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 175, i32 noundef 9, ptr noundef null) #17
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %add.ptr = getelementptr i8, ptr %rcu, i32 -564
  %stats = getelementptr i8, ptr %rcu, i32 -548
  %3 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %stats, align 8
  tail call void @free_percpu(ptr noundef %4) #17
  %5 = ptrtoint ptr %stats to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %stats, align 8
  tail call void @kfree(ptr noundef %add.ptr) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_multicast_port_ctx_deinit(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nbp_vlan_rcu_free(ptr noundef %rcu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr i8, ptr %rcu, i32 -554
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %flags.i, align 2
  %2 = and i16 %1, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.i.not = icmp eq i16 %2, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %do.end, !prof !170

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 204, i32 noundef 9, ptr noundef null) #17
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %priv_flags = getelementptr i8, ptr %rcu, i32 -552
  %3 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %priv_flags, align 4
  %5 = and i16 %4, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool20.not = icmp eq i16 %5, 0
  br i1 %tobool20.not, label %if.end.if.end22_crit_edge, label %if.then21

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end22

if.then21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %stats = getelementptr i8, ptr %rcu, i32 -548
  %6 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stats, align 8
  tail call void @free_percpu(ptr noundef %7) #17
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end.if.end22_crit_edge
  %add.ptr = getelementptr i8, ptr %rcu, i32 -564
  %stats23 = getelementptr i8, ptr %rcu, i32 -548
  %8 = ptrtoint ptr %stats23 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %stats23, align 8
  tail call void @kfree(ptr noundef %add.ptr) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @br_vlan_cmp(ptr nocapture noundef readonly %arg, ptr nocapture noundef readonly %ptr) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %key = getelementptr inbounds %struct.rhashtable_compare_arg, ptr %arg, i32 0, i32 1
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %key, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 2
  %vid1 = getelementptr inbounds %struct.net_bridge_vlan, ptr %ptr, i32 0, i32 2
  %4 = ptrtoint ptr %vid1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vid1, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %3)
  %cmp = icmp ne i16 %5, %3
  %conv3 = zext i1 %cmp to i32
  ret i32 %conv3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @br_get_rx_handler(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @br_vlan_is_bind_vlan_dev_fn(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %priv) #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %0 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %priv_flags.i.i, align 16
  %and.i.i = and i64 %1, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.br_vlan_is_bind_vlan_dev.exit_crit_edge, label %land.rhs.i

entry.br_vlan_is_bind_vlan_dev.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_vlan_is_bind_vlan_dev.exit

land.rhs.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %flags.i = getelementptr i8, ptr %dev, i32 2412
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags.i, align 4
  %4 = lshr i16 %3, 4
  %5 = and i16 %4, 1
  %and.lobit.i = zext i16 %5 to i32
  br label %br_vlan_is_bind_vlan_dev.exit

br_vlan_is_bind_vlan_dev.exit:                    ; preds = %land.rhs.i, %entry.br_vlan_is_bind_vlan_dev.exit_crit_edge
  %6 = phi i32 [ 0, %entry.br_vlan_is_bind_vlan_dev.exit_crit_edge ], [ %and.lobit.i, %land.rhs.i ]
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @br_vlan_link_state_change_fn(ptr noundef %vlan_dev, ptr nocapture noundef readonly %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr inbounds %struct.netdev_nested_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %vlan_dev, i32 0, i32 15
  %2 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %priv_flags.i.i, align 16
  %and.i.i = and i64 %3, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.if.end_crit_edge, label %br_vlan_is_bind_vlan_dev.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

br_vlan_is_bind_vlan_dev.exit:                    ; preds = %entry
  %flags.i = getelementptr i8, ptr %vlan_dev, i32 2412
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %flags.i, align 4
  %6 = and i16 %5, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not = icmp eq i16 %6, 0
  br i1 %tobool.not, label %br_vlan_is_bind_vlan_dev.exit.if.end_crit_edge, label %if.then

br_vlan_is_bind_vlan_dev.exit.if.end_crit_edge:   ; preds = %br_vlan_is_bind_vlan_dev.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %br_vlan_is_bind_vlan_dev.exit
  call void @__sanitizer_cov_trace_pc() #19
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  tail call fastcc void @br_vlan_set_vlan_dev_state(ptr noundef %8, ptr noundef %vlan_dev)
  br label %if.end

if.end:                                           ; preds = %if.then, %br_vlan_is_bind_vlan_dev.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_vlan_opts_nl_size() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__nlmsg_put(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @br_vlan_opts_fill(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put_64bit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index_rcu(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @br_vlan_dump_dev(ptr noundef %dev, ptr noundef %skb, ptr nocapture noundef %cb, i32 noundef %dump_flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %dump_flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and2 = and i32 %dump_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3 = icmp ne i32 %and2, 0
  %arrayidx = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %2 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %3, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %land.lhs.true, label %if.then9

land.lhs.true:                                    ; preds = %entry
  %and.i248 = and i64 %3, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i248)
  %tobool.i249.not302 = icmp eq i64 %and.i248, 0
  %tobool.not.not = xor i1 %tobool.not, true
  %brmerge = or i1 %tobool.i249.not302, %tobool.not.not
  %.mux = select i1 %tobool.i249.not302, i32 -22, i32 0
  br i1 %brmerge, label %land.lhs.true.cleanup162_crit_edge, label %if.end14

land.lhs.true.cleanup162_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup162

if.then9:                                         ; preds = %entry
  %vlgrp.i = getelementptr i8, ptr %dev, i32 2408
  %4 = ptrtoint ptr %vlgrp.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %vlgrp.i, align 4
  %call.i = tail call i32 @rcu_read_lock_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.then9.if.end45_crit_edge

if.then9.if.end45_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end45

land.lhs.true.i:                                  ; preds = %if.then9
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.end45_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.if.end45_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end45

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b9.i = load i1, ptr @br_vlan_group_rcu.__warned, align 1
  br i1 %.b9.i, label %land.lhs.true4.i.if.end45_crit_edge, label %land.lhs.true4.i.if.end45.sink.split_crit_edge

land.lhs.true4.i.if.end45.sink.split_crit_edge:   ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end45.sink.split

land.lhs.true4.i.if.end45_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end45

if.end14:                                         ; preds = %land.lhs.true
  %rx_handler_data.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 95
  %6 = ptrtoint ptr %rx_handler_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %rx_handler_data.i, align 4
  %call.i253 = tail call i32 @rcu_read_lock_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i253)
  %tobool.not.i254 = icmp eq i32 %call.i253, 0
  br i1 %tobool.not.i254, label %land.lhs.true.i257, label %if.end14.br_port_get_rcu.exit_crit_edge

if.end14.br_port_get_rcu.exit_crit_edge:          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_port_get_rcu.exit

land.lhs.true.i257:                               ; preds = %if.end14
  %call2.i255 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i255)
  %tobool3.not.i256 = icmp eq i32 %call2.i255, 0
  br i1 %tobool3.not.i256, label %land.lhs.true.i257.br_port_get_rcu.exit_crit_edge, label %land.lhs.true4.i259

land.lhs.true.i257.br_port_get_rcu.exit_crit_edge: ; preds = %land.lhs.true.i257
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_port_get_rcu.exit

land.lhs.true4.i259:                              ; preds = %land.lhs.true.i257
  %.b9.i258 = load i1, ptr @br_port_get_rcu.__warned, align 1
  br i1 %.b9.i258, label %land.lhs.true4.i259.br_port_get_rcu.exit_crit_edge, label %if.then.i260

land.lhs.true4.i259.br_port_get_rcu.exit_crit_edge: ; preds = %land.lhs.true4.i259
  call void @__sanitizer_cov_trace_pc() #19
  br label %br_port_get_rcu.exit

if.then.i260:                                     ; preds = %land.lhs.true4.i259
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @br_port_get_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 416, ptr noundef nonnull @.str.9) #17
  br label %br_port_get_rcu.exit

br_port_get_rcu.exit:                             ; preds = %if.then.i260, %land.lhs.true4.i259.br_port_get_rcu.exit_crit_edge, %land.lhs.true.i257.br_port_get_rcu.exit_crit_edge, %if.end14.br_port_get_rcu.exit_crit_edge
  %tobool16.not = icmp eq ptr %7, null
  br i1 %tobool16.not, label %do.end, label %if.end42, !prof !172

do.end:                                           ; preds = %br_port_get_rcu.exit
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1902, i32 noundef 9, ptr noundef null) #17
  br label %cleanup162

if.end42:                                         ; preds = %br_port_get_rcu.exit
  %vlgrp.i261 = getelementptr inbounds %struct.net_bridge_port, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %vlgrp.i261 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %vlgrp.i261, align 8
  %call.i262 = tail call i32 @rcu_read_lock_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i262)
  %tobool.not.i263 = icmp eq i32 %call.i262, 0
  br i1 %tobool.not.i263, label %land.lhs.true.i266, label %if.end42.if.end45_crit_edge

if.end42.if.end45_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end45

land.lhs.true.i266:                               ; preds = %if.end42
  %call2.i264 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i264)
  %tobool3.not.i265 = icmp eq i32 %call2.i264, 0
  br i1 %tobool3.not.i265, label %land.lhs.true.i266.if.end45_crit_edge, label %land.lhs.true4.i268

land.lhs.true.i266.if.end45_crit_edge:            ; preds = %land.lhs.true.i266
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end45

land.lhs.true4.i268:                              ; preds = %land.lhs.true.i266
  %.b9.i267 = load i1, ptr @nbp_vlan_group_rcu.__warned, align 1
  br i1 %.b9.i267, label %land.lhs.true4.i268.if.end45_crit_edge, label %land.lhs.true4.i268.if.end45.sink.split_crit_edge

land.lhs.true4.i268.if.end45.sink.split_crit_edge: ; preds = %land.lhs.true4.i268
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end45.sink.split

land.lhs.true4.i268.if.end45_crit_edge:           ; preds = %land.lhs.true4.i268
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end45

if.end45.sink.split:                              ; preds = %land.lhs.true4.i268.if.end45.sink.split_crit_edge, %land.lhs.true4.i.if.end45.sink.split_crit_edge
  %nbp_vlan_group_rcu.__warned.sink = phi ptr [ @br_vlan_group_rcu.__warned, %land.lhs.true4.i.if.end45.sink.split_crit_edge ], [ @nbp_vlan_group_rcu.__warned, %land.lhs.true4.i268.if.end45.sink.split_crit_edge ]
  %.sink = phi i32 [ 1483, %land.lhs.true4.i.if.end45.sink.split_crit_edge ], [ 1489, %land.lhs.true4.i268.if.end45.sink.split_crit_edge ]
  %vg.0.ph = phi ptr [ %5, %land.lhs.true4.i.if.end45.sink.split_crit_edge ], [ %9, %land.lhs.true4.i268.if.end45.sink.split_crit_edge ]
  %10 = ptrtoint ptr %nbp_vlan_group_rcu.__warned.sink to i32
  call void @__asan_store1_noabort(i32 %10)
  store i1 true, ptr %nbp_vlan_group_rcu.__warned.sink, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef %.sink, ptr noundef nonnull @.str.9) #17
  br label %if.end45

if.end45:                                         ; preds = %if.end45.sink.split, %land.lhs.true4.i268.if.end45_crit_edge, %land.lhs.true.i266.if.end45_crit_edge, %if.end42.if.end45_crit_edge, %land.lhs.true4.i.if.end45_crit_edge, %land.lhs.true.i.if.end45_crit_edge, %if.then9.if.end45_crit_edge
  %vg.0 = phi ptr [ %5, %if.then9.if.end45_crit_edge ], [ %5, %land.lhs.true.i.if.end45_crit_edge ], [ %5, %land.lhs.true4.i.if.end45_crit_edge ], [ %9, %if.end42.if.end45_crit_edge ], [ %9, %land.lhs.true.i266.if.end45_crit_edge ], [ %9, %land.lhs.true4.i268.if.end45_crit_edge ], [ %vg.0.ph, %if.end45.sink.split ]
  %tobool46.not = icmp eq ptr %vg.0, null
  br i1 %tobool46.not, label %if.end45.cleanup162_crit_edge, label %if.end48

if.end45.cleanup162_crit_edge:                    ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup162

if.end48:                                         ; preds = %if.end45
  %11 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cb, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 3, i32 12
  %13 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %portid, align 4
  %nlh51 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %15 = ptrtoint ptr %nlh51 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %nlh51, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nlmsg_seq, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %19 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.i.not.i.i = icmp eq i32 %20, 0
  br i1 %tobool.i.not.i.i, label %skb_tailroom.exit.i, label %if.end48.cleanup162_crit_edge

if.end48.cleanup162_crit_edge:                    ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup162

skb_tailroom.exit.i:                              ; preds = %if.end48
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %21 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %end.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %23 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %22 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %24 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %sub.ptr.sub.i.i)
  %cmp.i = icmp slt i32 %sub.ptr.sub.i.i, 24
  br i1 %cmp.i, label %skb_tailroom.exit.i.cleanup162_crit_edge, label %nlmsg_put.exit, !prof !172

skb_tailroom.exit.i.cleanup162_crit_edge:         ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup162

nlmsg_put.exit:                                   ; preds = %skb_tailroom.exit.i
  %call3.i = tail call ptr @__nlmsg_put(ptr noundef %skb, i32 noundef %14, i32 noundef %18, i32 noundef 112, i32 noundef 8, i32 noundef 2) #17
  %tobool53.not = icmp eq ptr %call3.i, null
  br i1 %tobool53.not, label %nlmsg_put.exit.cleanup162_crit_edge, label %br_get_pvid.exit

nlmsg_put.exit.cleanup162_crit_edge:              ; preds = %nlmsg_put.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup162

br_get_pvid.exit:                                 ; preds = %nlmsg_put.exit
  %add.ptr.i270 = getelementptr i8, ptr %call3.i, i32 16
  %25 = ptrtoint ptr %add.ptr.i270 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 8)
  store i64 504403158265495552, ptr %add.ptr.i270, align 4
  %ifindex = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 17
  %26 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ifindex, align 4
  %ifindex57 = getelementptr i8, ptr %call3.i, i32 20
  %28 = ptrtoint ptr %ifindex57 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %ifindex57, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !173
  %pvid.i = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %vg.0, i32 0, i32 4
  %29 = ptrtoint ptr %pvid.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %pvid.i, align 2
  %call60 = tail call i32 @rcu_read_lock_any_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true62, label %br_get_pvid.exit.do.end70_crit_edge

br_get_pvid.exit.do.end70_crit_edge:              ; preds = %br_get_pvid.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end70

land.lhs.true62:                                  ; preds = %br_get_pvid.exit
  %call63 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %land.lhs.true62.do.end70_crit_edge, label %land.lhs.true65

land.lhs.true62.do.end70_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end70

land.lhs.true65:                                  ; preds = %land.lhs.true62
  %.b244 = load i1, ptr @br_vlan_dump_dev.__warned, align 1
  br i1 %.b244, label %land.lhs.true65.do.end70_crit_edge, label %if.then67

land.lhs.true65.do.end70_crit_edge:               ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end70

if.then67:                                        ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @br_vlan_dump_dev.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1922, ptr noundef nonnull @.str.28) #17
  br label %do.end70

do.end70:                                         ; preds = %if.then67, %land.lhs.true65.do.end70_crit_edge, %land.lhs.true62.do.end70_crit_edge, %br_get_pvid.exit.do.end70_crit_edge
  %vlan_list = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %vg.0, i32 0, i32 2
  %31 = ptrtoint ptr %vlan_list to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pn307 = load volatile ptr, ptr %vlan_list, align 4
  %cmp.not309 = icmp eq ptr %.pn307, %vlan_list
  br i1 %cmp.not309, label %do.end70.if.end159_crit_edge, label %do.end70.for.body_crit_edge

do.end70.for.body_crit_edge:                      ; preds = %do.end70
  br label %for.body

do.end70.if.end159_crit_edge:                     ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end159

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end70.for.body_crit_edge
  %.pn315 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn307, %do.end70.for.body_crit_edge ]
  %range_start.0313 = phi ptr [ %range_start.3, %for.inc.for.body_crit_edge ], [ null, %do.end70.for.body_crit_edge ]
  %range_end.0311 = phi ptr [ %range_end.1, %for.inc.for.body_crit_edge ], [ null, %do.end70.for.body_crit_edge ]
  %idx.0310 = phi i32 [ %idx.3, %for.inc.for.body_crit_edge ], [ 0, %do.end70.for.body_crit_edge ]
  %v.0316 = getelementptr i8, ptr %.pn315, i32 -556
  br i1 %tobool.not, label %land.lhs.true78, label %for.body.if.end81_crit_edge

for.body.if.end81_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end81

land.lhs.true78:                                  ; preds = %for.body
  %flags.i.i = getelementptr i8, ptr %.pn315, i32 -546
  %32 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %flags.i.i, align 2
  %34 = and i16 %33, 33
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %34)
  %.not = icmp eq i16 %34, 1
  br i1 %.not, label %land.lhs.true78.for.inc_crit_edge, label %land.lhs.true78.if.end81_crit_edge

land.lhs.true78.if.end81_crit_edge:               ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end81

land.lhs.true78.for.inc_crit_edge:                ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.end81:                                         ; preds = %land.lhs.true78.if.end81_crit_edge, %for.body.if.end81_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.0310, i32 %1)
  %cmp82 = icmp slt i32 %idx.0310, %1
  br i1 %cmp82, label %if.then83, label %if.end84

if.then83:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #19
  %inc = add nsw i32 %idx.0310, 1
  br label %for.inc

if.end84:                                         ; preds = %if.end81
  %tobool85.not = icmp eq ptr %range_start.0313, null
  br i1 %tobool85.not, label %if.end84.for.inc_crit_edge, label %if.end87

if.end84.for.inc_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.end87:                                         ; preds = %if.end84
  br i1 %tobool.not, label %if.else101, label %if.then89

if.then89:                                        ; preds = %if.end87
  %call90 = tail call zeroext i1 @br_vlan_global_opts_can_enter_range(ptr noundef %v.0316, ptr noundef %range_end.0311) #17
  br i1 %call90, label %if.then89.for.inc_crit_edge, label %if.end92

if.then89.for.inc_crit_edge:                      ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.end92:                                         ; preds = %if.then89
  %vid = getelementptr inbounds %struct.net_bridge_vlan, ptr %range_start.0313, i32 0, i32 2
  %35 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %vid, align 8
  %vid93 = getelementptr inbounds %struct.net_bridge_vlan, ptr %range_end.0311, i32 0, i32 2
  %37 = ptrtoint ptr %vid93 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %vid93, align 8
  %call94 = tail call zeroext i1 @br_vlan_global_opts_fill(ptr noundef %skb, i16 noundef zeroext %36, i16 noundef zeroext %38, ptr noundef nonnull %range_start.0313) #17
  br i1 %call94, label %if.end96, label %if.end92.if.end159.thread_crit_edge

if.end92.if.end159.thread_crit_edge:              ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end159.thread

if.end96:                                         ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #19
  %39 = ptrtoint ptr %vid93 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %vid93, align 8
  %conv = zext i16 %40 to i32
  %41 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %vid, align 8
  %conv99 = zext i16 %42 to i32
  %sub = add i32 %idx.0310, 1
  %add = add i32 %sub, %conv
  %add100 = sub i32 %add, %conv99
  br label %for.inc

if.else101:                                       ; preds = %if.end87
  br i1 %tobool3, label %if.else101.if.then111_crit_edge, label %lor.lhs.false

if.else101.if.then111_crit_edge:                  ; preds = %if.else101
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then111

lor.lhs.false:                                    ; preds = %if.else101
  %vid104 = getelementptr i8, ptr %.pn315, i32 -548
  %43 = ptrtoint ptr %vid104 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %vid104, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %44, i16 %30)
  %cmp107 = icmp eq i16 %44, %30
  br i1 %cmp107, label %lor.lhs.false.if.then111_crit_edge, label %lor.lhs.false109

lor.lhs.false.if.then111_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then111

lor.lhs.false109:                                 ; preds = %lor.lhs.false
  %45 = ptrtoint ptr %vid104 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %vid104, align 8
  %conv.i = zext i16 %46 to i32
  %vid1.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %range_end.0311, i32 0, i32 2
  %47 = ptrtoint ptr %vid1.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %vid1.i, align 8
  %conv2.i = zext i16 %48 to i32
  %sub.i = sub nsw i32 %conv.i, %conv2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i)
  %cmp.i273 = icmp eq i32 %sub.i, 1
  br i1 %cmp.i273, label %land.lhs.true.i274, label %lor.lhs.false109.if.then111_crit_edge

lor.lhs.false109.if.then111_crit_edge:            ; preds = %lor.lhs.false109
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then111

land.lhs.true.i274:                               ; preds = %lor.lhs.false109
  %flags.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %range_end.0311, i32 0, i32 3
  %49 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %flags.i, align 2
  %flags5.i = getelementptr i8, ptr %.pn315, i32 -546
  %51 = ptrtoint ptr %flags5.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %flags5.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %50, i16 %52)
  %cmp7.i = icmp eq i16 %50, %52
  br i1 %cmp7.i, label %br_vlan_can_enter_range.exit, label %land.lhs.true.i274.if.then111_crit_edge

land.lhs.true.i274.if.then111_crit_edge:          ; preds = %land.lhs.true.i274
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then111

br_vlan_can_enter_range.exit:                     ; preds = %land.lhs.true.i274
  %call.i275 = tail call zeroext i1 @br_vlan_opts_eq_range(ptr noundef %v.0316, ptr noundef %range_end.0311) #17
  br i1 %call.i275, label %br_vlan_can_enter_range.exit.for.inc_crit_edge, label %br_vlan_can_enter_range.exit.if.then111_crit_edge

br_vlan_can_enter_range.exit.if.then111_crit_edge: ; preds = %br_vlan_can_enter_range.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then111

br_vlan_can_enter_range.exit.for.inc_crit_edge:   ; preds = %br_vlan_can_enter_range.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.then111:                                       ; preds = %br_vlan_can_enter_range.exit.if.then111_crit_edge, %land.lhs.true.i274.if.then111_crit_edge, %lor.lhs.false109.if.then111_crit_edge, %lor.lhs.false.if.then111_crit_edge, %if.else101.if.then111_crit_edge
  %vid.i276 = getelementptr inbounds %struct.net_bridge_vlan, ptr %range_start.0313, i32 0, i32 2
  %53 = ptrtoint ptr %vid.i276 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %vid.i276, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %54, i16 %30)
  %cmp.i277 = icmp eq i16 %54, %30
  %flags.i278 = getelementptr inbounds %struct.net_bridge_vlan, ptr %range_start.0313, i32 0, i32 3
  %55 = ptrtoint ptr %flags.i278 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %flags.i278, align 2
  %or.i = or i16 %56, 2
  %cond.i = select i1 %cmp.i277, i16 %or.i, i16 %56
  %vid114 = getelementptr inbounds %struct.net_bridge_vlan, ptr %range_end.0311, i32 0, i32 2
  %57 = ptrtoint ptr %vid114 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %vid114, align 8
  %call116 = tail call fastcc zeroext i1 @br_vlan_fill_vids(ptr noundef %skb, i16 noundef zeroext %54, i16 noundef zeroext %58, ptr noundef nonnull %range_start.0313, i16 noundef zeroext %cond.i, i1 noundef zeroext %tobool3)
  br i1 %call116, label %cleanup.thread, label %if.then111.if.end159.thread_crit_edge

if.then111.if.end159.thread_crit_edge:            ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end159.thread

cleanup.thread:                                   ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #19
  %59 = ptrtoint ptr %vid114 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %vid114, align 8
  %conv120 = zext i16 %60 to i32
  %61 = ptrtoint ptr %vid.i276 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %vid.i276, align 8
  %conv122 = zext i16 %62 to i32
  %sub123 = add i32 %idx.0310, 1
  %add124 = add i32 %sub123, %conv120
  %add125 = sub i32 %add124, %conv122
  br label %for.inc

for.inc:                                          ; preds = %cleanup.thread, %br_vlan_can_enter_range.exit.for.inc_crit_edge, %if.end96, %if.then89.for.inc_crit_edge, %if.end84.for.inc_crit_edge, %if.then83, %land.lhs.true78.for.inc_crit_edge
  %idx.3 = phi i32 [ %inc, %if.then83 ], [ %idx.0310, %land.lhs.true78.for.inc_crit_edge ], [ %idx.0310, %if.end84.for.inc_crit_edge ], [ %idx.0310, %if.then89.for.inc_crit_edge ], [ %add100, %if.end96 ], [ %idx.0310, %br_vlan_can_enter_range.exit.for.inc_crit_edge ], [ %add125, %cleanup.thread ]
  %range_end.1 = phi ptr [ %range_end.0311, %if.then83 ], [ %range_end.0311, %land.lhs.true78.for.inc_crit_edge ], [ %v.0316, %if.end84.for.inc_crit_edge ], [ %v.0316, %if.then89.for.inc_crit_edge ], [ %v.0316, %if.end96 ], [ %v.0316, %br_vlan_can_enter_range.exit.for.inc_crit_edge ], [ %v.0316, %cleanup.thread ]
  %range_start.3 = phi ptr [ %range_start.0313, %if.then83 ], [ %range_start.0313, %land.lhs.true78.for.inc_crit_edge ], [ %v.0316, %if.end84.for.inc_crit_edge ], [ %range_start.0313, %if.then89.for.inc_crit_edge ], [ %v.0316, %if.end96 ], [ %range_start.0313, %br_vlan_can_enter_range.exit.for.inc_crit_edge ], [ %v.0316, %cleanup.thread ]
  %63 = ptrtoint ptr %.pn315 to i32
  call void @__asan_load4_noabort(i32 %63)
  %.pn = load volatile ptr, ptr %.pn315, align 4
  %cmp.not = icmp eq ptr %.pn, %vlan_list
  br i1 %cmp.not, label %land.lhs.true138, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

land.lhs.true138:                                 ; preds = %for.inc
  %tobool139.not = icmp eq ptr %range_start.3, null
  br i1 %tobool139.not, label %land.lhs.true138.if.end159_crit_edge, label %if.then140

land.lhs.true138.if.end159_crit_edge:             ; preds = %land.lhs.true138
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end159

if.then140:                                       ; preds = %land.lhs.true138
  %vid151 = getelementptr inbounds %struct.net_bridge_vlan, ptr %range_start.3, i32 0, i32 2
  %64 = ptrtoint ptr %vid151 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %vid151, align 8
  %vid152 = getelementptr inbounds %struct.net_bridge_vlan, ptr %range_end.1, i32 0, i32 2
  %66 = ptrtoint ptr %vid152 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %vid152, align 8
  br i1 %tobool.not, label %land.lhs.true150.critedge, label %land.lhs.true143

land.lhs.true143:                                 ; preds = %if.then140
  %call146 = tail call zeroext i1 @br_vlan_global_opts_fill(ptr noundef %skb, i16 noundef zeroext %65, i16 noundef zeroext %67, ptr noundef nonnull %range_start.3) #17
  br i1 %call146, label %land.lhs.true143.if.end159_crit_edge, label %land.lhs.true143.if.end159.thread_crit_edge

land.lhs.true143.if.end159.thread_crit_edge:      ; preds = %land.lhs.true143
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end159.thread

land.lhs.true143.if.end159_crit_edge:             ; preds = %land.lhs.true143
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end159

land.lhs.true150.critedge:                        ; preds = %if.then140
  call void @__sanitizer_cov_trace_cmp2(i16 %65, i16 %30)
  %cmp.i280 = icmp eq i16 %65, %30
  %flags.i281 = getelementptr inbounds %struct.net_bridge_vlan, ptr %range_start.3, i32 0, i32 3
  %68 = ptrtoint ptr %flags.i281 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %flags.i281, align 2
  %or.i282 = or i16 %69, 2
  %cond.i283 = select i1 %cmp.i280, i16 %or.i282, i16 %69
  %call155 = tail call fastcc zeroext i1 @br_vlan_fill_vids(ptr noundef %skb, i16 noundef zeroext %65, i16 noundef zeroext %67, ptr noundef nonnull %range_start.3, i16 noundef zeroext %cond.i283, i1 noundef zeroext %tobool3)
  br i1 %call155, label %land.lhs.true150.critedge.if.end159_crit_edge, label %land.lhs.true150.critedge.if.end159.thread_crit_edge

land.lhs.true150.critedge.if.end159.thread_crit_edge: ; preds = %land.lhs.true150.critedge
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end159.thread

land.lhs.true150.critedge.if.end159_crit_edge:    ; preds = %land.lhs.true150.critedge
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end159

if.end159.thread:                                 ; preds = %land.lhs.true150.critedge.if.end159.thread_crit_edge, %land.lhs.true143.if.end159.thread_crit_edge, %if.then111.if.end159.thread_crit_edge, %if.end92.if.end159.thread_crit_edge
  %idx.0306 = phi i32 [ %idx.3, %land.lhs.true150.critedge.if.end159.thread_crit_edge ], [ %idx.3, %land.lhs.true143.if.end159.thread_crit_edge ], [ %idx.0310, %if.then111.if.end159.thread_crit_edge ], [ %idx.0310, %if.end92.if.end159.thread_crit_edge ]
  br label %if.end159

if.end159:                                        ; preds = %if.end159.thread, %land.lhs.true150.critedge.if.end159_crit_edge, %land.lhs.true143.if.end159_crit_edge, %land.lhs.true138.if.end159_crit_edge, %do.end70.if.end159_crit_edge
  %err.5301 = phi i32 [ -90, %if.end159.thread ], [ 0, %land.lhs.true138.if.end159_crit_edge ], [ 0, %land.lhs.true150.critedge.if.end159_crit_edge ], [ 0, %land.lhs.true143.if.end159_crit_edge ], [ 0, %do.end70.if.end159_crit_edge ]
  %70 = phi i32 [ %idx.0306, %if.end159.thread ], [ 0, %land.lhs.true138.if.end159_crit_edge ], [ 0, %land.lhs.true150.critedge.if.end159_crit_edge ], [ 0, %land.lhs.true143.if.end159_crit_edge ], [ 0, %do.end70.if.end159_crit_edge ]
  %71 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %arrayidx, align 4
  %72 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %73 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %call3.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %74 = ptrtoint ptr %call3.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %sub.ptr.sub.i, ptr %call3.i, align 4
  br label %cleanup162

cleanup162:                                       ; preds = %if.end159, %nlmsg_put.exit.cleanup162_crit_edge, %skb_tailroom.exit.i.cleanup162_crit_edge, %if.end48.cleanup162_crit_edge, %if.end45.cleanup162_crit_edge, %do.end, %land.lhs.true.cleanup162_crit_edge
  %retval.0 = phi i32 [ %err.5301, %if.end159 ], [ -22, %do.end ], [ %.mux, %land.lhs.true.cleanup162_crit_edge ], [ 0, %if.end45.cleanup162_crit_edge ], [ -90, %nlmsg_put.exit.cleanup162_crit_edge ], [ -90, %skb_tailroom.exit.i.cleanup162_crit_edge ], [ -90, %if.end48.cleanup162_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @br_vlan_global_opts_can_enter_range(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @br_vlan_global_opts_fill(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_vlan_rtm_process_global_options(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @br_vlan_valid_range(ptr nocapture noundef readonly %cur, ptr noundef readonly %last, ptr noundef writeonly %extack) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %0 = ptrtoint ptr %cur to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %cur, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end3, label %do.body

do.body:                                          ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @br_vlan_valid_range.__msg) #17
  %tobool1.not = icmp eq ptr %extack, null
  br i1 %tobool1.not, label %do.body.return_crit_edge, label %do.body.return.sink.split_crit_edge

do.body.return.sink.split_crit_edge:              ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %return.sink.split

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.end3:                                          ; preds = %entry
  %tobool4.not = icmp eq ptr %last, null
  br i1 %tobool4.not, label %if.end3.if.end46_crit_edge, label %if.then5

if.end3.if.end46_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end46

if.then5:                                         ; preds = %if.end3
  %and8 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.else, label %do.body11

do.body11:                                        ; preds = %if.then5
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @br_vlan_valid_range.__msg.32) #17
  %tobool13.not = icmp eq ptr %extack, null
  br i1 %tobool13.not, label %do.body11.return_crit_edge, label %do.body11.return.sink.split_crit_edge

do.body11.return.sink.split_crit_edge:            ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #19
  br label %return.sink.split

do.body11.return_crit_edge:                       ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.else:                                          ; preds = %if.then5
  %and20 = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %do.body23, label %if.else30

do.body23:                                        ; preds = %if.else
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @br_vlan_valid_range.__msg.33) #17
  %tobool25.not = icmp eq ptr %extack, null
  br i1 %tobool25.not, label %do.body23.return_crit_edge, label %do.body23.return.sink.split_crit_edge

do.body23.return.sink.split_crit_edge:            ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #19
  br label %return.sink.split

do.body23.return_crit_edge:                       ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.else30:                                        ; preds = %if.else
  %vid = getelementptr inbounds %struct.bridge_vlan_info, ptr %cur, i32 0, i32 1
  %2 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vid, align 2
  %vid32 = getelementptr inbounds %struct.bridge_vlan_info, ptr %last, i32 0, i32 1
  %4 = ptrtoint ptr %vid32 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vid32, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %5)
  %cmp.not = icmp ugt i16 %3, %5
  br i1 %cmp.not, label %if.else30.if.end46_crit_edge, label %do.body36

if.else30.if.end46_crit_edge:                     ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end46

do.body36:                                        ; preds = %if.else30
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @br_vlan_valid_range.__msg.34) #17
  %tobool38.not = icmp eq ptr %extack, null
  br i1 %tobool38.not, label %do.body36.return_crit_edge, label %do.body36.return.sink.split_crit_edge

do.body36.return.sink.split_crit_edge:            ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #19
  br label %return.sink.split

do.body36.return_crit_edge:                       ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.end46:                                         ; preds = %if.else30.if.end46_crit_edge, %if.end3.if.end46_crit_edge
  %6 = and i16 %1, 24
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool50.not = icmp eq i16 %6, 0
  br i1 %tobool50.not, label %do.body52, label %if.end46.return_crit_edge

if.end46.return_crit_edge:                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

do.body52:                                        ; preds = %if.end46
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @br_vlan_valid_range.__msg.35) #17
  %tobool54.not = icmp eq ptr %extack, null
  br i1 %tobool54.not, label %do.body52.return_crit_edge, label %do.body52.return.sink.split_crit_edge

do.body52.return.sink.split_crit_edge:            ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #19
  br label %return.sink.split

do.body52.return_crit_edge:                       ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

return.sink.split:                                ; preds = %do.body52.return.sink.split_crit_edge, %do.body36.return.sink.split_crit_edge, %do.body23.return.sink.split_crit_edge, %do.body11.return.sink.split_crit_edge, %do.body.return.sink.split_crit_edge
  %br_vlan_valid_range.__msg.35.sink = phi ptr [ @br_vlan_valid_range.__msg, %do.body.return.sink.split_crit_edge ], [ @br_vlan_valid_range.__msg.32, %do.body11.return.sink.split_crit_edge ], [ @br_vlan_valid_range.__msg.33, %do.body23.return.sink.split_crit_edge ], [ @br_vlan_valid_range.__msg.34, %do.body36.return.sink.split_crit_edge ], [ @br_vlan_valid_range.__msg.35, %do.body52.return.sink.split_crit_edge ]
  %7 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %br_vlan_valid_range.__msg.35.sink, ptr %extack, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %do.body52.return_crit_edge, %if.end46.return_crit_edge, %do.body36.return_crit_edge, %do.body23.return_crit_edge, %do.body11.return_crit_edge, %do.body.return_crit_edge
  %retval.0 = phi i1 [ false, %do.body.return_crit_edge ], [ false, %do.body11.return_crit_edge ], [ false, %do.body23.return_crit_edge ], [ false, %do.body36.return_crit_edge ], [ false, %do.body52.return_crit_edge ], [ true, %if.end46.return_crit_edge ], [ false, %return.sink.split ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_process_vlan_info(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_ifinfo_notify(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_vlan_process_options(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #16

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #17

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #18 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #18 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #17 = { nounwind }
attributes #18 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #19 = { nomerge }
attributes #20 = { cold nounwind }
attributes #21 = { nounwind allocsize(2) }
attributes #22 = { nounwind allocsize(0) }
attributes #23 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !9, !11, !13, !14, !15, !16, !18, !20, !22, !23, !24, !25, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !49, !51, !52, !53, !55, !56, !58, !59, !60, !61, !63, !65, !66, !67, !68, !70, !71, !73, !75, !77, !78, !79, !81, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153}
!llvm.named.register.sp = !{!155}
!llvm.module.flags = !{!156, !157, !158, !159, !160, !161, !162, !163}
!llvm.ident = !{!164}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../net/bridge/br_vlan.c", i32 721, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @br_vlan_add.__key, !5, !"__key", i1 false, i1 false}
!5 = !{!"../net/bridge/br_vlan.c", i32 734, i32 16}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = distinct !{null, !8, !"__already_done", i1 false, i1 false}
!8 = !{!"../net/bridge/br_vlan.c", i32 764, i32 2}
!9 = distinct !{null, !10, !"__already_done", i1 false, i1 false}
!10 = !{!"../net/bridge/br_vlan.c", i32 783, i32 2}
!11 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../net/bridge/br_vlan.c", i32 855, i32 3}
!13 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @br_vlan_filter_toggle._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @br_vlan_filter_toggle._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @__ksymtab_br_vlan_enabled, !17, !"__ksymtab_br_vlan_enabled", i1 false, i1 false}
!17 = !{!"../net/bridge/br_vlan.c", i32 868, i32 1}
!18 = !{ptr @__ksymtab_br_vlan_get_proto, !19, !"__ksymtab_br_vlan_get_proto", i1 false, i1 false}
!19 = !{!"../net/bridge/br_vlan.c", i32 878, i32 1}
!20 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!21 = !{!"../net/bridge/br_vlan.c", i32 1142, i32 3}
!22 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @br_vlan_set_default_pvid._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @br_vlan_set_default_pvid._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = distinct !{null, !27, !"__already_done", i1 false, i1 false}
!27 = !{!"../net/bridge/br_vlan.c", i32 1245, i32 2}
!28 = distinct !{null, !29, !"__already_done", i1 false, i1 false}
!29 = !{!"../net/bridge/br_vlan.c", i32 1281, i32 2}
!30 = distinct !{null, !31, !"__already_done", i1 false, i1 false}
!31 = !{!"../net/bridge/br_vlan.c", i32 1296, i32 2}
!32 = distinct !{null, !33, !"__already_done", i1 false, i1 false}
!33 = !{!"../net/bridge/br_vlan.c", i32 1337, i32 2}
!34 = !{ptr @__ksymtab_br_vlan_get_pvid, !35, !"__ksymtab_br_vlan_get_pvid", i1 false, i1 false}
!35 = !{!"../net/bridge/br_vlan.c", i32 1349, i32 1}
!36 = !{ptr @__ksymtab_br_vlan_get_pvid_rcu, !37, !"__ksymtab_br_vlan_get_pvid_rcu", i1 false, i1 false}
!37 = !{!"../net/bridge/br_vlan.c", i32 1367, i32 1}
!38 = distinct !{null, !39, !"__already_done", i1 false, i1 false}
!39 = !{!"../net/bridge/br_vlan.c", i32 1431, i32 2}
!40 = !{ptr @__ksymtab_br_vlan_get_info, !41, !"__ksymtab_br_vlan_get_info", i1 false, i1 false}
!41 = !{!"../net/bridge/br_vlan.c", i32 1450, i32 1}
!42 = !{ptr @__ksymtab_br_vlan_get_info_rcu, !43, !"__ksymtab_br_vlan_get_info_rcu", i1 false, i1 false}
!43 = !{!"../net/bridge/br_vlan.c", i32 1477, i32 1}
!44 = distinct !{null, !45, !"__already_done", i1 false, i1 false}
!45 = !{!"../net/bridge/br_vlan.c", i32 1808, i32 2}
!46 = distinct !{null, !47, !"__already_done", i1 false, i1 false}
!47 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!48 = !{ptr @.str.7, !47, !"<string literal>", i1 false, i1 false}
!49 = distinct !{null, !50, !"__warned", i1 false, i1 false}
!50 = !{!"../net/bridge/br_private.h", i32 1489, i32 9}
!51 = !{ptr @.str.8, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.9, !50, !"<string literal>", i1 false, i1 false}
!53 = distinct !{null, !54, !"__warned", i1 false, i1 false}
!54 = !{!"../net/bridge/br_private.h", i32 1471, i32 9}
!55 = !{ptr @.str.10, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.11, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../net/bridge/br_vlan.c", i32 688, i32 4}
!58 = !{ptr @.str.12, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @br_vlan_add_existing._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @br_vlan_add_existing._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @__vlan_add.__key, !62, !"__key", i1 false, i1 false}
!62 = !{!"../net/bridge/br_vlan.c", i32 276, i32 9}
!63 = !{ptr @.str.13, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../net/bridge/br_vlan.c", i32 298, i32 4}
!65 = !{ptr @.str.14, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @__vlan_add._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @__vlan_add._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = distinct !{null, !69, !"__warned", i1 false, i1 false}
!69 = !{!"../include/linux/rhashtable.h", i32 715, i32 8}
!70 = !{ptr @.str.15, !69, !"<string literal>", i1 false, i1 false}
!71 = distinct !{null, !72, !"__warned", i1 false, i1 false}
!72 = !{!"../include/linux/rhashtable.h", i32 755, i32 10}
!73 = distinct !{null, !74, !"__warned", i1 false, i1 false}
!74 = !{!"../include/linux/rhashtable.h", i32 732, i32 2}
!75 = distinct !{null, !76, !"__warned", i1 false, i1 false}
!76 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!77 = !{ptr @.str.18, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.19, !76, !"<string literal>", i1 false, i1 false}
!79 = distinct !{null, !80, !"__warned", i1 false, i1 false}
!80 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!81 = !{ptr @.str.20, !80, !"<string literal>", i1 false, i1 false}
!82 = distinct !{null, !83, !"__warned", i1 false, i1 false}
!83 = !{!"../include/linux/rhashtable.h", i32 377, i32 19}
!84 = distinct !{null, !85, !"__warned", i1 false, i1 false}
!85 = !{!"../include/linux/rhashtable.h", i32 1076, i32 8}
!86 = distinct !{null, !87, !"__warned", i1 false, i1 false}
!87 = !{!"../include/linux/rhashtable.h", i32 1085, i32 16}
!88 = distinct !{null, !89, !"__warned", i1 false, i1 false}
!89 = !{!"../include/linux/rhashtable.h", i32 1019, i32 12}
!90 = distinct !{null, !91, !"__warned", i1 false, i1 false}
!91 = !{!"../include/linux/rhashtable.h", i32 1026, i32 11}
!92 = distinct !{null, !93, !"__warned", i1 false, i1 false}
!93 = !{!"../include/linux/rhashtable.h", i32 1032, i32 9}
!94 = distinct !{null, !95, !"__warned", i1 false, i1 false}
!95 = !{!"../include/linux/rhashtable.h", i32 1036, i32 11}
!96 = distinct !{null, !97, !"__warned", i1 false, i1 false}
!97 = !{!"../include/linux/rhashtable.h", i32 1004, i32 2}
!98 = distinct !{null, !99, !"__warned", i1 false, i1 false}
!99 = !{!"../include/linux/rhashtable.h", i32 594, i32 8}
!100 = distinct !{null, !101, !"__warned", i1 false, i1 false}
!101 = !{!"../include/linux/rhashtable.h", i32 614, i32 8}
!102 = distinct !{null, !103, !"__warned", i1 false, i1 false}
!103 = !{!"../include/linux/rhashtable.h", i32 369, i32 19}
!104 = distinct !{null, !105, !"__warned", i1 false, i1 false}
!105 = !{!"../net/bridge/br_private.h", i32 1477, i32 9}
!106 = !{ptr @br_vlan_rht_params, !107, !"br_vlan_rht_params", i1 false, i1 false}
!107 = !{!"../net/bridge/br_vlan.c", i32 22, i32 39}
!108 = distinct !{null, !109, !"__warned", i1 false, i1 false}
!109 = !{!"../net/bridge/br_private.h", i32 855, i32 9}
!110 = distinct !{null, !111, !"__warned", i1 false, i1 false}
!111 = !{!"../net/bridge/br_private.h", i32 428, i32 3}
!112 = distinct !{null, !113, !"__warned", i1 false, i1 false}
!113 = !{!"../net/bridge/br_private.h", i32 850, i32 9}
!114 = distinct !{null, !115, !"__warned", i1 false, i1 false}
!115 = !{!"../net/bridge/br_private.h", i32 416, i32 9}
!116 = distinct !{null, !117, !"__warned", i1 false, i1 false}
!117 = !{!"../net/bridge/br_private.h", i32 1483, i32 9}
!118 = !{ptr @.str.27, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../include/net/netlink.h", i32 991, i32 3}
!120 = distinct !{null, !121, !"__warned", i1 false, i1 false}
!121 = !{!"../net/bridge/br_vlan.c", i32 2027, i32 3}
!122 = !{ptr @.str.28, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @__nlmsg_parse.__msg, !124, !"__msg", i1 false, i1 false}
!124 = !{!"../include/net/netlink.h", i32 729, i32 3}
!125 = !{ptr @br_vlan_db_dump_pol, !126, !"br_vlan_db_dump_pol", i1 false, i1 false}
!126 = !{!"../net/bridge/br_vlan.c", i32 1993, i32 32}
!127 = distinct !{null, !128, !"__warned", i1 false, i1 false}
!128 = !{!"../net/bridge/br_vlan.c", i32 1922, i32 2}
!129 = !{ptr @br_vlan_rtm_process.__msg, !130, !"__msg", i1 false, i1 false}
!130 = !{!"../net/bridge/br_vlan.c", i32 2185, i32 3}
!131 = !{ptr @br_vlan_rtm_process.__msg.29, !132, !"__msg", i1 false, i1 false}
!132 = !{!"../net/bridge/br_vlan.c", i32 2210, i32 3}
!133 = !{ptr @br_vlan_rtm_process_one.__msg, !134, !"__msg", i1 false, i1 false}
!134 = !{!"../net/bridge/br_vlan.c", i32 2090, i32 3}
!135 = !{ptr @br_vlan_rtm_process_one.__msg.30, !136, !"__msg", i1 false, i1 false}
!136 = !{!"../net/bridge/br_vlan.c", i32 2098, i32 3}
!137 = distinct !{null, !138, !"__warned", i1 false, i1 false}
!138 = !{!"../net/bridge/br_private.h", i32 422, i32 3}
!139 = !{ptr @nla_parse_nested.__msg, !140, !"__msg", i1 false, i1 false}
!140 = !{!"../include/net/netlink.h", i32 1208, i32 3}
!141 = !{ptr @br_vlan_db_policy, !142, !"br_vlan_db_policy", i1 false, i1 false}
!142 = !{!"../net/bridge/br_vlan.c", i32 2049, i32 32}
!143 = !{ptr @br_vlan_valid_id.__msg, !144, !"__msg", i1 false, i1 false}
!144 = !{!"../net/bridge/br_private.h", i32 640, i32 3}
!145 = !{ptr @br_vlan_valid_range.__msg, !146, !"__msg", i1 false, i1 false}
!146 = !{!"../net/bridge/br_private.h", i32 651, i32 3}
!147 = !{ptr @br_vlan_valid_range.__msg.32, !148, !"__msg", i1 false, i1 false}
!148 = !{!"../net/bridge/br_private.h", i32 661, i32 4}
!149 = !{ptr @br_vlan_valid_range.__msg.33, !150, !"__msg", i1 false, i1 false}
!150 = !{!"../net/bridge/br_private.h", i32 664, i32 4}
!151 = !{ptr @br_vlan_valid_range.__msg.34, !152, !"__msg", i1 false, i1 false}
!152 = !{!"../net/bridge/br_private.h", i32 667, i32 4}
!153 = !{ptr @br_vlan_valid_range.__msg.35, !154, !"__msg", i1 false, i1 false}
!154 = !{!"../net/bridge/br_private.h", i32 675, i32 3}
!155 = !{!"sp"}
!156 = !{i32 1, !"wchar_size", i32 2}
!157 = !{i32 1, !"min_enum_size", i32 4}
!158 = !{i32 8, !"branch-target-enforcement", i32 0}
!159 = !{i32 8, !"sign-return-address", i32 0}
!160 = !{i32 8, !"sign-return-address-all", i32 0}
!161 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!162 = !{i32 7, !"uwtable", i32 1}
!163 = !{i32 7, !"frame-pointer", i32 2}
!164 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!165 = !{i64 2150392953}
!166 = !{i64 2150284555}
!167 = !{i64 2150289489}
!168 = !{i64 2150311207}
!169 = !{i64 2150316101}
!170 = !{!"branch_weights", i32 2000, i32 1}
!171 = !{i64 2150392628}
!172 = !{!"branch_weights", i32 1, i32 2000}
!173 = !{i64 2157961752}
!174 = !{i64 2148263404, i64 2148263436, i64 2148263465, i64 2148263499, i64 2148263530, i64 2148263553}
!175 = !{!"auto-init"}
!176 = !{i8 0, i8 2}
!177 = !{i64 2157835310, i64 2157835801, i64 2157835347, i64 2157835403, i64 2157835437, i64 2157835461, i64 2157835502, i64 2157835523, i64 2157835551, i64 2157835585}
!178 = !{i64 2149640258}
!179 = !{i64 2149640524}
!180 = !{i64 2148261874, i64 2148261900, i64 2148261929, i64 2148261963, i64 2148261994, i64 2148262017}
!181 = !{i64 2149665650}
!182 = !{i64 2157977937}
!183 = !{i64 2157793854}
!184 = !{i64 2157797288}
!185 = !{i64 2158063004}
!186 = !{i64 2158070430}
!187 = !{i64 2157977781}
!188 = !{i64 654355, i64 654416}
!189 = !{i64 657087}
!190 = !{i64 657372}
!191 = !{i64 2150971840}
!192 = !{i64 2150971682}
!193 = !{i64 2150972010}
!194 = !{i64 2150392303}
!195 = !{i64 2148351405}
!196 = !{i64 2148265869, i64 2148265901, i64 2148265930, i64 2148265964, i64 2148265995, i64 2148266018}
!197 = !{i64 2149858008}
!198 = !{i64 2152681974}
!199 = !{!"branch_weights", i32 2146410443, i32 1073205}
!200 = !{i64 2148270732, i64 2148270764, i64 2148270793, i64 2148270827, i64 2148270858, i64 2148270881}
!201 = !{i64 2148359813}
!202 = !{i64 2152682134}
!203 = !{i64 2152682411}
!204 = !{i64 2152682253}
!205 = !{i64 2152682616}
!206 = !{i64 2152683679, i64 2152684171, i64 2152683716, i64 2152683772, i64 2152683806, i64 2152683830, i64 2152683871, i64 2152683892, i64 2152683920, i64 2152683954}
!207 = !{i64 2148358700}
!208 = !{i64 2148269119, i64 2148269151, i64 2148269180, i64 2148269214, i64 2148269245, i64 2148269268}
!209 = !{i64 2152685074}
!210 = !{i64 2157786927}
!211 = !{i64 2157789226}
!212 = !{i64 2157857169}
!213 = !{i64 2148264339, i64 2148264365, i64 2148264394, i64 2148264428, i64 2148264459, i64 2148264482}
