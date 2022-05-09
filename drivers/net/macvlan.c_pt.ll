; ModuleID = '/llk/IR_all_yes/drivers/net/macvlan.c_pt.bc'
source_filename = "../drivers/net/macvlan.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+macvlan_common_setup\22, \22a\22\09"
module asm "\09.weak\09__crc_macvlan_common_setup\09\09\09\09"
module asm "\09.long\09__crc_macvlan_common_setup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_macvlan_common_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22macvlan_common_setup\22\09\09\09\09\09"
module asm "__kstrtabns_macvlan_common_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+macvlan_common_newlink\22, \22a\22\09"
module asm "\09.weak\09__crc_macvlan_common_newlink\09\09\09\09"
module asm "\09.long\09__crc_macvlan_common_newlink\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_macvlan_common_newlink:\09\09\09\09\09"
module asm "\09.asciz \09\22macvlan_common_newlink\22\09\09\09\09\09"
module asm "__kstrtabns_macvlan_common_newlink:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+macvlan_dellink\22, \22a\22\09"
module asm "\09.weak\09__crc_macvlan_dellink\09\09\09\09"
module asm "\09.long\09__crc_macvlan_dellink\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_macvlan_dellink:\09\09\09\09\09"
module asm "\09.asciz \09\22macvlan_dellink\22\09\09\09\09\09"
module asm "__kstrtabns_macvlan_dellink:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+macvlan_link_register\22, \22a\22\09"
module asm "\09.weak\09__crc_macvlan_link_register\09\09\09\09"
module asm "\09.long\09__crc_macvlan_link_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_macvlan_link_register:\09\09\09\09\09"
module asm "\09.asciz \09\22macvlan_link_register\22\09\09\09\09\09"
module asm "__kstrtabns_macvlan_link_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.header_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.49 }
%union.anon.49 = type { i32 }
%struct.rtnl_link_ops = type { %struct.list_head, ptr, i32, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.59, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.59 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.148, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type { ptr }
%union.anon.148 = type { ptr }
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
%struct.macvlan_port = type { ptr, [256 x %struct.hlist_head], %struct.list_head, %struct.sk_buff_head, %struct.work_struct, i32, i32, i32, [256 x %struct.hlist_head], [8 x i32], [6 x i8] }
%struct.macvlan_dev = type { ptr, %struct.list_head, %struct.hlist_node, ptr, ptr, ptr, ptr, [8 x i32], i64, i32, i16, i32, i32, ptr }
%struct.macvlan_source_entry = type { %struct.hlist_node, ptr, [8 x i8], %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.116, [48 x i8], %union.anon.117, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.119, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%union.anon.2 = type { ptr }
%union.anon.116 = type { i64 }
%union.anon.117 = type { %struct.anon.118 }
%struct.anon.118 = type { i32, ptr }
%union.anon.119 = type { %struct.anon.120 }
%struct.anon.120 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.121, i32, i32, i32, i16, i16, %union.anon.123, i32, %union.anon.124, %union.anon.125, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.121 = type { i32 }
%union.anon.123 = type { i32 }
%union.anon.124 = type { i32 }
%union.anon.125 = type { i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.nlattr = type { i16, i16 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.vlan_pcpu_stats = type { i64, i64, i64, i64, i64, %struct.u64_stats_sync, i32, i32 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.ifreq = type { %union.anon.132, %union.anon.133 }
%union.anon.132 = type { [16 x i8] }
%union.anon.133 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.mii_timestamper = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ts_info = type { i32, i32, i32, i32, [3 x i32], i32, [3 x i32] }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }

@macvlan_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr @macvlan_init, ptr @macvlan_uninit, ptr @macvlan_open, ptr @macvlan_stop, ptr @macvlan_start_xmit, ptr @passthru_features_check, ptr null, ptr @macvlan_change_rx_flags, ptr @macvlan_set_mac_lists, ptr @macvlan_set_mac_address, ptr @eth_validate_addr, ptr null, ptr @macvlan_eth_ioctl, ptr null, ptr null, ptr null, ptr null, ptr @macvlan_change_mtu, ptr null, ptr null, ptr @macvlan_dev_get_stats64, ptr null, ptr null, ptr null, ptr @macvlan_vlan_rx_add_vid, ptr @macvlan_vlan_rx_kill_vid, ptr @macvlan_dev_poll_controller, ptr @macvlan_dev_netpoll_setup, ptr @macvlan_dev_netpoll_cleanup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @macvlan_fix_features, ptr null, ptr null, ptr null, ptr @macvlan_fdb_add, ptr @macvlan_fdb_del, ptr @ndo_dflt_fdb_dump, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @macvlan_dev_get_iflink, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@macvlan_hard_header_ops = internal constant { %struct.header_ops, [40 x i8] } { %struct.header_ops { ptr @macvlan_hard_header, ptr @eth_header_parse, ptr @eth_header_cache, ptr @eth_header_cache_update, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@macvlan_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @macvlan_ethtool_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @macvlan_ethtool_get_ts_info, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @macvlan_ethtool_get_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@__kstrtab_macvlan_common_setup = external dso_local constant [0 x i8], align 1
@__kstrtabns_macvlan_common_setup = external dso_local constant [0 x i8], align 1
@__ksymtab_macvlan_common_setup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @macvlan_common_setup to i32), ptr @__kstrtab_macvlan_common_setup, ptr @__kstrtabns_macvlan_common_setup }, section "___ksymtab_gpl+macvlan_common_setup", align 4
@__kstrtab_macvlan_common_newlink = external dso_local constant [0 x i8], align 1
@__kstrtabns_macvlan_common_newlink = external dso_local constant [0 x i8], align 1
@__ksymtab_macvlan_common_newlink = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @macvlan_common_newlink to i32), ptr @__kstrtab_macvlan_common_newlink, ptr @__kstrtabns_macvlan_common_newlink }, section "___ksymtab_gpl+macvlan_common_newlink", align 4
@__kstrtab_macvlan_dellink = external dso_local constant [0 x i8], align 1
@__kstrtabns_macvlan_dellink = external dso_local constant [0 x i8], align 1
@__ksymtab_macvlan_dellink = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @macvlan_dellink to i32), ptr @__kstrtab_macvlan_dellink, ptr @__kstrtabns_macvlan_dellink }, section "___ksymtab_gpl+macvlan_dellink", align 4
@macvlan_policy = internal constant { [9 x %struct.nla_policy], [56 x i8] } { [9 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.49 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.49 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.49 zeroinitializer }, %struct.nla_policy { i8 11, i8 0, i16 32, %union.anon.49 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.49 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.49 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.49 zeroinitializer }, %struct.nla_policy { i8 17, i8 0, i16 0, %union.anon.49 zeroinitializer }], [56 x i8] zeroinitializer }, align 32
@__kstrtab_macvlan_link_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_macvlan_link_register = external dso_local constant [0 x i8], align 1
@__ksymtab_macvlan_link_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @macvlan_link_register to i32), ptr @__kstrtab_macvlan_link_register, ptr @__kstrtabns_macvlan_link_register }, section "___ksymtab_gpl+macvlan_link_register", align 4
@macvlan_link_ops = internal global { %struct.rtnl_link_ops, [52 x i8] } { %struct.rtnl_link_ops { %struct.list_head zeroinitializer, ptr @.str.7, i32 104, ptr null, ptr @macvlan_setup, i8 0, i32 0, ptr null, ptr null, ptr @macvlan_newlink, ptr null, ptr @macvlan_dellink, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @macvlan_get_link_net, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@macvlan_notifier_block = internal global %struct.notifier_block { ptr @macvlan_device_event, ptr null, i32 0 }, section ".data..read_mostly", align 4
@__initcall__kmod_macvlan__548_1822_macvlan_init_module6 = internal global ptr @macvlan_init_module, section ".initcall6.init", align 4
@__exitcall_macvlan_cleanup_module = internal global ptr @macvlan_cleanup_module, section ".exitcall.exit", align 4
@__UNIQUE_ID_file549 = internal constant [33 x i8] c"macvlan.file=drivers/net/macvlan\00", section ".modinfo", align 1
@__UNIQUE_ID_license550 = internal constant [20 x i8] c"macvlan.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author551 = internal constant [49 x i8] c"macvlan.author=Patrick McHardy <kaber@trash.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description552 = internal constant [55 x i8] c"macvlan.description=Driver for MAC address based VLANs\00", section ".modinfo", align 1
@__UNIQUE_ID_alias553 = internal constant [32 x i8] c"macvlan.alias=rtnl-link-macvlan\00", section ".modinfo", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@macvlan_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&(&stat->syncp)->seq\00", [43 x i8] zeroinitializer }, align 32
@macvlan_set_lockdep_class.qdisc_tx_busylock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@macvlan_set_lockdep_class.qdisc_xmit_lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@macvlan_set_lockdep_class.dev_addr_list_lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&dev_addr_list_lock_key\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&qdisc_xmit_lock_key\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&macvlan_netdev_addr_lock_key\00", [34 x i8] zeroinitializer }, align 32
@macvlan_netdev_addr_lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@macvlan_hash_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/net/macvlan.c\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@macvlan_broadcast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"macvlan\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0.1\00", [28 x i8] zeroinitializer }, align 32
@macvlan_port_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&port->bc_work)\00", [62 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@macvlan_port_get_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.14 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@macvlan_forward_source.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@macvlan_port_get_rtnl.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@macvlan_hash_lookup_source.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@macvlan_fill_info_macaddr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.17 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 35248, i64 35249]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.21 = internal global [13 x i64] [i64 11, i64 32, i64 1, i64 2, i64 4, i64 6, i64 7, i64 8, i64 12, i64 13, i64 15, i64 19, i64 22]
@___asan_gen_.22 = private unnamed_addr constant [19 x i8] c"macvlan_netdev_ops\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 1148, i32 36 }
@___asan_gen_.25 = private unnamed_addr constant [24 x i8] c"macvlan_hard_header_ops\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 594, i32 32 }
@___asan_gen_.28 = private unnamed_addr constant [20 x i8] c"macvlan_ethtool_ops\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 1141, i32 33 }
@___asan_gen_.31 = private unnamed_addr constant [15 x i8] c"macvlan_policy\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 1676, i32 32 }
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"macvlan_link_ops\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 1706, i32 29 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 908, i32 21 }
@___asan_gen_.43 = private unnamed_addr constant [22 x i8] c"qdisc_tx_busylock_key\00", align 1
@___asan_gen_.46 = private unnamed_addr constant [20 x i8] c"qdisc_xmit_lock_key\00", align 1
@___asan_gen_.49 = private unnamed_addr constant [23 x i8] c"dev_addr_list_lock_key\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 884, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 885, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant [29 x i8] c"macvlan_netdev_addr_lock_key\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 865, i32 30 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 128, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 271, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 1039, i32 27 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 1040, i32 28 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 1224, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 1984, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 695, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 723, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 114, i32 9 }
@___asan_gen_.103 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.104 = private constant [25 x i8] c"../drivers/net/macvlan.c\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 119, i32 9 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @__UNIQUE_ID_alias553, ptr @__UNIQUE_ID_author551, ptr @__UNIQUE_ID_description552, ptr @__UNIQUE_ID_file549, ptr @__UNIQUE_ID_license550, ptr @__exitcall_macvlan_cleanup_module, ptr @__initcall__kmod_macvlan__548_1822_macvlan_init_module6, ptr @__ksymtab_macvlan_common_newlink, ptr @__ksymtab_macvlan_common_setup, ptr @__ksymtab_macvlan_dellink, ptr @__ksymtab_macvlan_link_register, ptr @macvlan_cleanup_module, ptr @macvlan_netdev_ops, ptr @macvlan_hard_header_ops, ptr @macvlan_ethtool_ops, ptr @macvlan_policy, ptr @macvlan_link_ops, ptr @macvlan_init.__key, ptr @.str, ptr @macvlan_set_lockdep_class.qdisc_tx_busylock_key, ptr @macvlan_set_lockdep_class.qdisc_xmit_lock_key, ptr @macvlan_set_lockdep_class.dev_addr_list_lock_key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @macvlan_netdev_addr_lock_key, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @macvlan_port_create.__key, ptr @.str.9, ptr @skb_queue_head_init.__key, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @macvlan_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @macvlan_hard_header_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @macvlan_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @macvlan_policy to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @macvlan_link_ops to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @macvlan_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @macvlan_set_lockdep_class.qdisc_tx_busylock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @macvlan_set_lockdep_class.qdisc_xmit_lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @macvlan_set_lockdep_class.dev_addr_list_lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @macvlan_netdev_addr_lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @macvlan_port_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @macvlan_common_setup(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ether_setup(ptr noundef %dev) #19
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 30
  %0 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %min_mtu, align 8
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 31
  %1 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 65535, ptr %max_mtu, align 4
  %priv_flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %2 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %priv_flags, align 16
  %and.i = and i64 %3, -4295104545
  %or = or i64 %and.i, 4294971392
  store i64 %or, ptr %priv_flags, align 16
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %4 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @macvlan_netdev_ops, ptr %netdev_ops, align 8
  %needs_free_netdev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 124
  %5 = ptrtoint ptr %needs_free_netdev to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %needs_free_netdev, align 8
  %header_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 49
  %6 = ptrtoint ptr %header_ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @macvlan_hard_header_ops, ptr %header_ops, align 4
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 44
  %7 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @macvlan_ethtool_ops, ptr %ethtool_ops, align 16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ether_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @macvlan_common_newlink(ptr noundef %src_net, ptr noundef %dev, ptr nocapture noundef readonly %tb, ptr noundef readonly %data, ptr noundef %extack) #0 align 64 {
entry:
  %addr.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %arrayidx = getelementptr ptr, ptr %tb, i32 5
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i.i, align 4
  %call3 = tail call ptr @__dev_get_by_index(ptr noundef %src_net, i32 noundef %3) #19
  %cmp = icmp eq ptr %call3, null
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %call3, i32 0, i32 15
  %4 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %5, 65536
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.end5.if.end9_crit_edge, label %if.then7

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end9

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #21
  %lowerdev.i = getelementptr i8, ptr %call3, i32 2328
  %6 = ptrtoint ptr %lowerdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lowerdev.i, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5.if.end9_crit_edge
  %lowerdev.0 = phi ptr [ %7, %if.then7 ], [ %call3, %if.end5.if.end9_crit_edge ]
  %arrayidx10 = getelementptr ptr, ptr %tb, i32 4
  %8 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx10, align 4
  %tobool11.not = icmp eq ptr %9, null
  br i1 %tobool11.not, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #21
  %mtu = getelementptr inbounds %struct.net_device, ptr %lowerdev.0, i32 0, i32 20
  %10 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mtu, align 4
  %mtu13 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %12 = ptrtoint ptr %mtu13 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %mtu13, align 4
  br label %if.end19

if.else:                                          ; preds = %if.end9
  %mtu14 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %13 = ptrtoint ptr %mtu14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mtu14, align 4
  %mtu15 = getelementptr inbounds %struct.net_device, ptr %lowerdev.0, i32 0, i32 20
  %15 = ptrtoint ptr %mtu15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mtu15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp16 = icmp ugt i32 %14, %16
  br i1 %cmp16, label %if.else.cleanup_crit_edge, label %if.else.if.end19_crit_edge

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end19

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end19:                                         ; preds = %if.else.if.end19_crit_edge, %if.then12
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 30
  %17 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 68, ptr %min_mtu, align 8
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %lowerdev.0, i32 0, i32 31
  %18 = ptrtoint ptr %max_mtu to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_mtu, align 4
  %max_mtu20 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 31
  %20 = ptrtoint ptr %max_mtu20 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %max_mtu20, align 4
  %arrayidx21 = getelementptr ptr, ptr %tb, i32 1
  %21 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx21, align 4
  %tobool22.not = icmp eq ptr %22, null
  br i1 %tobool22.not, label %if.then23, label %if.end19.if.end24_crit_edge

if.end19.if.end24_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end24

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i) #19
  %23 = call ptr @memset(ptr %addr.i, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr.i, i32 noundef 6) #19
  %24 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %addr.i, align 1
  %26 = and i8 %25, -4
  %27 = or i8 %26, 2
  store i8 %27, ptr %addr.i, align 1
  call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull %addr.i, i32 noundef 6) #19
  %addr_assign_type.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 55
  %28 = ptrtoint ptr %addr_assign_type.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %addr_assign_type.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i) #19
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end19.if.end24_crit_edge
  %priv_flags.i178 = getelementptr inbounds %struct.net_device, ptr %lowerdev.0, i32 0, i32 15
  %29 = ptrtoint ptr %priv_flags.i178 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %priv_flags.i178, align 16
  %and.i179 = and i64 %30, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i179)
  %tobool.i180.not = icmp eq i64 %and.i179, 0
  br i1 %tobool.i180.not, label %if.then26, label %if.end24.if.end31_crit_edge

if.end24.if.end31_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end31

if.then26:                                        ; preds = %if.end24
  %type.i = getelementptr inbounds %struct.net_device, ptr %lowerdev.0, i32 0, i32 32
  %31 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %type.i, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %32)
  %cmp.not.i = icmp eq i16 %32, 1
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.then26.cleanup_crit_edge

if.then26.cleanup_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.then26
  %flags.i = getelementptr inbounds %struct.net_device, ptr %lowerdev.0, i32 0, i32 14
  %33 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags.i, align 8
  %and.i181 = and i32 %34, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i181)
  %tobool.not.i = icmp eq i32 %and.i181, 0
  br i1 %tobool.not.i, label %if.end.i, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  %call.i = call zeroext i1 @netdev_is_rx_handler_busy(ptr noundef %lowerdev.0) #19
  br i1 %call.i, label %if.end.i.cleanup_crit_edge, label %if.end3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %35 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %35, i32 noundef 3520, i32 noundef 2212) #22
  %cmp5.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp5.i, label %if.end3.i.cleanup_crit_edge, label %if.end8.i

if.end3.i.cleanup_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end8.i:                                        ; preds = %if.end3.i
  %36 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %lowerdev.0, ptr %call7.i.i.i, align 8
  %perm_addr.i = getelementptr inbounds %struct.macvlan_port, ptr %call7.i.i.i, i32 0, i32 10
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %lowerdev.0, i32 0, i32 86
  %37 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev_addr.i, align 64
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 4
  %41 = ptrtoint ptr %perm_addr.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %perm_addr.i, align 4
  %add.ptr.i.i182 = getelementptr i8, ptr %38, i32 4
  %42 = ptrtoint ptr %add.ptr.i.i182 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %add.ptr.i.i182, align 2
  %add.ptr1.i.i = getelementptr %struct.macvlan_port, ptr %call7.i.i.i, i32 0, i32 10, i32 4
  %44 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %add.ptr1.i.i, align 8
  %vlans.i = getelementptr inbounds %struct.macvlan_port, ptr %call7.i.i.i, i32 0, i32 2
  %45 = ptrtoint ptr %vlans.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %vlans.i, ptr %vlans.i, align 4
  %prev.i.i = getelementptr inbounds %struct.macvlan_port, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %46 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %vlans.i, ptr %prev.i.i, align 8
  %uglygep.i = getelementptr i8, ptr %call7.i.i.i, i32 4
  %47 = call ptr @memset(ptr %uglygep.i, i32 0, i32 1024)
  %uglygep61.i = getelementptr i8, ptr %call7.i.i.i, i32 1148
  %48 = call ptr @memset(ptr %uglygep61.i, i32 0, i32 1024)
  %bc_queue_len_used.i = getelementptr inbounds %struct.macvlan_port, ptr %call7.i.i.i, i32 0, i32 5
  %49 = ptrtoint ptr %bc_queue_len_used.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %bc_queue_len_used.i, align 8
  %bc_queue.i = getelementptr inbounds %struct.macvlan_port, ptr %call7.i.i.i, i32 0, i32 3
  %lock.i.i = getelementptr inbounds %struct.macvlan_port, ptr %call7.i.i.i, i32 0, i32 3, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #19
  %50 = ptrtoint ptr %bc_queue.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %bc_queue.i, ptr %bc_queue.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.macvlan_port, ptr %call7.i.i.i, i32 0, i32 3, i32 0, i32 0, i32 1
  %51 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %bc_queue.i, ptr %prev.i.i.i, align 8
  %qlen.i.i.i = getelementptr inbounds %struct.macvlan_port, ptr %call7.i.i.i, i32 0, i32 3, i32 1
  %52 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %qlen.i.i.i, align 4
  %bc_work.i = getelementptr inbounds %struct.macvlan_port, ptr %call7.i.i.i, i32 0, i32 4
  call void @__init_work(ptr noundef %bc_work.i, i32 noundef 0) #19
  %53 = ptrtoint ptr %bc_work.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -64, ptr %bc_work.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.macvlan_port, ptr %call7.i.i.i, i32 0, i32 4, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.9, ptr noundef nonnull @macvlan_port_create.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #19
  %entry24.i = getelementptr inbounds %struct.macvlan_port, ptr %call7.i.i.i, i32 0, i32 4, i32 1
  %54 = ptrtoint ptr %entry24.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %entry24.i, ptr %entry24.i, align 8
  %prev.i58.i = getelementptr inbounds %struct.macvlan_port, ptr %call7.i.i.i, i32 0, i32 4, i32 1, i32 1
  %55 = ptrtoint ptr %prev.i58.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %entry24.i, ptr %prev.i58.i, align 4
  %func.i = getelementptr inbounds %struct.macvlan_port, ptr %call7.i.i.i, i32 0, i32 4, i32 2
  %56 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @macvlan_process_broadcast, ptr %func.i, align 8
  %call26.i = call i32 @netdev_rx_handler_register(ptr noundef %lowerdev.0, ptr noundef nonnull @macvlan_handle_frame, ptr noundef nonnull %call7.i.i.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %macvlan_port_create.exit.thread211, label %macvlan_port_create.exit

macvlan_port_create.exit.thread211:               ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #21
  %57 = ptrtoint ptr %priv_flags.i178 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %priv_flags.i178, align 16
  %or.i = or i64 %58, 256
  store i64 %or.i, ptr %priv_flags.i178, align 16
  br label %if.end31

macvlan_port_create.exit:                         ; preds = %if.end8.i
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %cmp28 = icmp slt i32 %call26.i, 0
  br i1 %cmp28, label %macvlan_port_create.exit.cleanup_crit_edge, label %macvlan_port_create.exit.if.end31_crit_edge

macvlan_port_create.exit.if.end31_crit_edge:      ; preds = %macvlan_port_create.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end31

macvlan_port_create.exit.cleanup_crit_edge:       ; preds = %macvlan_port_create.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end31:                                         ; preds = %macvlan_port_create.exit.if.end31_crit_edge, %macvlan_port_create.exit.thread211, %if.end24.if.end31_crit_edge
  %call.i184 = call zeroext i1 @lockdep_rtnl_is_held() #19
  br i1 %call.i184, label %if.end31.macvlan_port_get_rtnl.exit_crit_edge, label %land.lhs.true.i

if.end31.macvlan_port_get_rtnl.exit_crit_edge:    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #21
  br label %macvlan_port_get_rtnl.exit

land.lhs.true.i:                                  ; preds = %if.end31
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i185 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i185, label %land.lhs.true.i.macvlan_port_get_rtnl.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.macvlan_port_get_rtnl.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %macvlan_port_get_rtnl.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @macvlan_port_get_rtnl.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.macvlan_port_get_rtnl.exit_crit_edge, label %if.then.i

land.lhs.true2.i.macvlan_port_get_rtnl.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %macvlan_port_get_rtnl.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @macvlan_port_get_rtnl.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 119, ptr noundef nonnull @.str.16) #19
  br label %macvlan_port_get_rtnl.exit

macvlan_port_get_rtnl.exit:                       ; preds = %if.then.i, %land.lhs.true2.i.macvlan_port_get_rtnl.exit_crit_edge, %land.lhs.true.i.macvlan_port_get_rtnl.exit_crit_edge, %if.end31.macvlan_port_get_rtnl.exit_crit_edge
  %rx_handler_data.i = getelementptr inbounds %struct.net_device, ptr %lowerdev.0, i32 0, i32 95
  %59 = ptrtoint ptr %rx_handler_data.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %rx_handler_data.i, align 4
  %flags.i186 = getelementptr inbounds %struct.macvlan_port, ptr %60, i32 0, i32 6
  %61 = ptrtoint ptr %flags.i186 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %flags.i186, align 4
  %and.i187 = and i32 %62, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i187)
  %tobool.i188.not = icmp eq i32 %and.i187, 0
  br i1 %tobool.i188.not, label %if.end35, label %macvlan_port_get_rtnl.exit.destroy_macvlan_port_crit_edge

macvlan_port_get_rtnl.exit.destroy_macvlan_port_crit_edge: ; preds = %macvlan_port_get_rtnl.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %destroy_macvlan_port

if.end35:                                         ; preds = %macvlan_port_get_rtnl.exit
  %lowerdev36 = getelementptr i8, ptr %dev, i32 2328
  %63 = ptrtoint ptr %lowerdev36 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %lowerdev.0, ptr %lowerdev36, align 8
  %64 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %dev, ptr %add.ptr.i, align 8
  %port38 = getelementptr i8, ptr %dev, i32 2324
  %65 = ptrtoint ptr %port38 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %60, ptr %port38, align 4
  %set_features = getelementptr i8, ptr %dev, i32 2376
  %66 = ptrtoint ptr %set_features to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 141837001411177, ptr %set_features, align 8
  %mode = getelementptr i8, ptr %dev, i32 2384
  %67 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 2, ptr %mode, align 8
  %tobool39.not = icmp eq ptr %data, null
  br i1 %tobool39.not, label %if.end77, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end35
  %arrayidx40 = getelementptr ptr, ptr %data, i32 1
  %68 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx40, align 4
  %tobool41.not = icmp eq ptr %69, null
  br i1 %tobool41.not, label %land.lhs.true.land.lhs.true48_crit_edge, label %if.then42

land.lhs.true.land.lhs.true48_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %land.lhs.true48

if.then42:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  %add.ptr.i.i189 = getelementptr i8, ptr %69, i32 4
  %70 = ptrtoint ptr %add.ptr.i.i189 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %add.ptr.i.i189, align 4
  %72 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %mode, align 8
  br label %land.lhs.true48

land.lhs.true48:                                  ; preds = %if.then42, %land.lhs.true.land.lhs.true48_crit_edge
  %arrayidx49 = getelementptr ptr, ptr %data, i32 2
  %73 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx49, align 4
  %tobool50.not = icmp eq ptr %74, null
  br i1 %tobool50.not, label %land.lhs.true48.if.end54_crit_edge, label %if.then51

land.lhs.true48.if.end54_crit_edge:               ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end54

if.then51:                                        ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #21
  %add.ptr.i.i190 = getelementptr i8, ptr %74, i32 4
  %75 = ptrtoint ptr %add.ptr.i.i190 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %add.ptr.i.i190, align 2
  %flags = getelementptr i8, ptr %dev, i32 2388
  %77 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %76, ptr %flags, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then51, %land.lhs.true48.if.end54_crit_edge
  %78 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %78)
  %.pr = load i32, ptr %mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %.pr)
  %cmp56 = icmp eq i32 %.pr, 8
  br i1 %cmp56, label %if.then57, label %if.end54.land.lhs.true63_crit_edge

if.end54.land.lhs.true63_crit_edge:               ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #21
  br label %land.lhs.true63

if.then57:                                        ; preds = %if.end54
  %count = getelementptr inbounds %struct.macvlan_port, ptr %60, i32 0, i32 7
  %79 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool58.not = icmp eq i32 %80, 0
  br i1 %tobool58.not, label %if.end60, label %if.then57.destroy_macvlan_port_crit_edge

if.then57.destroy_macvlan_port_crit_edge:         ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #21
  br label %destroy_macvlan_port

if.end60:                                         ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #21
  %81 = ptrtoint ptr %flags.i186 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %flags.i186, align 4
  %or.i192 = or i32 %82, 1
  store i32 %or.i192, ptr %flags.i186, align 4
  %addr_assign_type.i193 = getelementptr inbounds %struct.net_device, ptr %lowerdev.0, i32 0, i32 55
  %83 = ptrtoint ptr %addr_assign_type.i193 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %addr_assign_type.i193, align 4
  %addr_assign_type1.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 55
  %85 = ptrtoint ptr %addr_assign_type1.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %84, ptr %addr_assign_type1.i, align 4
  %dev_addr.i194 = getelementptr inbounds %struct.net_device, ptr %lowerdev.0, i32 0, i32 86
  %86 = ptrtoint ptr %dev_addr.i194 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev_addr.i194, align 64
  call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef %87, i32 noundef 6) #19
  br label %land.lhs.true63

land.lhs.true63:                                  ; preds = %if.end60, %if.end54.land.lhs.true63_crit_edge
  %arrayidx64 = getelementptr ptr, ptr %data, i32 3
  %88 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx64, align 4
  %tobool65.not = icmp eq ptr %89, null
  br i1 %tobool65.not, label %land.lhs.true63.land.lhs.true79_crit_edge, label %if.then66

land.lhs.true63.land.lhs.true79_crit_edge:        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #21
  br label %land.lhs.true79

if.then66:                                        ; preds = %land.lhs.true63
  %90 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %91)
  %cmp68.not = icmp eq i32 %91, 16
  br i1 %cmp68.not, label %if.end70, label %if.then66.destroy_macvlan_port_crit_edge

if.then66.destroy_macvlan_port_crit_edge:         ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #21
  br label %destroy_macvlan_port

if.end70:                                         ; preds = %if.then66
  %add.ptr.i.i195 = getelementptr i8, ptr %89, i32 4
  %92 = ptrtoint ptr %add.ptr.i.i195 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %add.ptr.i.i195, align 4
  %call73 = call fastcc i32 @macvlan_changelink_sources(ptr noundef %add.ptr.i, i32 noundef %93, ptr noundef nonnull %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end70.land.lhs.true79_crit_edge, label %if.end70.destroy_macvlan_port_crit_edge

if.end70.destroy_macvlan_port_crit_edge:          ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #21
  br label %destroy_macvlan_port

if.end70.land.lhs.true79_crit_edge:               ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #21
  br label %land.lhs.true79

if.end77:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #21
  %bc_queue_len_req = getelementptr i8, ptr %dev, i32 2396
  %94 = ptrtoint ptr %bc_queue_len_req to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 1000, ptr %bc_queue_len_req, align 4
  br label %if.end86

land.lhs.true79:                                  ; preds = %if.end70.land.lhs.true79_crit_edge, %land.lhs.true63.land.lhs.true79_crit_edge
  %bc_queue_len_req215 = getelementptr i8, ptr %dev, i32 2396
  %95 = ptrtoint ptr %bc_queue_len_req215 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 1000, ptr %bc_queue_len_req215, align 4
  %arrayidx80 = getelementptr ptr, ptr %data, i32 7
  %96 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx80, align 4
  %tobool81.not = icmp eq ptr %97, null
  br i1 %tobool81.not, label %land.lhs.true79.if.end86_crit_edge, label %if.then82

land.lhs.true79.if.end86_crit_edge:               ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end86

if.then82:                                        ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #21
  %add.ptr.i.i196 = getelementptr i8, ptr %97, i32 4
  %98 = ptrtoint ptr %add.ptr.i.i196 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %add.ptr.i.i196, align 4
  %100 = ptrtoint ptr %bc_queue_len_req215 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %bc_queue_len_req215, align 4
  br label %if.end86

if.end86:                                         ; preds = %if.then82, %land.lhs.true79.if.end86_crit_edge, %if.end77
  %call87 = call i32 @register_netdevice(ptr noundef %dev) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %cmp88 = icmp slt i32 %call87, 0
  br i1 %cmp88, label %if.end86.destroy_macvlan_port_crit_edge, label %if.end90

if.end86.destroy_macvlan_port_crit_edge:          ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #21
  br label %destroy_macvlan_port

if.end90:                                         ; preds = %if.end86
  %priv_flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %101 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %priv_flags, align 16
  %or = or i64 %102, 65536
  store i64 %or, ptr %priv_flags, align 16
  %call91 = call i32 @netdev_upper_dev_link(ptr noundef %lowerdev.0, ptr noundef %dev, ptr noundef %extack) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.end94, label %unregister_netdev

if.end94:                                         ; preds = %if.end90
  %list = getelementptr i8, ptr %dev, i32 2308
  %vlans = getelementptr inbounds %struct.macvlan_port, ptr %60, i32 0, i32 2
  call fastcc void @list_add_tail_rcu(ptr noundef %list, ptr noundef %vlans)
  %103 = ptrtoint ptr %port38 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %port38, align 4
  %vlans.i197 = getelementptr inbounds %struct.macvlan_port, ptr %104, i32 0, i32 2
  %105 = ptrtoint ptr %vlans.i197 to i32
  call void @__asan_load4_noabort(i32 %105)
  %.pn15.i = load ptr, ptr %vlans.i197, align 4
  %cmp.not16.i = icmp eq ptr %.pn15.i, %vlans.i197
  br i1 %cmp.not16.i, label %if.end94.update_port_bc_queue_len.exit_crit_edge, label %if.end94.for.body.i_crit_edge

if.end94.for.body.i_crit_edge:                    ; preds = %if.end94
  br label %for.body.i

if.end94.update_port_bc_queue_len.exit_crit_edge: ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #21
  br label %update_port_bc_queue_len.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end94.for.body.i_crit_edge
  %.pn18.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn15.i, %if.end94.for.body.i_crit_edge ]
  %max_bc_queue_len_req.017.i = phi i32 [ %108, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end94.for.body.i_crit_edge ]
  %bc_queue_len_req.i = getelementptr i8, ptr %.pn18.i, i32 88
  %106 = ptrtoint ptr %bc_queue_len_req.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %bc_queue_len_req.i, align 4
  %108 = call i32 @llvm.umax.i32(i32 %107, i32 %max_bc_queue_len_req.017.i) #19
  %109 = ptrtoint ptr %.pn18.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %.pn.i = load ptr, ptr %.pn18.i, align 4
  %cmp.not.i198 = icmp eq ptr %.pn.i, %vlans.i197
  br i1 %cmp.not.i198, label %for.body.i.update_port_bc_queue_len.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i

for.body.i.update_port_bc_queue_len.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %update_port_bc_queue_len.exit

update_port_bc_queue_len.exit:                    ; preds = %for.body.i.update_port_bc_queue_len.exit_crit_edge, %if.end94.update_port_bc_queue_len.exit_crit_edge
  %max_bc_queue_len_req.0.lcssa.i = phi i32 [ 0, %if.end94.update_port_bc_queue_len.exit_crit_edge ], [ %108, %for.body.i.update_port_bc_queue_len.exit_crit_edge ]
  %bc_queue_len_used.i199 = getelementptr inbounds %struct.macvlan_port, ptr %104, i32 0, i32 5
  %110 = ptrtoint ptr %bc_queue_len_used.i199 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %max_bc_queue_len_req.0.lcssa.i, ptr %bc_queue_len_used.i199, align 4
  call void @netif_stacked_transfer_operstate(ptr noundef %lowerdev.0, ptr noundef %dev) #19
  call void @linkwatch_fire_event(ptr noundef %dev) #19
  br label %cleanup

unregister_netdev:                                ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #21
  call void @unregister_netdevice_queue(ptr noundef %dev, ptr noundef null) #19
  br label %cleanup

destroy_macvlan_port:                             ; preds = %if.end86.destroy_macvlan_port_crit_edge, %if.end70.destroy_macvlan_port_crit_edge, %if.then66.destroy_macvlan_port_crit_edge, %if.then57.destroy_macvlan_port_crit_edge, %macvlan_port_get_rtnl.exit.destroy_macvlan_port_crit_edge
  %err.0 = phi i32 [ %call73, %if.end70.destroy_macvlan_port_crit_edge ], [ %call87, %if.end86.destroy_macvlan_port_crit_edge ], [ -22, %macvlan_port_get_rtnl.exit.destroy_macvlan_port_crit_edge ], [ -22, %if.then57.destroy_macvlan_port_crit_edge ], [ -22, %if.then66.destroy_macvlan_port_crit_edge ]
  br i1 %tobool.i180.not, label %land.lhs.true97, label %destroy_macvlan_port.cleanup_crit_edge

destroy_macvlan_port.cleanup_crit_edge:           ; preds = %destroy_macvlan_port
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

land.lhs.true97:                                  ; preds = %destroy_macvlan_port
  %call.i200 = call zeroext i1 @lockdep_rtnl_is_held() #19
  br i1 %call.i200, label %land.lhs.true97.macvlan_port_get_rtnl.exit208_crit_edge, label %land.lhs.true.i203

land.lhs.true97.macvlan_port_get_rtnl.exit208_crit_edge: ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #21
  br label %macvlan_port_get_rtnl.exit208

land.lhs.true.i203:                               ; preds = %land.lhs.true97
  %call1.i201 = call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i201)
  %tobool.not.i202 = icmp eq i32 %call1.i201, 0
  br i1 %tobool.not.i202, label %land.lhs.true.i203.macvlan_port_get_rtnl.exit208_crit_edge, label %land.lhs.true2.i205

