; ModuleID = '/llk/IR_all_yes/net/netfilter/nf_nat_masquerade.c_pt.bc'
source_filename = "../net/netfilter/nf_nat_masquerade.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+nf_nat_masquerade_ipv4\22, \22a\22\09"
module asm "\09.weak\09__crc_nf_nat_masquerade_ipv4\09\09\09\09"
module asm "\09.long\09__crc_nf_nat_masquerade_ipv4\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nf_nat_masquerade_ipv4:\09\09\09\09\09"
module asm "\09.asciz \09\22nf_nat_masquerade_ipv4\22\09\09\09\09\09"
module asm "__kstrtabns_nf_nat_masquerade_ipv4:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nf_nat_masquerade_ipv6\22, \22a\22\09"
module asm "\09.weak\09__crc_nf_nat_masquerade_ipv6\09\09\09\09"
module asm "\09.long\09__crc_nf_nat_masquerade_ipv6\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nf_nat_masquerade_ipv6:\09\09\09\09\09"
module asm "\09.asciz \09\22nf_nat_masquerade_ipv6\22\09\09\09\09\09"
module asm "__kstrtabns_nf_nat_masquerade_ipv6:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nf_nat_masquerade_inet_register_notifiers\22, \22a\22\09"
module asm "\09.weak\09__crc_nf_nat_masquerade_inet_register_notifiers\09\09\09\09"
module asm "\09.long\09__crc_nf_nat_masquerade_inet_register_notifiers\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nf_nat_masquerade_inet_register_notifiers:\09\09\09\09\09"
module asm "\09.asciz \09\22nf_nat_masquerade_inet_register_notifiers\22\09\09\09\09\09"
module asm "__kstrtabns_nf_nat_masquerade_inet_register_notifiers:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nf_nat_masquerade_inet_unregister_notifiers\22, \22a\22\09"
module asm "\09.weak\09__crc_nf_nat_masquerade_inet_unregister_notifiers\09\09\09\09"
module asm "\09.long\09__crc_nf_nat_masquerade_inet_unregister_notifiers\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nf_nat_masquerade_inet_unregister_notifiers:\09\09\09\09\09"
module asm "\09.asciz \09\22nf_nat_masquerade_inet_unregister_notifiers\22\09\09\09\09\09"
module asm "__kstrtabns_nf_nat_masquerade_inet_unregister_notifiers:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.lock_class_key = type { %union.anon.7 }
%union.anon.7 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nf_nat_range2 = type { i32, %union.nf_inet_addr, %union.nf_inet_addr, %union.nf_conntrack_man_proto, %union.nf_conntrack_man_proto, %union.nf_conntrack_man_proto }
%union.nf_inet_addr = type { [4 x i32] }
%union.nf_conntrack_man_proto = type { i16 }
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
%struct.nf_conn = type { %struct.nf_conntrack, %struct.spinlock, i32, %struct.nf_conntrack_zone, [2 x %struct.nf_conntrack_tuple_hash], i32, i16, %struct.possible_net_t, %struct.hlist_node, %struct.anon.213, ptr, i32, i32, ptr, %union.nf_conntrack_proto }
%struct.nf_conntrack = type { %struct.refcount_struct }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.nf_conntrack_zone = type { i16, i8, i8 }
%struct.nf_conntrack_tuple_hash = type { %struct.hlist_nulls_node, %struct.nf_conntrack_tuple }
%struct.hlist_nulls_node = type { ptr, ptr }
%struct.nf_conntrack_tuple = type { %struct.nf_conntrack_man, %struct.anon.205 }
%struct.nf_conntrack_man = type { %union.nf_inet_addr, %union.nf_conntrack_man_proto, i16 }
%struct.anon.205 = type { %union.nf_inet_addr, %union.anon.206, i8, i8 }
%union.anon.206 = type { i16 }
%struct.possible_net_t = type { ptr }
%struct.anon.213 = type {}
%union.nf_conntrack_proto = type { %struct.nf_ct_dccp, [48 x i8] }
%struct.nf_ct_dccp = type { [2 x i8], i8, i8, i8, i64 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.rtable = type { %struct.dst_entry, i32, i32, i16, i8, i8, i32, i8, %union.anon.102, i32, %struct.list_head, ptr }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.callback_head = type { ptr, ptr }
%union.anon.102 = type { %struct.in6_addr }
%struct.in6_addr = type { %union.anon.28 }
%union.anon.28 = type { [4 x i32] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.177, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.177 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.nf_conn_nat = type { %union.nf_conntrack_nat_help, i32 }
%union.nf_conntrack_nat_help = type { %struct.nf_nat_pptp }
%struct.nf_nat_pptp = type { i16, i16 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
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
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
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
%struct.masq_dev_work = type { %struct.work_struct, ptr, ptr, %union.nf_inet_addr, i32, ptr }
%struct.in_ifaddr = type { %struct.hlist_node, ptr, ptr, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i32, [16 x i8], i32, i32, i32, i32 }
%struct.in_device = type { ptr, ptr, %struct.refcount_struct, i32, ptr, ptr, ptr, i32, %struct.spinlock, ptr, i32, i32, i32, i32, i32, i8, i8, i32, %struct.timer_list, %struct.timer_list, ptr, %struct.ipv4_devconf, %struct.callback_head }
%struct.ipv4_devconf = type { ptr, [33 x i32], [2 x i32] }
%struct.inet6_ifaddr = type { %struct.in6_addr, i32, i32, i32, i32, %struct.refcount_struct, %struct.spinlock, i32, i32, i8, i8, i16, i64, i32, i32, %struct.delayed_work, ptr, ptr, %struct.hlist_node, %struct.list_head, %struct.list_head, ptr, i32, i8, %struct.callback_head, %struct.in6_addr }

@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"net/netfilter/nf_nat_masquerade.c\00", [62 x i8] zeroinitializer }, align 32
@nf_nat_masquerade_ipv4._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 56, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016%s ate my IP address\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nf_nat_masquerade_ipv4\00", [41 x i8] zeroinitializer }, align 32
@nf_nat_masquerade_ipv4._entry_ptr = internal global ptr @nf_nat_masquerade_ipv4._entry, section ".printk_index", align 4
@__kstrtab_nf_nat_masquerade_ipv4 = external dso_local constant [0 x i8], align 1
@__kstrtabns_nf_nat_masquerade_ipv4 = external dso_local constant [0 x i8], align 1
@__ksymtab_nf_nat_masquerade_ipv4 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nf_nat_masquerade_ipv4 to i32), ptr @__kstrtab_nf_nat_masquerade_ipv4, ptr @__kstrtabns_nf_nat_masquerade_ipv4 }, section "___ksymtab_gpl+nf_nat_masquerade_ipv4", align 4
@__kstrtab_nf_nat_masquerade_ipv6 = external dso_local constant [0 x i8], align 1
@__kstrtabns_nf_nat_masquerade_ipv6 = external dso_local constant [0 x i8], align 1
@__ksymtab_nf_nat_masquerade_ipv6 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nf_nat_masquerade_ipv6 to i32), ptr @__kstrtab_nf_nat_masquerade_ipv6, ptr @__kstrtabns_nf_nat_masquerade_ipv6 }, section "___ksymtab_gpl+nf_nat_masquerade_ipv6", align 4
@masq_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @masq_mutex, i64 52), ptr getelementptr (i8, ptr @masq_mutex, i64 52) }, ptr @masq_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@nf_nat_masquerade_inet_register_notifiers.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@masq_refcnt = internal unnamed_addr global i32 0, section ".data..read_mostly", align 4
@masq_dev_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @masq_device_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@masq_inet_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @masq_inet_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@__kstrtab_nf_nat_masquerade_inet_register_notifiers = external dso_local constant [0 x i8], align 1
@__kstrtabns_nf_nat_masquerade_inet_register_notifiers = external dso_local constant [0 x i8], align 1
@__ksymtab_nf_nat_masquerade_inet_register_notifiers = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nf_nat_masquerade_inet_register_notifiers to i32), ptr @__kstrtab_nf_nat_masquerade_inet_register_notifiers, ptr @__kstrtabns_nf_nat_masquerade_inet_register_notifiers }, section "___ksymtab_gpl+nf_nat_masquerade_inet_register_notifiers", align 4
@masq_inet6_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @masq_inet6_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@__kstrtab_nf_nat_masquerade_inet_unregister_notifiers = external dso_local constant [0 x i8], align 1
@__kstrtabns_nf_nat_masquerade_inet_unregister_notifiers = external dso_local constant [0 x i8], align 1
@__ksymtab_nf_nat_masquerade_inet_unregister_notifiers = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nf_nat_masquerade_inet_unregister_notifiers to i32), ptr @__kstrtab_nf_nat_masquerade_inet_unregister_notifiers, ptr @__kstrtabns_nf_nat_masquerade_inet_unregister_notifiers }, section "___ksymtab_gpl+nf_nat_masquerade_inet_unregister_notifiers", align 4
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"masq_mutex.wait_lock\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"masq_mutex\00", [21 x i8] zeroinitializer }, align 32
@masq_worker_count = internal global %struct.atomic_t zeroinitializer, section ".data..read_mostly", align 4
@nf_nat_masq_schedule.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"(work_completion)(&w->work)\00", [36 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.7 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 39, i32 2 }
@___asan_gen_.11 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 56, i32 3 }
@___asan_gen_.20 = private unnamed_addr constant [11 x i8] c"masq_mutex\00", align 1
@___asan_gen_.23 = private unnamed_addr constant [18 x i8] c"masq_dev_notifier\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 211, i32 30 }
@___asan_gen_.26 = private unnamed_addr constant [19 x i8] c"masq_inet_notifier\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 215, i32 30 }
@___asan_gen_.29 = private unnamed_addr constant [20 x i8] c"masq_inet6_notifier\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 297, i32 30 }
@___asan_gen_.33 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 1011, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 23, i32 8 }
@___asan_gen_.41 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.45 = private constant [37 x i8] c"../net/netfilter/nf_nat_masquerade.c\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 120, i32 3 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__ksymtab_nf_nat_masquerade_inet_register_notifiers, ptr @__ksymtab_nf_nat_masquerade_inet_unregister_notifiers, ptr @__ksymtab_nf_nat_masquerade_ipv4, ptr @__ksymtab_nf_nat_masquerade_ipv6, ptr @nf_nat_masquerade_ipv4._entry, ptr @nf_nat_masquerade_ipv4._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @masq_mutex, ptr @masq_dev_notifier, ptr @masq_inet_notifier, ptr @masq_inet6_notifier, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @nf_nat_masq_schedule.__key, ptr @.str.6], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nf_nat_masquerade_ipv4._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @masq_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @masq_dev_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @masq_inet_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @masq_inet6_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nf_nat_masq_schedule.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nf_nat_masquerade_ipv4(ptr nocapture noundef readonly %skb, i32 noundef %hooknum, ptr nocapture noundef readonly %range, ptr noundef %out) #0 align 64 {
entry:
  %newrange = alloca %struct.nf_nat_range2, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %newrange) #7
  %0 = call ptr @memset(ptr %newrange, i32 255, i32 44)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %hooknum)
  %cmp.not = icmp eq i32 %hooknum, 4
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !45

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 39, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %1 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %_nfct.i.i, align 8
  %and1.i = and i32 %2, -8
  %3 = inttoptr i32 %and1.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool20.not = icmp eq i32 %and1.i, 0
  br i1 %tobool20.not, label %if.end.do.end41_crit_edge, label %land.rhs

