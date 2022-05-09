; ModuleID = '/llk/IR_all_yes/drivers/net/ipvlan/ipvlan_main.c_pt.bc'
source_filename = "../drivers/net/ipvlan/ipvlan_main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+ipvlan_link_new\22, \22a\22\09"
module asm "\09.weak\09__crc_ipvlan_link_new\09\09\09\09"
module asm "\09.long\09__crc_ipvlan_link_new\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipvlan_link_new:\09\09\09\09\09"
module asm "\09.asciz \09\22ipvlan_link_new\22\09\09\09\09\09"
module asm "__kstrtabns_ipvlan_link_new:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ipvlan_link_delete\22, \22a\22\09"
module asm "\09.weak\09__crc_ipvlan_link_delete\09\09\09\09"
module asm "\09.long\09__crc_ipvlan_link_delete\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipvlan_link_delete:\09\09\09\09\09"
module asm "\09.asciz \09\22ipvlan_link_delete\22\09\09\09\09\09"
module asm "__kstrtabns_ipvlan_link_delete:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ipvlan_link_setup\22, \22a\22\09"
module asm "\09.weak\09__crc_ipvlan_link_setup\09\09\09\09"
module asm "\09.long\09__crc_ipvlan_link_setup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipvlan_link_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22ipvlan_link_setup\22\09\09\09\09\09"
module asm "__kstrtabns_ipvlan_link_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ipvlan_link_register\22, \22a\22\09"
module asm "\09.weak\09__crc_ipvlan_link_register\09\09\09\09"
module asm "\09.long\09__crc_ipvlan_link_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipvlan_link_register:\09\09\09\09\09"
module asm "\09.asciz \09\22ipvlan_link_register\22\09\09\09\09\09"
module asm "__kstrtabns_ipvlan_link_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.header_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.91 }
%union.anon.91 = type { i32 }
%struct.rtnl_link_ops = type { %struct.list_head, ptr, i32, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.85, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.119, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.85 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
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
%union.anon.119 = type { ptr }
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
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.151, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.151 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.ipvl_port = type { ptr, %struct.possible_net_t, [256 x %struct.hlist_head], %struct.list_head, i16, i16, i16, %struct.work_struct, %struct.sk_buff_head, i32, %struct.ida }
%struct.ida = type { %struct.xarray }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.ipvl_pcpu_stats = type { i64, i64, i64, i64, i64, %struct.u64_stats_sync, i32, i32 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.anon.83 = type { ptr, ptr, %union.anon.84 }
%union.anon.84 = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sk_buff = type { %union.anon.82, %union.anon.120, %union.anon.121, [48 x i8], %union.anon.122, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.124, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.82 = type { %struct.anon.83 }
%union.anon.120 = type { ptr }
%union.anon.121 = type { i64 }
%union.anon.122 = type { %struct.anon.123 }
%struct.anon.123 = type { i32, ptr }
%union.anon.124 = type { %struct.anon.125 }
%struct.anon.125 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.126, i32, i32, i32, i16, i16, %union.anon.128, i32, %union.anon.129, %union.anon.130, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.126 = type { i32 }
%union.anon.128 = type { i32 }
%union.anon.129 = type { i32 }
%union.anon.130 = type { i16 }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.netdev_notifier_info = type { ptr, ptr }
%struct.netdev_notifier_pre_changeaddr_info = type { %struct.netdev_notifier_info, ptr }
%struct.in_addr = type { i32 }
%struct.in_ifaddr = type { %struct.hlist_node, ptr, ptr, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i32, [16 x i8], i32, i32, i32, i32 }
%struct.ipvl_addr = type { ptr, %union.anon.159, %struct.hlist_node, %struct.list_head, i32, %struct.callback_head }
%union.anon.159 = type { %struct.in6_addr }
%struct.in6_addr = type { %union.anon.106 }
%union.anon.106 = type { [4 x i32] }
%struct.ipvl_dev = type { ptr, %struct.list_head, ptr, ptr, %struct.list_head, ptr, [8 x i32], i64, i32, %struct.spinlock }
%struct.in_validator_info = type { i32, ptr, ptr }
%struct.inet6_ifaddr = type { %struct.in6_addr, i32, i32, i32, i32, %struct.refcount_struct, %struct.spinlock, i32, i32, i8, i8, i16, i64, i32, i32, %struct.delayed_work, ptr, ptr, %struct.hlist_node, %struct.list_head, %struct.list_head, ptr, i32, i8, %struct.callback_head, %struct.in6_addr }
%struct.in6_validator_info = type { %struct.in6_addr, ptr, ptr }

@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Master is either lo or non-ether device\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Device is already in use.\0A\00", [37 x i8] zeroinitializer }, align 32
@ipvlan_link_new.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&ipvlan->addrs_lock\00", [44 x i8] zeroinitializer }, align 32
@__kstrtab_ipvlan_link_new = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipvlan_link_new = external dso_local constant [0 x i8], align 1
@__ksymtab_ipvlan_link_new = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipvlan_link_new to i32), ptr @__kstrtab_ipvlan_link_new, ptr @__kstrtabns_ipvlan_link_new }, section "___ksymtab_gpl+ipvlan_link_new", align 4
@__kstrtab_ipvlan_link_delete = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipvlan_link_delete = external dso_local constant [0 x i8], align 1
@__ksymtab_ipvlan_link_delete = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipvlan_link_delete to i32), ptr @__kstrtab_ipvlan_link_delete, ptr @__kstrtabns_ipvlan_link_delete }, section "___ksymtab_gpl+ipvlan_link_delete", align 4
@ipvlan_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr @ipvlan_init, ptr @ipvlan_uninit, ptr @ipvlan_open, ptr @ipvlan_stop, ptr @ipvlan_start_xmit, ptr null, ptr null, ptr @ipvlan_change_rx_flags, ptr @ipvlan_set_multicast_mac_filter, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ipvlan_get_stats64, ptr null, ptr null, ptr null, ptr @ipvlan_vlan_rx_add_vid, ptr @ipvlan_vlan_rx_kill_vid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ipvlan_fix_features, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ipvlan_get_iflink, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@ipvlan_header_ops = internal constant { %struct.header_ops, [40 x i8] } { %struct.header_ops { ptr @ipvlan_hard_header, ptr @eth_header_parse, ptr @eth_header_cache, ptr @eth_header_cache_update, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ipvlan_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @ipvlan_ethtool_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr @ipvlan_ethtool_get_msglevel, ptr @ipvlan_ethtool_set_msglevel, ptr null, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ipvlan_ethtool_get_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@__kstrtab_ipvlan_link_setup = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipvlan_link_setup = external dso_local constant [0 x i8], align 1
@__ksymtab_ipvlan_link_setup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipvlan_link_setup to i32), ptr @__kstrtab_ipvlan_link_setup, ptr @__kstrtabns_ipvlan_link_setup }, section "___ksymtab_gpl+ipvlan_link_setup", align 4
@ipvlan_nl_policy = internal constant { [3 x %struct.nla_policy], [40 x i8] } { [3 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.91 zeroinitializer }], [40 x i8] zeroinitializer }, align 32
@__kstrtab_ipvlan_link_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipvlan_link_register = external dso_local constant [0 x i8], align 1
@__ksymtab_ipvlan_link_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipvlan_link_register to i32), ptr @__kstrtab_ipvlan_link_register, ptr @__kstrtabns_ipvlan_link_register }, section "___ksymtab_gpl+ipvlan_link_register", align 4
@ipvlan_link_ops = internal global { %struct.rtnl_link_ops, [52 x i8] } { %struct.rtnl_link_ops { %struct.list_head zeroinitializer, ptr @.str.18, i32 120, ptr null, ptr @ipvlan_link_setup, i8 0, i32 0, ptr null, ptr null, ptr @ipvlan_link_new, ptr null, ptr @ipvlan_link_delete, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @ipvlan_get_link_net, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@ipvlan_notifier_block = internal global %struct.notifier_block { ptr @ipvlan_device_event, ptr null, i32 0 }, section ".data..read_mostly", align 4
@ipvlan_addr4_notifier_block = internal global %struct.notifier_block { ptr @ipvlan_addr4_event, ptr null, i32 0 }, section ".data..read_mostly", align 4
@ipvlan_addr4_vtor_notifier_block = internal global %struct.notifier_block { ptr @ipvlan_addr4_validator_event, ptr null, i32 0 }, section ".data..read_mostly", align 4
@ipvlan_addr6_notifier_block = internal global %struct.notifier_block { ptr @ipvlan_addr6_event, ptr null, i32 0 }, section ".data..read_mostly", align 4
@ipvlan_addr6_vtor_notifier_block = internal global %struct.notifier_block { ptr @ipvlan_addr6_validator_event, ptr null, i32 0 }, section ".data..read_mostly", align 4
@__initcall__kmod_ipvlan__595_1076_ipvlan_init_module6 = internal global ptr @ipvlan_init_module, section ".initcall6.init", align 4
@__exitcall_ipvlan_cleanup_module = internal global ptr @ipvlan_cleanup_module, section ".exitcall.exit", align 4
@__UNIQUE_ID_file596 = internal constant [38 x i8] c"ipvlan.file=drivers/net/ipvlan/ipvlan\00", section ".modinfo", align 1
@__UNIQUE_ID_license597 = internal constant [19 x i8] c"ipvlan.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author598 = internal constant [51 x i8] c"ipvlan.author=Mahesh Bandewar <maheshb@google.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description599 = internal constant [57 x i8] c"ipvlan.description=Driver for L3 (IPv6/IPv4) based VLANs\00", section ".modinfo", align 1
@__UNIQUE_ID_alias600 = internal constant [30 x i8] c"ipvlan.alias=rtnl-link-ipvlan\00", section ".modinfo", align 1
@ipvlan_port_get_rtnl.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/net/ipvlan/ipvlan.h\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@ipvlan_set_port_mode.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/net/ipvlan/ipvlan_main.c\00", [63 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@ipvlan_init.qdisc_tx_busylock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ipvlan_init.qdisc_xmit_lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ipvlan_init.dev_addr_list_lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&dev_addr_list_lock_key\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&qdisc_xmit_lock_key\00", [43 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@ipvlan_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&(&stat->syncp)->seq\00", [43 x i8] zeroinitializer }, align 32
@ipvlan_port_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"(work_completion)(&port->wq)\00", [35 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@ipvlan_open.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@ipvlan_stop.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ipvlan\00", [25 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0.1\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to add IPv4=%pI4 on %s intf.\0A\00", [59 x i8] zeroinitializer }, align 32
@ipvlan_addr4_validator_event.__msg = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Address already assigned to an ipvlan device\00", [51 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to add IPv6=%pI6c addr for %s intf\0A\00", [53 x i8] zeroinitializer }, align 32
@ipvlan_addr6_validator_event.__msg = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Address already assigned to an ipvlan device\00", [51 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.22 = internal global [11 x i64] [i64 9, i64 32, i64 1, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 12, i64 15]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 559, i32 8 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 564, i32 24 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 575, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant [18 x i8] c"ipvlan_netdev_ops\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 353, i32 36 }
@___asan_gen_.40 = private unnamed_addr constant [18 x i8] c"ipvlan_header_ops\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 383, i32 32 }
@___asan_gen_.43 = private unnamed_addr constant [19 x i8] c"ipvlan_ethtool_ops\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 430, i32 33 }
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"ipvlan_nl_policy\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 682, i32 32 }
@___asan_gen_.49 = private unnamed_addr constant [16 x i8] c"ipvlan_link_ops\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 695, i32 29 }
@___asan_gen_.56 = private unnamed_addr constant [31 x i8] c"../drivers/net/ipvlan/ipvlan.h\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 120, i32 9 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 16, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant [22 x i8] c"qdisc_tx_busylock_key\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [20 x i8] c"qdisc_xmit_lock_key\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [23 x i8] c"dev_addr_list_lock_key\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 146, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 148, i32 23 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 78, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 1984, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.101 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 378, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 190, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 695, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 723, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 271, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 412, i32 27 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 413, i32 28 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 937, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 991, i32 4 }
@___asan_gen_.130 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 869, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.134 = private constant [36 x i8] c"../drivers/net/ipvlan/ipvlan_main.c\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 920, i32 4 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @__UNIQUE_ID_alias600, ptr @__UNIQUE_ID_author598, ptr @__UNIQUE_ID_description599, ptr @__UNIQUE_ID_file596, ptr @__UNIQUE_ID_license597, ptr @__exitcall_ipvlan_cleanup_module, ptr @__initcall__kmod_ipvlan__595_1076_ipvlan_init_module6, ptr @__ksymtab_ipvlan_link_delete, ptr @__ksymtab_ipvlan_link_new, ptr @__ksymtab_ipvlan_link_register, ptr @__ksymtab_ipvlan_link_setup, ptr @ipvlan_cleanup_module, ptr @.str, ptr @.str.1, ptr @ipvlan_link_new.__key, ptr @.str.2, ptr @ipvlan_netdev_ops, ptr @ipvlan_header_ops, ptr @ipvlan_ethtool_ops, ptr @ipvlan_nl_policy, ptr @ipvlan_link_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @ipvlan_init.qdisc_tx_busylock_key, ptr @ipvlan_init.qdisc_xmit_lock_key, ptr @ipvlan_init.dev_addr_list_lock_key, ptr @.str.7, ptr @.str.8, ptr @ipvlan_init.__key, ptr @.str.9, ptr @ipvlan_port_create.__key, ptr @.str.10, ptr @skb_queue_head_init.__key, ptr @.str.11, ptr @xa_init_flags.__key, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @ipvlan_addr4_validator_event.__msg, ptr @.str.21, ptr @ipvlan_addr6_validator_event.__msg], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipvlan_link_new.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipvlan_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipvlan_header_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipvlan_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipvlan_nl_policy to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipvlan_link_ops to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipvlan_init.qdisc_tx_busylock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipvlan_init.qdisc_xmit_lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipvlan_init.dev_addr_list_lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipvlan_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipvlan_port_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipvlan_addr4_validator_event.__msg to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipvlan_addr6_validator_event.__msg to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipvlan_link_new(ptr noundef %src_net, ptr noundef %dev, ptr nocapture noundef readonly %tb, ptr noundef readonly %data, ptr noundef %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %arrayidx = getelementptr ptr, ptr %tb, i32 5
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup91_crit_edge, label %if.end

entry.cleanup91_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup91

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i.i, align 4
  %call3 = tail call ptr @__dev_get_by_index(ptr noundef %src_net, i32 noundef %3) #17
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup91_crit_edge, label %if.end6

if.end.cleanup91_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup91

if.end6:                                          ; preds = %if.end
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %call3, i32 0, i32 16
  %4 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev_ops.i, align 8
  %cmp.i = icmp eq ptr %5, @ipvlan_netdev_ops
  br i1 %cmp.i, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end6
  %phy_dev10 = getelementptr i8, ptr %call3, i32 2320
  %6 = ptrtoint ptr %phy_dev10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy_dev10, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 127
  %8 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nd_net.i, align 4
  %user_ns = getelementptr inbounds %struct.net, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %user_ns, align 4
  %call12 = tail call zeroext i1 @ns_capable(ptr noundef %11, i32 noundef 12) #17
  br i1 %call12, label %if.then8.if.end25_crit_edge, label %if.then8.cleanup91_crit_edge

if.then8.cleanup91_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup91

if.then8.if.end25_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end25

if.else:                                          ; preds = %if.end6
  %rx_handler.i = getelementptr inbounds %struct.net_device, ptr %call3, i32 0, i32 94
  %12 = ptrtoint ptr %rx_handler.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %rx_handler.i, align 32
  %cmp.i160 = icmp eq ptr %13, @ipvlan_handle_frame
  br i1 %cmp.i160, label %if.else.if.end25_crit_edge, label %if.then16

if.else.if.end25_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end25

if.then16:                                        ; preds = %if.else
  %type = getelementptr inbounds %struct.net_device, ptr %call3, i32 0, i32 32
  %14 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %type, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %15)
  %cmp.not = icmp eq i16 %15, 1
  br i1 %cmp.not, label %lor.lhs.false, label %if.then16.if.then19_crit_edge

if.then16.if.then19_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then19

lor.lhs.false:                                    ; preds = %if.then16
  %flags = getelementptr inbounds %struct.net_device, ptr %call3, i32 0, i32 14
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags, align 8
  %and = and i32 %17, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %if.end20, label %lor.lhs.false.if.then19_crit_edge

lor.lhs.false.if.then19_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then19

if.then19:                                        ; preds = %lor.lhs.false.if.then19_crit_edge, %if.then16.if.then19_crit_edge
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef nonnull %call3, ptr noundef nonnull @.str) #20
  br label %cleanup91

if.end20:                                         ; preds = %lor.lhs.false
  %call21 = tail call zeroext i1 @netdev_is_rx_handler_busy(ptr noundef nonnull %call3) #17
  br i1 %call21, label %if.then22, label %if.end20.if.end25_crit_edge

if.end20.if.end25_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end25

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef nonnull %call3, ptr noundef nonnull @.str.1) #20
  br label %cleanup91

if.end25:                                         ; preds = %if.end20.if.end25_crit_edge, %if.else.if.end25_crit_edge, %if.then8.if.end25_crit_edge
  %phy_dev.0 = phi ptr [ %7, %if.then8.if.end25_crit_edge ], [ %call3, %if.else.if.end25_crit_edge ], [ %call3, %if.end20.if.end25_crit_edge ]
  %phy_dev26 = getelementptr i8, ptr %dev, i32 2320
  %18 = ptrtoint ptr %phy_dev26 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %phy_dev.0, ptr %phy_dev26, align 8
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %dev, ptr %add.ptr.i, align 8
  %sfeatures = getelementptr i8, ptr %dev, i32 2368
  %20 = ptrtoint ptr %sfeatures to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 141837002033769, ptr %sfeatures, align 8
  %arrayidx28 = getelementptr ptr, ptr %tb, i32 4
  %21 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx28, align 4
  %tobool29.not = icmp eq ptr %22, null
  br i1 %tobool29.not, label %if.then30, label %if.end25.if.end31_crit_edge

if.end25.if.end31_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end31

if.then30:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #19
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %phy_dev.0, i32 0, i32 20
  %23 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mtu.i, align 4
  %mtu2.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %25 = ptrtoint ptr %mtu2.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %mtu2.i, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end25.if.end31_crit_edge
  %addrs = getelementptr i8, ptr %dev, i32 2324
  %26 = ptrtoint ptr %addrs to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %addrs, ptr %addrs, align 4
  %prev.i = getelementptr i8, ptr %dev, i32 2328
  %27 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %addrs, ptr %prev.i, align 4
  %addrs_lock = getelementptr i8, ptr %dev, i32 2380
  tail call void @__raw_spin_lock_init(ptr noundef %addrs_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @ipvlan_link_new.__key, i16 noundef signext 3) #17
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %phy_dev.0, i32 0, i32 86
  %28 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev_addr, align 64
  tail call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef %29, i32 noundef 6) #17
  %priv_flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %30 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %priv_flags, align 16
  %or = or i64 %31, 67108864
  store i64 %or, ptr %priv_flags, align 16
  %call33 = tail call i32 @register_netdevice(ptr noundef %dev) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.end31.cleanup91_crit_edge, label %if.end37