land.lhs.true.i203.macvlan_port_get_rtnl.exit208_crit_edge: ; preds = %land.lhs.true.i203
  call void @__sanitizer_cov_trace_pc() #21
  br label %macvlan_port_get_rtnl.exit208

land.lhs.true2.i205:                              ; preds = %land.lhs.true.i203
  %.b4.i204 = load i1, ptr @macvlan_port_get_rtnl.__warned, align 1
  br i1 %.b4.i204, label %land.lhs.true2.i205.macvlan_port_get_rtnl.exit208_crit_edge, label %if.then.i206

land.lhs.true2.i205.macvlan_port_get_rtnl.exit208_crit_edge: ; preds = %land.lhs.true2.i205
  call void @__sanitizer_cov_trace_pc() #21
  br label %macvlan_port_get_rtnl.exit208

if.then.i206:                                     ; preds = %land.lhs.true2.i205
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @macvlan_port_get_rtnl.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 119, ptr noundef nonnull @.str.16) #19
  br label %macvlan_port_get_rtnl.exit208

macvlan_port_get_rtnl.exit208:                    ; preds = %if.then.i206, %land.lhs.true2.i205.macvlan_port_get_rtnl.exit208_crit_edge, %land.lhs.true.i203.macvlan_port_get_rtnl.exit208_crit_edge, %land.lhs.true97.macvlan_port_get_rtnl.exit208_crit_edge
  %111 = ptrtoint ptr %rx_handler_data.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %rx_handler_data.i, align 4
  %tobool99.not = icmp eq ptr %112, null
  br i1 %tobool99.not, label %macvlan_port_get_rtnl.exit208.cleanup_crit_edge, label %if.then100

macvlan_port_get_rtnl.exit208.cleanup_crit_edge:  ; preds = %macvlan_port_get_rtnl.exit208
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then100:                                       ; preds = %macvlan_port_get_rtnl.exit208
  call void @__sanitizer_cov_trace_pc() #21
  %113 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %60, align 4
  call fastcc void @macvlan_port_destroy(ptr noundef %114)
  br label %cleanup

cleanup:                                          ; preds = %if.then100, %macvlan_port_get_rtnl.exit208.cleanup_crit_edge, %destroy_macvlan_port.cleanup_crit_edge, %unregister_netdev, %update_port_bc_queue_len.exit, %macvlan_port_create.exit.cleanup_crit_edge, %if.end3.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %if.then26.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call91, %unregister_netdev ], [ 0, %update_port_bc_queue_len.exit ], [ -22, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ %call26.i, %macvlan_port_create.exit.cleanup_crit_edge ], [ %err.0, %if.then100 ], [ %err.0, %macvlan_port_get_rtnl.exit208.cleanup_crit_edge ], [ %err.0, %destroy_macvlan_port.cleanup_crit_edge ], [ -12, %if.end3.i.cleanup_crit_edge ], [ -16, %if.end.i.cleanup_crit_edge ], [ -22, %if.then26.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @macvlan_changelink_sources(ptr noundef %vlan, i32 noundef %mode, ptr nocapture noundef readonly %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr ptr, ptr %data, i32 4
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %spec.select = select i1 %tobool.not, ptr null, ptr %add.ptr.i
  %2 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mode, label %entry.cleanup_crit_edge [
    i32 0, label %if.then3
    i32 1, label %if.then9
    i32 2, label %if.then19
    i32 3, label %if.then22
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then3:                                         ; preds = %entry
  %tobool4.not = icmp eq ptr %spec.select, null
  br i1 %tobool4.not, label %if.then3.cleanup_crit_edge, label %if.end6

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end6:                                          ; preds = %if.then3
  %port1.i = getelementptr inbounds %struct.macvlan_dev, ptr %vlan, i32 0, i32 3
  %3 = ptrtoint ptr %port1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %port1.i, align 4
  %call.i = tail call fastcc ptr @macvlan_hash_lookup_source(ptr noundef %vlan, ptr noundef nonnull %spec.select) #19
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end.i:                                         ; preds = %if.end6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3264, i32 noundef 28) #22
  %tobool4.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not.i, label %if.end.i.cleanup_crit_edge, label %if.end6.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end6.i:                                        ; preds = %if.end.i
  %addr7.i = getelementptr inbounds %struct.macvlan_source_entry, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %spec.select to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %spec.select, align 4
  %8 = ptrtoint ptr %addr7.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %addr7.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %spec.select, i32 4
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr %struct.macvlan_source_entry, ptr %call7.i.i, i32 0, i32 2, i32 4
  %11 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %add.ptr1.i.i, align 8
  %vlan8.i = getelementptr inbounds %struct.macvlan_source_entry, ptr %call7.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %vlan8.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %vlan, ptr %vlan8.i, align 8
  %13 = load i64, ptr %spec.select, align 1
  %shr.i.i = lshr i64 %13, 16
  %conv.i.i.i = trunc i64 %shr.i.i to i32
  %shr.i.i.i = lshr i64 %13, 48
  %conv1.i.i.i = trunc i64 %shr.i.i.i to i32
  %mul.i.i.i.i = mul i32 %conv1.i.i.i, 1640531527
  %xor.i.i.i = xor i32 %mul.i.i.i.i, %conv.i.i.i
  %mul.i.i.i.i.i = mul i32 %xor.i.i.i, 1640531527
  %shr.i.i.i.i = lshr i32 %mul.i.i.i.i.i, 24
  %arrayidx.i = getelementptr %struct.macvlan_port, ptr %4, i32 0, i32 8, i32 %shr.i.i.i.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %16 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %call7.i.i, align 8
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %call7.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %arrayidx.i, ptr %pprev.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !96
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %call7.i.i, ptr %arrayidx.i, align 4
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %if.end6.i.hlist_add_head_rcu.exit.i_crit_edge, label %do.body49.i.i

if.end6.i.hlist_add_head_rcu.exit.i_crit_edge:    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %hlist_add_head_rcu.exit.i

do.body49.i.i:                                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #21
  %pprev51.i.i = getelementptr inbounds %struct.hlist_node, ptr %15, i32 0, i32 1
  %19 = ptrtoint ptr %pprev51.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %call7.i.i, ptr %pprev51.i.i, align 4
  br label %hlist_add_head_rcu.exit.i

hlist_add_head_rcu.exit.i:                        ; preds = %do.body49.i.i, %if.end6.i.hlist_add_head_rcu.exit.i_crit_edge
  %macaddr_count.i = getelementptr inbounds %struct.macvlan_dev, ptr %vlan, i32 0, i32 11
  %20 = ptrtoint ptr %macaddr_count.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %macaddr_count.i, align 8
  %inc.i = add i32 %21, 1
  store i32 %inc.i, ptr %macaddr_count.i, align 8
  br label %cleanup

if.then9:                                         ; preds = %entry
  %tobool10.not = icmp eq ptr %spec.select, null
  br i1 %tobool10.not, label %if.then9.cleanup_crit_edge, label %if.end12

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end12:                                         ; preds = %if.then9
  %call13 = tail call fastcc ptr @macvlan_hash_lookup_source(ptr noundef %vlan, ptr noundef nonnull %spec.select)
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end12.cleanup_crit_edge, label %if.then15

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then15:                                        ; preds = %if.end12
  %22 = ptrtoint ptr %call13 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call13, align 4
  %pprev2.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %call13, i32 0, i32 1
  %24 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pprev2.i.i.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %23, ptr %25, align 4
  %tobool.not.i.i.i = icmp eq ptr %23, null
  br i1 %tobool.not.i.i.i, label %if.then15.macvlan_hash_del_source.exit_crit_edge, label %do.body13.i.i.i

if.then15.macvlan_hash_del_source.exit_crit_edge: ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #21
  br label %macvlan_hash_del_source.exit

do.body13.i.i.i:                                  ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #21
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %23, i32 0, i32 1
  %27 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %pprev14.i.i.i, align 4
  br label %macvlan_hash_del_source.exit

macvlan_hash_del_source.exit:                     ; preds = %do.body13.i.i.i, %if.then15.macvlan_hash_del_source.exit_crit_edge
  %28 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i, align 4
  %rcu.i = getelementptr inbounds %struct.macvlan_source_entry, ptr %call13, i32 0, i32 3
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i, ptr noundef nonnull inttoptr (i32 20 to ptr)) #19
  %macaddr_count = getelementptr inbounds %struct.macvlan_dev, ptr %vlan, i32 0, i32 11
  %29 = ptrtoint ptr %macaddr_count to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %macaddr_count, align 8
  %dec = add i32 %30, -1
  store i32 %dec, ptr %macaddr_count, align 8
  br label %cleanup

if.then19:                                        ; preds = %entry
  %port = getelementptr inbounds %struct.macvlan_dev, ptr %vlan, i32 0, i32 3
  %31 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %port, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc24.i.for.body.i_crit_edge, %if.then19
  %i.039.i = phi i32 [ 0, %if.then19 ], [ %inc.i89, %for.inc24.i.for.body.i_crit_edge ]
  %arrayidx.i88 = getelementptr %struct.macvlan_port, ptr %32, i32 0, i32 8, i32 %i.039.i
  %33 = ptrtoint ptr %arrayidx.i88 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i88, align 4
  %tobool5.not37.i = icmp eq ptr %34, null
  br i1 %tobool5.not37.i, label %for.body.i.for.inc24.i_crit_edge, label %for.body.i.land.rhs6.i_crit_edge

for.body.i.land.rhs6.i_crit_edge:                 ; preds = %for.body.i
  br label %land.rhs6.i

for.body.i.for.inc24.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc24.i

land.rhs6.i:                                      ; preds = %for.inc.i.land.rhs6.i_crit_edge, %for.body.i.land.rhs6.i_crit_edge
  %entry1.138.i = phi ptr [ %36, %for.inc.i.land.rhs6.i_crit_edge ], [ %34, %for.body.i.land.rhs6.i_crit_edge ]
  %35 = ptrtoint ptr %entry1.138.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %entry1.138.i, align 4
  %vlan12.i = getelementptr inbounds %struct.macvlan_source_entry, ptr %entry1.138.i, i32 0, i32 1
  %37 = ptrtoint ptr %vlan12.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %vlan12.i, align 4
  %cmp13.i = icmp eq ptr %38, %vlan
  br i1 %cmp13.i, label %if.then.i, label %land.rhs6.i.for.inc.i_crit_edge

land.rhs6.i.for.inc.i_crit_edge:                  ; preds = %land.rhs6.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.i

if.then.i:                                        ; preds = %land.rhs6.i
  %pprev2.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %entry1.138.i, i32 0, i32 1
  %39 = ptrtoint ptr %pprev2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pprev2.i.i.i.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %36, ptr %40, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %36, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.macvlan_hash_del_source.exit.i_crit_edge, label %do.body13.i.i.i.i

if.then.i.macvlan_hash_del_source.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %macvlan_hash_del_source.exit.i

do.body13.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #21
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %36, i32 0, i32 1
  %42 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %40, ptr %pprev14.i.i.i.i, align 4
  br label %macvlan_hash_del_source.exit.i

macvlan_hash_del_source.exit.i:                   ; preds = %do.body13.i.i.i.i, %if.then.i.macvlan_hash_del_source.exit.i_crit_edge
  %43 = ptrtoint ptr %pprev2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i.i, align 4
  %rcu.i.i = getelementptr inbounds %struct.macvlan_source_entry, ptr %entry1.138.i, i32 0, i32 3
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i.i, ptr noundef nonnull inttoptr (i32 20 to ptr)) #19
  br label %for.inc.i

for.inc.i:                                        ; preds = %macvlan_hash_del_source.exit.i, %land.rhs6.i.for.inc.i_crit_edge
  %tobool5.not.i = icmp eq ptr %36, null
  br i1 %tobool5.not.i, label %for.inc.i.for.inc24.i_crit_edge, label %for.inc.i.land.rhs6.i_crit_edge

for.inc.i.land.rhs6.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %land.rhs6.i

for.inc.i.for.inc24.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc24.i

for.inc24.i:                                      ; preds = %for.inc.i.for.inc24.i_crit_edge, %for.body.i.for.inc24.i_crit_edge
  %inc.i89 = add nuw nsw i32 %i.039.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i89, 256
  br i1 %exitcond.not.i, label %macvlan_flush_sources.exit, label %for.inc24.i.for.body.i_crit_edge

for.inc24.i.for.body.i_crit_edge:                 ; preds = %for.inc24.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i

macvlan_flush_sources.exit:                       ; preds = %for.inc24.i
  call void @__sanitizer_cov_trace_pc() #21
  %macaddr_count.i90 = getelementptr inbounds %struct.macvlan_dev, ptr %vlan, i32 0, i32 11
  %44 = ptrtoint ptr %macaddr_count.i90 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %macaddr_count.i90, align 8
  br label %cleanup

if.then22:                                        ; preds = %entry
  %port23 = getelementptr inbounds %struct.macvlan_dev, ptr %vlan, i32 0, i32 3
  %45 = ptrtoint ptr %port23 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %port23, align 4
  br label %for.body.i94

for.body.i94:                                     ; preds = %for.inc24.i110.for.body.i94_crit_edge, %if.then22
  %i.039.i91 = phi i32 [ 0, %if.then22 ], [ %inc.i108, %for.inc24.i110.for.body.i94_crit_edge ]
  %arrayidx.i92 = getelementptr %struct.macvlan_port, ptr %46, i32 0, i32 8, i32 %i.039.i91
  %47 = ptrtoint ptr %arrayidx.i92 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.i92, align 4
  %tobool5.not37.i93 = icmp eq ptr %48, null
  br i1 %tobool5.not37.i93, label %for.body.i94.for.inc24.i110_crit_edge, label %for.body.i94.land.rhs6.i98_crit_edge

for.body.i94.land.rhs6.i98_crit_edge:             ; preds = %for.body.i94
  br label %land.rhs6.i98

for.body.i94.for.inc24.i110_crit_edge:            ; preds = %for.body.i94
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc24.i110

land.rhs6.i98:                                    ; preds = %for.inc.i107.land.rhs6.i98_crit_edge, %for.body.i94.land.rhs6.i98_crit_edge
  %entry1.138.i95 = phi ptr [ %50, %for.inc.i107.land.rhs6.i98_crit_edge ], [ %48, %for.body.i94.land.rhs6.i98_crit_edge ]
  %49 = ptrtoint ptr %entry1.138.i95 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %entry1.138.i95, align 4
  %vlan12.i96 = getelementptr inbounds %struct.macvlan_source_entry, ptr %entry1.138.i95, i32 0, i32 1
  %51 = ptrtoint ptr %vlan12.i96 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %vlan12.i96, align 4
  %cmp13.i97 = icmp eq ptr %52, %vlan
  br i1 %cmp13.i97, label %if.then.i101, label %land.rhs6.i98.for.inc.i107_crit_edge

land.rhs6.i98.for.inc.i107_crit_edge:             ; preds = %land.rhs6.i98
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.i107

if.then.i101:                                     ; preds = %land.rhs6.i98
  %pprev2.i.i.i.i99 = getelementptr inbounds %struct.hlist_node, ptr %entry1.138.i95, i32 0, i32 1
  %53 = ptrtoint ptr %pprev2.i.i.i.i99 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pprev2.i.i.i.i99, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %50, ptr %54, align 4
  %tobool.not.i.i.i.i100 = icmp eq ptr %50, null
  br i1 %tobool.not.i.i.i.i100, label %if.then.i101.macvlan_hash_del_source.exit.i105_crit_edge, label %do.body13.i.i.i.i103

if.then.i101.macvlan_hash_del_source.exit.i105_crit_edge: ; preds = %if.then.i101
  call void @__sanitizer_cov_trace_pc() #21
  br label %macvlan_hash_del_source.exit.i105

do.body13.i.i.i.i103:                             ; preds = %if.then.i101
  call void @__sanitizer_cov_trace_pc() #21
  %pprev14.i.i.i.i102 = getelementptr inbounds %struct.hlist_node, ptr %50, i32 0, i32 1
  %56 = ptrtoint ptr %pprev14.i.i.i.i102 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %54, ptr %pprev14.i.i.i.i102, align 4
  br label %macvlan_hash_del_source.exit.i105

macvlan_hash_del_source.exit.i105:                ; preds = %do.body13.i.i.i.i103, %if.then.i101.macvlan_hash_del_source.exit.i105_crit_edge
  %57 = ptrtoint ptr %pprev2.i.i.i.i99 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i.i99, align 4
  %rcu.i.i104 = getelementptr inbounds %struct.macvlan_source_entry, ptr %entry1.138.i95, i32 0, i32 3
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i.i104, ptr noundef nonnull inttoptr (i32 20 to ptr)) #19
  br label %for.inc.i107

for.inc.i107:                                     ; preds = %macvlan_hash_del_source.exit.i105, %land.rhs6.i98.for.inc.i107_crit_edge
  %tobool5.not.i106 = icmp eq ptr %50, null
  br i1 %tobool5.not.i106, label %for.inc.i107.for.inc24.i110_crit_edge, label %for.inc.i107.land.rhs6.i98_crit_edge

for.inc.i107.land.rhs6.i98_crit_edge:             ; preds = %for.inc.i107
  call void @__sanitizer_cov_trace_pc() #21
  br label %land.rhs6.i98

for.inc.i107.for.inc24.i110_crit_edge:            ; preds = %for.inc.i107
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc24.i110

for.inc24.i110:                                   ; preds = %for.inc.i107.for.inc24.i110_crit_edge, %for.body.i94.for.inc24.i110_crit_edge
  %inc.i108 = add nuw nsw i32 %i.039.i91, 1
  %exitcond.not.i109 = icmp eq i32 %inc.i108, 256
  br i1 %exitcond.not.i109, label %macvlan_flush_sources.exit112, label %for.inc24.i110.for.body.i94_crit_edge

for.inc24.i110.for.body.i94_crit_edge:            ; preds = %for.inc24.i110
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i94

macvlan_flush_sources.exit112:                    ; preds = %for.inc24.i110
  %macaddr_count.i111 = getelementptr inbounds %struct.macvlan_dev, ptr %vlan, i32 0, i32 11
  %58 = ptrtoint ptr %macaddr_count.i111 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %macaddr_count.i111, align 8
  %tobool24.not = icmp eq ptr %spec.select, null
  br i1 %tobool24.not, label %macvlan_flush_sources.exit112.if.end30_crit_edge, label %if.then25

macvlan_flush_sources.exit112.if.end30_crit_edge: ; preds = %macvlan_flush_sources.exit112
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end30

if.then25:                                        ; preds = %macvlan_flush_sources.exit112
  %59 = ptrtoint ptr %port23 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %port23, align 4
  %call.i114 = tail call fastcc ptr @macvlan_hash_lookup_source(ptr noundef %vlan, ptr noundef nonnull %spec.select) #19
  %tobool.not.i115 = icmp eq ptr %call.i114, null
  br i1 %tobool.not.i115, label %if.end.i118, label %if.then25.if.end30_crit_edge

if.then25.if.end30_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end30

if.end.i118:                                      ; preds = %if.then25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %61 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i116 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %61, i32 noundef 3264, i32 noundef 28) #22
  %tobool4.not.i117 = icmp eq ptr %call7.i.i116, null
  br i1 %tobool4.not.i117, label %if.end.i118.cleanup_crit_edge, label %if.end6.i134

if.end.i118.cleanup_crit_edge:                    ; preds = %if.end.i118
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end6.i134:                                     ; preds = %if.end.i118
  %addr7.i119 = getelementptr inbounds %struct.macvlan_source_entry, ptr %call7.i.i116, i32 0, i32 2
  %62 = ptrtoint ptr %spec.select to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %spec.select, align 4
  %64 = ptrtoint ptr %addr7.i119 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %addr7.i119, align 4
  %add.ptr.i.i120 = getelementptr i8, ptr %spec.select, i32 4
  %65 = ptrtoint ptr %add.ptr.i.i120 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %add.ptr.i.i120, align 2
  %add.ptr1.i.i121 = getelementptr %struct.macvlan_source_entry, ptr %call7.i.i116, i32 0, i32 2, i32 4
  %67 = ptrtoint ptr %add.ptr1.i.i121 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %66, ptr %add.ptr1.i.i121, align 8
  %vlan8.i122 = getelementptr inbounds %struct.macvlan_source_entry, ptr %call7.i.i116, i32 0, i32 1
  %68 = ptrtoint ptr %vlan8.i122 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %vlan, ptr %vlan8.i122, align 8
  %69 = load i64, ptr %spec.select, align 1
  %shr.i.i123 = lshr i64 %69, 16
  %conv.i.i.i124 = trunc i64 %shr.i.i123 to i32
  %shr.i.i.i125 = lshr i64 %69, 48
  %conv1.i.i.i126 = trunc i64 %shr.i.i.i125 to i32
  %mul.i.i.i.i127 = mul i32 %conv1.i.i.i126, 1640531527
  %xor.i.i.i128 = xor i32 %mul.i.i.i.i127, %conv.i.i.i124
  %mul.i.i.i.i.i129 = mul i32 %xor.i.i.i128, 1640531527
  %shr.i.i.i.i130 = lshr i32 %mul.i.i.i.i.i129, 24
  %arrayidx.i131 = getelementptr %struct.macvlan_port, ptr %60, i32 0, i32 8, i32 %shr.i.i.i.i130
  %70 = ptrtoint ptr %arrayidx.i131 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx.i131, align 4
  %72 = ptrtoint ptr %call7.i.i116 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %71, ptr %call7.i.i116, align 8
  %pprev.i.i132 = getelementptr inbounds %struct.hlist_node, ptr %call7.i.i116, i32 0, i32 1
  %73 = ptrtoint ptr %pprev.i.i132 to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %arrayidx.i131, ptr %pprev.i.i132, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !96
  %74 = ptrtoint ptr %arrayidx.i131 to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr %call7.i.i116, ptr %arrayidx.i131, align 4
  %tobool.not.i.i133 = icmp eq ptr %71, null
  br i1 %tobool.not.i.i133, label %if.end6.i134.hlist_add_head_rcu.exit.i139_crit_edge, label %do.body49.i.i136

if.end6.i134.hlist_add_head_rcu.exit.i139_crit_edge: ; preds = %if.end6.i134
  call void @__sanitizer_cov_trace_pc() #21
  br label %hlist_add_head_rcu.exit.i139

do.body49.i.i136:                                 ; preds = %if.end6.i134
  call void @__sanitizer_cov_trace_pc() #21
  %pprev51.i.i135 = getelementptr inbounds %struct.hlist_node, ptr %71, i32 0, i32 1
  %75 = ptrtoint ptr %pprev51.i.i135 to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %call7.i.i116, ptr %pprev51.i.i135, align 4
  br label %hlist_add_head_rcu.exit.i139

hlist_add_head_rcu.exit.i139:                     ; preds = %do.body49.i.i136, %if.end6.i134.hlist_add_head_rcu.exit.i139_crit_edge
  %76 = ptrtoint ptr %macaddr_count.i111 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %macaddr_count.i111, align 8
  %inc.i138 = add i32 %77, 1
  store i32 %inc.i138, ptr %macaddr_count.i111, align 8
  br label %if.end30

if.end30:                                         ; preds = %hlist_add_head_rcu.exit.i139, %if.then25.if.end30_crit_edge, %macvlan_flush_sources.exit112.if.end30_crit_edge
  %arrayidx31 = getelementptr ptr, ptr %data, i32 5
  %78 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx31, align 4
  %tobool32.not = icmp eq ptr %79, null
  br i1 %tobool32.not, label %if.end30.cleanup_crit_edge, label %if.end34

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end34:                                         ; preds = %if.end30
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %79, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %81)
  %cmp.i183 = icmp ugt i16 %81, 7
  br i1 %cmp.i183, label %land.lhs.true.i.preheader, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

land.lhs.true.i.preheader:                        ; preds = %if.end34
  %conv.i = zext i16 %81 to i32
  %sub.i = add nsw i32 %conv.i, -4
  %add.ptr.i142 = getelementptr i8, ptr %79, i32 4
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %for.inc.land.lhs.true.i_crit_edge, %land.lhs.true.i.preheader
  %nla.0185 = phi ptr [ %add.ptr.i176, %for.inc.land.lhs.true.i_crit_edge ], [ %add.ptr.i142, %land.lhs.true.i.preheader ]
  %rem.0184 = phi i32 [ %sub1.i, %for.inc.land.lhs.true.i_crit_edge ], [ %sub.i, %land.lhs.true.i.preheader ]
  %82 = ptrtoint ptr %nla.0185 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %nla.0185, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %83)
  %cmp1.i = icmp ult i16 %83, 4
  %conv.i143 = zext i16 %83 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.0184, i32 %conv.i143)
  %cmp5.i.not = icmp ult i32 %rem.0184, %conv.i143
  %or.cond = select i1 %cmp1.i, i1 true, i1 %cmp5.i.not
  br i1 %or.cond, label %land.lhs.true.i.cleanup_crit_edge, label %for.body

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

for.body:                                         ; preds = %land.lhs.true.i
  %add.ptr.i144 = getelementptr i8, ptr %nla.0185, i32 4
  %84 = ptrtoint ptr %port23 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %port23, align 4
  %call.i146 = tail call fastcc ptr @macvlan_hash_lookup_source(ptr noundef %vlan, ptr noundef %add.ptr.i144) #19
  %tobool.not.i147 = icmp eq ptr %call.i146, null
  br i1 %tobool.not.i147, label %if.end.i150, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc

if.end.i150:                                      ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %86 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i148 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %86, i32 noundef 3264, i32 noundef 28) #22
  %tobool4.not.i149 = icmp eq ptr %call7.i.i148, null
  br i1 %tobool4.not.i149, label %if.end.i150.cleanup_crit_edge, label %if.end6.i166

if.end.i150.cleanup_crit_edge:                    ; preds = %if.end.i150
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end6.i166:                                     ; preds = %if.end.i150
  %addr7.i151 = getelementptr inbounds %struct.macvlan_source_entry, ptr %call7.i.i148, i32 0, i32 2
  %87 = ptrtoint ptr %add.ptr.i144 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %add.ptr.i144, align 4
  %89 = ptrtoint ptr %addr7.i151 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %addr7.i151, align 4
  %add.ptr.i.i152 = getelementptr i8, ptr %nla.0185, i32 8
  %90 = ptrtoint ptr %add.ptr.i.i152 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %add.ptr.i.i152, align 2
  %add.ptr1.i.i153 = getelementptr %struct.macvlan_source_entry, ptr %call7.i.i148, i32 0, i32 2, i32 4
  %92 = ptrtoint ptr %add.ptr1.i.i153 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %91, ptr %add.ptr1.i.i153, align 8
  %vlan8.i154 = getelementptr inbounds %struct.macvlan_source_entry, ptr %call7.i.i148, i32 0, i32 1
  %93 = ptrtoint ptr %vlan8.i154 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %vlan, ptr %vlan8.i154, align 8
  %94 = load i64, ptr %add.ptr.i144, align 1
  %shr.i.i155 = lshr i64 %94, 16
  %conv.i.i.i156 = trunc i64 %shr.i.i155 to i32
  %shr.i.i.i157 = lshr i64 %94, 48
  %conv1.i.i.i158 = trunc i64 %shr.i.i.i157 to i32
  %mul.i.i.i.i159 = mul i32 %conv1.i.i.i158, 1640531527
  %xor.i.i.i160 = xor i32 %mul.i.i.i.i159, %conv.i.i.i156
  %mul.i.i.i.i.i161 = mul i32 %xor.i.i.i160, 1640531527
  %shr.i.i.i.i162 = lshr i32 %mul.i.i.i.i.i161, 24
  %arrayidx.i163 = getelementptr %struct.macvlan_port, ptr %85, i32 0, i32 8, i32 %shr.i.i.i.i162
  %95 = ptrtoint ptr %arrayidx.i163 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx.i163, align 4
  %97 = ptrtoint ptr %call7.i.i148 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %96, ptr %call7.i.i148, align 8
  %pprev.i.i164 = getelementptr inbounds %struct.hlist_node, ptr %call7.i.i148, i32 0, i32 1
  %98 = ptrtoint ptr %pprev.i.i164 to i32
  call void @__asan_store4_noabort(i32 %98)
  store volatile ptr %arrayidx.i163, ptr %pprev.i.i164, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !96
  %99 = ptrtoint ptr %arrayidx.i163 to i32
  call void @__asan_store4_noabort(i32 %99)
  store volatile ptr %call7.i.i148, ptr %arrayidx.i163, align 4
  %tobool.not.i.i165 = icmp eq ptr %96, null
  br i1 %tobool.not.i.i165, label %if.end6.i166.hlist_add_head_rcu.exit.i171_crit_edge, label %do.body49.i.i168

if.end6.i166.hlist_add_head_rcu.exit.i171_crit_edge: ; preds = %if.end6.i166
  call void @__sanitizer_cov_trace_pc() #21
  br label %hlist_add_head_rcu.exit.i171

do.body49.i.i168:                                 ; preds = %if.end6.i166
  call void @__sanitizer_cov_trace_pc() #21
  %pprev51.i.i167 = getelementptr inbounds %struct.hlist_node, ptr %96, i32 0, i32 1
  %100 = ptrtoint ptr %pprev51.i.i167 to i32
  call void @__asan_store4_noabort(i32 %100)
  store volatile ptr %call7.i.i148, ptr %pprev51.i.i167, align 4
  br label %hlist_add_head_rcu.exit.i171

hlist_add_head_rcu.exit.i171:                     ; preds = %do.body49.i.i168, %if.end6.i166.hlist_add_head_rcu.exit.i171_crit_edge
  %101 = ptrtoint ptr %macaddr_count.i111 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %macaddr_count.i111, align 8
  %inc.i170 = add i32 %102, 1
  store i32 %inc.i170, ptr %macaddr_count.i111, align 8
  br label %for.inc

for.inc:                                          ; preds = %hlist_add_head_rcu.exit.i171, %for.body.for.inc_crit_edge
  %103 = ptrtoint ptr %nla.0185 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %nla.0185, align 2
  %conv.i174 = zext i16 %104 to i32
  %sub.i175 = add nuw nsw i32 %conv.i174, 3
  %and.i = and i32 %sub.i175, 131068
  %sub1.i = sub nsw i32 %rem.0184, %and.i
  %add.ptr.i176 = getelementptr i8, ptr %nla.0185, i32 %and.i
  %cmp.i = icmp sgt i32 %sub1.i, 3
  br i1 %cmp.i, label %for.inc.land.lhs.true.i_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

for.inc.land.lhs.true.i_crit_edge:                ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #21
  br label %land.lhs.true.i

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end.i150.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %if.end.i118.cleanup_crit_edge, %macvlan_flush_sources.exit, %macvlan_hash_del_source.exit, %if.end12.cleanup_crit_edge, %if.then9.cleanup_crit_edge, %hlist_add_head_rcu.exit.i, %if.end.i.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then3.cleanup_crit_edge ], [ -22, %if.then9.cleanup_crit_edge ], [ 0, %if.end30.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %macvlan_hash_del_source.exit ], [ 0, %if.end12.cleanup_crit_edge ], [ 0, %macvlan_flush_sources.exit ], [ 0, %hlist_add_head_rcu.exit.i ], [ 0, %if.end6.cleanup_crit_edge ], [ -12, %if.end.i.cleanup_crit_edge ], [ -12, %if.end.i118.cleanup_crit_edge ], [ 0, %if.end34.cleanup_crit_edge ], [ -12, %if.end.i150.cleanup_crit_edge ], [ 0, %land.lhs.true.i.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netdev_upper_dev_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @list_add_tail_rcu(ptr noundef %new, ptr noundef %head) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  %prev = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1
  %0 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev, align 4
  %call.i = tail call zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %1, ptr noundef %head) #19
  br i1 %call.i, label %if.end.i, label %entry.__list_add_rcu.exit_crit_edge

entry.__list_add_rcu.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %__list_add_rcu.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %2 = ptrtoint ptr %new to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %head, ptr %new, align 4
  %prev2.i = getelementptr inbounds %struct.list_head, ptr %new, i32 0, i32 1
  %3 = ptrtoint ptr %prev2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %1, ptr %prev2.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !97
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %new, ptr %1, align 4
  %5 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %new, ptr %prev, align 4
  br label %__list_add_rcu.exit

__list_add_rcu.exit:                              ; preds = %if.end.i, %entry.__list_add_rcu.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_stacked_transfer_operstate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @linkwatch_fire_event(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @macvlan_port_destroy(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  %sa = alloca %struct.sockaddr, align 2
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #19
  br i1 %call.i, label %entry.macvlan_port_get_rtnl.exit_crit_edge, label %land.lhs.true.i

entry.macvlan_port_get_rtnl.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %macvlan_port_get_rtnl.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.macvlan_port_get_rtnl.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.macvlan_port_get_rtnl.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %macvlan_port_get_rtnl.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @macvlan_port_get_rtnl.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.macvlan_port_get_rtnl.exit_crit_edge, label %if.then.i

land.lhs.true2.i.macvlan_port_get_rtnl.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %macvlan_port_get_rtnl.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @macvlan_port_get_rtnl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 119, ptr noundef nonnull @.str.16) #19
  br label %macvlan_port_get_rtnl.exit

macvlan_port_get_rtnl.exit:                       ; preds = %if.then.i, %land.lhs.true2.i.macvlan_port_get_rtnl.exit_crit_edge, %land.lhs.true.i.macvlan_port_get_rtnl.exit_crit_edge, %entry.macvlan_port_get_rtnl.exit_crit_edge
  %rx_handler_data.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 95
  %0 = ptrtoint ptr %rx_handler_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_handler_data.i, align 4
  %priv_flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %2 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %priv_flags, align 16
  %and = and i64 %3, -257
  store i64 %and, ptr %priv_flags, align 16
  tail call void @netdev_rx_handler_unregister(ptr noundef %dev) #19
  %bc_work = getelementptr inbounds %struct.macvlan_port, ptr %1, i32 0, i32 4
  %call1 = tail call zeroext i1 @cancel_work_sync(ptr noundef %bc_work) #19
  %bc_queue = getelementptr inbounds %struct.macvlan_port, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %bc_queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bc_queue, align 4
  %cmp.i.i34 = icmp eq ptr %5, %bc_queue
  %tobool.not.i303335 = icmp eq ptr %5, null
  %tobool.not.i3036 = or i1 %cmp.i.i34, %tobool.not.i303335
  br i1 %tobool.not.i3036, label %macvlan_port_get_rtnl.exit.while.end_crit_edge, label %while.body.lr.ph

macvlan_port_get_rtnl.exit.while.end_crit_edge:   ; preds = %macvlan_port_get_rtnl.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end

while.body.lr.ph:                                 ; preds = %macvlan_port_get_rtnl.exit
  %qlen.i.i = getelementptr inbounds %struct.macvlan_port, ptr %1, i32 0, i32 3, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %6 = phi ptr [ %5, %while.body.lr.ph ], [ %34, %if.end.while.body_crit_edge ]
  %7 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i = add i32 %8, -1
  store volatile i32 %sub.i.i, ptr %qlen.i.i, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.0, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %6, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.0, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %12, ptr %prev17.i.i, align 4
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %10, ptr %12, align 8
  %cb = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 3
  %15 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cb, align 8
  %tobool4.not = icmp eq ptr %16, null
  br i1 %tobool4.not, label %while.body.if.end_crit_edge, label %if.then

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %while.body
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 8
  %tobool.not.i32 = icmp eq ptr %18, null
  br i1 %tobool.not.i32, label %if.then.if.end_crit_edge, label %do.body1.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

do.body1.i:                                       ; preds = %if.then
  %19 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !98
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 118
  %20 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pcpu_refcnt.i, align 4
  %22 = ptrtoint ptr %21 to i32
  %23 = tail call i32 @llvm.read_register.i32(metadata !86) #19
  %and.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %26
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %28, %22
  %29 = inttoptr i32 %add.i to ptr
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %add13.i = add i32 %31, -1
  store i32 %add13.i, ptr %29, align 4
  %32 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #19, !srcloc !99
  %and.i.i.i = and i32 %32, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !100

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @warn_bogus_irq_restore() #19
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %19) #19, !srcloc !101
  br label %if.end

if.end:                                           ; preds = %do.end30.i, %if.then.if.end_crit_edge, %while.body.if.end_crit_edge
  tail call void @kfree_skb_reason(ptr noundef nonnull %6, i32 noundef 0) #19
  %33 = ptrtoint ptr %bc_queue to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bc_queue, align 4
  %cmp.i.i = icmp eq ptr %34, %bc_queue
  %tobool.not.i3033 = icmp eq ptr %34, null
  %tobool.not.i30 = or i1 %cmp.i.i, %tobool.not.i3033
  br i1 %tobool.not.i30, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %macvlan_port_get_rtnl.exit.while.end_crit_edge
  %flags.i = getelementptr inbounds %struct.macvlan_port, ptr %1, i32 0, i32 6
  %35 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %while.end.if.end16_crit_edge, label %land.lhs.true