if.end.do.end41_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end41

land.rhs:                                         ; preds = %if.end
  %and.i = and i32 %2, 7
  %4 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i, label %land.rhs.do.end41_crit_edge [
    i32 2, label %land.rhs.if.end47_crit_edge
    i32 1, label %land.rhs.if.end47_crit_edge101
    i32 4, label %land.rhs.if.end47_crit_edge102
  ]

land.rhs.if.end47_crit_edge102:                   ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

land.rhs.if.end47_crit_edge101:                   ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

land.rhs.if.end47_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

land.rhs.do.end41_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end41

do.end41:                                         ; preds = %land.rhs.do.end41_crit_edge, %if.end.do.end41_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 44, i32 noundef 9, ptr noundef null) #7
  br label %if.end47

if.end47:                                         ; preds = %do.end41, %land.rhs.if.end47_crit_edge, %land.rhs.if.end47_crit_edge101, %land.rhs.if.end47_crit_edge102
  %tuple = getelementptr inbounds %struct.nf_conn, ptr %3, i32 0, i32 4, i32 0, i32 1
  %5 = ptrtoint ptr %tuple to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tuple, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp55 = icmp eq i32 %6, 0
  br i1 %cmp55, label %if.end47.cleanup_crit_edge, label %if.end57

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end57:                                         ; preds = %if.end47
  %7 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 8
  %and.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end57.skb_rtable.exit_crit_edge, label %land.lhs.true.i.i