if.end31.cleanup91_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup91

if.end37:                                         ; preds = %if.end31
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #17
  br i1 %call.i, label %if.end37.ipvlan_port_get_rtnl.exit_crit_edge, label %land.lhs.true.i

if.end37.ipvlan_port_get_rtnl.exit_crit_edge:     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #19
  br label %ipvlan_port_get_rtnl.exit

land.lhs.true.i:                                  ; preds = %if.end37
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.ipvlan_port_get_rtnl.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.ipvlan_port_get_rtnl.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ipvlan_port_get_rtnl.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @ipvlan_port_get_rtnl.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.ipvlan_port_get_rtnl.exit_crit_edge, label %if.then.i

land.lhs.true2.i.ipvlan_port_get_rtnl.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ipvlan_port_get_rtnl.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @ipvlan_port_get_rtnl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 120, ptr noundef nonnull @.str.4) #17
  br label %ipvlan_port_get_rtnl.exit

ipvlan_port_get_rtnl.exit:                        ; preds = %if.then.i, %land.lhs.true2.i.ipvlan_port_get_rtnl.exit_crit_edge, %land.lhs.true.i.ipvlan_port_get_rtnl.exit_crit_edge, %if.end37.ipvlan_port_get_rtnl.exit_crit_edge
  %rx_handler_data.i = getelementptr inbounds %struct.net_device, ptr %phy_dev.0, i32 0, i32 95
  %32 = ptrtoint ptr %rx_handler_data.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rx_handler_data.i, align 4
  %port39 = getelementptr i8, ptr %dev, i32 2316
  %34 = ptrtoint ptr %port39 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %port39, align 4
  %dev_id_start = getelementptr inbounds %struct.ipvl_port, ptr %33, i32 0, i32 6
  %35 = ptrtoint ptr %dev_id_start to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %dev_id_start, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -2, i16 %36)
  %cmp41 = icmp eq i16 %36, -2
  br i1 %cmp41, label %if.then43, label %ipvlan_port_get_rtnl.exit.if.end45_crit_edge

ipvlan_port_get_rtnl.exit.if.end45_crit_edge:     ; preds = %ipvlan_port_get_rtnl.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end45

if.then43:                                        ; preds = %ipvlan_port_get_rtnl.exit
  call void @__sanitizer_cov_trace_pc() #19
  %37 = ptrtoint ptr %dev_id_start to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 1, ptr %dev_id_start, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %ipvlan_port_get_rtnl.exit.if.end45_crit_edge
  %ida = getelementptr inbounds %struct.ipvl_port, ptr %33, i32 0, i32 10
  %38 = ptrtoint ptr %dev_id_start to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %dev_id_start, align 4
  %conv47 = zext i16 %39 to i32
  %call48 = tail call i32 @ida_alloc_range(ptr noundef %ida, i32 noundef %conv47, i32 noundef 65533, i32 noundef 3264) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %if.end56, label %if.end45.if.end60_crit_edge

if.end45.if.end60_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end60

if.end56:                                         ; preds = %if.end45
  %40 = ptrtoint ptr %dev_id_start to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %dev_id_start, align 4
  %conv54 = zext i16 %41 to i32
  %sub = add nsw i32 %conv54, -1
  %call55 = tail call i32 @ida_alloc_range(ptr noundef %ida, i32 noundef 1, i32 noundef %sub, i32 noundef 3264) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp57 = icmp slt i32 %call55, 0
  br i1 %cmp57, label %if.end56.unregister_netdev_crit_edge, label %if.end56.if.end60_crit_edge

if.end56.if.end60_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end60

if.end56.unregister_netdev_crit_edge:             ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #19
  br label %unregister_netdev

if.end60:                                         ; preds = %if.end56.if.end60_crit_edge, %if.end45.if.end60_crit_edge
  %err.0165 = phi i32 [ %call55, %if.end56.if.end60_crit_edge ], [ %call48, %if.end45.if.end60_crit_edge ]
  %conv61 = trunc i32 %err.0165 to i16
  %dev_id = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 60
  %42 = ptrtoint ptr %dev_id to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv61, ptr %dev_id, align 2
  %conv62 = add i16 %conv61, 1
  %43 = ptrtoint ptr %dev_id_start to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv62, ptr %dev_id_start, align 4
  %call64 = tail call i32 @netdev_upper_dev_link(ptr noundef %phy_dev.0, ptr noundef %dev, ptr noundef %extack) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end67, label %if.end60.remove_ida_crit_edge

if.end60.remove_ida_crit_edge:                    ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #19
  br label %remove_ida

if.end67:                                         ; preds = %if.end60
  %tobool68.not = icmp eq ptr %data, null
  br i1 %tobool68.not, label %if.end67.if.end83_crit_edge, label %land.lhs.true

if.end67.if.end83_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end83

land.lhs.true:                                    ; preds = %if.end67
  %arrayidx69 = getelementptr ptr, ptr %data, i32 2
  %44 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx69, align 4
  %tobool70.not = icmp eq ptr %45, null
  br i1 %tobool70.not, label %land.lhs.true.land.lhs.true77_crit_edge, label %if.then71

land.lhs.true.land.lhs.true77_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true77

if.then71:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr.i.i161 = getelementptr i8, ptr %45, i32 4
  %46 = ptrtoint ptr %add.ptr.i.i161 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %add.ptr.i.i161, align 2
  %flags74 = getelementptr inbounds %struct.ipvl_port, ptr %33, i32 0, i32 5
  %48 = ptrtoint ptr %flags74 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %flags74, align 2
  br label %land.lhs.true77

land.lhs.true77:                                  ; preds = %if.then71, %land.lhs.true.land.lhs.true77_crit_edge
  %arrayidx78 = getelementptr ptr, ptr %data, i32 1
  %49 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx78, align 4
  %tobool79.not = icmp eq ptr %50, null
  br i1 %tobool79.not, label %land.lhs.true77.if.end83_crit_edge, label %if.then80

land.lhs.true77.if.end83_crit_edge:               ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end83

if.then80:                                        ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr.i.i162 = getelementptr i8, ptr %50, i32 4
  %51 = ptrtoint ptr %add.ptr.i.i162 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %add.ptr.i.i162, align 2
  br label %if.end83

if.end83:                                         ; preds = %if.then80, %land.lhs.true77.if.end83_crit_edge, %if.end67.if.end83_crit_edge
  %mode.0 = phi i16 [ %52, %if.then80 ], [ 1, %land.lhs.true77.if.end83_crit_edge ], [ 1, %if.end67.if.end83_crit_edge ]
  %call84 = tail call fastcc i32 @ipvlan_set_port_mode(ptr noundef %33, i16 noundef zeroext %mode.0, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.end87, label %unlink_netdev

if.end87:                                         ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #19
  %pnode = getelementptr i8, ptr %dev, i32 2308
  %ipvlans = getelementptr inbounds %struct.ipvl_port, ptr %33, i32 0, i32 3
  tail call fastcc void @list_add_tail_rcu(ptr noundef %pnode, ptr noundef %ipvlans)
  tail call void @netif_stacked_transfer_operstate(ptr noundef %phy_dev.0, ptr noundef %dev) #17
  br label %cleanup91

unlink_netdev:                                    ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @netdev_upper_dev_unlink(ptr noundef %phy_dev.0, ptr noundef %dev) #17
  br label %remove_ida

remove_ida:                                       ; preds = %unlink_netdev, %if.end60.remove_ida_crit_edge
  %err.1 = phi i32 [ %call64, %if.end60.remove_ida_crit_edge ], [ %call84, %unlink_netdev ]
  %53 = ptrtoint ptr %dev_id to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %dev_id, align 2
  %conv90 = zext i16 %54 to i32
  tail call void @ida_free(ptr noundef %ida, i32 noundef %conv90) #17
  br label %unregister_netdev

unregister_netdev:                                ; preds = %remove_ida, %if.end56.unregister_netdev_crit_edge
  %err.2 = phi i32 [ %call55, %if.end56.unregister_netdev_crit_edge ], [ %err.1, %remove_ida ]
  tail call void @unregister_netdevice_queue(ptr noundef %dev, ptr noundef null) #17
  br label %cleanup91

cleanup91:                                        ; preds = %unregister_netdev, %if.end87, %if.end31.cleanup91_crit_edge, %if.then22, %if.then19, %if.then8.cleanup91_crit_edge, %if.end.cleanup91_crit_edge, %entry.cleanup91_crit_edge
  %retval.1 = phi i32 [ %err.2, %unregister_netdev ], [ 0, %if.end87 ], [ -1, %if.then8.cleanup91_crit_edge ], [ -22, %if.then19 ], [ -16, %if.then22 ], [ -22, %entry.cleanup91_crit_edge ], [ -19, %if.end.cleanup91_crit_edge ], [ %call33, %if.end31.cleanup91_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @netdev_is_rx_handler_busy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netdev_upper_dev_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ipvlan_set_port_mode(ptr noundef %port, i16 noundef zeroext %nval, ptr noundef %extack) unnamed_addr #0 align 64 {
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
  %.b164 = load i1, ptr @ipvlan_set_port_mode.__already_done, align 1
  br i1 %.b164, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !111

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @ipvlan_set_port_mode.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 16, i32 noundef 9, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, i32 noundef 16) #17
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %mode = getelementptr inbounds %struct.ipvl_port, ptr %port, i32 0, i32 4
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %mode, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %nval)
  %cmp.not = icmp eq i16 %1, %nval
  br i1 %cmp.not, label %if.end29.cleanup_crit_edge, label %if.then39

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then39:                                        ; preds = %if.end29
  %ipvlans = getelementptr inbounds %struct.ipvl_port, ptr %port, i32 0, i32 3
  %nval.off = add i16 %nval, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %nval.off)
  %switch = icmp ult i16 %nval.off, 2
  %masksel = select i1 %switch, i32 128, i32 0
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.then39
  %.pn.in = phi ptr [ %ipvlans, %if.then39 ], [ %.pn, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp42.not = icmp eq ptr %.pn, %ipvlans
  br i1 %cmp42.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %ipvlan.0 = getelementptr i8, ptr %.pn, i32 -4
  %3 = ptrtoint ptr %ipvlan.0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ipvlan.0, align 8
  %flags46 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 14
  %5 = ptrtoint ptr %flags46 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags46, align 8
  %and = and i32 %6, -129
  %and.sink = or i32 %and, %masksel
  %call57 = tail call i32 @dev_change_flags(ptr noundef %4, i32 noundef %and.sink, ptr noundef %extack) #17
  %tobool59.not = icmp eq i32 %call57, 0
  br i1 %tobool59.not, label %for.body.for.cond_crit_edge, label %for.body.fail_crit_edge, !prof !111

for.body.fail_crit_edge:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %fail

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %nval)
  %cmp74 = icmp eq i16 %nval, 2
  br i1 %cmp74, label %if.then76, label %if.else81

if.then76:                                        ; preds = %for.end
  %call77 = tail call i32 @ipvlan_l3s_register(ptr noundef %port) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.then76.if.end88_crit_edge, label %if.then76.fail_crit_edge

if.then76.fail_crit_edge:                         ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #19
  br label %fail

if.then76.if.end88_crit_edge:                     ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end88

if.else81:                                        ; preds = %for.end
  %7 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %8)
  %cmp84 = icmp eq i16 %8, 2
  br i1 %cmp84, label %if.then86, label %if.else81.if.end88_crit_edge

if.else81.if.end88_crit_edge:                     ; preds = %if.else81
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end88

if.then86:                                        ; preds = %if.else81
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @ipvlan_l3s_unregister(ptr noundef %port) #17
  br label %if.end88

if.end88:                                         ; preds = %if.then86, %if.else81.if.end88_crit_edge, %if.then76.if.end88_crit_edge
  %9 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %nval, ptr %mode, align 4
  br label %cleanup

fail:                                             ; preds = %if.then76.fail_crit_edge, %for.body.fail_crit_edge
  %.pn173 = phi ptr [ %ipvlans, %if.then76.fail_crit_edge ], [ %.pn, %for.body.fail_crit_edge ]
  %err.1 = phi i32 [ %call77, %if.then76.fail_crit_edge ], [ %call57, %for.body.fail_crit_edge ]
  %.pn163.in168 = getelementptr inbounds %struct.list_head, ptr %.pn173, i32 0, i32 1
  %10 = ptrtoint ptr %.pn163.in168 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn163169 = load ptr, ptr %.pn163.in168, align 4
  %cmp98.not170 = icmp eq ptr %.pn163169, %ipvlans
  br i1 %cmp98.not170, label %fail.cleanup_crit_edge, label %fail.for.body102_crit_edge

fail.for.body102_crit_edge:                       ; preds = %fail
  br label %for.body102

fail.cleanup_crit_edge:                           ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body102:                                      ; preds = %for.body102.for.body102_crit_edge, %fail.for.body102_crit_edge
  %.pn163171 = phi ptr [ %.pn163, %for.body102.for.body102_crit_edge ], [ %.pn163169, %fail.for.body102_crit_edge ]
  %ipvlan.1 = getelementptr i8, ptr %.pn163171, i32 -4
  %11 = ptrtoint ptr %ipvlan.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ipvlan.1, align 8
  %flags104 = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 14
  %13 = ptrtoint ptr %flags104 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags104, align 8
  %15 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %mode, align 4
  %.off = add i16 %16, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %.off)
  %switch165 = icmp ult i16 %.off, 2
  %and120 = and i32 %14, -129
  %masksel175 = select i1 %switch165, i32 128, i32 0
  %or116.sink = or i32 %and120, %masksel175
  %call117 = tail call i32 @dev_change_flags(ptr noundef %12, i32 noundef %or116.sink, ptr noundef null) #17
  %.pn163.in = getelementptr inbounds %struct.list_head, ptr %.pn163171, i32 0, i32 1
  %17 = ptrtoint ptr %.pn163.in to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn163 = load ptr, ptr %.pn163.in, align 4
  %cmp98.not = icmp eq ptr %.pn163, %ipvlans
  br i1 %cmp98.not, label %for.body102.cleanup_crit_edge, label %for.body102.for.body102_crit_edge

for.body102.for.body102_crit_edge:                ; preds = %for.body102
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body102

for.body102.cleanup_crit_edge:                    ; preds = %for.body102
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

cleanup:                                          ; preds = %for.body102.cleanup_crit_edge, %fail.cleanup_crit_edge, %if.end88, %if.end29.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end88 ], [ 0, %if.end29.cleanup_crit_edge ], [ %err.1, %fail.cleanup_crit_edge ], [ %err.1, %for.body102.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @list_add_tail_rcu(ptr noundef %new, ptr noundef %head) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %prev = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1
  %0 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev, align 4
  %call.i = tail call zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %1, ptr noundef %head) #17
  br i1 %call.i, label %if.end.i, label %entry.__list_add_rcu.exit_crit_edge

entry.__list_add_rcu.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %__list_add_rcu.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %2 = ptrtoint ptr %new to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %head, ptr %new, align 4
  %prev2.i = getelementptr inbounds %struct.list_head, ptr %new, i32 0, i32 1
  %3 = ptrtoint ptr %prev2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %1, ptr %prev2.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !112
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
declare dso_local void @netif_stacked_transfer_operstate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_upper_dev_unlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipvlan_link_delete(ptr noundef %dev, ptr noundef %head) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %addrs_lock = getelementptr i8, ptr %dev, i32 2380
  tail call void @_raw_spin_lock_bh(ptr noundef %addrs_lock) #17
  %addrs = getelementptr i8, ptr %dev, i32 2324
  %0 = ptrtoint ptr %addrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %addrs, align 4
  %cmp.not41 = icmp eq ptr %1, %addrs
  br i1 %cmp.not41, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in42 = phi ptr [ %.pn44, %if.end.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %.pn.in42 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn44 = load ptr, ptr %.pn.in42, align 4
  %addr.0 = getelementptr i8, ptr %.pn.in42, i32 -28
  tail call void @ipvlan_ht_addr_del(ptr noundef %addr.0) #17
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in42) #17
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del_rcu.exit_crit_edge

for.body.list_del_rcu.exit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in42, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %.pn.in42 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn.in42, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %for.body.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in42, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %tobool.not = icmp eq ptr %addr.0, null
  br i1 %tobool.not, label %list_del_rcu.exit.if.end_crit_edge, label %do.end

list_del_rcu.exit.if.end_crit_edge:               ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

do.end:                                           ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #19
  %rcu = getelementptr i8, ptr %.pn.in42, i32 12
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 40 to ptr)) #17
  br label %if.end

if.end:                                           ; preds = %do.end, %list_del_rcu.exit.if.end_crit_edge
  %cmp.not = icmp eq ptr %.pn44, %addrs
  br i1 %cmp.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %addrs_lock) #17
  %port = getelementptr i8, ptr %dev, i32 2316
  %10 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %port, align 4
  %ida = getelementptr inbounds %struct.ipvl_port, ptr %11, i32 0, i32 10
  %dev_id = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 60
  %12 = ptrtoint ptr %dev_id to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %dev_id, align 2
  %conv = zext i16 %13 to i32
  tail call void @ida_free(ptr noundef %ida, i32 noundef %conv) #17
  %pnode = getelementptr i8, ptr %dev, i32 2308
  %call.i.i34 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pnode) #17
  br i1 %call.i.i34, label %if.end.i.i37, label %for.end.list_del_rcu.exit39_crit_edge

for.end.list_del_rcu.exit39_crit_edge:            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_del_rcu.exit39

if.end.i.i37:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i35 = getelementptr i8, ptr %dev, i32 2312
  %14 = ptrtoint ptr %prev.i.i35 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i35, align 4
  %16 = ptrtoint ptr %pnode to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pnode, align 4
  %prev1.i.i.i36 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i36 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i36, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del_rcu.exit39

