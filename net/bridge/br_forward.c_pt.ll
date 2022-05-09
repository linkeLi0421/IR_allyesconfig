; ModuleID = '/llk/IR_all_yes/net/bridge/br_forward.c_pt.bc'
source_filename = "../net/bridge/br_forward.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+br_dev_queue_push_xmit\22, \22a\22\09"
module asm "\09.weak\09__crc_br_dev_queue_push_xmit\09\09\09\09"
module asm "\09.long\09__crc_br_dev_queue_push_xmit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_br_dev_queue_push_xmit:\09\09\09\09\09"
module asm "\09.asciz \09\22br_dev_queue_push_xmit\22\09\09\09\09\09"
module asm "__kstrtabns_br_dev_queue_push_xmit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+br_forward_finish\22, \22a\22\09"
module asm "\09.weak\09__crc_br_forward_finish\09\09\09\09"
module asm "\09.long\09__crc_br_forward_finish\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_br_forward_finish:\09\09\09\09\09"
module asm "\09.asciz \09\22br_forward_finish\22\09\09\09\09\09"
module asm "__kstrtabns_br_forward_finish:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+br_forward\22, \22a\22\09"
module asm "\09.weak\09__crc_br_forward\09\09\09\09"
module asm "\09.long\09__crc_br_forward\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_br_forward:\09\09\09\09\09"
module asm "\09.asciz \09\22br_forward\22\09\09\09\09\09"
module asm "__kstrtabns_br_forward:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.vlan_hdr = type { i16, i16 }
%struct.anon.83 = type { ptr, ptr, %union.anon.84 }
%union.anon.84 = type { ptr }
%struct.sk_buff = type { %union.anon.82, %union.anon.112, %union.anon.113, [48 x i8], %union.anon.114, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.116, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.82 = type { %struct.anon.83 }
%union.anon.112 = type { ptr }
%union.anon.113 = type { i64 }
%union.anon.114 = type { %struct.anon.115 }
%struct.anon.115 = type { i32, ptr }
%union.anon.116 = type { %struct.anon.117 }
%struct.anon.117 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.118, i32, i32, i32, i16, i16, %union.anon.120, i32, %union.anon.121, %union.anon.122, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.118 = type { i32 }
%union.anon.120 = type { i32 }
%union.anon.121 = type { i32 }
%union.anon.122 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.net_bridge_port = type { ptr, ptr, ptr, %struct.list_head, i32, ptr, ptr, i8, i8, i16, i8, i8, i16, i16, %struct.bridge_id, %struct.bridge_id, i32, i32, i32, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.kobject, %struct.callback_head, %struct.net_bridge_mcast_port, ptr, i32, i32, %struct.hlist_head, [16 x i8], ptr, i32, i32, %struct.netdev_phys_item_id, i16, i16, %struct.bridge_stp_xstats }
%struct.list_head = type { ptr, ptr }
%struct.bridge_id = type { [2 x i8], [6 x i8] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.net_bridge_mcast_port = type { ptr, ptr, %struct.bridge_mcast_own_query, %struct.timer_list, %struct.hlist_node, %struct.bridge_mcast_own_query, %struct.timer_list, %struct.hlist_node, i8 }
%struct.bridge_mcast_own_query = type { %struct.timer_list, i32 }
%struct.hlist_head = type { ptr }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%struct.bridge_stp_xstats = type { i64, i64, i64, i64, i64, i64 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.85, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.111, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.85 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.111 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.net_bridge = type { %struct.spinlock, %struct.spinlock, %struct.hlist_head, ptr, i32, i16, i16, ptr, %struct.rhashtable, %struct.list_head, %union.anon.148, i16, i16, %struct.bridge_id, %struct.bridge_id, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i8], i32, %struct.net_bridge_mcast, ptr, i32, %struct.spinlock, %struct.rhashtable, %struct.rhashtable, %struct.hlist_head, %struct.hlist_head, %struct.work_struct, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.delayed_work, ptr, i32, i32, i32, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head }
%union.anon.148 = type { %struct.rt6_info }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.91 }
%union.anon.91 = type { [4 x i32] }
%struct.net_bridge_mcast = type { ptr, ptr, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, %struct.hlist_head, %struct.timer_list, %struct.bridge_mcast_other_query, %struct.bridge_mcast_own_query, %struct.bridge_mcast_querier, %struct.hlist_head, %struct.timer_list, %struct.bridge_mcast_other_query, %struct.bridge_mcast_own_query, %struct.bridge_mcast_querier }
%struct.bridge_mcast_other_query = type { %struct.timer_list, i32 }
%struct.bridge_mcast_querier = type { %struct.br_ip, i32, %struct.seqcount_spinlock }
%struct.br_ip = type { %union.anon.149, %union.anon.150, i16, i16 }
%union.anon.149 = type { %struct.in6_addr }
%union.anon.150 = type { %struct.in6_addr }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.net_bridge_mdb_entry = type { %struct.rhash_head, ptr, ptr, %struct.br_ip, i8, %struct.timer_list, %struct.hlist_node, %struct.net_bridge_mcast_gc, %struct.callback_head }
%struct.rhash_head = type { ptr }
%struct.net_bridge_mcast_gc = type { %struct.hlist_node, ptr }
%struct.net_bridge_port_group = type { ptr, %struct.net_bridge_port_group_sg_key, [6 x i8], i8, i8, i8, i8, %struct.hlist_head, i32, %struct.timer_list, %struct.timer_list, %struct.hlist_node, %struct.rb_root, %struct.rb_root, %struct.rhash_head, %struct.net_bridge_mcast_gc, %struct.callback_head }
%struct.net_bridge_port_group_sg_key = type { ptr, %struct.br_ip }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.142, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.142 = type { %struct.hlist_head, %struct.spinlock, i32 }
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

@__kstrtab_br_dev_queue_push_xmit = external dso_local constant [0 x i8], align 1
@__kstrtabns_br_dev_queue_push_xmit = external dso_local constant [0 x i8], align 1
@__ksymtab_br_dev_queue_push_xmit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @br_dev_queue_push_xmit to i32), ptr @__kstrtab_br_dev_queue_push_xmit, ptr @__kstrtabns_br_dev_queue_push_xmit }, section "___ksymtab_gpl+br_dev_queue_push_xmit", align 4
@__kstrtab_br_forward_finish = external dso_local constant [0 x i8], align 1
@__kstrtabns_br_forward_finish = external dso_local constant [0 x i8], align 1
@__ksymtab_br_forward_finish = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @br_forward_finish to i32), ptr @__kstrtab_br_forward_finish, ptr @__kstrtabns_br_forward_finish }, section "___ksymtab_gpl+br_forward_finish", align 4
@br_forward.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"net/bridge/br_forward.c\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__kstrtab_br_forward = external dso_local constant [0 x i8], align 1
@__kstrtabns_br_forward = external dso_local constant [0 x i8], align 1
@__ksymtab_br_forward = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @br_forward to i32), ptr @__kstrtab_br_forward, ptr @__kstrtabns_br_forward }, section "___ksymtab_gpl+br_forward", align 4
@br_flood.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@br_multicast_flood.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@br_multicast_flood.__warned.3 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@br_multicast_flood.__warned.4 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/if_vlan.h\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/netfilter.h\00", [38 x i8] zeroinitializer }, align 32
@nf_hook.__warned.10 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@nbp_vlan_group_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"net/bridge/br_private.h\00", [40 x i8] zeroinitializer }, align 32
@br_multicast_get_first_rport_node.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@br_multicast_get_first_rport_node.__warned.17 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.19 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.20 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 154, i32 17 }
@___asan_gen_.30 = private constant [27 x i8] c"../net/bridge/br_forward.c\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 205, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 1011, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant [27 x i8] c"../include/linux/if_vlan.h\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 598, i32 8 }
@___asan_gen_.39 = private unnamed_addr constant [29 x i8] c"../include/linux/netfilter.h\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 229, i32 15 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 695, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 723, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.51 = private unnamed_addr constant [27 x i8] c"../net/bridge/br_private.h\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 1489, i32 9 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__ksymtab_br_dev_queue_push_xmit, ptr @__ksymtab_br_forward, ptr @__ksymtab_br_forward_finish, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_dev_queue_push_xmit(ptr nocapture readnone %net, ptr nocapture readnone %sk, ptr noundef %skb) #0 align 64 {
entry:
  %vhdr.i = alloca %struct.vlan_hdr, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 14) #5
  %0 = getelementptr inbounds %struct.anon.83, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %call1 = tail call zeroext i1 @is_skb_forwardable(ptr noundef %2, ptr noundef %skb) #5
  br i1 %call1, label %if.end, label %entry.drop_crit_edge

entry.drop_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %drop

if.end:                                           ; preds = %entry
  %3 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %and.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.skb_dst.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.skb_dst.exit.i_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %skb_dst.exit.i

land.lhs.true.i.i:                                ; preds = %if.end
  %call.i.i = tail call i32 @rcu_read_lock_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.skb_dst.exitthread-pre-split.i_crit_edge

land.lhs.true.i.i.skb_dst.exitthread-pre-split.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %skb_dst.exitthread-pre-split.i

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.skb_dst.exitthread-pre-split.i_crit_edge, !prof !62

land.rhs.i.i.skb_dst.exitthread-pre-split.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %skb_dst.exitthread-pre-split.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1013, i32 noundef 9, ptr noundef null) #5
  br label %skb_dst.exitthread-pre-split.i

skb_dst.exitthread-pre-split.i:                   ; preds = %do.end.i.i, %land.rhs.i.i.skb_dst.exitthread-pre-split.i_crit_edge, %land.lhs.true.i.i.skb_dst.exitthread-pre-split.i_crit_edge
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr.i = load i32, ptr %3, align 8
  br label %skb_dst.exit.i

skb_dst.exit.i:                                   ; preds = %skb_dst.exitthread-pre-split.i, %if.end.skb_dst.exit.i_crit_edge
  %7 = phi i32 [ %.pr.i, %skb_dst.exitthread-pre-split.i ], [ %5, %if.end.skb_dst.exit.i_crit_edge ]
  %and25.i.i = and i32 %7, -2
  %8 = inttoptr i32 %and25.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i)
  %tobool.not.i = icmp eq i32 %and25.i.i, 0
  br i1 %tobool.not.i, label %skb_dst.exit.i.br_drop_fake_rtable.exit_crit_edge, label %land.lhs.true.i

skb_dst.exit.i.br_drop_fake_rtable.exit_crit_edge: ; preds = %skb_dst.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %br_drop_fake_rtable.exit

land.lhs.true.i:                                  ; preds = %skb_dst.exit.i
  %flags.i = getelementptr inbounds %struct.dst_entry, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %flags.i, align 4
  %11 = and i16 %10, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool1.not.i = icmp eq i16 %11, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.br_drop_fake_rtable.exit_crit_edge, label %if.then.i.i

land.lhs.true.i.br_drop_fake_rtable.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %br_drop_fake_rtable.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i
  %and.i.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.then.i.i.refdst_drop.exit.i.i_crit_edge

if.then.i.i.refdst_drop.exit.i.i_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %refdst_drop.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dst_release(ptr noundef nonnull %8) #5
  br label %refdst_drop.exit.i.i

refdst_drop.exit.i.i:                             ; preds = %if.then.i.i.i, %if.then.i.i.refdst_drop.exit.i.i_crit_edge
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %3, align 8
  br label %br_drop_fake_rtable.exit