if.end57.skb_rtable.exit_crit_edge:               ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_rtable.exit

land.lhs.true.i.i:                                ; preds = %if.end57
  %call.i.i = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.skb_rtable.exit_crit_edge

land.lhs.true.i.i.skb_rtable.exit_crit_edge:      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_rtable.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.skb_rtable.exit_crit_edge, !prof !46

land.rhs.i.i.skb_rtable.exit_crit_edge:           ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_rtable.exit

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #7
  br label %skb_rtable.exit

skb_rtable.exit:                                  ; preds = %do.end.i.i, %land.rhs.i.i.skb_rtable.exit_crit_edge, %land.lhs.true.i.i.skb_rtable.exit_crit_edge, %if.end57.skb_rtable.exit_crit_edge
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %7, align 8
  %and25.i.i = and i32 %11, -2
  %12 = inttoptr i32 %and25.i.i to ptr
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %13 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %15 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %16 to i32
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 %conv.i.i
  %daddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 9
  %rt_gw_family.i = getelementptr inbounds %struct.rtable, ptr %12, i32 0, i32 7
  %17 = ptrtoint ptr %rt_gw_family.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %rt_gw_family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %18)
  %cmp.i = icmp eq i8 %18, 2
  %19 = getelementptr inbounds %struct.rtable, ptr %12, i32 0, i32 8
  %spec.select = select i1 %cmp.i, ptr %19, ptr %daddr
  %20 = ptrtoint ptr %spec.select to i32
  call void @__asan_load4_noabort(i32 %20)
  %retval.0.i = load i32, ptr %spec.select, align 4
  %call61 = tail call i32 @inet_select_addr(ptr noundef %out, i32 noundef %retval.0.i, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %do.end66, label %if.end69

do.end66:                                         ; preds = %skb_rtable.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %out) #10
  br label %cleanup

if.end69:                                         ; preds = %skb_rtable.exit
  %call70 = tail call ptr @nf_ct_nat_ext_add(ptr noundef %3) #7
  %tobool71.not = icmp eq ptr %call70, null
  br i1 %tobool71.not, label %if.end69.if.end73_crit_edge, label %if.then72

if.end69.if.end73_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73

if.then72:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  %ifindex = getelementptr inbounds %struct.net_device, ptr %out, i32 0, i32 17
  %21 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ifindex, align 4
  %masq_index = getelementptr inbounds %struct.nf_conn_nat, ptr %call70, i32 0, i32 1
  %23 = ptrtoint ptr %masq_index to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %masq_index, align 4
  br label %if.end73