list_del_rcu.exit39:                              ; preds = %if.end.i.i37, %for.end.list_del_rcu.exit39_crit_edge
  %prev.i38 = getelementptr i8, ptr %dev, i32 2312
  %20 = ptrtoint ptr %prev.i38 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i38, align 4
  tail call void @unregister_netdevice_queue(ptr noundef %dev, ptr noundef %head) #17
  %phy_dev = getelementptr i8, ptr %dev, i32 2320
  %21 = ptrtoint ptr %phy_dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %phy_dev, align 8
  tail call void @netdev_upper_dev_unlink(ptr noundef %22, ptr noundef %dev) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipvlan_ht_addr_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdevice_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipvlan_link_setup(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ether_setup(ptr noundef %dev) #17
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 31
  %0 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 65535, ptr %max_mtu, align 4
  %priv_flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %1 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %priv_flags, align 16
  %and = and i64 %2, -530465
  %or = or i64 %and, 528384
  store i64 %or, ptr %priv_flags, align 16
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %3 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @ipvlan_netdev_ops, ptr %netdev_ops, align 8
  %needs_free_netdev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 124
  %4 = ptrtoint ptr %needs_free_netdev to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %needs_free_netdev, align 8
  %header_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 49
  %5 = ptrtoint ptr %header_ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @ipvlan_header_ops, ptr %header_ops, align 4
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 44
  %6 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @ipvlan_ethtool_ops, ptr %ethtool_ops, align 16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ether_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipvlan_link_register(ptr noundef %ops) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %get_size = getelementptr inbounds %struct.rtnl_link_ops, ptr %ops, i32 0, i32 12
  %0 = ptrtoint ptr %get_size to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @ipvlan_nl_getsize, ptr %get_size, align 4
  %policy = getelementptr inbounds %struct.rtnl_link_ops, ptr %ops, i32 0, i32 7
  %1 = ptrtoint ptr %policy to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @ipvlan_nl_policy, ptr %policy, align 4
  %validate = getelementptr inbounds %struct.rtnl_link_ops, ptr %ops, i32 0, i32 8
  %2 = ptrtoint ptr %validate to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @ipvlan_nl_validate, ptr %validate, align 4
  %fill_info = getelementptr inbounds %struct.rtnl_link_ops, ptr %ops, i32 0, i32 13
  %3 = ptrtoint ptr %fill_info to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @ipvlan_nl_fillinfo, ptr %fill_info, align 4
  %changelink = getelementptr inbounds %struct.rtnl_link_ops, ptr %ops, i32 0, i32 10
  %4 = ptrtoint ptr %changelink to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @ipvlan_nl_changelink, ptr %changelink, align 4
  %maxtype = getelementptr inbounds %struct.rtnl_link_ops, ptr %ops, i32 0, i32 6
  %5 = ptrtoint ptr %maxtype to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %maxtype, align 4
  %call = tail call i32 @rtnl_link_register(ptr noundef %ops) #17
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ipvlan_nl_getsize(ptr nocapture noundef readnone %dev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ipvlan_nl_validate(ptr nocapture noundef readnone %tb, ptr noundef readonly %data, ptr nocapture noundef readnone %extack) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %data, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr ptr, ptr %data, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.if.end7_crit_edge, label %if.then2

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end7

if.then2:                                         ; preds = %if.end
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %add.ptr.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %3)
  %cmp = icmp ult i16 %3, 3
  br i1 %cmp, label %if.then2.if.end7_crit_edge, label %if.then2.return_crit_edge

if.then2.return_crit_edge:                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.then2.if.end7_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end7

if.end7:                                          ; preds = %if.then2.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %arrayidx8 = getelementptr ptr, ptr %data, i32 2
  %4 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx8, align 4
  %tobool9.not = icmp eq ptr %5, null
  br i1 %tobool9.not, label %if.end7.if.end26_crit_edge, label %if.then10

if.end7.if.end26_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end26

if.then10:                                        ; preds = %if.end7
  %add.ptr.i.i35 = getelementptr i8, ptr %5, i32 4
  %6 = ptrtoint ptr %add.ptr.i.i35 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %add.ptr.i.i35, align 2
  %conv13 = zext i16 %7 to i32
  %and = and i32 %conv13, 65532
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp ne i32 %and, 0
  %and18 = and i32 %conv13, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and18)
  %cmp19.not = icmp eq i32 %and18, 3
  %or.cond = or i1 %tobool14.not, %cmp19.not
  br i1 %or.cond, label %if.then10.return_crit_edge, label %if.then10.if.end26_crit_edge

if.then10.if.end26_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end26

if.then10.return_crit_edge:                       ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.end26:                                         ; preds = %if.then10.if.end26_crit_edge, %if.end7.if.end26_crit_edge
  br label %return

return:                                           ; preds = %if.end26, %if.then10.return_crit_edge, %if.then2.return_crit_edge, %entry.return_crit_edge
  %retval.3 = phi i32 [ -22, %if.then2.return_crit_edge ], [ 0, %if.end26 ], [ 0, %entry.return_crit_edge ], [ -22, %if.then10.return_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipvlan_nl_fillinfo(ptr noundef %skb, ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  %tmp.i16 = alloca i16, align 2
  %tmp.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_dev = getelementptr i8, ptr %dev, i32 2320
  %0 = ptrtoint ptr %phy_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_dev, align 8
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #17
  br i1 %call.i, label %entry.ipvlan_port_get_rtnl.exit_crit_edge, label %land.lhs.true.i

entry.ipvlan_port_get_rtnl.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %ipvlan_port_get_rtnl.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.ipvlan_port_get_rtnl.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.ipvlan_port_get_rtnl.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ipvlan_port_get_rtnl.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @ipvlan_port_get_rtnl.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.ipvlan_port_get_rtnl.exit_crit_edge, label %if.then.i

land.lhs.true2.i.ipvlan_port_get_rtnl.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ipvlan_port_get_rtnl.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @ipvlan_port_get_rtnl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 120, ptr noundef nonnull @.str.4) #17
  br label %ipvlan_port_get_rtnl.exit

ipvlan_port_get_rtnl.exit:                        ; preds = %if.then.i, %land.lhs.true2.i.ipvlan_port_get_rtnl.exit_crit_edge, %land.lhs.true.i.ipvlan_port_get_rtnl.exit_crit_edge, %entry.ipvlan_port_get_rtnl.exit_crit_edge
  %rx_handler_data.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 95
  %2 = ptrtoint ptr %rx_handler_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_handler_data.i, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %ipvlan_port_get_rtnl.exit.err_crit_edge, label %if.end

ipvlan_port_get_rtnl.exit.err_crit_edge:          ; preds = %ipvlan_port_get_rtnl.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %err

if.end:                                           ; preds = %ipvlan_port_get_rtnl.exit
  %mode = getelementptr inbounds %struct.ipvl_port, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %mode, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i) #17
  %6 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %tmp.i, align 2
  %call.i15 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %tmp.i) #17
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15)
  %tobool3.not = icmp eq i32 %call.i15, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.err_crit_edge

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %err

if.end5:                                          ; preds = %if.end
  %flags = getelementptr inbounds %struct.ipvl_port, ptr %3, i32 0, i32 5
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %flags, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i16) #17
  %9 = ptrtoint ptr %tmp.i16 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %tmp.i16, align 2
  %call.i17 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 2, ptr noundef nonnull %tmp.i16) #17
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i16) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17)
  %tobool7.not = icmp eq i32 %call.i17, 0
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %if.end5.err_crit_edge

if.end5.err_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  br label %err

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

err:                                              ; preds = %if.end5.err_crit_edge, %if.end.err_crit_edge, %ipvlan_port_get_rtnl.exit.err_crit_edge
  %ret.0 = phi i32 [ -90, %if.end.err_crit_edge ], [ -90, %if.end5.err_crit_edge ], [ -22, %ipvlan_port_get_rtnl.exit.err_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end5.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipvlan_nl_changelink(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %tb, ptr noundef readonly %data, ptr noundef %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_dev = getelementptr i8, ptr %dev, i32 2320
  %0 = ptrtoint ptr %phy_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_dev, align 8
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #17
  br i1 %call.i, label %entry.ipvlan_port_get_rtnl.exit_crit_edge, label %land.lhs.true.i

entry.ipvlan_port_get_rtnl.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %ipvlan_port_get_rtnl.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.ipvlan_port_get_rtnl.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.ipvlan_port_get_rtnl.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ipvlan_port_get_rtnl.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @ipvlan_port_get_rtnl.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.ipvlan_port_get_rtnl.exit_crit_edge, label %if.then.i

land.lhs.true2.i.ipvlan_port_get_rtnl.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ipvlan_port_get_rtnl.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @ipvlan_port_get_rtnl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 120, ptr noundef nonnull @.str.4) #17
  br label %ipvlan_port_get_rtnl.exit

ipvlan_port_get_rtnl.exit:                        ; preds = %if.then.i, %land.lhs.true2.i.ipvlan_port_get_rtnl.exit_crit_edge, %land.lhs.true.i.ipvlan_port_get_rtnl.exit_crit_edge, %entry.ipvlan_port_get_rtnl.exit_crit_edge
  %rx_handler_data.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 95
  %2 = ptrtoint ptr %rx_handler_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_handler_data.i, align 4
  %tobool.not = icmp eq ptr %data, null
  br i1 %tobool.not, label %ipvlan_port_get_rtnl.exit.cleanup_crit_edge, label %if.end

ipvlan_port_get_rtnl.exit.cleanup_crit_edge:      ; preds = %ipvlan_port_get_rtnl.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %ipvlan_port_get_rtnl.exit
  %4 = ptrtoint ptr %phy_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy_dev, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 127
  %6 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nd_net.i, align 4
  %user_ns = getelementptr inbounds %struct.net, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %user_ns, align 4
  %call4 = tail call zeroext i1 @ns_capable(ptr noundef %9, i32 noundef 12) #17
  br i1 %call4, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %arrayidx = getelementptr ptr, ptr %data, i32 1
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %tobool7.not = icmp eq ptr %11, null
  br i1 %tobool7.not, label %if.end6.land.lhs.true_crit_edge, label %if.end12

if.end6.land.lhs.true_crit_edge:                  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true

if.end12:                                         ; preds = %if.end6
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 4
  %12 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %add.ptr.i.i, align 2
  %call11 = tail call fastcc i32 @ipvlan_set_port_mode(ptr noundef %3, i16 noundef zeroext %13, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool13.not = icmp eq i32 %call11, 0
  br i1 %tobool13.not, label %if.end12.land.lhs.true_crit_edge, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end12.land.lhs.true_crit_edge:                 ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end12.land.lhs.true_crit_edge, %if.end6.land.lhs.true_crit_edge
  %arrayidx14 = getelementptr ptr, ptr %data, i32 2
  %14 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx14, align 4
  %tobool15.not = icmp eq ptr %15, null
  br i1 %tobool15.not, label %land.lhs.true.cleanup_crit_edge, label %if.then16

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then16:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr.i.i43 = getelementptr i8, ptr %15, i32 4
  %16 = ptrtoint ptr %add.ptr.i.i43 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %add.ptr.i.i43, align 2
  %and = and i16 %17, 1
  %flags.i44 = getelementptr inbounds %struct.ipvl_port, ptr %3, i32 0, i32 5
  %18 = ptrtoint ptr %flags.i44 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %flags.i44, align 2
  %20 = and i16 %19, -4
  %.sink = or i16 %20, %and
  %21 = and i16 %17, 2
  %flags.i46 = getelementptr inbounds %struct.ipvl_port, ptr %3, i32 0, i32 5
  %.sink50 = or i16 %.sink, %21
  %22 = ptrtoint ptr %flags.i46 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %.sink50, ptr %flags.i46, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %land.lhs.true.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end.cleanup_crit_edge, %ipvlan_port_get_rtnl.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %ipvlan_port_get_rtnl.exit.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ %call11, %if.end12.cleanup_crit_edge ], [ 0, %if.then16 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_link_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ipvlan_cleanup_module() #7 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @rtnl_link_unregister(ptr noundef nonnull @ipvlan_link_ops) #17
  tail call void @ipvlan_l3s_cleanup() #17
  %call = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @ipvlan_notifier_block) #17
  %call1 = tail call i32 @unregister_inetaddr_notifier(ptr noundef nonnull @ipvlan_addr4_notifier_block) #17
  %call2 = tail call i32 @unregister_inetaddr_validator_notifier(ptr noundef nonnull @ipvlan_addr4_vtor_notifier_block) #17
  %call3 = tail call i32 @unregister_inet6addr_notifier(ptr noundef nonnull @ipvlan_addr6_notifier_block) #17
  %call4 = tail call i32 @unregister_inet6addr_validator_notifier(ptr noundef nonnull @ipvlan_addr6_vtor_notifier_block) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_link_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipvlan_l3s_cleanup() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_inetaddr_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_inetaddr_validator_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_inet6addr_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_inet6addr_validator_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ipvlan_init_module() #7 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ipvlan_init_secret() #17
  %call = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @ipvlan_notifier_block) #17
  %call1 = tail call i32 @register_inet6addr_notifier(ptr noundef nonnull @ipvlan_addr6_notifier_block) #17
  %call2 = tail call i32 @register_inet6addr_validator_notifier(ptr noundef nonnull @ipvlan_addr6_vtor_notifier_block) #17
  %call3 = tail call i32 @register_inetaddr_notifier(ptr noundef nonnull @ipvlan_addr4_notifier_block) #17
  %call4 = tail call i32 @register_inetaddr_validator_notifier(ptr noundef nonnull @ipvlan_addr4_vtor_notifier_block) #17
  %call5 = tail call i32 @ipvlan_l3s_init() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %entry.error_crit_edge, label %if.end

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %error

if.end:                                           ; preds = %entry
  store ptr @ipvlan_nl_getsize, ptr getelementptr inbounds (%struct.rtnl_link_ops, ptr @ipvlan_link_ops, i32 0, i32 12), align 4
  store ptr @ipvlan_nl_policy, ptr getelementptr inbounds (%struct.rtnl_link_ops, ptr @ipvlan_link_ops, i32 0, i32 7), align 4
  store ptr @ipvlan_nl_validate, ptr getelementptr inbounds (%struct.rtnl_link_ops, ptr @ipvlan_link_ops, i32 0, i32 8), align 4
  store ptr @ipvlan_nl_fillinfo, ptr getelementptr inbounds (%struct.rtnl_link_ops, ptr @ipvlan_link_ops, i32 0, i32 13), align 4
  store ptr @ipvlan_nl_changelink, ptr getelementptr inbounds (%struct.rtnl_link_ops, ptr @ipvlan_link_ops, i32 0, i32 10), align 4
  store i32 2, ptr getelementptr inbounds (%struct.rtnl_link_ops, ptr @ipvlan_link_ops, i32 0, i32 6), align 4
  %call.i = tail call i32 @rtnl_link_register(ptr noundef nonnull @ipvlan_link_ops) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp7 = icmp slt i32 %call.i, 0
  br i1 %cmp7, label %if.then8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @ipvlan_l3s_cleanup() #17
  br label %error