while.end.if.end16_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end16

land.lhs.true:                                    ; preds = %while.end
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %38, i32 0, i32 86
  %39 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev_addr, align 64
  %perm_addr = getelementptr inbounds %struct.macvlan_port, ptr %1, i32 0, i32 10
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 4
  %43 = ptrtoint ptr %perm_addr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %perm_addr, align 4
  %xor.i = xor i32 %44, %42
  %add.ptr.i = getelementptr i8, ptr %40, i32 4
  %45 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.macvlan_port, ptr %1, i32 0, i32 10, i32 4
  %47 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %48, %46
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %land.lhs.true.if.end16_crit_edge, label %if.then9

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end16

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sa) #19
  %49 = getelementptr inbounds %struct.sockaddr, ptr %sa, i32 0, i32 1
  %50 = getelementptr inbounds i8, ptr %sa, i32 2
  %51 = call ptr @memset(ptr %50, i32 255, i32 14)
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 4
  %type = getelementptr inbounds %struct.net_device, ptr %53, i32 0, i32 32
  %54 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %type, align 16
  %56 = ptrtoint ptr %sa to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %55, ptr %sa, align 2
  %57 = load ptr, ptr %1, align 4
  %addr_len = getelementptr inbounds %struct.net_device, ptr %57, i32 0, i32 56
  %58 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %addr_len, align 1
  %conv = zext i8 %59 to i32
  %60 = call ptr @memcpy(ptr %49, ptr %perm_addr, i32 %conv)
  %61 = load ptr, ptr %1, align 4
  %call15 = call i32 @dev_set_mac_address(ptr noundef %61, ptr noundef nonnull %sa, ptr noundef null) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sa) #19
  br label %if.end16

if.end16:                                         ; preds = %if.then9, %land.lhs.true.if.end16_crit_edge, %while.end.if.end16_crit_edge
  call void @kfree(ptr noundef %1) #19
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @macvlan_dellink(ptr noundef %dev, ptr noundef %head) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %mode = getelementptr i8, ptr %dev, i32 2384
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %1)
  %cmp = icmp eq i32 %1, 16
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %entry
  %port = getelementptr i8, ptr %dev, i32 2324
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc24.i.for.body.i_crit_edge, %if.then
  %i.039.i = phi i32 [ 0, %if.then ], [ %inc.i, %for.inc24.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.macvlan_port, ptr %3, i32 0, i32 8, i32 %i.039.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %tobool5.not37.i = icmp eq ptr %5, null
  br i1 %tobool5.not37.i, label %for.body.i.for.inc24.i_crit_edge, label %for.body.i.land.rhs6.i_crit_edge

for.body.i.land.rhs6.i_crit_edge:                 ; preds = %for.body.i
  br label %land.rhs6.i

for.body.i.for.inc24.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc24.i

land.rhs6.i:                                      ; preds = %for.inc.i.land.rhs6.i_crit_edge, %for.body.i.land.rhs6.i_crit_edge
  %entry1.138.i = phi ptr [ %7, %for.inc.i.land.rhs6.i_crit_edge ], [ %5, %for.body.i.land.rhs6.i_crit_edge ]
  %6 = ptrtoint ptr %entry1.138.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %entry1.138.i, align 4
  %vlan12.i = getelementptr inbounds %struct.macvlan_source_entry, ptr %entry1.138.i, i32 0, i32 1
  %8 = ptrtoint ptr %vlan12.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vlan12.i, align 4
  %cmp13.i = icmp eq ptr %9, %add.ptr.i
  br i1 %cmp13.i, label %if.then.i, label %land.rhs6.i.for.inc.i_crit_edge

land.rhs6.i.for.inc.i_crit_edge:                  ; preds = %land.rhs6.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.i

if.then.i:                                        ; preds = %land.rhs6.i
  %pprev2.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %entry1.138.i, i32 0, i32 1
  %10 = ptrtoint ptr %pprev2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pprev2.i.i.i.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %7, ptr %11, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.macvlan_hash_del_source.exit.i_crit_edge, label %do.body13.i.i.i.i

if.then.i.macvlan_hash_del_source.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %macvlan_hash_del_source.exit.i

do.body13.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #21
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %7, i32 0, i32 1
  %13 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %pprev14.i.i.i.i, align 4
  br label %macvlan_hash_del_source.exit.i

macvlan_hash_del_source.exit.i:                   ; preds = %do.body13.i.i.i.i, %if.then.i.macvlan_hash_del_source.exit.i_crit_edge
  %14 = ptrtoint ptr %pprev2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i.i, align 4
  %rcu.i.i = getelementptr inbounds %struct.macvlan_source_entry, ptr %entry1.138.i, i32 0, i32 3
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i.i, ptr noundef nonnull inttoptr (i32 20 to ptr)) #19
  br label %for.inc.i

for.inc.i:                                        ; preds = %macvlan_hash_del_source.exit.i, %land.rhs6.i.for.inc.i_crit_edge
  %tobool5.not.i = icmp eq ptr %7, null
  br i1 %tobool5.not.i, label %for.inc.i.for.inc24.i_crit_edge, label %for.inc.i.land.rhs6.i_crit_edge

for.inc.i.land.rhs6.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %land.rhs6.i

for.inc.i.for.inc24.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc24.i

for.inc24.i:                                      ; preds = %for.inc.i.for.inc24.i_crit_edge, %for.body.i.for.inc24.i_crit_edge
  %inc.i = add nuw nsw i32 %i.039.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %macvlan_flush_sources.exit, label %for.inc24.i.for.body.i_crit_edge

for.inc24.i.for.body.i_crit_edge:                 ; preds = %for.inc24.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i

macvlan_flush_sources.exit:                       ; preds = %for.inc24.i
  call void @__sanitizer_cov_trace_pc() #21
  %macaddr_count.i = getelementptr i8, ptr %dev, i32 2392
  %15 = ptrtoint ptr %macaddr_count.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %macaddr_count.i, align 8
  br label %if.end

if.end:                                           ; preds = %macvlan_flush_sources.exit, %entry.if.end_crit_edge
  %list = getelementptr i8, ptr %dev, i32 2308
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #19
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del_rcu.exit_crit_edge

if.end.list_del_rcu.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %prev.i.i = getelementptr i8, ptr %dev, i32 2312
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i, align 4
  %18 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %if.end.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr i8, ptr %dev, i32 2312
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %port1 = getelementptr i8, ptr %dev, i32 2324
  %23 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %port1, align 4
  %vlans.i = getelementptr inbounds %struct.macvlan_port, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %vlans.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn15.i = load ptr, ptr %vlans.i, align 4
  %cmp.not16.i = icmp eq ptr %.pn15.i, %vlans.i
  br i1 %cmp.not16.i, label %list_del_rcu.exit.update_port_bc_queue_len.exit_crit_edge, label %list_del_rcu.exit.for.body.i9_crit_edge

list_del_rcu.exit.for.body.i9_crit_edge:          ; preds = %list_del_rcu.exit
  br label %for.body.i9

list_del_rcu.exit.update_port_bc_queue_len.exit_crit_edge: ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %update_port_bc_queue_len.exit

for.body.i9:                                      ; preds = %for.body.i9.for.body.i9_crit_edge, %list_del_rcu.exit.for.body.i9_crit_edge
  %.pn18.i = phi ptr [ %.pn.i, %for.body.i9.for.body.i9_crit_edge ], [ %.pn15.i, %list_del_rcu.exit.for.body.i9_crit_edge ]
  %max_bc_queue_len_req.017.i = phi i32 [ %28, %for.body.i9.for.body.i9_crit_edge ], [ 0, %list_del_rcu.exit.for.body.i9_crit_edge ]
  %bc_queue_len_req.i = getelementptr i8, ptr %.pn18.i, i32 88
  %26 = ptrtoint ptr %bc_queue_len_req.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bc_queue_len_req.i, align 4
  %28 = tail call i32 @llvm.umax.i32(i32 %27, i32 %max_bc_queue_len_req.017.i) #19
  %29 = ptrtoint ptr %.pn18.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pn.i = load ptr, ptr %.pn18.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %vlans.i
  br i1 %cmp.not.i, label %for.body.i9.update_port_bc_queue_len.exit_crit_edge, label %for.body.i9.for.body.i9_crit_edge

for.body.i9.for.body.i9_crit_edge:                ; preds = %for.body.i9
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i9

for.body.i9.update_port_bc_queue_len.exit_crit_edge: ; preds = %for.body.i9
  call void @__sanitizer_cov_trace_pc() #21
  br label %update_port_bc_queue_len.exit

update_port_bc_queue_len.exit:                    ; preds = %for.body.i9.update_port_bc_queue_len.exit_crit_edge, %list_del_rcu.exit.update_port_bc_queue_len.exit_crit_edge
  %max_bc_queue_len_req.0.lcssa.i = phi i32 [ 0, %list_del_rcu.exit.update_port_bc_queue_len.exit_crit_edge ], [ %28, %for.body.i9.update_port_bc_queue_len.exit_crit_edge ]
  %bc_queue_len_used.i = getelementptr inbounds %struct.macvlan_port, ptr %24, i32 0, i32 5
  %30 = ptrtoint ptr %bc_queue_len_used.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %max_bc_queue_len_req.0.lcssa.i, ptr %bc_queue_len_used.i, align 4
  tail call void @unregister_netdevice_queue(ptr noundef %dev, ptr noundef %head) #19
  %lowerdev = getelementptr i8, ptr %dev, i32 2328
  %31 = ptrtoint ptr %lowerdev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %lowerdev, align 8
  tail call void @netdev_upper_dev_unlink(ptr noundef %32, ptr noundef %dev) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdevice_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_upper_dev_unlink(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @macvlan_link_register(ptr noundef %ops) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %validate = getelementptr inbounds %struct.rtnl_link_ops, ptr %ops, i32 0, i32 8
  %0 = ptrtoint ptr %validate to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @macvlan_validate, ptr %validate, align 4
  %maxtype = getelementptr inbounds %struct.rtnl_link_ops, ptr %ops, i32 0, i32 6
  %1 = ptrtoint ptr %maxtype to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 8, ptr %maxtype, align 4
  %policy = getelementptr inbounds %struct.rtnl_link_ops, ptr %ops, i32 0, i32 7
  %2 = ptrtoint ptr %policy to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @macvlan_policy, ptr %policy, align 4
  %changelink = getelementptr inbounds %struct.rtnl_link_ops, ptr %ops, i32 0, i32 10
  %3 = ptrtoint ptr %changelink to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @macvlan_changelink, ptr %changelink, align 4
  %get_size = getelementptr inbounds %struct.rtnl_link_ops, ptr %ops, i32 0, i32 12
  %4 = ptrtoint ptr %get_size to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @macvlan_get_size, ptr %get_size, align 4
  %fill_info = getelementptr inbounds %struct.rtnl_link_ops, ptr %ops, i32 0, i32 13
  %5 = ptrtoint ptr %fill_info to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @macvlan_fill_info, ptr %fill_info, align 4
  %call = tail call i32 @rtnl_link_register(ptr noundef %ops) #19
  ret i32 %call
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @macvlan_validate(ptr nocapture noundef readonly %tb, ptr noundef readonly %data, ptr nocapture noundef readnone %extack) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr ptr, ptr %tb, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end8

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %3)
  %cmp.not = icmp eq i16 %3, 10
  br i1 %cmp.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %if.then
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 4
  %6 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not.i = icmp eq i32 %6, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

is_valid_ether_addr.exit:                         ; preds = %if.end
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 8
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %8 to i32
  %or.i.i = or i32 %5, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.cleanup_crit_edge, label %is_valid_ether_addr.exit.if.end8_crit_edge

is_valid_ether_addr.exit.if.end8_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end8

is_valid_ether_addr.exit.cleanup_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end8:                                          ; preds = %is_valid_ether_addr.exit.if.end8_crit_edge, %entry.if.end8_crit_edge
  %tobool9.not = icmp eq ptr %data, null
  br i1 %tobool9.not, label %if.end8.cleanup_crit_edge, label %if.end11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %arrayidx12 = getelementptr ptr, ptr %data, i32 2
  %9 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx12, align 4
  %tobool13.not = icmp eq ptr %10, null
  br i1 %tobool13.not, label %if.end11.if.end18_crit_edge, label %land.lhs.true

if.end11.if.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end18

land.lhs.true:                                    ; preds = %if.end11
  %add.ptr.i.i103 = getelementptr i8, ptr %10, i32 4
  %11 = ptrtoint ptr %add.ptr.i.i103 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %add.ptr.i.i103, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %12)
  %tobool16.not = icmp ult i16 %12, 4
  br i1 %tobool16.not, label %land.lhs.true.if.end18_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end18

if.end18:                                         ; preds = %land.lhs.true.if.end18_crit_edge, %if.end11.if.end18_crit_edge
  %arrayidx19 = getelementptr ptr, ptr %data, i32 1
  %13 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx19, align 4
  %tobool20.not = icmp eq ptr %14, null
  br i1 %tobool20.not, label %if.end18.if.end24_crit_edge, label %if.then21

if.end18.if.end24_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end24

if.then21:                                        ; preds = %if.end18
  %add.ptr.i.i104 = getelementptr i8, ptr %14, i32 4
  %15 = ptrtoint ptr %add.ptr.i.i104 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr.i.i104, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %16, label %if.then21.cleanup_crit_edge [
    i32 1, label %if.then21.if.end24_crit_edge
    i32 2, label %if.then21.if.end24_crit_edge140
    i32 4, label %if.then21.if.end24_crit_edge141
    i32 8, label %if.then21.if.end24_crit_edge142
    i32 16, label %if.then21.if.end24_crit_edge143
  ]

if.then21.if.end24_crit_edge143:                  ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end24

if.then21.if.end24_crit_edge142:                  ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end24

if.then21.if.end24_crit_edge141:                  ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end24

if.then21.if.end24_crit_edge140:                  ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end24

if.then21.if.end24_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end24

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end24:                                         ; preds = %if.then21.if.end24_crit_edge, %if.then21.if.end24_crit_edge140, %if.then21.if.end24_crit_edge141, %if.then21.if.end24_crit_edge142, %if.then21.if.end24_crit_edge143, %if.end18.if.end24_crit_edge
  %arrayidx25 = getelementptr ptr, ptr %data, i32 3
  %18 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx25, align 4
  %tobool26.not = icmp eq ptr %19, null
  br i1 %tobool26.not, label %if.end24.if.end33_crit_edge, label %if.then27

if.end24.if.end33_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end33

if.then27:                                        ; preds = %if.end24
  %add.ptr.i.i105 = getelementptr i8, ptr %19, i32 4
  %20 = ptrtoint ptr %add.ptr.i.i105 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr.i.i105, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %21)
  %switch = icmp ult i32 %21, 4
  br i1 %switch, label %if.then27.if.end33_crit_edge, label %if.then27.cleanup_crit_edge

if.then27.cleanup_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then27.if.end33_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end33

if.end33:                                         ; preds = %if.then27.if.end33_crit_edge, %if.end24.if.end33_crit_edge
  %arrayidx34 = getelementptr ptr, ptr %data, i32 4
  %22 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx34, align 4
  %tobool35.not = icmp eq ptr %23, null
  br i1 %tobool35.not, label %if.end33.if.end48_crit_edge, label %if.then36

if.end33.if.end48_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end48

if.then36:                                        ; preds = %if.end33
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %23, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %25)
  %cmp39.not = icmp eq i16 %25, 10
  br i1 %cmp39.not, label %if.end42, label %if.then36.cleanup_crit_edge

if.then36.cleanup_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end42:                                         ; preds = %if.then36
  %add.ptr.i108 = getelementptr i8, ptr %23, i32 4
  %26 = ptrtoint ptr %add.ptr.i108 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr.i108, align 4
  %28 = and i32 %27, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.i.not.i109 = icmp eq i32 %28, 0
  br i1 %tobool.i.not.i109, label %is_valid_ether_addr.exit115, label %if.end42.cleanup_crit_edge

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

is_valid_ether_addr.exit115:                      ; preds = %if.end42
  %add.ptr.i.i110 = getelementptr i8, ptr %23, i32 8
  %29 = ptrtoint ptr %add.ptr.i.i110 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %add.ptr.i.i110, align 2
  %conv.i.i111 = zext i16 %30 to i32
  %or.i.i112 = or i32 %27, %conv.i.i111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i112)
  %cmp.i.i113.not = icmp eq i32 %or.i.i112, 0
  br i1 %cmp.i.i113.not, label %is_valid_ether_addr.exit115.cleanup_crit_edge, label %is_valid_ether_addr.exit115.if.end48_crit_edge

is_valid_ether_addr.exit115.if.end48_crit_edge:   ; preds = %is_valid_ether_addr.exit115
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end48

is_valid_ether_addr.exit115.cleanup_crit_edge:    ; preds = %is_valid_ether_addr.exit115
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end48:                                         ; preds = %is_valid_ether_addr.exit115.if.end48_crit_edge, %if.end33.if.end48_crit_edge
  %arrayidx49 = getelementptr ptr, ptr %data, i32 5
  %31 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx49, align 4
  %tobool50.not = icmp eq ptr %32, null
  br i1 %tobool50.not, label %if.end48.if.end71_crit_edge, label %if.then51

if.end48.if.end71_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end71

if.then51:                                        ; preds = %if.end48
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %32, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %34)
  %cmp.i137 = icmp ugt i16 %34, 7
  br i1 %cmp.i137, label %land.lhs.true.i.preheader, label %if.then51.if.end71_crit_edge

if.then51.if.end71_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end71

land.lhs.true.i.preheader:                        ; preds = %if.then51
  %conv.i117 = zext i16 %34 to i32
  %sub.i118 = add nsw i32 %conv.i117, -4
  %add.ptr.i116 = getelementptr i8, ptr %32, i32 4
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %for.inc.land.lhs.true.i_crit_edge, %land.lhs.true.i.preheader
  %nla.0139 = phi ptr [ %add.ptr.i134, %for.inc.land.lhs.true.i_crit_edge ], [ %add.ptr.i116, %land.lhs.true.i.preheader ]
  %rem.0138 = phi i32 [ %sub1.i, %for.inc.land.lhs.true.i_crit_edge ], [ %sub.i118, %land.lhs.true.i.preheader ]
  %35 = ptrtoint ptr %nla.0139 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %nla.0139, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %36)
  %cmp1.i = icmp ult i16 %36, 4
  %conv.i119 = zext i16 %36 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.0138, i32 %conv.i119)
  %cmp5.i.not = icmp ult i32 %rem.0138, %conv.i119
  %or.cond = select i1 %cmp1.i, i1 true, i1 %cmp5.i.not
  br i1 %or.cond, label %land.lhs.true.i.if.end71_crit_edge, label %for.body

land.lhs.true.i.if.end71_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end71

for.body:                                         ; preds = %land.lhs.true.i
  %nla_type.i = getelementptr inbounds %struct.nlattr, ptr %nla.0139, i32 0, i32 1
  %37 = ptrtoint ptr %nla_type.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %nla_type.i, align 2
  %39 = and i16 %38, 16383
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %39)
  %cmp59.not = icmp eq i16 %39, 4
  br i1 %cmp59.not, label %lor.lhs.false, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

lor.lhs.false:                                    ; preds = %for.body
  %40 = ptrtoint ptr %nla.0139 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %nla.0139, align 2
  %conv.i121 = zext i16 %41 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %41)
  %cmp62.not = icmp eq i16 %41, 10
  br i1 %cmp62.not, label %if.end65, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end65:                                         ; preds = %lor.lhs.false
  %add.ptr.i123 = getelementptr i8, ptr %nla.0139, i32 4
  %42 = ptrtoint ptr %add.ptr.i123 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %add.ptr.i123, align 4
  %44 = and i32 %43, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.i.not.i124 = icmp eq i32 %44, 0
  br i1 %tobool.i.not.i124, label %is_valid_ether_addr.exit130, label %if.end65.cleanup_crit_edge

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

is_valid_ether_addr.exit130:                      ; preds = %if.end65
  %add.ptr.i.i125 = getelementptr i8, ptr %nla.0139, i32 8
  %45 = ptrtoint ptr %add.ptr.i.i125 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %add.ptr.i.i125, align 2
  %conv.i.i126 = zext i16 %46 to i32
  %or.i.i127 = or i32 %43, %conv.i.i126
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i127)
  %cmp.i.i128.not = icmp eq i32 %or.i.i127, 0
  br i1 %cmp.i.i128.not, label %is_valid_ether_addr.exit130.cleanup_crit_edge, label %for.inc

is_valid_ether_addr.exit130.cleanup_crit_edge:    ; preds = %is_valid_ether_addr.exit130
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

for.inc:                                          ; preds = %is_valid_ether_addr.exit130
  %sub.i132 = add nuw nsw i32 %conv.i121, 3
  %and.i133 = and i32 %sub.i132, 131068
  %sub1.i = sub nsw i32 %rem.0138, %and.i133
  %add.ptr.i134 = getelementptr i8, ptr %nla.0139, i32 %and.i133
  %cmp.i = icmp sgt i32 %sub1.i, 3
  br i1 %cmp.i, label %for.inc.land.lhs.true.i_crit_edge, label %for.inc.if.end71_crit_edge

for.inc.if.end71_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end71

for.inc.land.lhs.true.i_crit_edge:                ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #21
  br label %land.lhs.true.i

if.end71:                                         ; preds = %for.inc.if.end71_crit_edge, %land.lhs.true.i.if.end71_crit_edge, %if.then51.if.end71_crit_edge, %if.end48.if.end71_crit_edge
  %arrayidx72 = getelementptr ptr, ptr %data, i32 6
  %47 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx72, align 4
  %tobool73.not = icmp eq ptr %48, null
  %. = select i1 %tobool73.not, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.end71, %is_valid_ether_addr.exit130.cleanup_crit_edge, %if.end65.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %for.body.cleanup_crit_edge, %is_valid_ether_addr.exit115.cleanup_crit_edge, %if.end42.cleanup_crit_edge, %if.then36.cleanup_crit_edge, %if.then27.cleanup_crit_edge, %if.then21.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %is_valid_ether_addr.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then.cleanup_crit_edge ], [ -99, %is_valid_ether_addr.exit.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.then21.cleanup_crit_edge ], [ -22, %if.then27.cleanup_crit_edge ], [ -22, %if.then36.cleanup_crit_edge ], [ -99, %is_valid_ether_addr.exit115.cleanup_crit_edge ], [ %., %if.end71 ], [ -99, %if.end.cleanup_crit_edge ], [ -99, %if.end42.cleanup_crit_edge ], [ -99, %if.end65.cleanup_crit_edge ], [ -99, %is_valid_ether_addr.exit130.cleanup_crit_edge ], [ -22, %for.body.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @macvlan_changelink(ptr noundef %dev, ptr nocapture noundef readnone %tb, ptr noundef readonly %data, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %tobool.not = icmp eq ptr %data, null
  br i1 %tobool.not, label %entry.if.end86_crit_edge, label %land.lhs.true

entry.if.end86_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end86

land.lhs.true:                                    ; preds = %entry
  %arrayidx = getelementptr ptr, ptr %data, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %land.lhs.true.land.lhs.true21_crit_edge, label %if.then

land.lhs.true.land.lhs.true21_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %land.lhs.true21

if.then:                                          ; preds = %land.lhs.true
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %cmp = icmp ne i32 %3, 8
  %mode4 = getelementptr i8, ptr %dev, i32 2384
  %4 = ptrtoint ptr %mode4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %5)
  %cmp5 = icmp eq i32 %5, 8
  %cmp7.not = xor i1 %cmp, %cmp5
  br i1 %cmp7.not, label %if.end, label %if.then.cleanup87_crit_edge

if.then.cleanup87_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup87

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %5)
  %cmp11 = icmp eq i32 %5, 16
  br i1 %cmp11, label %land.lhs.true13, label %if.end.land.lhs.true21_crit_edge

if.end.land.lhs.true21_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %land.lhs.true21

land.lhs.true13:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %3)
  %cmp15.not = icmp eq i32 %3, 16
  br i1 %cmp15.not, label %land.lhs.true13.land.lhs.true21_crit_edge, label %if.then17

land.lhs.true13.land.lhs.true21_crit_edge:        ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #21
  br label %land.lhs.true21

if.then17:                                        ; preds = %land.lhs.true13
  %port = getelementptr i8, ptr %dev, i32 2324
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc24.i.for.body.i_crit_edge, %if.then17
  %i.039.i = phi i32 [ 0, %if.then17 ], [ %inc.i, %for.inc24.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.macvlan_port, ptr %7, i32 0, i32 8, i32 %i.039.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %tobool5.not37.i = icmp eq ptr %9, null
  br i1 %tobool5.not37.i, label %for.body.i.for.inc24.i_crit_edge, label %for.body.i.land.rhs6.i_crit_edge

for.body.i.land.rhs6.i_crit_edge:                 ; preds = %for.body.i
  br label %land.rhs6.i

for.body.i.for.inc24.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc24.i

land.rhs6.i:                                      ; preds = %for.inc.i.land.rhs6.i_crit_edge, %for.body.i.land.rhs6.i_crit_edge
  %entry1.138.i = phi ptr [ %11, %for.inc.i.land.rhs6.i_crit_edge ], [ %9, %for.body.i.land.rhs6.i_crit_edge ]
  %10 = ptrtoint ptr %entry1.138.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %entry1.138.i, align 4
  %vlan12.i = getelementptr inbounds %struct.macvlan_source_entry, ptr %entry1.138.i, i32 0, i32 1
  %12 = ptrtoint ptr %vlan12.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vlan12.i, align 4
  %cmp13.i = icmp eq ptr %13, %add.ptr.i
  br i1 %cmp13.i, label %if.then.i, label %land.rhs6.i.for.inc.i_crit_edge

land.rhs6.i.for.inc.i_crit_edge:                  ; preds = %land.rhs6.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.i

if.then.i:                                        ; preds = %land.rhs6.i
  %pprev2.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %entry1.138.i, i32 0, i32 1
  %14 = ptrtoint ptr %pprev2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pprev2.i.i.i.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %11, ptr %15, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.macvlan_hash_del_source.exit.i_crit_edge, label %do.body13.i.i.i.i

if.then.i.macvlan_hash_del_source.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %macvlan_hash_del_source.exit.i

do.body13.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #21
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %11, i32 0, i32 1
  %17 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %pprev14.i.i.i.i, align 4
  br label %macvlan_hash_del_source.exit.i

macvlan_hash_del_source.exit.i:                   ; preds = %do.body13.i.i.i.i, %if.then.i.macvlan_hash_del_source.exit.i_crit_edge
  %18 = ptrtoint ptr %pprev2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i.i, align 4
  %rcu.i.i = getelementptr inbounds %struct.macvlan_source_entry, ptr %entry1.138.i, i32 0, i32 3
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i.i, ptr noundef nonnull inttoptr (i32 20 to ptr)) #19
  br label %for.inc.i

for.inc.i:                                        ; preds = %macvlan_hash_del_source.exit.i, %land.rhs6.i.for.inc.i_crit_edge
  %tobool5.not.i = icmp eq ptr %11, null
  br i1 %tobool5.not.i, label %for.inc.i.for.inc24.i_crit_edge, label %for.inc.i.land.rhs6.i_crit_edge

for.inc.i.land.rhs6.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %land.rhs6.i

for.inc.i.for.inc24.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc24.i

for.inc24.i:                                      ; preds = %for.inc.i.for.inc24.i_crit_edge, %for.body.i.for.inc24.i_crit_edge
  %inc.i = add nuw nsw i32 %i.039.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %if.end19, label %for.inc24.i.for.body.i_crit_edge

for.inc24.i.for.body.i_crit_edge:                 ; preds = %for.inc24.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i

if.end19:                                         ; preds = %for.inc24.i
  call void @__sanitizer_cov_trace_pc() #21
  %macaddr_count.i = getelementptr i8, ptr %dev, i32 2392
  %19 = ptrtoint ptr %macaddr_count.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %macaddr_count.i, align 8
  br label %land.lhs.true21

land.lhs.true21:                                  ; preds = %if.end19, %land.lhs.true13.land.lhs.true21_crit_edge, %if.end.land.lhs.true21_crit_edge, %land.lhs.true.land.lhs.true21_crit_edge
  %mode.0137 = phi i32 [ %3, %if.end19 ], [ -1, %land.lhs.true.land.lhs.true21_crit_edge ], [ %3, %if.end.land.lhs.true21_crit_edge ], [ 16, %land.lhs.true13.land.lhs.true21_crit_edge ]
  %arrayidx22 = getelementptr ptr, ptr %data, i32 2
  %20 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx22, align 4
  %tobool23.not = icmp eq ptr %21, null
  br i1 %tobool23.not, label %land.lhs.true21.land.lhs.true58_crit_edge, label %if.then24

land.lhs.true21.land.lhs.true58_crit_edge:        ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #21
  br label %land.lhs.true58

if.then24:                                        ; preds = %land.lhs.true21
  %add.ptr.i.i131 = getelementptr i8, ptr %21, i32 4
  %22 = ptrtoint ptr %add.ptr.i.i131 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %add.ptr.i.i131, align 2
  %flags28 = getelementptr i8, ptr %dev, i32 2388
  %port31 = getelementptr i8, ptr %dev, i32 2324
  %24 = ptrtoint ptr %port31 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %port31, align 4
  %flags.i = getelementptr inbounds %struct.macvlan_port, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then24.cleanup52.thread_crit_edge, label %land.lhs.true34

if.then24.cleanup52.thread_crit_edge:             ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup52.thread

land.lhs.true34:                                  ; preds = %if.then24
  %28 = ptrtoint ptr %flags28 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %flags28, align 4
  %xor130 = xor i16 %29, %23
  %30 = and i16 %xor130, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool30.not = icmp eq i16 %30, 0
  br i1 %tobool30.not, label %land.lhs.true34.cleanup52.thread_crit_edge, label %if.then37

land.lhs.true34.cleanup52.thread_crit_edge:       ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup52.thread

if.then37:                                        ; preds = %land.lhs.true34
  %31 = and i16 %23, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool40.not = icmp eq i16 %31, 0
  %lowerdev43 = getelementptr i8, ptr %dev, i32 2328
  %32 = ptrtoint ptr %lowerdev43 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %lowerdev43, align 8
  %. = select i1 %tobool40.not, i32 1, i32 -1
  %call44 = tail call i32 @dev_set_promiscuity(ptr noundef %33, i32 noundef %.) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp46 = icmp slt i32 %call44, 0
  br i1 %cmp46, label %if.then37.cleanup87_crit_edge, label %if.then37.cleanup52.thread_crit_edge

if.then37.cleanup52.thread_crit_edge:             ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup52.thread

if.then37.cleanup87_crit_edge:                    ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup87

cleanup52.thread:                                 ; preds = %if.then37.cleanup52.thread_crit_edge, %land.lhs.true34.cleanup52.thread_crit_edge, %if.then24.cleanup52.thread_crit_edge
  %34 = ptrtoint ptr %flags28 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %23, ptr %flags28, align 4
  br label %land.lhs.true58

land.lhs.true58:                                  ; preds = %cleanup52.thread, %land.lhs.true21.land.lhs.true58_crit_edge
  %arrayidx59 = getelementptr ptr, ptr %data, i32 7
  %35 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx59, align 4
  %tobool60.not = icmp eq ptr %36, null
  br i1 %tobool60.not, label %if.end65, label %if.then61

if.then61:                                        ; preds = %land.lhs.true58
  %add.ptr.i.i132 = getelementptr i8, ptr %36, i32 4
  %37 = ptrtoint ptr %add.ptr.i.i132 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %add.ptr.i.i132, align 4
  %bc_queue_len_req = getelementptr i8, ptr %dev, i32 2396
  %39 = ptrtoint ptr %bc_queue_len_req to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %bc_queue_len_req, align 4
  %port64 = getelementptr i8, ptr %dev, i32 2324
  %40 = ptrtoint ptr %port64 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %port64, align 4
  %vlans.i = getelementptr inbounds %struct.macvlan_port, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %vlans.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pn15.i = load ptr, ptr %vlans.i, align 4
  %cmp.not16.i = icmp eq ptr %.pn15.i, %vlans.i
  br i1 %cmp.not16.i, label %if.then61.update_port_bc_queue_len.exit_crit_edge, label %if.then61.for.body.i133_crit_edge

if.then61.for.body.i133_crit_edge:                ; preds = %if.then61
  br label %for.body.i133

if.then61.update_port_bc_queue_len.exit_crit_edge: ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #21
  br label %update_port_bc_queue_len.exit

for.body.i133:                                    ; preds = %for.body.i133.for.body.i133_crit_edge, %if.then61.for.body.i133_crit_edge
  %.pn18.i = phi ptr [ %.pn.i, %for.body.i133.for.body.i133_crit_edge ], [ %.pn15.i, %if.then61.for.body.i133_crit_edge ]
  %max_bc_queue_len_req.017.i = phi i32 [ %45, %for.body.i133.for.body.i133_crit_edge ], [ 0, %if.then61.for.body.i133_crit_edge ]
  %bc_queue_len_req.i = getelementptr i8, ptr %.pn18.i, i32 88
  %43 = ptrtoint ptr %bc_queue_len_req.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %bc_queue_len_req.i, align 4
  %45 = tail call i32 @llvm.umax.i32(i32 %44, i32 %max_bc_queue_len_req.017.i) #19
  %46 = ptrtoint ptr %.pn18.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pn.i = load ptr, ptr %.pn18.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %vlans.i
  br i1 %cmp.not.i, label %for.body.i133.update_port_bc_queue_len.exit_crit_edge, label %for.body.i133.for.body.i133_crit_edge

for.body.i133.for.body.i133_crit_edge:            ; preds = %for.body.i133
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i133

for.body.i133.update_port_bc_queue_len.exit_crit_edge: ; preds = %for.body.i133
  call void @__sanitizer_cov_trace_pc() #21
  br label %update_port_bc_queue_len.exit

update_port_bc_queue_len.exit:                    ; preds = %for.body.i133.update_port_bc_queue_len.exit_crit_edge, %if.then61.update_port_bc_queue_len.exit_crit_edge
  %max_bc_queue_len_req.0.lcssa.i = phi i32 [ 0, %if.then61.update_port_bc_queue_len.exit_crit_edge ], [ %45, %for.body.i133.update_port_bc_queue_len.exit_crit_edge ]
  %bc_queue_len_used.i = getelementptr inbounds %struct.macvlan_port, ptr %41, i32 0, i32 5
  %47 = ptrtoint ptr %bc_queue_len_used.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %max_bc_queue_len_req.0.lcssa.i, ptr %bc_queue_len_used.i, align 4
  br i1 %tobool1.not, label %update_port_bc_queue_len.exit.land.lhs.true71_crit_edge, label %update_port_bc_queue_len.exit.if.then67_crit_edge

update_port_bc_queue_len.exit.if.then67_crit_edge: ; preds = %update_port_bc_queue_len.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then67

update_port_bc_queue_len.exit.land.lhs.true71_crit_edge: ; preds = %update_port_bc_queue_len.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %land.lhs.true71

if.end65:                                         ; preds = %land.lhs.true58
  br i1 %tobool1.not, label %if.end65.land.lhs.true71_crit_edge, label %if.end65.if.then67_crit_edge

if.end65.if.then67_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then67

if.end65.land.lhs.true71_crit_edge:               ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #21
  br label %land.lhs.true71

if.then67:                                        ; preds = %if.end65.if.then67_crit_edge, %update_port_bc_queue_len.exit.if.then67_crit_edge
  %mode68 = getelementptr i8, ptr %dev, i32 2384
  %48 = ptrtoint ptr %mode68 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %mode.0137, ptr %mode68, align 8
  br label %land.lhs.true71

land.lhs.true71:                                  ; preds = %if.then67, %if.end65.land.lhs.true71_crit_edge, %update_port_bc_queue_len.exit.land.lhs.true71_crit_edge
  %arrayidx72 = getelementptr ptr, ptr %data, i32 3
  %49 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx72, align 4
  %tobool73.not = icmp eq ptr %50, null
  br i1 %tobool73.not, label %land.lhs.true71.if.end86_crit_edge, label %if.then74

land.lhs.true71.if.end86_crit_edge:               ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end86

if.then74:                                        ; preds = %land.lhs.true71
  %mode75 = getelementptr i8, ptr %dev, i32 2384
  %51 = ptrtoint ptr %mode75 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %mode75, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %52)
  %cmp76.not = icmp eq i32 %52, 16
  br i1 %cmp76.not, label %if.end79, label %if.then74.cleanup87_crit_edge

if.then74.cleanup87_crit_edge:                    ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup87