if.end73:                                         ; preds = %if.then72, %if.end69.if.end73_crit_edge
  %min_addr = getelementptr inbounds %struct.nf_nat_range2, ptr %newrange, i32 0, i32 1
  %max_addr = getelementptr inbounds %struct.nf_nat_range2, ptr %newrange, i32 0, i32 2
  %24 = getelementptr inbounds %struct.nf_nat_range2, ptr %newrange, i32 0, i32 1, i32 0, i32 1
  %25 = call ptr @memset(ptr %24, i32 0, i32 28)
  %26 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %range, align 4
  %or = or i32 %27, 1
  %28 = ptrtoint ptr %newrange to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or, ptr %newrange, align 4
  %29 = ptrtoint ptr %min_addr to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call61, ptr %min_addr, align 4
  %30 = ptrtoint ptr %max_addr to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call61, ptr %max_addr, align 4
  %min_proto = getelementptr inbounds %struct.nf_nat_range2, ptr %newrange, i32 0, i32 3
  %min_proto77 = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 3
  %31 = ptrtoint ptr %min_proto77 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %min_proto77, align 4
  %33 = ptrtoint ptr %min_proto to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %min_proto, align 4
  %max_proto = getelementptr inbounds %struct.nf_nat_range2, ptr %newrange, i32 0, i32 4
  %max_proto78 = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 4
  %34 = ptrtoint ptr %max_proto78 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %max_proto78, align 2
  %36 = ptrtoint ptr %max_proto to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %max_proto, align 2
  %call79 = call i32 @nf_nat_setup_info(ptr noundef %3, ptr noundef nonnull %newrange, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end73, %do.end66, %if.end47.cleanup_crit_edge
  %retval.0 = phi i32 [ %call79, %if.end73 ], [ 0, %do.end66 ], [ 1, %if.end47.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %newrange) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_select_addr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nf_ct_nat_ext_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_nat_setup_info(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nf_nat_masquerade_ipv6(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %range, ptr noundef %out) #0 align 64 {
entry:
  %src = alloca %struct.in6_addr, align 4
  %newrange = alloca %struct.nf_nat_range2, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %src) #7
  %0 = call ptr @memset(ptr %src, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %newrange) #7
  %1 = getelementptr inbounds i8, ptr %newrange, i32 40
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !47
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %3 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %_nfct.i.i, align 8
  %and1.i = and i32 %4, -8
  %5 = inttoptr i32 %and1.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %land.rhs

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.rhs:                                         ; preds = %entry
  %and.i = and i32 %4, 7
  %6 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %and.i, label %land.rhs.do.end_crit_edge [
    i32 2, label %land.rhs.if.end_crit_edge
    i32 1, label %land.rhs.if.end_crit_edge51
    i32 4, label %land.rhs.if.end_crit_edge52
  ]

land.rhs.if.end_crit_edge52:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.rhs.if.end_crit_edge51:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.rhs.do.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %land.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 249, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %land.rhs.if.end_crit_edge51, %land.rhs.if.end_crit_edge52
  %ct_net.i = getelementptr inbounds %struct.nf_conn, ptr %5, i32 0, i32 7
  %7 = ptrtoint ptr %ct_net.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ct_net.i, align 8
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %9 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %11 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %12 to i32
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 %conv.i.i
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 6
  %call.i = call i32 @ipv6_dev_get_saddr(ptr noundef %8, ptr noundef %out, ptr noundef %daddr, i32 noundef 0, ptr noundef nonnull %src) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp26 = icmp slt i32 %call.i, 0
  br i1 %cmp26, label %if.end.cleanup_crit_edge, label %if.end28

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end28:                                         ; preds = %if.end
  %call29 = call ptr @nf_ct_nat_ext_add(ptr noundef %5) #7
  %tobool30.not = icmp eq ptr %call29, null
  br i1 %tobool30.not, label %if.end28.if.end32_crit_edge, label %if.then31

if.end28.if.end32_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %ifindex = getelementptr inbounds %struct.net_device, ptr %out, i32 0, i32 17
  %13 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ifindex, align 4
  %masq_index = getelementptr inbounds %struct.nf_conn_nat, ptr %call29, i32 0, i32 1
  %15 = ptrtoint ptr %masq_index to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %masq_index, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end28.if.end32_crit_edge
  %16 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %range, align 4
  %or = or i32 %17, 1
  %18 = ptrtoint ptr %newrange to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or, ptr %newrange, align 4
  %min_addr = getelementptr inbounds %struct.nf_nat_range2, ptr %newrange, i32 0, i32 1
  %19 = call ptr @memcpy(ptr %min_addr, ptr %src, i32 16)
  %max_addr = getelementptr inbounds %struct.nf_nat_range2, ptr %newrange, i32 0, i32 2
  %20 = call ptr @memcpy(ptr %max_addr, ptr %src, i32 16)
  %min_proto = getelementptr inbounds %struct.nf_nat_range2, ptr %newrange, i32 0, i32 3
  %min_proto34 = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 3
  %21 = ptrtoint ptr %min_proto34 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %min_proto34, align 4
  %23 = ptrtoint ptr %min_proto to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %min_proto, align 4
  %max_proto = getelementptr inbounds %struct.nf_nat_range2, ptr %newrange, i32 0, i32 4
  %max_proto35 = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 4
  %24 = ptrtoint ptr %max_proto35 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %max_proto35, align 2
  %26 = ptrtoint ptr %max_proto to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %max_proto, align 2
  %call36 = call i32 @nf_nat_setup_info(ptr noundef %5, ptr noundef nonnull %newrange, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call36, %if.end32 ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %newrange) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %src) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nf_nat_masquerade_inet_register_notifiers() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @masq_mutex, i32 noundef 0) #7
  %0 = load i32, ptr @masq_refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %0)
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %land.rhs, label %if.end37

land.rhs:                                         ; preds = %entry
  %.b60 = load i1, ptr @nf_nat_masquerade_inet_register_notifiers.__already_done, align 1
  br i1 %.b60, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !45

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @nf_nat_masquerade_inet_register_notifiers.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 314, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end37:                                         ; preds = %entry
  %inc = add nuw i32 %0, 1
  store i32 %inc, ptr @masq_refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp38.not = icmp eq i32 %0, 0
  br i1 %cmp38.not, label %if.end40, label %if.end37.cleanup_crit_edge

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end40:                                         ; preds = %if.end37
  %call = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @masq_dev_notifier) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool41.not = icmp eq i32 %call, 0
  br i1 %tobool41.not, label %if.end43, label %if.end40.err_dec_crit_edge

if.end40.err_dec_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_dec

if.end43:                                         ; preds = %if.end40
  %call44 = tail call i32 @register_inetaddr_notifier(ptr noundef nonnull @masq_inet_notifier) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.end43.err_unregister_crit_edge

if.end43.err_unregister_crit_edge:                ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_unregister