error:                                            ; preds = %if.then8, %entry.error_crit_edge
  %err.0 = phi i32 [ %call5, %entry.error_crit_edge ], [ %call.i, %if.then8 ]
  %call10 = tail call i32 @unregister_inetaddr_notifier(ptr noundef nonnull @ipvlan_addr4_notifier_block) #17
  %call11 = tail call i32 @unregister_inetaddr_validator_notifier(ptr noundef nonnull @ipvlan_addr4_vtor_notifier_block) #17
  %call12 = tail call i32 @unregister_inet6addr_notifier(ptr noundef nonnull @ipvlan_addr6_notifier_block) #17
  %call13 = tail call i32 @unregister_inet6addr_validator_notifier(ptr noundef nonnull @ipvlan_addr6_vtor_notifier_block) #17
  %call14 = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @ipvlan_notifier_block) #17
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %error ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipvlan_handle_frame(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_change_flags(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipvlan_l3s_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipvlan_l3s_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipvlan_init(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_dev1 = getelementptr i8, ptr %dev, i32 2320
  %0 = ptrtoint ptr %phy_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_dev1, align 8
  %state = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  %and = and i32 %3, -21
  %state2 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state2, align 4
  %and3 = and i32 %5, 20
  %or = or i32 %and3, %and
  store i32 %or, ptr %state, align 4
  %features = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 23
  %6 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %features, align 16
  %and5 = and i64 %7, 141837000002144
  %features6 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %or8 = or i64 %and5, 27109823497
  %8 = ptrtoint ptr %features6 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %or8, ptr %features6, align 16
  %vlan_features = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 26
  %9 = ptrtoint ptr %vlan_features to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %vlan_features, align 8
  %and9 = and i64 %10, 141837000002144
  %vlan_features10 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 26
  %or12 = or i64 %and9, 27109818377
  %11 = ptrtoint ptr %vlan_features10 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %or12, ptr %vlan_features10, align 8
  %hw_enc_features = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 27
  %12 = ptrtoint ptr %hw_enc_features to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %hw_enc_features, align 16
  %or14 = or i64 %13, %or8
  store i64 %or14, ptr %hw_enc_features, align 16
  %gso_max_size = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 137
  %14 = ptrtoint ptr %gso_max_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %gso_max_size, align 8
  %gso_max_size.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 137
  %16 = ptrtoint ptr %gso_max_size.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 %15, ptr %gso_max_size.i, align 8
  %gso_max_segs = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 138
  %17 = ptrtoint ptr %gso_max_segs to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %gso_max_segs, align 4
  %gso_max_segs.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 138
  %19 = ptrtoint ptr %gso_max_segs.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store volatile i16 %18, ptr %gso_max_segs.i, align 4
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 19
  %20 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %hard_header_len, align 2
  %hard_header_len15 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 19
  %22 = ptrtoint ptr %hard_header_len15 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %hard_header_len15, align 2
  %qdisc_tx_busylock = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 147
  %23 = ptrtoint ptr %qdisc_tx_busylock to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @ipvlan_init.qdisc_tx_busylock_key, ptr %qdisc_tx_busylock, align 8
  %dep_map = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 63, i32 0, i32 0, i32 4
  %wait_type_inner = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 63, i32 0, i32 0, i32 4, i32 4
  %24 = ptrtoint ptr %wait_type_inner to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %wait_type_inner, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map, ptr noundef nonnull @.str.7, ptr noundef nonnull @ipvlan_init.dev_addr_list_lock_key, i32 noundef 0, i8 noundef zeroext %25, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  %num_tx_queues = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 104
  %26 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_tx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp111.not = icmp eq i32 %27, 0
  br i1 %cmp111.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %_tx = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0112 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %28 = ptrtoint ptr %_tx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %_tx, align 128
  %dep_map21 = getelementptr %struct.netdev_queue, ptr %29, i32 %i.0112, i32 10, i32 0, i32 0, i32 4
  %wait_type_inner26 = getelementptr %struct.netdev_queue, ptr %29, i32 %i.0112, i32 10, i32 0, i32 0, i32 4, i32 4
  %30 = ptrtoint ptr %wait_type_inner26 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %wait_type_inner26, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map21, ptr noundef nonnull @.str.8, ptr noundef nonnull @ipvlan_init.qdisc_xmit_lock_key, i32 noundef 0, i8 noundef zeroext %31, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  %inc = add nuw i32 %i.0112, 1
  %32 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_tx_queues, align 4
  %cmp = icmp ult i32 %inc, %33
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %call32 = tail call noalias ptr @__alloc_percpu_gfp(i32 noundef 80, i32 noundef 8, i32 noundef 3264) #21
  %tobool.not = icmp eq ptr %call32, null
  br i1 %tobool.not, label %if.end.thread, label %for.cond33.preheader

for.cond33.preheader:                             ; preds = %for.end
  %call34113 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %34 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call34113, i32 %34)
  %cmp35114 = icmp ult i32 %call34113, %34
  br i1 %cmp35114, label %for.body37.lr.ph, label %for.cond33.preheader.if.end49_crit_edge

for.cond33.preheader.if.end49_crit_edge:          ; preds = %for.cond33.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end49

for.body37.lr.ph:                                 ; preds = %for.cond33.preheader
  %35 = ptrtoint ptr %call32 to i32
  br label %for.body37

if.end.thread:                                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  %pcpu_stats45104 = getelementptr i8, ptr %dev, i32 2332
  %36 = ptrtoint ptr %pcpu_stats45104 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %pcpu_stats45104, align 4
  br label %cleanup

for.body37:                                       ; preds = %for.body37.for.body37_crit_edge, %for.body37.lr.ph
  %call34115 = phi i32 [ %call34113, %for.body37.lr.ph ], [ %call34, %for.body37.for.body37_crit_edge ]
  %arrayidx39 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call34115
  %37 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx39, align 4
  %add = add i32 %38, %35
  %39 = inttoptr i32 %add to ptr
  %syncp = getelementptr inbounds %struct.ipvl_pcpu_stats, ptr %39, i32 0, i32 5
  %dep_map.i = getelementptr inbounds %struct.ipvl_pcpu_stats, ptr %39, i32 0, i32 5, i32 0, i32 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef nonnull @.str.9, ptr noundef nonnull @ipvlan_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  %40 = ptrtoint ptr %syncp to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %syncp, align 4
  %call34 = tail call i32 @cpumask_next(i32 noundef %call34115, ptr noundef nonnull @__cpu_possible_mask) #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %41 = load i32, ptr @nr_cpu_ids, align 4
  %cmp35 = icmp ult i32 %call34, %41
  br i1 %cmp35, label %for.body37.for.body37_crit_edge, label %for.body37.if.end49_crit_edge

for.body37.if.end49_crit_edge:                    ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end49

for.body37.for.body37_crit_edge:                  ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body37

if.end49:                                         ; preds = %for.body37.if.end49_crit_edge, %for.cond33.preheader.if.end49_crit_edge
  %pcpu_stats45 = getelementptr i8, ptr %dev, i32 2332
  %42 = ptrtoint ptr %pcpu_stats45 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call32, ptr %pcpu_stats45, align 4
  %rx_handler.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 94
  %43 = ptrtoint ptr %rx_handler.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %rx_handler.i, align 32
  %cmp.i = icmp eq ptr %44, @ipvlan_handle_frame
  br i1 %cmp.i, label %if.end49.if.end58_crit_edge, label %if.then51

if.end49.if.end58_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end58

if.then51:                                        ; preds = %if.end49
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %45 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %45, i32 noundef 3520, i32 noundef 1204) #23
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then51.if.then55_crit_edge, label %if.end.i

if.then51.if.then55_crit_edge:                    ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then55

if.end.i:                                         ; preds = %if.then51
  %pnet.i = getelementptr inbounds %struct.ipvl_port, ptr %call7.i.i.i, i32 0, i32 1
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 127
  %46 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %nd_net.i.i, align 4
  %48 = ptrtoint ptr %pnet.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %pnet.i, align 4
  %49 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %1, ptr %call7.i.i.i, align 8
  %mode.i = getelementptr inbounds %struct.ipvl_port, ptr %call7.i.i.i, i32 0, i32 4
  %50 = ptrtoint ptr %mode.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 1, ptr %mode.i, align 8
  %ipvlans.i = getelementptr inbounds %struct.ipvl_port, ptr %call7.i.i.i, i32 0, i32 3
  %51 = ptrtoint ptr %ipvlans.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %ipvlans.i, ptr %ipvlans.i, align 8
  %prev.i.i = getelementptr inbounds %struct.ipvl_port, ptr %call7.i.i.i, i32 0, i32 3, i32 1
  %52 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %ipvlans.i, ptr %prev.i.i, align 4
  %uglygep.i = getelementptr i8, ptr %call7.i.i.i, i32 8
  %53 = call ptr @memset(ptr %uglygep.i, i32 0, i32 1024)
  %backlog.i = getelementptr inbounds %struct.ipvl_port, ptr %call7.i.i.i, i32 0, i32 8
  %lock.i.i = getelementptr inbounds %struct.ipvl_port, ptr %call7.i.i.i, i32 0, i32 8, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #17
  %54 = ptrtoint ptr %backlog.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %backlog.i, ptr %backlog.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.ipvl_port, ptr %call7.i.i.i, i32 0, i32 8, i32 0, i32 0, i32 1
  %55 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %backlog.i, ptr %prev.i.i.i, align 8
  %qlen.i.i.i = getelementptr inbounds %struct.ipvl_port, ptr %call7.i.i.i, i32 0, i32 8, i32 1
  %56 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %qlen.i.i.i, align 4
  %wq.i = getelementptr inbounds %struct.ipvl_port, ptr %call7.i.i.i, i32 0, i32 7
  tail call void @__init_work(ptr noundef %wq.i, i32 noundef 0) #17
  %57 = ptrtoint ptr %wq.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 -64, ptr %wq.i, align 8
  %lockdep_map.i = getelementptr inbounds %struct.ipvl_port, ptr %call7.i.i.i, i32 0, i32 7, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @ipvlan_port_create.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  %entry6.i = getelementptr inbounds %struct.ipvl_port, ptr %call7.i.i.i, i32 0, i32 7, i32 1
  %58 = ptrtoint ptr %entry6.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %entry6.i, ptr %entry6.i, align 4
  %prev.i35.i = getelementptr inbounds %struct.ipvl_port, ptr %call7.i.i.i, i32 0, i32 7, i32 1, i32 1
  %59 = ptrtoint ptr %prev.i35.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %entry6.i, ptr %prev.i35.i, align 8
  %func.i = getelementptr inbounds %struct.ipvl_port, ptr %call7.i.i.i, i32 0, i32 7, i32 2
  %60 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @ipvlan_process_multicast, ptr %func.i, align 4
  %ida.i = getelementptr inbounds %struct.ipvl_port, ptr %call7.i.i.i, i32 0, i32 10
  tail call void @__raw_spin_lock_init(ptr noundef %ida.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #17
  %xa_flags.i.i.i = getelementptr inbounds %struct.ipvl_port, ptr %call7.i.i.i, i32 0, i32 10, i32 0, i32 1
  %61 = ptrtoint ptr %xa_flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 67108869, ptr %xa_flags.i.i.i, align 4
  %xa_head.i.i.i = getelementptr inbounds %struct.ipvl_port, ptr %call7.i.i.i, i32 0, i32 10, i32 0, i32 2
  %62 = ptrtoint ptr %xa_head.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %xa_head.i.i.i, align 8
  %dev_id_start.i = getelementptr inbounds %struct.ipvl_port, ptr %call7.i.i.i, i32 0, i32 6
  %63 = ptrtoint ptr %dev_id_start.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 1, ptr %dev_id_start.i, align 4
  %call8.i = tail call i32 @netdev_rx_handler_register(ptr noundef %1, ptr noundef nonnull @ipvlan_handle_frame, ptr noundef nonnull %call7.i.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end.i.if.end58_crit_edge, label %ipvlan_port_create.exit

if.end.i.if.end58_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end58

ipvlan_port_create.exit:                          ; preds = %if.end.i
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp53 = icmp slt i32 %call8.i, 0
  br i1 %cmp53, label %ipvlan_port_create.exit.if.then55_crit_edge, label %ipvlan_port_create.exit.if.end58_crit_edge

ipvlan_port_create.exit.if.end58_crit_edge:       ; preds = %ipvlan_port_create.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end58

ipvlan_port_create.exit.if.then55_crit_edge:      ; preds = %ipvlan_port_create.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then55

if.then55:                                        ; preds = %ipvlan_port_create.exit.if.then55_crit_edge, %if.then51.if.then55_crit_edge
  %retval.0.i107 = phi i32 [ %call8.i, %ipvlan_port_create.exit.if.then55_crit_edge ], [ -12, %if.then51.if.then55_crit_edge ]
  %64 = ptrtoint ptr %pcpu_stats45 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pcpu_stats45, align 4
  tail call void @free_percpu(ptr noundef %65) #17
  br label %cleanup

if.end58:                                         ; preds = %ipvlan_port_create.exit.if.end58_crit_edge, %if.end.i.if.end58_crit_edge, %if.end49.if.end58_crit_edge
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #17
  br i1 %call.i, label %if.end58.ipvlan_port_get_rtnl.exit_crit_edge, label %land.lhs.true.i

if.end58.ipvlan_port_get_rtnl.exit_crit_edge:     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #19
  br label %ipvlan_port_get_rtnl.exit

land.lhs.true.i:                                  ; preds = %if.end58
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i103 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i103, label %land.lhs.true.i.ipvlan_port_get_rtnl.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.ipvlan_port_get_rtnl.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ipvlan_port_get_rtnl.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @ipvlan_port_get_rtnl.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.ipvlan_port_get_rtnl.exit_crit_edge, label %if.then.i

land.lhs.true2.i.ipvlan_port_get_rtnl.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ipvlan_port_get_rtnl.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @ipvlan_port_get_rtnl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 120, ptr noundef nonnull @.str.4) #17
  br label %ipvlan_port_get_rtnl.exit

ipvlan_port_get_rtnl.exit:                        ; preds = %if.then.i, %land.lhs.true2.i.ipvlan_port_get_rtnl.exit_crit_edge, %land.lhs.true.i.ipvlan_port_get_rtnl.exit_crit_edge, %if.end58.ipvlan_port_get_rtnl.exit_crit_edge
  %rx_handler_data.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 95
  %66 = ptrtoint ptr %rx_handler_data.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %rx_handler_data.i, align 4
  %count = getelementptr inbounds %struct.ipvl_port, ptr %67, i32 0, i32 9
  %68 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %count, align 4
  %add60 = add i32 %69, 1
  store i32 %add60, ptr %count, align 4
  br label %cleanup

cleanup:                                          ; preds = %ipvlan_port_get_rtnl.exit, %if.then55, %if.end.thread
  %retval.0 = phi i32 [ 0, %ipvlan_port_get_rtnl.exit ], [ %retval.0.i107, %if.then55 ], [ -12, %if.end.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipvlan_uninit(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_dev1 = getelementptr i8, ptr %dev, i32 2320
  %0 = ptrtoint ptr %phy_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_dev1, align 8
  %pcpu_stats = getelementptr i8, ptr %dev, i32 2332
  %2 = ptrtoint ptr %pcpu_stats to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcpu_stats, align 4
  tail call void @free_percpu(ptr noundef %3) #17
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #17
  br i1 %call.i, label %entry.ipvlan_port_get_rtnl.exit_crit_edge, label %land.lhs.true.i

entry.ipvlan_port_get_rtnl.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %ipvlan_port_get_rtnl.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.ipvlan_port_get_rtnl.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.ipvlan_port_get_rtnl.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ipvlan_port_get_rtnl.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @ipvlan_port_get_rtnl.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.ipvlan_port_get_rtnl.exit_crit_edge, label %if.then.i

land.lhs.true2.i.ipvlan_port_get_rtnl.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ipvlan_port_get_rtnl.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @ipvlan_port_get_rtnl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 120, ptr noundef nonnull @.str.4) #17
  br label %ipvlan_port_get_rtnl.exit

ipvlan_port_get_rtnl.exit:                        ; preds = %if.then.i, %land.lhs.true2.i.ipvlan_port_get_rtnl.exit_crit_edge, %land.lhs.true.i.ipvlan_port_get_rtnl.exit_crit_edge, %entry.ipvlan_port_get_rtnl.exit_crit_edge
  %rx_handler_data.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 95
  %4 = ptrtoint ptr %rx_handler_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_handler_data.i, align 4
  %count = getelementptr inbounds %struct.ipvl_port, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count, align 4
  %sub = add i32 %7, -1
  store i32 %sub, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %if.then, label %ipvlan_port_get_rtnl.exit.if.end_crit_edge

ipvlan_port_get_rtnl.exit.if.end_crit_edge:       ; preds = %ipvlan_port_get_rtnl.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %ipvlan_port_get_rtnl.exit
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %call.i.i = tail call zeroext i1 @lockdep_rtnl_is_held() #17
  br i1 %call.i.i, label %if.then.ipvlan_port_get_rtnl.exit.i_crit_edge, label %land.lhs.true.i.i

if.then.ipvlan_port_get_rtnl.exit.i_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %ipvlan_port_get_rtnl.exit.i

land.lhs.true.i.i:                                ; preds = %if.then
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.ipvlan_port_get_rtnl.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.ipvlan_port_get_rtnl.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ipvlan_port_get_rtnl.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @ipvlan_port_get_rtnl.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.ipvlan_port_get_rtnl.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.ipvlan_port_get_rtnl.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ipvlan_port_get_rtnl.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @ipvlan_port_get_rtnl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 120, ptr noundef nonnull @.str.4) #17
  br label %ipvlan_port_get_rtnl.exit.i

ipvlan_port_get_rtnl.exit.i:                      ; preds = %if.then.i.i, %land.lhs.true2.i.i.ipvlan_port_get_rtnl.exit.i_crit_edge, %land.lhs.true.i.i.ipvlan_port_get_rtnl.exit.i_crit_edge, %if.then.ipvlan_port_get_rtnl.exit.i_crit_edge
  %rx_handler_data.i.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 95
  %10 = ptrtoint ptr %rx_handler_data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx_handler_data.i.i, align 4
  %mode.i = getelementptr inbounds %struct.ipvl_port, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %mode.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %13)
  %cmp.i = icmp eq i16 %13, 2
  br i1 %cmp.i, label %if.then.i8, label %ipvlan_port_get_rtnl.exit.i.if.end.i_crit_edge

ipvlan_port_get_rtnl.exit.i.if.end.i_crit_edge:   ; preds = %ipvlan_port_get_rtnl.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

if.then.i8:                                       ; preds = %ipvlan_port_get_rtnl.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @ipvlan_l3s_unregister(ptr noundef %11) #17
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i8, %ipvlan_port_get_rtnl.exit.i.if.end.i_crit_edge
  tail call void @netdev_rx_handler_unregister(ptr noundef %9) #17
  %wq.i = getelementptr inbounds %struct.ipvl_port, ptr %11, i32 0, i32 7
  %call2.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %wq.i) #17
  %backlog.i = getelementptr inbounds %struct.ipvl_port, ptr %11, i32 0, i32 8
  %14 = ptrtoint ptr %backlog.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %backlog.i, align 4
  %cmp.i.i17.i = icmp eq ptr %15, %backlog.i
  %tobool.not.i131618.i = icmp eq ptr %15, null
  %tobool.not.i1319.i = or i1 %cmp.i.i17.i, %tobool.not.i131618.i
  br i1 %tobool.not.i1319.i, label %if.end.i.ipvlan_port_destroy.exit_crit_edge, label %while.body.lr.ph.i

if.end.i.ipvlan_port_destroy.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ipvlan_port_destroy.exit

while.body.lr.ph.i:                               ; preds = %if.end.i
  %qlen.i.i.i = getelementptr inbounds %struct.ipvl_port, ptr %11, i32 0, i32 8, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %dev_put.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %16 = phi ptr [ %15, %while.body.lr.ph.i ], [ %43, %dev_put.exit.i.while.body.i_crit_edge ]
  %17 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %qlen.i.i.i, align 4
  %sub.i.i.i = add i32 %18, -1
  store volatile i32 %sub.i.i.i, ptr %qlen.i.i.i, align 4
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %16, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon.83, ptr %16, i32 0, i32 1
  %21 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %16, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon.83, ptr %20, i32 0, i32 1
  %23 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %22, ptr %prev17.i.i.i, align 4
  %24 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %20, ptr %22, align 8
  %25 = getelementptr inbounds %struct.anon.83, ptr %16, i32 0, i32 2
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 8
  %tobool.not.i15.i = icmp eq ptr %27, null
  br i1 %tobool.not.i15.i, label %while.body.i.dev_put.exit.i_crit_edge, label %do.body1.i.i

while.body.i.dev_put.exit.i_crit_edge:            ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %dev_put.exit.i

do.body1.i.i:                                     ; preds = %while.body.i
  %28 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !113
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %27, i32 0, i32 118
  %29 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %31 = ptrtoint ptr %30 to i32
  %32 = tail call i32 @llvm.read_register.i32(metadata !101) #17
  %and.i.i.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %35
  %36 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %37, %31
  %38 = inttoptr i32 %add.i.i to ptr
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 4
  %add13.i.i = add i32 %40, -1
  store i32 %add13.i.i, ptr %38, align 4
  %41 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #17, !srcloc !114
  %and.i.i.i.i = and i32 %41, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.do.end30.i.i_crit_edge, !prof !115

do.body1.i.i.do.end30.i.i_crit_edge:              ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end30.i.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @warn_bogus_irq_restore() #17
  br label %do.end30.i.i

do.end30.i.i:                                     ; preds = %if.then28.i.i, %do.body1.i.i.do.end30.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %28) #17, !srcloc !116
  br label %dev_put.exit.i

dev_put.exit.i:                                   ; preds = %do.end30.i.i, %while.body.i.dev_put.exit.i_crit_edge
  tail call void @kfree_skb_reason(ptr noundef nonnull %16, i32 noundef 0) #17
  %42 = ptrtoint ptr %backlog.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %backlog.i, align 4
  %cmp.i.i.i = icmp eq ptr %43, %backlog.i
  %tobool.not.i1316.i = icmp eq ptr %43, null
  %tobool.not.i13.i = or i1 %cmp.i.i.i, %tobool.not.i1316.i
  br i1 %tobool.not.i13.i, label %dev_put.exit.i.ipvlan_port_destroy.exit_crit_edge, label %dev_put.exit.i.while.body.i_crit_edge

dev_put.exit.i.while.body.i_crit_edge:            ; preds = %dev_put.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i

dev_put.exit.i.ipvlan_port_destroy.exit_crit_edge: ; preds = %dev_put.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ipvlan_port_destroy.exit

ipvlan_port_destroy.exit:                         ; preds = %dev_put.exit.i.ipvlan_port_destroy.exit_crit_edge, %if.end.i.ipvlan_port_destroy.exit_crit_edge
  %ida.i = getelementptr inbounds %struct.ipvl_port, ptr %11, i32 0, i32 10
  tail call void @ida_destroy(ptr noundef %ida.i) #17
  tail call void @kfree(ptr noundef %11) #17
  br label %if.end

if.end:                                           ; preds = %ipvlan_port_destroy.exit, %ipvlan_port_get_rtnl.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipvlan_open(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %port = getelementptr i8, ptr %dev, i32 2316
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  %mode = getelementptr inbounds %struct.ipvl_port, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mode, align 4
  %.off = add i16 %3, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %.off)
  %switch = icmp ult i16 %.off, 2
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 8
  %and = and i32 %5, -129
  %masksel = select i1 %switch, i32 128, i32 0
  %and.sink = or i32 %and, %masksel
  store i32 %and.sink, ptr %flags, align 8
  %6 = tail call i32 @llvm.read_register.i32(metadata !101) #17
  %and.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %9, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !117
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #17
  %call.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #17
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 696, ptr noundef nonnull @.str.15) #17
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call8 = tail call i32 @rcu_read_lock_any_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call9 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true11

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