if.end79:                                         ; preds = %if.then74
  %add.ptr.i.i134 = getelementptr i8, ptr %50, i32 4
  %53 = ptrtoint ptr %add.ptr.i.i134 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %add.ptr.i.i134, align 4
  %call82 = tail call fastcc i32 @macvlan_changelink_sources(ptr noundef %add.ptr.i, i32 noundef %54, ptr noundef nonnull %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.end79.if.end86_crit_edge, label %if.end79.cleanup87_crit_edge

if.end79.cleanup87_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup87

if.end79.if.end86_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end86

if.end86:                                         ; preds = %if.end79.if.end86_crit_edge, %land.lhs.true71.if.end86_crit_edge, %entry.if.end86_crit_edge
  br label %cleanup87

cleanup87:                                        ; preds = %if.end86, %if.end79.cleanup87_crit_edge, %if.then74.cleanup87_crit_edge, %if.then37.cleanup87_crit_edge, %if.then.cleanup87_crit_edge
  %retval.3 = phi i32 [ 0, %if.end86 ], [ -22, %if.then.cleanup87_crit_edge ], [ -22, %if.then74.cleanup87_crit_edge ], [ %call82, %if.end79.cleanup87_crit_edge ], [ %call44, %if.then37.cleanup87_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @macvlan_get_size(ptr nocapture noundef readonly %dev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %macaddr_count.i = getelementptr i8, ptr %dev, i32 2392
  %0 = ptrtoint ptr %macaddr_count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %macaddr_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  %mul.i = mul i32 %1, 12
  %add.i.op.op.op = add i32 %mul.i, 44
  %add11 = select i1 %cmp.i, i32 40, i32 %add.i.op.op.op
  ret i32 %add11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @macvlan_fill_info(ptr noundef %skb, ptr noundef readonly %dev) #0 align 64 {
entry:
  %tmp.i59 = alloca i32, align 4
  %tmp.i57 = alloca i32, align 4
  %tmp.i53 = alloca i32, align 4
  %tmp.i51 = alloca i16, align 2
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %port1 = getelementptr i8, ptr %dev, i32 2324
  %0 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port1, align 4
  %mode = getelementptr i8, ptr %dev, i32 2384
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #19
  %4 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.nla_put_failure_crit_edge

entry.nla_put_failure_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %nla_put_failure

if.end:                                           ; preds = %entry
  %flags = getelementptr i8, ptr %dev, i32 2388
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %flags, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i51) #19
  %7 = ptrtoint ptr %tmp.i51 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %tmp.i51, align 2
  %call.i52 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 2, ptr noundef nonnull %tmp.i51) #19
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i51) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i52)
  %tobool4.not = icmp eq i32 %call.i52, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.nla_put_failure_crit_edge

if.end.nla_put_failure_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %nla_put_failure

if.end6:                                          ; preds = %if.end
  %macaddr_count = getelementptr i8, ptr %dev, i32 2392
  %8 = ptrtoint ptr %macaddr_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %macaddr_count, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i53) #19
  %10 = ptrtoint ptr %tmp.i53 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %tmp.i53, align 4
  %call.i54 = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %tmp.i53) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i53) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54)
  %tobool8.not = icmp eq i32 %call.i54, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.nla_put_failure_crit_edge

if.end6.nla_put_failure_crit_edge:                ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #21
  br label %nla_put_failure

if.end10:                                         ; preds = %if.end6
  %11 = ptrtoint ptr %macaddr_count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %macaddr_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.not = icmp eq i32 %12, 0
  br i1 %cmp.not, label %if.end10.if.end23_crit_edge, label %if.then12

if.end10.if.end23_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end23

if.then12:                                        ; preds = %if.end10
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %13 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tail.i.i, align 8
  %call1.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 0, ptr noundef null) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %cmp1464 = icmp eq ptr %14, null
  %cmp14 = select i1 %cmp.i, i1 true, i1 %cmp1464
  br i1 %cmp14, label %if.then12.nla_put_failure_crit_edge, label %if.then12.for.body_crit_edge

if.then12.for.body_crit_edge:                     ; preds = %if.then12
  br label %for.body

if.then12.nla_put_failure_crit_edge:              ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #21
  br label %nla_put_failure

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then12.for.body_crit_edge
  %i.063 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.then12.for.body_crit_edge ]
  %15 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %port1, align 4
  %arrayidx.i = getelementptr %struct.macvlan_port, ptr %16, i32 0, i32 8, i32 %i.063
  %call.i55 = call i32 @rcu_read_lock_any_held() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55)
  %tobool.not.i = icmp eq i32 %call.i55, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %for.body.do.end.i_crit_edge

for.body.do.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %for.body
  %call2.i = call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b44.i = load i1, ptr @macvlan_fill_info_macaddr.__warned, align 1
  br i1 %.b44.i, label %land.lhs.true4.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end.i_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @macvlan_fill_info_macaddr.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 1632, ptr noundef nonnull @.str.5) #19
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true4.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %for.body.do.end.i_crit_edge
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %entry1.046.i = load volatile ptr, ptr %arrayidx.i, align 4
  %tobool13.not47.i = icmp eq ptr %entry1.046.i, null
  br i1 %tobool13.not47.i, label %do.end.i.for.inc_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.for.inc_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %entry1.048.i = phi ptr [ %entry1.0.i, %for.inc.i.for.body.i_crit_edge ], [ %entry1.046.i, %do.end.i.for.body.i_crit_edge ]
  %vlan14.i = getelementptr inbounds %struct.macvlan_source_entry, ptr %entry1.048.i, i32 0, i32 1
  %18 = ptrtoint ptr %vlan14.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vlan14.i, align 4
  %cmp.not.i = icmp eq ptr %19, %add.ptr.i
  br i1 %cmp.not.i, label %if.end16.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.i

if.end16.i:                                       ; preds = %for.body.i
  %addr.i = getelementptr inbounds %struct.macvlan_source_entry, ptr %entry1.048.i, i32 0, i32 2
  %call17.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 6, ptr noundef %addr.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end16.i.for.inc.i_crit_edge, label %if.end16.i.nla_put_failure_crit_edge

if.end16.i.nla_put_failure_crit_edge:             ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %nla_put_failure

if.end16.i.for.inc.i_crit_edge:                   ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end16.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %20 = ptrtoint ptr %entry1.048.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %entry1.0.i = load volatile ptr, ptr %entry1.048.i, align 4
  %tobool13.not.i = icmp eq ptr %entry1.0.i, null
  br i1 %tobool13.not.i, label %for.inc.i.for.inc_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i

for.inc.i.for.inc_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc

for.inc:                                          ; preds = %for.inc.i.for.inc_crit_edge, %do.end.i.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.063, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #21
  %21 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %22 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %14 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %23 = ptrtoint ptr %14 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv.i, ptr %14, align 2
  br label %if.end23

if.end23:                                         ; preds = %for.end, %if.end10.if.end23_crit_edge
  %bc_queue_len_req = getelementptr i8, ptr %dev, i32 2396
  %24 = ptrtoint ptr %bc_queue_len_req to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bc_queue_len_req, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i57) #19
  %26 = ptrtoint ptr %tmp.i57 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %tmp.i57, align 4
  %call.i58 = call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef 4, ptr noundef nonnull %tmp.i57) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i57) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i58)
  %tobool25.not = icmp eq i32 %call.i58, 0
  br i1 %tobool25.not, label %if.end27, label %if.end23.nla_put_failure_crit_edge

if.end23.nla_put_failure_crit_edge:               ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #21
  br label %nla_put_failure

if.end27:                                         ; preds = %if.end23
  %bc_queue_len_used = getelementptr inbounds %struct.macvlan_port, ptr %1, i32 0, i32 5
  %27 = ptrtoint ptr %bc_queue_len_used to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bc_queue_len_used, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i59) #19
  %29 = ptrtoint ptr %tmp.i59 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %tmp.i59, align 4
  %call.i60 = call i32 @nla_put(ptr noundef %skb, i32 noundef 8, i32 noundef 4, ptr noundef nonnull %tmp.i59) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i59) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60)
  %tobool29.not = icmp eq i32 %call.i60, 0
  br i1 %tobool29.not, label %if.end27.cleanup_crit_edge, label %if.end27.nla_put_failure_crit_edge

if.end27.nla_put_failure_crit_edge:               ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #21
  br label %nla_put_failure

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

nla_put_failure:                                  ; preds = %if.end27.nla_put_failure_crit_edge, %if.end23.nla_put_failure_crit_edge, %if.end16.i.nla_put_failure_crit_edge, %if.then12.nla_put_failure_crit_edge, %if.end6.nla_put_failure_crit_edge, %if.end.nla_put_failure_crit_edge, %entry.nla_put_failure_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %nla_put_failure, %if.end27.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %nla_put_failure ], [ 0, %if.end27.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_link_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @macvlan_cleanup_module() #6 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @rtnl_link_unregister(ptr noundef nonnull @macvlan_link_ops) #19
  %call = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @macvlan_notifier_block) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_link_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @macvlan_init_module() #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @macvlan_notifier_block) #19
  store ptr @macvlan_validate, ptr getelementptr inbounds (%struct.rtnl_link_ops, ptr @macvlan_link_ops, i32 0, i32 8), align 4
  store i32 8, ptr getelementptr inbounds (%struct.rtnl_link_ops, ptr @macvlan_link_ops, i32 0, i32 6), align 4
  store ptr @macvlan_policy, ptr getelementptr inbounds (%struct.rtnl_link_ops, ptr @macvlan_link_ops, i32 0, i32 7), align 4
  store ptr @macvlan_changelink, ptr getelementptr inbounds (%struct.rtnl_link_ops, ptr @macvlan_link_ops, i32 0, i32 10), align 4
  store ptr @macvlan_get_size, ptr getelementptr inbounds (%struct.rtnl_link_ops, ptr @macvlan_link_ops, i32 0, i32 12), align 4
  store ptr @macvlan_fill_info, ptr getelementptr inbounds (%struct.rtnl_link_ops, ptr @macvlan_link_ops, i32 0, i32 13), align 4
  %call.i = tail call i32 @rtnl_link_register(ptr noundef nonnull @macvlan_link_ops) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %err1, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

err1:                                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %call2 = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @macvlan_notifier_block) #19
  br label %cleanup

cleanup:                                          ; preds = %err1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %err1 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @macvlan_init(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %lowerdev1 = getelementptr i8, ptr %dev, i32 2328
  %0 = ptrtoint ptr %lowerdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lowerdev1, align 8
  %port2 = getelementptr i8, ptr %dev, i32 2324
  %2 = ptrtoint ptr %port2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port2, align 4
  %state = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  %and = and i32 %5, -21
  %state3 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %state3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state3, align 4
  %and4 = and i32 %7, 20
  %or = or i32 %and4, %and
  store i32 %or, ptr %state, align 4
  %features = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 23
  %8 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %features, align 16
  %and6 = and i64 %9, 141837000034912
  %features7 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %or9 = or i64 %and6, 27109822473
  %10 = ptrtoint ptr %features7 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %or9, ptr %features7, align 16
  %hw_features = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 24
  %11 = ptrtoint ptr %hw_features to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %hw_features, align 8
  %or10 = or i64 %12, 32768
  store i64 %or10, ptr %hw_features, align 8
  %vlan_features = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 26
  %13 = ptrtoint ptr %vlan_features to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %vlan_features, align 8
  %and11 = and i64 %14, 141837000034912
  %vlan_features12 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 26
  %or14 = or i64 %and11, 27109818377
  %15 = ptrtoint ptr %vlan_features12 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %or14, ptr %vlan_features12, align 8
  %hw_enc_features = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 27
  %16 = ptrtoint ptr %hw_enc_features to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %hw_enc_features, align 16
  %or16 = or i64 %17, %or9
  store i64 %or16, ptr %hw_enc_features, align 16
  %gso_max_size = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 137
  %18 = ptrtoint ptr %gso_max_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %gso_max_size, align 8
  %gso_max_size.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 137
  %20 = ptrtoint ptr %gso_max_size.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 %19, ptr %gso_max_size.i, align 8
  %gso_max_segs = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 138
  %21 = ptrtoint ptr %gso_max_segs to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %gso_max_segs, align 4
  %gso_max_segs.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 138
  %23 = ptrtoint ptr %gso_max_segs.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store volatile i16 %22, ptr %gso_max_segs.i, align 4
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 19
  %24 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %hard_header_len, align 2
  %hard_header_len17 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 19
  %26 = ptrtoint ptr %hard_header_len17 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %hard_header_len17, align 2
  %qdisc_tx_busylock.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 147
  %27 = ptrtoint ptr %qdisc_tx_busylock.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @macvlan_set_lockdep_class.qdisc_tx_busylock_key, ptr %qdisc_tx_busylock.i, align 8
  %dep_map.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 63, i32 0, i32 0, i32 4
  %wait_type_inner.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 63, i32 0, i32 0, i32 4, i32 4
  %28 = ptrtoint ptr %wait_type_inner.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %wait_type_inner.i, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @macvlan_set_lockdep_class.dev_addr_list_lock_key, i32 noundef 0, i8 noundef zeroext %29, i8 noundef zeroext 0, i8 noundef zeroext 0) #19
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 104
  %30 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp38.not.i = icmp eq i32 %31, 0
  br i1 %cmp38.not.i, label %entry.macvlan_set_lockdep_class.exit_crit_edge, label %for.body.lr.ph.i

entry.macvlan_set_lockdep_class.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %macvlan_set_lockdep_class.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.039.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %32 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %_tx.i, align 128
  %dep_map5.i = getelementptr %struct.netdev_queue, ptr %33, i32 %i.039.i, i32 10, i32 0, i32 0, i32 4
  %wait_type_inner10.i = getelementptr %struct.netdev_queue, ptr %33, i32 %i.039.i, i32 10, i32 0, i32 0, i32 4, i32 4
  %34 = ptrtoint ptr %wait_type_inner10.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %wait_type_inner10.i, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map5.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @macvlan_set_lockdep_class.qdisc_xmit_lock_key, i32 noundef 0, i8 noundef zeroext %35, i8 noundef zeroext 0, i8 noundef zeroext 0) #19
  %inc.i = add nuw i32 %i.039.i, 1
  %36 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %37
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.macvlan_set_lockdep_class.exit_crit_edge

for.body.i.macvlan_set_lockdep_class.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %macvlan_set_lockdep_class.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i

macvlan_set_lockdep_class.exit:                   ; preds = %for.body.i.macvlan_set_lockdep_class.exit_crit_edge, %entry.macvlan_set_lockdep_class.exit_crit_edge
  %38 = ptrtoint ptr %wait_type_inner.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %wait_type_inner.i, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @macvlan_netdev_addr_lock_key, i32 noundef 0, i8 noundef zeroext %39, i8 noundef zeroext 0, i8 noundef zeroext 0) #19
  %call18 = tail call noalias ptr @__alloc_percpu_gfp(i32 noundef 80, i32 noundef 8, i32 noundef 3264) #23
  %tobool.not = icmp eq ptr %call18, null
  br i1 %tobool.not, label %if.then29.critedge, label %for.cond.preheader

for.cond.preheader:                               ; preds = %macvlan_set_lockdep_class.exit
  %call1960 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %40 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call1960, i32 %40)
  %cmp61 = icmp ult i32 %call1960, %40
  br i1 %cmp61, label %for.body.lr.ph, label %for.cond.preheader.if.end30_crit_edge

for.cond.preheader.if.end30_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end30

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %41 = ptrtoint ptr %call18 to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %call1962 = phi i32 [ %call1960, %for.body.lr.ph ], [ %call19, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call1962
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx, align 4
  %add = add i32 %43, %41
  %44 = inttoptr i32 %add to ptr
  %syncp = getelementptr inbounds %struct.vlan_pcpu_stats, ptr %44, i32 0, i32 5
  %dep_map.i59 = getelementptr inbounds %struct.vlan_pcpu_stats, ptr %44, i32 0, i32 5, i32 0, i32 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i59, ptr noundef nonnull @.str, ptr noundef nonnull @macvlan_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #19
  %45 = ptrtoint ptr %syncp to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %syncp, align 4
  %call19 = tail call i32 @cpumask_next(i32 noundef %call1962, ptr noundef nonnull @__cpu_possible_mask) #24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %46 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call19, %46
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.if.end30_crit_edge

for.body.if.end30_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end30

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

if.then29.critedge:                               ; preds = %macvlan_set_lockdep_class.exit
  call void @__sanitizer_cov_trace_pc() #21
  %pcpu_stats26.c = getelementptr i8, ptr %dev, i32 2336
  %47 = ptrtoint ptr %pcpu_stats26.c to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %pcpu_stats26.c, align 8
  br label %cleanup

if.end30:                                         ; preds = %for.body.if.end30_crit_edge, %for.cond.preheader.if.end30_crit_edge
  %pcpu_stats26 = getelementptr i8, ptr %dev, i32 2336
  %48 = ptrtoint ptr %pcpu_stats26 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call18, ptr %pcpu_stats26, align 8
  %count = getelementptr inbounds %struct.macvlan_port, ptr %3, i32 0, i32 7
  %49 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %count, align 4
  %add31 = add i32 %50, 1
  store i32 %add31, ptr %count, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.then29.critedge
  %retval.0 = phi i32 [ 0, %if.end30 ], [ -12, %if.then29.critedge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @macvlan_uninit(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %port1 = getelementptr i8, ptr %dev, i32 2324
  %0 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port1, align 4
  %pcpu_stats = getelementptr i8, ptr %dev, i32 2336
  %2 = ptrtoint ptr %pcpu_stats to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcpu_stats, align 8
  tail call void @free_percpu(ptr noundef %3) #19
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc24.i.for.body.i_crit_edge, %entry
  %i.039.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc24.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.macvlan_port, ptr %1, i32 0, i32 8, i32 %i.039.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %tobool5.not37.i = icmp eq ptr %5, null
  br i1 %tobool5.not37.i, label %for.body.i.for.inc24.i_crit_edge, label %for.body.i.land.rhs6.i_crit_edge

for.body.i.land.rhs6.i_crit_edge:                 ; preds = %for.body.i
  br label %land.rhs6.i

for.body.i.for.inc24.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc24.i

land.rhs6.i:                                      ; preds = %for.inc.i.land.rhs6.i_crit_edge, %for.body.i.land.rhs6.i_crit_edge
  %entry1.138.i = phi ptr [ %7, %for.inc.i.land.rhs6.i_crit_edge ], [ %5, %for.body.i.land.rhs6.i_crit_edge ]
  %6 = ptrtoint ptr %entry1.138.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %entry1.138.i, align 4
  %vlan12.i = getelementptr inbounds %struct.macvlan_source_entry, ptr %entry1.138.i, i32 0, i32 1
  %8 = ptrtoint ptr %vlan12.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vlan12.i, align 4
  %cmp13.i = icmp eq ptr %9, %add.ptr.i
  br i1 %cmp13.i, label %if.then.i, label %land.rhs6.i.for.inc.i_crit_edge

land.rhs6.i.for.inc.i_crit_edge:                  ; preds = %land.rhs6.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.i

if.then.i:                                        ; preds = %land.rhs6.i
  %pprev2.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %entry1.138.i, i32 0, i32 1
  %10 = ptrtoint ptr %pprev2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pprev2.i.i.i.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %7, ptr %11, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.macvlan_hash_del_source.exit.i_crit_edge, label %do.body13.i.i.i.i

if.then.i.macvlan_hash_del_source.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %macvlan_hash_del_source.exit.i

do.body13.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #21
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %7, i32 0, i32 1
  %13 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %pprev14.i.i.i.i, align 4
  br label %macvlan_hash_del_source.exit.i

macvlan_hash_del_source.exit.i:                   ; preds = %do.body13.i.i.i.i, %if.then.i.macvlan_hash_del_source.exit.i_crit_edge
  %14 = ptrtoint ptr %pprev2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i.i, align 4
  %rcu.i.i = getelementptr inbounds %struct.macvlan_source_entry, ptr %entry1.138.i, i32 0, i32 3
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i.i, ptr noundef nonnull inttoptr (i32 20 to ptr)) #19
  br label %for.inc.i

for.inc.i:                                        ; preds = %macvlan_hash_del_source.exit.i, %land.rhs6.i.for.inc.i_crit_edge
  %tobool5.not.i = icmp eq ptr %7, null
  br i1 %tobool5.not.i, label %for.inc.i.for.inc24.i_crit_edge, label %for.inc.i.land.rhs6.i_crit_edge

for.inc.i.land.rhs6.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %land.rhs6.i

for.inc.i.for.inc24.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc24.i

for.inc24.i:                                      ; preds = %for.inc.i.for.inc24.i_crit_edge, %for.body.i.for.inc24.i_crit_edge
  %inc.i = add nuw nsw i32 %i.039.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %macvlan_flush_sources.exit, label %for.inc24.i.for.body.i_crit_edge

for.inc24.i.for.body.i_crit_edge:                 ; preds = %for.inc24.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i

macvlan_flush_sources.exit:                       ; preds = %for.inc24.i
  %macaddr_count.i = getelementptr i8, ptr %dev, i32 2392
  %15 = ptrtoint ptr %macaddr_count.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %macaddr_count.i, align 8
  %count = getelementptr inbounds %struct.macvlan_port, ptr %1, i32 0, i32 7
  %16 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %count, align 4
  %sub = add i32 %17, -1
  store i32 %sub, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %if.then, label %macvlan_flush_sources.exit.if.end_crit_edge

macvlan_flush_sources.exit.if.end_crit_edge:      ; preds = %macvlan_flush_sources.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %macvlan_flush_sources.exit
  call void @__sanitizer_cov_trace_pc() #21
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  tail call fastcc void @macvlan_port_destroy(ptr noundef %19)
  br label %if.end

if.end:                                           ; preds = %if.then, %macvlan_flush_sources.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @macvlan_open(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %lowerdev1 = getelementptr i8, ptr %dev, i32 2328
  %0 = ptrtoint ptr %lowerdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lowerdev1, align 8
  %port = getelementptr i8, ptr %dev, i32 2324
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 4
  %flags.i = getelementptr inbounds %struct.macvlan_port, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end8, label %if.then

if.then:                                          ; preds = %entry
  %flags = getelementptr i8, ptr %dev, i32 2388
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %flags, align 4
  %8 = and i16 %7, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not = icmp eq i16 %8, 0
  br i1 %tobool.not, label %if.then3, label %if.then.hash_add_crit_edge

if.then.hash_add_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  br label %hash_add

if.then3:                                         ; preds = %if.then
  %call4 = tail call i32 @dev_set_promiscuity(ptr noundef %1, i32 noundef 1) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.then3.cleanup_crit_edge, label %if.then3.hash_add_crit_edge

if.then3.hash_add_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #21
  br label %hash_add

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end8:                                          ; preds = %entry
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %9 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_addr, align 64
  %11 = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %.not.i = icmp eq i32 %11, 0
  br i1 %.not.i, label %land.lhs.true2.i, label %if.end8.macvlan_addr_busy.exit_crit_edge

if.end8.macvlan_addr_busy.exit_crit_edge:         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #21
  br label %macvlan_addr_busy.exit

land.lhs.true2.i:                                 ; preds = %if.end8
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 86
  %14 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_addr.i, align 64
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %18 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %10, align 4
  %xor.i.i.i = xor i32 %19, %17
  %add.ptr.i.i.i = getelementptr i8, ptr %15, i32 4
  %20 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %add.ptr.i.i.i, align 2
  %add.ptr1.i.i.i = getelementptr i8, ptr %10, i32 4
  %22 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %add.ptr1.i.i.i, align 2
  %xor37.i.i.i = xor i16 %23, %21
  %xor3.i.i.i = zext i16 %xor37.i.i.i to i32
  %or.i.i.i = or i32 %xor.i.i.i, %xor3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.i, label %land.lhs.true2.i.cleanup_crit_edge, label %land.lhs.true2.i.macvlan_addr_busy.exit_crit_edge

land.lhs.true2.i.macvlan_addr_busy.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %macvlan_addr_busy.exit

land.lhs.true2.i.cleanup_crit_edge:               ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

macvlan_addr_busy.exit:                           ; preds = %land.lhs.true2.i.macvlan_addr_busy.exit_crit_edge, %if.end8.macvlan_addr_busy.exit_crit_edge
  %call4.i = tail call fastcc ptr @macvlan_hash_lookup(ptr noundef %3, ptr noundef %10) #19
  %tobool.not.i.not = icmp eq ptr %call4.i, null
  br i1 %tobool.not.i.not, label %if.end12, label %macvlan_addr_busy.exit.cleanup_crit_edge

macvlan_addr_busy.exit.cleanup_crit_edge:         ; preds = %macvlan_addr_busy.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end12:                                         ; preds = %macvlan_addr_busy.exit
  %features = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 23
  %24 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %features, align 16
  %and13 = and i64 %25, 281474976710656
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and13)
  %tobool14.not = icmp eq i64 %and13, 0
  br i1 %tobool14.not, label %if.end12.if.end17_crit_edge, label %if.then15

if.end12.if.end17_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end17

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #21
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 16
  %26 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %netdev_ops, align 8
  %ndo_dfwd_add_station = getelementptr inbounds %struct.net_device_ops, ptr %27, i32 0, i32 70
  %28 = ptrtoint ptr %ndo_dfwd_add_station to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ndo_dfwd_add_station, align 4
  %call16 = tail call ptr %29(ptr noundef %1, ptr noundef %dev) #19
  %accel_priv = getelementptr i8, ptr %dev, i32 2332
  %30 = ptrtoint ptr %accel_priv to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call16, ptr %accel_priv, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end12.if.end17_crit_edge
  %accel_priv18 = getelementptr i8, ptr %dev, i32 2332
  %31 = ptrtoint ptr %accel_priv18 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %accel_priv18, align 4
  %tobool.not.i97 = icmp eq ptr %32, null
  %cmp.i = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i97, %cmp.i
  br i1 %spec.select.i, label %if.then20, label %if.end17.if.end28_crit_edge

if.end17.if.end28_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end28

if.then20:                                        ; preds = %if.end17
  %33 = ptrtoint ptr %accel_priv18 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %accel_priv18, align 4
  %34 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev_addr, align 64
  %call23 = tail call i32 @dev_uc_add(ptr noundef %1, ptr noundef %35) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.then20.cleanup_crit_edge, label %if.then20.if.end28_crit_edge

if.then20.if.end28_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end28

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end28:                                         ; preds = %if.then20.if.end28_crit_edge, %if.end17.if.end28_crit_edge
  %flags29 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %36 = ptrtoint ptr %flags29 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags29, align 8
  %and30 = and i32 %37, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end28.if.end38_crit_edge, label %if.then32

if.end28.if.end38_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end38

if.then32:                                        ; preds = %if.end28
  %call33 = tail call i32 @dev_set_allmulti(ptr noundef %1, i32 noundef 1) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.then32.del_unicast_crit_edge, label %if.then32.if.end38_crit_edge

if.then32.if.end38_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end38

if.then32.del_unicast_crit_edge:                  ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #21
  br label %del_unicast

if.end38:                                         ; preds = %if.then32.if.end38_crit_edge, %if.end28.if.end38_crit_edge
  %38 = ptrtoint ptr %flags29 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags29, align 8
  %and40 = and i32 %39, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end38.hash_add_crit_edge, label %if.then42

if.end38.hash_add_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #21
  br label %hash_add

if.then42:                                        ; preds = %if.end38
  %call43 = tail call i32 @dev_set_promiscuity(ptr noundef %1, i32 noundef 1) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %clear_multi, label %if.then42.hash_add_crit_edge

if.then42.hash_add_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #21
  br label %hash_add

hash_add:                                         ; preds = %if.then42.hash_add_crit_edge, %if.end38.hash_add_crit_edge, %if.then3.hash_add_crit_edge, %if.then.hash_add_crit_edge
  %40 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %port, align 4
  %42 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %add.ptr.i, align 8
  %dev_addr.i98 = getelementptr inbounds %struct.net_device, ptr %43, i32 0, i32 86
  %44 = ptrtoint ptr %dev_addr.i98 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev_addr.i98, align 64
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_loadN_noabort(i32 %46, i32 8)
  %47 = load i64, ptr %45, align 1
  %shr.i.i = lshr i64 %47, 16
  %conv.i.i.i = trunc i64 %shr.i.i to i32
  %shr.i.i.i = lshr i64 %47, 48
  %conv1.i.i.i = trunc i64 %shr.i.i.i to i32
  %mul.i.i.i.i = mul i32 %conv1.i.i.i, 1640531527
  %xor.i.i.i99 = xor i32 %mul.i.i.i.i, %conv.i.i.i
  %mul.i.i.i.i.i = mul i32 %xor.i.i.i99, 1640531527
  %shr.i.i.i.i = lshr i32 %mul.i.i.i.i.i, 24
  %hlist.i = getelementptr i8, ptr %dev, i32 2316
  %arrayidx.i = getelementptr %struct.macvlan_port, ptr %41, i32 0, i32 1, i32 %shr.i.i.i.i
  %48 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.i, align 4
  %50 = ptrtoint ptr %hlist.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %49, ptr %hlist.i, align 4
  %pprev.i.i = getelementptr i8, ptr %dev, i32 2320
  %51 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %arrayidx.i, ptr %pprev.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !96
  %52 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %hlist.i, ptr %arrayidx.i, align 4
  %tobool.not.i.i = icmp eq ptr %49, null
  br i1 %tobool.not.i.i, label %hash_add.cleanup_crit_edge, label %do.body49.i.i

hash_add.cleanup_crit_edge:                       ; preds = %hash_add
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

do.body49.i.i:                                    ; preds = %hash_add
  call void @__sanitizer_cov_trace_pc() #21
  %pprev51.i.i = getelementptr inbounds %struct.hlist_node, ptr %49, i32 0, i32 1
  %53 = ptrtoint ptr %pprev51.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %hlist.i, ptr %pprev51.i.i, align 4
  br label %cleanup

clear_multi:                                      ; preds = %if.then42
  %54 = ptrtoint ptr %flags29 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %flags29, align 8
  %and50 = and i32 %55, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %clear_multi.del_unicast_crit_edge, label %if.then52

clear_multi.del_unicast_crit_edge:                ; preds = %clear_multi
  call void @__sanitizer_cov_trace_pc() #21
  br label %del_unicast

if.then52:                                        ; preds = %clear_multi
  call void @__sanitizer_cov_trace_pc() #21
  %call53 = tail call i32 @dev_set_allmulti(ptr noundef %1, i32 noundef -1) #19
  br label %del_unicast

del_unicast:                                      ; preds = %if.then52, %clear_multi.del_unicast_crit_edge, %if.then32.del_unicast_crit_edge
  %err.0 = phi i32 [ %call33, %if.then32.del_unicast_crit_edge ], [ %call43, %if.then52 ], [ %call43, %clear_multi.del_unicast_crit_edge ]
  %56 = ptrtoint ptr %accel_priv18 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %accel_priv18, align 4
  %tobool56.not = icmp eq ptr %57, null
  br i1 %tobool56.not, label %if.else, label %if.then57

if.then57:                                        ; preds = %del_unicast
  call void @__sanitizer_cov_trace_pc() #21
  %netdev_ops58 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 16
  %58 = ptrtoint ptr %netdev_ops58 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %netdev_ops58, align 8
  %ndo_dfwd_del_station = getelementptr inbounds %struct.net_device_ops, ptr %59, i32 0, i32 71
  %60 = ptrtoint ptr %ndo_dfwd_del_station to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ndo_dfwd_del_station, align 4
  tail call void %61(ptr noundef %1, ptr noundef nonnull %57) #19
  %62 = ptrtoint ptr %accel_priv18 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %accel_priv18, align 4
  br label %cleanup

if.else:                                          ; preds = %del_unicast
  call void @__sanitizer_cov_trace_pc() #21
  %63 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev_addr, align 64
  %call62 = tail call i32 @dev_uc_del(ptr noundef %1, ptr noundef %64) #19
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then57, %do.body49.i.i, %hash_add.cleanup_crit_edge, %if.then20.cleanup_crit_edge, %macvlan_addr_busy.exit.cleanup_crit_edge, %land.lhs.true2.i.cleanup_crit_edge, %if.then3.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.then3.cleanup_crit_edge ], [ -98, %macvlan_addr_busy.exit.cleanup_crit_edge ], [ %call23, %if.then20.cleanup_crit_edge ], [ %err.0, %if.then57 ], [ %err.0, %if.else ], [ 0, %hash_add.cleanup_crit_edge ], [ 0, %do.body49.i.i ], [ -98, %land.lhs.true2.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @macvlan_stop(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %lowerdev1 = getelementptr i8, ptr %dev, i32 2328
  %0 = ptrtoint ptr %lowerdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lowerdev1, align 8
  %accel_priv = getelementptr i8, ptr %dev, i32 2332
  %2 = ptrtoint ptr %accel_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %accel_priv, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev_ops, align 8
  %ndo_dfwd_del_station = getelementptr inbounds %struct.net_device_ops, ptr %5, i32 0, i32 71
  %6 = ptrtoint ptr %ndo_dfwd_del_station to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ndo_dfwd_del_station, align 4
  tail call void %7(ptr noundef %1, ptr noundef nonnull %3) #19
  %8 = ptrtoint ptr %accel_priv to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %accel_priv, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @dev_uc_unsync(ptr noundef %1, ptr noundef %dev) #19
  tail call void @dev_mc_unsync(ptr noundef %1, ptr noundef %dev) #19
  %port = getelementptr i8, ptr %dev, i32 2324
  %9 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %port, align 4
  %flags.i = getelementptr inbounds %struct.macvlan_port, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end10, label %if.then5

if.then5:                                         ; preds = %if.end
  %flags = getelementptr i8, ptr %dev, i32 2388
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %flags, align 4
  %15 = and i16 %14, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool6.not = icmp eq i16 %15, 0
  br i1 %tobool6.not, label %if.then7, label %if.then5.hash_del_crit_edge

if.then5.hash_del_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #21
  br label %hash_del

if.then7:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #21
  %call8 = tail call i32 @dev_set_promiscuity(ptr noundef %1, i32 noundef -1) #19
  br label %hash_del

if.end10:                                         ; preds = %if.end
  %flags11 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %16 = ptrtoint ptr %flags11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags11, align 8
  %and12 = and i32 %17, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end10.if.end16_crit_edge, label %if.then14

if.end10.if.end16_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end16

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #21
  %call15 = tail call i32 @dev_set_allmulti(ptr noundef %1, i32 noundef -1) #19
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end10.if.end16_crit_edge
  %18 = ptrtoint ptr %flags11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags11, align 8
  %and18 = and i32 %19, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end16.if.end22_crit_edge, label %if.then20

if.end16.if.end22_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end22

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #21
  %call21 = tail call i32 @dev_set_promiscuity(ptr noundef %1, i32 noundef -1) #19
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end16.if.end22_crit_edge
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %20 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev_addr, align 64
  %call23 = tail call i32 @dev_uc_del(ptr noundef %1, ptr noundef %21) #19
  br label %hash_del

hash_del:                                         ; preds = %if.end22, %if.then7, %if.then5.hash_del_crit_edge
  %dismantle = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 122
  %22 = ptrtoint ptr %dismantle to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %dismantle, align 1, !range !102
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool24.not = icmp eq i8 %23, 0
  %hlist.i = getelementptr i8, ptr %dev, i32 2316
  %24 = ptrtoint ptr %hlist.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hlist.i, align 4
  %pprev2.i.i.i = getelementptr i8, ptr %dev, i32 2320
  %26 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pprev2.i.i.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %25, ptr %27, align 4
  %tobool.not.i.i.i = icmp eq ptr %25, null
  br i1 %tobool.not.i.i.i, label %hash_del.hlist_del_rcu.exit.i_crit_edge, label %do.body13.i.i.i

hash_del.hlist_del_rcu.exit.i_crit_edge:          ; preds = %hash_del
  call void @__sanitizer_cov_trace_pc() #21
  br label %hlist_del_rcu.exit.i

do.body13.i.i.i:                                  ; preds = %hash_del
  call void @__sanitizer_cov_trace_pc() #21
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %25, i32 0, i32 1
  %29 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %pprev14.i.i.i, align 4
  br label %hlist_del_rcu.exit.i

hlist_del_rcu.exit.i:                             ; preds = %do.body13.i.i.i, %hash_del.hlist_del_rcu.exit.i_crit_edge
  %30 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i, align 4
  br i1 %tobool24.not, label %if.then.i, label %hlist_del_rcu.exit.i.macvlan_hash_del.exit_crit_edge

hlist_del_rcu.exit.i.macvlan_hash_del.exit_crit_edge: ; preds = %hlist_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %macvlan_hash_del.exit

if.then.i:                                        ; preds = %hlist_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @synchronize_rcu() #19
  br label %macvlan_hash_del.exit

macvlan_hash_del.exit:                            ; preds = %if.then.i, %hlist_del_rcu.exit.i.macvlan_hash_del.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @macvlan_start_xmit(ptr noundef %skb, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %len1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len1, align 4
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #19, !srcloc !99
  %and.i.i = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not, label %if.end, label %if.then, !prof !103

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %netpoll.i = getelementptr i8, ptr %dev, i32 2400
  %3 = ptrtoint ptr %netpoll.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %netpoll.i, align 8
  %call.i = tail call i32 @netpoll_send_skb(ptr noundef %4, ptr noundef %skb) #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %port1.i = getelementptr i8, ptr %dev, i32 2324
  %5 = ptrtoint ptr %port1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %port1.i, align 4
  %mode.i = getelementptr i8, ptr %dev, i32 2384
  %7 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %cmp.i = icmp eq i32 %8, 4
  br i1 %cmp.i, label %if.then.i, label %if.end.macvlan_queue_xmit.exit_crit_edge

if.end.macvlan_queue_xmit.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %macvlan_queue_xmit.exit

if.then.i:                                        ; preds = %if.end
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %9 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %13 = and i32 %12, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.i.not.i = icmp eq i32 %13, 0
  br i1 %tobool.i.not.i, label %if.end.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #21
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %14 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %10 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %15 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %16 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv.i.i, ptr %mac_header.i.i, align 2
  tail call fastcc void @macvlan_broadcast(ptr noundef %skb, ptr noundef %6, ptr noundef %dev, i32 noundef 4) #19
  br label %macvlan_queue_xmit.exit

if.end.i:                                         ; preds = %if.then.i
  %call7.i = tail call fastcc ptr @macvlan_hash_lookup(ptr noundef %6, ptr noundef %10) #19
  %tobool.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool.not.i, label %if.end.i.macvlan_queue_xmit.exit_crit_edge, label %land.lhs.true.i

if.end.i.macvlan_queue_xmit.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %macvlan_queue_xmit.exit

land.lhs.true.i:                                  ; preds = %if.end.i
  %mode8.i = getelementptr inbounds %struct.macvlan_dev, ptr %call7.i, i32 0, i32 9
  %17 = ptrtoint ptr %mode8.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mode8.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %18)
  %cmp9.i = icmp eq i32 %18, 4
  br i1 %cmp9.i, label %macvlan_queue_xmit.exit.thread, label %land.lhs.true.i.macvlan_queue_xmit.exit_crit_edge

land.lhs.true.i.macvlan_queue_xmit.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %macvlan_queue_xmit.exit

macvlan_queue_xmit.exit.thread:                   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  %lowerdev.i = getelementptr i8, ptr %dev, i32 2328
  %19 = ptrtoint ptr %lowerdev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %lowerdev.i, align 8
  %call11.i = tail call i32 @dev_forward_skb(ptr noundef %20, ptr noundef %skb) #19
  br label %if.then13

macvlan_queue_xmit.exit:                          ; preds = %land.lhs.true.i.macvlan_queue_xmit.exit_crit_edge, %if.end.i.macvlan_queue_xmit.exit_crit_edge, %if.then4.i, %if.end.macvlan_queue_xmit.exit_crit_edge
  %lowerdev14.i = getelementptr i8, ptr %dev, i32 2328
  %21 = ptrtoint ptr %lowerdev14.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %lowerdev14.i, align 8
  %23 = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 2
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %22, ptr %23, align 8
  %num_tc.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 140
  %25 = ptrtoint ptr %num_tc.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %num_tc.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %26)
  %cmp.i.i = icmp sgt i16 %26, -1
  %spec.select.i = select i1 %cmp.i.i, ptr null, ptr %dev
  %call17.i = tail call i32 @dev_queue_xmit_accel(ptr noundef %skb, ptr noundef %spec.select.i) #19
  %27 = zext i32 %call17.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %call17.i, label %do.body20 [
    i32 2, label %macvlan_queue_xmit.exit.if.then13_crit_edge
    i32 0, label %macvlan_queue_xmit.exit.if.then13_crit_edge93
  ]

macvlan_queue_xmit.exit.if.then13_crit_edge93:    ; preds = %macvlan_queue_xmit.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then13

macvlan_queue_xmit.exit.if.then13_crit_edge:      ; preds = %macvlan_queue_xmit.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then13

if.then13:                                        ; preds = %macvlan_queue_xmit.exit.if.then13_crit_edge, %macvlan_queue_xmit.exit.if.then13_crit_edge93, %macvlan_queue_xmit.exit.thread
  %retval.1.i92 = phi i32 [ 0, %macvlan_queue_xmit.exit.thread ], [ %call17.i, %macvlan_queue_xmit.exit.if.then13_crit_edge ], [ %call17.i, %macvlan_queue_xmit.exit.if.then13_crit_edge93 ]
  %pcpu_stats14 = getelementptr i8, ptr %dev, i32 2336
  %28 = ptrtoint ptr %pcpu_stats14 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pcpu_stats14, align 8
  %30 = ptrtoint ptr %29 to i32
  %31 = tail call i32 @llvm.read_register.i32(metadata !86) #19
  %and.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %34
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx, align 4
  %add = add i32 %36, %30
  %37 = inttoptr i32 %add to ptr
  %syncp = getelementptr inbounds %struct.vlan_pcpu_stats, ptr %37, i32 0, i32 5
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp)
  %tx_packets = getelementptr inbounds %struct.vlan_pcpu_stats, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %tx_packets, align 8
  %inc = add i64 %39, 1
  store i64 %inc, ptr %tx_packets, align 8
  %conv = zext i32 %1 to i64
  %tx_bytes = getelementptr inbounds %struct.vlan_pcpu_stats, ptr %37, i32 0, i32 4
  %40 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %tx_bytes, align 8
  %add17 = add i64 %41, %conv
  store i64 %add17, ptr %tx_bytes, align 8
  %dep_map.i.i = getelementptr inbounds %struct.vlan_pcpu_stats, ptr %37, i32 0, i32 5, i32 0, i32 1
  %42 = tail call ptr @llvm.returnaddress(i32 0) #19
  %43 = ptrtoint ptr %42 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %43) #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !104
  %44 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %45, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  br label %cleanup