if.end47:                                         ; preds = %if.end43
  %call.i = tail call i32 @register_inet6addr_notifier(ptr noundef nonnull @masq_inet6_notifier) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool49.not = icmp eq i32 %call.i, 0
  br i1 %tobool49.not, label %if.end47.cleanup_crit_edge, label %err_unreg_inet

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

err_unreg_inet:                                   ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  %call52 = tail call i32 @unregister_inetaddr_notifier(ptr noundef nonnull @masq_inet_notifier) #7
  br label %err_unregister

err_unregister:                                   ; preds = %err_unreg_inet, %if.end43.err_unregister_crit_edge
  %ret.0 = phi i32 [ %call44, %if.end43.err_unregister_crit_edge ], [ %call.i, %err_unreg_inet ]
  %call53 = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @masq_dev_notifier) #7
  br label %err_dec

err_dec:                                          ; preds = %err_unregister, %if.end40.err_dec_crit_edge
  %ret.1 = phi i32 [ %call, %if.end40.err_dec_crit_edge ], [ %ret.0, %err_unregister ]
  %1 = load i32, ptr @masq_refcnt, align 4
  %dec = add i32 %1, -1
  store i32 %dec, ptr @masq_refcnt, align 4
  br label %cleanup

cleanup:                                          ; preds = %err_dec, %if.end47.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end47.cleanup_crit_edge ], [ 0, %if.end37.cleanup_crit_edge ], [ %ret.1, %err_dec ], [ -75, %if.then ], [ -75, %land.rhs.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @masq_mutex) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_inetaddr_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_inetaddr_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nf_nat_masquerade_inet_unregister_notifiers() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @masq_mutex, i32 noundef 0) #7
  %0 = load i32, ptr @masq_refcnt, align 4
  %dec = add i32 %0, -1
  store i32 %dec, ptr @masq_refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp.not = icmp eq i32 %dec, 0
  br i1 %cmp.not, label %if.end, label %entry.out_unlock_crit_edge

entry.out_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @masq_dev_notifier) #7
  %call1 = tail call i32 @unregister_inetaddr_notifier(ptr noundef nonnull @masq_inet_notifier) #7
  %call2 = tail call i32 @unregister_inet6addr_notifier(ptr noundef nonnull @masq_inet6_notifier) #7
  br label %out_unlock

out_unlock:                                       ; preds = %if.end, %entry.out_unlock_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @masq_mutex) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_inet6addr_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_dev_get_saddr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @masq_device_event(ptr nocapture noundef readnone %this, i32 noundef %event, ptr nocapture noundef readonly %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %event)
  %cmp = icmp eq i32 %event, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 127
  %2 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nd_net.i, align 4
  %ifindex = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 17
  %4 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ifindex, align 4
  tail call fastcc void @nf_nat_masq_schedule(ptr noundef %3, ptr noundef null, i32 noundef %5, ptr noundef nonnull @device_cmp, i32 noundef 3264)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nf_nat_masq_schedule(ptr noundef %net, ptr noundef readonly %addr, i32 noundef %ifindex, ptr noundef %iter, i32 noundef %gfp_flags) unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @masq_worker_count, i32 noundef 4) #7
  %0 = load volatile i32, ptr @masq_worker_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %0)
  %cmp = icmp sgt i32 %0, 16
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %count.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 14, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #7
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %count.i, i32 noundef 4) #7
  %1 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %count.i, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.end
  %3 = phi i32 [ %2, %if.end ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %4 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i.i.i.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %3, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #7
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #7
  %5 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #7
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %7 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 %6, i32 %add.i.i.i.i, ptr elementtype(i32) %count.i) #7, !srcloc !48
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %7, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %7, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %6
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !45

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %8 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %9, 1
  %10 = or i32 %add5.i.i.i.i, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %.not.i.i.i.i = icmp sgt i32 %10, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.maybe_get_net.exit_crit_edge, label %if.then10.i.i.i.i, !prof !45

if.end4.i.i.i.i.maybe_get_net.exit_crit_edge:     ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %maybe_get_net.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef 0) #7
  br label %maybe_get_net.exit

maybe_get_net.exit:                               ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.maybe_get_net.exit_crit_edge
  %11 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool12.i.i.i.not.i = icmp eq i32 %12, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #7
  %tobool.not49 = icmp eq ptr %net, null
  %tobool.not = or i1 %tobool.not49, %tobool12.i.i.i.not.i
  br i1 %tobool.not, label %maybe_get_net.exit.cleanup_crit_edge, label %if.end3

maybe_get_net.exit.cleanup_crit_edge:             ; preds = %maybe_get_net.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %maybe_get_net.exit
  %call4 = call zeroext i1 @try_module_get(ptr noundef null) #7
  br i1 %call4, label %if.end6, label %if.end3.err_module_crit_edge

if.end3.err_module_crit_edge:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_module

if.end6:                                          ; preds = %if.end3
  %and.i.i.i = and i32 %gfp_flags, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end6.kzalloc.exit_crit_edge, label %if.end.i.i.i, !prof !45

if.end6.kzalloc.exit_crit_edge:                   ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %kzalloc.exit

if.end.i.i.i:                                     ; preds = %if.end6
  %and2.i.i.i = and i32 %gfp_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i.i.i.kzalloc.exit_crit_edge

if.end.i.i.i.kzalloc.exit_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %and6.i.i.i = and i32 %gfp_flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc.exit

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i.i.i.kzalloc.exit_crit_edge, %if.end6.kzalloc.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ 0, %if.end6.kzalloc.exit_crit_edge ], [ 3, %if.end.i.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %or.i = or i32 %gfp_flags, 256
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i.i.i, i32 7
  %13 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef %or.i, i32 noundef 76) #11
  %tobool8.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool8.not, label %if.end24, label %if.then9