land.lhs.true11:                                  ; preds = %land.lhs.true
  %.b39 = load i1, ptr @ipvlan_open.__warned, align 1
  br i1 %.b39, label %land.lhs.true11.do.end_crit_edge, label %if.then13

land.lhs.true11.do.end_crit_edge:                 ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

if.then13:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @ipvlan_open.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 190, ptr noundef nonnull @.str.13) #17
  br label %do.end

do.end:                                           ; preds = %if.then13, %land.lhs.true11.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %addrs = getelementptr i8, ptr %dev, i32 2324
  %10 = ptrtoint ptr %addrs to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn49 = load volatile ptr, ptr %addrs, align 4
  %cmp20.not50 = icmp eq ptr %.pn49, %addrs
  br i1 %cmp20.not50, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn51 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn49, %do.end.for.body_crit_edge ]
  %addr.0 = getelementptr i8, ptr %.pn51, i32 -28
  tail call void @ipvlan_ht_addr_add(ptr noundef %add.ptr.i, ptr noundef %addr.0) #17
  %11 = ptrtoint ptr %.pn51 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn = load volatile ptr, ptr %.pn51, align 4
  %cmp20.not = icmp eq ptr %.pn, %addrs
  br i1 %cmp20.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end.for.end_crit_edge
  %call.i40 = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i40, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i43

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

land.lhs.true.i43:                                ; preds = %for.end
  %call1.i41 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i41)
  %tobool.not.i42 = icmp eq i32 %call1.i41, 0
  br i1 %tobool.not.i42, label %land.lhs.true.i43.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i45

land.lhs.true.i43.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i43
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

land.lhs.true2.i45:                               ; preds = %land.lhs.true.i43
  %.b4.i44 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i44, label %land.lhs.true2.i45.rcu_read_unlock.exit_crit_edge, label %if.then.i46

land.lhs.true2.i45.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i45
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

if.then.i46:                                      ; preds = %land.lhs.true2.i45
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 724, ptr noundef nonnull @.str.16) #17
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i46, %land.lhs.true2.i45.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i43.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !118
  %12 = tail call i32 @llvm.read_register.i32(metadata !101) #17
  %and.i.i.i.i.i47 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i47 to ptr
  %preempt_count.i.i.i.i48 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i48 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i48, align 4
  %sub.i.i.i = add i32 %15, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i48, align 4
  tail call void @rcu_read_unlock_strict() #17
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipvlan_stop(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_dev1 = getelementptr i8, ptr %dev, i32 2320
  %0 = ptrtoint ptr %phy_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_dev1, align 8
  tail call void @dev_uc_unsync(ptr noundef %1, ptr noundef %dev) #17
  tail call void @dev_mc_unsync(ptr noundef %1, ptr noundef %dev) #17
  %2 = tail call i32 @llvm.read_register.i32(metadata !101) #17
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !117
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #17
  %call.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #17
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 696, ptr noundef nonnull @.str.15) #17
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call2 = tail call i32 @rcu_read_lock_any_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true5

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b28 = load i1, ptr @ipvlan_stop.__warned, align 1
  br i1 %.b28, label %land.lhs.true5.do.end_crit_edge, label %if.then

land.lhs.true5.do.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @ipvlan_stop.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 207, ptr noundef nonnull @.str.13) #17
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true5.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %addrs = getelementptr i8, ptr %dev, i32 2324
  %6 = ptrtoint ptr %addrs to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn38 = load volatile ptr, ptr %addrs, align 4
  %cmp.not39 = icmp eq ptr %.pn38, %addrs
  br i1 %cmp.not39, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn40 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn38, %do.end.for.body_crit_edge ]
  %addr.0 = getelementptr i8, ptr %.pn40, i32 -28
  tail call void @ipvlan_ht_addr_del(ptr noundef %addr.0) #17
  %7 = ptrtoint ptr %.pn40 to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn = load volatile ptr, ptr %.pn40, align 4
  %cmp.not = icmp eq ptr %.pn, %addrs
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end.for.end_crit_edge
  %call.i29 = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i29, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i32

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

land.lhs.true.i32:                                ; preds = %for.end
  %call1.i30 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i30)
  %tobool.not.i31 = icmp eq i32 %call1.i30, 0
  br i1 %tobool.not.i31, label %land.lhs.true.i32.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i34

land.lhs.true.i32.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i32
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

land.lhs.true2.i34:                               ; preds = %land.lhs.true.i32
  %.b4.i33 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i33, label %land.lhs.true2.i34.rcu_read_unlock.exit_crit_edge, label %if.then.i35

land.lhs.true2.i34.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i34
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

if.then.i35:                                      ; preds = %land.lhs.true2.i34
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 724, ptr noundef nonnull @.str.16) #17
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i35, %land.lhs.true2.i34.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i32.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !118
  %8 = tail call i32 @llvm.read_register.i32(metadata !101) #17
  %and.i.i.i.i.i36 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i36 to ptr
  %preempt_count.i.i.i.i37 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i37 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i37, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i37, align 4
  tail call void @rcu_read_unlock_strict() #17
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipvlan_start_xmit(ptr noundef %skb, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %call1 = tail call i32 @ipvlan_queue_xmit(ptr noundef %skb, ptr noundef %dev) #17
  %2 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call1, label %do.body9 [
    i32 2, label %entry.if.then_crit_edge
    i32 0, label %entry.if.then_crit_edge73
  ]

entry.if.then_crit_edge73:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge73
  %pcpu_stats = getelementptr i8, ptr %dev, i32 2332
  %3 = ptrtoint ptr %pcpu_stats to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pcpu_stats, align 4
  %5 = ptrtoint ptr %4 to i32
  %6 = tail call i32 @llvm.read_register.i32(metadata !101) #17
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %add = add i32 %11, %5
  %12 = inttoptr i32 %add to ptr
  %syncp = getelementptr inbounds %struct.ipvl_pcpu_stats, ptr %12, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %13 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i.i, label %if.then.u64_stats_update_begin.exit_crit_edge, label %land.lhs.true.i.i

if.then.u64_stats_update_begin.exit_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %u64_stats_update_begin.exit

land.lhs.true.i.i:                                ; preds = %if.then
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %15, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !119
  %16 = tail call i32 @llvm.read_register.i32(metadata !101) #17
  %and.i.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %21, ptrtoint (ptr @lockdep_recursion to i32)
  %22 = inttoptr i32 %add.i.i to ptr
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %22, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !120
  %25 = tail call i32 @llvm.read_register.i32(metadata !101) #17
  %and.i.i.i7.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i7.i.i to ptr
  %preempt_count.i.i8.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %preempt_count.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %preempt_count.i.i8.i.i, align 4
  %sub.i.i.i = add i32 %28, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool20.not.i.i = icmp eq i32 %24, 0
  br i1 %tobool20.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.u64_stats_update_begin.exit_crit_edge

land.lhs.true.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %u64_stats_update_begin.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %29 = tail call i32 @llvm.read_register.i32(metadata !101) #17
  %and.i.i.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.i.i = icmp eq i32 %32, 0
  br i1 %cmp.i.i, label %land.rhs22.i.i, label %land.rhs.i.i.u64_stats_update_begin.exit_crit_edge

land.rhs.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %u64_stats_update_begin.exit

land.rhs22.i.i:                                   ; preds = %land.rhs.i.i
  %33 = tail call i32 @llvm.read_register.i32(metadata !101) #17
  %and.i.i.i9.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i9.i.i to ptr
  %preempt_count.i.i10.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i10.i.i, align 4
  %add.i11.i.i = add i32 %36, 1
  store volatile i32 %add.i11.i.i, ptr %preempt_count.i.i10.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !121
  %37 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cpu.i.i, align 4
  %arrayidx46.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %38
  %39 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx46.i.i, align 4
  %add47.i.i = add i32 %40, ptrtoint (ptr @hardirqs_enabled to i32)
  %41 = inttoptr i32 %add47.i.i to ptr
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %41, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !122
  %44 = tail call i32 @llvm.read_register.i32(metadata !101) #17
  %and.i.i.i12.i.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i12.i.i to ptr
  %preempt_count.i.i13.i.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %preempt_count.i.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %preempt_count.i.i13.i.i, align 4
  %sub.i14.i.i = add i32 %47, -1
  store volatile i32 %sub.i14.i.i, ptr %preempt_count.i.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool54.not.i.i = icmp eq i32 %43, 0
  br i1 %tobool54.not.i.i, label %land.rhs22.i.i.u64_stats_update_begin.exit_crit_edge, label %land.rhs58.i.i

land.rhs22.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.rhs22.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %u64_stats_update_begin.exit

land.rhs58.i.i:                                   ; preds = %land.rhs22.i.i
  %.b1.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs58.i.i.u64_stats_update_begin.exit_crit_edge, label %if.then.i.i, !prof !111

land.rhs58.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %u64_stats_update_begin.exit

if.then.i.i:                                      ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 271, i32 noundef 9, ptr noundef null) #17
  br label %u64_stats_update_begin.exit

u64_stats_update_begin.exit:                      ; preds = %if.then.i.i, %land.rhs58.i.i.u64_stats_update_begin.exit_crit_edge, %land.rhs22.i.i.u64_stats_update_begin.exit_crit_edge, %land.rhs.i.i.u64_stats_update_begin.exit_crit_edge, %land.lhs.true.i.i.u64_stats_update_begin.exit_crit_edge, %if.then.u64_stats_update_begin.exit_crit_edge
  %48 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %syncp, align 4
  %inc.i.i.i.i = add i32 %49, 1
  store i32 %inc.i.i.i.i, ptr %syncp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !123
  %dep_map.i.i.i = getelementptr inbounds %struct.ipvl_pcpu_stats, ptr %12, i32 0, i32 5, i32 0, i32 1
  %50 = tail call ptr @llvm.returnaddress(i32 0) #17
  %51 = ptrtoint ptr %50 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %51) #17
  %tx_pkts = getelementptr inbounds %struct.ipvl_pcpu_stats, ptr %12, i32 0, i32 3
  %52 = ptrtoint ptr %tx_pkts to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %tx_pkts, align 8
  %inc = add i64 %53, 1
  store i64 %inc, ptr %tx_pkts, align 8
  %conv = sext i32 %1 to i64
  %tx_bytes = getelementptr inbounds %struct.ipvl_pcpu_stats, ptr %12, i32 0, i32 4
  %54 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %tx_bytes, align 8
  %add6 = add i64 %55, %conv
  store i64 %add6, ptr %tx_bytes, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %51) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !124
  %56 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %57, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  br label %if.end63

do.body9:                                         ; preds = %entry
  %58 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !113
  %pcpu_stats28 = getelementptr i8, ptr %dev, i32 2332
  %59 = ptrtoint ptr %pcpu_stats28 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pcpu_stats28, align 4
  %tx_drps = getelementptr inbounds %struct.ipvl_pcpu_stats, ptr %60, i32 0, i32 7
  %61 = ptrtoint ptr %tx_drps to i32
  %62 = tail call i32 @llvm.read_register.i32(metadata !101) #17
  %and.i72 = and i32 %62, -16384
  %63 = inttoptr i32 %and.i72 to ptr
  %cpu31 = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %cpu31 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %cpu31, align 4
  %arrayidx32 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %65
  %66 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx32, align 4
  %add33 = add i32 %67, %61
  %68 = inttoptr i32 %add33 to ptr
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %68, align 4
  %add34 = add i32 %70, 1
  store i32 %add34, ptr %68, align 4
  %71 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #17, !srcloc !114
  %and.i.i = and i32 %71, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool45.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool45.not, label %if.then54, label %do.body9.do.end56_crit_edge, !prof !115

do.body9.do.end56_crit_edge:                      ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end56

if.then54:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @warn_bogus_irq_restore() #17
  br label %do.end56

do.end56:                                         ; preds = %if.then54, %do.body9.do.end56_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %58) #17, !srcloc !116
  br label %if.end63

if.end63:                                         ; preds = %do.end56, %u64_stats_update_begin.exit
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipvlan_change_rx_flags(ptr nocapture noundef readonly %dev, i32 noundef %change) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %change, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %phy_dev1 = getelementptr i8, ptr %dev, i32 2320
  %0 = ptrtoint ptr %phy_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_dev1, align 8
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %and2 = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %cond = select i1 %tobool3.not, i32 -1, i32 1
  %call4 = tail call i32 @dev_set_allmulti(ptr noundef %1, i32 noundef %cond) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipvlan_set_multicast_mac_filter(ptr noundef %dev) #0 align 64 {
entry:
  %mc_filters = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %mac_filters = getelementptr i8, ptr %dev, i32 2336
  %2 = call ptr @memset(ptr %mac_filters, i32 255, i32 32)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mc_filters) #17
  %3 = call ptr @memset(ptr %mc_filters, i32 0, i32 32)
  %mc = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66
  %4 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %4)
  %ha.039 = load ptr, ptr %mc, align 4
  %cmp.not40 = icmp eq ptr %ha.039, %mc
  br i1 %cmp.not40, label %if.else.for.end_crit_edge, label %if.else.for.body_crit_edge

if.else.for.body_crit_edge:                       ; preds = %if.else
  br label %for.body

if.else.for.end_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.else.for.body_crit_edge
  %ha.041 = phi ptr [ %ha.0, %for.body.for.body_crit_edge ], [ %ha.039, %if.else.for.body_crit_edge ]
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.041, i32 0, i32 2
  %call6 = tail call i32 @ipvlan_mac_hash(ptr noundef %addr) #17
  %rem.i = and i32 %call6, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %call6, 5
  %add.ptr.i = getelementptr i32, ptr %mc_filters, i32 %div2.i
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %shl.i, %6
  store i32 %or.i, ptr %add.ptr.i, align 4
  %7 = ptrtoint ptr %ha.041 to i32
  call void @__asan_load4_noabort(i32 %7)
  %ha.0 = load ptr, ptr %ha.041, align 4
  %cmp.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.else.for.end_crit_edge
  %broadcast = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 99
  %call14 = tail call i32 @ipvlan_mac_hash(ptr noundef %broadcast) #17
  %rem.i33 = and i32 %call14, 31
  %shl.i34 = shl nuw i32 1, %rem.i33
  %div2.i35 = lshr i32 %call14, 5
  %add.ptr.i36 = getelementptr i32, ptr %mc_filters, i32 %div2.i35
  %8 = ptrtoint ptr %add.ptr.i36 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i36, align 4
  %or.i37 = or i32 %shl.i34, %9
  store i32 %or.i37, ptr %add.ptr.i36, align 4
  %mac_filters16 = getelementptr i8, ptr %dev, i32 2336
  %10 = call ptr @memcpy(ptr %mac_filters16, ptr %mc_filters, i32 32)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mc_filters) #17
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  %phy_dev = getelementptr i8, ptr %dev, i32 2320
  %11 = ptrtoint ptr %phy_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %phy_dev, align 8
  %call19 = tail call i32 @dev_uc_sync(ptr noundef %12, ptr noundef %dev) #17
  %13 = ptrtoint ptr %phy_dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %phy_dev, align 8
  %call21 = tail call i32 @dev_mc_sync(ptr noundef %14, ptr noundef %dev) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipvlan_get_stats64(ptr nocapture noundef readonly %dev, ptr nocapture noundef %s) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %pcpu_stats = getelementptr i8, ptr %dev, i32 2332
  %0 = ptrtoint ptr %pcpu_stats to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcpu_stats, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %for.cond.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

for.cond.preheader:                               ; preds = %entry
  %call154 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call154, i32 %2)
  %cmp55 = icmp ult i32 %call154, %2
  br i1 %cmp55, label %do.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

do.body.lr.ph:                                    ; preds = %for.cond.preheader
  %rx_bytes16 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %s, i32 0, i32 2
  %multicast = getelementptr inbounds %struct.rtnl_link_stats64, ptr %s, i32 0, i32 8
  %tx_packets = getelementptr inbounds %struct.rtnl_link_stats64, ptr %s, i32 0, i32 1
  %tx_bytes20 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %s, i32 0, i32 3
  br label %do.body

do.body:                                          ; preds = %do.end14.do.body_crit_edge, %do.body.lr.ph
  %call158 = phi i32 [ %call154, %do.body.lr.ph ], [ %call1, %do.end14.do.body_crit_edge ]
  %tx_drps.057 = phi i32 [ 0, %do.body.lr.ph ], [ %add25, %do.end14.do.body_crit_edge ]
  %rx_errs.056 = phi i32 [ 0, %do.body.lr.ph ], [ %add23, %do.end14.do.body_crit_edge ]
  %3 = ptrtoint ptr %pcpu_stats to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pcpu_stats, align 4
  %5 = ptrtoint ptr %4 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call158
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %add = add i32 %7, %5
  %8 = inttoptr i32 %add to ptr
  %syncp = getelementptr inbounds %struct.ipvl_pcpu_stats, ptr %8, i32 0, i32 5
  %dep_map.c48.i.i.i = getelementptr inbounds %struct.ipvl_pcpu_stats, ptr %8, i32 0, i32 5, i32 0, i32 1
  %rx_bytes7 = getelementptr inbounds %struct.ipvl_pcpu_stats, ptr %8, i32 0, i32 1
  %rx_mcast8 = getelementptr inbounds %struct.ipvl_pcpu_stats, ptr %8, i32 0, i32 2
  %tx_pkts9 = getelementptr inbounds %struct.ipvl_pcpu_stats, ptr %8, i32 0, i32 3
  %tx_bytes10 = getelementptr inbounds %struct.ipvl_pcpu_stats, ptr %8, i32 0, i32 4
  br label %do.body4

do.body4:                                         ; preds = %u64_stats_fetch_begin_irq.exit.do.body4_crit_edge, %do.body
  %9 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !113
  %and.i.i.i.i = and i32 %9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %do.body24.critedge.i.i.i

if.then.i.i.i:                                    ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @trace_hardirqs_off() #17
  %10 = tail call ptr @llvm.returnaddress(i32 0) #17
  %11 = ptrtoint ptr %10 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %11) #17
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i.i, i32 noundef %11) #17
  tail call void @trace_hardirqs_on() #17
  br label %do.body24.i.i.i

do.body24.critedge.i.i.i:                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #19
  %12 = tail call ptr @llvm.returnaddress(i32 0) #17
  %13 = ptrtoint ptr %12 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %13) #17
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i.i, i32 noundef %13) #17
  br label %do.body24.i.i.i

do.body24.i.i.i:                                  ; preds = %do.body24.critedge.i.i.i, %if.then.i.i.i
  %14 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #17, !srcloc !114
  %and.i.i.i.i.i = and i32 %14, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool32.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool32.not.i.i.i, label %if.then36.i.i.i, label %do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge, !prof !115

do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge: ; preds = %do.body24.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %seqcount_lockdep_reader_access.exit.i.i