do.body20:                                        ; preds = %macvlan_queue_xmit.exit
  %46 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !98
  %pcpu_stats39 = getelementptr i8, ptr %dev, i32 2336
  %47 = ptrtoint ptr %pcpu_stats39 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pcpu_stats39, align 8
  %tx_dropped = getelementptr inbounds %struct.vlan_pcpu_stats, ptr %48, i32 0, i32 7
  %49 = ptrtoint ptr %tx_dropped to i32
  %50 = tail call i32 @llvm.read_register.i32(metadata !86) #19
  %and.i89 = and i32 %50, -16384
  %51 = inttoptr i32 %and.i89 to ptr
  %cpu42 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %cpu42 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cpu42, align 4
  %arrayidx43 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %53
  %54 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx43, align 4
  %add44 = add i32 %55, %49
  %56 = inttoptr i32 %add44 to ptr
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %56, align 4
  %add45 = add i32 %58, 1
  store i32 %add45, ptr %56, align 4
  %59 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #19, !srcloc !99
  %and.i.i90 = and i32 %59, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i90)
  %tobool56.not = icmp eq i32 %and.i.i90, 0
  br i1 %tobool56.not, label %if.then65, label %do.body20.do.end68_crit_edge, !prof !100

do.body20.do.end68_crit_edge:                     ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end68

if.then65:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @warn_bogus_irq_restore() #19
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %do.body20.do.end68_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %46) #19, !srcloc !101
  br label %cleanup

cleanup:                                          ; preds = %do.end68, %if.then13, %if.then
  %retval.0 = phi i32 [ %call.i, %if.then ], [ %call17.i, %do.end68 ], [ %retval.1.i92, %if.then13 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @passthru_features_check(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @macvlan_change_rx_flags(ptr nocapture noundef readonly %dev, i32 noundef %change) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %lowerdev1 = getelementptr i8, ptr %dev, i32 2328
  %0 = ptrtoint ptr %lowerdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lowerdev1, align 8
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end18_crit_edge, label %if.then

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end18

if.then:                                          ; preds = %entry
  %and2 = and i32 %change, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.then.if.end_crit_edge, label %if.then4

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  %and6 = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  %cond = select i1 %tobool7.not, i32 -1, i32 1
  %call8 = tail call i32 @dev_set_allmulti(ptr noundef %1, i32 noundef %cond) #19
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then.if.end_crit_edge
  %and9 = and i32 %change, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end.if.end18_crit_edge, label %if.then11

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end18

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 8
  %and13 = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %cond15 = select i1 %tobool14.not, i32 -1, i32 1
  %call16 = tail call i32 @dev_set_promiscuity(ptr noundef %1, i32 noundef %cond15) #19
  br label %if.end18

if.end18:                                         ; preds = %if.then11, %if.end.if.end18_crit_edge, %entry.if.end18_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @macvlan_set_mac_lists(ptr noundef %dev) #0 align 64 {
entry:
  %filter.i15 = alloca [8 x i32], align 4
  %filter.i = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %mc_filter = getelementptr i8, ptr %dev, i32 2340
  %flags.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %1, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %2 = call ptr @memset(ptr %mc_filter, i32 255, i32 32)
  br label %macvlan_compute_filter.exit

if.else.i:                                        ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %filter.i) #19
  %3 = call ptr @memset(ptr %filter.i, i32 0, i32 32)
  %mc.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66
  %4 = ptrtoint ptr %mc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %ha.033.i = load ptr, ptr %mc.i, align 4
  %cmp.not34.i = icmp eq ptr %ha.033.i, %mc.i
  %.pre.i = ptrtoint ptr %add.ptr.i to i32
  %.pre36.i = lshr i32 %.pre.i, 7
  br i1 %cmp.not34.i, label %if.else.i.for.end.i_crit_edge, label %if.else.i.for.body.i_crit_edge

if.else.i.for.body.i_crit_edge:                   ; preds = %if.else.i
  br label %for.body.i

if.else.i.for.end.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.else.i.for.body.i_crit_edge
  %ha.035.i = phi ptr [ %ha.0.i, %for.body.i.for.body.i_crit_edge ], [ %ha.033.i, %if.else.i.for.body.i_crit_edge ]
  %add.ptr.i27.i = getelementptr %struct.netdev_hw_addr, ptr %ha.035.i, i32 0, i32 2, i32 2
  %5 = ptrtoint ptr %add.ptr.i27.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %add.ptr.i27.i, align 1
  %xor.i.i = xor i32 %6, %.pre36.i
  %mul.i.i.i.i = mul i32 %xor.i.i, 1640531527
  %shr.i4.i.i = lshr i32 %mul.i.i.i.i, 24
  %rem.i.i = and i32 %shr.i4.i.i, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %mul.i.i.i.i, 29
  %add.ptr.i.i = getelementptr i32, ptr %filter.i, i32 %div2.i.i
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %shl.i.i, %8
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  %9 = ptrtoint ptr %ha.035.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %ha.0.i = load ptr, ptr %ha.035.i, align 4
  %cmp.not.i = icmp eq ptr %ha.0.i, %mc.i
  br i1 %cmp.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.else.i.for.end.i_crit_edge
  %add.ptr.i28.i = getelementptr %struct.net_device, ptr %dev, i32 0, i32 99, i32 2
  %10 = ptrtoint ptr %add.ptr.i28.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %add.ptr.i28.i, align 1
  %xor.i30.i = xor i32 %11, %.pre36.i
  %mul.i.i.i31.i = mul i32 %xor.i30.i, 1640531527
  %shr.i4.i32.i = lshr i32 %mul.i.i.i31.i, 24
  %rem.i22.i = and i32 %shr.i4.i32.i, 31
  %shl.i23.i = shl nuw i32 1, %rem.i22.i
  %div2.i24.i = lshr i32 %mul.i.i.i31.i, 29
  %add.ptr.i25.i = getelementptr i32, ptr %filter.i, i32 %div2.i24.i
  %12 = ptrtoint ptr %add.ptr.i25.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i25.i, align 4
  %or.i26.i = or i32 %shl.i23.i, %13
  store i32 %or.i26.i, ptr %add.ptr.i25.i, align 4
  %14 = call ptr @memcpy(ptr %mc_filter, ptr %filter.i, i32 32)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %filter.i) #19
  br label %macvlan_compute_filter.exit

macvlan_compute_filter.exit:                      ; preds = %for.end.i, %if.then.i
  %lowerdev = getelementptr i8, ptr %dev, i32 2328
  %15 = ptrtoint ptr %lowerdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lowerdev, align 8
  %call1 = tail call i32 @dev_uc_sync(ptr noundef %16, ptr noundef %dev) #19
  %17 = ptrtoint ptr %lowerdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lowerdev, align 8
  %call3 = tail call i32 @dev_mc_sync(ptr noundef %18, ptr noundef %dev) #19
  %port = getelementptr i8, ptr %dev, i32 2324
  %19 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %port, align 4
  %mc_filter4 = getelementptr inbounds %struct.macvlan_port, ptr %20, i32 0, i32 9
  %21 = ptrtoint ptr %lowerdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %lowerdev, align 8
  %flags.i16 = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 14
  %23 = ptrtoint ptr %flags.i16 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags.i16, align 8
  %and.i17 = and i32 %24, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i17)
  %tobool.not.i18 = icmp eq i32 %and.i17, 0
  br i1 %tobool.not.i18, label %if.else.i23, label %if.then.i19

if.then.i19:                                      ; preds = %macvlan_compute_filter.exit
  call void @__sanitizer_cov_trace_pc() #21
  %25 = call ptr @memset(ptr %mc_filter4, i32 255, i32 32)
  br label %macvlan_compute_filter.exit45

if.else.i23:                                      ; preds = %macvlan_compute_filter.exit
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %filter.i15) #19
  %26 = call ptr @memset(ptr %filter.i15, i32 0, i32 32)
  %mc.i20 = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 66
  %27 = ptrtoint ptr %mc.i20 to i32
  call void @__asan_load4_noabort(i32 %27)
  %ha.033.i21 = load ptr, ptr %mc.i20, align 4
  %cmp.not34.i22 = icmp eq ptr %ha.033.i21, %mc.i20
  br i1 %cmp.not34.i22, label %if.else.i23.for.end.i44_crit_edge, label %if.else.i23.for.body.i35_crit_edge

if.else.i23.for.body.i35_crit_edge:               ; preds = %if.else.i23
  br label %for.body.i35

if.else.i23.for.end.i44_crit_edge:                ; preds = %if.else.i23
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end.i44

for.body.i35:                                     ; preds = %for.body.i35.for.body.i35_crit_edge, %if.else.i23.for.body.i35_crit_edge
  %ha.035.i24 = phi ptr [ %ha.0.i33, %for.body.i35.for.body.i35_crit_edge ], [ %ha.033.i21, %if.else.i23.for.body.i35_crit_edge ]
  %add.ptr.i27.i25 = getelementptr %struct.netdev_hw_addr, ptr %ha.035.i24, i32 0, i32 2, i32 2
  %28 = ptrtoint ptr %add.ptr.i27.i25 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %add.ptr.i27.i25, align 1
  %mul.i.i.i.i26 = mul i32 %29, 1640531527
  %shr.i4.i.i27 = lshr i32 %mul.i.i.i.i26, 24
  %rem.i.i28 = and i32 %shr.i4.i.i27, 31
  %shl.i.i29 = shl nuw i32 1, %rem.i.i28
  %div2.i.i30 = lshr i32 %mul.i.i.i.i26, 29
  %add.ptr.i.i31 = getelementptr i32, ptr %filter.i15, i32 %div2.i.i30
  %30 = ptrtoint ptr %add.ptr.i.i31 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr.i.i31, align 4
  %or.i.i32 = or i32 %shl.i.i29, %31
  store i32 %or.i.i32, ptr %add.ptr.i.i31, align 4
  %32 = ptrtoint ptr %ha.035.i24 to i32
  call void @__asan_load4_noabort(i32 %32)
  %ha.0.i33 = load ptr, ptr %ha.035.i24, align 4
  %cmp.not.i34 = icmp eq ptr %ha.0.i33, %mc.i20
  br i1 %cmp.not.i34, label %for.body.i35.for.end.i44_crit_edge, label %for.body.i35.for.body.i35_crit_edge

for.body.i35.for.body.i35_crit_edge:              ; preds = %for.body.i35
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i35

for.body.i35.for.end.i44_crit_edge:               ; preds = %for.body.i35
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end.i44

for.end.i44:                                      ; preds = %for.body.i35.for.end.i44_crit_edge, %if.else.i23.for.end.i44_crit_edge
  %add.ptr.i28.i36 = getelementptr %struct.net_device, ptr %22, i32 0, i32 99, i32 2
  %33 = ptrtoint ptr %add.ptr.i28.i36 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %add.ptr.i28.i36, align 1
  %mul.i.i.i31.i37 = mul i32 %34, 1640531527
  %shr.i4.i32.i38 = lshr i32 %mul.i.i.i31.i37, 24
  %rem.i22.i39 = and i32 %shr.i4.i32.i38, 31
  %shl.i23.i40 = shl nuw i32 1, %rem.i22.i39
  %div2.i24.i41 = lshr i32 %mul.i.i.i31.i37, 29
  %add.ptr.i25.i42 = getelementptr i32, ptr %filter.i15, i32 %div2.i24.i41
  %35 = ptrtoint ptr %add.ptr.i25.i42 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %add.ptr.i25.i42, align 4
  %or.i26.i43 = or i32 %shl.i23.i40, %36
  store i32 %or.i26.i43, ptr %add.ptr.i25.i42, align 4
  %37 = call ptr @memcpy(ptr %mc_filter4, ptr %filter.i15, i32 32)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %filter.i15) #19
  br label %macvlan_compute_filter.exit45

macvlan_compute_filter.exit45:                    ; preds = %for.end.i44, %if.then.i19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @macvlan_set_mac_address(ptr noundef %dev, ptr noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %sa_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sa_data, align 4
  %2 = and i32 %1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not.i = icmp eq i32 %2, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

is_valid_ether_addr.exit:                         ; preds = %entry
  %add.ptr.i.i = getelementptr %struct.sockaddr, ptr %p, i32 0, i32 1, i32 4
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %4 to i32
  %or.i.i = or i32 %1, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.cleanup_crit_edge, label %if.end

is_valid_ether_addr.exit.cleanup_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %is_valid_ether_addr.exit
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %5 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_addr, align 64
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %xor.i = xor i32 %8, %1
  %add.ptr.i29 = getelementptr i8, ptr %6, i32 4
  %9 = ptrtoint ptr %add.ptr.i29 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr.i29, align 2
  %11 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %add.ptr.i.i, align 2
  %xor37.i = xor i16 %12, %10
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %mode = getelementptr i8, ptr %dev, i32 2384
  %13 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %14)
  %cmp = icmp eq i32 %14, 8
  %port = getelementptr i8, ptr %dev, i32 2324
  %15 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %port, align 4
  %flags.i = getelementptr inbounds %struct.macvlan_port, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags.i, align 4
  br i1 %cmp, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #21
  %or.i30 = or i32 %18, 2
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or.i30, ptr %flags.i, align 4
  %lowerdev = getelementptr i8, ptr %dev, i32 2328
  %20 = ptrtoint ptr %lowerdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lowerdev, align 8
  %call8 = tail call i32 @dev_set_mac_address(ptr noundef %21, ptr noundef %p, ptr noundef null) #19
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %22 = and i32 %18, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %.not.i = icmp eq i32 %22, 0
  br i1 %.not.i, label %land.lhs.true2.i, label %if.end9.macvlan_addr_busy.exit_crit_edge

if.end9.macvlan_addr_busy.exit_crit_edge:         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #21
  br label %macvlan_addr_busy.exit

land.lhs.true2.i:                                 ; preds = %if.end9
  %23 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %16, align 4
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 86
  %25 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev_addr.i, align 64
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %xor.i.i.i = xor i32 %28, %1
  %add.ptr.i.i.i = getelementptr i8, ptr %26, i32 4
  %29 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %add.ptr.i.i.i, align 2
  %xor37.i.i.i = xor i16 %30, %12
  %xor3.i.i.i = zext i16 %xor37.i.i.i to i32
  %or.i.i.i = or i32 %xor.i.i.i, %xor3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.i, label %land.lhs.true2.i.cleanup_crit_edge, label %land.lhs.true2.i.macvlan_addr_busy.exit_crit_edge

land.lhs.true2.i.macvlan_addr_busy.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %macvlan_addr_busy.exit

land.lhs.true2.i.cleanup_crit_edge:               ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

macvlan_addr_busy.exit:                           ; preds = %land.lhs.true2.i.macvlan_addr_busy.exit_crit_edge, %if.end9.macvlan_addr_busy.exit_crit_edge
  %call4.i = tail call fastcc ptr @macvlan_hash_lookup(ptr noundef %16, ptr noundef %sa_data) #19
  %tobool.not.i.not = icmp eq ptr %call4.i, null
  br i1 %tobool.not.i.not, label %if.end15, label %macvlan_addr_busy.exit.cleanup_crit_edge

macvlan_addr_busy.exit.cleanup_crit_edge:         ; preds = %macvlan_addr_busy.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end15:                                         ; preds = %macvlan_addr_busy.exit
  call void @__sanitizer_cov_trace_pc() #21
  %call18 = tail call fastcc i32 @macvlan_sync_address(ptr noundef %dev, ptr noundef %sa_data)
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %macvlan_addr_busy.exit.cleanup_crit_edge, %land.lhs.true2.i.cleanup_crit_edge, %if.then7, %if.end.cleanup_crit_edge, %is_valid_ether_addr.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.then7 ], [ %call18, %if.end15 ], [ -99, %is_valid_ether_addr.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -98, %macvlan_addr_busy.exit.cleanup_crit_edge ], [ -99, %entry.cleanup_crit_edge ], [ -98, %land.lhs.true2.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @macvlan_eth_ioctl(ptr nocapture noundef readonly %dev, ptr nocapture noundef %ifr, i32 noundef %cmd) #0 align 64 {
entry:
  %ifrr = alloca %struct.ifreq, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %lowerdev.i = getelementptr i8, ptr %dev, i32 2328
  %0 = ptrtoint ptr %lowerdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lowerdev.i, align 8
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev_ops, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ifrr) #19
  %4 = call ptr @memset(ptr %ifrr, i32 255, i32 32)
  %call2 = call i32 @strscpy(ptr noundef nonnull %ifrr, ptr noundef %1, i32 noundef 16) #19
  %ifr_ifru = getelementptr inbounds %struct.ifreq, ptr %ifrr, i32 0, i32 1
  %ifr_ifru3 = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1
  %5 = call ptr @memcpy(ptr %ifr_ifru, ptr %ifr_ifru3, i32 16)
  %6 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %cmd, label %entry.if.end17_crit_edge [
    i32 35248, label %sw.bb
    i32 35249, label %entry.sw.bb6_crit_edge
  ]

entry.sw.bb6_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb6

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end17

sw.bb:                                            ; preds = %entry
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %7 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %nd_net.i, align 4
  %cmp.i.not = icmp eq ptr %8, @init_net
  br i1 %cmp.i.not, label %sw.bb.sw.bb6_crit_edge, label %sw.bb.if.end17_crit_edge

sw.bb.if.end17_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end17

sw.bb.sw.bb6_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb6

sw.bb6:                                           ; preds = %sw.bb.sw.bb6_crit_edge, %entry.sw.bb6_crit_edge
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %state.i, align 4
  %11 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i.not = icmp eq i32 %11, 0
  br i1 %tobool.i.not, label %sw.bb6.if.end17_crit_edge, label %land.lhs.true

sw.bb6.if.end17_crit_edge:                        ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end17

land.lhs.true:                                    ; preds = %sw.bb6
  %ndo_eth_ioctl = getelementptr inbounds %struct.net_device_ops, ptr %3, i32 0, i32 12
  %12 = ptrtoint ptr %ndo_eth_ioctl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ndo_eth_ioctl, align 4
  %tobool8.not = icmp eq ptr %13, null
  br i1 %tobool8.not, label %land.lhs.true.if.end17_crit_edge, label %sw.epilog

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end17

sw.epilog:                                        ; preds = %land.lhs.true
  %call11 = call i32 %13(ptr noundef %1, ptr noundef nonnull %ifrr, i32 noundef %cmd) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool13.not = icmp eq i32 %call11, 0
  br i1 %tobool13.not, label %if.then14, label %sw.epilog.if.end17_crit_edge

sw.epilog.if.end17_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end17

if.then14:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #21
  %14 = call ptr @memcpy(ptr %ifr_ifru3, ptr %ifr_ifru, i32 16)
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %sw.epilog.if.end17_crit_edge, %land.lhs.true.if.end17_crit_edge, %sw.bb6.if.end17_crit_edge, %sw.bb.if.end17_crit_edge, %entry.if.end17_crit_edge
  %err.028 = phi i32 [ 0, %if.then14 ], [ %call11, %sw.epilog.if.end17_crit_edge ], [ -95, %entry.if.end17_crit_edge ], [ -95, %land.lhs.true.if.end17_crit_edge ], [ -95, %sw.bb6.if.end17_crit_edge ], [ -95, %sw.bb.if.end17_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ifrr) #19
  ret i32 %err.028
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @macvlan_change_mtu(ptr nocapture noundef %dev, i32 noundef %new_mtu) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %lowerdev = getelementptr i8, ptr %dev, i32 2328
  %0 = ptrtoint ptr %lowerdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lowerdev, align 8
  %mtu = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mtu, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %new_mtu)
  %cmp = icmp ult i32 %3, %new_mtu
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %mtu1 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %4 = ptrtoint ptr %mtu1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %new_mtu, ptr %mtu1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @macvlan_dev_get_stats64(ptr nocapture noundef readonly %dev, ptr nocapture noundef %stats) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %pcpu_stats = getelementptr i8, ptr %dev, i32 2336
  %0 = ptrtoint ptr %pcpu_stats to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcpu_stats, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %for.cond.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

for.cond.preheader:                               ; preds = %entry
  %call158 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call158, i32 %2)
  %cmp59 = icmp ult i32 %call158, %2
  br i1 %cmp59, label %do.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

do.body.lr.ph:                                    ; preds = %for.cond.preheader
  %rx_bytes17 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 2
  %multicast = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 8
  %tx_packets20 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 1
  %tx_bytes22 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 3
  br label %do.body

do.body:                                          ; preds = %do.end14.do.body_crit_edge, %do.body.lr.ph
  %call162 = phi i32 [ %call158, %do.body.lr.ph ], [ %call1, %do.end14.do.body_crit_edge ]
  %tx_dropped.061 = phi i32 [ 0, %do.body.lr.ph ], [ %add27, %do.end14.do.body_crit_edge ]
  %rx_errors.060 = phi i32 [ 0, %do.body.lr.ph ], [ %add25, %do.end14.do.body_crit_edge ]
  %3 = ptrtoint ptr %pcpu_stats to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pcpu_stats, align 8
  %5 = ptrtoint ptr %4 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call162
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %add = add i32 %7, %5
  %8 = inttoptr i32 %add to ptr
  %syncp = getelementptr inbounds %struct.vlan_pcpu_stats, ptr %8, i32 0, i32 5
  %dep_map.c48.i.i.i = getelementptr inbounds %struct.vlan_pcpu_stats, ptr %8, i32 0, i32 5, i32 0, i32 1
  %rx_bytes7 = getelementptr inbounds %struct.vlan_pcpu_stats, ptr %8, i32 0, i32 1
  %rx_multicast8 = getelementptr inbounds %struct.vlan_pcpu_stats, ptr %8, i32 0, i32 2
  %tx_packets9 = getelementptr inbounds %struct.vlan_pcpu_stats, ptr %8, i32 0, i32 3
  %tx_bytes10 = getelementptr inbounds %struct.vlan_pcpu_stats, ptr %8, i32 0, i32 4
  br label %do.body4

do.body4:                                         ; preds = %u64_stats_fetch_begin_irq.exit.do.body4_crit_edge, %do.body
  %9 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !98
  %and.i.i.i.i = and i32 %9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %do.body24.critedge.i.i.i

if.then.i.i.i:                                    ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @trace_hardirqs_off() #19
  %10 = tail call ptr @llvm.returnaddress(i32 0) #19
  %11 = ptrtoint ptr %10 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %11) #19
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i.i, i32 noundef %11) #19
  tail call void @trace_hardirqs_on() #19
  br label %do.body24.i.i.i

do.body24.critedge.i.i.i:                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #21
  %12 = tail call ptr @llvm.returnaddress(i32 0) #19
  %13 = ptrtoint ptr %12 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %13) #19
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i.i, i32 noundef %13) #19
  br label %do.body24.i.i.i

do.body24.i.i.i:                                  ; preds = %do.body24.critedge.i.i.i, %if.then.i.i.i
  %14 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #19, !srcloc !99
  %and.i.i.i.i.i = and i32 %14, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool32.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool32.not.i.i.i, label %if.then36.i.i.i, label %do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge, !prof !100

do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge: ; preds = %do.body24.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %seqcount_lockdep_reader_access.exit.i.i

if.then36.i.i.i:                                  ; preds = %do.body24.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @warn_bogus_irq_restore() #19
  br label %seqcount_lockdep_reader_access.exit.i.i

seqcount_lockdep_reader_access.exit.i.i:          ; preds = %if.then36.i.i.i, %do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %9) #19, !srcloc !101
  %15 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %syncp, align 4
  %and18.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i.i)
  %tobool.not19.i.i = icmp eq i32 %and18.i.i, 0
  br i1 %tobool.not19.i.i, label %seqcount_lockdep_reader_access.exit.i.i.u64_stats_fetch_begin_irq.exit_crit_edge, label %seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge

seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i
  br label %do.end.i.i

seqcount_lockdep_reader_access.exit.i.i.u64_stats_fetch_begin_irq.exit_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %u64_stats_fetch_begin_irq.exit

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !105
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #19, !srcloc !106
  %17 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %syncp, align 4
  %and.i.i = and i32 %18, 1
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.end.i.i.u64_stats_fetch_begin_irq.exit_crit_edge, label %do.end.i.i.do.end.i.i_crit_edge

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end.i.i

do.end.i.i.u64_stats_fetch_begin_irq.exit_crit_edge: ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %u64_stats_fetch_begin_irq.exit

u64_stats_fetch_begin_irq.exit:                   ; preds = %do.end.i.i.u64_stats_fetch_begin_irq.exit_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.u64_stats_fetch_begin_irq.exit_crit_edge
  %.lcssa.i.i = phi i32 [ %16, %seqcount_lockdep_reader_access.exit.i.i.u64_stats_fetch_begin_irq.exit_crit_edge ], [ %18, %do.end.i.i.u64_stats_fetch_begin_irq.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !107
  %19 = ptrtoint ptr %8 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %8, align 8
  %21 = ptrtoint ptr %rx_bytes7 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %rx_bytes7, align 8
  %23 = ptrtoint ptr %rx_multicast8 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %rx_multicast8, align 8
  %25 = ptrtoint ptr %tx_packets9 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %tx_packets9, align 8
  %27 = ptrtoint ptr %tx_bytes10 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %tx_bytes10, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !108
  %29 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %syncp, align 4
  %cmp.i.i.i.i.not = icmp eq i32 %30, %.lcssa.i.i
  br i1 %cmp.i.i.i.i.not, label %do.end14, label %u64_stats_fetch_begin_irq.exit.do.body4_crit_edge

u64_stats_fetch_begin_irq.exit.do.body4_crit_edge: ; preds = %u64_stats_fetch_begin_irq.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body4

do.end14:                                         ; preds = %u64_stats_fetch_begin_irq.exit
  %31 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %stats, align 8
  %add16 = add i64 %32, %20
  store i64 %add16, ptr %stats, align 8
  %33 = ptrtoint ptr %rx_bytes17 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %rx_bytes17, align 8
  %add18 = add i64 %34, %22
  store i64 %add18, ptr %rx_bytes17, align 8
  %35 = ptrtoint ptr %multicast to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %multicast, align 8
  %add19 = add i64 %36, %24
  store i64 %add19, ptr %multicast, align 8
  %37 = ptrtoint ptr %tx_packets20 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %tx_packets20, align 8
  %add21 = add i64 %38, %26
  store i64 %add21, ptr %tx_packets20, align 8
  %39 = ptrtoint ptr %tx_bytes22 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %tx_bytes22, align 8
  %add23 = add i64 %40, %28
  store i64 %add23, ptr %tx_bytes22, align 8
  %rx_errors24 = getelementptr inbounds %struct.vlan_pcpu_stats, ptr %8, i32 0, i32 6
  %41 = ptrtoint ptr %rx_errors24 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rx_errors24, align 8
  %add25 = add i32 %42, %rx_errors.060
  %tx_dropped26 = getelementptr inbounds %struct.vlan_pcpu_stats, ptr %8, i32 0, i32 7
  %43 = ptrtoint ptr %tx_dropped26 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %tx_dropped26, align 4
  %add27 = add i32 %44, %tx_dropped.061
  %call1 = tail call i32 @cpumask_next(i32 noundef %call162, ptr noundef nonnull @__cpu_possible_mask) #24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %45 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call1, %45
  br i1 %cmp, label %do.end14.do.body_crit_edge, label %do.end14.for.end_crit_edge

do.end14.for.end_crit_edge:                       ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

do.end14.do.body_crit_edge:                       ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body

for.end:                                          ; preds = %do.end14.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %rx_errors.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %add25, %do.end14.for.end_crit_edge ]
  %tx_dropped.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %add27, %do.end14.for.end_crit_edge ]
  %conv = zext i32 %rx_errors.0.lcssa to i64
  %rx_errors28 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 4
  %46 = ptrtoint ptr %rx_errors28 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %conv, ptr %rx_errors28, align 8
  %rx_dropped = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 6
  %47 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %conv, ptr %rx_dropped, align 8
  %conv30 = zext i32 %tx_dropped.0.lcssa to i64
  %tx_dropped31 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 7
  %48 = ptrtoint ptr %tx_dropped31 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %conv30, ptr %tx_dropped31, align 8
  br label %if.end