br_drop_fake_rtable.exit:                         ; preds = %refdst_drop.exit.i.i, %land.lhs.true.i.br_drop_fake_rtable.exit_crit_edge, %skb_dst.exit.i.br_drop_fake_rtable.exit_crit_edge
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %13 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %13)
  %bf.load = load i16, ptr %ip_summed, align 8
  %14 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %14)
  %cmp = icmp eq i16 %14, 1536
  br i1 %cmp, label %land.lhs.true, label %br_drop_fake_rtable.exit.if.end10_crit_edge

br_drop_fake_rtable.exit.if.end10_crit_edge:      ; preds = %br_drop_fake_rtable.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

land.lhs.true:                                    ; preds = %br_drop_fake_rtable.exit
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %15 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %protocol, align 8
  %17 = zext i16 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i16 %16, label %land.lhs.true.if.end10_crit_edge [
    i16 -30552, label %land.lhs.true.if.then5_crit_edge
    i16 -32512, label %land.lhs.true.if.then5_crit_edge43
  ]

land.lhs.true.if.then5_crit_edge43:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then5

land.lhs.true.if.then5_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then5

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.then5:                                         ; preds = %land.lhs.true.if.then5_crit_edge, %land.lhs.true.if.then5_crit_edge43
  %mac_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %18 = ptrtoint ptr %mac_len.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %mac_len.i, align 4
  %conv.i = zext i16 %19 to i32
  %20 = zext i16 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.18)
  switch i16 %16, label %if.then5.cleanup_crit_edge [
    i16 -30552, label %if.then5.if.then.i_crit_edge
    i16 -32512, label %if.then5.if.then.i_crit_edge44
  ]

if.then5.if.then.i_crit_edge44:                   ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

if.then5.if.then.i_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i:                                        ; preds = %if.then5.if.then.i_crit_edge, %if.then5.if.then.i_crit_edge44
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool.not.i23 = icmp eq i16 %19, 0
  br i1 %tobool.not.i23, label %if.then.i.if.end26.i_crit_edge, label %if.then1.i

if.then.i.if.end26.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26.i

if.then1.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %19)
  %cmp.i = icmp ult i16 %19, 4
  br i1 %cmp.i, label %do.end.i, label %if.end25.i, !prof !62

do.end.i:                                         ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 598, i32 noundef 9, ptr noundef null) #5
  br label %drop

if.end25.i:                                       ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i = add nsw i32 %conv.i, -4
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.end25.i, %if.then.i.if.end26.i_crit_edge
  %vlan_depth.0.i = phi i32 [ %sub.i, %if.end25.i ], [ 14, %if.then.i.if.end26.i_crit_edge ]
  %21 = getelementptr inbounds %struct.vlan_hdr, ptr %vhdr.i, i32 0, i32 1
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %tobool2.not.i.i.i = icmp eq ptr %skb, null
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  br label %do.body27.i

do.body27.i:                                      ; preds = %do.body27.i.backedge, %if.end26.i
  %vlan_depth.1.i = phi i32 [ %vlan_depth.0.i, %if.end26.i ], [ %add.i, %do.body27.i.backedge ]
  %parse_depth.0.i = phi i32 [ 8, %if.end26.i ], [ %dec.i, %do.body27.i.backedge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vhdr.i) #5
  %22 = ptrtoint ptr %vhdr.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 -1, ptr %vhdr.i, align 2, !annotation !63
  %23 = ptrtoint ptr %21 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 -1, ptr %21, align 2, !annotation !63
  %24 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len.i.i.i, align 4
  %26 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %data_len.i.i.i, align 8
  %28 = add i32 %vlan_depth.1.i, %27
  %sub.i1.i.i = sub i32 %25, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i1.i.i)
  %cmp.i.i.i = icmp sgt i32 %sub.i1.i.i, 3
  br i1 %cmp.i.i.i, label %if.then.i.i.i24, label %if.end.i.i.i, !prof !64

if.then.i.i.i24:                                  ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %30, i32 %vlan_depth.1.i
  br label %skb_header_pointer.exit.i

if.end.i.i.i:                                     ; preds = %do.body27.i
  br i1 %tobool2.not.i.i.i, label %if.end.i.i.i.cleanup.thread.i_crit_edge, label %lor.lhs.false.i.i.i

if.end.i.i.i.cleanup.thread.i_crit_edge:          ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread.i

lor.lhs.false.i.i.i:                              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %vlan_depth.1.i, ptr noundef nonnull %vhdr.i, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp3.i.i.i = icmp slt i32 %call.i.i.i, 0
  %spec.select.i.i.i = select i1 %cmp3.i.i.i, ptr null, ptr %vhdr.i, !prof !62
  br label %skb_header_pointer.exit.i

skb_header_pointer.exit.i:                        ; preds = %lor.lhs.false.i.i.i, %if.then.i.i.i24
  %retval.0.i.i.i = phi ptr [ %add.ptr.i.i.i, %if.then.i.i.i24 ], [ %spec.select.i.i.i, %lor.lhs.false.i.i.i ]
  %tobool29.not.i = icmp eq ptr %retval.0.i.i.i, null
  %dec.i = add nsw i32 %parse_depth.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool30.not.i = icmp eq i32 %dec.i, 0
  %31 = select i1 %tobool29.not.i, i1 true, i1 %tobool30.not.i, !prof !62
  br i1 %31, label %skb_header_pointer.exit.i.cleanup.thread.i_crit_edge, label %do.cond42.i, !prof !62

skb_header_pointer.exit.i.cleanup.thread.i_crit_edge: ; preds = %skb_header_pointer.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %skb_header_pointer.exit.i.cleanup.thread.i_crit_edge, %if.end.i.i.i.cleanup.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i) #5
  br label %drop

do.cond42.i:                                      ; preds = %skb_header_pointer.exit.i
  %h_vlan_encapsulated_proto.i = getelementptr inbounds %struct.vlan_hdr, ptr %retval.0.i.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %h_vlan_encapsulated_proto.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %h_vlan_encapsulated_proto.i, align 2
  %add.i = add nsw i32 %vlan_depth.1.i, 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i) #5
  %34 = zext i16 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.19)
  switch i16 %33, label %do.cond42.i.cleanup_crit_edge [
    i16 -30552, label %do.cond42.i.do.body27.i.backedge_crit_edge
    i16 -32512, label %do.cond42.i.do.body27.i.backedge_crit_edge45
    i16 0, label %do.cond42.i.drop_crit_edge
  ]

do.cond42.i.drop_crit_edge:                       ; preds = %do.cond42.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %drop

do.cond42.i.do.body27.i.backedge_crit_edge45:     ; preds = %do.cond42.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body27.i.backedge

do.cond42.i.do.body27.i.backedge_crit_edge:       ; preds = %do.cond42.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body27.i.backedge

do.cond42.i.cleanup_crit_edge:                    ; preds = %do.cond42.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body27.i.backedge:                             ; preds = %do.cond42.i.do.body27.i.backedge_crit_edge, %do.cond42.i.do.body27.i.backedge_crit_edge45
  br label %do.body27.i

cleanup:                                          ; preds = %do.cond42.i.cleanup_crit_edge, %if.then5.cleanup_crit_edge
  %depth.033 = phi i32 [ %conv.i, %if.then5.cleanup_crit_edge ], [ %add.i, %do.cond42.i.cleanup_crit_edge ]
  %data.i.i25 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %35 = ptrtoint ptr %data.i.i25 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data.i.i25, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %37 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %36 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %38 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %39 = trunc i32 %depth.033 to i16
  %conv1.i = add i16 %conv.i.i, %39
  %40 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv1.i, ptr %network_header.i.i, align 4
  br label %if.end10

if.end10:                                         ; preds = %cleanup, %land.lhs.true.if.end10_crit_edge, %br_drop_fake_rtable.exit.if.end10_crit_edge
  call void @br_switchdev_frame_set_offload_fwd_mark(ptr noundef %skb) #5
  %call11 = call i32 @dev_queue_xmit(ptr noundef %skb) #5
  br label %return

drop:                                             ; preds = %do.cond42.i.drop_crit_edge, %cleanup.thread.i, %do.end.i, %entry.drop_crit_edge
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #5
  br label %return