if.then9:                                         ; preds = %kzalloc.exit
  %call.i.i42 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @masq_worker_count, i32 noundef 4) #7
  call void @llvm.prefetch.p0(ptr nonnull @masq_worker_count, i32 1, i32 3, i32 1) #7
  %15 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @masq_worker_count, ptr nonnull @masq_worker_count, i32 1, ptr nonnull elementtype(i32) @masq_worker_count) #7, !srcloc !49
  call void @__init_work(ptr noundef nonnull %call7.i.i, i32 noundef 0) #7
  %16 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -64, ptr %call7.i.i, align 8
  %lockdep_map = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.6, ptr noundef nonnull @nf_nat_masq_schedule.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry13 = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %entry13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %entry13, ptr %entry13, align 4
  %prev.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %entry13, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @iterate_cleanup_work, ptr %func, align 4
  %ifindex15 = getelementptr inbounds %struct.masq_dev_work, ptr %call7.i.i, i32 0, i32 4
  %20 = ptrtoint ptr %ifindex15 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %ifindex, ptr %ifindex15, align 4
  %net16 = getelementptr inbounds %struct.masq_dev_work, ptr %call7.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %net16 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %net, ptr %net16, align 4
  %ns_tracker = getelementptr inbounds %struct.masq_dev_work, ptr %call7.i.i, i32 0, i32 2
  %refcnt_tracker.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 15
  %call.i = call i32 @ref_tracker_alloc(ptr noundef %refcnt_tracker.i, ptr noundef %ns_tracker, i32 noundef %gfp_flags) #7
  %iter17 = getelementptr inbounds %struct.masq_dev_work, ptr %call7.i.i, i32 0, i32 5
  %22 = ptrtoint ptr %iter17 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %iter, ptr %iter17, align 8
  %tobool18.not = icmp eq ptr %addr, null
  br i1 %tobool18.not, label %if.then9.if.end21_crit_edge, label %if.then19

if.then9.if.end21_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then19:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  %addr20 = getelementptr inbounds %struct.masq_dev_work, ptr %call7.i.i, i32 0, i32 3
  %23 = call ptr @memcpy(ptr %addr20, ptr %addr, i32 16)
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.then9.if.end21_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %24 = load ptr, ptr @system_wq, align 4
  %call.i.i43 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %24, ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

if.end24:                                         ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @module_put(ptr noundef null) #7
  br label %err_module

err_module:                                       ; preds = %if.end24, %if.end3.err_module_crit_edge
  %call.i.i.i.i.i.i45 = call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !50
  call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #7
  %25 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #7, !srcloc !51
  %asmresult.i.i.i.i.i.i.i46 = extractvalue { i32, i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i46)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i46, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %err_module
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i46)
  %.not.i.i.i.i47 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i46, 0
  br i1 %.not.i.i.i.i47, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i48, !prof !45

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then10.i.i.i.i48:                              ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef 3) #7
  br label %cleanup

if.then.i:                                        ; preds = %err_module
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !52
  call void @__put_net(ptr noundef nonnull %net) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i48, %if.end5.i.i.i.i.cleanup_crit_edge, %if.end21, %maybe_get_net.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @device_cmp(ptr nocapture noundef readonly %i, ptr nocapture noundef readonly %arg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ext.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %i, i32 0, i32 13
  %0 = ptrtoint ptr %ext.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ext.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i, label %entry.cleanup_crit_edge, label %nf_ct_ext_exist.exit.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

nf_ct_ext_exist.exit.i.i:                         ; preds = %entry
  %arrayidx.i.i.i.i = getelementptr [10 x i8], ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.i.i.not.i.i = icmp eq i8 %3, 0
  br i1 %tobool.i.i.not.i.i, label %nf_ct_ext_exist.exit.i.i.cleanup_crit_edge, label %nfct_nat.exit

nf_ct_ext_exist.exit.i.i.cleanup_crit_edge:       ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

nfct_nat.exit:                                    ; preds = %nf_ct_ext_exist.exit.i.i
  %conv.i.i = zext i8 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %tobool.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not, label %nfct_nat.exit.cleanup_crit_edge, label %if.end

nfct_nat.exit.cleanup_crit_edge:                  ; preds = %nfct_nat.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %nfct_nat.exit
  call void @__sanitizer_cov_trace_pc() #9
  %masq_index = getelementptr inbounds %struct.nf_conn_nat, ptr %add.ptr.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %masq_index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %masq_index, align 4
  %ifindex = getelementptr inbounds %struct.masq_dev_work, ptr %arg, i32 0, i32 4
  %6 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ifindex, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp = icmp eq i32 %5, %7
  %conv = zext i1 %cmp to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %nfct_nat.exit.cleanup_crit_edge, %nf_ct_ext_exist.exit.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv, %if.end ], [ 0, %nfct_nat.exit.cleanup_crit_edge ], [ 0, %nf_ct_ext_exist.exit.i.i.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iterate_cleanup_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %net = getelementptr inbounds %struct.masq_dev_work, ptr %work, i32 0, i32 1
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  %iter = getelementptr inbounds %struct.masq_dev_work, ptr %work, i32 0, i32 5
  %2 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iter, align 4
  tail call void @nf_ct_iterate_cleanup_net(ptr noundef %1, ptr noundef %3, ptr noundef %work, i32 noundef 0, i32 noundef 0) #7
  %4 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net, align 4
  %ns_tracker = getelementptr inbounds %struct.masq_dev_work, ptr %work, i32 0, i32 2
  %refcnt_tracker.i.i = getelementptr inbounds %struct.net, ptr %5, i32 0, i32 15
  %call.i.i7 = tail call i32 @ref_tracker_free(ptr noundef %refcnt_tracker.i.i, ptr noundef %ns_tracker) #7
  %count.i.i = getelementptr inbounds %struct.net, ptr %5, i32 0, i32 14, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !50
  tail call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #7
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 1, ptr elementtype(i32) %count.i.i) #7, !srcloc !51
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.put_net_track.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !45