if.then36.i.i.i:                                  ; preds = %do.body24.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @warn_bogus_irq_restore() #17
  br label %seqcount_lockdep_reader_access.exit.i.i

seqcount_lockdep_reader_access.exit.i.i:          ; preds = %if.then36.i.i.i, %do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %9) #17, !srcloc !116
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %u64_stats_fetch_begin_irq.exit

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !125
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #17, !srcloc !126
  %17 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %syncp, align 4
  %and.i.i = and i32 %18, 1
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.end.i.i.u64_stats_fetch_begin_irq.exit_crit_edge, label %do.end.i.i.do.end.i.i_crit_edge

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i.i

do.end.i.i.u64_stats_fetch_begin_irq.exit_crit_edge: ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %u64_stats_fetch_begin_irq.exit

u64_stats_fetch_begin_irq.exit:                   ; preds = %do.end.i.i.u64_stats_fetch_begin_irq.exit_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.u64_stats_fetch_begin_irq.exit_crit_edge
  %.lcssa.i.i = phi i32 [ %16, %seqcount_lockdep_reader_access.exit.i.i.u64_stats_fetch_begin_irq.exit_crit_edge ], [ %18, %do.end.i.i.u64_stats_fetch_begin_irq.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !127
  %19 = ptrtoint ptr %8 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %8, align 8
  %21 = ptrtoint ptr %rx_bytes7 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %rx_bytes7, align 8
  %23 = ptrtoint ptr %rx_mcast8 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %rx_mcast8, align 8
  %25 = ptrtoint ptr %tx_pkts9 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %tx_pkts9, align 8
  %27 = ptrtoint ptr %tx_bytes10 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %tx_bytes10, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !128
  %29 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %syncp, align 4
  %cmp.i.i.i.i.not = icmp eq i32 %30, %.lcssa.i.i
  br i1 %cmp.i.i.i.i.not, label %do.end14, label %u64_stats_fetch_begin_irq.exit.do.body4_crit_edge

u64_stats_fetch_begin_irq.exit.do.body4_crit_edge: ; preds = %u64_stats_fetch_begin_irq.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body4

do.end14:                                         ; preds = %u64_stats_fetch_begin_irq.exit
  %31 = ptrtoint ptr %s to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %s, align 8
  %add15 = add i64 %32, %20
  store i64 %add15, ptr %s, align 8
  %33 = ptrtoint ptr %rx_bytes16 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %rx_bytes16, align 8
  %add17 = add i64 %34, %22
  store i64 %add17, ptr %rx_bytes16, align 8
  %35 = ptrtoint ptr %multicast to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %multicast, align 8
  %add18 = add i64 %36, %24
  store i64 %add18, ptr %multicast, align 8
  %37 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %tx_packets, align 8
  %add19 = add i64 %38, %26
  store i64 %add19, ptr %tx_packets, align 8
  %39 = ptrtoint ptr %tx_bytes20 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %tx_bytes20, align 8
  %add21 = add i64 %40, %28
  store i64 %add21, ptr %tx_bytes20, align 8
  %rx_errs22 = getelementptr inbounds %struct.ipvl_pcpu_stats, ptr %8, i32 0, i32 6
  %41 = ptrtoint ptr %rx_errs22 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rx_errs22, align 8
  %add23 = add i32 %42, %rx_errs.056
  %tx_drps24 = getelementptr inbounds %struct.ipvl_pcpu_stats, ptr %8, i32 0, i32 7
  %43 = ptrtoint ptr %tx_drps24 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %tx_drps24, align 4
  %add25 = add i32 %44, %tx_drps.057
  %call1 = tail call i32 @cpumask_next(i32 noundef %call158, ptr noundef nonnull @__cpu_possible_mask) #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %45 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call1, %45
  br i1 %cmp, label %do.end14.do.body_crit_edge, label %do.end14.for.end_crit_edge

do.end14.for.end_crit_edge:                       ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

do.end14.do.body_crit_edge:                       ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body

for.end:                                          ; preds = %do.end14.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %rx_errs.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %add23, %do.end14.for.end_crit_edge ]
  %tx_drps.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %add25, %do.end14.for.end_crit_edge ]
  %conv = zext i32 %rx_errs.0.lcssa to i64
  %rx_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %s, i32 0, i32 4
  %46 = ptrtoint ptr %rx_errors to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %conv, ptr %rx_errors, align 8
  %rx_dropped = getelementptr inbounds %struct.rtnl_link_stats64, ptr %s, i32 0, i32 6
  %47 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %conv, ptr %rx_dropped, align 8
  %conv27 = zext i32 %tx_drps.0.lcssa to i64
  %tx_dropped = getelementptr inbounds %struct.rtnl_link_stats64, ptr %s, i32 0, i32 7
  %48 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %conv27, ptr %tx_dropped, align 8
  br label %if.end