return:                                           ; preds = %drop, %if.end10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_skb_forwardable(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_switchdev_frame_set_offload_fwd_mark(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_queue_xmit(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_forward_finish(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %0, align 8
  %2 = getelementptr inbounds %struct.anon.83, ptr %skb, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %call.i = tail call fastcc i32 @nf_hook(i32 noundef 4, ptr noundef %net, ptr noundef %sk, ptr noundef %skb, ptr noundef null, ptr noundef %4, ptr noundef nonnull @br_dev_queue_push_xmit) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 1
  br i1 %cmp.i, label %if.then.i, label %entry.NF_HOOK.exit_crit_edge

entry.NF_HOOK.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %NF_HOOK.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1.i = tail call i32 @br_dev_queue_push_xmit(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) #5, !callees !65
  br label %NF_HOOK.exit

NF_HOOK.exit:                                     ; preds = %if.then.i, %entry.NF_HOOK.exit_crit_edge
  %ret.0.i = phi i32 [ %call1.i, %if.then.i ], [ %call.i, %entry.NF_HOOK.exit_crit_edge ]
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @br_forward(ptr noundef %to, ptr noundef %skb, i1 noundef zeroext %local_rcv, i1 noundef zeroext %local_orig) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %to, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end, !prof !62

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %entry
  %backup_port = getelementptr inbounds %struct.net_bridge_port, ptr %to, i32 0, i32 6
  %0 = ptrtoint ptr %backup_port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %backup_port, align 4
  %tobool6.not = icmp eq ptr %1, null
  br i1 %tobool6.not, label %if.end.if.end38_crit_edge, label %land.lhs.true

if.end.if.end38_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

land.lhs.true:                                    ; preds = %if.end
  %dev = getelementptr inbounds %struct.net_bridge_port, ptr %to, i32 0, i32 1
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
  br i1 %tobool.not.i, label %land.lhs.true.if.end38_crit_edge, label %if.then7

land.lhs.true.if.end38_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

if.then7:                                         ; preds = %land.lhs.true
  %7 = ptrtoint ptr %backup_port to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %backup_port, align 4
  %call15 = tail call i32 @rcu_read_lock_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %land.lhs.true17, label %if.then7.do.end25_crit_edge

if.then7.do.end25_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end25

land.lhs.true17:                                  ; preds = %if.then7
  %call18 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %land.lhs.true17.do.end25_crit_edge, label %land.lhs.true20

land.lhs.true17.do.end25_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end25

land.lhs.true20:                                  ; preds = %land.lhs.true17
  %.b64 = load i1, ptr @br_forward.__warned, align 1
  br i1 %.b64, label %land.lhs.true20.do.end25_crit_edge, label %if.then22

land.lhs.true20.do.end25_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end25

if.then22:                                        ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @br_forward.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 154, ptr noundef nonnull @.str.1) #5
  br label %do.end25

do.end25:                                         ; preds = %if.then22, %land.lhs.true20.do.end25_crit_edge, %land.lhs.true17.do.end25_crit_edge, %if.then7.do.end25_crit_edge
  %tobool27.not = icmp eq ptr %8, null
  br i1 %tobool27.not, label %do.end25.out_crit_edge, label %do.end25.if.end38_crit_edge

do.end25.if.end38_crit_edge:                      ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

do.end25.out_crit_edge:                           ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end38:                                         ; preds = %do.end25.if.end38_crit_edge, %land.lhs.true.if.end38_crit_edge, %if.end.if.end38_crit_edge
  %to.addr.1 = phi ptr [ %to, %land.lhs.true.if.end38_crit_edge ], [ %8, %do.end25.if.end38_crit_edge ], [ %to, %if.end.if.end38_crit_edge ]
  %vlgrp.i.i = getelementptr inbounds %struct.net_bridge_port, ptr %to.addr.1, i32 0, i32 5
  %9 = ptrtoint ptr %vlgrp.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %vlgrp.i.i, align 8
  %call.i.i = tail call i32 @rcu_read_lock_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %if.end38.nbp_vlan_group_rcu.exit.i_crit_edge

if.end38.nbp_vlan_group_rcu.exit.i_crit_edge:     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %nbp_vlan_group_rcu.exit.i

land.lhs.true.i.i:                                ; preds = %if.end38
  %call2.i.i = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.nbp_vlan_group_rcu.exit.i_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i.i.nbp_vlan_group_rcu.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nbp_vlan_group_rcu.exit.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  %.b9.i.i = load i1, ptr @nbp_vlan_group_rcu.__warned, align 1
  br i1 %.b9.i.i, label %land.lhs.true4.i.i.nbp_vlan_group_rcu.exit.i_crit_edge, label %if.then.i.i

land.lhs.true4.i.i.nbp_vlan_group_rcu.exit.i_crit_edge: ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nbp_vlan_group_rcu.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @nbp_vlan_group_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 1489, ptr noundef nonnull @.str.1) #5
  br label %nbp_vlan_group_rcu.exit.i

nbp_vlan_group_rcu.exit.i:                        ; preds = %if.then.i.i, %land.lhs.true4.i.i.nbp_vlan_group_rcu.exit.i_crit_edge, %land.lhs.true.i.i.nbp_vlan_group_rcu.exit.i_crit_edge, %if.end38.nbp_vlan_group_rcu.exit.i_crit_edge
  %flags.i = getelementptr inbounds %struct.net_bridge_port, ptr %to.addr.1, i32 0, i32 4
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i65 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i65, label %lor.lhs.false.i, label %nbp_vlan_group_rcu.exit.i.land.lhs.true.i_crit_edge

nbp_vlan_group_rcu.exit.i.land.lhs.true.i_crit_edge: ; preds = %nbp_vlan_group_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i

lor.lhs.false.i:                                  ; preds = %nbp_vlan_group_rcu.exit.i
  %13 = getelementptr inbounds %struct.anon.83, ptr %skb, i32 0, i32 2
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %dev.i = getelementptr inbounds %struct.net_bridge_port, ptr %to.addr.1, i32 0, i32 1
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  %cmp.not.i = icmp eq ptr %15, %17
  br i1 %cmp.not.i, label %lor.lhs.false.i.out_crit_edge, label %lor.lhs.false.i.land.lhs.true.i_crit_edge

lor.lhs.false.i.land.lhs.true.i_crit_edge:        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i

lor.lhs.false.i.out_crit_edge:                    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i.land.lhs.true.i_crit_edge, %nbp_vlan_group_rcu.exit.i.land.lhs.true.i_crit_edge
  %state.i66 = getelementptr inbounds %struct.net_bridge_port, ptr %to.addr.1, i32 0, i32 8
  %18 = ptrtoint ptr %state.i66 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %state.i66, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %19)
  %cmp1.i = icmp eq i8 %19, 3
  br i1 %cmp1.i, label %land.lhs.true3.i, label %land.lhs.true.i.out_crit_edge

land.lhs.true.i.out_crit_edge:                    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %call4.i = tail call zeroext i1 @br_allowed_egress(ptr noundef %10, ptr noundef %skb) #5
  br i1 %call4.i, label %land.lhs.true6.i, label %land.lhs.true3.i.out_crit_edge

land.lhs.true3.i.out_crit_edge:                   ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

land.lhs.true6.i:                                 ; preds = %land.lhs.true3.i
  %call7.i = tail call zeroext i1 @nbp_switchdev_allowed_egress(ptr noundef nonnull %to.addr.1, ptr noundef %skb) #5
  br i1 %call7.i, label %land.rhs.i, label %land.lhs.true6.i.out_crit_edge

land.lhs.true6.i.out_crit_edge:                   ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

land.rhs.i:                                       ; preds = %land.lhs.true6.i
  %src_port_isolated.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 7
  %20 = ptrtoint ptr %src_port_isolated.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load.i.i = load i8, ptr %src_port_isolated.i.i, align 1
  %21 = and i8 %bf.load.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i18.i = icmp eq i8 %21, 0
  br i1 %tobool.not.i18.i, label %land.rhs.i.if.then41_crit_edge, label %should_deliver.exit

land.rhs.i.if.then41_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then41

should_deliver.exit:                              ; preds = %land.rhs.i
  %22 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags.i, align 4
  %24 = and i32 %23, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool40.not.not = icmp eq i32 %24, 0
  br i1 %tobool40.not.not, label %should_deliver.exit.if.then41_crit_edge, label %should_deliver.exit.out_crit_edge

should_deliver.exit.out_crit_edge:                ; preds = %should_deliver.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

should_deliver.exit.if.then41_crit_edge:          ; preds = %should_deliver.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then41

if.then41:                                        ; preds = %should_deliver.exit.if.then41_crit_edge, %land.rhs.i.if.then41_crit_edge
  br i1 %local_rcv, label %if.then43, label %if.else

if.then43:                                        ; preds = %if.then41
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %25 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cb.i, align 8
  %call.i = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #5
  %tobool.not.i67 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i67, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #7
  %tx_dropped.i = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 36, i32 7
  %27 = ptrtoint ptr %tx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tx_dropped.i, align 4
  %inc.i = add i32 %28, 1
  store i32 %inc.i, ptr %tx_dropped.i, align 4
  br label %if.end51

if.end.i:                                         ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @__br_forward(ptr noundef nonnull %to.addr.1, ptr noundef nonnull %call.i, i1 noundef zeroext %local_orig) #5
  br label %if.end51

if.else:                                          ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @__br_forward(ptr noundef nonnull %to.addr.1, ptr noundef %skb, i1 noundef zeroext %local_orig)
  br label %if.end51

out:                                              ; preds = %should_deliver.exit.out_crit_edge, %land.lhs.true6.i.out_crit_edge, %land.lhs.true3.i.out_crit_edge, %land.lhs.true.i.out_crit_edge, %lor.lhs.false.i.out_crit_edge, %do.end25.out_crit_edge, %entry.out_crit_edge
  br i1 %local_rcv, label %out.if.end51_crit_edge, label %if.then50

out.if.end51_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51

if.then50:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #5
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %out.if.end51_crit_edge, %if.else, %if.end.i, %if.then.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__br_forward(ptr noundef %to, ptr noundef %skb, i1 noundef zeroext %local_orig) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @nbp_switchdev_frame_mark_tx_fwd_offload(ptr noundef %to, ptr noundef %skb) #5
  %vlgrp.i = getelementptr inbounds %struct.net_bridge_port, ptr %to, i32 0, i32 5
  %0 = ptrtoint ptr %vlgrp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %vlgrp.i, align 8
  %call.i = tail call i32 @rcu_read_lock_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.nbp_vlan_group_rcu.exit_crit_edge

entry.nbp_vlan_group_rcu.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %nbp_vlan_group_rcu.exit

land.lhs.true.i:                                  ; preds = %entry
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.nbp_vlan_group_rcu.exit_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.nbp_vlan_group_rcu.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nbp_vlan_group_rcu.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b9.i = load i1, ptr @nbp_vlan_group_rcu.__warned, align 1
  br i1 %.b9.i, label %land.lhs.true4.i.nbp_vlan_group_rcu.exit_crit_edge, label %if.then.i

land.lhs.true4.i.nbp_vlan_group_rcu.exit_crit_edge: ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nbp_vlan_group_rcu.exit

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @nbp_vlan_group_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 1489, ptr noundef nonnull @.str.1) #5
  br label %nbp_vlan_group_rcu.exit

nbp_vlan_group_rcu.exit:                          ; preds = %if.then.i, %land.lhs.true4.i.nbp_vlan_group_rcu.exit_crit_edge, %land.lhs.true.i.nbp_vlan_group_rcu.exit_crit_edge, %entry.nbp_vlan_group_rcu.exit_crit_edge
  %2 = ptrtoint ptr %to to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %to, align 8
  %call1 = tail call ptr @br_handle_vlan(ptr noundef %3, ptr noundef %to, ptr noundef %1, ptr noundef %skb) #5
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %nbp_vlan_group_rcu.exit.cleanup_crit_edge, label %if.end

nbp_vlan_group_rcu.exit.cleanup_crit_edge:        ; preds = %nbp_vlan_group_rcu.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %nbp_vlan_group_rcu.exit
  %4 = getelementptr inbounds %struct.anon.83, ptr %call1, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %dev = getelementptr inbounds %struct.net_bridge_port, ptr %to, i32 0, i32 1
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  store ptr %8, ptr %4, align 8
  br i1 %local_orig, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 17
  %9 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %end.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 7
  %11 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.i.not.i = icmp eq i32 %12, 0
  br i1 %tobool.i.not.i, label %if.then3.if.end6_crit_edge, label %land.lhs.true.i48

if.then3.if.end6_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

land.lhs.true.i48:                                ; preds = %if.then3
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %10, i32 0, i32 4
  %13 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %cmp.not.i = icmp eq i16 %14, 0
  br i1 %cmp.not.i, label %land.lhs.true.i48.if.end6_crit_edge, label %land.lhs.true3.i

land.lhs.true.i48.if.end6_crit_edge:              ; preds = %land.lhs.true.i48
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i48
  %gso_type.i = getelementptr inbounds %struct.skb_shared_info, ptr %10, i32 0, i32 8
  %15 = ptrtoint ptr %gso_type.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %gso_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp4.i = icmp eq i32 %16, 0
  br i1 %cmp4.i, label %if.then5, label %land.lhs.true3.i.if.end6_crit_edge, !prof !62

land.lhs.true3.i.if.end6_crit_edge:               ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then5:                                         ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__skb_warn_lro_forwarding(ptr noundef nonnull %call1) #5
  tail call void @kfree_skb_reason(ptr noundef nonnull %call1, i32 noundef 0) #5
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true3.i.if.end6_crit_edge, %land.lhs.true.i48.if.end6_crit_edge, %if.then3.if.end6_crit_edge
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 15
  %17 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %18 = and i16 %bf.load.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %18)
  %cmp.i = icmp eq i16 %18, 1024
  br i1 %cmp.i, label %if.then.i50, label %if.end6.if.end21_crit_edge

if.end6.if.end21_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.then.i50:                                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %bf.clear4.i = and i16 %bf.load.i, -1537
  %19 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %bf.clear4.i, ptr %ip_summed.i, align 8
  br label %if.end21

if.else:                                          ; preds = %if.end
  %20 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #5, !srcloc !66
  %and.i.i = and i32 %20, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not, label %if.end19, label %if.then13, !prof !64