if.end:                                           ; preds = %for.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @macvlan_vlan_rx_add_vid(ptr nocapture noundef readonly %dev, i16 noundef zeroext %proto, i16 noundef zeroext %vid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %lowerdev1 = getelementptr i8, ptr %dev, i32 2328
  %0 = ptrtoint ptr %lowerdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lowerdev1, align 8
  %call2 = tail call i32 @vlan_vid_add(ptr noundef %1, i16 noundef zeroext %proto, i16 noundef zeroext %vid) #19
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @macvlan_vlan_rx_kill_vid(ptr nocapture noundef readonly %dev, i16 noundef zeroext %proto, i16 noundef zeroext %vid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %lowerdev1 = getelementptr i8, ptr %dev, i32 2328
  %0 = ptrtoint ptr %lowerdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lowerdev1, align 8
  tail call void @vlan_vid_del(ptr noundef %1, i16 noundef zeroext %proto, i16 noundef zeroext %vid) #19
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @macvlan_dev_poll_controller(ptr nocapture noundef %dev) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @macvlan_dev_netpoll_setup(ptr nocapture noundef %dev, ptr nocapture noundef readnone %npinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %lowerdev = getelementptr i8, ptr %dev, i32 2328
  %0 = ptrtoint ptr %lowerdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lowerdev, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 72) #22
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @__netpoll_setup(ptr noundef nonnull %call7.i.i, ptr noundef %1) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #19
  br label %out

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %netpoll6 = getelementptr i8, ptr %dev, i32 2400
  %3 = ptrtoint ptr %netpoll6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %netpoll6, align 8
  br label %out

out:                                              ; preds = %if.end5, %if.then4, %entry.out_crit_edge
  %err.0 = phi i32 [ %call2, %if.then4 ], [ 0, %if.end5 ], [ -12, %entry.out_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @macvlan_dev_netpoll_cleanup(ptr nocapture noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %netpoll1 = getelementptr i8, ptr %dev, i32 2400
  %0 = ptrtoint ptr %netpoll1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netpoll1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %2 = ptrtoint ptr %netpoll1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %netpoll1, align 8
  tail call void @__netpoll_free(ptr noundef nonnull %1) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @macvlan_fix_features(ptr nocapture noundef readonly %dev, i64 noundef %features) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %lowerdev = getelementptr i8, ptr %dev, i32 2328
  %0 = ptrtoint ptr %lowerdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lowerdev, align 8
  %features1 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %features1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %features1, align 16
  %or = or i64 %features, 2199025352704
  %set_features = getelementptr i8, ptr %dev, i32 2376
  %4 = ptrtoint ptr %set_features to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %set_features, align 8
  %or2 = or i64 %5, -141837001411178
  %and = and i64 %or2, %or
  %or3 = or i64 %and, -32769
  %and4 = and i64 %or3, %3
  %call5 = tail call i64 @netdev_increment_features(i64 noundef %and4, i64 noundef %and, i64 noundef %and) #19
  %or6 = and i64 %call5, 141837000034912
  %and7 = or i64 %or6, 27109822473
  ret i64 %and7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @macvlan_fdb_add(ptr nocapture noundef readnone %ndm, ptr nocapture noundef readnone %tb, ptr noundef %dev, ptr noundef %addr, i16 noundef zeroext %vid, i16 noundef zeroext %flags, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr i8, ptr %dev, i32 2324
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  %flags.i = getelementptr inbounds %struct.macvlan_port, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr, align 4
  %6 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not.i = icmp ne i32 %6, 0
  %7 = and i16 %flags, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not = icmp eq i16 %7, 0
  %or.cond = and i1 %tobool.not, %tobool.i.not.i
  br i1 %or.cond, label %land.lhs.true.if.end4_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

land.lhs.true.if.end4_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end4

if.end:                                           ; preds = %entry
  %.old = and i16 %flags, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.old)
  %tobool.not.old = icmp eq i16 %.old, 0
  br i1 %tobool.not.old, label %if.end.if.end4_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end4

if.end4:                                          ; preds = %if.end.if.end4_crit_edge, %land.lhs.true.if.end4_crit_edge
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr, align 4
  %10 = and i32 %9, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.not.i20 = icmp eq i32 %10, 0
  br i1 %tobool.i.not.i20, label %if.then6, label %if.then9

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #21
  %call7 = tail call i32 @dev_uc_add_excl(ptr noundef %dev, ptr noundef %addr) #19
  br label %cleanup

if.then9:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #21
  %call10 = tail call i32 @dev_mc_add_excl(ptr noundef %dev, ptr noundef %addr) #19
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.then6, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %land.lhs.true.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ %call7, %if.then6 ], [ %call10, %if.then9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @macvlan_fdb_del(ptr nocapture noundef readnone %ndm, ptr nocapture noundef readnone %tb, ptr noundef %dev, ptr noundef %addr, i16 noundef zeroext %vid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr i8, ptr %dev, i32 2324
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  %flags.i = getelementptr inbounds %struct.macvlan_port, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr, align 4
  %6 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not.i = icmp eq i32 %6, 0
  br i1 %tobool.i.not.i, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %addr, align 4
  %9 = and i32 %8, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.i.not.i18 = icmp eq i32 %9, 0
  br i1 %tobool.i.not.i18, label %if.then4, label %if.then7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %call5 = tail call i32 @dev_uc_del(ptr noundef %dev, ptr noundef %addr) #19
  br label %cleanup

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %call8 = tail call i32 @dev_mc_del(ptr noundef %dev, ptr noundef %addr) #19
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.then4, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %land.lhs.true.cleanup_crit_edge ], [ %call5, %if.then4 ], [ %call8, %if.then7 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ndo_dflt_fdb_dump(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @macvlan_dev_get_iflink(ptr nocapture noundef readonly %dev) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %lowerdev = getelementptr i8, ptr %dev, i32 2328
  %0 = ptrtoint ptr %lowerdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lowerdev, align 8
  %ifindex = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ifindex, align 4
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu_gfp(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_promiscuity(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_uc_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_allmulti(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_uc_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @macvlan_hash_lookup(ptr noundef %port, ptr nocapture noundef readonly %addr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %addr, align 1
  %shr.i = lshr i64 %1, 16
  %conv.i.i = trunc i64 %shr.i to i32
  %shr.i.i = lshr i64 %1, 48
  %conv1.i.i = trunc i64 %shr.i.i to i32
  %mul.i.i.i = mul i32 %conv1.i.i, 1640531527
  %xor.i.i = xor i32 %mul.i.i.i, %conv.i.i
  %mul.i.i.i.i = mul i32 %xor.i.i, 1640531527
  %shr.i.i.i = lshr i32 %mul.i.i.i.i, 24
  %call1 = tail call zeroext i1 @lockdep_rtnl_is_held() #19
  br i1 %call1, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @rcu_read_lock_any_held() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true3, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true3.do.end_crit_edge, label %land.lhs.true6

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end

land.lhs.true6:                                   ; preds = %land.lhs.true3
  %.b42 = load i1, ptr @macvlan_hash_lookup.__warned, align 1
  br i1 %.b42, label %land.lhs.true6.do.end_crit_edge, label %if.then

land.lhs.true6.do.end_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @macvlan_hash_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 129, ptr noundef nonnull @.str.5) #19
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true6.do.end_crit_edge, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %arrayidx = getelementptr %struct.macvlan_port, ptr %port, i32 0, i32 1, i32 %shr.i.i.i
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %arrayidx, align 4
  %tobool13.not = icmp eq ptr %3, null
  %add.ptr = getelementptr i8, ptr %3, i32 -12
  %tobool15.not4750 = icmp eq ptr %add.ptr, null
  %tobool15.not47 = or i1 %tobool13.not, %tobool15.not4750
  br i1 %tobool15.not47, label %do.end.cleanup_crit_edge, label %for.body.lr.ph

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

for.body.lr.ph:                                   ; preds = %do.end
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr, align 4
  %add.ptr1.i.i = getelementptr i8, ptr %addr, i32 4
  %6 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %add.ptr1.i.i, align 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %vlan.048 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %add.ptr30, %for.inc.for.body_crit_edge ]
  %8 = ptrtoint ptr %vlan.048 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vlan.048, align 8
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 86
  %10 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_addr, align 64
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %xor.i.i44 = xor i32 %5, %13
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 4
  %14 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %add.ptr.i.i, align 2
  %xor37.i.i = xor i16 %7, %15
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i44, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %for.body.cleanup_crit_edge, label %for.inc

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %hlist = getelementptr inbounds %struct.macvlan_dev, ptr %vlan.048, i32 0, i32 2
  %16 = ptrtoint ptr %hlist to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %hlist, align 4
  %tobool26.not = icmp eq ptr %17, null
  %add.ptr30 = getelementptr i8, ptr %17, i32 -12
  %tobool15.not51 = icmp eq ptr %add.ptr30, null
  %tobool15.not = or i1 %tobool26.not, %tobool15.not51
  br i1 %tobool15.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.body.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %vlan.0.lcssa = phi ptr [ null, %do.end.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ], [ %vlan.048, %for.body.cleanup_crit_edge ]
  ret ptr %vlan.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_uc_unsync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_mc_unsync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @u64_stats_update_begin(ptr noundef %syncp) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.__seqprop_assert.exit_crit_edge, label %land.lhs.true.i

entry.__seqprop_assert.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %__seqprop_assert.exit

land.lhs.true.i:                                  ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !86) #19
  %and.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %4, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !109
  %5 = tail call i32 @llvm.read_register.i32(metadata !86) #19
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
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !110
  %14 = tail call i32 @llvm.read_register.i32(metadata !86) #19
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
  call void @__sanitizer_cov_trace_pc() #21
  br label %__seqprop_assert.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %18 = tail call i32 @llvm.read_register.i32(metadata !86) #19
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
  call void @__sanitizer_cov_trace_pc() #21
  br label %__seqprop_assert.exit

land.rhs22.i:                                     ; preds = %land.rhs.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !86) #19
  %and.i.i.i9.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %25, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !111
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
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !112
  %33 = tail call i32 @llvm.read_register.i32(metadata !86) #19
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
  call void @__sanitizer_cov_trace_pc() #21
  br label %__seqprop_assert.exit

land.rhs58.i:                                     ; preds = %land.rhs22.i
  %.b1.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !103

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 271, i32 noundef 9, ptr noundef null) #19
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %entry.__seqprop_assert.exit_crit_edge
  %37 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %38, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !113
  %dep_map.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %39 = tail call ptr @llvm.returnaddress(i32 0) #19
  %40 = ptrtoint ptr %39 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %40) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netpoll_send_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @macvlan_broadcast(ptr noundef %skb, ptr noundef %port, ptr noundef readnone %src, i32 noundef %mode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %2 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %4 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30712, i16 %5)
  %cmp = icmp eq i16 %5, -30712
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %mode)
  %cmp40 = icmp eq i32 %mode, 4
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  br label %do.body

do.body:                                          ; preds = %for.inc67.do.body_crit_edge, %for.cond.preheader
  %i.0111 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc67.do.body_crit_edge ]
  %call6 = tail call i32 @rcu_read_lock_any_held() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %land.lhs.true, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end

land.lhs.true:                                    ; preds = %do.body
  %call7 = tail call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true9

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end

land.lhs.true9:                                   ; preds = %land.lhs.true
  %.b94 = load i1, ptr @macvlan_broadcast.__warned, align 1
  br i1 %.b94, label %land.lhs.true9.do.end_crit_edge, label %if.then11

land.lhs.true9.do.end_crit_edge:                  ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end

if.then11:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @macvlan_broadcast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 275, ptr noundef nonnull @.str.5) #19
  br label %do.end

do.end:                                           ; preds = %if.then11, %land.lhs.true9.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %do.body.do.end_crit_edge
  %arrayidx = getelementptr %struct.macvlan_port, ptr %port, i32 0, i32 1, i32 %i.0111
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %arrayidx, align 4
  %tobool18.not = icmp eq ptr %7, null
  %add.ptr = getelementptr i8, ptr %7, i32 -12
  %tobool21.not107112 = icmp eq ptr %add.ptr, null
  %tobool21.not107 = or i1 %tobool18.not, %tobool21.not107112
  br i1 %tobool21.not107, label %do.end.for.inc67_crit_edge, label %do.end.for.body22_crit_edge

do.end.for.body22_crit_edge:                      ; preds = %do.end
  br label %for.body22

do.end.for.inc67_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc67

for.body22:                                       ; preds = %for.inc.for.body22_crit_edge, %do.end.for.body22_crit_edge
  %vlan.1108 = phi ptr [ %add.ptr63, %for.inc.for.body22_crit_edge ], [ %add.ptr, %do.end.for.body22_crit_edge ]
  %8 = ptrtoint ptr %vlan.1108 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vlan.1108, align 8
  %cmp23 = icmp eq ptr %9, %src
  br i1 %cmp23, label %for.body22.for.inc_crit_edge, label %lor.lhs.false

for.body22.for.inc_crit_edge:                     ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body22
  %mode25 = getelementptr inbounds %struct.macvlan_dev, ptr %vlan.1108, i32 0, i32 9
  %10 = ptrtoint ptr %mode25 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mode25, align 8
  %and = and i32 %11, %mode
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool26.not = icmp eq i32 %and, 0
  br i1 %tobool26.not, label %lor.lhs.false.for.inc_crit_edge, label %if.end28

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc

if.end28:                                         ; preds = %lor.lhs.false
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %add.ptr.i, align 1
  %14 = ptrtoint ptr %vlan.1108 to i32
  %shr.i.i = lshr i32 %14, 7
  %xor.i = xor i32 %13, %shr.i.i
  %mul.i.i.i = mul i32 %xor.i, 1640531527
  %shr.i4.i = lshr i32 %mul.i.i.i, 24
  %mc_filter = getelementptr inbounds %struct.macvlan_dev, ptr %vlan.1108, i32 0, i32 7
  %div3.i = lshr i32 %mul.i.i.i, 29
  %arrayidx.i = getelementptr i32, ptr %mc_filter, i32 %div3.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %shr.i4.i, 31
  %17 = shl nuw i32 1, %and.i
  %18 = and i32 %17, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool32.not = icmp eq i32 %18, 0
  br i1 %tobool32.not, label %if.end28.for.inc_crit_edge, label %if.end34

if.end28.for.inc_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc

if.end34:                                         ; preds = %if.end28
  %call35 = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #19
  %tobool36.not = icmp eq ptr %call35, null
  br i1 %tobool36.not, label %if.end34.do.body23.i_crit_edge, label %if.then39, !prof !100

if.end34.do.body23.i_crit_edge:                   ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body23.i

if.then39:                                        ; preds = %if.end34
  %19 = ptrtoint ptr %vlan.1108 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vlan.1108, align 8
  br i1 %cmp40, label %macvlan_broadcast_one.exit, label %if.end.i

if.end.i:                                         ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #21
  %21 = getelementptr inbounds %struct.anon.0, ptr %call35, i32 0, i32 2
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %20, ptr %21, align 8
  %broadcast.i = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 99
  %23 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr.i.i, align 4
  %25 = ptrtoint ptr %broadcast.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %broadcast.i, align 4
  %xor.i.i.i = xor i32 %26, %24
  %27 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %add.ptr.i.i.i, align 2
  %add.ptr1.i.i.i = getelementptr %struct.net_device, ptr %20, i32 0, i32 99, i32 4
  %29 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %add.ptr1.i.i.i, align 2
  %xor37.i.i.i = xor i16 %30, %28
  %xor3.i.i.i = zext i16 %xor37.i.i.i to i32
  %or.i.i.i = or i32 %xor.i.i.i, %xor3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or.i.i.i, 0
  %pkt_type.i = getelementptr inbounds %struct.sk_buff, ptr %call35, i32 0, i32 15
  %31 = ptrtoint ptr %pkt_type.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %bf.load.i = load i16, ptr %pkt_type.i, align 8
  %bf.clear.i = and i16 %bf.load.i, 8191
  %. = select i1 %cmp.i.i.i, i16 8192, i16 16384
  %bf.set.i = or i16 %bf.clear.i, %.
  store i16 %bf.set.i, ptr %pkt_type.i, align 8
  br label %if.end49

macvlan_broadcast_one.exit:                       ; preds = %if.then39
  %call.i = tail call i32 @__dev_forward_skb(ptr noundef %20, ptr noundef nonnull %call35) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool43.not = icmp eq i32 %call.i, 0
  br i1 %tobool43.not, label %macvlan_broadcast_one.exit.if.end49_crit_edge, label %macvlan_broadcast_one.exit.do.body23.i_crit_edge

macvlan_broadcast_one.exit.do.body23.i_crit_edge: ; preds = %macvlan_broadcast_one.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body23.i

macvlan_broadcast_one.exit.if.end49_crit_edge:    ; preds = %macvlan_broadcast_one.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end49

if.end49:                                         ; preds = %macvlan_broadcast_one.exit.if.end49_crit_edge, %if.end.i
  %call46 = tail call i32 @netif_rx_ni(ptr noundef nonnull %call35) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp50 = icmp eq i32 %call46, 0
  br i1 %cmp50, label %if.then.i97, label %if.end49.do.body23.i_crit_edge, !prof !103

if.end49.do.body23.i_crit_edge:                   ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body23.i

if.then.i97:                                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #21
  %32 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len, align 4
  %add = add i32 %33, 14
  %34 = tail call i32 @llvm.read_register.i32(metadata !86) #19
  %and.i.i.i.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %37, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !114
  %pcpu_stats8.i = getelementptr inbounds %struct.macvlan_dev, ptr %vlan.1108, i32 0, i32 6
  %38 = ptrtoint ptr %pcpu_stats8.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pcpu_stats8.i, align 8
  %40 = ptrtoint ptr %39 to i32
  %41 = tail call i32 @llvm.read_register.i32(metadata !86) #19
  %and.i.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cpu.i, align 4
  %arrayidx.i96 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %44
  %45 = ptrtoint ptr %arrayidx.i96 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.i96, align 4
  %add.i = add i32 %46, %40
  %47 = inttoptr i32 %add.i to ptr
  %syncp.i = getelementptr inbounds %struct.vlan_pcpu_stats, ptr %47, i32 0, i32 5
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp.i) #19
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %47, align 8
  %inc.i = add i64 %49, 1
  store i64 %inc.i, ptr %47, align 8
  %conv.i = zext i32 %add to i64
  %rx_bytes.i = getelementptr inbounds %struct.vlan_pcpu_stats, ptr %47, i32 0, i32 1
  %50 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %rx_bytes.i, align 8
  %add10.i = add i64 %51, %conv.i
  store i64 %add10.i, ptr %rx_bytes.i, align 8
  %rx_multicast.i = getelementptr inbounds %struct.vlan_pcpu_stats, ptr %47, i32 0, i32 2
  %52 = ptrtoint ptr %rx_multicast.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %rx_multicast.i, align 8
  %inc13.i = add i64 %53, 1
  store i64 %inc13.i, ptr %rx_multicast.i, align 8
  %dep_map.i.i.i = getelementptr inbounds %struct.vlan_pcpu_stats, ptr %47, i32 0, i32 5, i32 0, i32 1
  %54 = tail call ptr @llvm.returnaddress(i32 0) #19
  %55 = ptrtoint ptr %54 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %55) #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !104
  %56 = ptrtoint ptr %syncp.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %syncp.i, align 4
  %inc.i.i.i.i = add i32 %57, 1
  store i32 %inc.i.i.i.i, ptr %syncp.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !115
  %58 = tail call i32 @llvm.read_register.i32(metadata !86) #19
  %and.i.i.i84.i = and i32 %58, -16384
  %59 = inttoptr i32 %and.i.i.i84.i to ptr
  %preempt_count.i.i85.i = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %preempt_count.i.i85.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %preempt_count.i.i85.i, align 4
  %sub.i.i = add i32 %61, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i85.i, align 4
  br label %for.inc

do.body23.i:                                      ; preds = %if.end49.do.body23.i_crit_edge, %macvlan_broadcast_one.exit.do.body23.i_crit_edge, %if.end34.do.body23.i_crit_edge
  %62 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !98
  %pcpu_stats41.i = getelementptr inbounds %struct.macvlan_dev, ptr %vlan.1108, i32 0, i32 6
  %63 = ptrtoint ptr %pcpu_stats41.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %pcpu_stats41.i, align 8
  %rx_errors.i = getelementptr inbounds %struct.vlan_pcpu_stats, ptr %64, i32 0, i32 6
  %65 = ptrtoint ptr %rx_errors.i to i32
  %66 = tail call i32 @llvm.read_register.i32(metadata !86) #19
  %and.i86.i = and i32 %66, -16384
  %67 = inttoptr i32 %and.i86.i to ptr
  %cpu44.i = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 3
  %68 = ptrtoint ptr %cpu44.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %cpu44.i, align 4
  %arrayidx45.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %69
  %70 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx45.i, align 4
  %add46.i = add i32 %71, %65
  %72 = inttoptr i32 %add46.i to ptr
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %72, align 4
  %add47.i = add i32 %74, 1
  store i32 %add47.i, ptr %72, align 4
  %75 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #19, !srcloc !99
  %and.i.i.i = and i32 %75, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool58.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool58.not.i, label %if.then67.i, label %do.body23.i.do.end70.i_crit_edge, !prof !100

do.body23.i.do.end70.i_crit_edge:                 ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end70.i

if.then67.i:                                      ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @warn_bogus_irq_restore() #19
  br label %do.end70.i

do.end70.i:                                       ; preds = %if.then67.i, %do.body23.i.do.end70.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %62) #19, !srcloc !101
  br label %for.inc

for.inc:                                          ; preds = %do.end70.i, %if.then.i97, %if.end28.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %for.body22.for.inc_crit_edge
  %hlist = getelementptr inbounds %struct.macvlan_dev, ptr %vlan.1108, i32 0, i32 2
  %76 = ptrtoint ptr %hlist to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile ptr, ptr %hlist, align 4
  %tobool59.not = icmp eq ptr %77, null
  %add.ptr63 = getelementptr i8, ptr %77, i32 -12
  %tobool21.not113 = icmp eq ptr %add.ptr63, null
  %tobool21.not = or i1 %tobool59.not, %tobool21.not113
  br i1 %tobool21.not, label %for.inc.for.inc67_crit_edge, label %for.inc.for.body22_crit_edge

for.inc.for.body22_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body22

for.inc.for.inc67_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc67

for.inc67:                                        ; preds = %for.inc.for.inc67_crit_edge, %do.end.for.inc67_crit_edge
  %inc = add nuw nsw i32 %i.0111, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.inc67.cleanup_crit_edge, label %for.inc67.do.body_crit_edge

for.inc67.do.body_crit_edge:                      ; preds = %for.inc67
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body

for.inc67.cleanup_crit_edge:                      ; preds = %for.inc67
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

cleanup:                                          ; preds = %for.inc67.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_forward_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_queue_xmit_accel(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx_ni(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__dev_forward_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_uc_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_mc_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_mac_address(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @macvlan_sync_address(ptr noundef %dev, ptr noundef %addr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %lowerdev1 = getelementptr i8, ptr %dev, i32 2328
  %0 = ptrtoint ptr %lowerdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lowerdev1, align 8
  %port2 = getelementptr i8, ptr %dev, i32 2324
  %2 = ptrtoint ptr %port2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port2, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 8
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef %addr, i32 noundef 6) #19
  br label %if.end14

if.else:                                          ; preds = %entry
  %flags.i.i = getelementptr inbounds %struct.macvlan_port, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i.i, align 4
  %8 = and i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %.not.i = icmp eq i32 %8, 0
  br i1 %.not.i, label %land.lhs.true2.i, label %if.else.macvlan_addr_busy.exit_crit_edge

if.else.macvlan_addr_busy.exit_crit_edge:         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  br label %macvlan_addr_busy.exit

land.lhs.true2.i:                                 ; preds = %if.else
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 4
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 86
  %11 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev_addr.i, align 64
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %15 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %addr, align 4
  %xor.i.i.i = xor i32 %16, %14
  %add.ptr.i.i.i = getelementptr i8, ptr %12, i32 4
  %17 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %add.ptr.i.i.i, align 2
  %add.ptr1.i.i.i = getelementptr i8, ptr %addr, i32 4
  %19 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %add.ptr1.i.i.i, align 2
  %xor37.i.i.i = xor i16 %20, %18
  %xor3.i.i.i = zext i16 %xor37.i.i.i to i32
  %or.i.i.i = or i32 %xor.i.i.i, %xor3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.i, label %land.lhs.true2.i.cleanup_crit_edge, label %land.lhs.true2.i.macvlan_addr_busy.exit_crit_edge

land.lhs.true2.i.macvlan_addr_busy.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %macvlan_addr_busy.exit

land.lhs.true2.i.cleanup_crit_edge:               ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

macvlan_addr_busy.exit:                           ; preds = %land.lhs.true2.i.macvlan_addr_busy.exit_crit_edge, %if.else.macvlan_addr_busy.exit_crit_edge
  %call4.i = tail call fastcc ptr @macvlan_hash_lookup(ptr noundef %3, ptr noundef %addr) #19
  %tobool.not.i.not = icmp eq ptr %call4.i, null
  br i1 %tobool.not.i.not, label %if.end, label %macvlan_addr_busy.exit.cleanup_crit_edge

macvlan_addr_busy.exit.cleanup_crit_edge:         ; preds = %macvlan_addr_busy.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %macvlan_addr_busy.exit
  %21 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags.i.i, align 4
  %and.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then7, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end13

if.then7:                                         ; preds = %if.end
  %call8 = tail call i32 @dev_uc_add(ptr noundef %1, ptr noundef %addr) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end11:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #21
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %23 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev_addr, align 64
  %call12 = tail call i32 @dev_uc_del(ptr noundef %1, ptr noundef %24) #19
  br label %if.end13

if.end13:                                         ; preds = %if.end11, %if.end.if.end13_crit_edge
  %hlist.i.i = getelementptr i8, ptr %dev, i32 2316
  %25 = ptrtoint ptr %hlist.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hlist.i.i, align 4
  %pprev2.i.i.i.i = getelementptr i8, ptr %dev, i32 2320
  %27 = ptrtoint ptr %pprev2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pprev2.i.i.i.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %26, ptr %28, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %26, null
  br i1 %tobool.not.i.i.i.i, label %if.end13.macvlan_hash_del.exit.i_crit_edge, label %do.body13.i.i.i.i

if.end13.macvlan_hash_del.exit.i_crit_edge:       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #21
  br label %macvlan_hash_del.exit.i

do.body13.i.i.i.i:                                ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #21
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %26, i32 0, i32 1
  %30 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %pprev14.i.i.i.i, align 4
  br label %macvlan_hash_del.exit.i

macvlan_hash_del.exit.i:                          ; preds = %do.body13.i.i.i.i, %if.end13.macvlan_hash_del.exit.i_crit_edge
  %31 = ptrtoint ptr %pprev2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i.i, align 4
  tail call void @synchronize_rcu() #19
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr.i, align 8
  tail call void @dev_addr_mod(ptr noundef %33, i32 noundef 0, ptr noundef %addr, i32 noundef 6) #19
  %34 = ptrtoint ptr %port2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %port2, align 4
  %36 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %add.ptr.i, align 8
  %dev_addr.i.i = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 86
  %38 = ptrtoint ptr %dev_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev_addr.i.i, align 64
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_loadN_noabort(i32 %40, i32 8)
  %41 = load i64, ptr %39, align 1
  %shr.i.i.i = lshr i64 %41, 16
  %conv.i.i.i.i = trunc i64 %shr.i.i.i to i32
  %shr.i.i.i.i = lshr i64 %41, 48
  %conv1.i.i.i.i = trunc i64 %shr.i.i.i.i to i32
  %mul.i.i.i.i.i = mul i32 %conv1.i.i.i.i, 1640531527
  %xor.i.i.i.i = xor i32 %mul.i.i.i.i.i, %conv.i.i.i.i
  %mul.i.i.i.i.i.i = mul i32 %xor.i.i.i.i, 1640531527
  %shr.i.i.i.i.i = lshr i32 %mul.i.i.i.i.i.i, 24
  %arrayidx.i.i = getelementptr %struct.macvlan_port, ptr %35, i32 0, i32 1, i32 %shr.i.i.i.i.i
  %42 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i.i, align 4
  %44 = ptrtoint ptr %hlist.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %43, ptr %hlist.i.i, align 4
  %45 = ptrtoint ptr %pprev2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %arrayidx.i.i, ptr %pprev2.i.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !96
  %46 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %hlist.i.i, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %43, null
  br i1 %tobool.not.i.i.i, label %macvlan_hash_del.exit.i.if.end14_crit_edge, label %do.body49.i.i.i

macvlan_hash_del.exit.i.if.end14_crit_edge:       ; preds = %macvlan_hash_del.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end14

do.body49.i.i.i:                                  ; preds = %macvlan_hash_del.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  %pprev51.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %43, i32 0, i32 1
  %47 = ptrtoint ptr %pprev51.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %hlist.i.i, ptr %pprev51.i.i.i, align 4
  br label %if.end14

if.end14:                                         ; preds = %do.body49.i.i.i, %macvlan_hash_del.exit.i.if.end14_crit_edge, %if.then
  %flags.i40 = getelementptr inbounds %struct.macvlan_port, ptr %3, i32 0, i32 6
  %48 = ptrtoint ptr %flags.i40 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %flags.i40, align 4
  %50 = and i32 %49, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %50)
  %.not = icmp eq i32 %50, 1
  br i1 %.not, label %if.then17, label %if.end14.if.end20_crit_edge

if.end14.if.end20_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end20

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #21
  %51 = ptrtoint ptr %port2 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %port2, align 4
  %perm_addr = getelementptr inbounds %struct.macvlan_port, ptr %52, i32 0, i32 10
  %dev_addr19 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %53 = ptrtoint ptr %dev_addr19 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev_addr19, align 64
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %54, align 4
  %57 = ptrtoint ptr %perm_addr to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %perm_addr, align 4
  %add.ptr.i46 = getelementptr i8, ptr %54, i32 4
  %58 = ptrtoint ptr %add.ptr.i46 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %add.ptr.i46, align 2
  %add.ptr1.i = getelementptr %struct.macvlan_port, ptr %52, i32 0, i32 10, i32 4
  %60 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %59, ptr %add.ptr1.i, align 2
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end14.if.end20_crit_edge
  %61 = ptrtoint ptr %flags.i40 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %flags.i40, align 4
  %and.i48 = and i32 %62, -3
  store i32 %and.i48, ptr %flags.i40, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then7.cleanup_crit_edge, %macvlan_addr_busy.exit.cleanup_crit_edge, %land.lhs.true2.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end20 ], [ -98, %macvlan_addr_busy.exit.cleanup_crit_edge ], [ %call8, %if.then7.cleanup_crit_edge ], [ -98, %land.lhs.true2.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vlan_vid_add(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vlan_vid_del(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__netpoll_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netpoll_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @netdev_increment_features(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_uc_add_excl(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_mc_add_excl(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_mc_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @macvlan_hard_header(ptr noundef %skb, ptr nocapture noundef readonly %dev, i16 noundef zeroext %type, ptr noundef %daddr, ptr noundef %saddr, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %lowerdev1 = getelementptr i8, ptr %dev, i32 2328
  %0 = ptrtoint ptr %lowerdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lowerdev1, align 8
  %tobool.not = icmp eq ptr %saddr, null
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %2 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_addr, align 64
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi ptr [ %3, %cond.false ], [ %saddr, %entry.cond.end_crit_edge ]
  %header_ops.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 49
  %4 = ptrtoint ptr %header_ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %header_ops.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %cond.end.dev_hard_header.exit_crit_edge, label %lor.lhs.false.i

cond.end.dev_hard_header.exit_crit_edge:          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %dev_hard_header.exit

lor.lhs.false.i:                                  ; preds = %cond.end
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool2.not.i = icmp eq ptr %7, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.dev_hard_header.exit_crit_edge, label %if.end.i

lor.lhs.false.i.dev_hard_header.exit_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %dev_hard_header.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #21
  %call.i = tail call i32 %7(ptr noundef %skb, ptr noundef %1, i16 noundef zeroext %type, ptr noundef %daddr, ptr noundef %cond, i32 noundef %len) #19
  br label %dev_hard_header.exit

dev_hard_header.exit:                             ; preds = %if.end.i, %lor.lhs.false.i.dev_hard_header.exit_crit_edge, %cond.end.dev_hard_header.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end.i ], [ 0, %lor.lhs.false.i.dev_hard_header.exit_crit_edge ], [ 0, %cond.end.dev_hard_header.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_header_parse(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_header_cache(ptr noundef, ptr noundef, i16 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @eth_header_cache_update(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @macvlan_ethtool_get_drvinfo(ptr nocapture noundef readnone %dev, ptr noundef %drvinfo) #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 1
  %call = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str.7, i32 noundef 32) #19
  %version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 2
  %call2 = tail call i32 @strlcpy(ptr noundef %version, ptr noundef nonnull @.str.8, i32 noundef 32) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @macvlan_ethtool_get_ts_info(ptr nocapture noundef readonly %dev, ptr noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %lowerdev.i = getelementptr i8, ptr %dev, i32 2328
  %0 = ptrtoint ptr %lowerdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lowerdev.i, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ethtool_ops, align 16
  %phydev1 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 145
  %4 = ptrtoint ptr %phydev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phydev1, align 16
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.if.else_crit_edge, label %land.lhs.true.i

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.else

land.lhs.true.i:                                  ; preds = %entry
  %mii_ts.i = getelementptr inbounds %struct.phy_device, ptr %5, i32 0, i32 37
  %6 = ptrtoint ptr %mii_ts.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mii_ts.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.else_crit_edge, label %phy_has_tsinfo.exit

land.lhs.true.i.if.else_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.else

phy_has_tsinfo.exit:                              ; preds = %land.lhs.true.i
  %ts_info.i = getelementptr inbounds %struct.mii_timestamper, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %ts_info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ts_info.i, align 4
  %tobool3.i.not = icmp eq ptr %9, null
  br i1 %tobool3.i.not, label %phy_has_tsinfo.exit.if.else_crit_edge, label %if.then

phy_has_tsinfo.exit.if.else_crit_edge:            ; preds = %phy_has_tsinfo.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.else

if.then:                                          ; preds = %phy_has_tsinfo.exit
  call void @__sanitizer_cov_trace_pc() #21
  %10 = ptrtoint ptr %mii_ts.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mii_ts.i, align 4
  %ts_info.i19 = getelementptr inbounds %struct.mii_timestamper, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %ts_info.i19 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ts_info.i19, align 4
  %call.i = tail call i32 %13(ptr noundef %11, ptr noundef %info) #19
  br label %cleanup

if.else:                                          ; preds = %phy_has_tsinfo.exit.if.else_crit_edge, %land.lhs.true.i.if.else_crit_edge, %entry.if.else_crit_edge
  %get_ts_info = getelementptr inbounds %struct.ethtool_ops, ptr %3, i32 0, i32 47
  %14 = ptrtoint ptr %get_ts_info to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %get_ts_info, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %if.else7, label %if.then4

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  %call6 = tail call i32 %15(ptr noundef %1, ptr noundef %info) #19
  br label %cleanup

if.else7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  %so_timestamping = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 1
  %16 = ptrtoint ptr %so_timestamping to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 24, ptr %so_timestamping, align 4
  %phc_index = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 2
  %17 = ptrtoint ptr %phc_index to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %phc_index, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else7, %if.then4, %if.then
  %retval.0 = phi i32 [ %call.i, %if.then ], [ %call6, %if.then4 ], [ 0, %if.else7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @macvlan_ethtool_get_link_ksettings(ptr nocapture noundef readonly %dev, ptr noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %lowerdev = getelementptr i8, ptr %dev, i32 2328
  %0 = ptrtoint ptr %lowerdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lowerdev, align 8
  %call1 = tail call i32 @__ethtool_get_link_ksettings(ptr noundef %1, ptr noundef %cmd) #19
  ret i32 %call1
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ethtool_get_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @netdev_is_rx_handler_busy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @macvlan_process_broadcast(ptr noundef %w) #0 align 64 {
entry:
  %list = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %w, i32 -1092
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %list) #19
  %0 = getelementptr inbounds i8, ptr %list, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 44)
  %2 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.anon.55, ptr %list, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %list, ptr %prev.i, align 4
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %list, i32 0, i32 1
  %4 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %qlen.i, align 4
  %bc_queue = getelementptr i8, ptr %w, i32 -56
  %lock = getelementptr i8, ptr %w, i32 -44
  call void @_raw_spin_lock_bh(ptr noundef %lock) #19
  %5 = ptrtoint ptr %bc_queue to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bc_queue, align 4
  %cmp.i.not.i = icmp eq ptr %6, %bc_queue
  br i1 %cmp.i.not.i, label %entry.skb_queue_splice_tail_init.exit_crit_edge, label %if.then.i33

entry.skb_queue_splice_tail_init.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %skb_queue_splice_tail_init.exit

if.then.i33:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i, align 4
  %prev2.i.i = getelementptr i8, ptr %w, i32 -52
  %9 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev2.i.i, align 4
  %prev5.i.i = getelementptr inbounds %struct.anon.0, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %prev5.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %8, ptr %prev5.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %6, ptr %8, align 8
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %list, ptr %10, align 8
  store volatile ptr %10, ptr %prev.i, align 4
  %qlen.i32 = getelementptr i8, ptr %w, i32 -48
  %14 = ptrtoint ptr %qlen.i32 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %qlen.i32, align 4
  %16 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %qlen.i, align 4
  %add.i = add i32 %17, %15
  store i32 %add.i, ptr %qlen.i, align 4
  %18 = ptrtoint ptr %bc_queue to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %bc_queue, ptr %bc_queue, align 4
  store ptr %bc_queue, ptr %prev2.i.i, align 4
  store i32 0, ptr %qlen.i32, align 4
  br label %skb_queue_splice_tail_init.exit

skb_queue_splice_tail_init.exit:                  ; preds = %if.then.i33, %entry.skb_queue_splice_tail_init.exit_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #19
  %19 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %list, align 4
  %cmp.i.i71 = icmp eq ptr %20, %list
  %tobool.not.i347072 = icmp eq ptr %20, null
  %tobool.not.i3473 = or i1 %cmp.i.i71, %tobool.not.i347072
  br i1 %tobool.not.i3473, label %skb_queue_splice_tail_init.exit.while.end_crit_edge, label %skb_queue_splice_tail_init.exit.while.body_crit_edge

skb_queue_splice_tail_init.exit.while.body_crit_edge: ; preds = %skb_queue_splice_tail_init.exit
  br label %while.body

skb_queue_splice_tail_init.exit.while.end_crit_edge: ; preds = %skb_queue_splice_tail_init.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end

while.body:                                       ; preds = %if.end13.while.body_crit_edge, %skb_queue_splice_tail_init.exit.while.body_crit_edge
  %21 = phi ptr [ %65, %if.end13.while.body_crit_edge ], [ %20, %skb_queue_splice_tail_init.exit.while.body_crit_edge ]
  %22 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %qlen.i, align 4
  %sub.i.i = add i32 %23, -1
  store volatile i32 %sub.i.i, ptr %qlen.i, align 4
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %21, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.0, ptr %21, i32 0, i32 1
  %26 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %21, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.0, ptr %25, i32 0, i32 1
  %28 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %27, ptr %prev17.i.i, align 4
  %29 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %25, ptr %27, align 8
  %cb = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 3
  %30 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cb, align 8
  %32 = call i32 @llvm.read_register.i32(metadata !86) #19
  %and.i.i.i.i.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %35, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !116
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #19
  %call.i = call zeroext i1 @rcu_is_watching() #19
  br i1 %call.i, label %while.body.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

while.body.rcu_read_lock.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %while.body
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 696, ptr noundef nonnull @.str.12) #19
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %while.body.rcu_read_lock.exit_crit_edge
  %tobool5.not = icmp eq ptr %31, null
  br i1 %tobool5.not, label %if.then, label %if.else

if.then:                                          ; preds = %rcu_read_lock.exit
  call fastcc void @macvlan_broadcast(ptr noundef nonnull %21, ptr noundef %add.ptr, ptr noundef null, i32 noundef 15)
  %call.i36 = call zeroext i1 @rcu_is_watching() #19
  br i1 %call.i36, label %if.then.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i39

if.then.rcu_read_unlock.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  br label %rcu_read_unlock.exit

land.lhs.true.i39:                                ; preds = %if.then
  %call1.i37 = call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i37)
  %tobool.not.i38 = icmp eq i32 %call1.i37, 0
  br i1 %tobool.not.i38, label %land.lhs.true.i39.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i41

land.lhs.true.i39.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i39
  call void @__sanitizer_cov_trace_pc() #21
  br label %rcu_read_unlock.exit

land.lhs.true2.i41:                               ; preds = %land.lhs.true.i39
  %.b4.i40 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i40, label %land.lhs.true2.i41.rcu_read_unlock.exit_crit_edge, label %if.then.i42

land.lhs.true2.i41.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i41
  call void @__sanitizer_cov_trace_pc() #21
  br label %rcu_read_unlock.exit

if.then.i42:                                      ; preds = %land.lhs.true2.i41
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 724, ptr noundef nonnull @.str.13) #19
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i42, %land.lhs.true2.i41.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i39.rcu_read_unlock.exit_crit_edge, %if.then.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !117
  %36 = call i32 @llvm.read_register.i32(metadata !86) #19
  %and.i.i.i.i.i43 = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i.i.i43 to ptr
  %preempt_count.i.i.i.i44 = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %preempt_count.i.i.i.i44 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %preempt_count.i.i.i.i44, align 4
  %sub.i.i.i = add i32 %39, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i44, align 4
  call void @rcu_read_unlock_strict() #19
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #19
  br label %if.end13

if.else:                                          ; preds = %rcu_read_lock.exit
  %mode = getelementptr inbounds %struct.macvlan_dev, ptr %31, i32 0, i32 9
  %40 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %41)
  %cmp = icmp eq i32 %41, 2
  %42 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %31, align 8
  br i1 %cmp, label %if.then6, label %if.else7

if.then6:                                         ; preds = %if.else
  call fastcc void @macvlan_broadcast(ptr noundef nonnull %21, ptr noundef %add.ptr, ptr noundef %43, i32 noundef 6)
  %call.i45 = call zeroext i1 @rcu_is_watching() #19
  br i1 %call.i45, label %if.then6.rcu_read_unlock.exit55_crit_edge, label %land.lhs.true.i48

if.then6.rcu_read_unlock.exit55_crit_edge:        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #21
  br label %rcu_read_unlock.exit55

land.lhs.true.i48:                                ; preds = %if.then6
  %call1.i46 = call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i46)
  %tobool.not.i47 = icmp eq i32 %call1.i46, 0
  br i1 %tobool.not.i47, label %land.lhs.true.i48.rcu_read_unlock.exit55_crit_edge, label %land.lhs.true2.i50

land.lhs.true.i48.rcu_read_unlock.exit55_crit_edge: ; preds = %land.lhs.true.i48
  call void @__sanitizer_cov_trace_pc() #21
  br label %rcu_read_unlock.exit55

land.lhs.true2.i50:                               ; preds = %land.lhs.true.i48
  %.b4.i49 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i49, label %land.lhs.true2.i50.rcu_read_unlock.exit55_crit_edge, label %if.then.i51

land.lhs.true2.i50.rcu_read_unlock.exit55_crit_edge: ; preds = %land.lhs.true2.i50
  call void @__sanitizer_cov_trace_pc() #21
  br label %rcu_read_unlock.exit55

if.then.i51:                                      ; preds = %land.lhs.true2.i50
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 724, ptr noundef nonnull @.str.13) #19
  br label %rcu_read_unlock.exit55

rcu_read_unlock.exit55:                           ; preds = %if.then.i51, %land.lhs.true2.i50.rcu_read_unlock.exit55_crit_edge, %land.lhs.true.i48.rcu_read_unlock.exit55_crit_edge, %if.then6.rcu_read_unlock.exit55_crit_edge
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !117
  br label %if.then11

if.else7:                                         ; preds = %if.else
  call fastcc void @macvlan_broadcast(ptr noundef nonnull %21, ptr noundef %add.ptr, ptr noundef %43, i32 noundef 2)
  %call.i56 = call zeroext i1 @rcu_is_watching() #19
  br i1 %call.i56, label %if.else7.rcu_read_unlock.exit66_crit_edge, label %land.lhs.true.i59

if.else7.rcu_read_unlock.exit66_crit_edge:        ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #21
  br label %rcu_read_unlock.exit66

land.lhs.true.i59:                                ; preds = %if.else7
  %call1.i57 = call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i57)
  %tobool.not.i58 = icmp eq i32 %call1.i57, 0
  br i1 %tobool.not.i58, label %land.lhs.true.i59.rcu_read_unlock.exit66_crit_edge, label %land.lhs.true2.i61

land.lhs.true.i59.rcu_read_unlock.exit66_crit_edge: ; preds = %land.lhs.true.i59
  call void @__sanitizer_cov_trace_pc() #21
  br label %rcu_read_unlock.exit66

land.lhs.true2.i61:                               ; preds = %land.lhs.true.i59
  %.b4.i60 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i60, label %land.lhs.true2.i61.rcu_read_unlock.exit66_crit_edge, label %if.then.i62

land.lhs.true2.i61.rcu_read_unlock.exit66_crit_edge: ; preds = %land.lhs.true2.i61
  call void @__sanitizer_cov_trace_pc() #21
  br label %rcu_read_unlock.exit66

if.then.i62:                                      ; preds = %land.lhs.true2.i61
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 724, ptr noundef nonnull @.str.13) #19
  br label %rcu_read_unlock.exit66

rcu_read_unlock.exit66:                           ; preds = %if.then.i62, %land.lhs.true2.i61.rcu_read_unlock.exit66_crit_edge, %land.lhs.true.i59.rcu_read_unlock.exit66_crit_edge, %if.else7.rcu_read_unlock.exit66_crit_edge
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !117
  br label %if.then11

if.then11:                                        ; preds = %rcu_read_unlock.exit66, %rcu_read_unlock.exit55
  %44 = call i32 @llvm.read_register.i32(metadata !86) #19
  %and.i.i.i.i.i63 = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i.i.i63 to ptr
  %preempt_count.i.i.i.i64 = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %preempt_count.i.i.i.i64 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %preempt_count.i.i.i.i64, align 4
  %sub.i.i.i65 = add i32 %47, -1
  store volatile i32 %sub.i.i.i65, ptr %preempt_count.i.i.i.i64, align 4
  call void @rcu_read_unlock_strict() #19
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #19
  %48 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %31, align 8
  %tobool.not.i67 = icmp eq ptr %49, null
  br i1 %tobool.not.i67, label %if.then11.if.end13_crit_edge, label %do.body1.i

if.then11.if.end13_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end13

do.body1.i:                                       ; preds = %if.then11
  %50 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !98
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %49, i32 0, i32 118
  %51 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pcpu_refcnt.i, align 4
  %53 = ptrtoint ptr %52 to i32
  %54 = call i32 @llvm.read_register.i32(metadata !86) #19
  %and.i.i = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %57
  %58 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx.i, align 4
  %add.i68 = add i32 %59, %53
  %60 = inttoptr i32 %add.i68 to ptr
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %60, align 4
  %add13.i = add i32 %62, -1
  store i32 %add13.i, ptr %60, align 4
  %63 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #19, !srcloc !99
  %and.i.i.i = and i32 %63, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !100

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #21
  call void @warn_bogus_irq_restore() #19
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %50) #19, !srcloc !101
  br label %if.end13

if.end13:                                         ; preds = %do.end30.i, %if.then11.if.end13_crit_edge, %rcu_read_unlock.exit
  call void @consume_skb(ptr noundef nonnull %21) #19
  call void @__might_resched(ptr noundef nonnull @.str.4, i32 noundef 338, i32 noundef 0) #19
  %call.i69 = call i32 @__cond_resched() #19
  %64 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %list, align 4
  %cmp.i.i = icmp eq ptr %65, %list
  %tobool.not.i3470 = icmp eq ptr %65, null
  %tobool.not.i34 = or i1 %cmp.i.i, %tobool.not.i3470
  br i1 %tobool.not.i34, label %if.end13.while.end_crit_edge, label %if.end13.while.body_crit_edge

if.end13.while.body_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.body

if.end13.while.end_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end

while.end:                                        ; preds = %if.end13.while.end_crit_edge, %skb_queue_splice_tail_init.exit.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %list) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netdev_rx_handler_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @macvlan_handle_frame(ptr nocapture noundef %pskb) #0 align 64 {
entry:
  %__next = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #21
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
  br i1 %cmp, label %entry.cleanup96_crit_edge, label %if.end, !prof !100

entry.cleanup96_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup96

if.end:                                           ; preds = %entry
  %7 = getelementptr inbounds %struct.anon.0, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %rx_handler_data.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 95
  %10 = ptrtoint ptr %rx_handler_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %rx_handler_data.i, align 4
  %call.i = tail call i32 @rcu_read_lock_held() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end.macvlan_port_get_rcu.exit_crit_edge

if.end.macvlan_port_get_rcu.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %macvlan_port_get_rcu.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.macvlan_port_get_rcu.exit_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.macvlan_port_get_rcu.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %macvlan_port_get_rcu.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b9.i = load i1, ptr @macvlan_port_get_rcu.__warned, align 1
  br i1 %.b9.i, label %land.lhs.true4.i.macvlan_port_get_rcu.exit_crit_edge, label %if.then.i

land.lhs.true4.i.macvlan_port_get_rcu.exit_crit_edge: ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %macvlan_port_get_rcu.exit

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @macvlan_port_get_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 114, ptr noundef nonnull @.str.14) #19
  br label %macvlan_port_get_rcu.exit