if.end5.i.i.i.i.i.put_net_track.exit_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_net_track.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %count.i.i, i32 noundef 3) #7
  br label %put_net_track.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !52
  tail call void @__put_net(ptr noundef %5) #7
  br label %put_net_track.exit

put_net_track.exit:                               ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.put_net_track.exit_crit_edge
  tail call void @kfree(ptr noundef %work) #7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @masq_worker_count, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr nonnull @masq_worker_count, i32 1, i32 3, i32 1) #7
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @masq_worker_count, ptr nonnull @masq_worker_count, i32 1, ptr nonnull elementtype(i32) @masq_worker_count) #7, !srcloc !53
  tail call void @module_put(ptr noundef null) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_iterate_cleanup_net(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ref_tracker_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ref_tracker_alloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_net(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @masq_inet_event(ptr nocapture noundef readnone %this, i32 noundef %event, ptr nocapture noundef readonly %ptr) #0 align 64 {
entry:
  %addr = alloca %union.nf_inet_addr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %addr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %event)
  %cmp.not = icmp eq i32 %event, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %ifa_dev = getelementptr inbounds %struct.in_ifaddr, ptr %ptr, i32 0, i32 2
  %0 = ptrtoint ptr %ifa_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ifa_dev, align 4
  %dead = getelementptr inbounds %struct.in_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dead to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dead, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %4 = getelementptr inbounds i8, ptr %addr, i32 4
  %5 = call ptr @memset(ptr %4, i32 0, i32 12)
  %ifa_address = getelementptr inbounds %struct.in_ifaddr, ptr %ptr, i32 0, i32 5
  %6 = ptrtoint ptr %ifa_address to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ifa_address, align 4
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %addr, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 127
  %11 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nd_net.i, align 4
  %ifindex = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 17
  %13 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ifindex, align 4
  call fastcc void @nf_nat_masq_schedule(ptr noundef %12, ptr noundef nonnull %addr, i32 noundef %14, ptr noundef nonnull @inet_cmp, i32 noundef 3264)
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %addr) #7
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @inet_cmp(ptr nocapture noundef readonly %ct, ptr nocapture noundef readonly %ptr) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ext.i.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 13
  %0 = ptrtoint ptr %ext.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ext.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i.i, label %entry.cleanup_crit_edge, label %nf_ct_ext_exist.exit.i.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

nf_ct_ext_exist.exit.i.i.i:                       ; preds = %entry
  %arrayidx.i.i.i.i.i = getelementptr [10 x i8], ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.i.i.not.i.i.i = icmp eq i8 %3, 0
  br i1 %tobool.i.i.not.i.i.i, label %nf_ct_ext_exist.exit.i.i.i.cleanup_crit_edge, label %nfct_nat.exit.i

nf_ct_ext_exist.exit.i.i.i.cleanup_crit_edge:     ; preds = %nf_ct_ext_exist.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

nfct_nat.exit.i:                                  ; preds = %nf_ct_ext_exist.exit.i.i.i
  %conv.i.i.i = zext i8 %3 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 %conv.i.i.i
  %tobool.not.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool.not.i, label %nfct_nat.exit.i.cleanup_crit_edge, label %device_cmp.exit

nfct_nat.exit.i.cleanup_crit_edge:                ; preds = %nfct_nat.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

device_cmp.exit:                                  ; preds = %nfct_nat.exit.i
  %masq_index.i = getelementptr inbounds %struct.nf_conn_nat, ptr %add.ptr.i.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %masq_index.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %masq_index.i, align 4
  %ifindex.i = getelementptr inbounds %struct.masq_dev_work, ptr %ptr, i32 0, i32 4
  %6 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ifindex.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.i.not = icmp eq i32 %5, %7
  br i1 %cmp.i.not, label %if.end, label %device_cmp.exit.cleanup_crit_edge

device_cmp.exit.cleanup_crit_edge:                ; preds = %device_cmp.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %device_cmp.exit
  %addr = getelementptr inbounds %struct.masq_dev_work, ptr %ptr, i32 0, i32 3
  %dst = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 1, i32 1, i32 1
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr, align 4
  %10 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dst, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp.i6 = icmp eq i32 %9, %11
  br i1 %cmp.i6, label %land.lhs.true.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.end
  %arrayidx2.i = getelementptr %struct.masq_dev_work, ptr %ptr, i32 0, i32 3, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx2.i, align 4
  %arrayidx3.i = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 1, i32 1, i32 1, i32 0, i32 0, i32 1
  %14 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp4.i = icmp eq i32 %13, %15
  br i1 %cmp4.i, label %land.lhs.true5.i, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %arrayidx6.i = getelementptr %struct.masq_dev_work, ptr %ptr, i32 0, i32 3, i32 0, i32 2
  %16 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx6.i, align 4
  %arrayidx7.i = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 1, i32 1, i32 1, i32 0, i32 0, i32 2
  %18 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx7.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp8.i = icmp eq i32 %17, %19
  br i1 %cmp8.i, label %land.rhs.i, label %land.lhs.true5.i.cleanup_crit_edge