if.then13:                                        ; preds = %if.else
  %call14 = tail call ptr @skb_push(ptr noundef nonnull %call1, i32 noundef 14) #5
  %21 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %4, align 8
  %call15 = tail call zeroext i1 @is_skb_forwardable(ptr noundef %22, ptr noundef nonnull %call1) #5
  br i1 %call15, label %if.else17, label %if.then16

if.then16:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree_skb_reason(ptr noundef nonnull %call1, i32 noundef 0) #5
  br label %cleanup

if.else17:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  %np.i = getelementptr inbounds %struct.net_bridge_port, ptr %to, i32 0, i32 30
  %23 = ptrtoint ptr %np.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %np.i, align 4
  %call.i51 = tail call i32 @netpoll_send_skb(ptr noundef %24, ptr noundef nonnull %call1) #5
  br label %cleanup

if.end19:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %4, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.end19, %if.then.i50, %if.end6.if.end21_crit_edge
  %indev.0 = phi ptr [ null, %if.end19 ], [ %6, %if.end6.if.end21_crit_edge ], [ %6, %if.then.i50 ]
  %.pn = phi ptr [ %26, %if.end19 ], [ %6, %if.end6.if.end21_crit_edge ], [ %6, %if.then.i50 ]
  %br_hook.0 = phi i32 [ 3, %if.end19 ], [ 2, %if.end6.if.end21_crit_edge ], [ 2, %if.then.i50 ]
  %net.0.in = getelementptr inbounds %struct.net_device, ptr %.pn, i32 0, i32 127
  %27 = ptrtoint ptr %net.0.in to i32
  call void @__asan_load4_noabort(i32 %27)
  %net.0 = load ptr, ptr %net.0.in, align 4
  %28 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %4, align 8
  %call.i53 = tail call fastcc i32 @nf_hook(i32 noundef %br_hook.0, ptr noundef %net.0, ptr noundef null, ptr noundef nonnull %call1, ptr noundef %indev.0, ptr noundef %29, ptr noundef nonnull @br_forward_finish) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i53)
  %cmp.i54 = icmp eq i32 %call.i53, 1
  br i1 %cmp.i54, label %if.then.i55, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i55:                                      ; preds = %if.end21
  %30 = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 2
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 0, ptr %30, align 8
  %32 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %4, align 8
  %call.i.i = tail call fastcc i32 @nf_hook(i32 noundef 4, ptr noundef %net.0, ptr noundef null, ptr noundef nonnull %call1, ptr noundef null, ptr noundef %33, ptr noundef nonnull @br_dev_queue_push_xmit) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then.i55.cleanup_crit_edge

if.then.i55.cleanup_crit_edge:                    ; preds = %if.then.i55
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i.i:                                      ; preds = %if.then.i55
  call void @__sanitizer_cov_trace_pc() #7
  %call1.i.i = tail call i32 @br_dev_queue_push_xmit(ptr noundef %net.0, ptr noundef null, ptr noundef nonnull %call1) #5, !callees !65
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then.i55.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.else17, %if.then16, %if.then5, %nbp_vlan_group_rcu.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @br_flood(ptr noundef %br, ptr noundef %skb, i32 noundef %pkt_type, i1 noundef zeroext %local_rcv, i1 noundef zeroext %local_orig) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rcu_read_lock_any_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b93 = load i1, ptr @br_flood.__warned, align 1
  br i1 %.b93, label %land.lhs.true4.do.end_crit_edge, label %if.then

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @br_flood.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 205, ptr noundef nonnull @.str.2) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %port_list = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 9
  %0 = ptrtoint ptr %port_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn95 = load volatile ptr, ptr %port_list, align 4
  %cmp.not97 = icmp eq ptr %.pn95, %port_list
  br i1 %cmp.not97, label %do.end.out_crit_edge, label %for.body.lr.ph

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

for.body.lr.ph:                                   ; preds = %do.end
  %1 = getelementptr inbounds %struct.anon.83, ptr %skb, i32 0, i32 2
  %dev27 = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 3
  %proxyarp_replied = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn100 = phi ptr [ %.pn95, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %prev.098 = phi ptr [ null, %for.body.lr.ph ], [ %prev.1, %for.inc.for.body_crit_edge ]
  %p.0101 = getelementptr i8, ptr %.pn100, i32 -12
  %2 = zext i32 %pkt_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %pkt_type, label %for.body.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb14
    i32 2, label %sw.bb22
  ]

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %for.body
  %flags = getelementptr i8, ptr %.pn100, i32 8
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  %and = and i32 %4, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %sw.bb.for.inc_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb.for.inc_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

sw.bb14:                                          ; preds = %for.body
  %flags15 = getelementptr i8, ptr %.pn100, i32 8
  %5 = ptrtoint ptr %flags15 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags15, align 4
  %and16 = and i32 %6, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %land.lhs.true18, label %sw.bb14.sw.epilog_crit_edge

sw.bb14.sw.epilog_crit_edge:                      ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

land.lhs.true18:                                  ; preds = %sw.bb14
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 8
  %9 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev27, align 4
  %cmp19.not = icmp eq ptr %8, %10
  br i1 %cmp19.not, label %land.lhs.true18.sw.epilog_crit_edge, label %land.lhs.true18.for.inc_crit_edge

land.lhs.true18.for.inc_crit_edge:                ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true18.sw.epilog_crit_edge:              ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb22:                                          ; preds = %for.body
  %flags23 = getelementptr i8, ptr %.pn100, i32 8
  %11 = ptrtoint ptr %flags23 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags23, align 4
  %and24 = and i32 %12, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %land.lhs.true26, label %sw.bb22.sw.epilog_crit_edge

sw.bb22.sw.epilog_crit_edge:                      ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

land.lhs.true26:                                  ; preds = %sw.bb22
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 8
  %15 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev27, align 4
  %cmp28.not = icmp eq ptr %14, %16
  br i1 %cmp28.not, label %land.lhs.true26.sw.epilog_crit_edge, label %land.lhs.true26.for.inc_crit_edge

land.lhs.true26.for.inc_crit_edge:                ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true26.sw.epilog_crit_edge:              ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %land.lhs.true26.sw.epilog_crit_edge, %sw.bb22.sw.epilog_crit_edge, %land.lhs.true18.sw.epilog_crit_edge, %sw.bb14.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %for.body.sw.epilog_crit_edge
  %flags31 = getelementptr i8, ptr %.pn100, i32 8
  %17 = ptrtoint ptr %flags31 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags31, align 4
  %and32 = and i32 %18, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end35, label %sw.epilog.for.inc_crit_edge

sw.epilog.for.inc_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end35:                                         ; preds = %sw.epilog
  %and37 = and i32 %18, 33792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end35.if.end42_crit_edge, label %land.lhs.true39

if.end35.if.end42_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

land.lhs.true39:                                  ; preds = %if.end35
  %19 = ptrtoint ptr %proxyarp_replied to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load = load i8, ptr %proxyarp_replied, align 1
  %20 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool40.not = icmp eq i8 %20, 0
  br i1 %tobool40.not, label %land.lhs.true39.if.end42_crit_edge, label %land.lhs.true39.for.inc_crit_edge

land.lhs.true39.for.inc_crit_edge:                ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true39.if.end42_crit_edge:               ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

if.end42:                                         ; preds = %land.lhs.true39.if.end42_crit_edge, %if.end35.if.end42_crit_edge
  %call44 = tail call fastcc ptr @maybe_deliver(ptr noundef %prev.098, ptr noundef %p.0101, ptr noundef %skb, i1 noundef zeroext %local_orig)
  %cmp.i = icmp ugt ptr %call44, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end42.out_crit_edge, label %if.end42.for.inc_crit_edge

if.end42.for.inc_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end42.out_crit_edge:                           ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

for.inc:                                          ; preds = %if.end42.for.inc_crit_edge, %land.lhs.true39.for.inc_crit_edge, %sw.epilog.for.inc_crit_edge, %land.lhs.true26.for.inc_crit_edge, %land.lhs.true18.for.inc_crit_edge, %sw.bb.for.inc_crit_edge
  %prev.1 = phi ptr [ %prev.098, %sw.epilog.for.inc_crit_edge ], [ %prev.098, %land.lhs.true39.for.inc_crit_edge ], [ %call44, %if.end42.for.inc_crit_edge ], [ %prev.098, %land.lhs.true26.for.inc_crit_edge ], [ %prev.098, %land.lhs.true18.for.inc_crit_edge ], [ %prev.098, %sw.bb.for.inc_crit_edge ]
  %21 = ptrtoint ptr %.pn100 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn = load volatile ptr, ptr %.pn100, align 4
  %cmp.not = icmp eq ptr %.pn, %port_list
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  %tobool57.not = icmp eq ptr %prev.1, null
  br i1 %tobool57.not, label %for.end.out_crit_edge, label %if.end59

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end59:                                         ; preds = %for.end
  br i1 %local_rcv, label %if.then61, label %if.else

if.then61:                                        ; preds = %if.end59
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %22 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cb.i, align 8
  %call.i = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #5
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #7
  %tx_dropped.i = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 36, i32 7
  %24 = ptrtoint ptr %tx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tx_dropped.i, align 4
  %inc.i = add i32 %25, 1
  store i32 %inc.i, ptr %tx_dropped.i, align 4
  br label %cleanup

if.end.i:                                         ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @__br_forward(ptr noundef nonnull %prev.1, ptr noundef nonnull %call.i, i1 noundef zeroext %local_orig) #5
  br label %cleanup

if.else:                                          ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @__br_forward(ptr noundef nonnull %prev.1, ptr noundef %skb, i1 noundef zeroext %local_orig)
  br label %cleanup

out:                                              ; preds = %for.end.out_crit_edge, %if.end42.out_crit_edge, %do.end.out_crit_edge
  br i1 %local_rcv, label %out.cleanup_crit_edge, label %if.then67

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then67:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then67, %out.cleanup_crit_edge, %if.else, %if.end.i, %if.then.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @maybe_deliver(ptr noundef %prev, ptr noundef %p, ptr noundef %skb, i1 noundef zeroext %local_orig) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %igmp.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 6
  %0 = ptrtoint ptr %igmp.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %igmp.i, align 2
  %vlgrp.i.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 5
  %2 = ptrtoint ptr %vlgrp.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %vlgrp.i.i, align 8
  %call.i.i = tail call i32 @rcu_read_lock_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %entry.nbp_vlan_group_rcu.exit.i_crit_edge

entry.nbp_vlan_group_rcu.exit.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %nbp_vlan_group_rcu.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call2.i.i = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.nbp_vlan_group_rcu.exit.i_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i.i.nbp_vlan_group_rcu.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nbp_vlan_group_rcu.exit.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  %.b9.i.i = load i1, ptr @nbp_vlan_group_rcu.__warned, align 1
  br i1 %.b9.i.i, label %land.lhs.true4.i.i.nbp_vlan_group_rcu.exit.i_crit_edge, label %if.then.i.i

land.lhs.true4.i.i.nbp_vlan_group_rcu.exit.i_crit_edge: ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nbp_vlan_group_rcu.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @nbp_vlan_group_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 1489, ptr noundef nonnull @.str.1) #5
  br label %nbp_vlan_group_rcu.exit.i

nbp_vlan_group_rcu.exit.i:                        ; preds = %if.then.i.i, %land.lhs.true4.i.i.nbp_vlan_group_rcu.exit.i_crit_edge, %land.lhs.true.i.i.nbp_vlan_group_rcu.exit.i_crit_edge, %entry.nbp_vlan_group_rcu.exit.i_crit_edge
  %flags.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 4
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %nbp_vlan_group_rcu.exit.i.land.lhs.true.i_crit_edge