macvlan_port_get_rcu.exit:                        ; preds = %if.then.i, %land.lhs.true4.i.macvlan_port_get_rcu.exit_crit_edge, %land.lhs.true.i.macvlan_port_get_rcu.exit_crit_edge, %if.end.macvlan_port_get_rcu.exit_crit_edge
  %12 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i.i, align 4
  %14 = and i32 %13, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.i.not = icmp eq i32 %14, 0
  br i1 %tobool.i.not, label %if.end39, label %if.then5

if.then5:                                         ; preds = %macvlan_port_get_rcu.exit
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %7, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 127
  %17 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %nd_net.i, align 4
  %call7 = tail call ptr @ip_check_defrag(ptr noundef %18, ptr noundef %1, i32 noundef 196614) #19
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.then5.cleanup96_crit_edge, label %if.end10

if.then5.cleanup96_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup96

if.end10:                                         ; preds = %if.then5
  %19 = ptrtoint ptr %pskb to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7, ptr %pskb, align 4
  %head.i.i151 = getelementptr inbounds %struct.sk_buff, ptr %call7, i32 0, i32 18
  %20 = ptrtoint ptr %head.i.i151 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %head.i.i151, align 8
  %mac_header.i.i152 = getelementptr inbounds %struct.sk_buff, ptr %call7, i32 0, i32 15, i32 0, i32 21
  %22 = ptrtoint ptr %mac_header.i.i152 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %mac_header.i.i152, align 2
  %conv.i.i153 = zext i16 %23 to i32
  %add.ptr.i.i154 = getelementptr i8, ptr %21, i32 %conv.i.i153
  %h_source = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i154, i32 0, i32 1
  %call13 = tail call fastcc zeroext i1 @macvlan_forward_source(ptr noundef nonnull %call7, ptr noundef %11, ptr noundef %h_source)
  br i1 %call13, label %if.end10.cleanup96_crit_edge, label %if.end15

if.end10.cleanup96_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup96

if.end15:                                         ; preds = %if.end10
  %call18 = tail call fastcc ptr @macvlan_hash_lookup(ptr noundef %11, ptr noundef %h_source)
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %if.end15.if.end30_crit_edge, label %land.lhs.true

if.end15.if.end30_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end30

land.lhs.true:                                    ; preds = %if.end15
  %mode = getelementptr inbounds %struct.macvlan_dev, ptr %call18, i32 0, i32 9
  %24 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mode, align 8
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %25, label %if.then26 [
    i32 2, label %land.lhs.true.if.end30_crit_edge
    i32 4, label %land.lhs.true.if.end30_crit_edge196
  ]

land.lhs.true.if.end30_crit_edge196:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end30

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end30

if.then26:                                        ; preds = %land.lhs.true
  %27 = ptrtoint ptr %call18 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call18, align 8
  %29 = getelementptr inbounds %struct.anon.0, ptr %call7, i32 0, i32 2
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %28, ptr %29, align 8
  %broadcast.i = getelementptr inbounds %struct.net_device, ptr %28, i32 0, i32 99
  %31 = ptrtoint ptr %add.ptr.i.i154 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr.i.i154, align 4
  %33 = ptrtoint ptr %broadcast.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %broadcast.i, align 4
  %xor.i.i.i = xor i32 %34, %32
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i.i154, i32 4
  %35 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %add.ptr.i.i.i, align 2
  %add.ptr1.i.i.i = getelementptr %struct.net_device, ptr %28, i32 0, i32 99, i32 4
  %37 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %add.ptr1.i.i.i, align 2
  %xor37.i.i.i = xor i16 %38, %36
  %xor3.i.i.i = zext i16 %xor37.i.i.i to i32
  %or.i.i.i = or i32 %xor.i.i.i, %xor3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or.i.i.i, 0
  %pkt_type.i = getelementptr inbounds %struct.sk_buff, ptr %call7, i32 0, i32 15
  %39 = ptrtoint ptr %pkt_type.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %bf.load.i = load i16, ptr %pkt_type.i, align 8
  %bf.clear.i = and i16 %bf.load.i, 8191
  %storemerge.v = select i1 %cmp.i.i.i, i16 8192, i16 16384
  %storemerge = or i16 %bf.clear.i, %storemerge.v
  store i16 %storemerge, ptr %pkt_type.i, align 8
  %call29 = tail call i32 @netif_rx(ptr noundef nonnull %call7) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp94 = icmp eq i32 %call29, 0
  br i1 %cmp94, label %if.then26.if.then.i165_crit_edge, label %if.then26.do.body23.i_crit_edge, !prof !103

if.then26.do.body23.i_crit_edge:                  ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body23.i

if.then26.if.then.i165_crit_edge:                 ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then.i165

if.end30:                                         ; preds = %land.lhs.true.if.end30_crit_edge, %land.lhs.true.if.end30_crit_edge196, %if.end15.if.end30_crit_edge
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i154, i32 2
  %40 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %add.ptr.i, align 1
  %mul.i.i.i = mul i32 %41, 1640531527
  %shr.i4.i = lshr i32 %mul.i.i.i, 24
  %mc_filter = getelementptr inbounds %struct.macvlan_port, ptr %11, i32 0, i32 9
  %div3.i = lshr i32 %mul.i.i.i, 29
  %arrayidx.i = getelementptr i32, ptr %mc_filter, i32 %div3.i
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %shr.i4.i, 31
  %44 = shl nuw i32 1, %and.i
  %45 = and i32 %44, %43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool36.not = icmp eq i32 %45, 0
  br i1 %tobool36.not, label %if.end30.cleanup96_crit_edge, label %if.then37

if.end30.cleanup96_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup96

if.then37:                                        ; preds = %if.end30
  %call.i155 = tail call ptr @skb_clone(ptr noundef nonnull %call7, i32 noundef 2592) #19
  %tobool.not.i156 = icmp eq ptr %call.i155, null
  br i1 %tobool.not.i156, label %if.then37.err16.i_crit_edge, label %if.end.i

if.then37.err16.i_crit_edge:                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #21
  br label %err16.i

if.end.i:                                         ; preds = %if.then37
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i155, i32 0, i32 3
  %46 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call18, ptr %cb.i, align 8
  %bc_queue.i = getelementptr inbounds %struct.macvlan_port, ptr %11, i32 0, i32 3
  %lock.i = getelementptr inbounds %struct.macvlan_port, ptr %11, i32 0, i32 3, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #19
  %qlen.i.i = getelementptr inbounds %struct.macvlan_port, ptr %11, i32 0, i32 3, i32 1
  %47 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %qlen.i.i, align 4
  %bc_queue_len_used.i = getelementptr inbounds %struct.macvlan_port, ptr %11, i32 0, i32 5
  %49 = ptrtoint ptr %bc_queue_len_used.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %bc_queue_len_used.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %50)
  %cmp.i = icmp ult i32 %48, %50
  br i1 %cmp.i, label %if.then4.i157, label %free_nskb.critedge.i

if.then4.i157:                                    ; preds = %if.end.i
  br i1 %tobool19.not, label %if.then4.i157.if.end7.i_crit_edge, label %if.then6.i

if.then4.i157.if.end7.i_crit_edge:                ; preds = %if.then4.i157
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end7.i

if.then6.i:                                       ; preds = %if.then4.i157
  %51 = ptrtoint ptr %call18 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %call18, align 8
  %tobool.not.i.i = icmp eq ptr %52, null
  br i1 %tobool.not.i.i, label %if.then6.i.if.end7.i_crit_edge, label %do.body1.i.i

if.then6.i.if.end7.i_crit_edge:                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end7.i

do.body1.i.i:                                     ; preds = %if.then6.i
  %53 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !98
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %52, i32 0, i32 118
  %54 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %56 = ptrtoint ptr %55 to i32
  %57 = tail call i32 @llvm.read_register.i32(metadata !86) #19
  %and.i.i.i = and i32 %57, -16384
  %58 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %60
  %61 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %62, %56
  %63 = inttoptr i32 %add.i.i to ptr
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %63, align 4
  %add13.i.i = add i32 %65, 1
  store i32 %add13.i.i, ptr %63, align 4
  %66 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #19, !srcloc !99
  %and.i.i.i.i = and i32 %66, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.do.end30.i.i_crit_edge, !prof !100

do.body1.i.i.do.end30.i.i_crit_edge:              ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end30.i.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @warn_bogus_irq_restore() #19
  br label %do.end30.i.i

do.end30.i.i:                                     ; preds = %if.then28.i.i, %do.body1.i.i.do.end30.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %53) #19, !srcloc !101
  br label %if.end7.i

if.end7.i:                                        ; preds = %do.end30.i.i, %if.then6.i.if.end7.i_crit_edge, %if.then4.i157.if.end7.i_crit_edge
  %prev.i.i.i = getelementptr inbounds %struct.macvlan_port, ptr %11, i32 0, i32 3, i32 0, i32 0, i32 1
  %67 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %prev.i.i.i, align 4
  %69 = ptrtoint ptr %call.i155 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %bc_queue.i, ptr %call.i155, align 8
  %prev10.i.i.i.i = getelementptr inbounds %struct.anon.0, ptr %call.i155, i32 0, i32 1
  %70 = ptrtoint ptr %prev10.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %68, ptr %prev10.i.i.i.i, align 4
  store volatile ptr %call.i155, ptr %prev.i.i.i, align 4
  %71 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile ptr %call.i155, ptr %68, align 4
  %72 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %qlen.i.i, align 4
  %add.i.i.i.i = add i32 %73, 1
  store volatile i32 %add.i.i.i.i, ptr %qlen.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #19
  %bc_work.c.i = getelementptr inbounds %struct.macvlan_port, ptr %11, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %74 = load ptr, ptr @system_wq, align 4
  %call.i.i30.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %74, ptr noundef %bc_work.c.i) #19
  br label %cleanup96

free_nskb.critedge.i:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #19
  %bc_work.c29.i = getelementptr inbounds %struct.macvlan_port, ptr %11, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %75 = load ptr, ptr @system_wq, align 4
  %call.i.i31.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %75, ptr noundef %bc_work.c29.i) #19
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i155, i32 noundef 0) #19
  br label %err16.i

err16.i:                                          ; preds = %free_nskb.critedge.i, %if.then37.err16.i_crit_edge
  %76 = getelementptr inbounds %struct.anon.0, ptr %call7, i32 0, i32 2
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %76, align 8
  %rx_dropped.i = getelementptr inbounds %struct.net_device, ptr %78, i32 0, i32 37
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_dropped.i, i32 noundef 4) #19
  tail call void @llvm.prefetch.p0(ptr %rx_dropped.i, i32 1, i32 3, i32 1) #19
  %79 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_dropped.i, ptr %rx_dropped.i, i32 1, ptr elementtype(i32) %rx_dropped.i) #19, !srcloc !118
  br label %cleanup96

if.end39:                                         ; preds = %macvlan_port_get_rcu.exit
  %h_source40 = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i, i32 0, i32 1
  %call42 = tail call fastcc zeroext i1 @macvlan_forward_source(ptr noundef %1, ptr noundef %11, ptr noundef %h_source40)
  br i1 %call42, label %if.end39.cleanup96_crit_edge, label %if.end44

if.end39.cleanup96_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup96

if.end44:                                         ; preds = %if.end39
  %flags.i = getelementptr inbounds %struct.macvlan_port, ptr %11, i32 0, i32 6
  %80 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %flags.i, align 4
  %and.i158 = and i32 %81, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i158)
  %tobool.i159.not = icmp eq i32 %and.i158, 0
  br i1 %tobool.i159.not, label %if.else, label %if.then46

if.then46:                                        ; preds = %if.end44
  %vlans = getelementptr inbounds %struct.macvlan_port, ptr %11, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__next)
  %82 = ptrtoint ptr %vlans to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile ptr, ptr %vlans, align 4
  %84 = ptrtoint ptr %__next to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %83, ptr %__next, align 4
  %cmp48.not = icmp eq ptr %vlans, %83
  br i1 %cmp48.not, label %if.then46.cond.end63_crit_edge, label %cond.true56, !prof !100

if.then46.cond.end63_crit_edge:                   ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end63

cond.true56:                                      ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #21
  %85 = ptrtoint ptr %__next to i32
  call void @__asan_load4_noabort(i32 %85)
  %__next.0.__next.0.__next.0.106 = load volatile ptr, ptr %__next, align 4
  %add.ptr = getelementptr i8, ptr %__next.0.__next.0.__next.0.106, i32 -4
  br label %cond.end63

cond.end63:                                       ; preds = %cond.true56, %if.then46.cond.end63_crit_edge
  %cond64 = phi ptr [ %add.ptr, %cond.true56 ], [ null, %if.then46.cond.end63_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__next)
  br label %if.end68

if.else:                                          ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #21
  %call67 = tail call fastcc ptr @macvlan_hash_lookup(ptr noundef %11, ptr noundef %add.ptr.i.i)
  br label %if.end68

if.end68:                                         ; preds = %if.else, %cond.end63
  %vlan.1 = phi ptr [ %cond64, %cond.end63 ], [ %call67, %if.else ]
  %tobool69.not = icmp eq ptr %vlan.1, null
  br i1 %tobool69.not, label %if.end68.cleanup96_crit_edge, label %lor.lhs.false

if.end68.cleanup96_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup96

lor.lhs.false:                                    ; preds = %if.end68
  %mode70 = getelementptr inbounds %struct.macvlan_dev, ptr %vlan.1, i32 0, i32 9
  %86 = ptrtoint ptr %mode70 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %mode70, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %87)
  %cmp71 = icmp eq i32 %87, 16
  br i1 %cmp71, label %lor.lhs.false.cleanup96_crit_edge, label %if.end74

lor.lhs.false.cleanup96_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup96

if.end74:                                         ; preds = %lor.lhs.false
  %88 = ptrtoint ptr %vlan.1 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %vlan.1, align 8
  %flags = getelementptr inbounds %struct.net_device, ptr %89, i32 0, i32 14
  %90 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %flags, align 8
  %and = and i32 %91, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool76.not = icmp eq i32 %and, 0
  br i1 %tobool76.not, label %if.then85, label %if.end86, !prof !100

if.then85:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #19
  br label %cleanup96

if.end86:                                         ; preds = %if.end74
  %len87 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %92 = ptrtoint ptr %len87 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %len87, align 4
  %add = add i32 %93, 14
  %users.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 21
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %users.i.i, i32 noundef 4) #19
  %94 = ptrtoint ptr %users.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %users.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %95)
  %cmp.i.not.i = icmp eq i32 %95, 1
  br i1 %cmp.i.not.i, label %skb_share_check.exit, label %if.then6.i160

if.then6.i160:                                    ; preds = %if.end86
  %call7.i = tail call ptr @skb_clone(ptr noundef %1, i32 noundef 2592) #19
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %skb_share_check.exit.thread, label %skb_share_check.exit.thread175, !prof !100

skb_share_check.exit.thread175:                   ; preds = %if.then6.i160
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @consume_skb(ptr noundef %1) #19
  br label %out.thread187

skb_share_check.exit.thread:                      ; preds = %if.then6.i160
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #19
  br label %do.body23.i

skb_share_check.exit:                             ; preds = %if.end86
  %tobool89.not = icmp eq ptr %1, null
  br i1 %tobool89.not, label %skb_share_check.exit.do.body23.i_crit_edge, label %skb_share_check.exit.out.thread187_crit_edge

skb_share_check.exit.out.thread187_crit_edge:     ; preds = %skb_share_check.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %out.thread187

skb_share_check.exit.do.body23.i_crit_edge:       ; preds = %skb_share_check.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body23.i

out.thread187:                                    ; preds = %skb_share_check.exit.out.thread187_crit_edge, %skb_share_check.exit.thread175
  %skb.addr.0.i178 = phi ptr [ %call7.i, %skb_share_check.exit.thread175 ], [ %1, %skb_share_check.exit.out.thread187_crit_edge ]
  %96 = ptrtoint ptr %pskb to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %skb.addr.0.i178, ptr %pskb, align 4
  %97 = getelementptr inbounds %struct.anon.0, ptr %skb.addr.0.i178, i32 0, i32 2
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %89, ptr %97, align 8
  %pkt_type92 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i178, i32 0, i32 15
  %99 = ptrtoint ptr %pkt_type92 to i32
  call void @__asan_load2_noabort(i32 %99)
  %bf.load93 = load i16, ptr %pkt_type92, align 8
  %bf.clear = and i16 %bf.load93, 8191
  store i16 %bf.clear, ptr %pkt_type92, align 8
  br label %if.then.i165

if.then.i165:                                     ; preds = %out.thread187, %if.then26.if.then.i165_crit_edge
  %vlan.2195 = phi ptr [ %vlan.1, %out.thread187 ], [ %call18, %if.then26.if.then.i165_crit_edge ]
  %handle_res.1194 = phi i32 [ 1, %out.thread187 ], [ 0, %if.then26.if.then.i165_crit_edge ]
  %len.0193 = phi i32 [ %add, %out.thread187 ], [ 0, %if.then26.if.then.i165_crit_edge ]
  %100 = tail call i32 @llvm.read_register.i32(metadata !86) #19
  %and.i.i.i.i162 = and i32 %100, -16384
  %101 = inttoptr i32 %and.i.i.i.i162 to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %101, i32 0, i32 1
  %102 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i163 = add i32 %103, 1
  store volatile i32 %add.i.i163, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !114
  %pcpu_stats8.i = getelementptr inbounds %struct.macvlan_dev, ptr %vlan.2195, i32 0, i32 6
  %104 = ptrtoint ptr %pcpu_stats8.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %pcpu_stats8.i, align 8
  %106 = ptrtoint ptr %105 to i32
  %107 = tail call i32 @llvm.read_register.i32(metadata !86) #19
  %and.i.i = and i32 %107, -16384
  %108 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %108, i32 0, i32 3
  %109 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %cpu.i, align 4
  %arrayidx.i164 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %110
  %111 = ptrtoint ptr %arrayidx.i164 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx.i164, align 4
  %add.i = add i32 %112, %106
  %113 = inttoptr i32 %add.i to ptr
  %syncp.i = getelementptr inbounds %struct.vlan_pcpu_stats, ptr %113, i32 0, i32 5
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp.i) #19
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %113, align 8
  %inc.i = add i64 %115, 1
  store i64 %inc.i, ptr %113, align 8
  %conv.i = zext i32 %len.0193 to i64
  %rx_bytes.i = getelementptr inbounds %struct.vlan_pcpu_stats, ptr %113, i32 0, i32 1
  %116 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %rx_bytes.i, align 8
  %add10.i = add i64 %117, %conv.i
  store i64 %add10.i, ptr %rx_bytes.i, align 8
  %dep_map.i.i.i = getelementptr inbounds %struct.vlan_pcpu_stats, ptr %113, i32 0, i32 5, i32 0, i32 1
  %118 = tail call ptr @llvm.returnaddress(i32 0) #19
  %119 = ptrtoint ptr %118 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %119) #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !104
  %120 = ptrtoint ptr %syncp.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %syncp.i, align 4
  %inc.i.i.i.i = add i32 %121, 1
  store i32 %inc.i.i.i.i, ptr %syncp.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !115
  %122 = tail call i32 @llvm.read_register.i32(metadata !86) #19
  %and.i.i.i84.i = and i32 %122, -16384
  %123 = inttoptr i32 %and.i.i.i84.i to ptr
  %preempt_count.i.i85.i = getelementptr inbounds %struct.thread_info, ptr %123, i32 0, i32 1
  %124 = ptrtoint ptr %preempt_count.i.i85.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load volatile i32, ptr %preempt_count.i.i85.i, align 4
  %sub.i.i = add i32 %125, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i85.i, align 4
  br label %cleanup96

do.body23.i:                                      ; preds = %skb_share_check.exit.do.body23.i_crit_edge, %skb_share_check.exit.thread, %if.then26.do.body23.i_crit_edge
  %vlan.2186 = phi ptr [ %call18, %if.then26.do.body23.i_crit_edge ], [ %vlan.1, %skb_share_check.exit.do.body23.i_crit_edge ], [ %vlan.1, %skb_share_check.exit.thread ]
  %126 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !98
  %pcpu_stats41.i = getelementptr inbounds %struct.macvlan_dev, ptr %vlan.2186, i32 0, i32 6
  %127 = ptrtoint ptr %pcpu_stats41.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %pcpu_stats41.i, align 8
  %rx_errors.i = getelementptr inbounds %struct.vlan_pcpu_stats, ptr %128, i32 0, i32 6
  %129 = ptrtoint ptr %rx_errors.i to i32
  %130 = tail call i32 @llvm.read_register.i32(metadata !86) #19
  %and.i86.i = and i32 %130, -16384
  %131 = inttoptr i32 %and.i86.i to ptr
  %cpu44.i = getelementptr inbounds %struct.thread_info, ptr %131, i32 0, i32 3
  %132 = ptrtoint ptr %cpu44.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %cpu44.i, align 4
  %arrayidx45.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %133
  %134 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx45.i, align 4
  %add46.i = add i32 %135, %129
  %136 = inttoptr i32 %add46.i to ptr
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %136, align 4
  %add47.i = add i32 %138, 1
  store i32 %add47.i, ptr %136, align 4
  %139 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #19, !srcloc !99
  %and.i.i.i167 = and i32 %139, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i167)
  %tobool58.not.i = icmp eq i32 %and.i.i.i167, 0
  br i1 %tobool58.not.i, label %if.then67.i, label %do.body23.i.do.end70.i_crit_edge, !prof !100

do.body23.i.do.end70.i_crit_edge:                 ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end70.i

if.then67.i:                                      ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @warn_bogus_irq_restore() #19
  br label %do.end70.i

do.end70.i:                                       ; preds = %if.then67.i, %do.body23.i.do.end70.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %126) #19, !srcloc !101
  br label %cleanup96

cleanup96:                                        ; preds = %do.end70.i, %if.then.i165, %if.then85, %lor.lhs.false.cleanup96_crit_edge, %if.end68.cleanup96_crit_edge, %if.end39.cleanup96_crit_edge, %err16.i, %if.end7.i, %if.end30.cleanup96_crit_edge, %if.end10.cleanup96_crit_edge, %if.then5.cleanup96_crit_edge, %entry.cleanup96_crit_edge
  %retval.1 = phi i32 [ 0, %if.then85 ], [ 3, %entry.cleanup96_crit_edge ], [ 0, %if.end39.cleanup96_crit_edge ], [ 3, %lor.lhs.false.cleanup96_crit_edge ], [ 3, %if.end68.cleanup96_crit_edge ], [ %handle_res.1194, %if.then.i165 ], [ 0, %do.end70.i ], [ 3, %err16.i ], [ 3, %if.end7.i ], [ 3, %if.end30.cleanup96_crit_edge ], [ 0, %if.end10.cleanup96_crit_edge ], [ 0, %if.then5.cleanup96_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_check_defrag(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @macvlan_forward_source(ptr noundef %skb, ptr noundef %port, ptr nocapture noundef readonly %addr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %addr, align 1
  %shr.i = lshr i64 %1, 16
  %conv.i.i = trunc i64 %shr.i to i32
  %shr.i.i = lshr i64 %1, 48
  %conv1.i.i = trunc i64 %shr.i.i to i32
  %mul.i.i.i = mul i32 %conv1.i.i, 1640531527
  %xor.i.i = xor i32 %mul.i.i.i, %conv.i.i
  %mul.i.i.i.i = mul i32 %xor.i.i, 1640531527
  %shr.i.i.i = lshr i32 %mul.i.i.i.i, 24
  %arrayidx = getelementptr %struct.macvlan_port, ptr %port, i32 0, i32 8, i32 %shr.i.i.i
  %call2 = tail call i32 @rcu_read_lock_any_held() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true5

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b50 = load i1, ptr @macvlan_forward_source.__warned, align 1
  br i1 %.b50, label %land.lhs.true5.do.end_crit_edge, label %if.then

land.lhs.true5.do.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @macvlan_forward_source.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 426, ptr noundef nonnull @.str.5) #19
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true5.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %entry1.055 = load volatile ptr, ptr %arrayidx, align 4
  %tobool14.not56 = icmp eq ptr %entry1.055, null
  br i1 %tobool14.not56, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %add.ptr1.i.i = getelementptr i8, ptr %addr, i32 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %entry1.058 = phi ptr [ %entry1.055, %for.body.lr.ph ], [ %entry1.0, %for.inc.for.body_crit_edge ]
  %consume.0.off057 = phi i1 [ false, %for.body.lr.ph ], [ %consume.2.off0, %for.inc.for.body_crit_edge ]
  %addr15 = getelementptr inbounds %struct.macvlan_source_entry, ptr %entry1.058, i32 0, i32 2
  %3 = ptrtoint ptr %addr15 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %addr15, align 4
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %addr, align 4
  %xor.i.i53 = xor i32 %6, %4
  %add.ptr.i.i = getelementptr %struct.macvlan_source_entry, ptr %entry1.058, i32 0, i32 2, i32 4
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %add.ptr.i.i, align 2
  %9 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i = xor i16 %10, %8
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i53, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %if.then17, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc

if.then17:                                        ; preds = %for.body
  %vlan = getelementptr inbounds %struct.macvlan_source_entry, ptr %entry1.058, i32 0, i32 1
  %11 = ptrtoint ptr %vlan to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vlan, align 4
  %flags = getelementptr inbounds %struct.macvlan_dev, ptr %12, i32 0, i32 10
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %flags, align 4
  %15 = and i16 %14, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool18.not = icmp ne i16 %15, 0
  %spec.select51 = select i1 %tobool18.not, i1 true, i1 %consume.0.off057
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %12, align 8
  %flags.i = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 14
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then17.for.inc_crit_edge, label %if.end.i, !prof !100

if.then17.for.inc_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc

if.end.i:                                         ; preds = %if.then17
  %call.i = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #19
  %tobool5.not.i = icmp eq ptr %call.i, null
  br i1 %tobool5.not.i, label %if.end.i.for.inc_crit_edge, label %if.end7.i

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc

if.end7.i:                                        ; preds = %if.end.i
  %len8.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %20 = ptrtoint ptr %len8.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len8.i, align 4
  %add.i = add i32 %21, 14
  %22 = getelementptr inbounds %struct.anon.0, ptr %call.i, i32 0, i32 2
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %17, ptr %22, align 8
  %24 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %head.i.i.i, align 8
  %26 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %mac_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %27 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %25, i32 %conv.i.i.i
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 86
  %28 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev_addr.i, align 64
  %30 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr.i.i.i, align 4
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %29, align 4
  %xor.i.i.i = xor i32 %33, %31
  %add.ptr.i.i25.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 4
  %34 = ptrtoint ptr %add.ptr.i.i25.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %add.ptr.i.i25.i, align 2
  %add.ptr1.i.i.i = getelementptr i8, ptr %29, i32 4
  %36 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %add.ptr1.i.i.i, align 2
  %xor37.i.i.i = xor i16 %37, %35
  %xor3.i.i.i = zext i16 %xor37.i.i.i to i32
  %or.i.i.i = or i32 %xor.i.i.i, %xor3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then11.i, label %if.end7.i.if.end12.i_crit_edge

if.end7.i.if.end12.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end12.i

if.then11.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #21
  %pkt_type.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15
  %38 = ptrtoint ptr %pkt_type.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %bf.load.i = load i16, ptr %pkt_type.i, align 8
  %bf.clear.i = and i16 %bf.load.i, 8191
  store i16 %bf.clear.i, ptr %pkt_type.i, align 8
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then11.i, %if.end7.i.if.end12.i_crit_edge
  %call13.i = tail call i32 @netif_rx(ptr noundef nonnull %call.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp.i = icmp eq i32 %call13.i, 0
  br i1 %cmp.i, label %if.then.i.i, label %do.body23.i.i, !prof !103

if.then.i.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #21
  %39 = tail call i32 @llvm.read_register.i32(metadata !86) #19
  %and.i.i.i.i.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %42, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !114
  %pcpu_stats8.i.i = getelementptr inbounds %struct.macvlan_dev, ptr %12, i32 0, i32 6
  %43 = ptrtoint ptr %pcpu_stats8.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pcpu_stats8.i.i, align 8
  %45 = ptrtoint ptr %44 to i32
  %46 = tail call i32 @llvm.read_register.i32(metadata !86) #19
  %and.i.i.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %49
  %50 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %51, %45
  %52 = inttoptr i32 %add.i.i to ptr
  %syncp.i.i = getelementptr inbounds %struct.vlan_pcpu_stats, ptr %52, i32 0, i32 5
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp.i.i) #19
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %52, align 8
  %inc.i.i = add i64 %54, 1
  store i64 %inc.i.i, ptr %52, align 8
  %conv.i.i54 = zext i32 %add.i to i64
  %rx_bytes.i.i = getelementptr inbounds %struct.vlan_pcpu_stats, ptr %52, i32 0, i32 1
  %55 = ptrtoint ptr %rx_bytes.i.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %rx_bytes.i.i, align 8
  %add10.i.i = add i64 %56, %conv.i.i54
  store i64 %add10.i.i, ptr %rx_bytes.i.i, align 8
  %dep_map.i.i.i.i = getelementptr inbounds %struct.vlan_pcpu_stats, ptr %52, i32 0, i32 5, i32 0, i32 1
  %57 = tail call ptr @llvm.returnaddress(i32 0) #19
  %58 = ptrtoint ptr %57 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i, i32 noundef %58) #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !104
  %59 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i = add i32 %60, 1
  store i32 %inc.i.i.i.i.i, ptr %syncp.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !115
  %61 = tail call i32 @llvm.read_register.i32(metadata !86) #19
  %and.i.i.i84.i.i = and i32 %61, -16384
  %62 = inttoptr i32 %and.i.i.i84.i.i to ptr
  %preempt_count.i.i85.i.i = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %preempt_count.i.i85.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %preempt_count.i.i85.i.i, align 4
  %sub.i.i.i = add i32 %64, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i85.i.i, align 4
  br label %for.inc

do.body23.i.i:                                    ; preds = %if.end12.i
  %65 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !98
  %pcpu_stats41.i.i = getelementptr inbounds %struct.macvlan_dev, ptr %12, i32 0, i32 6
  %66 = ptrtoint ptr %pcpu_stats41.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pcpu_stats41.i.i, align 8
  %rx_errors.i.i = getelementptr inbounds %struct.vlan_pcpu_stats, ptr %67, i32 0, i32 6
  %68 = ptrtoint ptr %rx_errors.i.i to i32
  %69 = tail call i32 @llvm.read_register.i32(metadata !86) #19
  %and.i86.i.i = and i32 %69, -16384
  %70 = inttoptr i32 %and.i86.i.i to ptr
  %cpu44.i.i = getelementptr inbounds %struct.thread_info, ptr %70, i32 0, i32 3
  %71 = ptrtoint ptr %cpu44.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %cpu44.i.i, align 4
  %arrayidx45.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %72
  %73 = ptrtoint ptr %arrayidx45.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx45.i.i, align 4
  %add46.i.i = add i32 %74, %68
  %75 = inttoptr i32 %add46.i.i to ptr
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %75, align 4
  %add47.i.i = add i32 %77, 1
  store i32 %add47.i.i, ptr %75, align 4
  %78 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #19, !srcloc !99
  %and.i.i.i.i = and i32 %78, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool58.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool58.not.i.i, label %if.then67.i.i, label %do.body23.i.i.do.end70.i.i_crit_edge, !prof !100

do.body23.i.i.do.end70.i.i_crit_edge:             ; preds = %do.body23.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end70.i.i

if.then67.i.i:                                    ; preds = %do.body23.i.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @warn_bogus_irq_restore() #19
  br label %do.end70.i.i

do.end70.i.i:                                     ; preds = %if.then67.i.i, %do.body23.i.i.do.end70.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %65) #19, !srcloc !101
  br label %for.inc