land.lhs.true5.i.cleanup_crit_edge:               ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.rhs.i:                                       ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx9.i = getelementptr %struct.masq_dev_work, ptr %ptr, i32 0, i32 3, i32 0, i32 3
  %20 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx9.i, align 4
  %arrayidx10.i = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 1, i32 1, i32 1, i32 0, i32 0, i32 3
  %22 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx10.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp11.i = icmp eq i32 %21, %23
  %phi.cast.i = zext i1 %cmp11.i to i32
  br label %cleanup

cleanup:                                          ; preds = %land.rhs.i, %land.lhs.true5.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %device_cmp.exit.cleanup_crit_edge, %nfct_nat.exit.i.cleanup_crit_edge, %nf_ct_ext_exist.exit.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %device_cmp.exit.cleanup_crit_edge ], [ 0, %land.lhs.true5.i.cleanup_crit_edge ], [ 0, %land.lhs.true.i.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %phi.cast.i, %land.rhs.i ], [ 0, %nfct_nat.exit.i.cleanup_crit_edge ], [ 0, %nf_ct_ext_exist.exit.i.i.i.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_inet6addr_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @masq_inet6_event(ptr nocapture noundef readnone %this, i32 noundef %event, ptr nocapture noundef readonly %ptr) #0 align 64 {
entry:
  %addr = alloca %union.nf_inet_addr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %addr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %event)
  %cmp.not = icmp eq i32 %event, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %idev = getelementptr inbounds %struct.inet6_ifaddr, ptr %ptr, i32 0, i32 16
  %0 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %idev, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = call ptr @memcpy(ptr %addr, ptr %ptr, i32 16)
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 127
  %5 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nd_net.i, align 4
  %ifindex = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 17
  %7 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ifindex, align 4
  call fastcc void @nf_nat_masq_schedule(ptr noundef %6, ptr noundef nonnull %addr, i32 noundef %8, ptr noundef nonnull @inet_cmp, i32 noundef 2592)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %addr) #7
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !24, !25, !27, !29, !30, !32, !34}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/netfilter/nf_nat_masquerade.c", i32 39, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/netfilter/nf_nat_masquerade.c", i32 56, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @nf_nat_masquerade_ipv4._entry, !3, !"_entry", i1 false, i1 false}
!6 = !{ptr @nf_nat_masquerade_ipv4._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!7 = !{ptr @__ksymtab_nf_nat_masquerade_ipv4, !8, !"__ksymtab_nf_nat_masquerade_ipv4", i1 false, i1 false}
!8 = !{!"../net/netfilter/nf_nat_masquerade.c", i32 76, i32 1}
!9 = !{ptr @__ksymtab_nf_nat_masquerade_ipv6, !10, !"__ksymtab_nf_nat_masquerade_ipv6", i1 false, i1 false}
!10 = !{!"../net/netfilter/nf_nat_masquerade.c", i32 267, i32 1}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../net/netfilter/nf_nat_masquerade.c", i32 314, i32 6}
!13 = !{ptr @__ksymtab_nf_nat_masquerade_inet_register_notifiers, !14, !"__ksymtab_nf_nat_masquerade_inet_register_notifiers", i1 false, i1 false}
!14 = !{!"../net/netfilter/nf_nat_masquerade.c", i32 348, i32 1}
!15 = !{ptr @__ksymtab_nf_nat_masquerade_inet_unregister_notifiers, !16, !"__ksymtab_nf_nat_masquerade_inet_unregister_notifiers", i1 false, i1 false}
!16 = !{!"../net/netfilter/nf_nat_masquerade.c", i32 365, i32 1}
!17 = !{ptr @masq_refcnt, !18, !"masq_refcnt", i1 false, i1 false}
!18 = !{!"../net/netfilter/nf_nat_masquerade.c", i32 24, i32 21}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/netfilter/nf_nat_masquerade.c", i32 23, i32 8}
!23 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @masq_mutex, !22, !"masq_mutex", i1 false, i1 false}
!25 = !{ptr @masq_dev_notifier, !26, !"masq_dev_notifier", i1 false, i1 false}
!26 = !{!"../net/netfilter/nf_nat_masquerade.c", i32 211, i32 30}
!27 = !{ptr @nf_nat_masq_schedule.__key, !28, !"__key", i1 false, i1 false}
!28 = !{!"../net/netfilter/nf_nat_masquerade.c", i32 120, i32 3}
!29 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @masq_worker_count, !31, !"masq_worker_count", i1 false, i1 false}
!31 = !{!"../net/netfilter/nf_nat_masquerade.c", i32 25, i32 17}
!32 = !{ptr @masq_inet_notifier, !33, !"masq_inet_notifier", i1 false, i1 false}
!33 = !{!"../net/netfilter/nf_nat_masquerade.c", i32 215, i32 30}
!34 = !{ptr @masq_inet6_notifier, !35, !"masq_inet6_notifier", i1 false, i1 false}
!35 = !{!"../net/netfilter/nf_nat_masquerade.c", i32 297, i32 30}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{!"branch_weights", i32 2000, i32 1}
!46 = !{!"branch_weights", i32 1, i32 2000}
!47 = !{!"auto-init"}
!48 = !{i64 500479, i64 500503, i64 500524, i64 500541, i64 500558}
!49 = !{i64 2148125645, i64 2148125671, i64 2148125700, i64 2148125734, i64 2148125765, i64 2148125788}
!50 = !{i64 2148215176}
!51 = !{i64 2148129640, i64 2148129672, i64 2148129701, i64 2148129735, i64 2148129766, i64 2148129789}
!52 = !{i64 2149308511}
!53 = !{i64 2148128110, i64 2148128136, i64 2148128165, i64 2148128199, i64 2148128230, i64 2148128253}