nbp_vlan_group_rcu.exit.i.land.lhs.true.i_crit_edge: ; preds = %nbp_vlan_group_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i

lor.lhs.false.i:                                  ; preds = %nbp_vlan_group_rcu.exit.i
  %6 = getelementptr inbounds %struct.anon.83, ptr %skb, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %dev.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 1
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  %cmp.not.i = icmp eq ptr %8, %10
  br i1 %cmp.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %lor.lhs.false.i.land.lhs.true.i_crit_edge

lor.lhs.false.i.land.lhs.true.i_crit_edge:        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i.land.lhs.true.i_crit_edge, %nbp_vlan_group_rcu.exit.i.land.lhs.true.i_crit_edge
  %state.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 8
  %11 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %state.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %12)
  %cmp1.i = icmp eq i8 %12, 3
  br i1 %cmp1.i, label %land.lhs.true3.i, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %call4.i = tail call zeroext i1 @br_allowed_egress(ptr noundef %3, ptr noundef %skb) #5
  br i1 %call4.i, label %land.lhs.true6.i, label %land.lhs.true3.i.cleanup_crit_edge

land.lhs.true3.i.cleanup_crit_edge:               ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true6.i:                                 ; preds = %land.lhs.true3.i
  %call7.i = tail call zeroext i1 @nbp_switchdev_allowed_egress(ptr noundef %p, ptr noundef %skb) #5
  br i1 %call7.i, label %land.rhs.i, label %land.lhs.true6.i.cleanup_crit_edge

land.lhs.true6.i.cleanup_crit_edge:               ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.rhs.i:                                       ; preds = %land.lhs.true6.i
  %src_port_isolated.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 7
  %13 = ptrtoint ptr %src_port_isolated.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load.i.i = load i8, ptr %src_port_isolated.i.i, align 1
  %14 = and i8 %bf.load.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i18.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i18.i, label %land.rhs.i.if.end_crit_edge, label %should_deliver.exit

land.rhs.i.if.end_crit_edge:                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

should_deliver.exit:                              ; preds = %land.rhs.i
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags.i, align 4
  %17 = and i32 %16, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.not = icmp eq i32 %17, 0
  br i1 %tobool.not.not, label %should_deliver.exit.if.end_crit_edge, label %should_deliver.exit.cleanup_crit_edge

should_deliver.exit.cleanup_crit_edge:            ; preds = %should_deliver.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

should_deliver.exit.if.end_crit_edge:             ; preds = %should_deliver.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %should_deliver.exit.if.end_crit_edge, %land.rhs.i.if.end_crit_edge
  tail call void @nbp_switchdev_frame_mark_tx_fwd_to_hwdom(ptr noundef %p, ptr noundef %skb) #5
  %tobool2.not = icmp eq ptr %prev, null
  br i1 %tobool2.not, label %if.end.out_crit_edge, label %if.end4

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end4:                                          ; preds = %if.end
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %18 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cb.i, align 8
  %call.i = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #5
  %tobool.not.i23 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i23, label %if.then8, label %deliver_clone.exit.thread

deliver_clone.exit.thread:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @__br_forward(ptr noundef nonnull %prev, ptr noundef nonnull %call.i, i1 noundef zeroext %local_orig) #5
  br label %out

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %tx_dropped.i = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 36, i32 7
  %20 = ptrtoint ptr %tx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_dropped.i, align 4
  %inc.i = add i32 %21, 1
  store i32 %inc.i, ptr %tx_dropped.i, align 4
  br label %cleanup

out:                                              ; preds = %deliver_clone.exit.thread, %if.end.out_crit_edge
  %22 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %p, align 8
  tail call void @br_multicast_count(ptr noundef %23, ptr noundef %p, ptr noundef %skb, i8 noundef zeroext %1, i8 noundef zeroext 1) #5
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then8, %should_deliver.exit.cleanup_crit_edge, %land.lhs.true6.i.cleanup_crit_edge, %land.lhs.true3.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %if.then8 ], [ %p, %out ], [ %prev, %should_deliver.exit.cleanup_crit_edge ], [ %prev, %land.lhs.true6.i.cleanup_crit_edge ], [ %prev, %land.lhs.true3.i.cleanup_crit_edge ], [ %prev, %land.lhs.true.i.cleanup_crit_edge ], [ %prev, %lor.lhs.false.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @br_multicast_flood(ptr noundef %mdst, ptr noundef %skb, ptr noundef %brmctx, i1 noundef zeroext %local_rcv, i1 noundef zeroext %local_orig) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %0 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %protocol.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %1)
  %cmp.i = icmp eq i16 %1, -31011
  br i1 %cmp.i, label %if.then.i, label %if.end11.i

if.then.i:                                        ; preds = %entry
  %ip6_mc_router_list.i = getelementptr inbounds %struct.net_bridge_mcast, ptr %brmctx, i32 0, i32 19
  %2 = ptrtoint ptr %ip6_mc_router_list.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %ip6_mc_router_list.i, align 4
  %call.i = tail call i32 @rcu_read_lock_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.then.i.br_multicast_get_first_rport_node.exit_crit_edge

if.then.i.br_multicast_get_first_rport_node.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %br_multicast_get_first_rport_node.exit

land.lhs.true.i:                                  ; preds = %if.then.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.br_multicast_get_first_rport_node.exit_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.br_multicast_get_first_rport_node.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %br_multicast_get_first_rport_node.exit

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b33.i = load i1, ptr @br_multicast_get_first_rport_node.__warned, align 1
  br i1 %.b33.i, label %land.lhs.true5.i.br_multicast_get_first_rport_node.exit_crit_edge, label %land.lhs.true5.i.return.sink.split.i_crit_edge

land.lhs.true5.i.return.sink.split.i_crit_edge:   ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return.sink.split.i

land.lhs.true5.i.br_multicast_get_first_rport_node.exit_crit_edge: ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %br_multicast_get_first_rport_node.exit

if.end11.i:                                       ; preds = %entry
  %ip4_mc_router_list.i = getelementptr inbounds %struct.net_bridge_mcast, ptr %brmctx, i32 0, i32 14
  %4 = ptrtoint ptr %ip4_mc_router_list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %ip4_mc_router_list.i, align 4
  %call18.i = tail call i32 @rcu_read_lock_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %land.lhs.true20.i, label %if.end11.i.br_multicast_get_first_rport_node.exit_crit_edge

if.end11.i.br_multicast_get_first_rport_node.exit_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %br_multicast_get_first_rport_node.exit

land.lhs.true20.i:                                ; preds = %if.end11.i
  %call21.i = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i, label %land.lhs.true20.i.br_multicast_get_first_rport_node.exit_crit_edge, label %land.lhs.true23.i

land.lhs.true20.i.br_multicast_get_first_rport_node.exit_crit_edge: ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %br_multicast_get_first_rport_node.exit

land.lhs.true23.i:                                ; preds = %land.lhs.true20.i
  %.b3132.i = load i1, ptr @br_multicast_get_first_rport_node.__warned.17, align 1
  br i1 %.b3132.i, label %land.lhs.true23.i.br_multicast_get_first_rport_node.exit_crit_edge, label %land.lhs.true23.i.return.sink.split.i_crit_edge

land.lhs.true23.i.return.sink.split.i_crit_edge:  ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return.sink.split.i

land.lhs.true23.i.br_multicast_get_first_rport_node.exit_crit_edge: ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %br_multicast_get_first_rport_node.exit

return.sink.split.i:                              ; preds = %land.lhs.true23.i.return.sink.split.i_crit_edge, %land.lhs.true5.i.return.sink.split.i_crit_edge
  %br_multicast_get_first_rport_node.__warned.17.sink.i = phi ptr [ @br_multicast_get_first_rport_node.__warned, %land.lhs.true5.i.return.sink.split.i_crit_edge ], [ @br_multicast_get_first_rport_node.__warned.17, %land.lhs.true23.i.return.sink.split.i_crit_edge ]
  %.sink.i = phi i32 [ 988, %land.lhs.true5.i.return.sink.split.i_crit_edge ], [ 990, %land.lhs.true23.i.return.sink.split.i_crit_edge ]
  %retval.0.ph.i = phi ptr [ %3, %land.lhs.true5.i.return.sink.split.i_crit_edge ], [ %5, %land.lhs.true23.i.return.sink.split.i_crit_edge ]
  %6 = ptrtoint ptr %br_multicast_get_first_rport_node.__warned.17.sink.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i1 true, ptr %br_multicast_get_first_rport_node.__warned.17.sink.i, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef %.sink.i, ptr noundef nonnull @.str.1) #5
  br label %br_multicast_get_first_rport_node.exit

br_multicast_get_first_rport_node.exit:           ; preds = %return.sink.split.i, %land.lhs.true23.i.br_multicast_get_first_rport_node.exit_crit_edge, %land.lhs.true20.i.br_multicast_get_first_rport_node.exit_crit_edge, %if.end11.i.br_multicast_get_first_rport_node.exit_crit_edge, %land.lhs.true5.i.br_multicast_get_first_rport_node.exit_crit_edge, %land.lhs.true.i.br_multicast_get_first_rport_node.exit_crit_edge, %if.then.i.br_multicast_get_first_rport_node.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %land.lhs.true5.i.br_multicast_get_first_rport_node.exit_crit_edge ], [ %3, %land.lhs.true.i.br_multicast_get_first_rport_node.exit_crit_edge ], [ %3, %if.then.i.br_multicast_get_first_rport_node.exit_crit_edge ], [ %5, %land.lhs.true23.i.br_multicast_get_first_rport_node.exit_crit_edge ], [ %5, %land.lhs.true20.i.br_multicast_get_first_rport_node.exit_crit_edge ], [ %5, %if.end11.i.br_multicast_get_first_rport_node.exit_crit_edge ], [ %retval.0.ph.i, %return.sink.split.i ]
  %tobool.not = icmp eq ptr %mdst, null
  br i1 %tobool.not, label %br_multicast_get_first_rport_node.exit.if.end19_crit_edge, label %if.then

br_multicast_get_first_rport_node.exit.if.end19_crit_edge: ; preds = %br_multicast_get_first_rport_node.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

if.then:                                          ; preds = %br_multicast_get_first_rport_node.exit
  %ports = getelementptr inbounds %struct.net_bridge_mdb_entry, ptr %mdst, i32 0, i32 2
  %7 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %ports, align 4
  %call3 = tail call i32 @rcu_read_lock_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true, label %if.then.do.end11_crit_edge

if.then.do.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end11

land.lhs.true:                                    ; preds = %if.then
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end11_crit_edge, label %land.lhs.true7

land.lhs.true.do.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end11

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b149 = load i1, ptr @br_multicast_flood.__warned, align 1
  br i1 %.b149, label %land.lhs.true7.do.end11_crit_edge, label %if.then9

land.lhs.true7.do.end11_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end11

if.then9:                                         ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @br_multicast_flood.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 290, ptr noundef nonnull @.str.1) #5
  br label %do.end11

do.end11:                                         ; preds = %if.then9, %land.lhs.true7.do.end11_crit_edge, %land.lhs.true.do.end11_crit_edge, %if.then.do.end11_crit_edge
  %proto = getelementptr inbounds %struct.net_bridge_mdb_entry, ptr %mdst, i32 0, i32 3, i32 2
  %9 = ptrtoint ptr %proto to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %proto, align 4
  %11 = zext i16 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.21)
  switch i16 %10, label %do.end11.if.end19_crit_edge [
    i16 2048, label %sw.bb.i
    i16 -31011, label %sw.bb4.i
  ]