if.end:                                           ; preds = %for.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipvlan_vlan_rx_add_vid(ptr nocapture noundef readonly %dev, i16 noundef zeroext %proto, i16 noundef zeroext %vid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_dev1 = getelementptr i8, ptr %dev, i32 2320
  %0 = ptrtoint ptr %phy_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_dev1, align 8
  %call2 = tail call i32 @vlan_vid_add(ptr noundef %1, i16 noundef zeroext %proto, i16 noundef zeroext %vid) #17
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipvlan_vlan_rx_kill_vid(ptr nocapture noundef readonly %dev, i16 noundef zeroext %proto, i16 noundef zeroext %vid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_dev1 = getelementptr i8, ptr %dev, i32 2320
  %0 = ptrtoint ptr %phy_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_dev1, align 8
  tail call void @vlan_vid_del(ptr noundef %1, i16 noundef zeroext %proto, i16 noundef zeroext %vid) #17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @ipvlan_fix_features(ptr nocapture noundef readonly %dev, i64 noundef %features) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %or = or i64 %features, 2199025352704
  %sfeatures = getelementptr i8, ptr %dev, i32 2368
  %0 = ptrtoint ptr %sfeatures to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %sfeatures, align 8
  %or1 = or i64 %1, -141837002033770
  %and = and i64 %or1, %or
  %phy_dev = getelementptr i8, ptr %dev, i32 2320
  %2 = ptrtoint ptr %phy_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy_dev, align 8
  %features2 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 23
  %4 = ptrtoint ptr %features2 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %features2, align 16
  %call3 = tail call i64 @netdev_increment_features(i64 noundef %5, i64 noundef %and, i64 noundef %and) #17
  %or4 = and i64 %call3, 141837000002144
  %and5 = or i64 %or4, 27109823497
  ret i64 %and5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ipvlan_get_iflink(ptr nocapture noundef readonly %dev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_dev = getelementptr i8, ptr %dev, i32 2320
  %0 = ptrtoint ptr %phy_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_dev, align 8
  %ifindex = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ifindex, align 4
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu_gfp(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipvlan_process_multicast(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netdev_rx_handler_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_rx_handler_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipvlan_ht_addr_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_uc_unsync(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_mc_unsync(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipvlan_queue_xmit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_allmulti(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipvlan_mac_hash(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_uc_sync(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_mc_sync(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vlan_vid_add(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vlan_vid_del(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @netdev_increment_features(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipvlan_hard_header(ptr noundef %skb, ptr nocapture noundef readonly %dev, i16 noundef zeroext %type, ptr noundef %daddr, ptr noundef %saddr, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_dev1 = getelementptr i8, ptr %dev, i32 2320
  %0 = ptrtoint ptr %phy_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_dev1, align 8
  %tobool.not = icmp eq ptr %saddr, null
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %dev_hard_header.exit

lor.lhs.false.i:                                  ; preds = %cond.end
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool2.not.i = icmp eq ptr %7, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.dev_hard_header.exit_crit_edge, label %if.end.i

lor.lhs.false.i.dev_hard_header.exit_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %dev_hard_header.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  %call.i = tail call i32 %7(ptr noundef %skb, ptr noundef %1, i16 noundef zeroext %type, ptr noundef %daddr, ptr noundef %cond, i32 noundef %len) #17
  br label %dev_hard_header.exit

dev_hard_header.exit:                             ; preds = %if.end.i, %lor.lhs.false.i.dev_hard_header.exit_crit_edge, %cond.end.dev_hard_header.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end.i ], [ 0, %lor.lhs.false.i.dev_hard_header.exit_crit_edge ], [ 0, %cond.end.dev_hard_header.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_header_parse(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_header_cache(ptr noundef, ptr noundef, i16 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @eth_header_cache_update(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipvlan_ethtool_get_drvinfo(ptr nocapture noundef readnone %dev, ptr noundef %drvinfo) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 1
  %call = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str.18, i32 noundef 32) #17
  %version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 2
  %call2 = tail call i32 @strlcpy(ptr noundef %version, ptr noundef nonnull @.str.19, i32 noundef 32) #17
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ipvlan_ethtool_get_msglevel(ptr nocapture noundef readonly %dev) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %dev, i32 2376
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 8
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @ipvlan_ethtool_set_msglevel(ptr nocapture noundef writeonly %dev, i32 noundef %value) #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %dev, i32 2376
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %value, ptr %msg_enable, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipvlan_ethtool_get_link_ksettings(ptr nocapture noundef readonly %dev, ptr noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_dev = getelementptr i8, ptr %dev, i32 2320
  %0 = ptrtoint ptr %phy_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_dev, align 8
  %call1 = tail call i32 @__ethtool_get_link_ksettings(ptr noundef %1, ptr noundef %cmd) #17
  ret i32 %call1
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ethtool_get_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @ipvlan_get_link_net(ptr nocapture noundef readonly %dev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_dev = getelementptr i8, ptr %dev, i32 2320
  %0 = ptrtoint ptr %phy_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_dev, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 127
  %2 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nd_net.i, align 4
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipvlan_device_event(ptr nocapture noundef readnone %unused, i32 noundef %event, ptr nocapture noundef readonly %ptr) #0 align 64 {
entry:
  %lst_kill = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %extack.i = getelementptr inbounds %struct.netdev_notifier_info, ptr %ptr, i32 0, i32 1
  %0 = ptrtoint ptr %extack.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %extack.i, align 4
  %2 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ptr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %lst_kill) #17
  %4 = getelementptr inbounds %struct.list_head, ptr %lst_kill, i32 0, i32 1
  %5 = ptrtoint ptr %lst_kill to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %lst_kill, ptr %lst_kill, align 4
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %lst_kill, ptr %4, align 4
  %rx_handler.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 94
  %7 = ptrtoint ptr %rx_handler.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %rx_handler.i, align 32
  %cmp.i = icmp eq ptr %8, @ipvlan_handle_frame
  br i1 %cmp.i, label %if.end, label %entry.cleanup143_crit_edge

entry.cleanup143_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup143

if.end:                                           ; preds = %entry
  %call.i = call zeroext i1 @lockdep_rtnl_is_held() #17
  br i1 %call.i, label %if.end.ipvlan_port_get_rtnl.exit_crit_edge, label %land.lhs.true.i

if.end.ipvlan_port_get_rtnl.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %ipvlan_port_get_rtnl.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.ipvlan_port_get_rtnl.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.ipvlan_port_get_rtnl.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ipvlan_port_get_rtnl.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @ipvlan_port_get_rtnl.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.ipvlan_port_get_rtnl.exit_crit_edge, label %if.then.i

land.lhs.true2.i.ipvlan_port_get_rtnl.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ipvlan_port_get_rtnl.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @ipvlan_port_get_rtnl.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 120, ptr noundef nonnull @.str.4) #17
  br label %ipvlan_port_get_rtnl.exit

ipvlan_port_get_rtnl.exit:                        ; preds = %if.then.i, %land.lhs.true2.i.ipvlan_port_get_rtnl.exit_crit_edge, %land.lhs.true.i.ipvlan_port_get_rtnl.exit_crit_edge, %if.end.ipvlan_port_get_rtnl.exit_crit_edge
  %rx_handler_data.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 95
  %9 = ptrtoint ptr %rx_handler_data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rx_handler_data.i, align 4
  %11 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %event, label %ipvlan_port_get_rtnl.exit.sw.epilog_crit_edge [
    i32 1, label %ipvlan_port_get_rtnl.exit.sw.bb_crit_edge
    i32 4, label %ipvlan_port_get_rtnl.exit.sw.bb_crit_edge241
    i32 5, label %sw.bb13
    i32 6, label %sw.bb21
    i32 12, label %sw.bb50
    i32 7, label %sw.bb72
    i32 9, label %sw.bb92
    i32 8, label %sw.bb118
    i32 15, label %ipvlan_port_get_rtnl.exit.cleanup143_crit_edge
  ]

ipvlan_port_get_rtnl.exit.cleanup143_crit_edge:   ; preds = %ipvlan_port_get_rtnl.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup143

ipvlan_port_get_rtnl.exit.sw.bb_crit_edge241:     ; preds = %ipvlan_port_get_rtnl.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb

ipvlan_port_get_rtnl.exit.sw.bb_crit_edge:        ; preds = %ipvlan_port_get_rtnl.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb

ipvlan_port_get_rtnl.exit.sw.epilog_crit_edge:    ; preds = %ipvlan_port_get_rtnl.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.bb:                                            ; preds = %ipvlan_port_get_rtnl.exit.sw.bb_crit_edge, %ipvlan_port_get_rtnl.exit.sw.bb_crit_edge241
  %ipvlans = getelementptr inbounds %struct.ipvl_port, ptr %10, i32 0, i32 3
  %12 = ptrtoint ptr %ipvlans to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn204222 = load ptr, ptr %ipvlans, align 4
  %cmp.not223 = icmp eq ptr %.pn204222, %ipvlans
  br i1 %cmp.not223, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.for.body_crit_edge

sw.bb.for.body_crit_edge:                         ; preds = %sw.bb
  br label %for.body

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

for.body:                                         ; preds = %for.body.for.body_crit_edge, %sw.bb.for.body_crit_edge
  %.pn204224 = phi ptr [ %.pn204, %for.body.for.body_crit_edge ], [ %.pn204222, %sw.bb.for.body_crit_edge ]
  %ipvlan.0 = getelementptr i8, ptr %.pn204224, i32 -4
  %phy_dev = getelementptr i8, ptr %.pn204224, i32 12
  %13 = ptrtoint ptr %phy_dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %phy_dev, align 8
  %15 = ptrtoint ptr %ipvlan.0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ipvlan.0, align 8
  call void @netif_stacked_transfer_operstate(ptr noundef %14, ptr noundef %16) #17
  %17 = ptrtoint ptr %.pn204224 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn204 = load ptr, ptr %.pn204224, align 4
  %cmp.not = icmp eq ptr %.pn204, %ipvlans
  br i1 %cmp.not, label %for.body.sw.epilog_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.bb13:                                          ; preds = %ipvlan_port_get_rtnl.exit
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 127
  %18 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %nd_net.i, align 4
  %pnet = getelementptr inbounds %struct.ipvl_port, ptr %10, i32 0, i32 1
  %20 = ptrtoint ptr %pnet to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pnet, align 4
  %cmp.i206.not = icmp eq ptr %19, %21
  br i1 %cmp.i206.not, label %sw.bb13.sw.epilog_crit_edge, label %if.end18

sw.bb13.sw.epilog_crit_edge:                      ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

if.end18:                                         ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #19
  %22 = ptrtoint ptr %pnet to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %pnet, align 4
  call void @ipvlan_migrate_l3s_hook(ptr noundef %21, ptr noundef %19) #17
  br label %sw.epilog

sw.bb21:                                          ; preds = %ipvlan_port_get_rtnl.exit
  %reg_state = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 121
  %23 = ptrtoint ptr %reg_state to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load = load i8, ptr %reg_state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %bf.load)
  %cmp22.not = icmp eq i8 %bf.load, 2
  br i1 %cmp22.not, label %if.end24, label %sw.bb21.sw.epilog_crit_edge

sw.bb21.sw.epilog_crit_edge:                      ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

if.end24:                                         ; preds = %sw.bb21
  %ipvlans26 = getelementptr inbounds %struct.ipvl_port, ptr %10, i32 0, i32 3
  %24 = ptrtoint ptr %ipvlans26 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ipvlans26, align 4
  %cmp38.not220 = icmp eq ptr %25, %ipvlans26
  br i1 %cmp38.not220, label %if.end24.for.end49_crit_edge, label %if.end24.for.body40_crit_edge

if.end24.for.body40_crit_edge:                    ; preds = %if.end24
  br label %for.body40

if.end24.for.end49_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end49

for.body40:                                       ; preds = %for.body40.for.body40_crit_edge, %if.end24.for.body40_crit_edge
  %.pn203.in221 = phi ptr [ %.pn203, %for.body40.for.body40_crit_edge ], [ %25, %if.end24.for.body40_crit_edge ]
  %ipvlan.1 = getelementptr i8, ptr %.pn203.in221, i32 -4
  %26 = ptrtoint ptr %.pn203.in221 to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pn203 = load ptr, ptr %.pn203.in221, align 4
  %27 = ptrtoint ptr %ipvlan.1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ipvlan.1, align 8
  %rtnl_link_ops = getelementptr inbounds %struct.net_device, ptr %28, i32 0, i32 136
  %29 = ptrtoint ptr %rtnl_link_ops to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rtnl_link_ops, align 4
  %dellink = getelementptr inbounds %struct.rtnl_link_ops, ptr %30, i32 0, i32 11
  %31 = ptrtoint ptr %dellink to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dellink, align 4
  call void %32(ptr noundef %28, ptr noundef nonnull %lst_kill) #17
  %cmp38.not = icmp eq ptr %.pn203, %ipvlans26
  br i1 %cmp38.not, label %for.body40.for.end49_crit_edge, label %for.body40.for.body40_crit_edge

for.body40.for.body40_crit_edge:                  ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body40

for.body40.for.end49_crit_edge:                   ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end49

for.end49:                                        ; preds = %for.body40.for.end49_crit_edge, %if.end24.for.end49_crit_edge
  call void @unregister_netdevice_many(ptr noundef nonnull %lst_kill) #17
  br label %sw.epilog

sw.bb50:                                          ; preds = %ipvlan_port_get_rtnl.exit
  %ipvlans52 = getelementptr inbounds %struct.ipvl_port, ptr %10, i32 0, i32 3
  %33 = ptrtoint ptr %ipvlans52 to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pn202217 = load ptr, ptr %ipvlans52, align 4
  %cmp59.not218 = icmp eq ptr %.pn202217, %ipvlans52
  br i1 %cmp59.not218, label %sw.bb50.sw.epilog_crit_edge, label %for.body61.lr.ph

sw.bb50.sw.epilog_crit_edge:                      ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

for.body61.lr.ph:                                 ; preds = %sw.bb50
  %gso_max_size = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 137
  %gso_max_segs = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 138
  br label %for.body61

for.body61:                                       ; preds = %for.body61.for.body61_crit_edge, %for.body61.lr.ph
  %.pn202219 = phi ptr [ %.pn202217, %for.body61.lr.ph ], [ %.pn202, %for.body61.for.body61_crit_edge ]
  %ipvlan.2 = getelementptr i8, ptr %.pn202219, i32 -4
  %34 = ptrtoint ptr %ipvlan.2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ipvlan.2, align 8
  %36 = ptrtoint ptr %gso_max_size to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %gso_max_size, align 8
  %gso_max_size.i = getelementptr inbounds %struct.net_device, ptr %35, i32 0, i32 137
  %38 = ptrtoint ptr %gso_max_size.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile i32 %37, ptr %gso_max_size.i, align 8
  %39 = load ptr, ptr %ipvlan.2, align 8
  %40 = ptrtoint ptr %gso_max_segs to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %gso_max_segs, align 4
  %gso_max_segs.i = getelementptr inbounds %struct.net_device, ptr %39, i32 0, i32 138
  %42 = ptrtoint ptr %gso_max_segs.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store volatile i16 %41, ptr %gso_max_segs.i, align 4
  %43 = load ptr, ptr %ipvlan.2, align 8
  call void @netdev_update_features(ptr noundef %43) #17
  %44 = ptrtoint ptr %.pn202219 to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pn202 = load ptr, ptr %.pn202219, align 4
  %cmp59.not = icmp eq ptr %.pn202, %ipvlans52
  br i1 %cmp59.not, label %for.body61.sw.epilog_crit_edge, label %for.body61.for.body61_crit_edge

for.body61.for.body61_crit_edge:                  ; preds = %for.body61
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body61

for.body61.sw.epilog_crit_edge:                   ; preds = %for.body61
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.bb72:                                          ; preds = %ipvlan_port_get_rtnl.exit
  %ipvlans74 = getelementptr inbounds %struct.ipvl_port, ptr %10, i32 0, i32 3
  %45 = ptrtoint ptr %ipvlans74 to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pn201214 = load ptr, ptr %ipvlans74, align 4
  %cmp81.not215 = icmp eq ptr %.pn201214, %ipvlans74
  br i1 %cmp81.not215, label %sw.bb72.sw.epilog_crit_edge, label %for.body84.lr.ph

sw.bb72.sw.epilog_crit_edge:                      ; preds = %sw.bb72
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

for.body84.lr.ph:                                 ; preds = %sw.bb72
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 20
  br label %for.body84

for.body84:                                       ; preds = %for.body84.for.body84_crit_edge, %for.body84.lr.ph
  %.pn201216 = phi ptr [ %.pn201214, %for.body84.lr.ph ], [ %.pn201, %for.body84.for.body84_crit_edge ]
  %ipvlan.3 = getelementptr i8, ptr %.pn201216, i32 -4
  %46 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %mtu.i, align 4
  %48 = ptrtoint ptr %ipvlan.3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ipvlan.3, align 8
  %mtu2.i = getelementptr inbounds %struct.net_device, ptr %49, i32 0, i32 20
  %50 = ptrtoint ptr %mtu2.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %47, ptr %mtu2.i, align 4
  %51 = ptrtoint ptr %.pn201216 to i32
  call void @__asan_load4_noabort(i32 %51)
  %.pn201 = load ptr, ptr %.pn201216, align 4
  %cmp81.not = icmp eq ptr %.pn201, %ipvlans74
  br i1 %cmp81.not, label %for.body84.sw.epilog_crit_edge, label %for.body84.for.body84_crit_edge

for.body84.for.body84_crit_edge:                  ; preds = %for.body84
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body84

for.body84.sw.epilog_crit_edge:                   ; preds = %for.body84
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.bb92:                                          ; preds = %ipvlan_port_get_rtnl.exit
  %ipvlans94 = getelementptr inbounds %struct.ipvl_port, ptr %10, i32 0, i32 3
  %dev_addr = getelementptr inbounds %struct.netdev_notifier_pre_changeaddr_info, ptr %ptr, i32 0, i32 1
  br label %for.cond98

for.cond98:                                       ; preds = %for.body104.for.cond98_crit_edge, %sw.bb92
  %.pn200.in = phi ptr [ %ipvlans94, %sw.bb92 ], [ %.pn200, %for.body104.for.cond98_crit_edge ]
  %52 = ptrtoint ptr %.pn200.in to i32
  call void @__asan_load4_noabort(i32 %52)
  %.pn200 = load ptr, ptr %.pn200.in, align 4
  %cmp101.not = icmp eq ptr %.pn200, %ipvlans94
  br i1 %cmp101.not, label %for.cond98.sw.epilog_crit_edge, label %for.body104

for.cond98.sw.epilog_crit_edge:                   ; preds = %for.cond98
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

for.body104:                                      ; preds = %for.cond98
  %ipvlan.4 = getelementptr i8, ptr %.pn200, i32 -4
  %53 = ptrtoint ptr %ipvlan.4 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ipvlan.4, align 8
  %55 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev_addr, align 4
  %call106 = call i32 @dev_pre_changeaddr_notify(ptr noundef %54, ptr noundef %56, ptr noundef %1) #17
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %for.body104.for.cond98_crit_edge, label %if.then108

for.body104.for.cond98_crit_edge:                 ; preds = %for.body104
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond98

if.then108:                                       ; preds = %for.body104
  call void @__sanitizer_cov_trace_pc() #19
  %sub.i = sub i32 1, %call106
  %or.i = or i32 %sub.i, 32768
  br label %cleanup143

sw.bb118:                                         ; preds = %ipvlan_port_get_rtnl.exit
  %ipvlans120 = getelementptr inbounds %struct.ipvl_port, ptr %10, i32 0, i32 3
  %57 = ptrtoint ptr %ipvlans120 to i32
  call void @__asan_load4_noabort(i32 %57)
  %.pn211 = load ptr, ptr %ipvlans120, align 4
  %cmp127.not212 = icmp eq ptr %.pn211, %ipvlans120
  br i1 %cmp127.not212, label %sw.bb118.sw.epilog_crit_edge, label %for.body130.lr.ph

sw.bb118.sw.epilog_crit_edge:                     ; preds = %sw.bb118
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

for.body130.lr.ph:                                ; preds = %sw.bb118
  %dev_addr132 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 86
  br label %for.body130

for.body130:                                      ; preds = %for.body130.for.body130_crit_edge, %for.body130.lr.ph
  %.pn213 = phi ptr [ %.pn211, %for.body130.lr.ph ], [ %.pn, %for.body130.for.body130_crit_edge ]
  %ipvlan.5 = getelementptr i8, ptr %.pn213, i32 -4
  %58 = ptrtoint ptr %ipvlan.5 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ipvlan.5, align 8
  %60 = ptrtoint ptr %dev_addr132 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev_addr132, align 64
  call void @dev_addr_mod(ptr noundef %59, i32 noundef 0, ptr noundef %61, i32 noundef 6) #17
  %62 = ptrtoint ptr %ipvlan.5 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ipvlan.5, align 8
  %call134 = call i32 @call_netdevice_notifiers(i32 noundef 8, ptr noundef %63) #17
  %64 = ptrtoint ptr %.pn213 to i32
  call void @__asan_load4_noabort(i32 %64)
  %.pn = load ptr, ptr %.pn213, align 4
  %cmp127.not = icmp eq ptr %.pn, %ipvlans120
  br i1 %cmp127.not, label %for.body130.sw.epilog_crit_edge, label %for.body130.for.body130_crit_edge

for.body130.for.body130_crit_edge:                ; preds = %for.body130
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body130

for.body130.sw.epilog_crit_edge:                  ; preds = %for.body130
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body130.sw.epilog_crit_edge, %sw.bb118.sw.epilog_crit_edge, %for.cond98.sw.epilog_crit_edge, %for.body84.sw.epilog_crit_edge, %sw.bb72.sw.epilog_crit_edge, %for.body61.sw.epilog_crit_edge, %sw.bb50.sw.epilog_crit_edge, %for.end49, %sw.bb21.sw.epilog_crit_edge, %if.end18, %sw.bb13.sw.epilog_crit_edge, %for.body.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %ipvlan_port_get_rtnl.exit.sw.epilog_crit_edge
  br label %cleanup143

cleanup143:                                       ; preds = %sw.epilog, %if.then108, %ipvlan_port_get_rtnl.exit.cleanup143_crit_edge, %entry.cleanup143_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ %or.i, %if.then108 ], [ 0, %entry.cleanup143_crit_edge ], [ 32770, %ipvlan_port_get_rtnl.exit.cleanup143_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %lst_kill) #17
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipvlan_migrate_l3s_hook(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdevice_many(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_update_features(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pre_changeaddr_notify(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_netdevice_notifiers(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipvlan_addr4_event(ptr nocapture noundef readnone %unused, i32 noundef %event, ptr nocapture noundef readonly %ptr) #0 align 64 {
entry:
  %ip4_addr = alloca %struct.in_addr, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %ifa_dev = getelementptr inbounds %struct.in_ifaddr, ptr %ptr, i32 0, i32 2
  %0 = ptrtoint ptr %ifa_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ifa_dev, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 2304
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ip4_addr) #17
  %netdev_ops.i.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %netdev_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev_ops.i.i, align 8
  %cmp.i.i = icmp ne ptr %5, @ipvlan_netdev_ops
  %tobool.not.i = icmp eq ptr %add.ptr.i, null
  %or.cond.i = or i1 %tobool.not.i, %cmp.i.i
  br i1 %or.cond.i, label %entry.cleanup_crit_edge, label %ipvlan_is_valid_dev.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

ipvlan_is_valid_dev.exit:                         ; preds = %entry
  %port.i = getelementptr i8, ptr %3, i32 2316
  %6 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port.i, align 4
  %tobool2.not.i.not = icmp eq ptr %7, null
  br i1 %tobool2.not.i.not, label %ipvlan_is_valid_dev.exit.cleanup_crit_edge, label %if.end

ipvlan_is_valid_dev.exit.cleanup_crit_edge:       ; preds = %ipvlan_is_valid_dev.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %ipvlan_is_valid_dev.exit
  %8 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %event, label %if.end.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb6
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %ifa_address = getelementptr inbounds %struct.in_ifaddr, ptr %ptr, i32 0, i32 5
  %9 = ptrtoint ptr %ifa_address to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ifa_address, align 4
  %11 = ptrtoint ptr %ip4_addr to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %ip4_addr, align 4
  %addrs_lock.i = getelementptr i8, ptr %3, i32 2380
  tail call void @_raw_spin_lock_bh(ptr noundef %addrs_lock.i) #17
  %12 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %port.i, align 4
  %call.i = call zeroext i1 @ipvlan_addr_busy(ptr noundef %13, ptr noundef nonnull %ip4_addr, i1 noundef zeroext false) #17
  br i1 %call.i, label %do.body.i, label %if.else.i

do.body.i:                                        ; preds = %sw.bb
  %msg_enable.i = getelementptr i8, ptr %3, i32 2376
  %14 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %msg_enable.i, align 8
  %and.i = and i32 %15, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i17 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i17, label %do.body.i.ipvlan_add_addr4.exit.thread_crit_edge, label %if.then1.i

do.body.i.ipvlan_add_addr4.exit.thread_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ipvlan_add_addr4.exit.thread

if.then1.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %17, ptr noundef nonnull @.str.20, ptr noundef nonnull %ip4_addr, ptr noundef %17) #20
  br label %ipvlan_add_addr4.exit.thread

if.else.i:                                        ; preds = %sw.bb
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 2848, i32 noundef 48) #23
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.else.i.ipvlan_add_addr4.exit.thread_crit_edge, label %if.end.i.i

if.else.i.ipvlan_add_addr4.exit.thread_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ipvlan_add_addr4.exit.thread

if.end.i.i:                                       ; preds = %if.else.i
  %19 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr.i, ptr %call7.i.i.i.i, align 8
  %ipu3.i.i = getelementptr inbounds %struct.ipvl_addr, ptr %call7.i.i.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %ip4_addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ip4_addr, align 4
  %22 = ptrtoint ptr %ipu3.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %ipu3.i.i, align 4
  %23 = getelementptr inbounds %struct.ipvl_addr, ptr %call7.i.i.i.i, i32 0, i32 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2, ptr %23, align 4
  %anode.i.i = getelementptr inbounds %struct.ipvl_addr, ptr %call7.i.i.i.i, i32 0, i32 3
  %addrs.i.i = getelementptr i8, ptr %3, i32 2324
  %prev.i.i.i = getelementptr i8, ptr %3, i32 2328
  %25 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %anode.i.i, ptr noundef %26, ptr noundef %addrs.i.i) #17
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end.i.i.list_add_tail_rcu.exit.i.i_crit_edge

if.end.i.i.list_add_tail_rcu.exit.i.i_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_add_tail_rcu.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %27 = ptrtoint ptr %anode.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %addrs.i.i, ptr %anode.i.i, align 4
  %prev2.i.i.i.i = getelementptr inbounds %struct.ipvl_addr, ptr %call7.i.i.i.i, i32 0, i32 3, i32 1
  %28 = ptrtoint ptr %prev2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %26, ptr %prev2.i.i.i.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !112
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %anode.i.i, ptr %26, align 4
  %30 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %anode.i.i, ptr %prev.i.i.i, align 4
  br label %list_add_tail_rcu.exit.i.i

list_add_tail_rcu.exit.i.i:                       ; preds = %if.end.i.i.i.i, %if.end.i.i.list_add_tail_rcu.exit.i.i_crit_edge
  %31 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr.i, align 8
  %state.i.i.i = getelementptr inbounds %struct.net_device, ptr %32, i32 0, i32 6
  %33 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %state.i.i.i, align 4
  %and1.i.i.i.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %list_add_tail_rcu.exit.i.i.ipvlan_add_addr4.exit_crit_edge, label %if.then7.i.i

list_add_tail_rcu.exit.i.i.ipvlan_add_addr4.exit_crit_edge: ; preds = %list_add_tail_rcu.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ipvlan_add_addr4.exit

if.then7.i.i:                                     ; preds = %list_add_tail_rcu.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @ipvlan_ht_addr_add(ptr noundef nonnull %add.ptr.i, ptr noundef nonnull %call7.i.i.i.i) #17
  br label %ipvlan_add_addr4.exit

ipvlan_add_addr4.exit.thread:                     ; preds = %if.else.i.ipvlan_add_addr4.exit.thread_crit_edge, %if.then1.i, %do.body.i.ipvlan_add_addr4.exit.thread_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %addrs_lock.i) #17
  br label %cleanup

ipvlan_add_addr4.exit:                            ; preds = %if.then7.i.i, %list_add_tail_rcu.exit.i.i.ipvlan_add_addr4.exit_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %addrs_lock.i) #17
  br label %cleanup

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %ifa_address7 = getelementptr inbounds %struct.in_ifaddr, ptr %ptr, i32 0, i32 5
  %35 = ptrtoint ptr %ifa_address7 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ifa_address7, align 4
  %37 = ptrtoint ptr %ip4_addr to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %ip4_addr, align 4
  call fastcc void @ipvlan_del_addr(ptr noundef nonnull %add.ptr.i, ptr noundef nonnull %ip4_addr, i1 noundef zeroext false) #17
  br label %cleanup

cleanup:                                          ; preds = %sw.bb6, %ipvlan_add_addr4.exit, %ipvlan_add_addr4.exit.thread, %if.end.cleanup_crit_edge, %ipvlan_is_valid_dev.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %ipvlan_is_valid_dev.exit.cleanup_crit_edge ], [ 32770, %ipvlan_add_addr4.exit.thread ], [ 1, %ipvlan_add_addr4.exit ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %sw.bb6 ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ip4_addr) #17
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ipvlan_addr_busy(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ipvlan_del_addr(ptr noundef %ipvlan, ptr noundef %iaddr, i1 noundef zeroext %is_v6) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %addrs_lock = getelementptr inbounds %struct.ipvl_dev, ptr %ipvlan, i32 0, i32 9
  tail call void @_raw_spin_lock_bh(ptr noundef %addrs_lock) #17
  %call = tail call ptr @ipvlan_find_addr(ptr noundef %ipvlan, ptr noundef %iaddr, i1 noundef zeroext %is_v6) #17
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @_raw_spin_unlock_bh(ptr noundef %addrs_lock) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @ipvlan_ht_addr_del(ptr noundef nonnull %call) #17
  %anode = getelementptr inbounds %struct.ipvl_addr, ptr %call, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %anode) #17
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del_rcu.exit_crit_edge

if.end.list_del_rcu.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i = getelementptr inbounds %struct.ipvl_addr, ptr %call, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %anode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %anode, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %if.end.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.ipvl_addr, ptr %call, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %addrs_lock) #17
  %rcu = getelementptr inbounds %struct.ipvl_addr, ptr %call, i32 0, i32 5
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 40 to ptr)) #17
  br label %cleanup

cleanup:                                          ; preds = %list_del_rcu.exit, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipvlan_find_addr(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipvlan_addr4_validator_event(ptr nocapture noundef readnone %unused, i32 noundef %event, ptr noundef %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %ivi_dev = getelementptr inbounds %struct.in_validator_info, ptr %ptr, i32 0, i32 1
  %0 = ptrtoint ptr %ivi_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ivi_dev, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 2304
  %netdev_ops.i.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %netdev_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev_ops.i.i, align 8
  %cmp.i.i = icmp ne ptr %5, @ipvlan_netdev_ops
  %tobool.not.i = icmp eq ptr %add.ptr.i, null
  %or.cond.i = or i1 %tobool.not.i, %cmp.i.i
  br i1 %or.cond.i, label %entry.cleanup_crit_edge, label %ipvlan_is_valid_dev.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

ipvlan_is_valid_dev.exit:                         ; preds = %entry
  %port.i = getelementptr i8, ptr %3, i32 2316
  %6 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port.i, align 4
  %tobool2.not.i.not = icmp eq ptr %7, null
  br i1 %tobool2.not.i.not, label %ipvlan_is_valid_dev.exit.cleanup_crit_edge, label %if.end

ipvlan_is_valid_dev.exit.cleanup_crit_edge:       ; preds = %ipvlan_is_valid_dev.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %ipvlan_is_valid_dev.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %event)
  %cond = icmp eq i32 %event, 1
  br i1 %cond, label %sw.bb, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %8 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %port.i, align 4
  %call3 = tail call zeroext i1 @ipvlan_addr_busy(ptr noundef %9, ptr noundef %ptr, i1 noundef zeroext false) #17
  br i1 %call3, label %do.body, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.body:                                          ; preds = %sw.bb
  %extack = getelementptr inbounds %struct.in_validator_info, ptr %ptr, i32 0, i32 2
  %10 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %extack, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ipvlan_addr4_validator_event.__msg) #17
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %if.then5

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @ipvlan_addr4_validator_event.__msg, ptr %11, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %do.body.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %ipvlan_is_valid_dev.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %ipvlan_is_valid_dev.exit.cleanup_crit_edge ], [ 1, %sw.bb.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 32867, %if.then5 ], [ 32867, %do.body.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipvlan_addr6_event(ptr nocapture noundef readnone %unused, i32 noundef %event, ptr noundef %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %idev = getelementptr inbounds %struct.inet6_ifaddr, ptr %ptr, i32 0, i32 16
  %0 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %idev, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 2304
  %netdev_ops.i.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %netdev_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev_ops.i.i, align 8
  %cmp.i.i = icmp ne ptr %5, @ipvlan_netdev_ops
  %tobool.not.i = icmp eq ptr %add.ptr.i, null
  %or.cond.i = or i1 %tobool.not.i, %cmp.i.i
  br i1 %or.cond.i, label %entry.cleanup_crit_edge, label %ipvlan_is_valid_dev.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

ipvlan_is_valid_dev.exit:                         ; preds = %entry
  %port.i = getelementptr i8, ptr %3, i32 2316
  %6 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port.i, align 4
  %tobool2.not.i.not = icmp eq ptr %7, null
  br i1 %tobool2.not.i.not, label %ipvlan_is_valid_dev.exit.cleanup_crit_edge, label %if.end

ipvlan_is_valid_dev.exit.cleanup_crit_edge:       ; preds = %ipvlan_is_valid_dev.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %ipvlan_is_valid_dev.exit
  %8 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %event, label %if.end.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb6
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %addrs_lock.i = getelementptr i8, ptr %3, i32 2380
  tail call void @_raw_spin_lock_bh(ptr noundef %addrs_lock.i) #17
  %9 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %port.i, align 4
  %call.i = tail call zeroext i1 @ipvlan_addr_busy(ptr noundef %10, ptr noundef %ptr, i1 noundef zeroext true) #17
  br i1 %call.i, label %do.body.i, label %if.else.i

do.body.i:                                        ; preds = %sw.bb
  %msg_enable.i = getelementptr i8, ptr %3, i32 2376
  %11 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %msg_enable.i, align 8
  %and.i = and i32 %12, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i15 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i15, label %do.body.i.ipvlan_add_addr6.exit.thread_crit_edge, label %if.then1.i

do.body.i.ipvlan_add_addr6.exit.thread_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ipvlan_add_addr6.exit.thread

if.then1.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %14, ptr noundef nonnull @.str.21, ptr noundef %ptr, ptr noundef %14) #20
  br label %ipvlan_add_addr6.exit.thread

if.else.i:                                        ; preds = %sw.bb
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 2848, i32 noundef 48) #23
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.else.i.ipvlan_add_addr6.exit.thread_crit_edge, label %if.end.i.i

if.else.i.ipvlan_add_addr6.exit.thread_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ipvlan_add_addr6.exit.thread

if.end.i.i:                                       ; preds = %if.else.i
  %16 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %add.ptr.i, ptr %call7.i.i.i.i, align 8
  %ipu3.i.i = getelementptr inbounds %struct.ipvl_addr, ptr %call7.i.i.i.i, i32 0, i32 1
  %17 = call ptr @memcpy(ptr %ipu3.i.i, ptr %ptr, i32 16)
  %18 = getelementptr inbounds %struct.ipvl_addr, ptr %call7.i.i.i.i, i32 0, i32 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %18, align 4
  %anode.i.i = getelementptr inbounds %struct.ipvl_addr, ptr %call7.i.i.i.i, i32 0, i32 3
  %addrs.i.i = getelementptr i8, ptr %3, i32 2324
  %prev.i.i.i = getelementptr i8, ptr %3, i32 2328
  %20 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %anode.i.i, ptr noundef %21, ptr noundef %addrs.i.i) #17
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end.i.i.list_add_tail_rcu.exit.i.i_crit_edge

if.end.i.i.list_add_tail_rcu.exit.i.i_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_add_tail_rcu.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %22 = ptrtoint ptr %anode.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %addrs.i.i, ptr %anode.i.i, align 4
  %prev2.i.i.i.i = getelementptr inbounds %struct.ipvl_addr, ptr %call7.i.i.i.i, i32 0, i32 3, i32 1
  %23 = ptrtoint ptr %prev2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %21, ptr %prev2.i.i.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !112
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %anode.i.i, ptr %21, align 4
  %25 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %anode.i.i, ptr %prev.i.i.i, align 4
  br label %list_add_tail_rcu.exit.i.i

list_add_tail_rcu.exit.i.i:                       ; preds = %if.end.i.i.i.i, %if.end.i.i.list_add_tail_rcu.exit.i.i_crit_edge
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr.i, align 8
  %state.i.i.i = getelementptr inbounds %struct.net_device, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %state.i.i.i, align 4
  %and1.i.i.i.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %list_add_tail_rcu.exit.i.i.ipvlan_add_addr6.exit_crit_edge, label %if.then7.i.i

list_add_tail_rcu.exit.i.i.ipvlan_add_addr6.exit_crit_edge: ; preds = %list_add_tail_rcu.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ipvlan_add_addr6.exit

if.then7.i.i:                                     ; preds = %list_add_tail_rcu.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @ipvlan_ht_addr_add(ptr noundef nonnull %add.ptr.i, ptr noundef nonnull %call7.i.i.i.i) #17
  br label %ipvlan_add_addr6.exit

ipvlan_add_addr6.exit.thread:                     ; preds = %if.else.i.ipvlan_add_addr6.exit.thread_crit_edge, %if.then1.i, %do.body.i.ipvlan_add_addr6.exit.thread_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %addrs_lock.i) #17
  br label %cleanup

ipvlan_add_addr6.exit:                            ; preds = %if.then7.i.i, %list_add_tail_rcu.exit.i.i.ipvlan_add_addr6.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %addrs_lock.i) #17
  br label %cleanup

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @ipvlan_del_addr(ptr noundef nonnull %add.ptr.i, ptr noundef %ptr, i1 noundef zeroext true) #17
  br label %cleanup

cleanup:                                          ; preds = %sw.bb6, %ipvlan_add_addr6.exit, %ipvlan_add_addr6.exit.thread, %if.end.cleanup_crit_edge, %ipvlan_is_valid_dev.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %ipvlan_is_valid_dev.exit.cleanup_crit_edge ], [ 32770, %ipvlan_add_addr6.exit.thread ], [ 1, %ipvlan_add_addr6.exit ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %sw.bb6 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipvlan_addr6_validator_event(ptr nocapture noundef readnone %unused, i32 noundef %event, ptr noundef %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %i6vi_dev = getelementptr inbounds %struct.in6_validator_info, ptr %ptr, i32 0, i32 1
  %0 = ptrtoint ptr %i6vi_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i6vi_dev, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 2304
  %netdev_ops.i.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %netdev_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev_ops.i.i, align 8
  %cmp.i.i = icmp ne ptr %5, @ipvlan_netdev_ops
  %tobool.not.i = icmp eq ptr %add.ptr.i, null
  %or.cond.i = or i1 %tobool.not.i, %cmp.i.i
  br i1 %or.cond.i, label %entry.cleanup_crit_edge, label %ipvlan_is_valid_dev.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

ipvlan_is_valid_dev.exit:                         ; preds = %entry
  %port.i = getelementptr i8, ptr %3, i32 2316
  %6 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port.i, align 4
  %tobool2.not.i.not = icmp eq ptr %7, null
  br i1 %tobool2.not.i.not, label %ipvlan_is_valid_dev.exit.cleanup_crit_edge, label %if.end

ipvlan_is_valid_dev.exit.cleanup_crit_edge:       ; preds = %ipvlan_is_valid_dev.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %ipvlan_is_valid_dev.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %event)
  %cond = icmp eq i32 %event, 1
  br i1 %cond, label %sw.bb, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %8 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %port.i, align 4
  %call3 = tail call zeroext i1 @ipvlan_addr_busy(ptr noundef %9, ptr noundef %ptr, i1 noundef zeroext true) #17
  br i1 %call3, label %do.body, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.body:                                          ; preds = %sw.bb
  %extack = getelementptr inbounds %struct.in6_validator_info, ptr %ptr, i32 0, i32 2
  %10 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %extack, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ipvlan_addr6_validator_event.__msg) #17
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %if.then5

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @ipvlan_addr6_validator_event.__msg, ptr %11, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %do.body.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %ipvlan_is_valid_dev.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %ipvlan_is_valid_dev.exit.cleanup_crit_edge ], [ 1, %sw.bb.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 32867, %if.then5 ], [ 32867, %do.body.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipvlan_init_secret() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_inet6addr_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_inet6addr_validator_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_inetaddr_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_inetaddr_validator_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipvlan_l3s_init() local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #17

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #18 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #18 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind readonly }
attributes #12 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #13 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { nounwind }
attributes #18 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #19 = { nomerge }
attributes #20 = { cold nounwind }
attributes #21 = { nounwind allocsize(0) }
attributes #22 = { nounwind readonly willreturn }
attributes #23 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !22, !24, !26, !28, !30, !31, !32, !34, !35, !36, !38, !40, !41, !42, !43, !44, !46, !47, !49, !50, !52, !53, !55, !56, !58, !59, !61, !62, !63, !65, !66, !68, !70, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99}
!llvm.named.register.sp = !{!101}
!llvm.module.flags = !{!102, !103, !104, !105, !106, !107, !108, !109}
!llvm.ident = !{!110}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ipvlan/ipvlan_main.c", i32 559, i32 8}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ipvlan/ipvlan_main.c", i32 564, i32 24}
!4 = !{ptr @ipvlan_link_new.__key, !5, !"__key", i1 false, i1 false}
!5 = !{!"../drivers/net/ipvlan/ipvlan_main.c", i32 575, i32 2}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @__ksymtab_ipvlan_link_new, !8, !"__ksymtab_ipvlan_link_new", i1 false, i1 false}
!8 = !{!"../drivers/net/ipvlan/ipvlan_main.c", i32 646, i32 1}
!9 = !{ptr @__ksymtab_ipvlan_link_delete, !10, !"__ksymtab_ipvlan_link_delete", i1 false, i1 false}
!10 = !{!"../drivers/net/ipvlan/ipvlan_main.c", i32 666, i32 1}
!11 = !{ptr @__ksymtab_ipvlan_link_setup, !12, !"__ksymtab_ipvlan_link_setup", i1 false, i1 false}
!12 = !{!"../drivers/net/ipvlan/ipvlan_main.c", i32 680, i32 1}
!13 = !{ptr @__ksymtab_ipvlan_link_register, !14, !"__ksymtab_ipvlan_link_register", i1 false, i1 false}
!14 = !{!"../drivers/net/ipvlan/ipvlan_main.c", i32 715, i32 1}
!15 = !{ptr @__initcall__kmod_ipvlan__595_1076_ipvlan_init_module6, !16, !"__initcall__kmod_ipvlan__595_1076_ipvlan_init_module6", i1 false, i1 false}
!16 = !{!"../drivers/net/ipvlan/ipvlan_main.c", i32 1076, i32 1}
!17 = !{ptr @__exitcall_ipvlan_cleanup_module, !18, !"__exitcall_ipvlan_cleanup_module", i1 false, i1 false}
!18 = !{!"../drivers/net/ipvlan/ipvlan_main.c", i32 1077, i32 1}
!19 = !{ptr @__UNIQUE_ID_file596, !20, !"__UNIQUE_ID_file596", i1 false, i1 false}
!20 = !{!"../drivers/net/ipvlan/ipvlan_main.c", i32 1079, i32 1}
!21 = !{ptr @__UNIQUE_ID_license597, !20, !"__UNIQUE_ID_license597", i1 false, i1 false}
!22 = !{ptr @__UNIQUE_ID_author598, !23, !"__UNIQUE_ID_author598", i1 false, i1 false}
!23 = !{!"../drivers/net/ipvlan/ipvlan_main.c", i32 1080, i32 1}
!24 = !{ptr @__UNIQUE_ID_description599, !25, !"__UNIQUE_ID_description599", i1 false, i1 false}
!25 = !{!"../drivers/net/ipvlan/ipvlan_main.c", i32 1081, i32 1}
!26 = !{ptr @__UNIQUE_ID_alias600, !27, !"__UNIQUE_ID_alias600", i1 false, i1 false}
!27 = !{!"../drivers/net/ipvlan/ipvlan_main.c", i32 1082, i32 1}
!28 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!29 = !{!"../drivers/net/ipvlan/ipvlan.h", i32 120, i32 9}
!30 = !{ptr @.str.3, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!32 = distinct !{null, !33, !"__already_done", i1 false, i1 false}
!33 = !{!"../drivers/net/ipvlan/ipvlan_main.c", i32 16, i32 2}
!34 = !{ptr @.str.5, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @ipvlan_netdev_ops, !37, !"ipvlan_netdev_ops", i1 false, i1 false}
!37 = !{!"../drivers/net/ipvlan/ipvlan_main.c", i32 353, i32 36}
!38 = !{ptr @ipvlan_init.qdisc_tx_busylock_key, !39, !"qdisc_tx_busylock_key", i1 false, i1 false}
!39 = !{!"../drivers/net/ipvlan/ipvlan_main.c", i32 146, i32 2}
!40 = !{ptr @ipvlan_init.qdisc_xmit_lock_key, !39, !"qdisc_xmit_lock_key", i1 false, i1 false}
!41 = !{ptr @ipvlan_init.dev_addr_list_lock_key, !39, !"dev_addr_list_lock_key", i1 false, i1 false}
!42 = !{ptr @.str.7, !39, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.8, !39, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @ipvlan_init.__key, !45, !"__key", i1 false, i1 false}
!45 = !{!"../drivers/net/ipvlan/ipvlan_main.c", i32 148, i32 23}
!46 = !{ptr @.str.9, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @ipvlan_port_create.__key, !48, !"__key", i1 false, i1 false}
!48 = !{!"../drivers/net/ipvlan/ipvlan_main.c", i32 78, i32 2}
!49 = !{ptr @.str.10, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @skb_queue_head_init.__key, !51, !"__key", i1 false, i1 false}
!51 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!52 = !{ptr @.str.11, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @xa_init_flags.__key, !54, !"__key", i1 false, i1 false}
!54 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!55 = !{ptr @.str.12, !54, !"<string literal>", i1 false, i1 false}
!56 = distinct !{null, !57, !"__warned", i1 false, i1 false}
!57 = !{!"../drivers/net/ipvlan/ipvlan_main.c", i32 190, i32 2}
!58 = !{ptr @.str.13, !57, !"<string literal>", i1 false, i1 false}
!59 = distinct !{null, !60, !"__warned", i1 false, i1 false}
!60 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!61 = !{ptr @.str.14, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.15, !60, !"<string literal>", i1 false, i1 false}
!63 = distinct !{null, !64, !"__warned", i1 false, i1 false}
!64 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!65 = !{ptr @.str.16, !64, !"<string literal>", i1 false, i1 false}
!66 = distinct !{null, !67, !"__warned", i1 false, i1 false}
!67 = !{!"../drivers/net/ipvlan/ipvlan_main.c", i32 207, i32 2}
!68 = distinct !{null, !69, !"__already_done", i1 false, i1 false}
!69 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!70 = !{ptr @.str.17, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @ipvlan_header_ops, !72, !"ipvlan_header_ops", i1 false, i1 false}
!72 = !{!"../drivers/net/ipvlan/ipvlan_main.c", i32 383, i32 32}
!73 = !{ptr @ipvlan_ethtool_ops, !74, !"ipvlan_ethtool_ops", i1 false, i1 false}
!74 = !{!"../drivers/net/ipvlan/ipvlan_main.c", i32 430, i32 33}
!75 = !{ptr @.str.18, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/ipvlan/ipvlan_main.c", i32 412, i32 27}
!77 = !{ptr @.str.19, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ipvlan/ipvlan_main.c", i32 413, i32 28}
!79 = !{ptr @ipvlan_nl_policy, !80, !"ipvlan_nl_policy", i1 false, i1 false}
!80 = !{!"../drivers/net/ipvlan/ipvlan_main.c", i32 682, i32 32}
!81 = !{ptr @ipvlan_link_ops, !82, !"ipvlan_link_ops", i1 false, i1 false}
!82 = !{!"../drivers/net/ipvlan/ipvlan_main.c", i32 695, i32 29}
!83 = !{ptr @ipvlan_notifier_block, !84, !"ipvlan_notifier_block", i1 false, i1 false}
!84 = !{!"../drivers/net/ipvlan/ipvlan_main.c", i32 1009, i32 30}
!85 = !{ptr @ipvlan_addr4_notifier_block, !86, !"ipvlan_addr4_notifier_block", i1 false, i1 false}
!86 = !{!"../drivers/net/ipvlan/ipvlan_main.c", i32 1001, i32 30}
!87 = !{ptr @.str.20, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ipvlan/ipvlan_main.c", i32 937, i32 3}
!89 = !{ptr @ipvlan_addr4_vtor_notifier_block, !90, !"ipvlan_addr4_vtor_notifier_block", i1 false, i1 false}
!90 = !{!"../drivers/net/ipvlan/ipvlan_main.c", i32 1005, i32 30}
!91 = !{ptr @ipvlan_addr4_validator_event.__msg, !92, !"__msg", i1 false, i1 false}
!92 = !{!"../drivers/net/ipvlan/ipvlan_main.c", i32 991, i32 4}
!93 = !{ptr @ipvlan_addr6_notifier_block, !94, !"ipvlan_addr6_notifier_block", i1 false, i1 false}
!94 = !{!"../drivers/net/ipvlan/ipvlan_main.c", i32 1014, i32 30}
!95 = !{ptr @.str.21, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/ipvlan/ipvlan_main.c", i32 869, i32 3}
!97 = !{ptr @ipvlan_addr6_vtor_notifier_block, !98, !"ipvlan_addr6_vtor_notifier_block", i1 false, i1 false}
!98 = !{!"../drivers/net/ipvlan/ipvlan_main.c", i32 1018, i32 30}
!99 = !{ptr @ipvlan_addr6_validator_event.__msg, !100, !"__msg", i1 false, i1 false}
!100 = !{!"../drivers/net/ipvlan/ipvlan_main.c", i32 920, i32 4}
!101 = !{!"sp"}
!102 = !{i32 1, !"wchar_size", i32 2}
!103 = !{i32 1, !"min_enum_size", i32 4}
!104 = !{i32 8, !"branch-target-enforcement", i32 0}
!105 = !{i32 8, !"sign-return-address", i32 0}
!106 = !{i32 8, !"sign-return-address-all", i32 0}
!107 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!108 = !{i32 7, !"uwtable", i32 1}
!109 = !{i32 7, !"frame-pointer", i32 2}
!110 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!111 = !{!"branch_weights", i32 2000, i32 1}
!112 = !{i64 2150349909}
!113 = !{i64 637104, i64 637165}
!114 = !{i64 639836}
!115 = !{!"branch_weights", i32 1, i32 2000}
!116 = !{i64 640121}
!117 = !{i64 2149463865}
!118 = !{i64 2149464131}
!119 = !{i64 2149980668}
!120 = !{i64 2149985600}
!121 = !{i64 2150007312}
!122 = !{i64 2150012204}
!123 = !{i64 2150088661}
!124 = !{i64 2150088986}
!125 = !{i64 2155190280}
!126 = !{i64 2155190122}
!127 = !{i64 2155190450}
!128 = !{i64 2150088336}