for.inc:                                          ; preds = %do.end70.i.i, %if.then.i.i, %if.end.i.for.inc_crit_edge, %if.then17.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %consume.2.off0 = phi i1 [ %consume.0.off057, %for.body.for.inc_crit_edge ], [ %spec.select51, %if.then17.for.inc_crit_edge ], [ %spec.select51, %if.end.i.for.inc_crit_edge ], [ %spec.select51, %if.then.i.i ], [ %spec.select51, %do.end70.i.i ]
  %79 = ptrtoint ptr %entry1.058 to i32
  call void @__asan_load4_noabort(i32 %79)
  %entry1.0 = load volatile ptr, ptr %entry1.058, align 4
  %tobool14.not = icmp eq ptr %entry1.0, null
  br i1 %tobool14.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  %consume.0.off0.lcssa = phi i1 [ false, %do.end.for.end_crit_edge ], [ %consume.2.off0, %for.inc.for.end_crit_edge ]
  ret i1 %consume.0.off0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #17

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @macvlan_hash_lookup_source(ptr noundef readonly %vlan, ptr nocapture noundef readonly %addr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %addr, align 1
  %shr.i = lshr i64 %1, 16
  %conv.i.i = trunc i64 %shr.i to i32
  %shr.i.i = lshr i64 %1, 48
  %conv1.i.i = trunc i64 %shr.i.i to i32
  %mul.i.i.i = mul i32 %conv1.i.i, 1640531527
  %xor.i.i = xor i32 %mul.i.i.i, %conv.i.i
  %mul.i.i.i.i = mul i32 %xor.i.i, 1640531527
  %shr.i.i.i = lshr i32 %mul.i.i.i.i, 24
  %port = getelementptr inbounds %struct.macvlan_dev, ptr %vlan, i32 0, i32 3
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 4
  %arrayidx = getelementptr %struct.macvlan_port, ptr %3, i32 0, i32 8, i32 %shr.i.i.i
  %call2 = tail call i32 @rcu_read_lock_any_held() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true5

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b47 = load i1, ptr @macvlan_hash_lookup_source.__warned, align 1
  br i1 %.b47, label %land.lhs.true5.do.end_crit_edge, label %if.then

land.lhs.true5.do.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @macvlan_hash_lookup_source.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 144, ptr noundef nonnull @.str.5) #19
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true5.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %entry1.050 = load volatile ptr, ptr %arrayidx, align 4
  %tobool14.not51 = icmp eq ptr %entry1.050, null
  br i1 %tobool14.not51, label %do.end.cleanup_crit_edge, label %for.body.lr.ph

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

for.body.lr.ph:                                   ; preds = %do.end
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %addr, align 4
  %add.ptr1.i.i = getelementptr i8, ptr %addr, i32 4
  %7 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %add.ptr1.i.i, align 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %entry1.052 = phi ptr [ %entry1.050, %for.body.lr.ph ], [ %entry1.0, %for.inc.for.body_crit_edge ]
  %addr15 = getelementptr inbounds %struct.macvlan_source_entry, ptr %entry1.052, i32 0, i32 2
  %9 = ptrtoint ptr %addr15 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %addr15, align 4
  %xor.i.i49 = xor i32 %6, %10
  %add.ptr.i.i = getelementptr %struct.macvlan_source_entry, ptr %entry1.052, i32 0, i32 2, i32 4
  %11 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %add.ptr.i.i, align 2
  %xor37.i.i = xor i16 %8, %12
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i49, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %land.lhs.true17, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc

land.lhs.true17:                                  ; preds = %for.body
  %vlan18 = getelementptr inbounds %struct.macvlan_source_entry, ptr %entry1.052, i32 0, i32 1
  %13 = ptrtoint ptr %vlan18 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vlan18, align 4
  %cmp = icmp eq ptr %14, %vlan
  br i1 %cmp, label %land.lhs.true17.cleanup_crit_edge, label %land.lhs.true17.for.inc_crit_edge

land.lhs.true17.for.inc_crit_edge:                ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc

land.lhs.true17.cleanup_crit_edge:                ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true17.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %15 = ptrtoint ptr %entry1.052 to i32
  call void @__asan_load4_noabort(i32 %15)
  %entry1.0 = load volatile ptr, ptr %entry1.052, align 4
  %tobool14.not = icmp eq ptr %entry1.0, null
  br i1 %tobool14.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %land.lhs.true17.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %entry1.0.lcssa = phi ptr [ null, %do.end.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ], [ %entry1.052, %land.lhs.true17.cleanup_crit_edge ]
  ret ptr %entry1.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_rx_handler_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @macvlan_setup(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ether_setup(ptr noundef %dev) #19
  %min_mtu.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 30
  %0 = ptrtoint ptr %min_mtu.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %min_mtu.i, align 8
  %max_mtu.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 31
  %1 = ptrtoint ptr %max_mtu.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 65535, ptr %max_mtu.i, align 4
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %2 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %priv_flags.i, align 16
  %and.i.i = and i64 %3, -4295628833
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %4 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @macvlan_netdev_ops, ptr %netdev_ops.i, align 8
  %needs_free_netdev.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 124
  %5 = ptrtoint ptr %needs_free_netdev.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %needs_free_netdev.i, align 8
  %header_ops.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 49
  %6 = ptrtoint ptr %header_ops.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @macvlan_hard_header_ops, ptr %header_ops.i, align 4
  %ethtool_ops.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 44
  %7 = ptrtoint ptr %ethtool_ops.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @macvlan_ethtool_ops, ptr %ethtool_ops.i, align 16
  %or = or i64 %and.i.i, 4295495680
  store i64 %or, ptr %priv_flags.i, align 16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @macvlan_newlink(ptr noundef %src_net, ptr noundef %dev, ptr nocapture noundef readonly %tb, ptr noundef %data, ptr noundef %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @macvlan_common_newlink(ptr noundef %src_net, ptr noundef %dev, ptr noundef %tb, ptr noundef %data, ptr noundef %extack)
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @macvlan_get_link_net(ptr nocapture noundef readonly %dev) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %lowerdev.i = getelementptr i8, ptr %dev, i32 2328
  %0 = ptrtoint ptr %lowerdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lowerdev.i, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 127
  %2 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nd_net.i, align 4
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @macvlan_device_event(ptr nocapture noundef readnone %unused, i32 noundef %event, ptr nocapture noundef readonly %ptr) #0 align 64 {
entry:
  %list_kill = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list_kill) #19
  %2 = getelementptr inbounds %struct.list_head, ptr %list_kill, i32 0, i32 1
  %3 = ptrtoint ptr %list_kill to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %list_kill, ptr %list_kill, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %list_kill, ptr %2, align 4
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 15
  %5 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %6, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call zeroext i1 @lockdep_rtnl_is_held() #19
  br i1 %call.i, label %if.end.macvlan_port_get_rtnl.exit_crit_edge, label %land.lhs.true.i

if.end.macvlan_port_get_rtnl.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %macvlan_port_get_rtnl.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.macvlan_port_get_rtnl.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.macvlan_port_get_rtnl.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %macvlan_port_get_rtnl.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @macvlan_port_get_rtnl.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.macvlan_port_get_rtnl.exit_crit_edge, label %if.then.i

land.lhs.true2.i.macvlan_port_get_rtnl.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %macvlan_port_get_rtnl.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @macvlan_port_get_rtnl.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 119, ptr noundef nonnull @.str.16) #19
  br label %macvlan_port_get_rtnl.exit

macvlan_port_get_rtnl.exit:                       ; preds = %if.then.i, %land.lhs.true2.i.macvlan_port_get_rtnl.exit_crit_edge, %land.lhs.true.i.macvlan_port_get_rtnl.exit_crit_edge, %if.end.macvlan_port_get_rtnl.exit_crit_edge
  %rx_handler_data.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 95
  %7 = ptrtoint ptr %rx_handler_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rx_handler_data.i, align 4
  %9 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %event, label %macvlan_port_get_rtnl.exit.sw.epilog_crit_edge [
    i32 1, label %macvlan_port_get_rtnl.exit.sw.bb_crit_edge
    i32 2, label %macvlan_port_get_rtnl.exit.sw.bb_crit_edge220
    i32 4, label %macvlan_port_get_rtnl.exit.sw.bb_crit_edge221
    i32 12, label %sw.bb12
    i32 7, label %sw.bb34
    i32 8, label %sw.bb63
    i32 6, label %sw.bb81
    i32 15, label %macvlan_port_get_rtnl.exit.cleanup_crit_edge
    i32 19, label %macvlan_port_get_rtnl.exit.sw.bb113_crit_edge
    i32 13, label %macvlan_port_get_rtnl.exit.sw.bb113_crit_edge222
    i32 22, label %macvlan_port_get_rtnl.exit.sw.bb113_crit_edge223
  ]

macvlan_port_get_rtnl.exit.sw.bb113_crit_edge223: ; preds = %macvlan_port_get_rtnl.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb113

macvlan_port_get_rtnl.exit.sw.bb113_crit_edge222: ; preds = %macvlan_port_get_rtnl.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb113

macvlan_port_get_rtnl.exit.sw.bb113_crit_edge:    ; preds = %macvlan_port_get_rtnl.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb113

macvlan_port_get_rtnl.exit.cleanup_crit_edge:     ; preds = %macvlan_port_get_rtnl.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

macvlan_port_get_rtnl.exit.sw.bb_crit_edge221:    ; preds = %macvlan_port_get_rtnl.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb

macvlan_port_get_rtnl.exit.sw.bb_crit_edge220:    ; preds = %macvlan_port_get_rtnl.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb

macvlan_port_get_rtnl.exit.sw.bb_crit_edge:       ; preds = %macvlan_port_get_rtnl.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb

macvlan_port_get_rtnl.exit.sw.epilog_crit_edge:   ; preds = %macvlan_port_get_rtnl.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

sw.bb:                                            ; preds = %macvlan_port_get_rtnl.exit.sw.bb_crit_edge, %macvlan_port_get_rtnl.exit.sw.bb_crit_edge220, %macvlan_port_get_rtnl.exit.sw.bb_crit_edge221
  %vlans = getelementptr inbounds %struct.macvlan_port, ptr %8, i32 0, i32 2
  %10 = ptrtoint ptr %vlans to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn186205 = load ptr, ptr %vlans, align 4
  %cmp.not206 = icmp eq ptr %.pn186205, %vlans
  br i1 %cmp.not206, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.for.body_crit_edge

sw.bb.for.body_crit_edge:                         ; preds = %sw.bb
  br label %for.body

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

for.body:                                         ; preds = %for.body.for.body_crit_edge, %sw.bb.for.body_crit_edge
  %.pn186207 = phi ptr [ %.pn186, %for.body.for.body_crit_edge ], [ %.pn186205, %sw.bb.for.body_crit_edge ]
  %vlan.0 = getelementptr i8, ptr %.pn186207, i32 -4
  %lowerdev = getelementptr i8, ptr %.pn186207, i32 20
  %11 = ptrtoint ptr %lowerdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lowerdev, align 8
  %13 = ptrtoint ptr %vlan.0 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vlan.0, align 8
  call void @netif_stacked_transfer_operstate(ptr noundef %12, ptr noundef %14) #19
  %15 = ptrtoint ptr %.pn186207 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn186 = load ptr, ptr %.pn186207, align 4
  %cmp.not = icmp eq ptr %.pn186, %vlans
  br i1 %cmp.not, label %for.body.sw.epilog_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

sw.bb12:                                          ; preds = %macvlan_port_get_rtnl.exit
  %vlans14 = getelementptr inbounds %struct.macvlan_port, ptr %8, i32 0, i32 2
  %16 = ptrtoint ptr %vlans14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn185202 = load ptr, ptr %vlans14, align 4
  %cmp21.not203 = icmp eq ptr %.pn185202, %vlans14
  br i1 %cmp21.not203, label %sw.bb12.sw.epilog_crit_edge, label %for.body23.lr.ph

sw.bb12.sw.epilog_crit_edge:                      ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

for.body23.lr.ph:                                 ; preds = %sw.bb12
  %gso_max_size = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 137
  %gso_max_segs = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 138
  br label %for.body23

for.body23:                                       ; preds = %for.body23.for.body23_crit_edge, %for.body23.lr.ph
  %.pn185204 = phi ptr [ %.pn185202, %for.body23.lr.ph ], [ %.pn185, %for.body23.for.body23_crit_edge ]
  %vlan.1 = getelementptr i8, ptr %.pn185204, i32 -4
  %17 = ptrtoint ptr %vlan.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vlan.1, align 8
  %19 = ptrtoint ptr %gso_max_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %gso_max_size, align 8
  %gso_max_size.i = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 137
  %21 = ptrtoint ptr %gso_max_size.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 %20, ptr %gso_max_size.i, align 8
  %22 = load ptr, ptr %vlan.1, align 8
  %23 = ptrtoint ptr %gso_max_segs to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %gso_max_segs, align 4
  %gso_max_segs.i = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 138
  %25 = ptrtoint ptr %gso_max_segs.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store volatile i16 %24, ptr %gso_max_segs.i, align 4
  %26 = load ptr, ptr %vlan.1, align 8
  call void @netdev_update_features(ptr noundef %26) #19
  %27 = ptrtoint ptr %.pn185204 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn185 = load ptr, ptr %.pn185204, align 4
  %cmp21.not = icmp eq ptr %.pn185, %vlans14
  br i1 %cmp21.not, label %for.body23.sw.epilog_crit_edge, label %for.body23.for.body23_crit_edge

for.body23.for.body23_crit_edge:                  ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body23

for.body23.sw.epilog_crit_edge:                   ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

sw.bb34:                                          ; preds = %macvlan_port_get_rtnl.exit
  %vlans36 = getelementptr inbounds %struct.macvlan_port, ptr %8, i32 0, i32 2
  %28 = ptrtoint ptr %vlans36 to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn184199 = load ptr, ptr %vlans36, align 4
  %cmp43.not200 = icmp eq ptr %.pn184199, %vlans36
  br i1 %cmp43.not200, label %sw.bb34.sw.epilog_crit_edge, label %for.body46.lr.ph

sw.bb34.sw.epilog_crit_edge:                      ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

for.body46.lr.ph:                                 ; preds = %sw.bb34
  %mtu48 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 20
  br label %for.body46

for.body46:                                       ; preds = %for.inc56.for.body46_crit_edge, %for.body46.lr.ph
  %.pn184201 = phi ptr [ %.pn184199, %for.body46.lr.ph ], [ %.pn184, %for.inc56.for.body46_crit_edge ]
  %vlan.2 = getelementptr i8, ptr %.pn184201, i32 -4
  %29 = ptrtoint ptr %vlan.2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %vlan.2, align 8
  %mtu = getelementptr inbounds %struct.net_device, ptr %30, i32 0, i32 20
  %31 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mtu, align 4
  %33 = ptrtoint ptr %mtu48 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mtu48, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp49.not = icmp ugt i32 %32, %34
  br i1 %cmp49.not, label %if.end52, label %for.body46.for.inc56_crit_edge

for.body46.for.inc56_crit_edge:                   ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc56

if.end52:                                         ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #21
  %call55 = call i32 @dev_set_mtu(ptr noundef %30, i32 noundef %34) #19
  br label %for.inc56

for.inc56:                                        ; preds = %if.end52, %for.body46.for.inc56_crit_edge
  %35 = ptrtoint ptr %.pn184201 to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pn184 = load ptr, ptr %.pn184201, align 4
  %cmp43.not = icmp eq ptr %.pn184, %vlans36
  br i1 %cmp43.not, label %for.inc56.sw.epilog_crit_edge, label %for.inc56.for.body46_crit_edge

for.inc56.for.body46_crit_edge:                   ; preds = %for.inc56
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body46

for.inc56.sw.epilog_crit_edge:                    ; preds = %for.inc56
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

sw.bb63:                                          ; preds = %macvlan_port_get_rtnl.exit
  %flags.i = getelementptr inbounds %struct.macvlan_port, ptr %8, i32 0, i32 6
  %36 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags.i, align 4
  %and.i188 = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i188)
  %tobool.i189.not = icmp eq i32 %and.i188, 0
  br i1 %tobool.i189.not, label %sw.bb63.cleanup_crit_edge, label %if.end66

sw.bb63.cleanup_crit_edge:                        ; preds = %sw.bb63
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end66:                                         ; preds = %sw.bb63
  %vlans67 = getelementptr inbounds %struct.macvlan_port, ptr %8, i32 0, i32 2
  %38 = ptrtoint ptr %vlans67 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %vlans67, align 4
  %cmp71.not = icmp eq ptr %39, %vlans67
  %add.ptr75 = getelementptr i8, ptr %39, i32 -4
  %tobool.not190 = icmp eq ptr %add.ptr75, null
  %tobool.not = or i1 %cmp71.not, %tobool.not190
  br i1 %tobool.not, label %if.end66.sw.epilog_crit_edge, label %land.lhs.true

if.end66.sw.epilog_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

land.lhs.true:                                    ; preds = %if.end66
  %40 = ptrtoint ptr %add.ptr75 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %add.ptr75, align 8
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %42 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev_addr, align 64
  %call77 = call fastcc i32 @macvlan_sync_address(ptr noundef %41, ptr noundef %43)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %land.lhs.true.sw.epilog_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

sw.bb81:                                          ; preds = %macvlan_port_get_rtnl.exit
  %reg_state = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 121
  %44 = ptrtoint ptr %reg_state to i32
  call void @__asan_load1_noabort(i32 %44)
  %bf.load = load i8, ptr %reg_state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %bf.load)
  %cmp82.not = icmp eq i8 %bf.load, 2
  br i1 %cmp82.not, label %if.end85, label %sw.bb81.sw.epilog_crit_edge

sw.bb81.sw.epilog_crit_edge:                      ; preds = %sw.bb81
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

if.end85:                                         ; preds = %sw.bb81
  %vlans87 = getelementptr inbounds %struct.macvlan_port, ptr %8, i32 0, i32 2
  %45 = ptrtoint ptr %vlans87 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %vlans87, align 4
  %cmp99.not197 = icmp eq ptr %46, %vlans87
  br i1 %cmp99.not197, label %if.end85.for.end111_crit_edge, label %if.end85.for.body102_crit_edge

if.end85.for.body102_crit_edge:                   ; preds = %if.end85
  br label %for.body102

if.end85.for.end111_crit_edge:                    ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end111

for.body102:                                      ; preds = %for.body102.for.body102_crit_edge, %if.end85.for.body102_crit_edge
  %.pn183.in198 = phi ptr [ %.pn183, %for.body102.for.body102_crit_edge ], [ %46, %if.end85.for.body102_crit_edge ]
  %vlan.3 = getelementptr i8, ptr %.pn183.in198, i32 -4
  %47 = ptrtoint ptr %.pn183.in198 to i32
  call void @__asan_load4_noabort(i32 %47)
  %.pn183 = load ptr, ptr %.pn183.in198, align 4
  %48 = ptrtoint ptr %vlan.3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %vlan.3, align 8
  %rtnl_link_ops = getelementptr inbounds %struct.net_device, ptr %49, i32 0, i32 136
  %50 = ptrtoint ptr %rtnl_link_ops to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rtnl_link_ops, align 4
  %dellink = getelementptr inbounds %struct.rtnl_link_ops, ptr %51, i32 0, i32 11
  %52 = ptrtoint ptr %dellink to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dellink, align 4
  call void %53(ptr noundef %49, ptr noundef nonnull %list_kill) #19
  %cmp99.not = icmp eq ptr %.pn183, %vlans87
  br i1 %cmp99.not, label %for.body102.for.end111_crit_edge, label %for.body102.for.body102_crit_edge

for.body102.for.body102_crit_edge:                ; preds = %for.body102
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body102

for.body102.for.end111_crit_edge:                 ; preds = %for.body102
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end111

for.end111:                                       ; preds = %for.body102.for.end111_crit_edge, %if.end85.for.end111_crit_edge
  call void @unregister_netdevice_many(ptr noundef nonnull %list_kill) #19
  br label %sw.epilog

sw.bb113:                                         ; preds = %macvlan_port_get_rtnl.exit.sw.bb113_crit_edge, %macvlan_port_get_rtnl.exit.sw.bb113_crit_edge222, %macvlan_port_get_rtnl.exit.sw.bb113_crit_edge223
  %vlans115 = getelementptr inbounds %struct.macvlan_port, ptr %8, i32 0, i32 2
  %54 = ptrtoint ptr %vlans115 to i32
  call void @__asan_load4_noabort(i32 %54)
  %.pn194 = load ptr, ptr %vlans115, align 4
  %cmp122.not195 = icmp eq ptr %.pn194, %vlans115
  br i1 %cmp122.not195, label %sw.bb113.sw.epilog_crit_edge, label %sw.bb113.for.body125_crit_edge

sw.bb113.for.body125_crit_edge:                   ; preds = %sw.bb113
  br label %for.body125

sw.bb113.sw.epilog_crit_edge:                     ; preds = %sw.bb113
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

for.body125:                                      ; preds = %for.body125.for.body125_crit_edge, %sw.bb113.for.body125_crit_edge
  %.pn196 = phi ptr [ %.pn, %for.body125.for.body125_crit_edge ], [ %.pn194, %sw.bb113.for.body125_crit_edge ]
  %vlan.4 = getelementptr i8, ptr %.pn196, i32 -4
  %55 = ptrtoint ptr %vlan.4 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %vlan.4, align 8
  %call127 = call i32 @call_netdevice_notifiers(i32 noundef %event, ptr noundef %56) #19
  %57 = ptrtoint ptr %.pn196 to i32
  call void @__asan_load4_noabort(i32 %57)
  %.pn = load ptr, ptr %.pn196, align 4
  %cmp122.not = icmp eq ptr %.pn, %vlans115
  br i1 %cmp122.not, label %for.body125.sw.epilog_crit_edge, label %for.body125.for.body125_crit_edge

for.body125.for.body125_crit_edge:                ; preds = %for.body125
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body125

for.body125.sw.epilog_crit_edge:                  ; preds = %for.body125
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body125.sw.epilog_crit_edge, %sw.bb113.sw.epilog_crit_edge, %for.end111, %sw.bb81.sw.epilog_crit_edge, %land.lhs.true.sw.epilog_crit_edge, %if.end66.sw.epilog_crit_edge, %for.inc56.sw.epilog_crit_edge, %sw.bb34.sw.epilog_crit_edge, %for.body23.sw.epilog_crit_edge, %sw.bb12.sw.epilog_crit_edge, %for.body.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %macvlan_port_get_rtnl.exit.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %land.lhs.true.cleanup_crit_edge, %sw.bb63.cleanup_crit_edge, %macvlan_port_get_rtnl.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ], [ 0, %sw.bb63.cleanup_crit_edge ], [ 32770, %land.lhs.true.cleanup_crit_edge ], [ 32770, %macvlan_port_get_rtnl.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list_kill) #19
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_update_features(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_mtu(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdevice_many(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_netdevice_notifiers(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #18

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #19

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #20 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #20 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind readonly }
attributes #13 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #14 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #18 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #19 = { nounwind }
attributes #20 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #21 = { nomerge }
attributes #22 = { nounwind allocsize(2) }
attributes #23 = { nounwind allocsize(0) }
attributes #24 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !19, !21, !23, !25, !26, !28, !29, !30, !31, !32, !34, !36, !38, !39, !40, !42, !44, !45, !47, !49, !51, !53, !55, !56, !58, !59, !61, !62, !63, !65, !66, !68, !69, !71, !73, !75, !76, !78, !80, !82, !84}
!llvm.named.register.sp = !{!86}
!llvm.module.flags = !{!87, !88, !89, !90, !91, !92, !93, !94}
!llvm.ident = !{!95}

!0 = !{ptr @__ksymtab_macvlan_common_setup, !1, !"__ksymtab_macvlan_common_setup", i1 false, i1 false}
!1 = !{!"../drivers/net/macvlan.c", i32 1190, i32 1}
!2 = !{ptr @__ksymtab_macvlan_common_newlink, !3, !"__ksymtab_macvlan_common_newlink", i1 false, i1 false}
!3 = !{!"../drivers/net/macvlan.c", i32 1524, i32 1}
!4 = !{ptr @__ksymtab_macvlan_dellink, !5, !"__ksymtab_macvlan_dellink", i1 false, i1 false}
!5 = !{!"../drivers/net/macvlan.c", i32 1544, i32 1}
!6 = !{ptr @__ksymtab_macvlan_link_register, !7, !"__ksymtab_macvlan_link_register", i1 false, i1 false}
!7 = !{!"../drivers/net/macvlan.c", i32 1699, i32 1}
!8 = !{ptr @__initcall__kmod_macvlan__548_1822_macvlan_init_module6, !9, !"__initcall__kmod_macvlan__548_1822_macvlan_init_module6", i1 false, i1 false}
!9 = !{!"../drivers/net/macvlan.c", i32 1822, i32 1}
!10 = !{ptr @__exitcall_macvlan_cleanup_module, !11, !"__exitcall_macvlan_cleanup_module", i1 false, i1 false}
!11 = !{!"../drivers/net/macvlan.c", i32 1823, i32 1}
!12 = !{ptr @__UNIQUE_ID_file549, !13, !"__UNIQUE_ID_file549", i1 false, i1 false}
!13 = !{!"../drivers/net/macvlan.c", i32 1825, i32 1}
!14 = !{ptr @__UNIQUE_ID_license550, !13, !"__UNIQUE_ID_license550", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_author551, !16, !"__UNIQUE_ID_author551", i1 false, i1 false}
!16 = !{!"../drivers/net/macvlan.c", i32 1826, i32 1}
!17 = !{ptr @__UNIQUE_ID_description552, !18, !"__UNIQUE_ID_description552", i1 false, i1 false}
!18 = !{!"../drivers/net/macvlan.c", i32 1827, i32 1}
!19 = !{ptr @__UNIQUE_ID_alias553, !20, !"__UNIQUE_ID_alias553", i1 false, i1 false}
!20 = !{!"../drivers/net/macvlan.c", i32 1828, i32 1}
!21 = !{ptr @macvlan_netdev_ops, !22, !"macvlan_netdev_ops", i1 false, i1 false}
!22 = !{!"../drivers/net/macvlan.c", i32 1148, i32 36}
!23 = !{ptr @macvlan_init.__key, !24, !"__key", i1 false, i1 false}
!24 = !{!"../drivers/net/macvlan.c", i32 908, i32 21}
!25 = !{ptr @.str, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @macvlan_set_lockdep_class.qdisc_tx_busylock_key, !27, !"qdisc_tx_busylock_key", i1 false, i1 false}
!27 = !{!"../drivers/net/macvlan.c", i32 884, i32 2}
!28 = !{ptr @macvlan_set_lockdep_class.qdisc_xmit_lock_key, !27, !"qdisc_xmit_lock_key", i1 false, i1 false}
!29 = !{ptr @macvlan_set_lockdep_class.dev_addr_list_lock_key, !27, !"dev_addr_list_lock_key", i1 false, i1 false}
!30 = !{ptr @.str.1, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.2, !27, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.3, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/macvlan.c", i32 885, i32 2}
!34 = !{ptr @macvlan_netdev_addr_lock_key, !35, !"macvlan_netdev_addr_lock_key", i1 false, i1 false}
!35 = !{!"../drivers/net/macvlan.c", i32 865, i32 30}
!36 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!37 = !{!"../drivers/net/macvlan.c", i32 128, i32 2}
!38 = !{ptr @.str.4, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.5, !37, !"<string literal>", i1 false, i1 false}
!40 = distinct !{null, !41, !"__warned", i1 false, i1 false}
!41 = !{!"../drivers/net/macvlan.c", i32 275, i32 2}
!42 = distinct !{null, !43, !"__already_done", i1 false, i1 false}
!43 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!44 = !{ptr @.str.6, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @macvlan_hard_header_ops, !46, !"macvlan_hard_header_ops", i1 false, i1 false}
!46 = !{!"../drivers/net/macvlan.c", i32 594, i32 32}
!47 = !{ptr @macvlan_ethtool_ops, !48, !"macvlan_ethtool_ops", i1 false, i1 false}
!48 = !{!"../drivers/net/macvlan.c", i32 1141, i32 33}
!49 = !{ptr @.str.7, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/macvlan.c", i32 1039, i32 27}
!51 = !{ptr @.str.8, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/macvlan.c", i32 1040, i32 28}
!53 = !{ptr @macvlan_port_create.__key, !54, !"__key", i1 false, i1 false}
!54 = !{!"../drivers/net/macvlan.c", i32 1224, i32 2}
!55 = !{ptr @.str.9, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @skb_queue_head_init.__key, !57, !"__key", i1 false, i1 false}
!57 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!58 = !{ptr @.str.10, !57, !"<string literal>", i1 false, i1 false}
!59 = distinct !{null, !60, !"__warned", i1 false, i1 false}
!60 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!61 = !{ptr @.str.11, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.12, !60, !"<string literal>", i1 false, i1 false}
!63 = distinct !{null, !64, !"__warned", i1 false, i1 false}
!64 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!65 = !{ptr @.str.13, !64, !"<string literal>", i1 false, i1 false}
!66 = distinct !{null, !67, !"__warned", i1 false, i1 false}
!67 = !{!"../drivers/net/macvlan.c", i32 114, i32 9}
!68 = !{ptr @.str.14, !67, !"<string literal>", i1 false, i1 false}
!69 = distinct !{null, !70, !"__warned", i1 false, i1 false}
!70 = !{!"../drivers/net/macvlan.c", i32 426, i32 2}
!71 = distinct !{null, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../include/linux/skbuff.h", i32 1810, i32 2}
!73 = distinct !{null, !74, !"__warned", i1 false, i1 false}
!74 = !{!"../drivers/net/macvlan.c", i32 119, i32 9}
!75 = !{ptr @.str.16, !74, !"<string literal>", i1 false, i1 false}
!76 = distinct !{null, !77, !"__warned", i1 false, i1 false}
!77 = !{!"../drivers/net/macvlan.c", i32 144, i32 2}
!78 = !{ptr @macvlan_policy, !79, !"macvlan_policy", i1 false, i1 false}
!79 = !{!"../drivers/net/macvlan.c", i32 1676, i32 32}
!80 = distinct !{null, !81, !"__warned", i1 false, i1 false}
!81 = !{!"../drivers/net/macvlan.c", i32 1632, i32 2}
!82 = !{ptr @macvlan_link_ops, !83, !"macvlan_link_ops", i1 false, i1 false}
!83 = !{!"../drivers/net/macvlan.c", i32 1706, i32 29}
!84 = !{ptr @macvlan_notifier_block, !85, !"macvlan_notifier_block", i1 false, i1 false}
!85 = !{!"../drivers/net/macvlan.c", i32 1797, i32 30}
!86 = !{!"sp"}
!87 = !{i32 1, !"wchar_size", i32 2}
!88 = !{i32 1, !"min_enum_size", i32 4}
!89 = !{i32 8, !"branch-target-enforcement", i32 0}
!90 = !{i32 8, !"sign-return-address", i32 0}
!91 = !{i32 8, !"sign-return-address-all", i32 0}
!92 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!93 = !{i32 7, !"uwtable", i32 1}
!94 = !{i32 7, !"frame-pointer", i32 2}
!95 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!96 = !{i64 2151953018}
!97 = !{i64 2151872582}
!98 = !{i64 647721, i64 647782}
!99 = !{i64 650453}
!100 = !{!"branch_weights", i32 1, i32 2000}
!101 = !{i64 650738}
!102 = !{i8 0, i8 2}
!103 = !{!"branch_weights", i32 2000, i32 1}
!104 = !{i64 2150018026}
!105 = !{i64 2152810361}
!106 = !{i64 2152810203}
!107 = !{i64 2152810531}
!108 = !{i64 2150017376}
!109 = !{i64 2149909708}
!110 = !{i64 2149914640}
!111 = !{i64 2149936352}
!112 = !{i64 2149941244}
!113 = !{i64 2150017701}
!114 = !{i64 2156330259}
!115 = !{i64 2156331380}
!116 = !{i64 2149401709}
!117 = !{i64 2149401975}
!118 = !{i64 2148255240, i64 2148255266, i64 2148255295, i64 2148255329, i64 2148255360, i64 2148255383}