do.end11.if.end19_crit_edge:                      ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

sw.bb.i:                                          ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #7
  %multicast_igmp_version.i = getelementptr inbounds %struct.net_bridge_mcast, ptr %brmctx, i32 0, i32 5
  br label %br_multicast_should_handle_mode.exit

sw.bb4.i:                                         ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #7
  %multicast_mld_version.i = getelementptr inbounds %struct.net_bridge_mcast, ptr %brmctx, i32 0, i32 7
  br label %br_multicast_should_handle_mode.exit

br_multicast_should_handle_mode.exit:             ; preds = %sw.bb4.i, %sw.bb.i
  %multicast_mld_version.sink.i = phi ptr [ %multicast_mld_version.i, %sw.bb4.i ], [ %multicast_igmp_version.i, %sw.bb.i ]
  %.sink11.i = phi i8 [ 2, %sw.bb4.i ], [ 3, %sw.bb.i ]
  %12 = ptrtoint ptr %multicast_mld_version.sink.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %multicast_mld_version.sink.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %.sink11.i)
  %cmp6.i = icmp eq i8 %13, %.sink11.i
  br i1 %cmp6.i, label %land.lhs.true14, label %br_multicast_should_handle_mode.exit.if.end19_crit_edge

br_multicast_should_handle_mode.exit.if.end19_crit_edge: ; preds = %br_multicast_should_handle_mode.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

land.lhs.true14:                                  ; preds = %br_multicast_should_handle_mode.exit
  %addr = getelementptr inbounds %struct.net_bridge_mdb_entry, ptr %mdst, i32 0, i32 3
  %14 = ptrtoint ptr %proto to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %proto, align 4
  %16 = zext i16 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.22)
  switch i16 %15, label %land.lhs.true14.if.end19_crit_edge [
    i16 2048, label %br_multicast_is_star_g.exit
    i16 -31011, label %sw.bb1.i
  ]

land.lhs.true14.if.end19_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

sw.bb1.i:                                         ; preds = %land.lhs.true14
  %17 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %addr, align 4
  %arrayidx2.i.i = getelementptr %struct.net_bridge_mdb_entry, ptr %mdst, i32 0, i32 3, i32 0, i32 0, i32 0, i32 0, i32 1
  %19 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx2.i.i, align 4
  %or.i.i = or i32 %20, %18
  %arrayidx4.i.i = getelementptr %struct.net_bridge_mdb_entry, ptr %mdst, i32 0, i32 3, i32 0, i32 0, i32 0, i32 0, i32 2
  %21 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx4.i.i, align 4
  %or5.i.i = or i32 %or.i.i, %22
  %arrayidx7.i.i = getelementptr %struct.net_bridge_mdb_entry, ptr %mdst, i32 0, i32 3, i32 0, i32 0, i32 0, i32 0, i32 3
  %23 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx7.i.i, align 4
  %or8.i.i = or i32 %or5.i.i, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i.i)
  %cmp.i6.i = icmp eq i32 %or8.i.i, 0
  br i1 %cmp.i6.i, label %sw.bb1.i._crit_edge, label %sw.bb1.i.if.end19_crit_edge

sw.bb1.i.if.end19_crit_edge:                      ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

sw.bb1.i._crit_edge:                              ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %27

br_multicast_is_star_g.exit:                      ; preds = %land.lhs.true14
  %25 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.i.i = icmp eq i32 %26, 0
  br i1 %cmp.i.i, label %br_multicast_is_star_g.exit._crit_edge, label %br_multicast_is_star_g.exit.if.end19_crit_edge

br_multicast_is_star_g.exit.if.end19_crit_edge:   ; preds = %br_multicast_is_star_g.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

br_multicast_is_star_g.exit._crit_edge:           ; preds = %br_multicast_is_star_g.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %27

27:                                               ; preds = %br_multicast_is_star_g.exit._crit_edge, %sw.bb1.i._crit_edge
  br label %if.end19

if.end19:                                         ; preds = %27, %br_multicast_is_star_g.exit.if.end19_crit_edge, %sw.bb1.i.if.end19_crit_edge, %land.lhs.true14.if.end19_crit_edge, %br_multicast_should_handle_mode.exit.if.end19_crit_edge, %do.end11.if.end19_crit_edge, %br_multicast_get_first_rport_node.exit.if.end19_crit_edge
  %allow_mode_include.0.off0 = phi i1 [ true, %br_multicast_should_handle_mode.exit.if.end19_crit_edge ], [ true, %br_multicast_get_first_rport_node.exit.if.end19_crit_edge ], [ false, %27 ], [ true, %br_multicast_is_star_g.exit.if.end19_crit_edge ], [ true, %sw.bb1.i.if.end19_crit_edge ], [ true, %do.end11.if.end19_crit_edge ], [ true, %land.lhs.true14.if.end19_crit_edge ]
  %p.0 = phi ptr [ %8, %br_multicast_should_handle_mode.exit.if.end19_crit_edge ], [ null, %br_multicast_get_first_rport_node.exit.if.end19_crit_edge ], [ %8, %27 ], [ %8, %br_multicast_is_star_g.exit.if.end19_crit_edge ], [ %8, %sw.bb1.i.if.end19_crit_edge ], [ %8, %do.end11.if.end19_crit_edge ], [ %8, %land.lhs.true14.if.end19_crit_edge ]
  %tobool20.not178 = icmp eq ptr %p.0, null
  %tobool21.not179 = icmp eq ptr %retval.0.i, null
  %or.cond180 = select i1 %tobool20.not178, i1 %tobool21.not179, i1 false
  br i1 %or.cond180, label %if.end19.out_crit_edge, label %while.body.lr.ph

if.end19.out_crit_edge:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

while.body.lr.ph:                                 ; preds = %if.end19
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %28 = getelementptr inbounds %struct.anon.83, ptr %skb, i32 0, i32 2
  %src_port_isolated.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 7
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %tobool21.not190 = phi i1 [ %tobool21.not179, %while.body.lr.ph ], [ %tobool21.not, %cleanup.while.body_crit_edge ]
  %tobool20.not189 = phi i1 [ %tobool20.not178, %while.body.lr.ph ], [ %tobool20.not, %cleanup.while.body_crit_edge ]
  %prev.0186 = phi ptr [ null, %while.body.lr.ph ], [ %prev.1, %cleanup.while.body_crit_edge ]
  %p.1182 = phi ptr [ %p.0, %while.body.lr.ph ], [ %p.2, %cleanup.while.body_crit_edge ]
  %rp.0181 = phi ptr [ %retval.0.i, %while.body.lr.ph ], [ %rp.2, %cleanup.while.body_crit_edge ]
  br i1 %tobool20.not189, label %while.body.cond.end_crit_edge, label %cond.true

while.body.cond.end_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.true:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %key = getelementptr inbounds %struct.net_bridge_port_group, ptr %p.1182, i32 0, i32 1
  %29 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %key, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %while.body.cond.end_crit_edge
  %cond = phi ptr [ %30, %cond.true ], [ null, %while.body.cond.end_crit_edge ]
  %31 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %protocol.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %32)
  %cmp.i155 = icmp eq i16 %32, -31011
  %add.ptr.i = getelementptr i8, ptr %rp.0181, i32 -216
  %spec.select.i = select i1 %tobool21.not190, ptr null, ptr %add.ptr.i
  %add.ptr9.i = getelementptr i8, ptr %rp.0181, i32 -108
  %spec.select20.i = select i1 %tobool21.not190, ptr null, ptr %add.ptr9.i
  %mctx.0.i = select i1 %cmp.i155, ptr %spec.select.i, ptr %spec.select20.i
  %tobool13.not.i = icmp eq ptr %mctx.0.i, null
  br i1 %tobool13.not.i, label %cond.end.br_multicast_rport_from_node_skb.exit_crit_edge, label %if.then14.i

cond.end.br_multicast_rport_from_node_skb.exit_crit_edge: ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %br_multicast_rport_from_node_skb.exit

if.then14.i:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %mctx.0.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mctx.0.i, align 4
  br label %br_multicast_rport_from_node_skb.exit

br_multicast_rport_from_node_skb.exit:            ; preds = %if.then14.i, %cond.end.br_multicast_rport_from_node_skb.exit_crit_edge
  %retval.0.i157 = phi ptr [ %34, %if.then14.i ], [ null, %cond.end.br_multicast_rport_from_node_skb.exit_crit_edge ]
  %cmp = icmp ugt ptr %cond, %retval.0.i157
  br i1 %cmp, label %if.then25, label %br_multicast_rport_from_node_skb.exit.if.end41_crit_edge

br_multicast_rport_from_node_skb.exit.if.end41_crit_edge: ; preds = %br_multicast_rport_from_node_skb.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

if.then25:                                        ; preds = %br_multicast_rport_from_node_skb.exit
  %flags = getelementptr inbounds %struct.net_bridge_port, ptr %cond, i32 0, i32 4
  %35 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags, align 4
  %and = and i32 %36, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool26.not = icmp eq i32 %and, 0
  br i1 %tobool26.not, label %if.end29, label %if.then27

if.then27:                                        ; preds = %if.then25
  %eth_addr = getelementptr inbounds %struct.net_bridge_port_group, ptr %p.1182, i32 0, i32 2
  %37 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cb.i, align 8
  %39 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %head.i.i.i, align 8
  %41 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %mac_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %42 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %40, i32 %conv.i.i.i
  %h_source.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i.i, i32 0, i32 1
  %vlgrp.i.i.i = getelementptr inbounds %struct.net_bridge_port, ptr %cond, i32 0, i32 5
  %43 = ptrtoint ptr %vlgrp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %vlgrp.i.i.i, align 8
  %call.i.i.i = tail call i32 @rcu_read_lock_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i, label %if.then27.nbp_vlan_group_rcu.exit.i.i_crit_edge

if.then27.nbp_vlan_group_rcu.exit.i.i_crit_edge:  ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #7
  br label %nbp_vlan_group_rcu.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then27
  %call2.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %land.lhs.true.i.i.i.nbp_vlan_group_rcu.exit.i.i_crit_edge, label %land.lhs.true4.i.i.i

land.lhs.true.i.i.i.nbp_vlan_group_rcu.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nbp_vlan_group_rcu.exit.i.i

land.lhs.true4.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b9.i.i.i = load i1, ptr @nbp_vlan_group_rcu.__warned, align 1
  br i1 %.b9.i.i.i, label %land.lhs.true4.i.i.i.nbp_vlan_group_rcu.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true4.i.i.i.nbp_vlan_group_rcu.exit.i.i_crit_edge: ; preds = %land.lhs.true4.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nbp_vlan_group_rcu.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true4.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @nbp_vlan_group_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 1489, ptr noundef nonnull @.str.1) #5
  br label %nbp_vlan_group_rcu.exit.i.i

nbp_vlan_group_rcu.exit.i.i:                      ; preds = %if.then.i.i.i, %land.lhs.true4.i.i.i.nbp_vlan_group_rcu.exit.i.i_crit_edge, %land.lhs.true.i.i.i.nbp_vlan_group_rcu.exit.i.i_crit_edge, %if.then27.nbp_vlan_group_rcu.exit.i.i_crit_edge
  %45 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flags, align 4
  %and.i.i = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %nbp_vlan_group_rcu.exit.i.i.land.lhs.true.i.i_crit_edge

nbp_vlan_group_rcu.exit.i.i.land.lhs.true.i.i_crit_edge: ; preds = %nbp_vlan_group_rcu.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i.i

lor.lhs.false.i.i:                                ; preds = %nbp_vlan_group_rcu.exit.i.i
  %47 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %28, align 8
  %dev.i.i = getelementptr inbounds %struct.net_bridge_port, ptr %cond, i32 0, i32 1
  %49 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %48, %50
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i.delivered_crit_edge, label %lor.lhs.false.i.i.land.lhs.true.i.i_crit_edge

lor.lhs.false.i.i.land.lhs.true.i.i_crit_edge:    ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i.i

lor.lhs.false.i.i.delivered_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %delivered

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i.land.lhs.true.i.i_crit_edge, %nbp_vlan_group_rcu.exit.i.i.land.lhs.true.i.i_crit_edge
  %state.i.i = getelementptr inbounds %struct.net_bridge_port, ptr %cond, i32 0, i32 8
  %51 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %state.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %52)
  %cmp1.i.i = icmp eq i8 %52, 3
  br i1 %cmp1.i.i, label %land.lhs.true3.i.i, label %land.lhs.true.i.i.delivered_crit_edge

land.lhs.true.i.i.delivered_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %delivered

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %call4.i.i = tail call zeroext i1 @br_allowed_egress(ptr noundef %44, ptr noundef %skb) #5
  br i1 %call4.i.i, label %land.lhs.true6.i.i, label %land.lhs.true3.i.i.delivered_crit_edge

land.lhs.true3.i.i.delivered_crit_edge:           ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %delivered

land.lhs.true6.i.i:                               ; preds = %land.lhs.true3.i.i
  %call7.i.i = tail call zeroext i1 @nbp_switchdev_allowed_egress(ptr noundef nonnull %cond, ptr noundef %skb) #5
  br i1 %call7.i.i, label %land.rhs.i.i, label %land.lhs.true6.i.i.delivered_crit_edge

land.lhs.true6.i.i.delivered_crit_edge:           ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %delivered

land.rhs.i.i:                                     ; preds = %land.lhs.true6.i.i
  %53 = ptrtoint ptr %src_port_isolated.i.i.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %bf.load.i.i.i = load i8, ptr %src_port_isolated.i.i.i, align 1
  %54 = and i8 %bf.load.i.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool.not.i18.i.i = icmp eq i8 %54, 0
  br i1 %tobool.not.i18.i.i, label %land.rhs.i.i.if.end.i_crit_edge, label %should_deliver.exit.i

land.rhs.i.i.if.end.i_crit_edge:                  ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

should_deliver.exit.i:                            ; preds = %land.rhs.i.i
  %55 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %flags, align 4
  %57 = and i32 %56, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not.not.i = icmp eq i32 %57, 0
  br i1 %tobool.not.not.i, label %should_deliver.exit.i.if.end.i_crit_edge, label %should_deliver.exit.i.delivered_crit_edge

should_deliver.exit.i.delivered_crit_edge:        ; preds = %should_deliver.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %delivered

should_deliver.exit.i.if.end.i_crit_edge:         ; preds = %should_deliver.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.end.i:                                         ; preds = %should_deliver.exit.i.if.end.i_crit_edge, %land.rhs.i.i.if.end.i_crit_edge
  %58 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %28, align 8
  %dev3.i = getelementptr inbounds %struct.net_bridge_port, ptr %cond, i32 0, i32 1
  %60 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev3.i, align 4
  %cmp.i158 = icmp eq ptr %59, %61
  br i1 %cmp.i158, label %land.lhs.true.i161, label %if.end.i.if.end6.i_crit_edge

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i

land.lhs.true.i161:                               ; preds = %if.end.i
  %62 = ptrtoint ptr %h_source.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %h_source.i, align 4
  %64 = ptrtoint ptr %eth_addr to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %eth_addr, align 4
  %xor.i.i = xor i32 %65, %63
  %add.ptr.i.i = getelementptr i8, ptr %h_source.i, i32 4
  %66 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr %struct.net_bridge_port_group, ptr %p.1182, i32 0, i32 2, i32 4
  %68 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i = xor i16 %69, %67
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i159 = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i159)
  %cmp.i.i160 = icmp eq i32 %or.i.i159, 0
  br i1 %cmp.i.i160, label %land.lhs.true.i161.delivered_crit_edge, label %land.lhs.true.i161.if.end6.i_crit_edge

land.lhs.true.i161.if.end6.i_crit_edge:           ; preds = %land.lhs.true.i161
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i

land.lhs.true.i161.delivered_crit_edge:           ; preds = %land.lhs.true.i161
  call void @__sanitizer_cov_trace_pc() #7
  br label %delivered

if.end6.i:                                        ; preds = %land.lhs.true.i161.if.end6.i_crit_edge, %if.end.i.if.end6.i_crit_edge
  %call7.i = tail call ptr @skb_copy(ptr noundef %skb, i32 noundef 2592) #5
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %if.then9.i, label %if.end10.i

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  %tx_dropped.i = getelementptr inbounds %struct.net_device, ptr %38, i32 0, i32 36, i32 7
  %70 = ptrtoint ptr %tx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %tx_dropped.i, align 4
  %inc.i = add i32 %71, 1
  store i32 %inc.i, ptr %tx_dropped.i, align 4
  br label %delivered

if.end10.i:                                       ; preds = %if.end6.i
  %72 = ptrtoint ptr %eth_addr to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %eth_addr, align 2
  %add.ptr1.i29.i = getelementptr %struct.net_bridge_port_group, ptr %p.1182, i32 0, i32 2, i32 2
  %74 = ptrtoint ptr %add.ptr1.i29.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %add.ptr1.i29.i, align 2
  %and9.i.i = and i16 %75, %73
  %add.ptr3.i.i = getelementptr %struct.net_bridge_port_group, ptr %p.1182, i32 0, i32 2, i32 4
  %76 = ptrtoint ptr %add.ptr3.i.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %add.ptr3.i.i, align 2
  %and510.i.i = and i16 %and9.i.i, %77
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i.i)
  %cmp.i30.i = icmp eq i16 %and510.i.i, -1
  br i1 %cmp.i30.i, label %if.end10.i.if.end15.i_crit_edge, label %if.then12.i

if.end10.i.if.end15.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.i

if.then12.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  %head.i.i31.i = getelementptr inbounds %struct.sk_buff, ptr %call7.i, i32 0, i32 18
  %78 = ptrtoint ptr %head.i.i31.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %head.i.i31.i, align 8
  %mac_header.i.i32.i = getelementptr inbounds %struct.sk_buff, ptr %call7.i, i32 0, i32 15, i32 0, i32 21
  %80 = ptrtoint ptr %mac_header.i.i32.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %mac_header.i.i32.i, align 2
  %conv.i.i33.i = zext i16 %81 to i32
  %add.ptr.i.i34.i = getelementptr i8, ptr %79, i32 %conv.i.i33.i
  %82 = call ptr @memcpy(ptr %add.ptr.i.i34.i, ptr %eth_addr, i32 6)
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then12.i, %if.end10.i.if.end15.i_crit_edge
  tail call fastcc void @__br_forward(ptr noundef nonnull %cond, ptr noundef nonnull %call7.i, i1 noundef zeroext %local_orig) #5
  br label %delivered

if.end29:                                         ; preds = %if.then25
  br i1 %allow_mode_include.0.off0, label %if.end29.lor.lhs.false_crit_edge, label %land.lhs.true31

if.end29.lor.lhs.false_crit_edge:                 ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false

land.lhs.true31:                                  ; preds = %if.end29
  %filter_mode = getelementptr inbounds %struct.net_bridge_port_group, ptr %p.1182, i32 0, i32 4
  %83 = ptrtoint ptr %filter_mode to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %filter_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %84)
  %cmp32 = icmp eq i8 %84, 1
  br i1 %cmp32, label %land.lhs.true31.delivered_crit_edge, label %land.lhs.true31.lor.lhs.false_crit_edge

land.lhs.true31.lor.lhs.false_crit_edge:          ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false

land.lhs.true31.delivered_crit_edge:              ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #7
  br label %delivered

lor.lhs.false:                                    ; preds = %land.lhs.true31.lor.lhs.false_crit_edge, %if.end29.lor.lhs.false_crit_edge
  %flags34 = getelementptr inbounds %struct.net_bridge_port_group, ptr %p.1182, i32 0, i32 3
  %85 = ptrtoint ptr %flags34 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %flags34, align 2
  %87 = and i8 %86, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool37.not = icmp eq i8 %87, 0
  br i1 %tobool37.not, label %lor.lhs.false.if.end41_crit_edge, label %lor.lhs.false.delivered_crit_edge

lor.lhs.false.delivered_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %delivered

lor.lhs.false.if.end41_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

if.end41:                                         ; preds = %lor.lhs.false.if.end41_crit_edge, %br_multicast_rport_from_node_skb.exit.if.end41_crit_edge
  %port.0 = phi ptr [ %cond, %lor.lhs.false.if.end41_crit_edge ], [ %retval.0.i157, %br_multicast_rport_from_node_skb.exit.if.end41_crit_edge ]
  %call43 = tail call fastcc ptr @maybe_deliver(ptr noundef %prev.0186, ptr noundef %port.0, ptr noundef %skb, i1 noundef zeroext %local_orig)
  %cmp.i162 = icmp ugt ptr %call43, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i162, label %if.end41.out_crit_edge, label %if.end41.delivered_crit_edge

if.end41.delivered_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %delivered

if.end41.out_crit_edge:                           ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

delivered:                                        ; preds = %if.end41.delivered_crit_edge, %lor.lhs.false.delivered_crit_edge, %land.lhs.true31.delivered_crit_edge, %if.end15.i, %if.then9.i, %land.lhs.true.i161.delivered_crit_edge, %should_deliver.exit.i.delivered_crit_edge, %land.lhs.true6.i.i.delivered_crit_edge, %land.lhs.true3.i.i.delivered_crit_edge, %land.lhs.true.i.i.delivered_crit_edge, %lor.lhs.false.i.i.delivered_crit_edge
  %port.1 = phi ptr [ %cond, %lor.lhs.false.delivered_crit_edge ], [ %port.0, %if.end41.delivered_crit_edge ], [ %cond, %land.lhs.true31.delivered_crit_edge ], [ %cond, %lor.lhs.false.i.i.delivered_crit_edge ], [ %cond, %land.lhs.true.i.i.delivered_crit_edge ], [ %cond, %land.lhs.true3.i.i.delivered_crit_edge ], [ %cond, %land.lhs.true6.i.i.delivered_crit_edge ], [ %cond, %should_deliver.exit.i.delivered_crit_edge ], [ %cond, %land.lhs.true.i161.delivered_crit_edge ], [ %cond, %if.then9.i ], [ %cond, %if.end15.i ]
  %prev.1 = phi ptr [ %prev.0186, %lor.lhs.false.delivered_crit_edge ], [ %call43, %if.end41.delivered_crit_edge ], [ %prev.0186, %land.lhs.true31.delivered_crit_edge ], [ %prev.0186, %lor.lhs.false.i.i.delivered_crit_edge ], [ %prev.0186, %land.lhs.true.i.i.delivered_crit_edge ], [ %prev.0186, %land.lhs.true3.i.i.delivered_crit_edge ], [ %prev.0186, %land.lhs.true6.i.i.delivered_crit_edge ], [ %prev.0186, %should_deliver.exit.i.delivered_crit_edge ], [ %prev.0186, %land.lhs.true.i161.delivered_crit_edge ], [ %prev.0186, %if.then9.i ], [ %prev.0186, %if.end15.i ]
  %cmp47.not = icmp ult ptr %cond, %port.1
  br i1 %cmp47.not, label %delivered.if.end67_crit_edge, label %if.then49

delivered.if.end67_crit_edge:                     ; preds = %delivered
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end67

if.then49:                                        ; preds = %delivered
  %88 = ptrtoint ptr %p.1182 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile ptr, ptr %p.1182, align 4
  %call55 = tail call i32 @rcu_read_lock_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %land.lhs.true57, label %if.then49.if.end67_crit_edge

if.then49.if.end67_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end67

land.lhs.true57:                                  ; preds = %if.then49
  %call58 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true57.if.end67_crit_edge, label %land.lhs.true60

land.lhs.true57.if.end67_crit_edge:               ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end67

land.lhs.true60:                                  ; preds = %land.lhs.true57
  %.b145148 = load i1, ptr @br_multicast_flood.__warned.3, align 1
  br i1 %.b145148, label %land.lhs.true60.if.end67_crit_edge, label %if.then62

land.lhs.true60.if.end67_crit_edge:               ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end67

if.then62:                                        ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @br_multicast_flood.__warned.3, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 325, ptr noundef nonnull @.str.1) #5
  br label %if.end67

if.end67:                                         ; preds = %if.then62, %land.lhs.true60.if.end67_crit_edge, %land.lhs.true57.if.end67_crit_edge, %if.then49.if.end67_crit_edge, %delivered.if.end67_crit_edge
  %p.2 = phi ptr [ %p.1182, %delivered.if.end67_crit_edge ], [ %89, %if.then62 ], [ %89, %land.lhs.true60.if.end67_crit_edge ], [ %89, %land.lhs.true57.if.end67_crit_edge ], [ %89, %if.then49.if.end67_crit_edge ]
  %cmp68.not = icmp ult ptr %retval.0.i157, %port.1
  br i1 %cmp68.not, label %if.end67.cleanup_crit_edge, label %if.then70

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then70:                                        ; preds = %if.end67
  %90 = ptrtoint ptr %rp.0181 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile ptr, ptr %rp.0181, align 4
  %call77 = tail call i32 @rcu_read_lock_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %land.lhs.true79, label %if.then70.cleanup_crit_edge

if.then70.cleanup_crit_edge:                      ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true79:                                  ; preds = %if.then70
  %call80 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %land.lhs.true79.cleanup_crit_edge, label %land.lhs.true82

land.lhs.true79.cleanup_crit_edge:                ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true82:                                  ; preds = %land.lhs.true79
  %.b146147 = load i1, ptr @br_multicast_flood.__warned.4, align 1
  br i1 %.b146147, label %land.lhs.true82.cleanup_crit_edge, label %if.then84

land.lhs.true82.cleanup_crit_edge:                ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then84:                                        ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @br_multicast_flood.__warned.4, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 327, ptr noundef nonnull @.str.1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then84, %land.lhs.true82.cleanup_crit_edge, %land.lhs.true79.cleanup_crit_edge, %if.then70.cleanup_crit_edge, %if.end67.cleanup_crit_edge
  %rp.2 = phi ptr [ %rp.0181, %if.end67.cleanup_crit_edge ], [ %91, %if.then84 ], [ %91, %land.lhs.true82.cleanup_crit_edge ], [ %91, %land.lhs.true79.cleanup_crit_edge ], [ %91, %if.then70.cleanup_crit_edge ]
  %tobool20.not = icmp eq ptr %p.2, null
  %tobool21.not = icmp eq ptr %rp.2, null
  %or.cond = select i1 %tobool20.not, i1 %tobool21.not, i1 false
  br i1 %or.cond, label %while.end, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end:                                        ; preds = %cleanup
  %tobool92.not = icmp eq ptr %prev.1, null
  br i1 %tobool92.not, label %while.end.out_crit_edge, label %if.end94

while.end.out_crit_edge:                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end94:                                         ; preds = %while.end
  br i1 %local_rcv, label %if.then96, label %if.else99

if.then96:                                        ; preds = %if.end94
  %cb.i163 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %92 = ptrtoint ptr %cb.i163 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %cb.i163, align 8
  %call.i164 = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #5
  %tobool.not.i165 = icmp eq ptr %call.i164, null
  br i1 %tobool.not.i165, label %if.then.i168, label %if.end.i169

if.then.i168:                                     ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #7
  %tx_dropped.i166 = getelementptr inbounds %struct.net_device, ptr %93, i32 0, i32 36, i32 7
  %94 = ptrtoint ptr %tx_dropped.i166 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %tx_dropped.i166, align 4
  %inc.i167 = add i32 %95, 1
  store i32 %inc.i167, ptr %tx_dropped.i166, align 4
  br label %cleanup105

if.end.i169:                                      ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @__br_forward(ptr noundef nonnull %prev.1, ptr noundef nonnull %call.i164, i1 noundef zeroext %local_orig) #5
  br label %cleanup105

if.else99:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @__br_forward(ptr noundef nonnull %prev.1, ptr noundef %skb, i1 noundef zeroext %local_orig)
  br label %cleanup105

out:                                              ; preds = %while.end.out_crit_edge, %if.end41.out_crit_edge, %if.end19.out_crit_edge
  br i1 %local_rcv, label %out.cleanup105_crit_edge, label %if.then103

out.cleanup105_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup105

if.then103:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #5
  br label %cleanup105

cleanup105:                                       ; preds = %if.then103, %out.cleanup105_crit_edge, %if.else99, %if.end.i169, %if.then.i168
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nf_hook(i32 noundef %hook, ptr noundef %net, ptr noundef %sk, ptr noundef %skb, ptr noundef %indev, ptr noundef %outdev, ptr noundef %okfn) unnamed_addr #3 align 64 {
entry:
  %state = alloca %struct.nf_hook_state, align 4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !52) #5
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !67
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 696, ptr noundef nonnull @.str.14) #5
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %arrayidx108 = getelementptr %struct.net, ptr %net, i32 0, i32 39, i32 6, i32 %hook
  %4 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %arrayidx108, align 4
  %call110 = tail call i32 @rcu_read_lock_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %land.lhs.true112, label %rcu_read_lock.exit.sw.epilog_crit_edge

rcu_read_lock.exit.sw.epilog_crit_edge:           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

land.lhs.true112:                                 ; preds = %rcu_read_lock.exit
  %call113 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %land.lhs.true112.sw.epilog_crit_edge, label %land.lhs.true115

land.lhs.true112.sw.epilog_crit_edge:             ; preds = %land.lhs.true112
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

land.lhs.true115:                                 ; preds = %land.lhs.true112
  %.b1 = load i1, ptr @nf_hook.__warned.10, align 1
  br i1 %.b1, label %land.lhs.true115.sw.epilog_crit_edge, label %if.then117

land.lhs.true115.sw.epilog_crit_edge:             ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then117:                                       ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @nf_hook.__warned.10, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 243, ptr noundef nonnull @.str.1) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then117, %land.lhs.true115.sw.epilog_crit_edge, %land.lhs.true112.sw.epilog_crit_edge, %rcu_read_lock.exit.sw.epilog_crit_edge
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
  %conv.i = trunc i32 %hook to i8
  store i8 %conv.i, ptr %state, align 4
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
  store ptr %okfn, ptr %okfn5.i, align 4
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
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 724, ptr noundef nonnull @.str.15) #5
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i8, %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, %if.end194.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #5, !srcloc !68
  %13 = call i32 @llvm.read_register.i32(metadata !52) #5
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
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_hook_slow(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

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
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

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
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @br_allowed_egress(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nbp_switchdev_allowed_egress(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nbp_switchdev_frame_mark_tx_fwd_offload(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @br_handle_vlan(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__skb_warn_lro_forwarding(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netpoll_send_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nbp_switchdev_frame_mark_tx_fwd_to_hwdom(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_multicast_count(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !10, !12, !13, !15, !17, !19, !21, !23, !25, !26, !28, !30, !32, !34, !36, !38, !40, !41, !42, !44, !45, !47, !48, !50}
!llvm.named.register.sp = !{!52}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @__ksymtab_br_dev_queue_push_xmit, !1, !"__ksymtab_br_dev_queue_push_xmit", i1 false, i1 false}
!1 = !{!"../net/bridge/br_forward.c", i32 61, i32 1}
!2 = !{ptr @__ksymtab_br_forward_finish, !3, !"__ksymtab_br_forward_finish", i1 false, i1 false}
!3 = !{!"../net/bridge/br_forward.c", i32 71, i32 1}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../net/bridge/br_forward.c", i32 154, i32 17}
!6 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @__ksymtab_br_forward, !9, !"__ksymtab_br_forward", i1 false, i1 false}
!9 = !{!"../net/bridge/br_forward.c", i32 172, i32 1}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../net/bridge/br_forward.c", i32 205, i32 2}
!12 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!13 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!14 = !{!"../net/bridge/br_forward.c", i32 290, i32 7}
!15 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!16 = !{!"../net/bridge/br_forward.c", i32 325, i32 8}
!17 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!18 = !{!"../net/bridge/br_forward.c", i32 327, i32 9}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../include/linux/if_vlan.h", i32 598, i32 8}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../include/linux/netfilter.h", i32 229, i32 15}
!25 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!26 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!27 = !{!"../include/linux/netfilter.h", i32 232, i32 15}
!28 = distinct !{null, !29, !"__already_done", i1 false, i1 false}
!29 = !{!"../include/linux/netfilter.h", i32 236, i32 7}
!30 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!31 = !{!"../include/linux/netfilter.h", i32 238, i32 15}
!32 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!33 = !{!"../include/linux/netfilter.h", i32 243, i32 15}
!34 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!35 = !{!"../include/linux/netfilter.h", i32 248, i32 15}
!36 = distinct !{null, !37, !"__already_done", i1 false, i1 false}
!37 = !{!"../include/linux/netfilter.h", i32 252, i32 3}
!38 = distinct !{null, !39, !"__warned", i1 false, i1 false}
!39 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!40 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!42 = distinct !{null, !43, !"__warned", i1 false, i1 false}
!43 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!44 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!45 = distinct !{null, !46, !"__warned", i1 false, i1 false}
!46 = !{!"../net/bridge/br_private.h", i32 1489, i32 9}
!47 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!48 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!49 = !{!"../net/bridge/br_private.h", i32 988, i32 10}
!50 = distinct !{null, !51, !"__warned", i1 false, i1 false}
!51 = !{!"../net/bridge/br_private.h", i32 990, i32 9}
!52 = !{!"sp"}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!62 = !{!"branch_weights", i32 1, i32 2000}
!63 = !{!"auto-init"}
!64 = !{!"branch_weights", i32 2000, i32 1}
!65 = !{ptr @br_dev_queue_push_xmit, ptr @br_forward_finish}
!66 = !{i64 993909}
!67 = !{i64 2149923368}
!68 = !{i64 2149923634}
