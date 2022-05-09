; ModuleID = '/llk/IR_all_yes/net/mpls/af_mpls.c_pt.bc'
source_filename = "../net/mpls/af_mpls.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mpls_output_possible\22, \22a\22\09"
module asm "\09.weak\09__crc_mpls_output_possible\09\09\09\09"
module asm "\09.long\09__crc_mpls_output_possible\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mpls_output_possible:\09\09\09\09\09"
module asm "\09.asciz \09\22mpls_output_possible\22\09\09\09\09\09"
module asm "__kstrtabns_mpls_output_possible:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mpls_dev_mtu\22, \22a\22\09"
module asm "\09.weak\09__crc_mpls_dev_mtu\09\09\09\09"
module asm "\09.long\09__crc_mpls_dev_mtu\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mpls_dev_mtu:\09\09\09\09\09"
module asm "\09.asciz \09\22mpls_dev_mtu\22\09\09\09\09\09"
module asm "__kstrtabns_mpls_dev_mtu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mpls_pkt_too_big\22, \22a\22\09"
module asm "\09.weak\09__crc_mpls_pkt_too_big\09\09\09\09"
module asm "\09.long\09__crc_mpls_pkt_too_big\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mpls_pkt_too_big:\09\09\09\09\09"
module asm "\09.asciz \09\22mpls_pkt_too_big\22\09\09\09\09\09"
module asm "__kstrtabns_mpls_pkt_too_big:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mpls_stats_inc_outucastpkts\22, \22a\22\09"
module asm "\09.weak\09__crc_mpls_stats_inc_outucastpkts\09\09\09\09"
module asm "\09.long\09__crc_mpls_stats_inc_outucastpkts\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mpls_stats_inc_outucastpkts:\09\09\09\09\09"
module asm "\09.asciz \09\22mpls_stats_inc_outucastpkts\22\09\09\09\09\09"
module asm "__kstrtabns_mpls_stats_inc_outucastpkts:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nla_put_labels\22, \22a\22\09"
module asm "\09.weak\09__crc_nla_put_labels\09\09\09\09"
module asm "\09.long\09__crc_nla_put_labels\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nla_put_labels:\09\09\09\09\09"
module asm "\09.asciz \09\22nla_put_labels\22\09\09\09\09\09"
module asm "__kstrtabns_nla_put_labels:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nla_get_labels\22, \22a\22\09"
module asm "\09.weak\09__crc_nla_get_labels\09\09\09\09"
module asm "\09.long\09__crc_nla_get_labels\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nla_get_labels:\09\09\09\09\09"
module asm "\09.asciz \09\22nla_get_labels\22\09\09\09\09\09"
module asm "__kstrtabns_nla_get_labels:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.rtnl_af_ops = type { %struct.list_head, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.packet_type = type { i16, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.49 }
%union.anon.49 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ip_tunnel_encap_ops = type { ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.150, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%union.anon.150 = type { ptr }
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
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.121, [48 x i8], %union.anon.122, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.124, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.121 = type { i64 }
%union.anon.122 = type { %struct.anon.123 }
%struct.anon.123 = type { i32, ptr }
%union.anon.124 = type { %struct.anon.125 }
%struct.anon.125 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.126, i32, i32, i32, i16, i16, %union.anon.128, i32, %union.anon.129, %union.anon.130, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.126 = type { i32 }
%union.anon.128 = type { i32 }
%union.anon.129 = type { i32 }
%union.anon.130 = type { i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.mpls_dev = type { i32, ptr, ptr, ptr, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.mpls_pcpu_stats = type { %struct.mpls_link_stats, %struct.u64_stats_sync }
%struct.mpls_link_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.62, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.62 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.52, i32, %struct.spinlock }
%union.anon.52 = type { %struct.anon.53 }
%struct.anon.53 = type { ptr, ptr }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.ipstats_mib = type { [37 x i64], %struct.u64_stats_sync }
%struct.inet6_dev = type { ptr, ptr, %struct.list_head, ptr, ptr, i8, i8, i8, i8, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.spinlock, %struct.mutex, ptr, %struct.rwlock_t, %struct.refcount_struct, i32, i32, i32, %struct.list_head, %struct.in6_addr, ptr, %struct.ipv6_devconf, %struct.ipv6_devstat, %struct.timer_list, i32, i8, i32, %struct.callback_head, i32 }
%struct.in6_addr = type { %union.anon.48 }
%union.anon.48 = type { [4 x i32] }
%struct.ipv6_devconf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ipv6_stable_secret, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr }
%struct.ipv6_stable_secret = type { i8, %struct.in6_addr }
%struct.ipv6_devstat = type { ptr, ptr, ptr, ptr }
%struct.mpls_shim_hdr = type { i32 }
%struct.netlink_ext_ack = type { ptr, ptr, ptr, [20 x i8], i8 }
%struct.mpls_route_config = type { i32, i32, i8, i8, [32 x i8], i32, i8, i8, [30 x i32], i32, i32, %struct.nl_info, ptr, i32 }
%struct.nl_info = type { ptr, ptr, i32, i8 }
%struct.mpls_route = type { %struct.callback_head, i8, i8, i8, i8, i8, i8, i8, i8, i8, [0 x %struct.mpls_nh] }
%struct.mpls_nh = type { ptr, i32, i8, i8, i8, i8, [0 x i32] }
%struct.rtnexthop = type { i16, i8, i8, i32 }
%struct.sock_common = type { %union.anon.3, %union.anon.5, %union.anon.6, i16, i8, i8, i32, %union.anon.8, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.111, [0 x i32], %union.anon.112, i16, i16, %union.anon.113, %struct.refcount_struct, [0 x i32], %union.anon.114 }
%union.anon.3 = type { i64 }
%union.anon.5 = type { i32 }
%union.anon.6 = type { i32 }
%union.anon.8 = type { %struct.hlist_node }
%struct.atomic64_t = type { i64 }
%union.anon.111 = type { i32 }
%union.anon.112 = type { %struct.hlist_node }
%union.anon.113 = type { i32 }
%union.anon.114 = type { i32 }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.fib_dump_filter = type { i32, i8, i8, i8, i8, i8, i32, ptr }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.140 }
%union.anon.140 = type { [6 x i32], [24 x i8] }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.kuid_t = type { i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.flowi4 = type { %struct.flowi_common, i32, i32, %union.flowi_uli }
%struct.ipv6_stub = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }

@__kstrtab_mpls_output_possible = external dso_local constant [0 x i8], align 1
@__kstrtabns_mpls_output_possible = external dso_local constant [0 x i8], align 1
@__ksymtab_mpls_output_possible = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mpls_output_possible to i32), ptr @__kstrtab_mpls_output_possible, ptr @__kstrtabns_mpls_output_possible }, section "___ksymtab_gpl+mpls_output_possible", align 4
@__kstrtab_mpls_dev_mtu = external dso_local constant [0 x i8], align 1
@__kstrtabns_mpls_dev_mtu = external dso_local constant [0 x i8], align 1
@__ksymtab_mpls_dev_mtu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mpls_dev_mtu to i32), ptr @__kstrtab_mpls_dev_mtu, ptr @__kstrtabns_mpls_dev_mtu }, section "___ksymtab_gpl+mpls_dev_mtu", align 4
@__kstrtab_mpls_pkt_too_big = external dso_local constant [0 x i8], align 1
@__kstrtabns_mpls_pkt_too_big = external dso_local constant [0 x i8], align 1
@__ksymtab_mpls_pkt_too_big = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mpls_pkt_too_big to i32), ptr @__kstrtab_mpls_pkt_too_big, ptr @__kstrtabns_mpls_pkt_too_big }, section "___ksymtab_gpl+mpls_pkt_too_big", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__kstrtab_mpls_stats_inc_outucastpkts = external dso_local constant [0 x i8], align 1
@__kstrtabns_mpls_stats_inc_outucastpkts = external dso_local constant [0 x i8], align 1
@__ksymtab_mpls_stats_inc_outucastpkts = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mpls_stats_inc_outucastpkts to i32), ptr @__kstrtab_mpls_stats_inc_outucastpkts, ptr @__kstrtabns_mpls_stats_inc_outucastpkts }, section "___ksymtab_gpl+mpls_stats_inc_outucastpkts", align 4
@__kstrtab_nla_put_labels = external dso_local constant [0 x i8], align 1
@__kstrtabns_nla_put_labels = external dso_local constant [0 x i8], align 1
@__ksymtab_nla_put_labels = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nla_put_labels to i32), ptr @__kstrtab_nla_put_labels, ptr @__kstrtabns_nla_put_labels }, section "___ksymtab_gpl+nla_put_labels", align 4
@nla_get_labels.__msg = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Invalid length for labels attribute\00", [60 x i8] zeroinitializer }, align 32
@nla_get_labels.__msg.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Too many labels\00", [16 x i8] zeroinitializer }, align 32
@nla_get_labels.__msg.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"TTL in label must be 0\00", [41 x i8] zeroinitializer }, align 32
@nla_get_labels.__msg.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Traffic class in label must be 0\00", [63 x i8] zeroinitializer }, align 32
@nla_get_labels.__msg.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"BOS bit must be set in first label\00", [61 x i8] zeroinitializer }, align 32
@nla_get_labels.__msg.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"BOS bit can only be set in first label\00", [57 x i8] zeroinitializer }, align 32
@nla_get_labels.__msg.6 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Implicit NULL Label (3) can not be used in encapsulation\00", [39 x i8] zeroinitializer }, align 32
@__kstrtab_nla_get_labels = external dso_local constant [0 x i8], align 1
@__kstrtabns_nla_get_labels = external dso_local constant [0 x i8], align 1
@__ksymtab_nla_get_labels = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nla_get_labels to i32), ptr @__kstrtab_nla_get_labels, ptr @__kstrtabns_nla_get_labels }, section "___ksymtab_gpl+nla_get_labels", align 4
@__initcall__kmod_mpls_router__604_2781_mpls_init6 = internal global ptr @mpls_init, section ".initcall6.init", align 4
@mpls_af_ops = internal global %struct.rtnl_af_ops { %struct.list_head zeroinitializer, i32 28, ptr null, ptr null, ptr null, ptr null, ptr @mpls_fill_stats_af, ptr @mpls_get_stats_af_size }, section ".data..read_mostly", align 4
@mpls_packet_type = internal global %struct.packet_type { i16 -30649, i8 0, ptr null, ptr null, ptr @mpls_forward, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer }, section ".data..read_mostly", align 4
@mpls_dev_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @mpls_dev_notify, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@mpls_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @mpls_net_init, ptr null, ptr @mpls_net_exit, ptr null, ptr null, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_mpls_exit = internal global ptr @mpls_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description605 = internal constant [54 x i8] c"mpls_router.description=MultiProtocol Label Switching\00", section ".modinfo", align 1
@__UNIQUE_ID_file606 = internal constant [38 x i8] c"mpls_router.file=net/mpls/mpls_router\00", section ".modinfo", align 1
@__UNIQUE_ID_license607 = internal constant [27 x i8] c"mpls_router.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias608 = internal constant [28 x i8] c"mpls_router.alias=net-pf-28\00", section ".modinfo", align 1
@mpls_dev_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/mpls/internal.h\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@__in6_dev_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/net/addrconf.h\00", [41 x i8] zeroinitializer }, align 32
@mpls_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.12, i32 2771, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013Can't add mpls over gre tunnel ops\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mpls_init\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"net/mpls/af_mpls.c\00", [45 x i8] zeroinitializer }, align 32
@mpls_init._entry_ptr = internal global ptr @mpls_init._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rtm_mpls_policy = internal constant { [31 x %struct.nla_policy], [40 x i8] } { [31 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.49 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.49 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.49 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer], [40 x i8] zeroinitializer }, align 32
@rtm_to_route_config.__msg = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Invalid address family in rtmsg\00", [32 x i8] zeroinitializer }, align 32
@rtm_to_route_config.__msg.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"rtm_dst_len must be 20 for MPLS\00", [32 x i8] zeroinitializer }, align 32
@rtm_to_route_config.__msg.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"rtm_src_len must be 0 for MPLS\00", [33 x i8] zeroinitializer }, align 32
@rtm_to_route_config.__msg.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rtm_tos must be 0 for MPLS\00", [37 x i8] zeroinitializer }, align 32
@rtm_to_route_config.__msg.16 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"MPLS only supports the main route table\00", [56 x i8] zeroinitializer }, align 32
@rtm_to_route_config.__msg.17 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Invalid route scope  - MPLS only supports UNIVERSE\00", [45 x i8] zeroinitializer }, align 32
@rtm_to_route_config.__msg.18 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Invalid route type - MPLS only supports UNICAST\00", [48 x i8] zeroinitializer }, align 32
@rtm_to_route_config.__msg.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"rtm_flags must be 0 for MPLS\00", [35 x i8] zeroinitializer }, align 32
@rtm_to_route_config.__msg.20 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"MPLS does not support RTA_GATEWAY attribute\00", [52 x i8] zeroinitializer }, align 32
@rtm_to_route_config.__msg.21 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"RTA_TTL_PROPAGATE can only be 0 or 1\00", [59 x i8] zeroinitializer }, align 32
@rtm_to_route_config.__msg.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Unknown attribute\00", [46 x i8] zeroinitializer }, align 32
@__nlmsg_parse.__msg = internal constant [22 x i8] c"Invalid header length\00", align 1
@mpls_label_ok.__msg = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Invalid label - must be MPLS_LABEL_FIRST_UNRESERVED or higher\00", [34 x i8] zeroinitializer }, align 32
@mpls_label_ok.__msg.23 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Label >= configured maximum in platform_labels\00", [49 x i8] zeroinitializer }, align 32
@nla_get_via.__msg = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Invalid attribute length for RTA_VIA\00", [59 x i8] zeroinitializer }, align 32
@nla_get_via.__msg.24 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Invalid address length for RTA_VIA\00", [61 x i8] zeroinitializer }, align 32
@mpls_route_add.__msg = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"MPLS does not support route append\00", [61 x i8] zeroinitializer }, align 32
@mpls_route_add.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.25 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@mpls_route_add.__warned.26 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@mpls_route_add.__msg.27 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Route does not contain a nexthop\00", [63 x i8] zeroinitializer }, align 32
@find_free_label.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@find_free_label.__warned.28 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ipv6_stub = external dso_local local_unnamed_addr global ptr, section ".data..read_mostly", align 4
@mpls_route_update.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.29 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@mpls_route_update.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@mpls_route_update.__warned.30 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nla_put_via.table_to_family = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 2, i32 10, i32 12, i32 17], [16 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@mpls_valid_getroute_req.__msg = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"mpls_router: Invalid header for get route request\00", [46 x i8] zeroinitializer }, align 32
@mpls_valid_getroute_req.__msg.32 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"mpls_router: Invalid values in header for get route request\00", [36 x i8] zeroinitializer }, align 32
@mpls_valid_getroute_req.__msg.33 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"mpls_router: Invalid flags for get route request\00", [47 x i8] zeroinitializer }, align 32
@mpls_valid_getroute_req.__msg.34 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"mpls_router: rtm_dst_len must be 20 for MPLS\00", [51 x i8] zeroinitializer }, align 32
@mpls_valid_getroute_req.__msg.35 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"mpls_router: Unsupported attribute in get route request\00", [40 x i8] zeroinitializer }, align 32
@mpls_route_input_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@mpls_route_input_rcu.__warned.36 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@mpls_dump_routes.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mpls_dump_routes.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@mpls_dump_routes.__warned.37 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@mpls_netconf_valid_get_req.__msg = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"mpls_router: Invalid header for netconf get request\00", [44 x i8] zeroinitializer }, align 32
@devconf_mpls_policy = internal constant { [9 x %struct.nla_policy], [56 x i8] } { [9 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 0, i8 0, i16 4, %union.anon.49 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer], [56 x i8] zeroinitializer }, align 32
@mpls_netconf_valid_get_req.__msg.38 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"mpls_router: Unsupported attribute in netconf get request\00", [38 x i8] zeroinitializer }, align 32
@mpls_netconf_dump_devconf.__msg = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"mpls_router: Invalid header for netconf dump request\00", [43 x i8] zeroinitializer }, align 32
@mpls_netconf_dump_devconf.__msg.39 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"mpls_router: Invalid data after header in netconf dump request\00", [33 x i8] zeroinitializer }, align 32
@mpls_netconf_dump_devconf.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.40 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.43 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@mpls_iptun_ops = internal constant { %struct.ip_tunnel_encap_ops, [20 x i8] } { %struct.ip_tunnel_encap_ops { ptr @ipgre_mpls_encap_hlen, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@mpls_forward.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.45, ptr @.str.12, ptr @.str.46, i8 0, i8 116, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mpls_router\00", [20 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mpls_forward\00", [19 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: packet transmission failed: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@mpls_add_dev.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mpls_add_dev.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.48 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&(&mpls_stats->syncp)->seq\00", [37 x i8] zeroinitializer }, align 32
@mpls_ifdown.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@mpls_ifdown.__warned.49 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@mpls_ifup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@mpls_ifup.__warned.50 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@mpls_dev_table = internal constant { [2 x %struct.ctl_table], [56 x i8] } { [2 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.52, ptr null, i32 4, i16 420, ptr null, ptr @mpls_conf_proc, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"net/mpls/conf/%s\00", [47 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"input\00", [26 x i8] zeroinitializer }, align 32
@mpls_table = internal constant { [4 x %struct.ctl_table], [48 x i8] } { [4 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.54, ptr null, i32 4, i16 420, ptr null, ptr @mpls_platform_labels, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.55, ptr inttoptr (i32 4492 to ptr), i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 8) }, %struct.ctl_table { ptr @.str.56, ptr inttoptr (i32 4496 to ptr), i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 8), ptr @ttl_max }, %struct.ctl_table zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"net/mpls\00", [23 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"platform_labels\00", [16 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ip_ttl_propagate\00", [47 x i8] zeroinitializer }, align 32
@sysctl_vals = external dso_local constant [0 x i32], align 4
@.str.56 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"default_ttl\00", [20 x i8] zeroinitializer }, align 32
@ttl_max = internal global { i32, [28 x i8] } { i32 255, [28 x i8] zeroinitializer }, align 32
@label_limit = internal global { i32, [28 x i8] } { i32 1048575, [28 x i8] zeroinitializer }, align 32
@resize_platform_label_table.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@mpls_net_exit.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@mpls_net_exit.__warned.57 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 2048, i64 34525, i64 34887]
@__sancov_gen_cov_switch_values.58 = internal global [5 x i64] [i64 3, i64 16, i64 2, i64 10, i64 17]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 20]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 19]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 254]
@__sancov_gen_cov_switch_values.62 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 4, i64 5, i64 9, i64 18, i64 19, i64 26]
@__sancov_gen_cov_switch_values.63 = internal global [5 x i64] [i64 3, i64 16, i64 2, i64 10, i64 17]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 4, i64 4, i64 6]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 4294967295]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 8, i64 4, i64 6]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.70 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 4, i64 6, i64 11]
@__sancov_gen_cov_switch_values.71 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 4, i64 6]
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1734, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1742, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1760, i32 4 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1766, i32 4 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1774, i32 5 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1777, i32 5 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1789, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant [18 x i8] c"mpls_dev_notifier\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1672, i32 30 }
@___asan_gen_.96 = private unnamed_addr constant [13 x i8] c"mpls_net_ops\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 2731, i32 33 }
@___asan_gen_.103 = private unnamed_addr constant [23 x i8] c"../net/mpls/internal.h\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 189, i32 9 }
@___asan_gen_.106 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 271, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant [26 x i8] c"../include/net/addrconf.h\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 313, i32 9 }
@___asan_gen_.111 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 2771, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant [16 x i8] c"rtm_mpls_policy\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 484, i32 32 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1821, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1825, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1829, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1833, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1837, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1848, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1853, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1858, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1899, i32 4 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1920, i32 5 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1930, i32 4 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 946, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 953, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 727, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 734, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 988, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 993, i32 19 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1018, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 559, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant [16 x i8] c"table_to_family\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1679, i32 19 }
@___asan_gen_.187 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 991, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 2304, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 2317, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 2321, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 2332, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 2345, i32 4 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1219, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant [20 x i8] c"devconf_mpls_policy\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1207, i32 32 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1243, i32 4 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1316, i32 4 }
@___asan_gen_.216 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1321, i32 4 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1334, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 695, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 723, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant [15 x i8] c"mpls_iptun_ops\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 49, i32 41 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 463, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1467, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant [15 x i8] c"mpls_dev_table\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1387, i32 31 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1419, i32 31 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1389, i32 15 }
@___asan_gen_.258 = private unnamed_addr constant [11 x i8] c"mpls_table\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 2639, i32 31 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 2688, i32 43 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 2641, i32 15 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 2648, i32 15 }
@___asan_gen_.270 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 2657, i32 15 }
@___asan_gen_.273 = private unnamed_addr constant [8 x i8] c"ttl_max\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 41, i32 12 }
@___asan_gen_.276 = private unnamed_addr constant [12 x i8] c"label_limit\00", align 1
@___asan_gen_.277 = private constant [22 x i8] c"../net/mpls/af_mpls.c\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 40, i32 12 }
@llvm.compiler.used = appending global [83 x ptr] [ptr @__UNIQUE_ID_alias608, ptr @__UNIQUE_ID_description605, ptr @__UNIQUE_ID_file606, ptr @__UNIQUE_ID_license607, ptr @__exitcall_mpls_exit, ptr @__initcall__kmod_mpls_router__604_2781_mpls_init6, ptr @__ksymtab_mpls_dev_mtu, ptr @__ksymtab_mpls_output_possible, ptr @__ksymtab_mpls_pkt_too_big, ptr @__ksymtab_mpls_stats_inc_outucastpkts, ptr @__ksymtab_nla_get_labels, ptr @__ksymtab_nla_put_labels, ptr @mpls_exit, ptr @mpls_init._entry, ptr @mpls_init._entry_ptr, ptr @nla_get_labels.__msg, ptr @nla_get_labels.__msg.1, ptr @nla_get_labels.__msg.2, ptr @nla_get_labels.__msg.3, ptr @nla_get_labels.__msg.4, ptr @nla_get_labels.__msg.5, ptr @nla_get_labels.__msg.6, ptr @mpls_dev_notifier, ptr @mpls_net_ops, ptr @.str, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @rtm_mpls_policy, ptr @rtm_to_route_config.__msg, ptr @rtm_to_route_config.__msg.13, ptr @rtm_to_route_config.__msg.14, ptr @rtm_to_route_config.__msg.15, ptr @rtm_to_route_config.__msg.16, ptr @rtm_to_route_config.__msg.17, ptr @rtm_to_route_config.__msg.18, ptr @rtm_to_route_config.__msg.19, ptr @rtm_to_route_config.__msg.20, ptr @rtm_to_route_config.__msg.21, ptr @rtm_to_route_config.__msg.22, ptr @mpls_label_ok.__msg, ptr @mpls_label_ok.__msg.23, ptr @nla_get_via.__msg, ptr @nla_get_via.__msg.24, ptr @mpls_route_add.__msg, ptr @.str.25, ptr @mpls_route_add.__msg.27, ptr @.str.29, ptr @nla_put_via.table_to_family, ptr @.str.31, ptr @mpls_valid_getroute_req.__msg, ptr @mpls_valid_getroute_req.__msg.32, ptr @mpls_valid_getroute_req.__msg.33, ptr @mpls_valid_getroute_req.__msg.34, ptr @mpls_valid_getroute_req.__msg.35, ptr @mpls_netconf_valid_get_req.__msg, ptr @devconf_mpls_policy, ptr @mpls_netconf_valid_get_req.__msg.38, ptr @mpls_netconf_dump_devconf.__msg, ptr @mpls_netconf_dump_devconf.__msg.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @mpls_iptun_ops, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @mpls_add_dev.__key, ptr @.str.48, ptr @mpls_dev_table, ptr @.str.51, ptr @.str.52, ptr @mpls_table, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @ttl_max, ptr @label_limit], section "llvm.metadata"
@0 = internal global [69 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nla_get_labels.__msg to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nla_get_labels.__msg.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nla_get_labels.__msg.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nla_get_labels.__msg.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nla_get_labels.__msg.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nla_get_labels.__msg.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nla_get_labels.__msg.6 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpls_dev_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpls_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpls_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtm_mpls_policy to i32), i32 248, i32 288, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtm_to_route_config.__msg to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtm_to_route_config.__msg.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtm_to_route_config.__msg.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtm_to_route_config.__msg.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtm_to_route_config.__msg.16 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtm_to_route_config.__msg.17 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtm_to_route_config.__msg.18 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtm_to_route_config.__msg.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtm_to_route_config.__msg.20 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtm_to_route_config.__msg.21 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtm_to_route_config.__msg.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpls_label_ok.__msg to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpls_label_ok.__msg.23 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nla_get_via.__msg to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nla_get_via.__msg.24 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpls_route_add.__msg to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpls_route_add.__msg.27 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nla_put_via.table_to_family to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpls_valid_getroute_req.__msg to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpls_valid_getroute_req.__msg.32 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpls_valid_getroute_req.__msg.33 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpls_valid_getroute_req.__msg.34 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpls_valid_getroute_req.__msg.35 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpls_netconf_valid_get_req.__msg to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devconf_mpls_policy to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpls_netconf_valid_get_req.__msg.38 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpls_netconf_dump_devconf.__msg to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpls_netconf_dump_devconf.__msg.39 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpls_iptun_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpls_add_dev.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpls_dev_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpls_table to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttl_max to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @label_limit to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @mpls_output_possible(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.lhs.true

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %land.lhs.true.land.end_crit_edge, label %land.rhs

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %5 = phi i1 [ false, %land.lhs.true.land.end_crit_edge ], [ false, %entry.land.end_crit_edge ], [ %tobool.not.i, %land.rhs ]
  ret i1 %5
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mpls_dev_mtu(ptr nocapture noundef readonly %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %0 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mtu, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @mpls_pkt_too_big(ptr noundef %skb, i32 noundef %mtu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %mtu)
  %cmp.not = icmp ugt i32 %1, %mtu
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end:                                           ; preds = %entry
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %2 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %end.i.i, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.i.not = icmp eq i16 %5, 0
  br i1 %tobool.i.not, label %if.end.if.end3_crit_edge, label %land.lhs.true

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end3

land.lhs.true:                                    ; preds = %if.end
  %call1 = tail call zeroext i1 @skb_gso_validate_network_len(ptr noundef %skb, i32 noundef %mtu) #16
  br i1 %call1, label %land.lhs.true.return_crit_edge, label %land.lhs.true.if.end3_crit_edge

land.lhs.true.if.end3_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end3

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end3:                                          ; preds = %land.lhs.true.if.end3_crit_edge, %if.end.if.end3_crit_edge
  br label %return

return:                                           ; preds = %if.end3, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ true, %if.end3 ], [ false, %entry.return_crit_edge ], [ false, %land.lhs.true.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @skb_gso_validate_network_len(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mpls_stats_inc_outucastpkts(ptr noundef %dev, ptr nocapture noundef readonly %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %0 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %protocol, align 8
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i16 %1, label %entry.if.end315_crit_edge [
    i16 -30649, label %if.then
    i16 2048, label %do.body18
    i16 -31011, label %if.then51
  ]

entry.if.end315_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end315

if.then:                                          ; preds = %entry
  %mpls_ptr.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 84
  %3 = ptrtoint ptr %mpls_ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %mpls_ptr.i, align 8
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #16
  br i1 %call.i, label %if.then.mpls_dev_get.exit_crit_edge, label %lor.lhs.false.i

if.then.mpls_dev_get.exit_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %mpls_dev_get.exit

lor.lhs.false.i:                                  ; preds = %if.then
  %call2.i = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.mpls_dev_get.exit_crit_edge

lor.lhs.false.i.mpls_dev_get.exit_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mpls_dev_get.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.mpls_dev_get.exit_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.mpls_dev_get.exit_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mpls_dev_get.exit

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b10.i = load i1, ptr @mpls_dev_get.__warned, align 1
  br i1 %.b10.i, label %land.lhs.true5.i.mpls_dev_get.exit_crit_edge, label %if.then.i

land.lhs.true5.i.mpls_dev_get.exit_crit_edge:     ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mpls_dev_get.exit

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @mpls_dev_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 189, ptr noundef nonnull @.str.7) #16
  br label %mpls_dev_get.exit

mpls_dev_get.exit:                                ; preds = %if.then.i, %land.lhs.true5.i.mpls_dev_get.exit_crit_edge, %land.lhs.true.i.mpls_dev_get.exit_crit_edge, %lor.lhs.false.i.mpls_dev_get.exit_crit_edge, %if.then.mpls_dev_get.exit_crit_edge
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %mpls_dev_get.exit.if.end315_crit_edge, label %do.body

mpls_dev_get.exit.if.end315_crit_edge:            ; preds = %mpls_dev_get.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end315

do.body:                                          ; preds = %mpls_dev_get.exit
  call void @__sanitizer_cov_trace_pc() #18
  %stats = getelementptr inbounds %struct.mpls_dev, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %stats, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !207) #16
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %add = add i32 %13, %7
  %14 = inttoptr i32 %add to ptr
  tail call fastcc void @local_bh_disable()
  %syncp = getelementptr inbounds %struct.mpls_pcpu_stats, ptr %14, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp)
  %tx_packets = getelementptr inbounds %struct.mpls_link_stats, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %tx_packets, align 8
  %inc = add i64 %16, 1
  store i64 %inc, ptr %tx_packets, align 8
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %17 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len, align 4
  %conv7 = zext i32 %18 to i64
  %tx_bytes = getelementptr inbounds %struct.mpls_link_stats, ptr %14, i32 0, i32 3
  %19 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %tx_bytes, align 8
  %add9 = add i64 %20, %conv7
  store i64 %add9, ptr %tx_bytes, align 8
  %dep_map.i.i = getelementptr inbounds %struct.mpls_pcpu_stats, ptr %14, i32 0, i32 1, i32 0, i32 1
  %21 = tail call ptr @llvm.returnaddress(i32 0) #16
  %22 = ptrtoint ptr %21 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %22) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !217
  %23 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %24, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call fastcc void @local_bh_enable()
  br label %if.end315

do.body18:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @local_bh_disable()
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %25 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %nd_net.i, align 4
  %mib = getelementptr inbounds %struct.net, ptr %26, i32 0, i32 30
  %27 = ptrtoint ptr %mib to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mib, align 4
  %29 = ptrtoint ptr %28 to i32
  %30 = tail call i32 @llvm.read_register.i32(metadata !207) #16
  %and.i336 = and i32 %30, -16384
  %31 = inttoptr i32 %and.i336 to ptr
  %cpu30 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %cpu30 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cpu30, align 4
  %arrayidx31 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %33
  %34 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx31, align 4
  %add32 = add i32 %35, %29
  %36 = inttoptr i32 %add32 to ptr
  %syncp33 = getelementptr inbounds %struct.ipstats_mib, ptr %36, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp33)
  %arrayidx34 = getelementptr [37 x i64], ptr %36, i32 0, i32 5
  %37 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %arrayidx34, align 8
  %inc35 = add i64 %38, 1
  store i64 %inc35, ptr %arrayidx34, align 8
  %len36 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %39 = ptrtoint ptr %len36 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %len36, align 4
  %conv37 = zext i32 %40 to i64
  %arrayidx39 = getelementptr [37 x i64], ptr %36, i32 0, i32 6
  %41 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %arrayidx39, align 8
  %add40 = add i64 %42, %conv37
  store i64 %add40, ptr %arrayidx39, align 8
  %dep_map.i.i337 = getelementptr inbounds %struct.ipstats_mib, ptr %36, i32 0, i32 1, i32 0, i32 1
  %43 = tail call ptr @llvm.returnaddress(i32 0) #16
  %44 = ptrtoint ptr %43 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i337, i32 noundef %44) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !217
  %45 = ptrtoint ptr %syncp33 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %syncp33, align 4
  %inc.i.i.i338 = add i32 %46, 1
  store i32 %inc.i.i.i338, ptr %syncp33, align 4
  tail call fastcc void @local_bh_enable()
  br label %if.end315

if.then51:                                        ; preds = %entry
  %ip6_ptr.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 80
  %47 = ptrtoint ptr %ip6_ptr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile ptr, ptr %ip6_ptr.i, align 8
  %call.i339 = tail call zeroext i1 @lockdep_rtnl_is_held() #16
  br i1 %call.i339, label %if.then51.__in6_dev_get.exit_crit_edge, label %lor.lhs.false.i342

if.then51.__in6_dev_get.exit_crit_edge:           ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #18
  br label %__in6_dev_get.exit

lor.lhs.false.i342:                               ; preds = %if.then51
  %call2.i340 = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i340)
  %tobool.not.i341 = icmp eq i32 %call2.i340, 0
  br i1 %tobool.not.i341, label %land.lhs.true.i345, label %lor.lhs.false.i342.__in6_dev_get.exit_crit_edge

lor.lhs.false.i342.__in6_dev_get.exit_crit_edge:  ; preds = %lor.lhs.false.i342
  call void @__sanitizer_cov_trace_pc() #18
  br label %__in6_dev_get.exit

land.lhs.true.i345:                               ; preds = %lor.lhs.false.i342
  %call3.i343 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i343)
  %tobool4.not.i344 = icmp eq i32 %call3.i343, 0
  br i1 %tobool4.not.i344, label %land.lhs.true.i345.__in6_dev_get.exit_crit_edge, label %land.lhs.true5.i347

land.lhs.true.i345.__in6_dev_get.exit_crit_edge:  ; preds = %land.lhs.true.i345
  call void @__sanitizer_cov_trace_pc() #18
  br label %__in6_dev_get.exit

land.lhs.true5.i347:                              ; preds = %land.lhs.true.i345
  %.b10.i346 = load i1, ptr @__in6_dev_get.__warned, align 1
  br i1 %.b10.i346, label %land.lhs.true5.i347.__in6_dev_get.exit_crit_edge, label %if.then.i348

land.lhs.true5.i347.__in6_dev_get.exit_crit_edge: ; preds = %land.lhs.true5.i347
  call void @__sanitizer_cov_trace_pc() #18
  br label %__in6_dev_get.exit

if.then.i348:                                     ; preds = %land.lhs.true5.i347
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @__in6_dev_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 313, ptr noundef nonnull @.str.7) #16
  br label %__in6_dev_get.exit

__in6_dev_get.exit:                               ; preds = %if.then.i348, %land.lhs.true5.i347.__in6_dev_get.exit_crit_edge, %land.lhs.true.i345.__in6_dev_get.exit_crit_edge, %lor.lhs.false.i342.__in6_dev_get.exit_crit_edge, %if.then51.__in6_dev_get.exit_crit_edge
  %tobool53.not = icmp eq ptr %48, null
  br i1 %tobool53.not, label %__in6_dev_get.exit.if.end315_crit_edge, label %do.body60

__in6_dev_get.exit.if.end315_crit_edge:           ; preds = %__in6_dev_get.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end315

do.body60:                                        ; preds = %__in6_dev_get.exit
  %ipv6 = getelementptr inbounds %struct.inet6_dev, ptr %48, i32 0, i32 33, i32 1
  %49 = ptrtoint ptr %ipv6 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ipv6, align 4
  %51 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !218
  %arrayidx84 = getelementptr i64, ptr %50, i32 5
  %52 = ptrtoint ptr %arrayidx84 to i32
  %53 = tail call i32 @llvm.read_register.i32(metadata !207) #16
  %and.i349 = and i32 %53, -16384
  %54 = inttoptr i32 %and.i349 to ptr
  %cpu87 = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %cpu87 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cpu87, align 4
  %arrayidx88 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %56
  %57 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx88, align 4
  %add89 = add i32 %58, %52
  %59 = inttoptr i32 %add89 to ptr
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %59, align 8
  %add90 = add i64 %61, 1
  store i64 %add90, ptr %59, align 8
  %62 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !219
  %and.i.i = and i32 %62, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool101.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool101.not, label %if.then110, label %do.body60.do.end113_crit_edge, !prof !220

do.body60.do.end113_crit_edge:                    ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end113

if.then110:                                       ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @warn_bogus_irq_restore() #16
  br label %do.end113

do.end113:                                        ; preds = %if.then110, %do.body60.do.end113_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %51) #16, !srcloc !221
  %63 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !218
  %len137 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %64 = ptrtoint ptr %len137 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %len137, align 4
  %conv138 = zext i32 %65 to i64
  %arrayidx145 = getelementptr i64, ptr %50, i32 6
  %66 = ptrtoint ptr %arrayidx145 to i32
  %67 = ptrtoint ptr %cpu87 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %cpu87, align 4
  %arrayidx149 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %68
  %69 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx149, align 4
  %add150 = add i32 %70, %66
  %71 = inttoptr i32 %add150 to ptr
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %71, align 8
  %add151 = add i64 %73, %conv138
  store i64 %add151, ptr %71, align 8
  %74 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !219
  %and.i.i350 = and i32 %74, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i350)
  %tobool162.not = icmp eq i32 %and.i.i350, 0
  br i1 %tobool162.not, label %if.then171, label %do.end113.do.end174_crit_edge, !prof !220

do.end113.do.end174_crit_edge:                    ; preds = %do.end113
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end174

if.then171:                                       ; preds = %do.end113
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @warn_bogus_irq_restore() #16
  br label %do.end174

do.end174:                                        ; preds = %if.then171, %do.end113.do.end174_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %63) #16, !srcloc !221
  %nd_net.i351 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %75 = ptrtoint ptr %nd_net.i351 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %nd_net.i351, align 4
  %ipv6_statistics = getelementptr inbounds %struct.net, ptr %76, i32 0, i32 30, i32 1
  %77 = ptrtoint ptr %ipv6_statistics to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ipv6_statistics, align 4
  %79 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !218
  %arrayidx213 = getelementptr i64, ptr %78, i32 5
  %80 = ptrtoint ptr %arrayidx213 to i32
  %81 = tail call i32 @llvm.read_register.i32(metadata !207) #16
  %and.i352 = and i32 %81, -16384
  %82 = inttoptr i32 %and.i352 to ptr
  %cpu216 = getelementptr inbounds %struct.thread_info, ptr %82, i32 0, i32 3
  %83 = ptrtoint ptr %cpu216 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %cpu216, align 4
  %arrayidx217 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %84
  %85 = ptrtoint ptr %arrayidx217 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx217, align 4
  %add218 = add i32 %86, %80
  %87 = inttoptr i32 %add218 to ptr
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %87, align 8
  %add219 = add i64 %89, 1
  store i64 %add219, ptr %87, align 8
  %90 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !219
  %and.i.i353 = and i32 %90, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i353)
  %tobool230.not = icmp eq i32 %and.i.i353, 0
  br i1 %tobool230.not, label %if.then239, label %do.end174.do.end242_crit_edge, !prof !220

do.end174.do.end242_crit_edge:                    ; preds = %do.end174
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end242

if.then239:                                       ; preds = %do.end174
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @warn_bogus_irq_restore() #16
  br label %do.end242

do.end242:                                        ; preds = %if.then239, %do.end174.do.end242_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %79) #16, !srcloc !221
  %91 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !218
  %92 = ptrtoint ptr %len137 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %len137, align 4
  %conv267 = zext i32 %93 to i64
  %arrayidx274 = getelementptr i64, ptr %78, i32 6
  %94 = ptrtoint ptr %arrayidx274 to i32
  %95 = ptrtoint ptr %cpu216 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %cpu216, align 4
  %arrayidx278 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %96
  %97 = ptrtoint ptr %arrayidx278 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx278, align 4
  %add279 = add i32 %98, %94
  %99 = inttoptr i32 %add279 to ptr
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %99, align 8
  %add280 = add i64 %101, %conv267
  store i64 %add280, ptr %99, align 8
  %102 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !219
  %and.i.i354 = and i32 %102, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i354)
  %tobool291.not = icmp eq i32 %and.i.i354, 0
  br i1 %tobool291.not, label %if.then300, label %do.end242.do.end303_crit_edge, !prof !220

do.end242.do.end303_crit_edge:                    ; preds = %do.end242
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end303

if.then300:                                       ; preds = %do.end242
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @warn_bogus_irq_restore() #16
  br label %do.end303

do.end303:                                        ; preds = %if.then300, %do.end242.do.end303_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %91) #16, !srcloc !221
  br label %if.end315

if.end315:                                        ; preds = %do.end303, %__in6_dev_get.exit.if.end315_crit_edge, %do.body18, %do.body, %mpls_dev_get.exit.if.end315_crit_edge, %entry.if.end315_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @mpls_dev_get(ptr noundef %dev) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %mpls_ptr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 84
  %0 = ptrtoint ptr %mpls_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %mpls_ptr, align 8
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #16
  br i1 %call, label %entry.do.end8_crit_edge, label %lor.lhs.false

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end8

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %lor.lhs.false.do.end8_crit_edge

lor.lhs.false.do.end8_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end8

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b10 = load i1, ptr @mpls_dev_get.__warned, align 1
  br i1 %.b10, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @mpls_dev_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 189, ptr noundef nonnull @.str.7) #16
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %lor.lhs.false.do.end8_crit_edge, %entry.do.end8_crit_edge
  ret ptr %1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #16
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @u64_stats_update_begin(ptr noundef %syncp) unnamed_addr #5 align 64 {
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
  %1 = tail call i32 @llvm.read_register.i32(metadata !207) #16
  %and.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %4, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !222
  %5 = tail call i32 @llvm.read_register.i32(metadata !207) #16
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
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !223
  %14 = tail call i32 @llvm.read_register.i32(metadata !207) #16
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
  %18 = tail call i32 @llvm.read_register.i32(metadata !207) #16
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
  %22 = tail call i32 @llvm.read_register.i32(metadata !207) #16
  %and.i.i.i9.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %25, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !224
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
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !225
  %33 = tail call i32 @llvm.read_register.i32(metadata !207) #16
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
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !226

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 271, i32 noundef 9, ptr noundef null) #16
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %entry.__seqprop_assert.exit_crit_edge
  %37 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %38, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !227
  %dep_map.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %39 = tail call ptr @llvm.returnaddress(i32 0) #16
  %40 = ptrtoint ptr %39 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %40) #16
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nla_put_labels(ptr noundef %skb, i32 noundef %attrtype, i8 noundef zeroext %labels, ptr nocapture noundef readonly %label) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %labels to i32
  %mul = shl nuw nsw i32 %conv, 2
  %call = tail call ptr @nla_reserve(ptr noundef %skb, i32 noundef %attrtype, i32 noundef %mul) #16
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %call, i32 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %labels)
  %cmp16.not = icmp eq i8 %labels, 0
  br i1 %cmp16.not, label %if.end.cleanup_crit_edge, label %for.body.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.preheader:                               ; preds = %if.end
  %i.015 = add nsw i32 %conv, -1
  %arrayidx.peel = getelementptr %struct.mpls_shim_hdr, ptr %add.ptr.i, i32 %i.015
  %arrayidx4.peel = getelementptr i32, ptr %label, i32 %i.015
  %0 = ptrtoint ptr %arrayidx4.peel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx4.peel, align 4
  %shl.i.peel = shl i32 %1, 12
  %or2.i.peel = or i32 %shl.i.peel, 256
  %2 = ptrtoint ptr %arrayidx.peel to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or2.i.peel, ptr %arrayidx.peel, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %labels)
  %cmp.peel.not = icmp eq i8 %labels, 1
  br i1 %cmp.peel.not, label %for.body.preheader.cleanup_crit_edge, label %for.body.peel.next

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.peel.next:                               ; preds = %for.body.preheader
  %i.0.peel = add nsw i32 %conv, -2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.peel.next
  %i.018 = phi i32 [ %i.0, %for.body.for.body_crit_edge ], [ %i.0.peel, %for.body.peel.next ]
  %arrayidx = getelementptr %struct.mpls_shim_hdr, ptr %add.ptr.i, i32 %i.018
  %arrayidx4 = getelementptr i32, ptr %label, i32 %i.018
  %3 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx4, align 4
  %shl.i = shl i32 %4, 12
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %shl.i, ptr %arrayidx, align 4
  %i.0 = add nsw i32 %i.018, -1
  %cmp = icmp sgt i32 %i.018, 0
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge, !llvm.loop !228

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.body.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.body.preheader.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nla_reserve(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nla_get_labels(ptr noundef %nla, i8 noundef zeroext %max_labels, ptr nocapture noundef writeonly %labels, ptr noundef writeonly %label, ptr noundef writeonly %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %nla to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %nla, align 2
  %conv.i = zext i16 %1 to i32
  %sub.i = add nsw i32 %conv.i, -4
  %and = and i32 %conv.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %sub.i)
  %cmp = icmp ugt i32 %sub.i, 1023
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %do.body, label %if.end3

do.body:                                          ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nla_get_labels.__msg) #16
  %tobool1.not = icmp eq ptr %extack, null
  br i1 %tobool1.not, label %do.body.cleanup100_crit_edge, label %if.then2

do.body.cleanup100_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup100

if.then2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %2 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @nla_get_labels.__msg, ptr %extack, align 4
  %bad_attr = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %3 = ptrtoint ptr %bad_attr to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %nla, ptr %bad_attr, align 4
  %policy = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %4 = ptrtoint ptr %policy to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %policy, align 4
  br label %cleanup100

if.end3:                                          ; preds = %entry
  %div151 = lshr i32 %sub.i, 2
  %conv = trunc i32 %div151 to i8
  %conv6 = zext i8 %max_labels to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %div151, i32 %conv6)
  %cmp7 = icmp ugt i32 %div151, %conv6
  br i1 %cmp7, label %do.body10, label %if.end18

do.body10:                                        ; preds = %if.end3
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nla_get_labels.__msg.1) #16
  %tobool12.not = icmp eq ptr %extack, null
  br i1 %tobool12.not, label %do.body10.cleanup100_crit_edge, label %if.then13

do.body10.cleanup100_crit_edge:                   ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup100

if.then13:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #18
  %5 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @nla_get_labels.__msg.1, ptr %extack, align 4
  br label %cleanup100

if.end18:                                         ; preds = %if.end3
  %tobool19.not = icmp eq ptr %label, null
  br i1 %tobool19.not, label %if.end18.out_crit_edge, label %if.end21

if.end18.out_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end21:                                         ; preds = %if.end18
  %add.ptr.i = getelementptr i8, ptr %nla, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i)
  %cmp24159.not = icmp ult i32 %sub.i, 4
  br i1 %cmp24159.not, label %if.end21.out_crit_edge, label %if.end21.for.body_crit_edge

if.end21.for.body_crit_edge:                      ; preds = %if.end21
  br label %for.body

if.end21.out_crit_edge:                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

for.body:                                         ; preds = %sw.epilog.for.body_crit_edge, %if.end21.for.body_crit_edge
  %i.0161.in = phi i32 [ %i.0161, %sw.epilog.for.body_crit_edge ], [ %div151, %if.end21.for.body_crit_edge ]
  %bos.0.off0160 = phi i1 [ false, %sw.epilog.for.body_crit_edge ], [ true, %if.end21.for.body_crit_edge ]
  %i.0161 = add nsw i32 %i.0161.in, -1
  %add.ptr = getelementptr %struct.mpls_shim_hdr, ptr %add.ptr.i, i32 %i.0161
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr, align 4, !noalias !230
  %shr.i = lshr i32 %7, 12
  %conv.i152 = trunc i32 %7 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i152)
  %tobool26.not = icmp eq i8 %conv.i152, 0
  br i1 %tobool26.not, label %if.end38, label %do.body28

do.body28:                                        ; preds = %for.body
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nla_get_labels.__msg.2) #16
  %tobool30.not = icmp eq ptr %extack, null
  br i1 %tobool30.not, label %do.body28.cleanup100_crit_edge, label %if.then31

do.body28.cleanup100_crit_edge:                   ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup100

if.then31:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #18
  %8 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @nla_get_labels.__msg.2, ptr %extack, align 4
  %bad_attr33 = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %9 = ptrtoint ptr %bad_attr33 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %nla, ptr %bad_attr33, align 4
  %policy34 = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %10 = ptrtoint ptr %policy34 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %policy34, align 4
  br label %cleanup100

if.end38:                                         ; preds = %for.body
  %11 = and i32 %7, 3584
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool39.not = icmp eq i32 %11, 0
  br i1 %tobool39.not, label %if.end51, label %do.body41

do.body41:                                        ; preds = %if.end38
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nla_get_labels.__msg.3) #16
  %tobool43.not = icmp eq ptr %extack, null
  br i1 %tobool43.not, label %do.body41.cleanup100_crit_edge, label %if.then44

do.body41.cleanup100_crit_edge:                   ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup100

if.then44:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #18
  %12 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @nla_get_labels.__msg.3, ptr %extack, align 4
  %bad_attr46 = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %13 = ptrtoint ptr %bad_attr46 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %nla, ptr %bad_attr46, align 4
  %policy47 = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %14 = ptrtoint ptr %policy47 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %policy47, align 4
  br label %cleanup100

if.end51:                                         ; preds = %if.end38
  %15 = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %16 = icmp eq i32 %15, 0
  %cmp56.not = xor i1 %bos.0.off0160, %16
  br i1 %cmp56.not, label %if.end86, label %do.body59

do.body59:                                        ; preds = %if.end51
  %tobool60.not = icmp eq ptr %extack, null
  br i1 %tobool60.not, label %do.end66, label %do.end66.thread

do.end66:                                         ; preds = %do.body59
  br i1 %bos.0.off0160, label %do.body69, label %do.body77

do.end66.thread:                                  ; preds = %do.body59
  %bad_attr62 = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %17 = ptrtoint ptr %bad_attr62 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %nla, ptr %bad_attr62, align 4
  %policy63 = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %18 = ptrtoint ptr %policy63 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %policy63, align 4
  br i1 %bos.0.off0160, label %if.then72, label %if.then80

do.body69:                                        ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nla_get_labels.__msg.4) #16
  br label %cleanup100

if.then72:                                        ; preds = %do.end66.thread
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nla_get_labels.__msg.4) #16
  %19 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @nla_get_labels.__msg.4, ptr %extack, align 4
  br label %cleanup100

do.body77:                                        ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nla_get_labels.__msg.5) #16
  br label %cleanup100

if.then80:                                        ; preds = %do.end66.thread
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nla_get_labels.__msg.5) #16
  %20 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @nla_get_labels.__msg.5, ptr %extack, align 4
  br label %cleanup100

if.end86:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr.i)
  %cond = icmp eq i32 %shr.i, 3
  br i1 %cond, label %do.body88, label %sw.epilog

do.body88:                                        ; preds = %if.end86
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nla_get_labels.__msg.6) #16
  %tobool90.not = icmp eq ptr %extack, null
  br i1 %tobool90.not, label %do.body88.cleanup100_crit_edge, label %if.then91

do.body88.cleanup100_crit_edge:                   ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup100

if.then91:                                        ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #18
  %21 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @nla_get_labels.__msg.6, ptr %extack, align 4
  %bad_attr93 = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %22 = ptrtoint ptr %bad_attr93 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %nla, ptr %bad_attr93, align 4
  %policy94 = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %23 = ptrtoint ptr %policy94 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %policy94, align 4
  br label %cleanup100

sw.epilog:                                        ; preds = %if.end86
  %arrayidx = getelementptr i32, ptr %label, i32 %i.0161
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %shr.i, ptr %arrayidx, align 4
  %cmp24 = icmp ugt i32 %i.0161.in, 1
  br i1 %cmp24, label %sw.epilog.for.body_crit_edge, label %sw.epilog.out_crit_edge

sw.epilog.out_crit_edge:                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

out:                                              ; preds = %sw.epilog.out_crit_edge, %if.end21.out_crit_edge, %if.end18.out_crit_edge
  %25 = ptrtoint ptr %labels to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv, ptr %labels, align 1
  br label %cleanup100

cleanup100:                                       ; preds = %out, %if.then91, %do.body88.cleanup100_crit_edge, %if.then80, %do.body77, %if.then72, %do.body69, %if.then44, %do.body41.cleanup100_crit_edge, %if.then31, %do.body28.cleanup100_crit_edge, %if.then13, %do.body10.cleanup100_crit_edge, %if.then2, %do.body.cleanup100_crit_edge
  %retval.2 = phi i32 [ 0, %out ], [ -22, %if.then2 ], [ -22, %do.body.cleanup100_crit_edge ], [ -22, %if.then13 ], [ -22, %do.body10.cleanup100_crit_edge ], [ -22, %do.body88.cleanup100_crit_edge ], [ -22, %if.then91 ], [ -22, %if.then72 ], [ -22, %do.body69 ], [ -22, %if.then80 ], [ -22, %do.body77 ], [ -22, %do.body41.cleanup100_crit_edge ], [ -22, %if.then44 ], [ -22, %do.body28.cleanup100_crit_edge ], [ -22, %if.then31 ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mpls_init() #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_pernet_subsys(ptr noundef nonnull @mpls_net_ops) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @mpls_dev_notifier) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %out_unregister_pernet

if.end4:                                          ; preds = %if.end
  tail call void @dev_add_pack(ptr noundef nonnull @mpls_packet_type) #16
  tail call void @rtnl_af_register(ptr noundef nonnull @mpls_af_ops) #16
  %call5 = tail call i32 @rtnl_register_module(ptr noundef null, i32 noundef 28, i32 noundef 24, ptr noundef nonnull @mpls_rtm_newroute, ptr noundef null, i32 noundef 0) #16
  %call6 = tail call i32 @rtnl_register_module(ptr noundef null, i32 noundef 28, i32 noundef 25, ptr noundef nonnull @mpls_rtm_delroute, ptr noundef null, i32 noundef 0) #16
  %call7 = tail call i32 @rtnl_register_module(ptr noundef null, i32 noundef 28, i32 noundef 26, ptr noundef nonnull @mpls_getroute, ptr noundef nonnull @mpls_dump_routes, i32 noundef 0) #16
  %call8 = tail call i32 @rtnl_register_module(ptr noundef null, i32 noundef 28, i32 noundef 82, ptr noundef nonnull @mpls_netconf_get_devconf, ptr noundef nonnull @mpls_netconf_dump_devconf, i32 noundef 0) #16
  %call.i = tail call i32 @ip_tunnel_encap_add_ops(ptr noundef nonnull @mpls_iptun_ops, i32 noundef 3) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool10.not = icmp eq i32 %call.i, 0
  br i1 %tobool10.not, label %if.end4.out_crit_edge, label %do.end14

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

do.end14:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #19
  br label %out

out:                                              ; preds = %out_unregister_pernet, %do.end14, %if.end4.out_crit_edge, %entry.out_crit_edge
  %err.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call1, %out_unregister_pernet ], [ 0, %do.end14 ], [ 0, %if.end4.out_crit_edge ]
  ret i32 %err.0

out_unregister_pernet:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @mpls_net_ops) #16
  br label %out
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mpls_exit() #6 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @rtnl_unregister_all(i32 noundef 28) #16
  tail call void @rtnl_af_unregister(ptr noundef nonnull @mpls_af_ops) #16
  tail call void @dev_remove_pack(ptr noundef nonnull @mpls_packet_type) #16
  %call = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @mpls_dev_notifier) #16
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @mpls_net_ops) #16
  %call.i = tail call i32 @ip_tunnel_encap_del_ops(ptr noundef nonnull @mpls_iptun_ops, i32 noundef 3) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unregister_all(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_af_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_remove_pack(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_add_pack(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_af_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_register_module(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mpls_rtm_newroute(ptr nocapture noundef readonly %skb, ptr noundef %nlh, ptr noundef %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 204) #20
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @rtm_to_route_config(ptr noundef %skb, ptr noundef %nlh, ptr noundef nonnull %call7.i.i, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.out_crit_edge, label %if.end3

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end3:                                          ; preds = %if.end
  %rc_nlinfo.i = getelementptr inbounds %struct.mpls_route_config, ptr %call7.i.i, i32 0, i32 11
  %nl_net.i = getelementptr inbounds %struct.mpls_route_config, ptr %call7.i.i, i32 0, i32 11, i32 1
  %1 = ptrtoint ptr %nl_net.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %nl_net.i, align 8
  %rc_label.i = getelementptr inbounds %struct.mpls_route_config, ptr %call7.i.i, i32 0, i32 5
  %3 = ptrtoint ptr %rc_label.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rc_label.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %4)
  %cmp.i = icmp eq i32 %4, 1048576
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end3.if.end.i_crit_edge

if.end3.if.end.i_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end3
  %rc_nlflags.i = getelementptr inbounds %struct.mpls_route_config, ptr %call7.i.i, i32 0, i32 9
  %5 = ptrtoint ptr %rc_nlflags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rc_nlflags.i, align 4
  %and.i = and i32 %6, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.land.lhs.true.i146.i_crit_edge, label %if.then.i

land.lhs.true.i.land.lhs.true.i146.i_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true.i146.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %call.i.i = tail call zeroext i1 @lockdep_rtnl_is_held() #16
  br i1 %call.i.i, label %if.then.i.do.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.do.end.i.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.do.end.i.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.do.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b30.i.i = load i1, ptr @find_free_label.__warned, align 1
  br i1 %.b30.i.i, label %land.lhs.true2.i.i.do.end.i.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.do.end.i.i_crit_edge:          ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @find_free_label.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 577, ptr noundef nonnull @.str.25) #16
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i, %land.lhs.true2.i.i.do.end.i.i_crit_edge, %land.lhs.true.i.i.do.end.i.i_crit_edge, %if.then.i.do.end.i.i_crit_edge
  %platform_label4.i.i = getelementptr inbounds %struct.net, ptr %2, i32 0, i32 49, i32 3
  %7 = ptrtoint ptr %platform_label4.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %platform_label4.i.i, align 4
  %platform_labels6.i.i = getelementptr inbounds %struct.net, ptr %2, i32 0, i32 49, i32 2
  %9 = ptrtoint ptr %platform_labels6.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %platform_labels6.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %10)
  %cmp31.i.i = icmp ugt i32 %10, 16
  br i1 %cmp31.i.i, label %do.end.i.i.do.body7.i.i_crit_edge, label %do.end.i.i.land.lhs.true.i146.i_crit_edge

do.end.i.i.land.lhs.true.i146.i_crit_edge:        ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true.i146.i

do.end.i.i.do.body7.i.i_crit_edge:                ; preds = %do.end.i.i
  br label %do.body7.i.i

do.body7.i.i:                                     ; preds = %for.inc.i.i.do.body7.i.i_crit_edge, %do.end.i.i.do.body7.i.i_crit_edge
  %index.032.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.do.body7.i.i_crit_edge ], [ 16, %do.end.i.i.do.body7.i.i_crit_edge ]
  %call8.i.i = tail call zeroext i1 @lockdep_rtnl_is_held() #16
  br i1 %call8.i.i, label %do.body7.i.i.do.end17.i.i_crit_edge, label %land.lhs.true9.i.i

do.body7.i.i.do.end17.i.i_crit_edge:              ; preds = %do.body7.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end17.i.i

land.lhs.true9.i.i:                               ; preds = %do.body7.i.i
  %call10.i.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %tobool11.not.i.i = icmp eq i32 %call10.i.i, 0
  br i1 %tobool11.not.i.i, label %land.lhs.true9.i.i.do.end17.i.i_crit_edge, label %land.lhs.true12.i.i

land.lhs.true9.i.i.do.end17.i.i_crit_edge:        ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end17.i.i

land.lhs.true12.i.i:                              ; preds = %land.lhs.true9.i.i
  %.b2829.i.i = load i1, ptr @find_free_label.__warned.28, align 1
  br i1 %.b2829.i.i, label %land.lhs.true12.i.i.do.end17.i.i_crit_edge, label %if.then14.i.i

land.lhs.true12.i.i.do.end17.i.i_crit_edge:       ; preds = %land.lhs.true12.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end17.i.i

if.then14.i.i:                                    ; preds = %land.lhs.true12.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @find_free_label.__warned.28, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 581, ptr noundef nonnull @.str.25) #16
  br label %do.end17.i.i

do.end17.i.i:                                     ; preds = %if.then14.i.i, %land.lhs.true12.i.i.do.end17.i.i_crit_edge, %land.lhs.true9.i.i.do.end17.i.i_crit_edge, %do.body7.i.i.do.end17.i.i_crit_edge
  %arrayidx.i.i = getelementptr ptr, ptr %8, i32 %index.032.i.i
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool19.not.i.i = icmp eq ptr %12, null
  br i1 %tobool19.not.i.i, label %do.end17.i.i.if.end.i_crit_edge, label %for.inc.i.i

do.end17.i.i.if.end.i_crit_edge:                  ; preds = %do.end17.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

for.inc.i.i:                                      ; preds = %do.end17.i.i
  %inc.i.i = add nuw i32 %index.032.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %10
  br i1 %exitcond.not.i.i, label %for.inc.i.i.land.lhs.true.i146.i_crit_edge, label %for.inc.i.i.do.body7.i.i_crit_edge

for.inc.i.i.do.body7.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body7.i.i

for.inc.i.i.land.lhs.true.i146.i_crit_edge:       ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true.i146.i

if.end.i:                                         ; preds = %do.end17.i.i.if.end.i_crit_edge, %if.end3.if.end.i_crit_edge
  %index.0.i = phi i32 [ %4, %if.end3.if.end.i_crit_edge ], [ %index.032.i.i, %do.end17.i.i.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %index.0.i)
  %cmp.i.i = icmp ult i32 %index.0.i, 16
  br i1 %cmp.i.i, label %do.body.i.i, label %if.end.i.land.lhs.true.i146.i_crit_edge

if.end.i.land.lhs.true.i146.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true.i146.i

do.body.i.i:                                      ; preds = %if.end.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mpls_label_ok.__msg) #16
  %tobool.not.i145.i = icmp eq ptr %extack, null
  br i1 %tobool.not.i145.i, label %do.body.i.i.mpls_label_ok.exit.i_crit_edge, label %do.body.i.i.if.end14.sink.split.i.i_crit_edge

do.body.i.i.if.end14.sink.split.i.i_crit_edge:    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14.sink.split.i.i

do.body.i.i.mpls_label_ok.exit.i_crit_edge:       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mpls_label_ok.exit.i

land.lhs.true.i146.i:                             ; preds = %if.end.i.land.lhs.true.i146.i_crit_edge, %for.inc.i.i.land.lhs.true.i146.i_crit_edge, %do.end.i.i.land.lhs.true.i146.i_crit_edge, %land.lhs.true.i.land.lhs.true.i146.i_crit_edge
  %index.0158.i = phi i32 [ %index.0.i, %if.end.i.land.lhs.true.i146.i_crit_edge ], [ 1048576, %do.end.i.i.land.lhs.true.i146.i_crit_edge ], [ 1048576, %land.lhs.true.i.land.lhs.true.i146.i_crit_edge ], [ 1048576, %for.inc.i.i.land.lhs.true.i146.i_crit_edge ]
  %platform_labels.i.i = getelementptr inbounds %struct.net, ptr %2, i32 0, i32 49, i32 2
  %13 = ptrtoint ptr %platform_labels.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %platform_labels.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %index.0158.i, i32 %14)
  %cmp4.not.i.i = icmp ult i32 %index.0158.i, %14
  br i1 %cmp4.not.i.i, label %land.lhs.true.i146.i.mpls_label_ok.exit.i_crit_edge, label %do.body6.i.i

land.lhs.true.i146.i.mpls_label_ok.exit.i_crit_edge: ; preds = %land.lhs.true.i146.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mpls_label_ok.exit.i

do.body6.i.i:                                     ; preds = %land.lhs.true.i146.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mpls_label_ok.__msg.23) #16
  %tobool8.not.i.i = icmp eq ptr %extack, null
  br i1 %tobool8.not.i.i, label %do.body6.i.i.mpls_label_ok.exit.i_crit_edge, label %do.body6.i.i.if.end14.sink.split.i.i_crit_edge

do.body6.i.i.if.end14.sink.split.i.i_crit_edge:   ; preds = %do.body6.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14.sink.split.i.i

do.body6.i.i.mpls_label_ok.exit.i_crit_edge:      ; preds = %do.body6.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mpls_label_ok.exit.i

if.end14.sink.split.i.i:                          ; preds = %do.body6.i.i.if.end14.sink.split.i.i_crit_edge, %do.body.i.i.if.end14.sink.split.i.i_crit_edge
  %index.0156.i = phi i32 [ %index.0.i, %do.body.i.i.if.end14.sink.split.i.i_crit_edge ], [ %index.0158.i, %do.body6.i.i.if.end14.sink.split.i.i_crit_edge ]
  %mpls_label_ok.__msg.sink.i.i = phi ptr [ @mpls_label_ok.__msg, %do.body.i.i.if.end14.sink.split.i.i_crit_edge ], [ @mpls_label_ok.__msg.23, %do.body6.i.i.if.end14.sink.split.i.i_crit_edge ]
  %15 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %mpls_label_ok.__msg.sink.i.i, ptr %extack, align 4
  br label %mpls_label_ok.exit.i

mpls_label_ok.exit.i:                             ; preds = %if.end14.sink.split.i.i, %do.body6.i.i.mpls_label_ok.exit.i_crit_edge, %land.lhs.true.i146.i.mpls_label_ok.exit.i_crit_edge, %do.body.i.i.mpls_label_ok.exit.i_crit_edge
  %index.0157.i = phi i32 [ %index.0158.i, %land.lhs.true.i146.i.mpls_label_ok.exit.i_crit_edge ], [ %index.0158.i, %do.body6.i.i.mpls_label_ok.exit.i_crit_edge ], [ %index.0.i, %do.body.i.i.mpls_label_ok.exit.i_crit_edge ], [ %index.0156.i, %if.end14.sink.split.i.i ]
  %is_ok.1.off0.i.i = phi i1 [ true, %land.lhs.true.i146.i.mpls_label_ok.exit.i_crit_edge ], [ false, %do.body6.i.i.mpls_label_ok.exit.i_crit_edge ], [ false, %do.body.i.i.mpls_label_ok.exit.i_crit_edge ], [ false, %if.end14.sink.split.i.i ]
  %platform_labels16.i.i = getelementptr inbounds %struct.net, ptr %2, i32 0, i32 49, i32 2
  %16 = ptrtoint ptr %platform_labels16.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %platform_labels16.i.i, align 4
  %18 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %index.0157.i, i32 %17) #16, !srcloc !233
  %and.i.i = and i32 %18, %index.0157.i
  br i1 %is_ok.1.off0.i.i, label %if.end3.i, label %mpls_label_ok.exit.i.out_crit_edge

mpls_label_ok.exit.i.out_crit_edge:               ; preds = %mpls_label_ok.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end3.i:                                        ; preds = %mpls_label_ok.exit.i
  %rc_nlflags4.i = getelementptr inbounds %struct.mpls_route_config, ptr %call7.i.i, i32 0, i32 9
  %19 = ptrtoint ptr %rc_nlflags4.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rc_nlflags4.i, align 4
  %and5.i = and i32 %20, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %if.end11.i, label %do.body.i

do.body.i:                                        ; preds = %if.end3.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mpls_route_add.__msg) #16
  %tobool8.not.i = icmp eq ptr %extack, null
  br i1 %tobool8.not.i, label %do.body.i.out_crit_edge, label %if.then9.i

do.body.i.out_crit_edge:                          ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %21 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @mpls_route_add.__msg, ptr %extack, align 4
  br label %out

if.end11.i:                                       ; preds = %if.end3.i
  %call13.i = tail call zeroext i1 @lockdep_rtnl_is_held() #16
  br i1 %call13.i, label %if.end11.i.do.end22.i_crit_edge, label %land.lhs.true14.i

if.end11.i.do.end22.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end22.i

land.lhs.true14.i:                                ; preds = %if.end11.i
  %call15.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %land.lhs.true14.i.do.end22.i_crit_edge, label %land.lhs.true17.i

land.lhs.true14.i.do.end22.i_crit_edge:           ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end22.i

land.lhs.true17.i:                                ; preds = %land.lhs.true14.i
  %.b142.i = load i1, ptr @mpls_route_add.__warned, align 1
  br i1 %.b142.i, label %land.lhs.true17.i.do.end22.i_crit_edge, label %if.then19.i

land.lhs.true17.i.do.end22.i_crit_edge:           ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end22.i

if.then19.i:                                      ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @mpls_route_add.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 993, ptr noundef nonnull @.str.25) #16
  br label %do.end22.i

do.end22.i:                                       ; preds = %if.then19.i, %land.lhs.true17.i.do.end22.i_crit_edge, %land.lhs.true14.i.do.end22.i_crit_edge, %if.end11.i.do.end22.i_crit_edge
  %platform_label23.i = getelementptr inbounds %struct.net, ptr %2, i32 0, i32 49, i32 3
  %22 = ptrtoint ptr %platform_label23.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %platform_label23.i, align 4
  %call25.i = tail call zeroext i1 @lockdep_rtnl_is_held() #16
  br i1 %call25.i, label %do.end22.i.do.end34.i_crit_edge, label %land.lhs.true26.i

do.end22.i.do.end34.i_crit_edge:                  ; preds = %do.end22.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end34.i

land.lhs.true26.i:                                ; preds = %do.end22.i
  %call27.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %land.lhs.true26.i.do.end34.i_crit_edge, label %land.lhs.true29.i

land.lhs.true26.i.do.end34.i_crit_edge:           ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end34.i

land.lhs.true29.i:                                ; preds = %land.lhs.true26.i
  %.b140141.i = load i1, ptr @mpls_route_add.__warned.26, align 1
  br i1 %.b140141.i, label %land.lhs.true29.i.do.end34.i_crit_edge, label %if.then31.i

land.lhs.true29.i.do.end34.i_crit_edge:           ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end34.i

if.then31.i:                                      ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @mpls_route_add.__warned.26, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 994, ptr noundef nonnull @.str.25) #16
  br label %do.end34.i

do.end34.i:                                       ; preds = %if.then31.i, %land.lhs.true29.i.do.end34.i_crit_edge, %land.lhs.true26.i.do.end34.i_crit_edge, %do.end22.i.do.end34.i_crit_edge
  %arrayidx.i = getelementptr ptr, ptr %23, i32 %and.i.i
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i, align 4
  %26 = ptrtoint ptr %rc_nlflags4.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rc_nlflags4.i, align 4
  %and37.i = and i32 %27, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.i)
  %tobool38.not.i = icmp eq i32 %and37.i, 0
  %tobool40.not.i = icmp eq ptr %25, null
  %or.cond.i = select i1 %tobool38.not.i, i1 true, i1 %tobool40.not.i
  br i1 %or.cond.i, label %if.end42.i, label %do.end34.i.out_crit_edge

do.end34.i.out_crit_edge:                         ; preds = %do.end34.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end42.i:                                       ; preds = %do.end34.i
  %and44.i = and i32 %27, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i)
  %tobool45.not.i = icmp ne i32 %and44.i, 0
  %or.cond143.i = select i1 %tobool45.not.i, i1 true, i1 %tobool40.not.i
  br i1 %or.cond143.i, label %if.end49.i, label %if.end42.i.out_crit_edge

if.end42.i.out_crit_edge:                         ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end49.i:                                       ; preds = %if.end42.i
  %and51.i = and i32 %27, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51.i)
  %tobool52.not.i = icmp eq i32 %and51.i, 0
  %or.cond144.i = select i1 %tobool52.not.i, i1 %tobool40.not.i, i1 false
  br i1 %or.cond144.i, label %if.end49.i.out_crit_edge, label %if.end56.i

if.end49.i.out_crit_edge:                         ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end56.i:                                       ; preds = %if.end49.i
  %rc_mp.i = getelementptr inbounds %struct.mpls_route_config, ptr %call7.i.i, i32 0, i32 12
  %28 = ptrtoint ptr %rc_mp.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rc_mp.i, align 4
  %tobool57.not.i = icmp eq ptr %29, null
  br i1 %tobool57.not.i, label %if.end62.thread.i, label %if.end62.i

if.end62.thread.i:                                ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #18
  %rc_via_alen61.i = getelementptr inbounds %struct.mpls_route_config, ptr %call7.i.i, i32 0, i32 3
  %30 = ptrtoint ptr %rc_via_alen61.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %rc_via_alen61.i, align 1
  %rc_output_labels.i = getelementptr inbounds %struct.mpls_route_config, ptr %call7.i.i, i32 0, i32 7
  %32 = ptrtoint ptr %rc_output_labels.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %rc_output_labels.i, align 1
  br label %if.end74.i

if.end62.i:                                       ; preds = %if.end56.i
  %rc_mp_len.i = getelementptr inbounds %struct.mpls_route_config, ptr %call7.i.i, i32 0, i32 13
  %34 = ptrtoint ptr %rc_mp_len.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rc_mp_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %35)
  %cmp.i29.i = icmp sgt i32 %35, 7
  br i1 %cmp.i29.i, label %if.end62.i.land.lhs.true.i.i55_crit_edge, label %if.end62.i.do.body66.i_crit_edge

if.end62.i.do.body66.i_crit_edge:                 ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body66.i

if.end62.i.land.lhs.true.i.i55_crit_edge:         ; preds = %if.end62.i
  br label %land.lhs.true.i.i55

land.lhs.true.i.i55:                              ; preds = %cleanup.i.land.lhs.true.i.i55_crit_edge, %if.end62.i.land.lhs.true.i.i55_crit_edge
  %max_via_alen.i.0 = phi i8 [ %max_via_alen.i.1, %cleanup.i.land.lhs.true.i.i55_crit_edge ], [ 0, %if.end62.i.land.lhs.true.i.i55_crit_edge ]
  %max_labels.i.0 = phi i8 [ %44, %cleanup.i.land.lhs.true.i.i55_crit_edge ], [ 0, %if.end62.i.land.lhs.true.i.i55_crit_edge ]
  %rtnh.addr.032.i = phi ptr [ %add.ptr.i11.i, %cleanup.i.land.lhs.true.i.i55_crit_edge ], [ %29, %if.end62.i.land.lhs.true.i.i55_crit_edge ]
  %nhs.031.i = phi i8 [ %inc.i64, %cleanup.i.land.lhs.true.i.i55_crit_edge ], [ 0, %if.end62.i.land.lhs.true.i.i55_crit_edge ]
  %remaining.030.i = phi i32 [ %sub1.i.i65, %cleanup.i.land.lhs.true.i.i55_crit_edge ], [ %35, %if.end62.i.land.lhs.true.i.i55_crit_edge ]
  %36 = ptrtoint ptr %rtnh.addr.032.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %rtnh.addr.032.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %37)
  %cmp1.i.i51 = icmp ult i16 %37, 8
  %conv.i.i52 = zext i16 %37 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %remaining.030.i, i32 %conv.i.i52)
  %cmp5.i.not.i53 = icmp ult i32 %remaining.030.i, %conv.i.i52
  %or.cond.i54 = select i1 %cmp1.i.i51, i1 true, i1 %cmp5.i.not.i53
  br i1 %or.cond.i54, label %land.lhs.true.i.i55.do.body66.i_crit_edge, label %while.body.i

land.lhs.true.i.i55.do.body66.i_crit_edge:        ; preds = %land.lhs.true.i.i55
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body66.i

while.body.i:                                     ; preds = %land.lhs.true.i.i55
  %add.ptr.i.i56 = getelementptr i8, ptr %rtnh.addr.032.i, i32 8
  %sub.i.i57 = add nsw i32 %conv.i.i52, -8
  %call3.i = tail call ptr @nla_find(ptr noundef %add.ptr.i.i56, i32 noundef %sub.i.i57, i32 noundef 18) #16
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %while.body.i.if.end17.i_crit_edge, label %land.lhs.true.i58

while.body.i.if.end17.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end17.i

land.lhs.true.i58:                                ; preds = %while.body.i
  %38 = ptrtoint ptr %call3.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %call3.i, align 2
  %conv.i2.i = zext i16 %39 to i32
  %40 = and i32 %conv.i2.i, 65534
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %40)
  %cmp.not.i = icmp ne i32 %40, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 39, i16 %39)
  %cmp7.i = icmp ult i16 %39, 39
  %or.cond22.i = select i1 %cmp.not.i, i1 %cmp7.i, i1 false
  br i1 %or.cond22.i, label %if.then8.i, label %land.lhs.true.i58.if.end17.i_crit_edge

land.lhs.true.i58.if.end17.i_crit_edge:           ; preds = %land.lhs.true.i58
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end17.i

if.then8.i:                                       ; preds = %land.lhs.true.i58
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i = add nuw nsw i32 %conv.i2.i, 65530
  %conv10.i = zext i8 %max_via_alen.i.0 to i32
  %conv11.i = and i32 %sub.i, 65535
  %41 = tail call i32 @llvm.umax.i32(i32 %conv11.i, i32 %conv10.i) #16
  %conv16.i = trunc i32 %41 to i8
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then8.i, %land.lhs.true.i58.if.end17.i_crit_edge, %while.body.i.if.end17.i_crit_edge
  %max_via_alen.i.1 = phi i8 [ %max_via_alen.i.0, %while.body.i.if.end17.i_crit_edge ], [ %conv16.i, %if.then8.i ], [ %max_via_alen.i.0, %land.lhs.true.i58.if.end17.i_crit_edge ]
  %call18.i = tail call ptr @nla_find(ptr noundef %add.ptr.i.i56, i32 noundef %sub.i.i57, i32 noundef 19) #16
  %tobool19.not.i = icmp eq ptr %call18.i, null
  br i1 %tobool19.not.i, label %if.end17.i.if.end25.i_crit_edge, label %land.lhs.true20.i

if.end17.i.if.end25.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end25.i

land.lhs.true20.i:                                ; preds = %if.end17.i
  %42 = ptrtoint ptr %call18.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %call18.i, align 2
  %conv.i.i.i59 = zext i16 %43 to i32
  %sub.i.i.i60 = add nsw i32 %conv.i.i.i59, -4
  %and.i.i61 = and i32 %conv.i.i.i59, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i61)
  %tobool.not.i.i62 = icmp ne i32 %and.i.i61, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %sub.i.i.i60)
  %cmp.i6.i = icmp ugt i32 %sub.i.i.i60, 1023
  %or.cond.i.i = or i1 %tobool.not.i.i62, %cmp.i6.i
  br i1 %or.cond.i.i, label %land.lhs.true20.i.do.body66.i.sink.split_crit_edge, label %if.end3.i.i

land.lhs.true20.i.do.body66.i.sink.split_crit_edge: ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body66.i.sink.split

if.end3.i.i:                                      ; preds = %land.lhs.true20.i
  %div151.i.i = lshr i32 %sub.i.i.i60, 2
  %conv.i7.i = trunc i32 %div151.i.i to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 123, i32 %sub.i.i.i60)
  %cmp7.i.i = icmp ugt i32 %sub.i.i.i60, 123
  br i1 %cmp7.i.i, label %if.end3.i.i.do.body66.i.sink.split_crit_edge, label %if.end3.i.i.if.end25.i_crit_edge

if.end3.i.i.if.end25.i_crit_edge:                 ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end25.i

if.end3.i.i.do.body66.i.sink.split_crit_edge:     ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body66.i.sink.split

if.end25.i:                                       ; preds = %if.end3.i.i.if.end25.i_crit_edge, %if.end17.i.if.end25.i_crit_edge
  %n_labels.1.i = phi i8 [ 0, %if.end17.i.if.end25.i_crit_edge ], [ %conv.i7.i, %if.end3.i.i.if.end25.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %nhs.031.i)
  %cmp39.i = icmp eq i8 %nhs.031.i, -1
  br i1 %cmp39.i, label %if.end25.i.do.body66.i_crit_edge, label %cleanup.i

if.end25.i.do.body66.i_crit_edge:                 ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body66.i

cleanup.i:                                        ; preds = %if.end25.i
  %44 = tail call i8 @llvm.umax.i8(i8 %max_labels.i.0, i8 %n_labels.1.i) #16
  %inc.i64 = add nuw i8 %nhs.031.i, 1
  %45 = ptrtoint ptr %rtnh.addr.032.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %rtnh.addr.032.i, align 4
  %conv.i8.i = zext i16 %46 to i32
  %sub.i9.i = add nuw nsw i32 %conv.i8.i, 3
  %and.i10.i = and i32 %sub.i9.i, 131068
  %sub1.i.i65 = sub nsw i32 %remaining.030.i, %and.i10.i
  %add.ptr.i11.i = getelementptr i8, ptr %rtnh.addr.032.i, i32 %and.i10.i
  %cmp.i.i66 = icmp sgt i32 %sub1.i.i65, 7
  br i1 %cmp.i.i66, label %cleanup.i.land.lhs.true.i.i55_crit_edge, label %while.end.i

cleanup.i.land.lhs.true.i.i55_crit_edge:          ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true.i.i55

while.end.i:                                      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub1.i.i65)
  %cmp47.i = icmp sgt i32 %sub1.i.i65, 0
  br i1 %cmp47.i, label %while.end.i.do.body66.i_crit_edge, label %while.end.i.if.end74.i_crit_edge

while.end.i.if.end74.i_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end74.i

while.end.i.do.body66.i_crit_edge:                ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body66.i

do.body66.i.sink.split:                           ; preds = %if.end3.i.i.do.body66.i.sink.split_crit_edge, %land.lhs.true20.i.do.body66.i.sink.split_crit_edge
  %nla_get_labels.__msg.1.sink = phi ptr [ @nla_get_labels.__msg, %land.lhs.true20.i.do.body66.i.sink.split_crit_edge ], [ @nla_get_labels.__msg.1, %if.end3.i.i.do.body66.i.sink.split_crit_edge ]
  tail call void @do_trace_netlink_extack(ptr noundef nonnull %nla_get_labels.__msg.1.sink) #16
  br label %do.body66.i

do.body66.i:                                      ; preds = %do.body66.i.sink.split, %while.end.i.do.body66.i_crit_edge, %if.end25.i.do.body66.i_crit_edge, %land.lhs.true.i.i55.do.body66.i_crit_edge, %if.end62.i.do.body66.i_crit_edge
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mpls_route_add.__msg.27) #16
  %tobool68.not.i = icmp eq ptr %extack, null
  br i1 %tobool68.not.i, label %do.body66.i.out_crit_edge, label %if.then69.i

do.body66.i.out_crit_edge:                        ; preds = %do.body66.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then69.i:                                      ; preds = %do.body66.i
  call void @__sanitizer_cov_trace_pc() #18
  %47 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @mpls_route_add.__msg.27, ptr %extack, align 4
  br label %out

if.end74.i:                                       ; preds = %while.end.i.if.end74.i_crit_edge, %if.end62.thread.i
  %max_via_alen.i.4 = phi i8 [ %31, %if.end62.thread.i ], [ %max_via_alen.i.1, %while.end.i.if.end74.i_crit_edge ]
  %max_labels.i.3 = phi i8 [ %33, %if.end62.thread.i ], [ %44, %while.end.i.if.end74.i_crit_edge ]
  %nhs.0161.i = phi i8 [ 1, %if.end62.thread.i ], [ %inc.i64, %while.end.i.if.end74.i_crit_edge ]
  %mul.i = shl i8 %max_labels.i.3, 2
  %add1.i = add i8 %mul.i, 15
  %and.i42 = and i8 %add1.i, -4
  %48 = add i8 %max_via_alen.i.4, 3
  %49 = and i8 %48, -4
  %conv6.i = add i8 %and.i42, %49
  %conv7.i = zext i8 %nhs.0161.i to i32
  %conv8.i = zext i8 %conv6.i to i32
  %mul9.i = mul nuw nsw i32 %conv8.i, %conv7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4076, i32 %mul9.i)
  %cmp.i43 = icmp ugt i32 %mul9.i, 4076
  br i1 %cmp.i43, label %if.end74.i.if.then77.i_crit_edge, label %if.end8.i.i.i

if.end74.i.if.then77.i_crit_edge:                 ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then77.i

if.end8.i.i.i:                                    ; preds = %if.end74.i
  %add10.i = add nuw nsw i32 %mul9.i, 20
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add10.i, i32 noundef 3520) #21
  %tobool.not.i45 = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i45, label %if.end8.i.i.i.if.then77.i_crit_edge, label %mpls_rt_alloc.exit

if.end8.i.i.i.if.then77.i_crit_edge:              ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then77.i

mpls_rt_alloc.exit:                               ; preds = %if.end8.i.i.i
  %rt_nhn.i46 = getelementptr inbounds %struct.mpls_route, ptr %call9.i.i.i, i32 0, i32 5
  %50 = ptrtoint ptr %rt_nhn.i46 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %nhs.0161.i, ptr %rt_nhn.i46, align 4
  %rt_nhn_alive.i47 = getelementptr inbounds %struct.mpls_route, ptr %call9.i.i.i, i32 0, i32 6
  %51 = ptrtoint ptr %rt_nhn_alive.i47 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %nhs.0161.i, ptr %rt_nhn_alive.i47, align 1
  %rt_nh_size.i48 = getelementptr inbounds %struct.mpls_route, ptr %call9.i.i.i, i32 0, i32 7
  %52 = ptrtoint ptr %rt_nh_size.i48 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv6.i, ptr %rt_nh_size.i48, align 2
  %rt_via_offset.i = getelementptr inbounds %struct.mpls_route, ptr %call9.i.i.i, i32 0, i32 8
  %53 = ptrtoint ptr %rt_via_offset.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %and.i42, ptr %rt_via_offset.i, align 1
  %cmp.i147.i = icmp ugt ptr %call9.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i147.i, label %mpls_rt_alloc.exit.if.then77.i_crit_edge, label %if.end79.i

mpls_rt_alloc.exit.if.then77.i_crit_edge:         ; preds = %mpls_rt_alloc.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then77.i

if.then77.i:                                      ; preds = %mpls_rt_alloc.exit.if.then77.i_crit_edge, %if.end8.i.i.i.if.then77.i_crit_edge, %if.end74.i.if.then77.i_crit_edge
  %retval.0.i5077 = phi ptr [ %call9.i.i.i, %mpls_rt_alloc.exit.if.then77.i_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end8.i.i.i.if.then77.i_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end74.i.if.then77.i_crit_edge ]
  %54 = ptrtoint ptr %retval.0.i5077 to i32
  br label %out

if.end79.i:                                       ; preds = %mpls_rt_alloc.exit
  %55 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %call7.i.i, align 8
  %conv80.i = trunc i32 %56 to i8
  %rt_protocol.i = getelementptr inbounds %struct.mpls_route, ptr %call9.i.i.i, i32 0, i32 1
  %57 = ptrtoint ptr %rt_protocol.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv80.i, ptr %rt_protocol.i, align 8
  %rc_payload_type.i = getelementptr inbounds %struct.mpls_route_config, ptr %call7.i.i, i32 0, i32 10
  %58 = ptrtoint ptr %rc_payload_type.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %rc_payload_type.i, align 8
  %conv81.i = trunc i32 %59 to i8
  %rt_payload_type.i = getelementptr inbounds %struct.mpls_route, ptr %call9.i.i.i, i32 0, i32 2
  %60 = ptrtoint ptr %rt_payload_type.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv81.i, ptr %rt_payload_type.i, align 1
  %rc_ttl_propagate.i = getelementptr inbounds %struct.mpls_route_config, ptr %call7.i.i, i32 0, i32 6
  %61 = ptrtoint ptr %rc_ttl_propagate.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %rc_ttl_propagate.i, align 8
  %rt_ttl_propagate.i = getelementptr inbounds %struct.mpls_route, ptr %call9.i.i.i, i32 0, i32 4
  %63 = ptrtoint ptr %rt_ttl_propagate.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %rt_ttl_propagate.i, align 1
  %64 = ptrtoint ptr %rc_mp.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %rc_mp.i, align 4
  %tobool83.not.i = icmp eq ptr %65, null
  br i1 %tobool83.not.i, label %if.else86.i, label %if.then84.i

if.then84.i:                                      ; preds = %if.end79.i
  %66 = ptrtoint ptr %rt_nhn.i46 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %rt_nhn.i46, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %cmp100.not.i = icmp eq i8 %67, 0
  br i1 %cmp100.not.i, label %if.then84.i.cleanup.cont29.i_crit_edge, label %for.body.lr.ph.i23

if.then84.i.cleanup.cont29.i_crit_edge:           ; preds = %if.then84.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.cont29.i

for.body.lr.ph.i23:                               ; preds = %if.then84.i
  %rt_nh.i19 = getelementptr inbounds %struct.mpls_route, ptr %call9.i.i.i, i32 0, i32 10
  %rc_mp_len.i20 = getelementptr inbounds %struct.mpls_route_config, ptr %call7.i.i, i32 0, i32 13
  %68 = ptrtoint ptr %rc_mp_len.i20 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %rc_mp_len.i20, align 8
  br label %for.body.i25

for.body.i25:                                     ; preds = %for.inc.i.for.body.i25_crit_edge, %for.body.lr.ph.i23
  %nh.0107.i = phi ptr [ %rt_nh.i19, %for.body.lr.ph.i23 ], [ %add.ptr.i, %for.inc.i.for.body.i25_crit_edge ]
  %nhsel.0106.i = phi i32 [ 0, %for.body.lr.ph.i23 ], [ %inc25.i, %for.inc.i.for.body.i25_crit_edge ]
  %nhs.0105.i = phi i8 [ 0, %for.body.lr.ph.i23 ], [ %inc.i38, %for.inc.i.for.body.i25_crit_edge ]
  %rtnh.0102.i = phi ptr [ %65, %for.body.lr.ph.i23 ], [ %add.ptr.i63.i, %for.inc.i.for.body.i25_crit_edge ]
  %remaining.0101.i = phi i32 [ %69, %for.body.lr.ph.i23 ], [ %sub1.i.i, %for.inc.i.for.body.i25_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %remaining.0101.i)
  %cmp.i.i24 = icmp sgt i32 %remaining.0101.i, 7
  br i1 %cmp.i.i24, label %land.lhs.true.i.i28, label %for.body.i25.do.end.i149.i_crit_edge

for.body.i25.do.end.i149.i_crit_edge:             ; preds = %for.body.i25
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i149.i

land.lhs.true.i.i28:                              ; preds = %for.body.i25
  %70 = ptrtoint ptr %rtnh.0102.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %rtnh.0102.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %71)
  %cmp1.i.i = icmp ult i16 %71, 8
  %conv.i.i26 = zext i16 %71 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %remaining.0101.i, i32 %conv.i.i26)
  %cmp5.i.not.i = icmp ult i32 %remaining.0101.i, %conv.i.i26
  %or.cond.i27 = select i1 %cmp1.i.i, i1 true, i1 %cmp5.i.not.i
  br i1 %or.cond.i27, label %land.lhs.true.i.i28.do.end.i149.i_crit_edge, label %if.end.i29

land.lhs.true.i.i28.do.end.i149.i_crit_edge:      ; preds = %land.lhs.true.i.i28
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i149.i

if.end.i29:                                       ; preds = %land.lhs.true.i.i28
  %rtnh_hops.i = getelementptr inbounds %struct.rtnexthop, ptr %rtnh.0102.i, i32 0, i32 2
  %72 = ptrtoint ptr %rtnh_hops.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %rtnh_hops.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool3.not.i = icmp eq i8 %73, 0
  br i1 %tobool3.not.i, label %lor.lhs.false.i, label %if.end.i29.do.end.i149.i_crit_edge

if.end.i29.do.end.i149.i_crit_edge:               ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i149.i

lor.lhs.false.i:                                  ; preds = %if.end.i29
  %rtnh_flags.i = getelementptr inbounds %struct.rtnexthop, ptr %rtnh.0102.i, i32 0, i32 1
  %74 = ptrtoint ptr %rtnh_flags.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %rtnh_flags.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool5.not.i = icmp eq i8 %75, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %lor.lhs.false.i.do.end.i149.i_crit_edge

lor.lhs.false.i.do.end.i149.i_crit_edge:          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i149.i

if.end7.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %71)
  %cmp9.i = icmp ugt i16 %71, 8
  br i1 %cmp9.i, label %if.end15.i, label %if.end15.thread.i

if.end15.i:                                       ; preds = %if.end7.i
  %sub.i.i = add nsw i32 %conv.i.i26, -8
  %add.ptr.i.i30 = getelementptr i8, ptr %rtnh.0102.i, i32 8
  %call13.i31 = tail call ptr @nla_find(ptr noundef %add.ptr.i.i30, i32 noundef %sub.i.i, i32 noundef 18) #16
  %call14.i = tail call ptr @nla_find(ptr noundef %add.ptr.i.i30, i32 noundef %sub.i.i, i32 noundef 19) #16
  %76 = ptrtoint ptr %nl_net.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %nl_net.i, align 8
  %rtnh_ifindex.i = getelementptr inbounds %struct.rtnexthop, ptr %rtnh.0102.i, i32 0, i32 3
  %78 = ptrtoint ptr %rtnh_ifindex.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %rtnh_ifindex.i, align 4
  %tobool.not.i.i32 = icmp eq ptr %nh.0107.i, null
  br i1 %tobool.not.i.i32, label %if.end15.i.do.end.i149.i_crit_edge, label %if.end.i.i

if.end15.i.do.end.i149.i_crit_edge:               ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i149.i

if.end15.thread.i:                                ; preds = %if.end7.i
  %80 = ptrtoint ptr %nl_net.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %nl_net.i, align 8
  %rtnh_ifindex69.i = getelementptr inbounds %struct.rtnexthop, ptr %rtnh.0102.i, i32 0, i32 3
  %82 = ptrtoint ptr %rtnh_ifindex69.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %rtnh_ifindex69.i, align 4
  %tobool.not.i70.i = icmp eq ptr %nh.0107.i, null
  br i1 %tobool.not.i70.i, label %if.end15.thread.i.do.end.i149.i_crit_edge, label %if.end15.thread.i.if.else.i.i_crit_edge

if.end15.thread.i.if.else.i.i_crit_edge:          ; preds = %if.end15.thread.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else.i.i

if.end15.thread.i.do.end.i149.i_crit_edge:        ; preds = %if.end15.thread.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i149.i

if.end.i.i:                                       ; preds = %if.end15.i
  %tobool1.not.i.i = icmp eq ptr %call14.i, null
  br i1 %tobool1.not.i.i, label %if.end.i.i.if.end6.i.i_crit_edge, label %if.then2.i.i

if.end.i.i.if.end6.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  %nh_labels.i.i = getelementptr inbounds %struct.mpls_nh, ptr %nh.0107.i, i32 0, i32 2
  %nh_label.i.i = getelementptr inbounds %struct.mpls_nh, ptr %nh.0107.i, i32 0, i32 6
  %call.i.i33 = tail call i32 @nla_get_labels(ptr noundef nonnull %call14.i, i8 noundef zeroext %max_labels.i.3, ptr noundef %nh_labels.i.i, ptr noundef %nh_label.i.i, ptr noundef %extack) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i33)
  %tobool3.not.i.i = icmp eq i32 %call.i.i33, 0
  br i1 %tobool3.not.i.i, label %if.then2.i.i.if.end6.i.i_crit_edge, label %if.then2.i.i.do.end.i149.i_crit_edge

if.then2.i.i.do.end.i149.i_crit_edge:             ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i149.i

if.then2.i.i.if.end6.i.i_crit_edge:               ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6.i.i

if.end6.i.i:                                      ; preds = %if.then2.i.i.if.end6.i.i_crit_edge, %if.end.i.i.if.end6.i.i_crit_edge
  %tobool7.not.i.i = icmp eq ptr %call13.i31, null
  br i1 %tobool7.not.i.i, label %if.end6.i.i.if.else.i.i_crit_edge, label %if.then8.i.i

if.end6.i.i.if.else.i.i_crit_edge:                ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else.i.i

if.then8.i.i:                                     ; preds = %if.end6.i.i
  %nh_via_alen.i.i = getelementptr inbounds %struct.mpls_nh, ptr %nh.0107.i, i32 0, i32 3
  %nh_via_table.i.i = getelementptr inbounds %struct.mpls_nh, ptr %nh.0107.i, i32 0, i32 4
  %84 = ptrtoint ptr %rt_via_offset.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %rt_via_offset.i, align 1
  %conv.i.i.i = zext i8 %85 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %nh.0107.i, i32 %conv.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %call13.i31, i32 4
  %86 = ptrtoint ptr %call13.i31 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %call13.i31, align 2
  %conv.i.i.i.i = zext i16 %87 to i32
  %88 = and i32 %conv.i.i.i.i, 65534
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %88)
  %cmp.i.i.i = icmp eq i32 %88, 4
  br i1 %cmp.i.i.i, label %do.body.i.i.i, label %if.end3.i.i.i

do.body.i.i.i:                                    ; preds = %if.then8.i.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nla_get_via.__msg) #16
  %tobool.not.i.i.i = icmp eq ptr %extack, null
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.do.end.i149.i_crit_edge, label %do.body.i.i.i.errout.sink.split.i.i_crit_edge

do.body.i.i.i.errout.sink.split.i.i_crit_edge:    ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %errout.sink.split.i.i

do.body.i.i.i.do.end.i149.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i149.i

if.end3.i.i.i:                                    ; preds = %if.then8.i.i
  %sub.i.i.i = add nsw i32 %conv.i.i.i.i, -6
  call void @__sanitizer_cov_trace_const_cmp2(i16 38, i16 %87)
  %cmp5.i.i.i = icmp ugt i16 %87, 38
  br i1 %cmp5.i.i.i, label %do.body7.i.i.i, label %if.end17.i.i.i

do.body7.i.i.i:                                   ; preds = %if.end3.i.i.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nla_get_via.__msg.24) #16
  %tobool9.not.i.i.i = icmp eq ptr %extack, null
  br i1 %tobool9.not.i.i.i, label %do.body7.i.i.i.do.end.i149.i_crit_edge, label %do.body7.i.i.i.errout.sink.split.i.i_crit_edge

do.body7.i.i.i.errout.sink.split.i.i_crit_edge:   ; preds = %do.body7.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %errout.sink.split.i.i

do.body7.i.i.i.do.end.i149.i_crit_edge:           ; preds = %do.body7.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i149.i

if.end17.i.i.i:                                   ; preds = %if.end3.i.i.i
  %89 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %add.ptr.i.i.i.i, align 2
  %91 = zext i16 %90 to i64
  call void @__sanitizer_cov_trace_switch(i64 %91, ptr @__sancov_gen_cov_switch_values.58)
  switch i16 %90, label %if.end17.i.i.i.do.end.i149.i_crit_edge [
    i16 17, label %sw.bb.i.i.i
    i16 2, label %sw.bb18.i.i.i
    i16 10, label %sw.bb23.i.i.i
  ]

if.end17.i.i.i.do.end.i149.i_crit_edge:           ; preds = %if.end17.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i149.i

sw.bb.i.i.i:                                      ; preds = %if.end17.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %92 = ptrtoint ptr %nh_via_table.i.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 3, ptr %nh_via_table.i.i, align 1
  br label %nla_get_via.exit.i.i

sw.bb18.i.i.i:                                    ; preds = %if.end17.i.i.i
  %93 = ptrtoint ptr %nh_via_table.i.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 0, ptr %nh_via_table.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i.i.i)
  %cmp19.not.i.i.i = icmp eq i32 %sub.i.i.i, 4
  br i1 %cmp19.not.i.i.i, label %sw.bb18.i.i.i.nla_get_via.exit.i.i_crit_edge, label %sw.bb18.i.i.i.do.end.i149.i_crit_edge

sw.bb18.i.i.i.do.end.i149.i_crit_edge:            ; preds = %sw.bb18.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i149.i

sw.bb18.i.i.i.nla_get_via.exit.i.i_crit_edge:     ; preds = %sw.bb18.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nla_get_via.exit.i.i

sw.bb23.i.i.i:                                    ; preds = %if.end17.i.i.i
  %94 = ptrtoint ptr %nh_via_table.i.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 1, ptr %nh_via_table.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub.i.i.i)
  %cmp24.not.i.i.i = icmp eq i32 %sub.i.i.i, 16
  br i1 %cmp24.not.i.i.i, label %sw.bb23.i.i.i.nla_get_via.exit.i.i_crit_edge, label %sw.bb23.i.i.i.do.end.i149.i_crit_edge

sw.bb23.i.i.i.do.end.i149.i_crit_edge:            ; preds = %sw.bb23.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i149.i

sw.bb23.i.i.i.nla_get_via.exit.i.i_crit_edge:     ; preds = %sw.bb23.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nla_get_via.exit.i.i

nla_get_via.exit.i.i:                             ; preds = %sw.bb23.i.i.i.nla_get_via.exit.i.i_crit_edge, %sw.bb18.i.i.i.nla_get_via.exit.i.i_crit_edge, %sw.bb.i.i.i
  %rtvia_addr.i.i.i = getelementptr i8, ptr %call13.i31, i32 6
  %95 = call ptr @memcpy(ptr %add.ptr.i.i.i, ptr %rtvia_addr.i.i.i, i32 %sub.i.i.i)
  %conv28.i.i.i = trunc i32 %sub.i.i.i to i8
  %96 = ptrtoint ptr %nh_via_alen.i.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %conv28.i.i.i, ptr %nh_via_alen.i.i, align 1
  br label %if.end15.i.i

if.else.i.i:                                      ; preds = %if.end6.i.i.if.else.i.i_crit_edge, %if.end15.thread.i.if.else.i.i_crit_edge
  %97 = phi i32 [ %79, %if.end6.i.i.if.else.i.i_crit_edge ], [ %83, %if.end15.thread.i.if.else.i.i_crit_edge ]
  %98 = phi ptr [ %77, %if.end6.i.i.if.else.i.i_crit_edge ], [ %81, %if.end15.thread.i.if.else.i.i_crit_edge ]
  %nh_via_table14.i.i = getelementptr inbounds %struct.mpls_nh, ptr %nh.0107.i, i32 0, i32 4
  %99 = ptrtoint ptr %nh_via_table14.i.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 4, ptr %nh_via_table14.i.i, align 2
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %if.else.i.i, %nla_get_via.exit.i.i
  %100 = phi i32 [ %97, %if.else.i.i ], [ %79, %nla_get_via.exit.i.i ]
  %101 = phi ptr [ %98, %if.else.i.i ], [ %77, %nla_get_via.exit.i.i ]
  %call16.i.i = tail call fastcc i32 @mpls_nh_assign_dev(ptr noundef %101, ptr noundef nonnull %call9.i.i.i, ptr noundef nonnull %nh.0107.i, i32 noundef %100) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.i)
  %tobool17.not.i.i = icmp eq i32 %call16.i.i, 0
  br i1 %tobool17.not.i.i, label %if.end19.i, label %if.end15.i.i.do.end.i149.i_crit_edge

if.end15.i.i.do.end.i149.i_crit_edge:             ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i149.i

errout.sink.split.i.i:                            ; preds = %do.body7.i.i.i.errout.sink.split.i.i_crit_edge, %do.body.i.i.i.errout.sink.split.i.i_crit_edge
  %nla_get_via.__msg.24.sink.i.i = phi ptr [ @nla_get_via.__msg, %do.body.i.i.i.errout.sink.split.i.i_crit_edge ], [ @nla_get_via.__msg.24, %do.body7.i.i.i.errout.sink.split.i.i_crit_edge ]
  %102 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %nla_get_via.__msg.24.sink.i.i, ptr %extack, align 4
  %bad_attr12.i.i.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %103 = ptrtoint ptr %bad_attr12.i.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %call13.i31, ptr %bad_attr12.i.i.i, align 4
  %policy13.i.i.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %104 = ptrtoint ptr %policy13.i.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr null, ptr %policy13.i.i.i, align 4
  br label %do.end.i149.i

if.end19.i:                                       ; preds = %if.end15.i.i
  %nh_flags.i34 = getelementptr inbounds %struct.mpls_nh, ptr %nh.0107.i, i32 0, i32 1
  %105 = ptrtoint ptr %nh_flags.i34 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %nh_flags.i34, align 4
  %and.i35 = and i32 %106, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i35)
  %tobool20.not.i = icmp eq i32 %and.i35, 0
  br i1 %tobool20.not.i, label %if.end19.i.for.inc.i_crit_edge, label %if.then21.i

if.end19.i.for.inc.i_crit_edge:                   ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.then21.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #18
  %107 = ptrtoint ptr %rt_nhn_alive.i47 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %rt_nhn_alive.i47, align 1
  %dec.i36 = add i8 %108, -1
  store i8 %dec.i36, ptr %rt_nhn_alive.i47, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then21.i, %if.end19.i.for.inc.i_crit_edge
  %109 = ptrtoint ptr %rtnh.0102.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %rtnh.0102.i, align 4
  %conv.i61.i = zext i16 %110 to i32
  %sub.i62.i = add nuw nsw i32 %conv.i61.i, 3
  %and.i.i37 = and i32 %sub.i62.i, 131068
  %sub1.i.i = sub nsw i32 %remaining.0101.i, %and.i.i37
  %add.ptr.i63.i = getelementptr i8, ptr %rtnh.0102.i, i32 %and.i.i37
  %inc.i38 = add nuw i8 %nhs.0105.i, 1
  %111 = ptrtoint ptr %rt_nh_size.i48 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %rt_nh_size.i48, align 2
  %conv24.i = zext i8 %112 to i32
  %add.ptr.i = getelementptr i8, ptr %nh.0107.i, i32 %conv24.i
  %inc25.i = add nuw nsw i32 %nhsel.0106.i, 1
  %113 = ptrtoint ptr %rt_nhn.i46 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %rt_nhn.i46, align 4
  %conv.i39 = zext i8 %114 to i32
  %cmp.i40 = icmp ult i32 %inc25.i, %conv.i39
  br i1 %cmp.i40, label %for.inc.i.for.body.i25_crit_edge, label %for.inc.i.cleanup.cont29.i_crit_edge

for.inc.i.cleanup.cont29.i_crit_edge:             ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.cont29.i

for.inc.i.for.body.i25_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i25

cleanup.cont29.i:                                 ; preds = %for.inc.i.cleanup.cont29.i_crit_edge, %if.then84.i.cleanup.cont29.i_crit_edge
  %nhs.0.lcssa.i = phi i8 [ 0, %if.then84.i.cleanup.cont29.i_crit_edge ], [ %inc.i38, %for.inc.i.cleanup.cont29.i_crit_edge ]
  %115 = ptrtoint ptr %rt_nhn.i46 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %nhs.0.lcssa.i, ptr %rt_nhn.i46, align 4
  br label %if.end91.i

if.else86.i:                                      ; preds = %if.end79.i
  %116 = ptrtoint ptr %nl_net.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %nl_net.i, align 8
  %rt_nh.i = getelementptr inbounds %struct.mpls_route, ptr %call9.i.i.i, i32 0, i32 10
  %rc_output_labels.i12 = getelementptr inbounds %struct.mpls_route_config, ptr %call7.i.i, i32 0, i32 7
  %118 = ptrtoint ptr %rc_output_labels.i12 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %rc_output_labels.i12, align 1
  %nh_labels.i = getelementptr inbounds %struct.mpls_route, ptr %call9.i.i.i, i32 1, i32 1
  %120 = ptrtoint ptr %nh_labels.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %119, ptr %nh_labels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %cmp40.not.i = icmp eq i8 %119, 0
  br i1 %cmp40.not.i, label %if.else86.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.else86.i.for.end.i_crit_edge:                  ; preds = %if.else86.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.else86.i
  %nh_label.i = getelementptr inbounds %struct.mpls_route, ptr %call9.i.i.i, i32 1, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.041.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i14 = getelementptr %struct.mpls_route_config, ptr %call7.i.i, i32 0, i32 8, i32 %i.041.i
  %121 = ptrtoint ptr %arrayidx.i14 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %arrayidx.i14, align 4
  %arrayidx3.i = getelementptr [0 x i32], ptr %nh_label.i, i32 0, i32 %i.041.i
  %123 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %122, ptr %arrayidx3.i, align 4
  %inc.i = add nuw nsw i32 %i.041.i, 1
  %124 = ptrtoint ptr %nh_labels.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %nh_labels.i, align 4
  %conv.i = zext i8 %125 to i32
  %cmp.i15 = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i15, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.else86.i.for.end.i_crit_edge
  %rc_via_table.i = getelementptr inbounds %struct.mpls_route_config, ptr %call7.i.i, i32 0, i32 2
  %126 = ptrtoint ptr %rc_via_table.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %rc_via_table.i, align 8
  %nh_via_table.i = getelementptr inbounds %struct.mpls_route, ptr %call9.i.i.i, i32 1, i32 3
  %128 = ptrtoint ptr %nh_via_table.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %127, ptr %nh_via_table.i, align 2
  %129 = ptrtoint ptr %rt_via_offset.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %rt_via_offset.i, align 1
  %conv.i.i = zext i8 %130 to i32
  %add.ptr.i.i = getelementptr i8, ptr %rt_nh.i, i32 %conv.i.i
  %rc_via.i = getelementptr inbounds %struct.mpls_route_config, ptr %call7.i.i, i32 0, i32 4
  %rc_via_alen.i = getelementptr inbounds %struct.mpls_route_config, ptr %call7.i.i, i32 0, i32 3
  %131 = ptrtoint ptr %rc_via_alen.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %rc_via_alen.i, align 1
  %conv5.i = zext i8 %132 to i32
  %133 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %rc_via.i, i32 %conv5.i)
  %nh_via_alen.i = getelementptr inbounds %struct.mpls_route, ptr %call9.i.i.i, i32 1, i32 2
  %134 = ptrtoint ptr %nh_via_alen.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %132, ptr %nh_via_alen.i, align 1
  %rc_ifindex.i = getelementptr inbounds %struct.mpls_route_config, ptr %call7.i.i, i32 0, i32 1
  %135 = ptrtoint ptr %rc_ifindex.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %rc_ifindex.i, align 4
  %call7.i = tail call fastcc i32 @mpls_nh_assign_dev(ptr noundef %117, ptr noundef nonnull %call9.i.i.i, ptr noundef nonnull %rt_nh.i, i32 noundef %136) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i16 = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i16, label %if.end10.i, label %for.end.i.do.end.i149.i_crit_edge

for.end.i.do.end.i149.i_crit_edge:                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i149.i

if.end10.i:                                       ; preds = %for.end.i
  %nh_flags.i = getelementptr inbounds %struct.mpls_route, ptr %call9.i.i.i, i32 1, i32 0, i32 1
  %137 = ptrtoint ptr %nh_flags.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %nh_flags.i, align 8
  %and.i17 = and i32 %138, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i17)
  %tobool11.not.i = icmp eq i32 %and.i17, 0
  br i1 %tobool11.not.i, label %if.end10.i.if.end91.i_crit_edge, label %if.then12.i

if.end10.i.if.end91.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end91.i

if.then12.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #18
  %139 = ptrtoint ptr %rt_nhn_alive.i47 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %rt_nhn_alive.i47, align 1
  %dec.i = add i8 %140, -1
  store i8 %dec.i, ptr %rt_nhn_alive.i47, align 1
  br label %if.end91.i

if.end91.i:                                       ; preds = %if.then12.i, %if.end10.i.if.end91.i_crit_edge, %cleanup.cont29.i
  tail call fastcc void @mpls_route_update(ptr noundef %2, i32 noundef %and.i.i, ptr noundef nonnull %call9.i.i.i, ptr noundef %rc_nlinfo.i) #16
  br label %out

do.end.i149.i:                                    ; preds = %for.end.i.do.end.i149.i_crit_edge, %errout.sink.split.i.i, %if.end15.i.i.do.end.i149.i_crit_edge, %sw.bb23.i.i.i.do.end.i149.i_crit_edge, %sw.bb18.i.i.i.do.end.i149.i_crit_edge, %if.end17.i.i.i.do.end.i149.i_crit_edge, %do.body7.i.i.i.do.end.i149.i_crit_edge, %do.body.i.i.i.do.end.i149.i_crit_edge, %if.then2.i.i.do.end.i149.i_crit_edge, %if.end15.thread.i.do.end.i149.i_crit_edge, %if.end15.i.do.end.i149.i_crit_edge, %lor.lhs.false.i.do.end.i149.i_crit_edge, %if.end.i29.do.end.i149.i_crit_edge, %land.lhs.true.i.i28.do.end.i149.i_crit_edge, %for.body.i25.do.end.i149.i_crit_edge
  %err.0.i.ph = phi i32 [ %call7.i, %for.end.i.do.end.i149.i_crit_edge ], [ -22, %do.body.i.i.i.do.end.i149.i_crit_edge ], [ -22, %do.body7.i.i.i.do.end.i149.i_crit_edge ], [ -22, %errout.sink.split.i.i ], [ -22, %for.body.i25.do.end.i149.i_crit_edge ], [ -22, %land.lhs.true.i.i28.do.end.i149.i_crit_edge ], [ -22, %lor.lhs.false.i.do.end.i149.i_crit_edge ], [ -22, %if.end.i29.do.end.i149.i_crit_edge ], [ %call.i.i33, %if.then2.i.i.do.end.i149.i_crit_edge ], [ %call16.i.i, %if.end15.i.i.do.end.i149.i_crit_edge ], [ -12, %if.end15.i.do.end.i149.i_crit_edge ], [ -22, %if.end17.i.i.i.do.end.i149.i_crit_edge ], [ -22, %sw.bb23.i.i.i.do.end.i149.i_crit_edge ], [ -22, %sw.bb18.i.i.i.do.end.i149.i_crit_edge ], [ -12, %if.end15.thread.i.do.end.i149.i_crit_edge ]
  tail call void @kvfree_call_rcu(ptr noundef nonnull %call9.i.i.i, ptr noundef null) #16
  br label %out

out:                                              ; preds = %do.end.i149.i, %if.end91.i, %if.then77.i, %if.then69.i, %do.body66.i.out_crit_edge, %if.end49.i.out_crit_edge, %if.end42.i.out_crit_edge, %do.end34.i.out_crit_edge, %if.then9.i, %do.body.i.out_crit_edge, %mpls_label_ok.exit.i.out_crit_edge, %if.end.out_crit_edge
  %err.0 = phi i32 [ %call1, %if.end.out_crit_edge ], [ 0, %if.end91.i ], [ %54, %if.then77.i ], [ -22, %mpls_label_ok.exit.i.out_crit_edge ], [ -95, %if.then9.i ], [ -95, %do.body.i.out_crit_edge ], [ -17, %do.end34.i.out_crit_edge ], [ -17, %if.end42.i.out_crit_edge ], [ -2, %if.end49.i.out_crit_edge ], [ -22, %if.then69.i ], [ -22, %do.body66.i.out_crit_edge ], [ %err.0.i.ph, %do.end.i149.i ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #16
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mpls_rtm_delroute(ptr nocapture noundef readonly %skb, ptr noundef %nlh, ptr noundef %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 204) #20
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @rtm_to_route_config(ptr noundef %skb, ptr noundef %nlh, ptr noundef nonnull %call7.i.i, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.out_crit_edge, label %if.end3

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end3:                                          ; preds = %if.end
  %nl_net.i = getelementptr inbounds %struct.mpls_route_config, ptr %call7.i.i, i32 0, i32 11, i32 1
  %1 = ptrtoint ptr %nl_net.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %nl_net.i, align 8
  %rc_label.i = getelementptr inbounds %struct.mpls_route_config, ptr %call7.i.i, i32 0, i32 5
  %3 = ptrtoint ptr %rc_label.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rc_label.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %4)
  %cmp.i.i = icmp ult i32 %4, 16
  br i1 %cmp.i.i, label %do.body.i.i, label %land.lhs.true.i.i

do.body.i.i:                                      ; preds = %if.end3
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mpls_label_ok.__msg) #16
  %tobool.not.i.i = icmp eq ptr %extack, null
  br i1 %tobool.not.i.i, label %do.body.i.i.mpls_label_ok.exit.thread.i_crit_edge, label %do.body.i.i.if.end14.sink.split.i.i_crit_edge

do.body.i.i.if.end14.sink.split.i.i_crit_edge:    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14.sink.split.i.i

do.body.i.i.mpls_label_ok.exit.thread.i_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mpls_label_ok.exit.thread.i

land.lhs.true.i.i:                                ; preds = %if.end3
  %platform_labels.i.i = getelementptr inbounds %struct.net, ptr %2, i32 0, i32 49, i32 2
  %5 = ptrtoint ptr %platform_labels.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %platform_labels.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp4.not.i.i = icmp ult i32 %4, %6
  br i1 %cmp4.not.i.i, label %if.end.i, label %do.body6.i.i

do.body6.i.i:                                     ; preds = %land.lhs.true.i.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mpls_label_ok.__msg.23) #16
  %tobool8.not.i.i = icmp eq ptr %extack, null
  br i1 %tobool8.not.i.i, label %do.body6.i.i.mpls_label_ok.exit.thread.i_crit_edge, label %do.body6.i.i.if.end14.sink.split.i.i_crit_edge

do.body6.i.i.if.end14.sink.split.i.i_crit_edge:   ; preds = %do.body6.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14.sink.split.i.i

do.body6.i.i.mpls_label_ok.exit.thread.i_crit_edge: ; preds = %do.body6.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mpls_label_ok.exit.thread.i

if.end14.sink.split.i.i:                          ; preds = %do.body6.i.i.if.end14.sink.split.i.i_crit_edge, %do.body.i.i.if.end14.sink.split.i.i_crit_edge
  %mpls_label_ok.__msg.sink.i.i = phi ptr [ @mpls_label_ok.__msg, %do.body.i.i.if.end14.sink.split.i.i_crit_edge ], [ @mpls_label_ok.__msg.23, %do.body6.i.i.if.end14.sink.split.i.i_crit_edge ]
  %7 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %mpls_label_ok.__msg.sink.i.i, ptr %extack, align 4
  br label %mpls_label_ok.exit.thread.i

mpls_label_ok.exit.thread.i:                      ; preds = %if.end14.sink.split.i.i, %do.body6.i.i.mpls_label_ok.exit.thread.i_crit_edge, %do.body.i.i.mpls_label_ok.exit.thread.i_crit_edge
  %platform_labels16.i9.i = getelementptr inbounds %struct.net, ptr %2, i32 0, i32 49, i32 2
  %8 = ptrtoint ptr %platform_labels16.i9.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %platform_labels16.i9.i, align 4
  %10 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %4, i32 %9) #16, !srcloc !233
  br label %out

if.end.i:                                         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %11 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %4, i32 %6) #16, !srcloc !233
  %and.i.i = and i32 %11, %4
  %rc_nlinfo.i = getelementptr inbounds %struct.mpls_route_config, ptr %call7.i.i, i32 0, i32 11
  tail call fastcc void @mpls_route_update(ptr noundef %2, i32 noundef %and.i.i, ptr noundef null, ptr noundef %rc_nlinfo.i) #16
  br label %out

out:                                              ; preds = %if.end.i, %mpls_label_ok.exit.thread.i, %if.end.out_crit_edge
  %err.0 = phi i32 [ %call1, %if.end.out_crit_edge ], [ 0, %if.end.i ], [ -22, %mpls_label_ok.exit.thread.i ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #16
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mpls_getroute(ptr noundef %in_skb, ptr noundef %in_nlh, ptr noundef %extack) #2 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  %in_label = alloca i32, align 4
  %tb = alloca [31 x ptr], align 4
  %labels = alloca [30 x i32], align 4
  %n_labels = alloca i8, align 1
  %label_count = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %in_skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  %portid1 = getelementptr inbounds %struct.sk_buff, ptr %in_skb, i32 0, i32 3, i32 12
  %5 = ptrtoint ptr %portid1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %portid1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %in_label) #16
  %7 = ptrtoint ptr %in_label to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1048576, ptr %in_label, align 4
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %tb) #16
  %8 = call ptr @memset(ptr %tb, i32 255, i32 124)
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %labels) #16
  %9 = call ptr @memset(ptr %labels, i32 255, i32 120)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %n_labels) #16
  %10 = ptrtoint ptr %n_labels to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %n_labels, align 1, !annotation !234
  %11 = ptrtoint ptr %in_nlh to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %in_nlh, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %12)
  %cmp.i = icmp ult i32 %12, 28
  br i1 %cmp.i, label %do.body.i, label %if.end2.i

do.body.i:                                        ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mpls_valid_getroute_req.__msg) #16
  %tobool.not.i = icmp eq ptr %extack, null
  br i1 %tobool.not.i, label %do.body.i.cleanup133_crit_edge, label %if.then1.i

do.body.i.cleanup133_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup133

if.then1.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %13 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @mpls_valid_getroute_req.__msg, ptr %extack, align 4
  br label %cleanup133

if.end2.i:                                        ; preds = %entry
  %call3.i = tail call zeroext i1 @netlink_strict_get_check(ptr noundef %in_skb) #16
  br i1 %call3.i, label %if.end6.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end2.i
  %14 = ptrtoint ptr %in_nlh to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %in_nlh, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %15)
  %cmp.i.i.i = icmp ult i32 %15, 28
  br i1 %cmp.i.i.i, label %do.body.i.i.i, label %if.end2.i.i.i

do.body.i.i.i:                                    ; preds = %if.then4.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nlmsg_parse.__msg) #16
  %tobool.not.i.i.i = icmp eq ptr %extack, null
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.cleanup133_crit_edge, label %if.then1.i.i.i

do.body.i.i.i.cleanup133_crit_edge:               ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup133

if.then1.i.i.i:                                   ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %16 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @__nlmsg_parse.__msg, ptr %extack, align 4
  br label %cleanup133

if.end2.i.i.i:                                    ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i.i.i.i = getelementptr i8, ptr %in_nlh, i32 28
  %sub1.i.i.i.i = add i32 %15, -28
  %call5.i.i.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 30, ptr noundef %add.ptr.i.i.i.i, i32 noundef %sub1.i.i.i.i, ptr noundef nonnull @rtm_mpls_policy, i32 noundef 0, ptr noundef %extack) #16
  br label %mpls_valid_getroute_req.exit

if.end6.i:                                        ; preds = %if.end2.i
  %rtm_dst_len.i = getelementptr i8, ptr %in_nlh, i32 17
  %17 = ptrtoint ptr %rtm_dst_len.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %rtm_dst_len.i, align 1
  %19 = zext i8 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.59)
  switch i8 %18, label %if.end6.i.do.body31.i_crit_edge [
    i8 0, label %if.end6.i.lor.lhs.false.i_crit_edge
    i8 20, label %if.end6.i.lor.lhs.false.i_crit_edge293
  ]

if.end6.i.lor.lhs.false.i_crit_edge293:           ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false.i

if.end6.i.lor.lhs.false.i_crit_edge:              ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false.i

if.end6.i.do.body31.i_crit_edge:                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body31.i

lor.lhs.false.i:                                  ; preds = %if.end6.i.lor.lhs.false.i_crit_edge, %if.end6.i.lor.lhs.false.i_crit_edge293
  %rtm_src_len.i = getelementptr i8, ptr %in_nlh, i32 18
  %20 = ptrtoint ptr %rtm_src_len.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %rtm_src_len.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool14.not.i = icmp eq i8 %21, 0
  br i1 %tobool14.not.i, label %lor.lhs.false15.i, label %lor.lhs.false.i.do.body31.i_crit_edge

lor.lhs.false.i.do.body31.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body31.i

lor.lhs.false15.i:                                ; preds = %lor.lhs.false.i
  %rtm_tos.i = getelementptr i8, ptr %in_nlh, i32 19
  %22 = ptrtoint ptr %rtm_tos.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %rtm_tos.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool17.not.i = icmp eq i8 %23, 0
  br i1 %tobool17.not.i, label %lor.lhs.false18.i, label %lor.lhs.false15.i.do.body31.i_crit_edge

lor.lhs.false15.i.do.body31.i_crit_edge:          ; preds = %lor.lhs.false15.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body31.i

lor.lhs.false18.i:                                ; preds = %lor.lhs.false15.i
  %rtm_table.i = getelementptr i8, ptr %in_nlh, i32 20
  %24 = ptrtoint ptr %rtm_table.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %rtm_table.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool20.not.i = icmp eq i8 %25, 0
  br i1 %tobool20.not.i, label %lor.lhs.false21.i, label %lor.lhs.false18.i.do.body31.i_crit_edge

lor.lhs.false18.i.do.body31.i_crit_edge:          ; preds = %lor.lhs.false18.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body31.i

lor.lhs.false21.i:                                ; preds = %lor.lhs.false18.i
  %rtm_protocol.i = getelementptr i8, ptr %in_nlh, i32 21
  %26 = ptrtoint ptr %rtm_protocol.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %rtm_protocol.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool23.not.i = icmp eq i8 %27, 0
  br i1 %tobool23.not.i, label %lor.lhs.false24.i, label %lor.lhs.false21.i.do.body31.i_crit_edge

lor.lhs.false21.i.do.body31.i_crit_edge:          ; preds = %lor.lhs.false21.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body31.i

lor.lhs.false24.i:                                ; preds = %lor.lhs.false21.i
  %rtm_scope.i = getelementptr i8, ptr %in_nlh, i32 22
  %28 = ptrtoint ptr %rtm_scope.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %rtm_scope.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool26.not.i = icmp eq i8 %29, 0
  br i1 %tobool26.not.i, label %lor.lhs.false27.i, label %lor.lhs.false24.i.do.body31.i_crit_edge

lor.lhs.false24.i.do.body31.i_crit_edge:          ; preds = %lor.lhs.false24.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body31.i

lor.lhs.false27.i:                                ; preds = %lor.lhs.false24.i
  %rtm_type.i = getelementptr i8, ptr %in_nlh, i32 23
  %30 = ptrtoint ptr %rtm_type.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %rtm_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool29.not.i = icmp eq i8 %31, 0
  br i1 %tobool29.not.i, label %if.end39.i, label %lor.lhs.false27.i.do.body31.i_crit_edge

lor.lhs.false27.i.do.body31.i_crit_edge:          ; preds = %lor.lhs.false27.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body31.i

do.body31.i:                                      ; preds = %lor.lhs.false27.i.do.body31.i_crit_edge, %lor.lhs.false24.i.do.body31.i_crit_edge, %lor.lhs.false21.i.do.body31.i_crit_edge, %lor.lhs.false18.i.do.body31.i_crit_edge, %lor.lhs.false15.i.do.body31.i_crit_edge, %lor.lhs.false.i.do.body31.i_crit_edge, %if.end6.i.do.body31.i_crit_edge
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mpls_valid_getroute_req.__msg.32) #16
  %tobool33.not.i = icmp eq ptr %extack, null
  br i1 %tobool33.not.i, label %do.body31.i.cleanup133_crit_edge, label %if.then34.i

do.body31.i.cleanup133_crit_edge:                 ; preds = %do.body31.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup133

if.then34.i:                                      ; preds = %do.body31.i
  call void @__sanitizer_cov_trace_pc() #18
  %32 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @mpls_valid_getroute_req.__msg.32, ptr %extack, align 4
  br label %cleanup133

if.end39.i:                                       ; preds = %lor.lhs.false27.i
  %rtm_flags.i = getelementptr i8, ptr %in_nlh, i32 24
  %33 = ptrtoint ptr %rtm_flags.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rtm_flags.i, align 4
  %and.i = and i32 %34, -8193
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool40.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool40.not.i, label %if.end50.i, label %do.body42.i

do.body42.i:                                      ; preds = %if.end39.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mpls_valid_getroute_req.__msg.33) #16
  %tobool44.not.i = icmp eq ptr %extack, null
  br i1 %tobool44.not.i, label %do.body42.i.cleanup133_crit_edge, label %if.then45.i

do.body42.i.cleanup133_crit_edge:                 ; preds = %do.body42.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup133

if.then45.i:                                      ; preds = %do.body42.i
  call void @__sanitizer_cov_trace_pc() #18
  %35 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @mpls_valid_getroute_req.__msg.33, ptr %extack, align 4
  br label %cleanup133

if.end50.i:                                       ; preds = %if.end39.i
  %call51.i = call fastcc i32 @nlmsg_parse_deprecated_strict(ptr noundef %in_nlh, i32 noundef 12, ptr noundef nonnull %tb, i32 noundef 30, ptr noundef nonnull @rtm_mpls_policy, ptr noundef %extack) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i)
  %tobool52.not.i = icmp eq i32 %call51.i, 0
  br i1 %tobool52.not.i, label %if.end54.i, label %if.end50.i.mpls_valid_getroute_req.exit_crit_edge

if.end50.i.mpls_valid_getroute_req.exit_crit_edge: ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mpls_valid_getroute_req.exit

if.end54.i:                                       ; preds = %if.end50.i
  %arrayidx.i = getelementptr inbounds ptr, ptr %tb, i32 1
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i, align 4
  %tobool55.not.i = icmp eq ptr %37, null
  br i1 %tobool55.not.i, label %lor.lhs.false56.i, label %if.end54.i.land.lhs.true59.i_crit_edge

if.end54.i.land.lhs.true59.i_crit_edge:           ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true59.i

lor.lhs.false56.i:                                ; preds = %if.end54.i
  %arrayidx57.i = getelementptr inbounds ptr, ptr %tb, i32 19
  %38 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx57.i, align 4
  %tobool58.not.i = icmp eq ptr %39, null
  br i1 %tobool58.not.i, label %lor.lhs.false56.i.for.body.i.preheader_crit_edge, label %lor.lhs.false56.i.land.lhs.true59.i_crit_edge

lor.lhs.false56.i.land.lhs.true59.i_crit_edge:    ; preds = %lor.lhs.false56.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true59.i

lor.lhs.false56.i.for.body.i.preheader_crit_edge: ; preds = %lor.lhs.false56.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %land.lhs.true59.i.for.body.i.preheader_crit_edge, %lor.lhs.false56.i.for.body.i.preheader_crit_edge
  br label %for.body.i

land.lhs.true59.i:                                ; preds = %lor.lhs.false56.i.land.lhs.true59.i_crit_edge, %if.end54.i.land.lhs.true59.i_crit_edge
  %40 = ptrtoint ptr %rtm_dst_len.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %rtm_dst_len.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool61.not.i = icmp eq i8 %41, 0
  br i1 %tobool61.not.i, label %do.body63.i, label %land.lhs.true59.i.for.body.i.preheader_crit_edge

land.lhs.true59.i.for.body.i.preheader_crit_edge: ; preds = %land.lhs.true59.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.preheader

do.body63.i:                                      ; preds = %land.lhs.true59.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @mpls_valid_getroute_req.__msg.34) #16
  %tobool65.not.i = icmp eq ptr %extack, null
  br i1 %tobool65.not.i, label %do.body63.i.cleanup133_crit_edge, label %if.then66.i

do.body63.i.cleanup133_crit_edge:                 ; preds = %do.body63.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup133

if.then66.i:                                      ; preds = %do.body63.i
  call void @__sanitizer_cov_trace_pc() #18
  %42 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @mpls_valid_getroute_req.__msg.34, ptr %extack, align 4
  br label %cleanup133

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.0119.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %arrayidx74.i = getelementptr ptr, ptr %tb, i32 %i.0119.i
  %43 = ptrtoint ptr %arrayidx74.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx74.i, align 4
  %tobool75.not.i = icmp eq ptr %44, null
  br i1 %tobool75.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end77.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.end77.i:                                       ; preds = %for.body.i
  %45 = zext i32 %i.0119.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %i.0119.i, label %do.body78.i [
    i32 1, label %if.end77.i.for.inc.i_crit_edge
    i32 19, label %if.end77.i.for.inc.i_crit_edge294
  ]

if.end77.i.for.inc.i_crit_edge294:                ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.end77.i.for.inc.i_crit_edge:                   ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

do.body78.i:                                      ; preds = %if.end77.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @mpls_valid_getroute_req.__msg.35) #16
  %tobool80.not.i = icmp eq ptr %extack, null
  br i1 %tobool80.not.i, label %do.body78.i.cleanup133_crit_edge, label %if.then81.i

do.body78.i.cleanup133_crit_edge:                 ; preds = %do.body78.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup133

if.then81.i:                                      ; preds = %do.body78.i
  call void @__sanitizer_cov_trace_pc() #18
  %46 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @mpls_valid_getroute_req.__msg.35, ptr %extack, align 4
  br label %cleanup133

for.inc.i:                                        ; preds = %if.end77.i.for.inc.i_crit_edge, %if.end77.i.for.inc.i_crit_edge294, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0119.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 31
  br i1 %exitcond.not.i, label %for.inc.i.if.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

mpls_valid_getroute_req.exit:                     ; preds = %if.end50.i.mpls_valid_getroute_req.exit_crit_edge, %if.end2.i.i.i
  %retval.0.i = phi i32 [ %call51.i, %if.end50.i.mpls_valid_getroute_req.exit_crit_edge ], [ %call5.i.i.i, %if.end2.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %mpls_valid_getroute_req.exit.cleanup133_crit_edge, label %mpls_valid_getroute_req.exit.if.end_crit_edge

mpls_valid_getroute_req.exit.if.end_crit_edge:    ; preds = %mpls_valid_getroute_req.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

mpls_valid_getroute_req.exit.cleanup133_crit_edge: ; preds = %mpls_valid_getroute_req.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup133

if.end:                                           ; preds = %mpls_valid_getroute_req.exit.if.end_crit_edge, %for.inc.i.if.end_crit_edge
  %arrayidx = getelementptr inbounds [31 x ptr], ptr %tb, i32 0, i32 1
  %47 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %48, null
  br i1 %tobool.not, label %if.end.if.end13_crit_edge, label %if.then4

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13

if.then4:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %label_count) #16
  %call6 = call i32 @nla_get_labels(ptr noundef nonnull %48, i8 noundef zeroext 1, ptr noundef nonnull %label_count, ptr noundef nonnull %in_label, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.then4.cleanup.thread_crit_edge

if.then4.cleanup.thread_crit_edge:                ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.thread

if.end9:                                          ; preds = %if.then4
  %49 = ptrtoint ptr %in_label to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %in_label, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %50)
  %cmp.i224 = icmp ult i32 %50, 16
  br i1 %cmp.i224, label %do.body.i226, label %land.lhs.true.i

do.body.i226:                                     ; preds = %if.end9
  call void @do_trace_netlink_extack(ptr noundef nonnull @mpls_label_ok.__msg) #16
  %tobool.not.i225 = icmp eq ptr %extack, null
  br i1 %tobool.not.i225, label %do.body.i226.mpls_label_ok.exit_crit_edge, label %do.body.i226.if.end14.sink.split.i_crit_edge

do.body.i226.if.end14.sink.split.i_crit_edge:     ; preds = %do.body.i226
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14.sink.split.i

do.body.i226.mpls_label_ok.exit_crit_edge:        ; preds = %do.body.i226
  call void @__sanitizer_cov_trace_pc() #18
  br label %mpls_label_ok.exit

land.lhs.true.i:                                  ; preds = %if.end9
  %platform_labels.i = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 49, i32 2
  %51 = ptrtoint ptr %platform_labels.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %platform_labels.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %52)
  %cmp4.not.i = icmp ult i32 %50, %52
  br i1 %cmp4.not.i, label %cleanup.critedge, label %do.body6.i

do.body6.i:                                       ; preds = %land.lhs.true.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @mpls_label_ok.__msg.23) #16
  %tobool8.not.i = icmp eq ptr %extack, null
  br i1 %tobool8.not.i, label %do.body6.i.mpls_label_ok.exit_crit_edge, label %do.body6.i.if.end14.sink.split.i_crit_edge

do.body6.i.if.end14.sink.split.i_crit_edge:       ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14.sink.split.i

do.body6.i.mpls_label_ok.exit_crit_edge:          ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mpls_label_ok.exit

if.end14.sink.split.i:                            ; preds = %do.body6.i.if.end14.sink.split.i_crit_edge, %do.body.i226.if.end14.sink.split.i_crit_edge
  %mpls_label_ok.__msg.sink.i = phi ptr [ @mpls_label_ok.__msg, %do.body.i226.if.end14.sink.split.i_crit_edge ], [ @mpls_label_ok.__msg.23, %do.body6.i.if.end14.sink.split.i_crit_edge ]
  %53 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %mpls_label_ok.__msg.sink.i, ptr %extack, align 4
  br label %mpls_label_ok.exit

mpls_label_ok.exit:                               ; preds = %if.end14.sink.split.i, %do.body6.i.mpls_label_ok.exit_crit_edge, %do.body.i226.mpls_label_ok.exit_crit_edge
  %54 = ptrtoint ptr %in_label to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %in_label, align 4
  %platform_labels16.i = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 49, i32 2
  %56 = ptrtoint ptr %platform_labels16.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %platform_labels16.i, align 4
  %58 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %55, i32 %57) #16, !srcloc !233
  %and.i227 = and i32 %58, %55
  %59 = ptrtoint ptr %in_label to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %and.i227, ptr %in_label, align 4
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %mpls_label_ok.exit, %if.then4.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %label_count) #16
  br label %cleanup133

cleanup.critedge:                                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  %60 = ptrtoint ptr %in_label to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %in_label, align 4
  %62 = ptrtoint ptr %platform_labels.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %platform_labels.i, align 4
  %64 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %61, i32 %63) #16, !srcloc !233
  %and.i227.c = and i32 %64, %61
  %65 = ptrtoint ptr %in_label to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %and.i227.c, ptr %in_label, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %label_count) #16
  br label %if.end13

if.end13:                                         ; preds = %cleanup.critedge, %if.end.if.end13_crit_edge
  %66 = ptrtoint ptr %in_label to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %in_label, align 4
  %call14 = call fastcc ptr @mpls_route_input_rcu(ptr noundef %4, i32 noundef %67)
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.end13.cleanup133_crit_edge, label %if.end17

if.end13.cleanup133_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup133

if.end17:                                         ; preds = %if.end13
  %rtm_flags = getelementptr i8, ptr %in_nlh, i32 24
  %68 = ptrtoint ptr %rtm_flags to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %rtm_flags, align 4
  %and = and i32 %69, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %if.end52, label %if.then19

if.then19:                                        ; preds = %if.end17
  %rt_nhn.i = getelementptr inbounds %struct.mpls_route, ptr %call14, i32 0, i32 5
  %70 = ptrtoint ptr %rt_nhn.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %rt_nhn.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %71)
  %cmp.i228 = icmp eq i8 %71, 1
  br i1 %cmp.i228, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then19
  %rt_nh.i = getelementptr inbounds %struct.mpls_route, ptr %call14, i32 0, i32 10
  %72 = ptrtoint ptr %rt_nh.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %rt_nh.i, align 4
  %tobool.not.i229 = icmp eq ptr %73, null
  %spec.select.i = select i1 %tobool.not.i229, i32 28, i32 36
  %nh_via_table.i = getelementptr inbounds %struct.mpls_route, ptr %call14, i32 1, i32 3
  %74 = ptrtoint ptr %nh_via_table.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %nh_via_table.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %75)
  %cmp8.not.i = icmp eq i8 %75, 4
  br i1 %cmp8.not.i, label %if.then.i.if.end15.i_crit_edge, label %if.then10.i

if.then.i.if.end15.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.i

if.then10.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %nh_via_alen.i = getelementptr inbounds %struct.mpls_route, ptr %call14, i32 1, i32 2
  %76 = ptrtoint ptr %nh_via_alen.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %nh_via_alen.i, align 1
  %conv11.i = zext i8 %77 to i32
  %sub.i.i = add nuw nsw i32 %conv11.i, 9
  %and.i.i = and i32 %sub.i.i, 508
  %add14.i = add nuw nsw i32 %and.i.i, %spec.select.i
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then10.i, %if.then.i.if.end15.i_crit_edge
  %payload.1.i = phi i32 [ %add14.i, %if.then10.i ], [ %spec.select.i, %if.then.i.if.end15.i_crit_edge ]
  %nh_labels.i = getelementptr inbounds %struct.mpls_route, ptr %call14, i32 1, i32 1
  %78 = ptrtoint ptr %nh_labels.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %nh_labels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool16.not.i = icmp eq i8 %79, 0
  br i1 %tobool16.not.i, label %if.end15.i.lfib_nlmsg_size.exit_crit_edge, label %if.then17.i

if.end15.i.lfib_nlmsg_size.exit_crit_edge:        ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lfib_nlmsg_size.exit

if.then17.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #18
  %conv19.i = zext i8 %79 to i32
  %mul.i = shl nuw nsw i32 %conv19.i, 2
  %sub.i82.i = add nuw nsw i32 %mul.i, 7
  %and.i83.i = and i32 %sub.i82.i, 2044
  %add21.i = add nuw nsw i32 %and.i83.i, %payload.1.i
  br label %lfib_nlmsg_size.exit

if.else.i:                                        ; preds = %if.then19
  %conv27.i = zext i8 %71 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %cmp2890.not.i = icmp eq i8 %71, 0
  br i1 %cmp2890.not.i, label %if.else.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.else.i.for.end.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.else.i
  %rt_nh24.i = getelementptr inbounds %struct.mpls_route, ptr %call14, i32 0, i32 10
  %rt_nh_size.i = getelementptr inbounds %struct.mpls_route, ptr %call14, i32 0, i32 7
  %80 = ptrtoint ptr %rt_nh_size.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %rt_nh_size.i, align 2
  %conv56.i = zext i8 %81 to i32
  br label %for.body.i230

for.body.i230:                                    ; preds = %for.inc.i234.for.body.i230_crit_edge, %for.body.lr.ph.i
  %nh23.093.i = phi ptr [ %rt_nh24.i, %for.body.lr.ph.i ], [ %add.ptr.i231, %for.inc.i234.for.body.i230_crit_edge ]
  %nhsel.092.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i232, %for.inc.i234.for.body.i230_crit_edge ]
  %nhsize.091.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %nhsize.2.i, %for.inc.i234.for.body.i230_crit_edge ]
  %82 = ptrtoint ptr %nh23.093.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %nh23.093.i, align 4
  %tobool31.not.i = icmp eq ptr %83, null
  br i1 %tobool31.not.i, label %for.body.i230.for.inc.i234_crit_edge, label %if.end33.i

for.body.i230.for.inc.i234_crit_edge:             ; preds = %for.body.i230
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i234

if.end33.i:                                       ; preds = %for.body.i230
  %add35.i = add i32 %nhsize.091.i, 12
  %nh_via_table36.i = getelementptr inbounds %struct.mpls_nh, ptr %nh23.093.i, i32 0, i32 4
  %84 = ptrtoint ptr %nh_via_table36.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %nh_via_table36.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %85)
  %cmp38.not.i = icmp eq i8 %85, 4
  br i1 %cmp38.not.i, label %if.end33.i.if.end46.i_crit_edge, label %if.then40.i

if.end33.i.if.end46.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end46.i

if.then40.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #18
  %nh_via_alen41.i = getelementptr inbounds %struct.mpls_nh, ptr %nh23.093.i, i32 0, i32 3
  %86 = ptrtoint ptr %nh_via_alen41.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %nh_via_alen41.i, align 1
  %conv42.i = zext i8 %87 to i32
  %sub.i84.i = add nuw nsw i32 %conv42.i, 9
  %and.i85.i = and i32 %sub.i84.i, 508
  %add45.i = add i32 %and.i85.i, %add35.i
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.then40.i, %if.end33.i.if.end46.i_crit_edge
  %nhsize.1.i = phi i32 [ %add45.i, %if.then40.i ], [ %add35.i, %if.end33.i.if.end46.i_crit_edge ]
  %nh_labels47.i = getelementptr inbounds %struct.mpls_nh, ptr %nh23.093.i, i32 0, i32 2
  %88 = ptrtoint ptr %nh_labels47.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %nh_labels47.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool48.not.i = icmp eq i8 %89, 0
  br i1 %tobool48.not.i, label %if.end46.i.for.inc.i234_crit_edge, label %if.then49.i

if.end46.i.for.inc.i234_crit_edge:                ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i234

if.then49.i:                                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #18
  %conv51.i = zext i8 %89 to i32
  %mul52.i = shl nuw nsw i32 %conv51.i, 2
  %sub.i86.i = add nuw nsw i32 %mul52.i, 7
  %and.i87.i = and i32 %sub.i86.i, 2044
  %add54.i = add i32 %and.i87.i, %nhsize.1.i
  br label %for.inc.i234

for.inc.i234:                                     ; preds = %if.then49.i, %if.end46.i.for.inc.i234_crit_edge, %for.body.i230.for.inc.i234_crit_edge
  %nhsize.2.i = phi i32 [ %add54.i, %if.then49.i ], [ %nhsize.1.i, %if.end46.i.for.inc.i234_crit_edge ], [ %nhsize.091.i, %for.body.i230.for.inc.i234_crit_edge ]
  %add.ptr.i231 = getelementptr i8, ptr %nh23.093.i, i32 %conv56.i
  %inc.i232 = add nuw nsw i32 %nhsel.092.i, 1
  %exitcond.not.i233 = icmp eq i32 %inc.i232, %conv27.i
  br i1 %exitcond.not.i233, label %for.inc.i234.for.end.i_crit_edge, label %for.inc.i234.for.body.i230_crit_edge

for.inc.i234.for.body.i230_crit_edge:             ; preds = %for.inc.i234
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i230

for.inc.i234.for.end.i_crit_edge:                 ; preds = %for.inc.i234
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i234.for.end.i_crit_edge, %if.else.i.for.end.i_crit_edge
  %nhsize.0.lcssa.i = phi i32 [ 0, %if.else.i.for.end.i_crit_edge ], [ %nhsize.2.i, %for.inc.i234.for.end.i_crit_edge ]
  %90 = add i32 %nhsize.0.lcssa.i, 35
  %add58.i = and i32 %90, -4
  br label %lfib_nlmsg_size.exit

lfib_nlmsg_size.exit:                             ; preds = %for.end.i, %if.then17.i, %if.end15.i.lfib_nlmsg_size.exit_crit_edge
  %payload.3.i = phi i32 [ %add58.i, %for.end.i ], [ %add21.i, %if.then17.i ], [ %payload.1.i, %if.end15.i.lfib_nlmsg_size.exit_crit_edge ]
  %sub.i.i235 = add i32 %payload.3.i, 19
  %and.i.i236 = and i32 %sub.i.i235, -4
  %call.i.i = call ptr @__alloc_skb(i32 noundef %and.i.i236, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #16
  %tobool22.not = icmp eq ptr %call.i.i, null
  br i1 %tobool22.not, label %lfib_nlmsg_size.exit.cleanup133_crit_edge, label %if.end24

lfib_nlmsg_size.exit.cleanup133_crit_edge:        ; preds = %lfib_nlmsg_size.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup133

if.end24:                                         ; preds = %lfib_nlmsg_size.exit
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %in_nlh, i32 0, i32 3
  %91 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %nlmsg_seq, align 4
  %93 = ptrtoint ptr %in_label to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %in_label, align 4
  %call25 = call fastcc i32 @mpls_dump_route(ptr noundef nonnull %call.i.i, i32 noundef %6, i32 noundef %92, i32 noundef 24, i32 noundef %94, ptr noundef nonnull %call14, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.then27, label %if.end50

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_const_cmp4(i32 -90, i32 %call25)
  %cmp28 = icmp eq i32 %call25, -90
  br i1 %cmp28, label %do.end, label %if.then27.errout_free_crit_edge, !prof !220

if.then27.errout_free_crit_edge:                  ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #18
  br label %errout_free

do.end:                                           ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 2410, i32 noundef 9, ptr noundef null) #16
  br label %errout_free

if.end50:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #18
  %call51 = call i32 @rtnl_unicast(ptr noundef nonnull %call.i.i, ptr noundef %4, i32 noundef %6) #16
  br label %cleanup133

if.end52:                                         ; preds = %if.end17
  %arrayidx53 = getelementptr inbounds [31 x ptr], ptr %tb, i32 0, i32 19
  %95 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx53, align 4
  %tobool54.not = icmp eq ptr %96, null
  br i1 %tobool54.not, label %if.end52.if.end62_crit_edge, label %if.then55

if.end52.if.end62_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end62

if.then55:                                        ; preds = %if.end52
  %call58 = call i32 @nla_get_labels(ptr noundef nonnull %96, i8 noundef zeroext 30, ptr noundef nonnull %n_labels, ptr noundef nonnull %labels, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59.not = icmp eq i32 %call58, 0
  br i1 %cmp59.not, label %if.end61, label %if.then55.cleanup133_crit_edge

if.then55.cleanup133_crit_edge:                   ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup133

if.end61:                                         ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #18
  %97 = ptrtoint ptr %n_labels to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %n_labels, align 1
  %conv = zext i8 %98 to i32
  %mul = shl nuw nsw i32 %conv, 2
  br label %if.end62

if.end62:                                         ; preds = %if.end61, %if.end52.if.end62_crit_edge
  %hdr_size.0 = phi i32 [ %mul, %if.end61 ], [ 0, %if.end52.if.end62_crit_edge ]
  %call.i = call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #16
  %tobool64.not = icmp eq ptr %call.i, null
  br i1 %tobool64.not, label %if.end62.cleanup133_crit_edge, label %if.end66

if.end62.cleanup133_crit_edge:                    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup133

if.end66:                                         ; preds = %if.end62
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 18
  %99 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 -30649, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hdr_size.0)
  %tobool67.not = icmp eq i32 %hdr_size.0, 0
  br i1 %tobool67.not, label %if.end87.thread, label %if.then68

if.then68:                                        ; preds = %if.end66
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 12
  %100 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %if.then68.skb_cloned.exit.i_crit_edge, label %land.rhs.i.i

if.then68.skb_cloned.exit.i_crit_edge:            ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #18
  br label %skb_cloned.exit.i

land.rhs.i.i:                                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #18
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 17
  %101 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %end.i.i.i, align 4
  %dataref.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %102, i32 0, i32 10
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i.i, i32 noundef 4) #16
  %103 = ptrtoint ptr %dataref.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile i32, ptr %dataref.i.i, align 4
  %and.i.i237 = and i32 %104, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i237)
  %cmp.i.not.i = icmp eq i32 %and.i.i237, 1
  br label %skb_cloned.exit.i

skb_cloned.exit.i:                                ; preds = %land.rhs.i.i, %if.then68.skb_cloned.exit.i_crit_edge
  %105 = phi i1 [ true, %if.then68.skb_cloned.exit.i_crit_edge ], [ %cmp.i.not.i, %land.rhs.i.i ]
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %106 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %data.i.i.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 18
  %108 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %107 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %109 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i.i, i32 %hdr_size.0)
  %tobool.not.i3.i = icmp uge i32 %sub.ptr.sub.i.i.i, %hdr_size.0
  %or.cond.i.i = and i1 %105, %tobool.not.i3.i
  br i1 %or.cond.i.i, label %skb_cloned.exit.i.if.end72_crit_edge, label %skb_cow.exit

skb_cloned.exit.i.if.end72_crit_edge:             ; preds = %skb_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end72

skb_cow.exit:                                     ; preds = %skb_cloned.exit.i
  %110 = call i32 @llvm.usub.sat.i32(i32 %hdr_size.0, i32 %sub.ptr.sub.i.i.i) #16
  %add.i.i = add nuw nsw i32 %110, 127
  %and.i4.i = and i32 %add.i.i, -128
  %call4.i.i = call i32 @pskb_expand_head(ptr noundef nonnull %call.i, i32 noundef %and.i4.i, i32 noundef 0, i32 noundef 2592) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool70.not = icmp eq i32 %call4.i.i, 0
  br i1 %tobool70.not, label %skb_cow.exit.if.end72_crit_edge, label %skb_cow.exit.errout_free_crit_edge

skb_cow.exit.errout_free_crit_edge:               ; preds = %skb_cow.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %errout_free

skb_cow.exit.if.end72_crit_edge:                  ; preds = %skb_cow.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end72

if.end72:                                         ; preds = %skb_cow.exit.if.end72_crit_edge, %skb_cloned.exit.i.if.end72_crit_edge
  %111 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i238 = getelementptr i8, ptr %112, i32 %hdr_size.0
  store ptr %add.ptr.i238, ptr %data.i.i.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %113 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %114, i32 %hdr_size.0
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %call73 = call ptr @skb_push(ptr noundef nonnull %call.i, i32 noundef %hdr_size.0) #16
  %115 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %data.i.i.i, align 4
  %117 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %116 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %118 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 20
  %119 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 %conv.i, ptr %network_header.i, align 4
  %conv.i.i = and i32 %sub.ptr.sub.i, 65535
  %add.ptr.i.i = getelementptr i8, ptr %118, i32 %conv.i.i
  %120 = ptrtoint ptr %n_labels to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %n_labels, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %cmp76289.not = icmp eq i8 %121, 0
  br i1 %cmp76289.not, label %if.end72.if.end87_crit_edge, label %for.body.preheader

if.end72.if.end87_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end87

for.body.preheader:                               ; preds = %if.end72
  %conv75 = zext i8 %121 to i32
  %i.0288 = add nsw i32 %conv75, -1
  %arrayidx78.peel = getelementptr %struct.mpls_shim_hdr, ptr %add.ptr.i.i, i32 %i.0288
  %arrayidx80.peel = getelementptr [30 x i32], ptr %labels, i32 0, i32 %i.0288
  %122 = ptrtoint ptr %arrayidx80.peel to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %arrayidx80.peel, align 4
  %shl.i.peel = shl i32 %123, 12
  %or4.i.peel = or i32 %shl.i.peel, 257
  %124 = ptrtoint ptr %arrayidx78.peel to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %or4.i.peel, ptr %arrayidx78.peel, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %121)
  %cmp76.peel.not = icmp eq i8 %121, 1
  br i1 %cmp76.peel.not, label %for.body.preheader.if.end87_crit_edge, label %for.body.peel.next

for.body.preheader.if.end87_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end87

for.body.peel.next:                               ; preds = %for.body.preheader
  %i.0.peel = add nsw i32 %conv75, -2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.peel.next
  %i.0291 = phi i32 [ %i.0, %for.body.for.body_crit_edge ], [ %i.0.peel, %for.body.peel.next ]
  %arrayidx78 = getelementptr %struct.mpls_shim_hdr, ptr %add.ptr.i.i, i32 %i.0291
  %arrayidx80 = getelementptr [30 x i32], ptr %labels, i32 0, i32 %i.0291
  %125 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %arrayidx80, align 4
  %shl.i = shl i32 %126, 12
  %or4.i = or i32 %shl.i, 1
  %127 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %or4.i, ptr %arrayidx78, align 4
  %i.0 = add nsw i32 %i.0291, -1
  %cmp76 = icmp sgt i32 %i.0291, 0
  br i1 %cmp76, label %for.body.for.body_crit_edge, label %for.body.if.end87_crit_edge, !llvm.loop !235

for.body.if.end87_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end87

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

if.end87:                                         ; preds = %for.body.if.end87_crit_edge, %for.body.preheader.if.end87_crit_edge, %if.end72.if.end87_crit_edge
  %call88 = call fastcc ptr @mpls_select_multipath(ptr noundef nonnull %call14, ptr noundef nonnull %call.i)
  %tobool89.not = icmp eq ptr %call88, null
  br i1 %tobool89.not, label %if.end87.errout_free_crit_edge, label %if.then93

if.end87.errout_free_crit_edge:                   ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #18
  br label %errout_free

if.end87.thread:                                  ; preds = %if.end66
  %call88276 = call fastcc ptr @mpls_select_multipath(ptr noundef nonnull %call14, ptr noundef nonnull %call.i)
  %tobool89.not277 = icmp eq ptr %call88276, null
  br i1 %tobool89.not277, label %if.end87.thread.errout_free_crit_edge, label %if.end87.thread.if.end95_crit_edge

if.end87.thread.if.end95_crit_edge:               ; preds = %if.end87.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end95

if.end87.thread.errout_free_crit_edge:            ; preds = %if.end87.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %errout_free

if.then93:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #18
  %call94 = call ptr @skb_pull(ptr noundef nonnull %call.i, i32 noundef %hdr_size.0) #16
  %128 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %data.i.i.i, align 4
  %130 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i242 = ptrtoint ptr %129 to i32
  %sub.ptr.rhs.cast.i243 = ptrtoint ptr %131 to i32
  %sub.ptr.sub.i244 = sub i32 %sub.ptr.lhs.cast.i242, %sub.ptr.rhs.cast.i243
  %conv.i245 = trunc i32 %sub.ptr.sub.i244 to i16
  %132 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 %conv.i245, ptr %network_header.i, align 4
  br label %if.end95

if.end95:                                         ; preds = %if.then93, %if.end87.thread.if.end95_crit_edge
  %call88278280 = phi ptr [ %call88, %if.then93 ], [ %call88276, %if.end87.thread.if.end95_crit_edge ]
  %nlmsg_seq96 = getelementptr inbounds %struct.nlmsghdr, ptr %in_nlh, i32 0, i32 3
  %133 = ptrtoint ptr %nlmsg_seq96 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %nlmsg_seq96, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 7
  %135 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %tobool.i.not.i.i = icmp eq i32 %136, 0
  br i1 %tobool.i.not.i.i, label %skb_tailroom.exit.i, label %if.end95.errout_free_crit_edge

if.end95.errout_free_crit_edge:                   ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #18
  br label %errout_free

skb_tailroom.exit.i:                              ; preds = %if.end95
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 17
  %137 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %end.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %139 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %138 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %140 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %sub.ptr.sub.i.i)
  %cmp.i247 = icmp slt i32 %sub.ptr.sub.i.i, 28
  br i1 %cmp.i247, label %skb_tailroom.exit.i.errout_free_crit_edge, label %nlmsg_put.exit, !prof !220

skb_tailroom.exit.i.errout_free_crit_edge:        ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %errout_free

nlmsg_put.exit:                                   ; preds = %skb_tailroom.exit.i
  %call3.i248 = call ptr @__nlmsg_put(ptr noundef %call.i, i32 noundef %6, i32 noundef %134, i32 noundef 24, i32 noundef 12, i32 noundef 0) #16
  %tobool98.not = icmp eq ptr %call3.i248, null
  br i1 %tobool98.not, label %nlmsg_put.exit.errout_free_crit_edge, label %if.end100

nlmsg_put.exit.errout_free_crit_edge:             ; preds = %nlmsg_put.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %errout_free

if.end100:                                        ; preds = %nlmsg_put.exit
  %add.ptr.i250 = getelementptr i8, ptr %call3.i248, i32 16
  %141 = ptrtoint ptr %add.ptr.i250 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 28, ptr %add.ptr.i250, align 4
  %rtm_dst_len = getelementptr i8, ptr %call3.i248, i32 17
  %142 = ptrtoint ptr %rtm_dst_len to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 20, ptr %rtm_dst_len, align 1
  %rtm_src_len = getelementptr i8, ptr %call3.i248, i32 18
  %143 = ptrtoint ptr %rtm_src_len to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 0, ptr %rtm_src_len, align 2
  %rtm_table = getelementptr i8, ptr %call3.i248, i32 20
  %144 = ptrtoint ptr %rtm_table to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 -2, ptr %rtm_table, align 4
  %rtm_type = getelementptr i8, ptr %call3.i248, i32 23
  %145 = ptrtoint ptr %rtm_type to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 1, ptr %rtm_type, align 1
  %rtm_scope = getelementptr i8, ptr %call3.i248, i32 22
  %146 = ptrtoint ptr %rtm_scope to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 0, ptr %rtm_scope, align 2
  %rt_protocol = getelementptr inbounds %struct.mpls_route, ptr %call14, i32 0, i32 1
  %147 = ptrtoint ptr %rt_protocol to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %rt_protocol, align 4
  %rtm_protocol = getelementptr i8, ptr %call3.i248, i32 21
  %149 = ptrtoint ptr %rtm_protocol to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %148, ptr %rtm_protocol, align 1
  %rtm_flags102 = getelementptr i8, ptr %call3.i248, i32 24
  %150 = ptrtoint ptr %rtm_flags102 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 0, ptr %rtm_flags102, align 4
  %call.i251 = call ptr @nla_reserve(ptr noundef %call.i, i32 noundef 1, i32 noundef 4) #16
  %tobool.not.i252 = icmp eq ptr %call.i251, null
  br i1 %tobool.not.i252, label %if.end100.nla_put_failure_crit_edge, label %if.end106

if.end100.nla_put_failure_crit_edge:              ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #18
  br label %nla_put_failure

if.end106:                                        ; preds = %if.end100
  %add.ptr.i.i253 = getelementptr i8, ptr %call.i251, i32 4
  %151 = ptrtoint ptr %in_label to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %in_label, align 4
  %shl.i.peel.i = shl i32 %152, 12
  %or2.i.peel.i = or i32 %shl.i.peel.i, 256
  %153 = ptrtoint ptr %add.ptr.i.i253 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %or2.i.peel.i, ptr %add.ptr.i.i253, align 4
  %nh_labels = getelementptr inbounds %struct.mpls_nh, ptr %call88278280, i32 0, i32 2
  %154 = ptrtoint ptr %nh_labels to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %nh_labels, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %155)
  %tobool108.not = icmp eq i8 %155, 0
  br i1 %tobool108.not, label %if.end106.if.end114_crit_edge, label %land.lhs.true

if.end106.if.end114_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end114

land.lhs.true:                                    ; preds = %if.end106
  %nh_label = getelementptr inbounds %struct.mpls_nh, ptr %call88278280, i32 0, i32 6
  %call111 = call i32 @nla_put_labels(ptr noundef nonnull %call.i, i32 noundef 19, i8 noundef zeroext %155, ptr noundef %nh_label)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %land.lhs.true.if.end114_crit_edge, label %land.lhs.true.nla_put_failure_crit_edge

land.lhs.true.nla_put_failure_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %nla_put_failure

land.lhs.true.if.end114_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end114

if.end114:                                        ; preds = %land.lhs.true.if.end114_crit_edge, %if.end106.if.end114_crit_edge
  %nh_via_table = getelementptr inbounds %struct.mpls_nh, ptr %call88278280, i32 0, i32 4
  %156 = ptrtoint ptr %nh_via_table to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %nh_via_table, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %157)
  %cmp116.not = icmp eq i8 %157, 4
  br i1 %cmp116.not, label %if.end114.if.end125_crit_edge, label %land.lhs.true118

if.end114.if.end125_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end125

land.lhs.true118:                                 ; preds = %if.end114
  %rt_via_offset.i.i = getelementptr inbounds %struct.mpls_route, ptr %call14, i32 0, i32 8
  %158 = ptrtoint ptr %rt_via_offset.i.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %rt_via_offset.i.i, align 1
  %conv.i.i256 = zext i8 %159 to i32
  %add.ptr.i.i257 = getelementptr i8, ptr %call88278280, i32 %conv.i.i256
  %nh_via_alen = getelementptr inbounds %struct.mpls_nh, ptr %call88278280, i32 0, i32 3
  %160 = ptrtoint ptr %nh_via_alen to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %nh_via_alen, align 1
  %conv121 = zext i8 %161 to i32
  %call122 = call fastcc i32 @nla_put_via(ptr noundef nonnull %call.i, i8 noundef zeroext %157, ptr noundef %add.ptr.i.i257, i32 noundef %conv121)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %land.lhs.true118.if.end125_crit_edge, label %land.lhs.true118.nla_put_failure_crit_edge

land.lhs.true118.nla_put_failure_crit_edge:       ; preds = %land.lhs.true118
  call void @__sanitizer_cov_trace_pc() #18
  br label %nla_put_failure

land.lhs.true118.if.end125_crit_edge:             ; preds = %land.lhs.true118
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end125

if.end125:                                        ; preds = %land.lhs.true118.if.end125_crit_edge, %if.end114.if.end125_crit_edge
  %162 = ptrtoint ptr %call88278280 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %call88278280, align 4
  %tobool126.not = icmp eq ptr %163, null
  br i1 %tobool126.not, label %if.end125.if.end131_crit_edge, label %land.lhs.true127

if.end125.if.end131_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end131

land.lhs.true127:                                 ; preds = %if.end125
  %ifindex = getelementptr inbounds %struct.net_device, ptr %163, i32 0, i32 17
  %164 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %ifindex, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #16
  %166 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %165, ptr %tmp.i, align 4
  %call.i258 = call i32 @nla_put(ptr noundef %call.i, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i258)
  %tobool129.not = icmp eq i32 %call.i258, 0
  br i1 %tobool129.not, label %land.lhs.true127.if.end131_crit_edge, label %land.lhs.true127.nla_put_failure_crit_edge

land.lhs.true127.nla_put_failure_crit_edge:       ; preds = %land.lhs.true127
  call void @__sanitizer_cov_trace_pc() #18
  br label %nla_put_failure

land.lhs.true127.if.end131_crit_edge:             ; preds = %land.lhs.true127
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end131

if.end131:                                        ; preds = %land.lhs.true127.if.end131_crit_edge, %if.end125.if.end131_crit_edge
  %167 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i260 = ptrtoint ptr %168 to i32
  %sub.ptr.rhs.cast.i261 = ptrtoint ptr %call3.i248 to i32
  %sub.ptr.sub.i262 = sub i32 %sub.ptr.lhs.cast.i260, %sub.ptr.rhs.cast.i261
  %169 = ptrtoint ptr %call3.i248 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %sub.ptr.sub.i262, ptr %call3.i248, align 4
  %call132 = call i32 @rtnl_unicast(ptr noundef nonnull %call.i, ptr noundef %4, i32 noundef %6) #16
  br label %cleanup133

nla_put_failure:                                  ; preds = %land.lhs.true127.nla_put_failure_crit_edge, %land.lhs.true118.nla_put_failure_crit_edge, %land.lhs.true.nla_put_failure_crit_edge, %if.end100.nla_put_failure_crit_edge
  call fastcc void @nlmsg_cancel(ptr noundef nonnull %call.i, ptr noundef nonnull %call3.i248)
  br label %errout_free

errout_free:                                      ; preds = %nla_put_failure, %nlmsg_put.exit.errout_free_crit_edge, %skb_tailroom.exit.i.errout_free_crit_edge, %if.end95.errout_free_crit_edge, %if.end87.thread.errout_free_crit_edge, %if.end87.errout_free_crit_edge, %skb_cow.exit.errout_free_crit_edge, %do.end, %if.then27.errout_free_crit_edge
  %skb.0 = phi ptr [ %call.i, %nla_put_failure ], [ %call.i.i, %do.end ], [ %call.i.i, %if.then27.errout_free_crit_edge ], [ %call.i, %if.end87.errout_free_crit_edge ], [ %call.i, %nlmsg_put.exit.errout_free_crit_edge ], [ %call.i, %skb_cow.exit.errout_free_crit_edge ], [ %call.i, %if.end87.thread.errout_free_crit_edge ], [ %call.i, %skb_tailroom.exit.i.errout_free_crit_edge ], [ %call.i, %if.end95.errout_free_crit_edge ]
  %err.4 = phi i32 [ -90, %nla_put_failure ], [ -90, %do.end ], [ %call25, %if.then27.errout_free_crit_edge ], [ -101, %if.end87.errout_free_crit_edge ], [ -90, %nlmsg_put.exit.errout_free_crit_edge ], [ -105, %skb_cow.exit.errout_free_crit_edge ], [ -101, %if.end87.thread.errout_free_crit_edge ], [ -90, %skb_tailroom.exit.i.errout_free_crit_edge ], [ -90, %if.end95.errout_free_crit_edge ]
  call void @kfree_skb_reason(ptr noundef %skb.0, i32 noundef 0) #16
  br label %cleanup133

cleanup133:                                       ; preds = %errout_free, %if.end131, %if.end62.cleanup133_crit_edge, %if.then55.cleanup133_crit_edge, %if.end50, %lfib_nlmsg_size.exit.cleanup133_crit_edge, %if.end13.cleanup133_crit_edge, %cleanup.thread, %mpls_valid_getroute_req.exit.cleanup133_crit_edge, %if.then81.i, %do.body78.i.cleanup133_crit_edge, %if.then66.i, %do.body63.i.cleanup133_crit_edge, %if.then45.i, %do.body42.i.cleanup133_crit_edge, %if.then34.i, %do.body31.i.cleanup133_crit_edge, %if.then1.i.i.i, %do.body.i.i.i.cleanup133_crit_edge, %if.then1.i, %do.body.i.cleanup133_crit_edge
  %retval.0 = phi i32 [ %err.4, %errout_free ], [ %call51, %if.end50 ], [ %retval.0.i, %mpls_valid_getroute_req.exit.cleanup133_crit_edge ], [ %call132, %if.end131 ], [ -101, %if.end13.cleanup133_crit_edge ], [ -105, %lfib_nlmsg_size.exit.cleanup133_crit_edge ], [ -22, %if.then55.cleanup133_crit_edge ], [ -105, %if.end62.cleanup133_crit_edge ], [ -22, %cleanup.thread ], [ -22, %if.then1.i ], [ -22, %do.body.i.cleanup133_crit_edge ], [ -22, %if.then34.i ], [ -22, %do.body31.i.cleanup133_crit_edge ], [ -22, %if.then45.i ], [ -22, %do.body42.i.cleanup133_crit_edge ], [ -22, %if.then66.i ], [ -22, %do.body63.i.cleanup133_crit_edge ], [ -22, %if.then81.i ], [ -22, %do.body78.i.cleanup133_crit_edge ], [ -22, %if.then1.i.i.i ], [ -22, %do.body.i.i.i.cleanup133_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %n_labels) #16
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %labels) #16
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %tb) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %in_label) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mpls_dump_routes(ptr noundef %skb, ptr noundef %cb) #2 align 64 {
entry:
  %filter = alloca %struct.fib_dump_filter, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %nlh1 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %0 = ptrtoint ptr %nlh1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nlh1, align 4
  %2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %skc_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %filter) #16
  %7 = call ptr @memset(ptr %filter, i32 0, i32 20)
  %call2 = tail call i32 @rtnl_is_locked() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end31_crit_edge

entry.if.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end31

land.rhs:                                         ; preds = %entry
  %.b164 = load i1, ptr @mpls_dump_routes.__already_done, align 1
  br i1 %.b164, label %land.rhs.if.end31_crit_edge, label %if.then, !prof !226

land.rhs.if.end31_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end31

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @mpls_dump_routes.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 2182, i32 noundef 9, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.12, i32 noundef 2182) #16
  br label %if.end31

if.end31:                                         ; preds = %if.then, %land.rhs.if.end31_crit_edge, %entry.if.end31_crit_edge
  %strict_check = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 12
  %8 = ptrtoint ptr %strict_check to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %strict_check, align 4, !range !236
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool39.not = icmp eq i8 %9, 0
  br i1 %tobool39.not, label %if.end31.if.end58_crit_edge, label %if.then40

if.end31.if.end58_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end58

if.then40:                                        ; preds = %if.end31
  %call.i = call i32 @ip_valid_fib_dump_req(ptr noundef %6, ptr noundef %1, ptr noundef nonnull %filter, ptr noundef %cb) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then40.cleanup127_crit_edge, label %if.end43

if.then40.cleanup127_crit_edge:                   ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup127

if.end43:                                         ; preds = %if.then40
  %10 = ptrtoint ptr %filter to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %filter, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %11, label %if.end43.cleanup127.sink.split_crit_edge [
    i32 0, label %if.end43.lor.lhs.false_crit_edge
    i32 254, label %if.end43.lor.lhs.false_crit_edge176
  ]

if.end43.lor.lhs.false_crit_edge176:              ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false

if.end43.lor.lhs.false_crit_edge:                 ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false

if.end43.cleanup127.sink.split_crit_edge:         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup127.sink.split

lor.lhs.false:                                    ; preds = %if.end43.lor.lhs.false_crit_edge, %if.end43.lor.lhs.false_crit_edge176
  %rt_type = getelementptr inbounds %struct.fib_dump_filter, ptr %filter, i32 0, i32 5
  %13 = ptrtoint ptr %rt_type to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %rt_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %14)
  %switch165 = icmp ult i8 %14, 2
  br i1 %switch165, label %lor.lhs.false53, label %lor.lhs.false.cleanup127.sink.split_crit_edge

lor.lhs.false.cleanup127.sink.split_crit_edge:    ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup127.sink.split

lor.lhs.false53:                                  ; preds = %lor.lhs.false
  %flags54 = getelementptr inbounds %struct.fib_dump_filter, ptr %filter, i32 0, i32 6
  %15 = ptrtoint ptr %flags54 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool55.not = icmp eq i32 %16, 0
  br i1 %tobool55.not, label %lor.lhs.false53.if.end58_crit_edge, label %lor.lhs.false53.cleanup127.sink.split_crit_edge

lor.lhs.false53.cleanup127.sink.split_crit_edge:  ; preds = %lor.lhs.false53
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup127.sink.split

lor.lhs.false53.if.end58_crit_edge:               ; preds = %lor.lhs.false53
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end58

if.end58:                                         ; preds = %lor.lhs.false53.if.end58_crit_edge, %if.end31.if.end58_crit_edge
  %17 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %20 = call i32 @llvm.umax.i32(i32 %19, i32 16)
  %call64 = call zeroext i1 @lockdep_rtnl_is_held() #16
  br i1 %call64, label %if.end58.do.end73_crit_edge, label %land.lhs.true65

if.end58.do.end73_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end73

land.lhs.true65:                                  ; preds = %if.end58
  %call66 = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %land.lhs.true65.do.end73_crit_edge, label %land.lhs.true68

land.lhs.true65.do.end73_crit_edge:               ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end73

land.lhs.true68:                                  ; preds = %land.lhs.true65
  %.b160163 = load i1, ptr @mpls_dump_routes.__warned, align 1
  br i1 %.b160163, label %land.lhs.true68.do.end73_crit_edge, label %if.then70

land.lhs.true68.do.end73_crit_edge:               ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end73

if.then70:                                        ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @mpls_dump_routes.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 2204, ptr noundef nonnull @.str.25) #16
  br label %do.end73

do.end73:                                         ; preds = %if.then70, %land.lhs.true68.do.end73_crit_edge, %land.lhs.true65.do.end73_crit_edge, %if.end58.do.end73_crit_edge
  %platform_label75 = getelementptr inbounds %struct.net, ptr %6, i32 0, i32 49, i32 3
  %21 = ptrtoint ptr %platform_label75 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %platform_label75, align 4
  %platform_labels77 = getelementptr inbounds %struct.net, ptr %6, i32 0, i32 49, i32 2
  %23 = ptrtoint ptr %platform_labels77 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %platform_labels77, align 4
  %filter_set = getelementptr inbounds %struct.fib_dump_filter, ptr %filter, i32 0, i32 1
  %25 = ptrtoint ptr %filter_set to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %filter_set, align 4, !range !236
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool78.not = icmp eq i8 %26, 0
  %spec.select = select i1 %tobool78.not, i32 2, i32 34
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %24)
  %cmp81172 = icmp ult i32 %20, %24
  br i1 %cmp81172, label %for.body.lr.ph, label %do.end73.for.end_crit_edge

do.end73.for.end_crit_edge:                       ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end73
  %dev = getelementptr inbounds %struct.fib_dump_filter, ptr %filter, i32 0, i32 7
  %protocol = getelementptr inbounds %struct.fib_dump_filter, ptr %filter, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %index.0173 = phi i32 [ %20, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %call84 = call zeroext i1 @lockdep_rtnl_is_held() #16
  br i1 %call84, label %for.body.do.end93_crit_edge, label %land.lhs.true85

for.body.do.end93_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end93

land.lhs.true85:                                  ; preds = %for.body
  %call86 = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %land.lhs.true85.do.end93_crit_edge, label %land.lhs.true88

land.lhs.true85.do.end93_crit_edge:               ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end93

land.lhs.true88:                                  ; preds = %land.lhs.true85
  %.b161162 = load i1, ptr @mpls_dump_routes.__warned.37, align 1
  br i1 %.b161162, label %land.lhs.true88.do.end93_crit_edge, label %if.then90

land.lhs.true88.do.end93_crit_edge:               ; preds = %land.lhs.true88
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end93

if.then90:                                        ; preds = %land.lhs.true88
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @mpls_dump_routes.__warned.37, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 2213, ptr noundef nonnull @.str.25) #16
  br label %do.end93

do.end93:                                         ; preds = %if.then90, %land.lhs.true88.do.end93_crit_edge, %land.lhs.true85.do.end93_crit_edge, %for.body.do.end93_crit_edge
  %arrayidx95 = getelementptr ptr, ptr %22, i32 %index.0173
  %27 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx95, align 4
  %tobool96.not = icmp eq ptr %28, null
  br i1 %tobool96.not, label %do.end93.for.inc_crit_edge, label %if.end98

do.end93.for.inc_crit_edge:                       ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end98:                                         ; preds = %do.end93
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 4
  %tobool99.not = icmp eq ptr %30, null
  br i1 %tobool99.not, label %if.end98.lor.lhs.false103_crit_edge, label %land.lhs.true100

if.end98.lor.lhs.false103_crit_edge:              ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false103

land.lhs.true100:                                 ; preds = %if.end98
  %rt_nhn.i = getelementptr inbounds %struct.mpls_route, ptr %28, i32 0, i32 5
  %31 = ptrtoint ptr %rt_nhn.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %rt_nhn.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %32)
  %cmp.i = icmp eq i8 %32, 1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true100
  %rt_nh.i = getelementptr inbounds %struct.mpls_route, ptr %28, i32 0, i32 10
  %33 = ptrtoint ptr %rt_nh.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rt_nh.i, align 4
  %cmp2.not.i = icmp eq ptr %34, %30
  br i1 %cmp2.not.i, label %if.then.i.lor.lhs.false103_crit_edge, label %if.then.i.for.inc_crit_edge

if.then.i.for.inc_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then.i.lor.lhs.false103_crit_edge:             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false103

if.else.i:                                        ; preds = %land.lhs.true100
  %conv9.i = zext i8 %32 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp1033.not.i = icmp eq i8 %32, 0
  br i1 %cmp1033.not.i, label %if.else.i.for.inc_crit_edge, label %for.body.lr.ph.i

if.else.i.for.inc_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

for.body.lr.ph.i:                                 ; preds = %if.else.i
  %rt_nh6.i = getelementptr inbounds %struct.mpls_route, ptr %28, i32 0, i32 10
  %rt_nh_size.i = getelementptr inbounds %struct.mpls_route, ptr %28, i32 0, i32 7
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %nh5.035.i = phi ptr [ %rt_nh6.i, %for.body.lr.ph.i ], [ %add.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %nhsel.034.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %35 = ptrtoint ptr %nh5.035.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %nh5.035.i, align 4
  %cmp13.i = icmp eq ptr %36, %30
  br i1 %cmp13.i, label %for.body.i.lor.lhs.false103_crit_edge, label %for.inc.i

for.body.i.lor.lhs.false103_crit_edge:            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false103

for.inc.i:                                        ; preds = %for.body.i
  %37 = ptrtoint ptr %rt_nh_size.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %rt_nh_size.i, align 2
  %conv17.i = zext i8 %38 to i32
  %add.ptr.i = getelementptr i8, ptr %nh5.035.i, i32 %conv17.i
  %inc.i = add nuw nsw i32 %nhsel.034.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv9.i
  br i1 %exitcond.not.i, label %for.inc.i.for.inc_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.inc.i.for.inc_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

lor.lhs.false103:                                 ; preds = %for.body.i.lor.lhs.false103_crit_edge, %if.then.i.lor.lhs.false103_crit_edge, %if.end98.lor.lhs.false103_crit_edge
  %39 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %protocol, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool105.not = icmp eq i8 %40, 0
  br i1 %tobool105.not, label %lor.lhs.false103.cleanup122_crit_edge, label %land.lhs.true106

lor.lhs.false103.cleanup122_crit_edge:            ; preds = %lor.lhs.false103
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup122

land.lhs.true106:                                 ; preds = %lor.lhs.false103
  %rt_protocol = getelementptr inbounds %struct.mpls_route, ptr %28, i32 0, i32 1
  %41 = ptrtoint ptr %rt_protocol to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %rt_protocol, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %42, i8 %40)
  %cmp110.not = icmp eq i8 %42, %40
  br i1 %cmp110.not, label %land.lhs.true106.cleanup122_crit_edge, label %land.lhs.true106.for.inc_crit_edge

land.lhs.true106.for.inc_crit_edge:               ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

land.lhs.true106.cleanup122_crit_edge:            ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup122

cleanup122:                                       ; preds = %land.lhs.true106.cleanup122_crit_edge, %lor.lhs.false103.cleanup122_crit_edge
  %43 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cb, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %44, i32 0, i32 3, i32 12
  %45 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %portid, align 4
  %47 = ptrtoint ptr %nlh1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %nlh1, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %nlmsg_seq, align 4
  %call117 = call fastcc i32 @mpls_dump_route(ptr noundef %skb, i32 noundef %46, i32 noundef %50, i32 noundef 24, i32 noundef %index.0173, ptr noundef nonnull %28, i32 noundef %spec.select)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %cmp118 = icmp slt i32 %call117, 0
  br i1 %cmp118, label %cleanup122.for.end_crit_edge, label %cleanup122.for.inc_crit_edge

cleanup122.for.inc_crit_edge:                     ; preds = %cleanup122
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

cleanup122.for.end_crit_edge:                     ; preds = %cleanup122
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.inc:                                          ; preds = %cleanup122.for.inc_crit_edge, %land.lhs.true106.for.inc_crit_edge, %for.inc.i.for.inc_crit_edge, %if.else.i.for.inc_crit_edge, %if.then.i.for.inc_crit_edge, %do.end93.for.inc_crit_edge
  %inc = add nuw i32 %index.0173, 1
  %exitcond.not = icmp eq i32 %inc, %24
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cleanup122.for.end_crit_edge, %do.end73.for.end_crit_edge
  %index.0.lcssa = phi i32 [ %20, %do.end73.for.end_crit_edge ], [ %index.0173, %cleanup122.for.end_crit_edge ], [ %24, %for.inc.for.end_crit_edge ]
  %51 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %index.0.lcssa, ptr %17, align 4
  br label %cleanup127.sink.split

cleanup127.sink.split:                            ; preds = %for.end, %lor.lhs.false53.cleanup127.sink.split_crit_edge, %lor.lhs.false.cleanup127.sink.split_crit_edge, %if.end43.cleanup127.sink.split_crit_edge
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %52 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %len, align 4
  br label %cleanup127

cleanup127:                                       ; preds = %cleanup127.sink.split, %if.then40.cleanup127_crit_edge
  %retval.1 = phi i32 [ %call.i, %if.then40.cleanup127_crit_edge ], [ %53, %cleanup127.sink.split ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %filter) #16
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mpls_netconf_get_devconf(ptr noundef %in_skb, ptr noundef %nlh, ptr noundef %extack) #2 align 64 {
entry:
  %tb = alloca [9 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %in_skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %tb) #16
  %5 = call ptr @memset(ptr %tb, i32 255, i32 36)
  %6 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nlh, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %7)
  %cmp.i = icmp ult i32 %7, 17
  br i1 %cmp.i, label %do.body.i, label %if.end2.i

do.body.i:                                        ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mpls_netconf_valid_get_req.__msg) #16
  %tobool.not.i = icmp eq ptr %extack, null
  br i1 %tobool.not.i, label %do.body.i.errout_crit_edge, label %if.then1.i

do.body.i.errout_crit_edge:                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %errout

if.then1.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %8 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @mpls_netconf_valid_get_req.__msg, ptr %extack, align 4
  br label %errout

if.end2.i:                                        ; preds = %entry
  %call3.i = tail call zeroext i1 @netlink_strict_get_check(ptr noundef %in_skb) #16
  %9 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nlh, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %10)
  %cmp.i.i37.i = icmp ult i32 %10, 17
  br i1 %call3.i, label %if.end6.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end2.i
  br i1 %cmp.i.i37.i, label %do.body.i.i.i, label %if.end2.i.i.i

do.body.i.i.i:                                    ; preds = %if.then4.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nlmsg_parse.__msg) #16
  %tobool.not.i.i.i = icmp eq ptr %extack, null
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.errout_crit_edge, label %if.then1.i.i.i

do.body.i.i.i.errout_crit_edge:                   ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %errout

if.then1.i.i.i:                                   ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %11 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @__nlmsg_parse.__msg, ptr %extack, align 4
  br label %errout

if.end2.i.i.i:                                    ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i.i.i.i = getelementptr i8, ptr %nlh, i32 20
  %sub1.i.i.i.i = add i32 %10, -20
  %call5.i.i.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 8, ptr noundef %add.ptr.i.i.i.i, i32 noundef %sub1.i.i.i.i, ptr noundef nonnull @devconf_mpls_policy, i32 noundef 0, ptr noundef %extack) #16
  br label %mpls_netconf_valid_get_req.exit

if.end6.i:                                        ; preds = %if.end2.i
  br i1 %cmp.i.i37.i, label %do.body.i.i39.i, label %nlmsg_parse_deprecated_strict.exit.i

do.body.i.i39.i:                                  ; preds = %if.end6.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nlmsg_parse.__msg) #16
  %tobool.not.i.i38.i = icmp eq ptr %extack, null
  br i1 %tobool.not.i.i38.i, label %do.body.i.i39.i.errout_crit_edge, label %if.then1.i.i40.i

do.body.i.i39.i.errout_crit_edge:                 ; preds = %do.body.i.i39.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %errout

if.then1.i.i40.i:                                 ; preds = %do.body.i.i39.i
  call void @__sanitizer_cov_trace_pc() #18
  %12 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @__nlmsg_parse.__msg, ptr %extack, align 4
  br label %errout

nlmsg_parse_deprecated_strict.exit.i:             ; preds = %if.end6.i
  %add.ptr.i.i.i42.i = getelementptr i8, ptr %nlh, i32 20
  %sub1.i.i.i43.i = add i32 %10, -20
  %call5.i.i44.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 8, ptr noundef %add.ptr.i.i.i42.i, i32 noundef %sub1.i.i.i43.i, ptr noundef nonnull @devconf_mpls_policy, i32 noundef 3, ptr noundef %extack) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i44.i)
  %tobool8.not.i = icmp eq i32 %call5.i.i44.i, 0
  br i1 %tobool8.not.i, label %for.body.preheader.i, label %nlmsg_parse_deprecated_strict.exit.i.mpls_netconf_valid_get_req.exit_crit_edge

nlmsg_parse_deprecated_strict.exit.i.mpls_netconf_valid_get_req.exit_crit_edge: ; preds = %nlmsg_parse_deprecated_strict.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mpls_netconf_valid_get_req.exit

for.body.preheader.i:                             ; preds = %nlmsg_parse_deprecated_strict.exit.i
  %13 = ptrtoint ptr %tb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tb, align 4
  %tobool12.not.i = icmp eq ptr %14, null
  br i1 %tobool12.not.i, label %for.cond.1.i, label %for.body.preheader.i.do.body15.i_crit_edge

for.body.preheader.i.do.body15.i_crit_edge:       ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body15.i

for.cond.1.i:                                     ; preds = %for.body.preheader.i
  %arrayidx.2.i = getelementptr inbounds ptr, ptr %tb, i32 2
  %15 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.2.i, align 4
  %tobool12.not.2.i = icmp eq ptr %16, null
  br i1 %tobool12.not.2.i, label %for.cond.2.i, label %for.cond.1.i.do.body15.i_crit_edge

for.cond.1.i.do.body15.i_crit_edge:               ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body15.i

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %arrayidx.3.i = getelementptr inbounds ptr, ptr %tb, i32 3
  %17 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.3.i, align 4
  %tobool12.not.3.i = icmp eq ptr %18, null
  br i1 %tobool12.not.3.i, label %for.cond.3.i, label %for.cond.2.i.do.body15.i_crit_edge

for.cond.2.i.do.body15.i_crit_edge:               ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body15.i

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %arrayidx.4.i = getelementptr inbounds ptr, ptr %tb, i32 4
  %19 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.4.i, align 4
  %tobool12.not.4.i = icmp eq ptr %20, null
  br i1 %tobool12.not.4.i, label %for.cond.4.i, label %for.cond.3.i.do.body15.i_crit_edge

for.cond.3.i.do.body15.i_crit_edge:               ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body15.i

for.cond.4.i:                                     ; preds = %for.cond.3.i
  %arrayidx.5.i = getelementptr inbounds ptr, ptr %tb, i32 5
  %21 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.5.i, align 4
  %tobool12.not.5.i = icmp eq ptr %22, null
  br i1 %tobool12.not.5.i, label %for.cond.5.i, label %for.cond.4.i.do.body15.i_crit_edge

for.cond.4.i.do.body15.i_crit_edge:               ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body15.i

for.cond.5.i:                                     ; preds = %for.cond.4.i
  %arrayidx.6.i = getelementptr inbounds ptr, ptr %tb, i32 6
  %23 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.6.i, align 4
  %tobool12.not.6.i = icmp eq ptr %24, null
  br i1 %tobool12.not.6.i, label %for.cond.6.i, label %for.cond.5.i.do.body15.i_crit_edge

for.cond.5.i.do.body15.i_crit_edge:               ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body15.i

for.cond.6.i:                                     ; preds = %for.cond.5.i
  %arrayidx.7.i = getelementptr inbounds ptr, ptr %tb, i32 7
  %25 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.7.i, align 4
  %tobool12.not.7.i = icmp eq ptr %26, null
  br i1 %tobool12.not.7.i, label %for.cond.7.i, label %for.cond.6.i.do.body15.i_crit_edge

for.cond.6.i.do.body15.i_crit_edge:               ; preds = %for.cond.6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body15.i

for.cond.7.i:                                     ; preds = %for.cond.6.i
  %arrayidx.8.i = getelementptr inbounds ptr, ptr %tb, i32 8
  %27 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.8.i, align 4
  %tobool12.not.8.i = icmp eq ptr %28, null
  br i1 %tobool12.not.8.i, label %for.cond.7.i.if.end_crit_edge, label %for.cond.7.i.do.body15.i_crit_edge

for.cond.7.i.do.body15.i_crit_edge:               ; preds = %for.cond.7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body15.i

for.cond.7.i.if.end_crit_edge:                    ; preds = %for.cond.7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.body15.i:                                      ; preds = %for.cond.7.i.do.body15.i_crit_edge, %for.cond.6.i.do.body15.i_crit_edge, %for.cond.5.i.do.body15.i_crit_edge, %for.cond.4.i.do.body15.i_crit_edge, %for.cond.3.i.do.body15.i_crit_edge, %for.cond.2.i.do.body15.i_crit_edge, %for.cond.1.i.do.body15.i_crit_edge, %for.body.preheader.i.do.body15.i_crit_edge
  call void @do_trace_netlink_extack(ptr noundef nonnull @mpls_netconf_valid_get_req.__msg.38) #16
  %tobool17.not.i = icmp eq ptr %extack, null
  br i1 %tobool17.not.i, label %do.body15.i.errout_crit_edge, label %if.then18.i

do.body15.i.errout_crit_edge:                     ; preds = %do.body15.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %errout

if.then18.i:                                      ; preds = %do.body15.i
  call void @__sanitizer_cov_trace_pc() #18
  %29 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @mpls_netconf_valid_get_req.__msg.38, ptr %extack, align 4
  br label %errout

mpls_netconf_valid_get_req.exit:                  ; preds = %nlmsg_parse_deprecated_strict.exit.i.mpls_netconf_valid_get_req.exit_crit_edge, %if.end2.i.i.i
  %retval.0.i = phi i32 [ %call5.i.i44.i, %nlmsg_parse_deprecated_strict.exit.i.mpls_netconf_valid_get_req.exit_crit_edge ], [ %call5.i.i.i, %if.end2.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %mpls_netconf_valid_get_req.exit.errout_crit_edge, label %mpls_netconf_valid_get_req.exit.if.end_crit_edge

mpls_netconf_valid_get_req.exit.if.end_crit_edge: ; preds = %mpls_netconf_valid_get_req.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

mpls_netconf_valid_get_req.exit.errout_crit_edge: ; preds = %mpls_netconf_valid_get_req.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %errout

if.end:                                           ; preds = %mpls_netconf_valid_get_req.exit.if.end_crit_edge, %for.cond.7.i.if.end_crit_edge
  %arrayidx = getelementptr inbounds [9 x ptr], ptr %tb, i32 0, i32 1
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %31, null
  br i1 %tobool.not, label %if.end.errout_crit_edge, label %if.end3

if.end.errout_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %errout

if.end3:                                          ; preds = %if.end
  %add.ptr.i.i = getelementptr i8, ptr %31, i32 4
  %32 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr.i.i, align 4
  %call6 = call ptr @__dev_get_by_index(ptr noundef %4, i32 noundef %33) #16
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end3.errout_crit_edge, label %if.end9

if.end3.errout_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %errout

if.end9:                                          ; preds = %if.end3
  %mpls_ptr.i = getelementptr inbounds %struct.net_device, ptr %call6, i32 0, i32 84
  %34 = ptrtoint ptr %mpls_ptr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %mpls_ptr.i, align 8
  %call.i = call zeroext i1 @lockdep_rtnl_is_held() #16
  br i1 %call.i, label %if.end9.mpls_dev_get.exit_crit_edge, label %lor.lhs.false.i

if.end9.mpls_dev_get.exit_crit_edge:              ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %mpls_dev_get.exit

lor.lhs.false.i:                                  ; preds = %if.end9
  %call2.i = call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i62 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i62, label %land.lhs.true.i, label %lor.lhs.false.i.mpls_dev_get.exit_crit_edge

lor.lhs.false.i.mpls_dev_get.exit_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mpls_dev_get.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call3.i63 = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i63)
  %tobool4.not.i = icmp eq i32 %call3.i63, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.mpls_dev_get.exit_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.mpls_dev_get.exit_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mpls_dev_get.exit

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b10.i = load i1, ptr @mpls_dev_get.__warned, align 1
  br i1 %.b10.i, label %land.lhs.true5.i.mpls_dev_get.exit_crit_edge, label %if.then.i

land.lhs.true5.i.mpls_dev_get.exit_crit_edge:     ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mpls_dev_get.exit

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @mpls_dev_get.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 189, ptr noundef nonnull @.str.7) #16
  br label %mpls_dev_get.exit

mpls_dev_get.exit:                                ; preds = %if.then.i, %land.lhs.true5.i.mpls_dev_get.exit_crit_edge, %land.lhs.true.i.mpls_dev_get.exit_crit_edge, %lor.lhs.false.i.mpls_dev_get.exit_crit_edge, %if.end9.mpls_dev_get.exit_crit_edge
  %tobool11.not = icmp eq ptr %35, null
  br i1 %tobool11.not, label %mpls_dev_get.exit.errout_crit_edge, label %if.end13

mpls_dev_get.exit.errout_crit_edge:               ; preds = %mpls_dev_get.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %errout

if.end13:                                         ; preds = %mpls_dev_get.exit
  %call.i.i = call ptr @__alloc_skb(i32 noundef 36, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #16
  %tobool16.not = icmp eq ptr %call.i.i, null
  br i1 %tobool16.not, label %if.end13.errout_crit_edge, label %if.end18

if.end13.errout_crit_edge:                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %errout

if.end18:                                         ; preds = %if.end13
  %portid = getelementptr inbounds %struct.sk_buff, ptr %in_skb, i32 0, i32 3, i32 12
  %36 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %portid, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %nlh, i32 0, i32 3
  %38 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %nlmsg_seq, align 4
  %call19 = call fastcc i32 @mpls_netconf_fill_devconf(ptr noundef nonnull %call.i.i, ptr noundef nonnull %35, i32 noundef %37, i32 noundef %39, i32 noundef 80, i32 noundef 0, i32 noundef -1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.then21, label %if.end44

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_const_cmp4(i32 -90, i32 %call19)
  %cmp22 = icmp eq i32 %call19, -90
  br i1 %cmp22, label %do.end, label %if.then21.if.end37_crit_edge, !prof !220

if.then21.if.end37_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end37

do.end:                                           ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1291, i32 noundef 9, ptr noundef null) #16
  br label %if.end37

if.end37:                                         ; preds = %do.end, %if.then21.if.end37_crit_edge
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #16
  br label %errout

if.end44:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #18
  %40 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %portid, align 4
  %call47 = call i32 @rtnl_unicast(ptr noundef nonnull %call.i.i, ptr noundef %4, i32 noundef %41) #16
  br label %errout

errout:                                           ; preds = %if.end44, %if.end37, %if.end13.errout_crit_edge, %mpls_dev_get.exit.errout_crit_edge, %if.end3.errout_crit_edge, %if.end.errout_crit_edge, %mpls_netconf_valid_get_req.exit.errout_crit_edge, %if.then18.i, %do.body15.i.errout_crit_edge, %if.then1.i.i40.i, %do.body.i.i39.i.errout_crit_edge, %if.then1.i.i.i, %do.body.i.i.i.errout_crit_edge, %if.then1.i, %do.body.i.errout_crit_edge
  %err.0 = phi i32 [ %retval.0.i, %mpls_netconf_valid_get_req.exit.errout_crit_edge ], [ %call19, %if.end37 ], [ %call47, %if.end44 ], [ -105, %if.end13.errout_crit_edge ], [ -22, %mpls_dev_get.exit.errout_crit_edge ], [ -22, %if.end3.errout_crit_edge ], [ -22, %if.end.errout_crit_edge ], [ -22, %if.then1.i ], [ -22, %do.body.i.errout_crit_edge ], [ -22, %if.then18.i ], [ -22, %do.body15.i.errout_crit_edge ], [ -22, %if.then1.i.i.i ], [ -22, %do.body.i.i.i.errout_crit_edge ], [ -22, %if.then1.i.i40.i ], [ -22, %do.body.i.i39.i.errout_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %tb) #16
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mpls_netconf_dump_devconf(ptr noundef %skb, ptr nocapture noundef %cb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %nlh1 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %0 = ptrtoint ptr %nlh1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nlh1, align 4
  %2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %skc_net.i, align 4
  %strict_check = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 12
  %7 = ptrtoint ptr %strict_check to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %strict_check, align 4, !range !236
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %entry.if.end21_crit_edge, label %if.then

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end21

if.then:                                          ; preds = %entry
  %extack2 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 6
  %9 = ptrtoint ptr %extack2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %extack2, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %12)
  %cmp = icmp ult i32 %12, 17
  br i1 %cmp, label %do.body, label %if.end7

do.body:                                          ; preds = %if.then
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mpls_netconf_dump_devconf.__msg) #16
  %tobool5.not = icmp eq ptr %10, null
  br i1 %tobool5.not, label %do.body.cleanup80_crit_edge, label %if.then6

do.body.cleanup80_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup80

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @mpls_netconf_dump_devconf.__msg, ptr %10, align 4
  br label %cleanup80

if.end7:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %12)
  %tobool9.not = icmp eq i32 %12, 20
  br i1 %tobool9.not, label %if.end7.if.end21_crit_edge, label %do.body11

if.end7.if.end21_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end21

do.body11:                                        ; preds = %if.end7
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mpls_netconf_dump_devconf.__msg.39) #16
  %tobool13.not = icmp eq ptr %10, null
  br i1 %tobool13.not, label %do.body11.cleanup80_crit_edge, label %if.then14

do.body11.cleanup80_crit_edge:                    ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup80

if.then14:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #18
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @mpls_netconf_dump_devconf.__msg.39, ptr %10, align 4
  br label %cleanup80

if.end21:                                         ; preds = %if.end7.if.end21_crit_edge, %entry.if.end21_crit_edge
  %15 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %arrayidx22 = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %17)
  %cmp23163 = icmp slt i32 %17, 256
  br i1 %cmp23163, label %for.body.lr.ph, label %if.end21.done_crit_edge

if.end21.done_crit_edge:                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  br label %done

for.body.lr.ph:                                   ; preds = %if.end21
  %dev_index_head = getelementptr inbounds %struct.net, ptr %6, i32 0, i32 24
  %dev_base_seq = getelementptr inbounds %struct.net, ptr %6, i32 0, i32 3
  %seq = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 11
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %1, i32 0, i32 3
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %prev_seq.i = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %rcu_read_unlock.exit151.for.body_crit_edge, %for.body.lr.ph
  %s_idx.0166 = phi i32 [ %19, %for.body.lr.ph ], [ 0, %rcu_read_unlock.exit151.for.body_crit_edge ]
  %h.0164 = phi i32 [ %17, %for.body.lr.ph ], [ %inc76, %rcu_read_unlock.exit151.for.body_crit_edge ]
  %20 = ptrtoint ptr %dev_index_head to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev_index_head, align 16
  %arrayidx24 = getelementptr %struct.hlist_head, ptr %21, i32 %h.0164
  %22 = tail call i32 @llvm.read_register.i32(metadata !207) #16
  %and.i.i.i.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %25, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !237
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %for.body.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

for.body.rcu_read_lock.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %for.body
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.41, i32 noundef 696, ptr noundef nonnull @.str.42) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %for.body.rcu_read_lock.exit_crit_edge
  %26 = ptrtoint ptr %dev_base_seq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dev_base_seq, align 4
  %28 = ptrtoint ptr %seq to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %seq, align 4
  %call26 = tail call i32 @rcu_read_lock_any_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end35_crit_edge

rcu_read_lock.exit.do.end35_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end35

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call28 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %land.lhs.true.do.end35_crit_edge, label %land.lhs.true30

land.lhs.true.do.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end35

land.lhs.true30:                                  ; preds = %land.lhs.true
  %.b120 = load i1, ptr @mpls_netconf_dump_devconf.__warned, align 1
  br i1 %.b120, label %land.lhs.true30.do.end35_crit_edge, label %if.then32

land.lhs.true30.do.end35_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end35

if.then32:                                        ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @mpls_netconf_dump_devconf.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 1334, ptr noundef nonnull @.str.40) #16
  br label %do.end35

do.end35:                                         ; preds = %if.then32, %land.lhs.true30.do.end35_crit_edge, %land.lhs.true.do.end35_crit_edge, %rcu_read_lock.exit.do.end35_crit_edge
  %29 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %arrayidx24, align 4
  %tobool41.not = icmp eq ptr %30, null
  %add.ptr = getelementptr i8, ptr %30, i32 -664
  %tobool44.not158171 = icmp eq ptr %add.ptr, null
  %tobool44.not158 = or i1 %tobool41.not, %tobool44.not158171
  br i1 %tobool44.not158, label %do.end35.for.end_crit_edge, label %do.end35.for.body45_crit_edge

do.end35.for.body45_crit_edge:                    ; preds = %do.end35
  br label %for.body45

do.end35.for.end_crit_edge:                       ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body45:                                       ; preds = %cont.for.body45_crit_edge, %do.end35.for.body45_crit_edge
  %dev.0161 = phi ptr [ %add.ptr71, %cont.for.body45_crit_edge ], [ %add.ptr, %do.end35.for.body45_crit_edge ]
  %idx.1159 = phi i32 [ %inc, %cont.for.body45_crit_edge ], [ 0, %do.end35.for.body45_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.1159, i32 %s_idx.0166)
  %cmp46 = icmp slt i32 %idx.1159, %s_idx.0166
  br i1 %cmp46, label %for.body45.cont_crit_edge, label %if.end48

for.body45.cont_crit_edge:                        ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #18
  br label %cont

if.end48:                                         ; preds = %for.body45
  %mpls_ptr.i = getelementptr inbounds %struct.net_device, ptr %dev.0161, i32 0, i32 84
  %31 = ptrtoint ptr %mpls_ptr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %mpls_ptr.i, align 8
  %call.i125 = tail call zeroext i1 @lockdep_rtnl_is_held() #16
  br i1 %call.i125, label %if.end48.mpls_dev_get.exit_crit_edge, label %lor.lhs.false.i

if.end48.mpls_dev_get.exit_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #18
  br label %mpls_dev_get.exit

lor.lhs.false.i:                                  ; preds = %if.end48
  %call2.i = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i126 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i126, label %land.lhs.true.i127, label %lor.lhs.false.i.mpls_dev_get.exit_crit_edge

lor.lhs.false.i.mpls_dev_get.exit_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mpls_dev_get.exit

land.lhs.true.i127:                               ; preds = %lor.lhs.false.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i127.mpls_dev_get.exit_crit_edge, label %land.lhs.true5.i

land.lhs.true.i127.mpls_dev_get.exit_crit_edge:   ; preds = %land.lhs.true.i127
  call void @__sanitizer_cov_trace_pc() #18
  br label %mpls_dev_get.exit

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i127
  %.b10.i = load i1, ptr @mpls_dev_get.__warned, align 1
  br i1 %.b10.i, label %land.lhs.true5.i.mpls_dev_get.exit_crit_edge, label %if.then.i128

land.lhs.true5.i.mpls_dev_get.exit_crit_edge:     ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mpls_dev_get.exit

if.then.i128:                                     ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @mpls_dev_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 189, ptr noundef nonnull @.str.7) #16
  br label %mpls_dev_get.exit

mpls_dev_get.exit:                                ; preds = %if.then.i128, %land.lhs.true5.i.mpls_dev_get.exit_crit_edge, %land.lhs.true.i127.mpls_dev_get.exit_crit_edge, %lor.lhs.false.i.mpls_dev_get.exit_crit_edge, %if.end48.mpls_dev_get.exit_crit_edge
  %tobool50.not = icmp eq ptr %32, null
  br i1 %tobool50.not, label %mpls_dev_get.exit.cont_crit_edge, label %if.end52

mpls_dev_get.exit.cont_crit_edge:                 ; preds = %mpls_dev_get.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cont

if.end52:                                         ; preds = %mpls_dev_get.exit
  %33 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cb, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %34, i32 0, i32 3, i32 12
  %35 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %portid, align 4
  %37 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %nlmsg_seq, align 4
  %call55 = tail call fastcc i32 @mpls_netconf_fill_devconf(ptr noundef %skb, ptr noundef nonnull %32, i32 noundef %36, i32 noundef %38, i32 noundef 80, i32 noundef 2, i32 noundef -1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp56 = icmp slt i32 %call55, 0
  br i1 %cmp56, label %if.then57, label %if.end58

if.then57:                                        ; preds = %if.end52
  %call.i129 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i129, label %if.then57.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i132

if.then57.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true.i132:                               ; preds = %if.then57
  %call1.i130 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i130)
  %tobool.not.i131 = icmp eq i32 %call1.i130, 0
  br i1 %tobool.not.i131, label %land.lhs.true.i132.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i134

land.lhs.true.i132.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i132
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true2.i134:                              ; preds = %land.lhs.true.i132
  %.b4.i133 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i133, label %land.lhs.true2.i134.rcu_read_unlock.exit_crit_edge, label %if.then.i135

land.lhs.true2.i134.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i134
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

if.then.i135:                                     ; preds = %land.lhs.true2.i134
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.41, i32 noundef 724, ptr noundef nonnull @.str.43) #16
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i135, %land.lhs.true2.i134.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i132.rcu_read_unlock.exit_crit_edge, %if.then57.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !238
  %39 = tail call i32 @llvm.read_register.i32(metadata !207) #16
  %and.i.i.i.i.i136 = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i.i.i136 to ptr
  %preempt_count.i.i.i.i137 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %preempt_count.i.i.i.i137 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %preempt_count.i.i.i.i137, align 4
  %sub.i.i.i = add i32 %42, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i137, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  br label %done

if.end58:                                         ; preds = %if.end52
  %43 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data.i, align 4
  %45 = ptrtoint ptr %prev_seq.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %prev_seq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i138 = icmp eq i32 %46, 0
  br i1 %tobool.not.i138, label %if.end58.nl_dump_check_consistent.exit_crit_edge, label %land.lhs.true.i139

if.end58.nl_dump_check_consistent.exit_crit_edge: ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #18
  br label %nl_dump_check_consistent.exit

land.lhs.true.i139:                               ; preds = %if.end58
  %47 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %seq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %46)
  %cmp.not.i = icmp eq i32 %48, %46
  br i1 %cmp.not.i, label %land.lhs.true.i139.nl_dump_check_consistent.exit_crit_edge, label %if.then.i140

land.lhs.true.i139.nl_dump_check_consistent.exit_crit_edge: ; preds = %land.lhs.true.i139
  call void @__sanitizer_cov_trace_pc() #18
  br label %nl_dump_check_consistent.exit

if.then.i140:                                     ; preds = %land.lhs.true.i139
  call void @__sanitizer_cov_trace_pc() #18
  %nlmsg_flags.i = getelementptr inbounds %struct.nlmsghdr, ptr %44, i32 0, i32 2
  %49 = ptrtoint ptr %nlmsg_flags.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %nlmsg_flags.i, align 2
  %51 = or i16 %50, 16
  store i16 %51, ptr %nlmsg_flags.i, align 2
  br label %nl_dump_check_consistent.exit

nl_dump_check_consistent.exit:                    ; preds = %if.then.i140, %land.lhs.true.i139.nl_dump_check_consistent.exit_crit_edge, %if.end58.nl_dump_check_consistent.exit_crit_edge
  %52 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %seq, align 4
  %54 = ptrtoint ptr %prev_seq.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %prev_seq.i, align 4
  br label %cont

cont:                                             ; preds = %nl_dump_check_consistent.exit, %mpls_dev_get.exit.cont_crit_edge, %for.body45.cont_crit_edge
  %inc = add i32 %idx.1159, 1
  %index_hlist = getelementptr inbounds %struct.net_device, ptr %dev.0161, i32 0, i32 101
  %55 = ptrtoint ptr %index_hlist to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile ptr, ptr %index_hlist, align 8
  %tobool67.not = icmp eq ptr %56, null
  %add.ptr71 = getelementptr i8, ptr %56, i32 -664
  %tobool44.not174 = icmp eq ptr %add.ptr71, null
  %tobool44.not = or i1 %tobool67.not, %tobool44.not174
  br i1 %tobool44.not, label %cont.for.end_crit_edge, label %cont.for.body45_crit_edge

cont.for.body45_crit_edge:                        ; preds = %cont
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body45

cont.for.end_crit_edge:                           ; preds = %cont
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %cont.for.end_crit_edge, %do.end35.for.end_crit_edge
  %idx.1.lcssa = phi i32 [ 0, %do.end35.for.end_crit_edge ], [ %inc, %cont.for.end_crit_edge ]
  %call.i141 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i141, label %for.end.rcu_read_unlock.exit151_crit_edge, label %land.lhs.true.i144

for.end.rcu_read_unlock.exit151_crit_edge:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit151

land.lhs.true.i144:                               ; preds = %for.end
  %call1.i142 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i142)
  %tobool.not.i143 = icmp eq i32 %call1.i142, 0
  br i1 %tobool.not.i143, label %land.lhs.true.i144.rcu_read_unlock.exit151_crit_edge, label %land.lhs.true2.i146

land.lhs.true.i144.rcu_read_unlock.exit151_crit_edge: ; preds = %land.lhs.true.i144
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit151

land.lhs.true2.i146:                              ; preds = %land.lhs.true.i144
  %.b4.i145 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i145, label %land.lhs.true2.i146.rcu_read_unlock.exit151_crit_edge, label %if.then.i147

land.lhs.true2.i146.rcu_read_unlock.exit151_crit_edge: ; preds = %land.lhs.true2.i146
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit151

if.then.i147:                                     ; preds = %land.lhs.true2.i146
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.41, i32 noundef 724, ptr noundef nonnull @.str.43) #16
  br label %rcu_read_unlock.exit151

rcu_read_unlock.exit151:                          ; preds = %if.then.i147, %land.lhs.true2.i146.rcu_read_unlock.exit151_crit_edge, %land.lhs.true.i144.rcu_read_unlock.exit151_crit_edge, %for.end.rcu_read_unlock.exit151_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !238
  %57 = tail call i32 @llvm.read_register.i32(metadata !207) #16
  %and.i.i.i.i.i148 = and i32 %57, -16384
  %58 = inttoptr i32 %and.i.i.i.i.i148 to ptr
  %preempt_count.i.i.i.i149 = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %preempt_count.i.i.i.i149 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %preempt_count.i.i.i.i149, align 4
  %sub.i.i.i150 = add i32 %60, -1
  store volatile i32 %sub.i.i.i150, ptr %preempt_count.i.i.i.i149, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  %inc76 = add nsw i32 %h.0164, 1
  %exitcond.not = icmp eq i32 %inc76, 256
  br i1 %exitcond.not, label %rcu_read_unlock.exit151.done_crit_edge, label %rcu_read_unlock.exit151.for.body_crit_edge

rcu_read_unlock.exit151.for.body_crit_edge:       ; preds = %rcu_read_unlock.exit151
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

rcu_read_unlock.exit151.done_crit_edge:           ; preds = %rcu_read_unlock.exit151
  call void @__sanitizer_cov_trace_pc() #18
  br label %done

done:                                             ; preds = %rcu_read_unlock.exit151.done_crit_edge, %rcu_read_unlock.exit, %if.end21.done_crit_edge
  %h.0157 = phi i32 [ %h.0164, %rcu_read_unlock.exit ], [ %17, %if.end21.done_crit_edge ], [ 256, %rcu_read_unlock.exit151.done_crit_edge ]
  %idx.2 = phi i32 [ %idx.1159, %rcu_read_unlock.exit ], [ %19, %if.end21.done_crit_edge ], [ %idx.1.lcssa, %rcu_read_unlock.exit151.done_crit_edge ]
  %61 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %h.0157, ptr %15, align 4
  %62 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %idx.2, ptr %arrayidx22, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %63 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %len, align 4
  br label %cleanup80

cleanup80:                                        ; preds = %done, %if.then14, %do.body11.cleanup80_crit_edge, %if.then6, %do.body.cleanup80_crit_edge
  %retval.1 = phi i32 [ %64, %done ], [ -22, %if.then6 ], [ -22, %if.then14 ], [ -22, %do.body.cleanup80_crit_edge ], [ -22, %do.body11.cleanup80_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rtm_to_route_config(ptr nocapture noundef readonly %skb, ptr noundef %nlh, ptr noundef %cfg, ptr noundef %extack) unnamed_addr #2 align 64 {
entry:
  %tb = alloca [31 x ptr], align 4
  %label_count = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %tb) #16
  %0 = call ptr @memset(ptr %tb, i32 255, i32 124)
  %1 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nlh, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %2)
  %cmp.i.i = icmp ult i32 %2, 28
  br i1 %cmp.i.i, label %do.body.i.i, label %nlmsg_parse_deprecated.exit

do.body.i.i:                                      ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nlmsg_parse.__msg) #16
  %tobool.not.i.i = icmp eq ptr %extack, null
  br i1 %tobool.not.i.i, label %do.body.i.i.cleanup181_crit_edge, label %if.then1.i.i

do.body.i.i.cleanup181_crit_edge:                 ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup181

if.then1.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %3 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @__nlmsg_parse.__msg, ptr %extack, align 4
  br label %cleanup181

nlmsg_parse_deprecated.exit:                      ; preds = %entry
  %add.ptr.i.i.i = getelementptr i8, ptr %nlh, i32 28
  %sub1.i.i.i = add i32 %2, -28
  %call5.i.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 30, ptr noundef %add.ptr.i.i.i, i32 noundef %sub1.i.i.i, ptr noundef nonnull @rtm_mpls_policy, i32 noundef 0, ptr noundef %extack) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %cmp = icmp slt i32 %call5.i.i, 0
  br i1 %cmp, label %nlmsg_parse_deprecated.exit.cleanup181_crit_edge, label %if.end

nlmsg_parse_deprecated.exit.cleanup181_crit_edge: ; preds = %nlmsg_parse_deprecated.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup181

if.end:                                           ; preds = %nlmsg_parse_deprecated.exit
  %add.ptr.i = getelementptr i8, ptr %nlh, i32 16
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 28, i8 %5)
  %cmp2.not = icmp eq i8 %5, 28
  br i1 %cmp2.not, label %if.end7, label %do.body

do.body:                                          ; preds = %if.end
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtm_to_route_config.__msg) #16
  %tobool.not = icmp eq ptr %extack, null
  br i1 %tobool.not, label %do.body.cleanup181_crit_edge, label %if.then5

do.body.cleanup181_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup181

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %6 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @rtm_to_route_config.__msg, ptr %extack, align 4
  br label %cleanup181

if.end7:                                          ; preds = %if.end
  %rtm_dst_len = getelementptr i8, ptr %nlh, i32 17
  %7 = ptrtoint ptr %rtm_dst_len to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %rtm_dst_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %8)
  %cmp9.not = icmp eq i8 %8, 20
  br i1 %cmp9.not, label %if.end20, label %do.body12

do.body12:                                        ; preds = %if.end7
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtm_to_route_config.__msg.13) #16
  %tobool14.not = icmp eq ptr %extack, null
  br i1 %tobool14.not, label %do.body12.cleanup181_crit_edge, label %if.then15

do.body12.cleanup181_crit_edge:                   ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup181

if.then15:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #18
  %9 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @rtm_to_route_config.__msg.13, ptr %extack, align 4
  br label %cleanup181

if.end20:                                         ; preds = %if.end7
  %rtm_src_len = getelementptr i8, ptr %nlh, i32 18
  %10 = ptrtoint ptr %rtm_src_len to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %rtm_src_len, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp22.not = icmp eq i8 %11, 0
  br i1 %cmp22.not, label %if.end33, label %do.body25

do.body25:                                        ; preds = %if.end20
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtm_to_route_config.__msg.14) #16
  %tobool27.not = icmp eq ptr %extack, null
  br i1 %tobool27.not, label %do.body25.cleanup181_crit_edge, label %if.then28

do.body25.cleanup181_crit_edge:                   ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup181

if.then28:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #18
  %12 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @rtm_to_route_config.__msg.14, ptr %extack, align 4
  br label %cleanup181

if.end33:                                         ; preds = %if.end20
  %rtm_tos = getelementptr i8, ptr %nlh, i32 19
  %13 = ptrtoint ptr %rtm_tos to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %rtm_tos, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp35.not = icmp eq i8 %14, 0
  br i1 %cmp35.not, label %if.end46, label %do.body38

do.body38:                                        ; preds = %if.end33
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtm_to_route_config.__msg.15) #16
  %tobool40.not = icmp eq ptr %extack, null
  br i1 %tobool40.not, label %do.body38.cleanup181_crit_edge, label %if.then41

do.body38.cleanup181_crit_edge:                   ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup181

if.then41:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #18
  %15 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @rtm_to_route_config.__msg.15, ptr %extack, align 4
  br label %cleanup181

if.end46:                                         ; preds = %if.end33
  %rtm_table = getelementptr i8, ptr %nlh, i32 20
  %16 = ptrtoint ptr %rtm_table to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %rtm_table, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %17)
  %cmp48.not = icmp eq i8 %17, -2
  br i1 %cmp48.not, label %if.end59, label %do.body51

do.body51:                                        ; preds = %if.end46
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtm_to_route_config.__msg.16) #16
  %tobool53.not = icmp eq ptr %extack, null
  br i1 %tobool53.not, label %do.body51.cleanup181_crit_edge, label %if.then54

do.body51.cleanup181_crit_edge:                   ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup181

if.then54:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #18
  %18 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @rtm_to_route_config.__msg.16, ptr %extack, align 4
  br label %cleanup181

if.end59:                                         ; preds = %if.end46
  %rtm_scope = getelementptr i8, ptr %nlh, i32 22
  %19 = ptrtoint ptr %rtm_scope to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %rtm_scope, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp61.not = icmp eq i8 %20, 0
  br i1 %cmp61.not, label %if.end72, label %do.body64

do.body64:                                        ; preds = %if.end59
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtm_to_route_config.__msg.17) #16
  %tobool66.not = icmp eq ptr %extack, null
  br i1 %tobool66.not, label %do.body64.cleanup181_crit_edge, label %if.then67

do.body64.cleanup181_crit_edge:                   ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup181

if.then67:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #18
  %21 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @rtm_to_route_config.__msg.17, ptr %extack, align 4
  br label %cleanup181

if.end72:                                         ; preds = %if.end59
  %rtm_type = getelementptr i8, ptr %nlh, i32 23
  %22 = ptrtoint ptr %rtm_type to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %rtm_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %23)
  %cmp74.not = icmp eq i8 %23, 1
  br i1 %cmp74.not, label %if.end85, label %do.body77

do.body77:                                        ; preds = %if.end72
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtm_to_route_config.__msg.18) #16
  %tobool79.not = icmp eq ptr %extack, null
  br i1 %tobool79.not, label %do.body77.cleanup181_crit_edge, label %if.then80

do.body77.cleanup181_crit_edge:                   ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup181

if.then80:                                        ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #18
  %24 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @rtm_to_route_config.__msg.18, ptr %extack, align 4
  br label %cleanup181

if.end85:                                         ; preds = %if.end72
  %rtm_flags = getelementptr i8, ptr %nlh, i32 24
  %25 = ptrtoint ptr %rtm_flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rtm_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp86.not = icmp eq i32 %26, 0
  br i1 %cmp86.not, label %if.end97, label %do.body89

do.body89:                                        ; preds = %if.end85
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtm_to_route_config.__msg.19) #16
  %tobool91.not = icmp eq ptr %extack, null
  br i1 %tobool91.not, label %do.body89.cleanup181_crit_edge, label %if.then92

do.body89.cleanup181_crit_edge:                   ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup181

if.then92:                                        ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #18
  %27 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @rtm_to_route_config.__msg.19, ptr %extack, align 4
  br label %cleanup181

if.end97:                                         ; preds = %if.end85
  %rc_label = getelementptr inbounds %struct.mpls_route_config, ptr %cfg, i32 0, i32 5
  %28 = ptrtoint ptr %rc_label to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1048576, ptr %rc_label, align 4
  %rtm_protocol = getelementptr i8, ptr %nlh, i32 21
  %29 = ptrtoint ptr %rtm_protocol to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %rtm_protocol, align 1
  %conv98 = zext i8 %30 to i32
  %31 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv98, ptr %cfg, align 4
  %rc_via_table = getelementptr inbounds %struct.mpls_route_config, ptr %cfg, i32 0, i32 2
  %32 = ptrtoint ptr %rc_via_table to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 4, ptr %rc_via_table, align 4
  %rc_ttl_propagate = getelementptr inbounds %struct.mpls_route_config, ptr %cfg, i32 0, i32 6
  %33 = ptrtoint ptr %rc_ttl_propagate to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %rc_ttl_propagate, align 4
  %nlmsg_flags = getelementptr inbounds %struct.nlmsghdr, ptr %nlh, i32 0, i32 2
  %34 = ptrtoint ptr %nlmsg_flags to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %nlmsg_flags, align 2
  %conv99 = zext i16 %35 to i32
  %rc_nlflags = getelementptr inbounds %struct.mpls_route_config, ptr %cfg, i32 0, i32 9
  %36 = ptrtoint ptr %rc_nlflags to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv99, ptr %rc_nlflags, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %37 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %portid, align 4
  %rc_nlinfo = getelementptr inbounds %struct.mpls_route_config, ptr %cfg, i32 0, i32 11
  %portid100 = getelementptr inbounds %struct.mpls_route_config, ptr %cfg, i32 0, i32 11, i32 2
  %39 = ptrtoint ptr %portid100 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %portid100, align 4
  %40 = ptrtoint ptr %rc_nlinfo to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %nlh, ptr %rc_nlinfo, align 4
  %41 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %43, i32 0, i32 9
  %44 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %skc_net.i, align 4
  %nl_net = getelementptr inbounds %struct.mpls_route_config, ptr %cfg, i32 0, i32 11, i32 1
  %46 = ptrtoint ptr %nl_net to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %45, ptr %nl_net, align 4
  %rc_mp = getelementptr inbounds %struct.mpls_route_config, ptr %cfg, i32 0, i32 12
  %rc_mp_len = getelementptr inbounds %struct.mpls_route_config, ptr %cfg, i32 0, i32 13
  %rc_via_alen = getelementptr inbounds %struct.mpls_route_config, ptr %cfg, i32 0, i32 3
  %rc_via = getelementptr inbounds %struct.mpls_route_config, ptr %cfg, i32 0, i32 4
  %rc_output_labels = getelementptr inbounds %struct.mpls_route_config, ptr %cfg, i32 0, i32 7
  %rc_output_label = getelementptr inbounds %struct.mpls_route_config, ptr %cfg, i32 0, i32 8
  %rc_ifindex = getelementptr inbounds %struct.mpls_route_config, ptr %cfg, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end97
  %index.0279 = phi i32 [ 0, %if.end97 ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [31 x ptr], ptr %tb, i32 0, i32 %index.0279
  %47 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx, align 4
  %tobool107.not = icmp eq ptr %48, null
  br i1 %tobool107.not, label %for.body.for.inc_crit_edge, label %if.end109

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end109:                                        ; preds = %for.body
  %49 = zext i32 %index.0279 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %index.0279, label %do.body169 [
    i32 4, label %sw.bb
    i32 19, label %sw.bb111
    i32 1, label %sw.bb117
    i32 5, label %do.body130
    i32 18, label %sw.bb138
    i32 9, label %sw.bb145
    i32 26, label %sw.bb148
  ]

sw.bb:                                            ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i.i = getelementptr i8, ptr %48, i32 4
  %50 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %add.ptr.i.i, align 4
  %52 = ptrtoint ptr %rc_ifindex to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %rc_ifindex, align 4
  br label %for.inc

sw.bb111:                                         ; preds = %if.end109
  %call113 = call i32 @nla_get_labels(ptr noundef nonnull %48, i8 noundef zeroext 30, ptr noundef %rc_output_labels, ptr noundef %rc_output_label, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %sw.bb111.for.inc_crit_edge, label %sw.bb111.cleanup181_crit_edge

sw.bb111.cleanup181_crit_edge:                    ; preds = %sw.bb111
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup181

sw.bb111.for.inc_crit_edge:                       ; preds = %sw.bb111
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

sw.bb117:                                         ; preds = %if.end109
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %label_count) #16
  %call119 = call i32 @nla_get_labels(ptr noundef nonnull %48, i8 noundef zeroext 1, ptr noundef nonnull %label_count, ptr noundef %rc_label, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %sw.bb117
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %label_count) #16
  br label %cleanup181

cleanup:                                          ; preds = %sw.bb117
  %53 = ptrtoint ptr %nl_net to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %nl_net, align 4
  %call126 = call fastcc zeroext i1 @mpls_label_ok(ptr noundef %54, ptr noundef %rc_label, ptr noundef %extack)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %label_count) #16
  br i1 %call126, label %cleanup.for.inc_crit_edge, label %cleanup.cleanup181_crit_edge

cleanup.cleanup181_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup181

cleanup.for.inc_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

do.body130:                                       ; preds = %if.end109
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtm_to_route_config.__msg.20) #16
  %tobool132.not = icmp eq ptr %extack, null
  br i1 %tobool132.not, label %do.body130.cleanup181_crit_edge, label %if.then133

do.body130.cleanup181_crit_edge:                  ; preds = %do.body130
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup181

if.then133:                                       ; preds = %do.body130
  call void @__sanitizer_cov_trace_pc() #18
  %55 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @rtm_to_route_config.__msg.20, ptr %extack, align 4
  br label %cleanup181

sw.bb138:                                         ; preds = %if.end109
  %call141 = call fastcc i32 @nla_get_via(ptr noundef nonnull %48, ptr noundef %rc_via_alen, ptr noundef %rc_via_table, ptr noundef %rc_via, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call141)
  %tobool142.not = icmp eq i32 %call141, 0
  br i1 %tobool142.not, label %sw.bb138.for.inc_crit_edge, label %sw.bb138.cleanup181_crit_edge

sw.bb138.cleanup181_crit_edge:                    ; preds = %sw.bb138
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup181

sw.bb138.for.inc_crit_edge:                       ; preds = %sw.bb138
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

sw.bb145:                                         ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i265 = getelementptr i8, ptr %48, i32 4
  %56 = ptrtoint ptr %rc_mp to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %add.ptr.i265, ptr %rc_mp, align 4
  %57 = ptrtoint ptr %48 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %48, align 2
  %conv.i = zext i16 %58 to i32
  %sub.i = add nsw i32 %conv.i, -4
  %59 = ptrtoint ptr %rc_mp_len to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %sub.i, ptr %rc_mp_len, align 4
  br label %for.inc

sw.bb148:                                         ; preds = %if.end109
  %add.ptr.i.i266 = getelementptr i8, ptr %48, i32 4
  %60 = ptrtoint ptr %add.ptr.i.i266 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %add.ptr.i.i266, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %61)
  %cmp151 = icmp ugt i8 %61, 1
  br i1 %cmp151, label %do.body154, label %cleanup167

do.body154:                                       ; preds = %sw.bb148
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtm_to_route_config.__msg.21) #16
  %tobool156.not = icmp eq ptr %extack, null
  br i1 %tobool156.not, label %do.body154.cleanup181_crit_edge, label %if.then157

do.body154.cleanup181_crit_edge:                  ; preds = %do.body154
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup181

if.then157:                                       ; preds = %do.body154
  call void @__sanitizer_cov_trace_pc() #18
  %62 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @rtm_to_route_config.__msg.21, ptr %extack, align 4
  %bad_attr = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %63 = ptrtoint ptr %bad_attr to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %48, ptr %bad_attr, align 4
  %policy = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %64 = ptrtoint ptr %policy to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %policy, align 4
  br label %cleanup181

cleanup167:                                       ; preds = %sw.bb148
  call void @__sanitizer_cov_trace_pc() #18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool164.not = icmp eq i8 %61, 0
  %conv165 = select i1 %tobool164.not, i8 2, i8 1
  %65 = ptrtoint ptr %rc_ttl_propagate to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv165, ptr %rc_ttl_propagate, align 4
  br label %for.inc

do.body169:                                       ; preds = %if.end109
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtm_to_route_config.__msg.22) #16
  %tobool171.not = icmp eq ptr %extack, null
  br i1 %tobool171.not, label %do.body169.cleanup181_crit_edge, label %if.then172

do.body169.cleanup181_crit_edge:                  ; preds = %do.body169
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup181

if.then172:                                       ; preds = %do.body169
  call void @__sanitizer_cov_trace_pc() #18
  %66 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @rtm_to_route_config.__msg.22, ptr %extack, align 4
  %bad_attr174 = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %67 = ptrtoint ptr %bad_attr174 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %48, ptr %bad_attr174, align 4
  %policy175 = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %68 = ptrtoint ptr %policy175 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %policy175, align 4
  br label %cleanup181

for.inc:                                          ; preds = %cleanup167, %sw.bb145, %sw.bb138.for.inc_crit_edge, %cleanup.for.inc_crit_edge, %sw.bb111.for.inc_crit_edge, %sw.bb, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %index.0279, 1
  %exitcond.not = icmp eq i32 %inc, 31
  br i1 %exitcond.not, label %for.inc.cleanup181_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.cleanup181_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup181

cleanup181:                                       ; preds = %for.inc.cleanup181_crit_edge, %if.then172, %do.body169.cleanup181_crit_edge, %if.then157, %do.body154.cleanup181_crit_edge, %sw.bb138.cleanup181_crit_edge, %if.then133, %do.body130.cleanup181_crit_edge, %cleanup.cleanup181_crit_edge, %cleanup.thread, %sw.bb111.cleanup181_crit_edge, %if.then92, %do.body89.cleanup181_crit_edge, %if.then80, %do.body77.cleanup181_crit_edge, %if.then67, %do.body64.cleanup181_crit_edge, %if.then54, %do.body51.cleanup181_crit_edge, %if.then41, %do.body38.cleanup181_crit_edge, %if.then28, %do.body25.cleanup181_crit_edge, %if.then15, %do.body12.cleanup181_crit_edge, %if.then5, %do.body.cleanup181_crit_edge, %nlmsg_parse_deprecated.exit.cleanup181_crit_edge, %if.then1.i.i, %do.body.i.i.cleanup181_crit_edge
  %retval.0 = phi i32 [ %call5.i.i, %nlmsg_parse_deprecated.exit.cleanup181_crit_edge ], [ -22, %if.then5 ], [ -22, %do.body.cleanup181_crit_edge ], [ -22, %if.then15 ], [ -22, %do.body12.cleanup181_crit_edge ], [ -22, %if.then28 ], [ -22, %do.body25.cleanup181_crit_edge ], [ -22, %if.then41 ], [ -22, %do.body38.cleanup181_crit_edge ], [ -22, %if.then54 ], [ -22, %do.body51.cleanup181_crit_edge ], [ -22, %if.then67 ], [ -22, %do.body64.cleanup181_crit_edge ], [ -22, %if.then80 ], [ -22, %do.body77.cleanup181_crit_edge ], [ -22, %if.then92 ], [ -22, %do.body89.cleanup181_crit_edge ], [ -22, %if.then1.i.i ], [ -22, %do.body.i.i.cleanup181_crit_edge ], [ -22, %if.then133 ], [ -22, %do.body130.cleanup181_crit_edge ], [ -22, %if.then172 ], [ -22, %do.body169.cleanup181_crit_edge ], [ -22, %cleanup.thread ], [ -22, %do.body154.cleanup181_crit_edge ], [ -22, %if.then157 ], [ -22, %cleanup.cleanup181_crit_edge ], [ -22, %sw.bb138.cleanup181_crit_edge ], [ -22, %sw.bb111.cleanup181_crit_edge ], [ 0, %for.inc.cleanup181_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %tb) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @mpls_label_ok(ptr nocapture noundef readonly %net, ptr nocapture noundef %index, ptr noundef writeonly %extack) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %1)
  %cmp = icmp ult i32 %1, 16
  br i1 %cmp, label %do.body, label %land.lhs.true

do.body:                                          ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mpls_label_ok.__msg) #16
  %tobool.not = icmp eq ptr %extack, null
  br i1 %tobool.not, label %do.body.if.end14_crit_edge, label %do.body.if.end14.sink.split_crit_edge

do.body.if.end14.sink.split_crit_edge:            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14.sink.split

do.body.if.end14_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %platform_labels = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 49, i32 2
  %4 = ptrtoint ptr %platform_labels to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %platform_labels, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp4.not = icmp ult i32 %3, %5
  br i1 %cmp4.not, label %land.lhs.true.if.end14_crit_edge, label %do.body6

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14

do.body6:                                         ; preds = %land.lhs.true
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mpls_label_ok.__msg.23) #16
  %tobool8.not = icmp eq ptr %extack, null
  br i1 %tobool8.not, label %do.body6.if.end14_crit_edge, label %do.body6.if.end14.sink.split_crit_edge

do.body6.if.end14.sink.split_crit_edge:           ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14.sink.split

do.body6.if.end14_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14

if.end14.sink.split:                              ; preds = %do.body6.if.end14.sink.split_crit_edge, %do.body.if.end14.sink.split_crit_edge
  %mpls_label_ok.__msg.sink = phi ptr [ @mpls_label_ok.__msg, %do.body.if.end14.sink.split_crit_edge ], [ @mpls_label_ok.__msg.23, %do.body6.if.end14.sink.split_crit_edge ]
  %6 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %mpls_label_ok.__msg.sink, ptr %extack, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.end14.sink.split, %do.body6.if.end14_crit_edge, %land.lhs.true.if.end14_crit_edge, %do.body.if.end14_crit_edge
  %is_ok.1.off0 = phi i1 [ true, %land.lhs.true.if.end14_crit_edge ], [ false, %do.body6.if.end14_crit_edge ], [ false, %do.body.if.end14_crit_edge ], [ false, %if.end14.sink.split ]
  %7 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index, align 4
  %platform_labels16 = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 49, i32 2
  %9 = ptrtoint ptr %platform_labels16 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %platform_labels16, align 4
  %11 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %8, i32 %10) #16, !srcloc !233
  %and = and i32 %11, %8
  %12 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and, ptr %index, align 4
  ret i1 %is_ok.1.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nla_get_via(ptr noundef %nla, ptr nocapture noundef writeonly %via_alen, ptr nocapture noundef writeonly %via_table, ptr nocapture noundef writeonly %via_addr, ptr noundef writeonly %extack) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %nla, i32 4
  %0 = ptrtoint ptr %nla to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %nla, align 2
  %conv.i = zext i16 %1 to i32
  %2 = and i32 %conv.i, 65534
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %cmp = icmp eq i32 %2, 4
  br i1 %cmp, label %do.body, label %if.end3

do.body:                                          ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nla_get_via.__msg) #16
  %tobool.not = icmp eq ptr %extack, null
  br i1 %tobool.not, label %do.body.errout_crit_edge, label %if.then2

do.body.errout_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %errout

if.then2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %3 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @nla_get_via.__msg, ptr %extack, align 4
  %bad_attr = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %4 = ptrtoint ptr %bad_attr to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %nla, ptr %bad_attr, align 4
  %policy = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %5 = ptrtoint ptr %policy to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %policy, align 4
  br label %errout

if.end3:                                          ; preds = %entry
  %sub = add nsw i32 %conv.i, -6
  call void @__sanitizer_cov_trace_const_cmp2(i16 38, i16 %1)
  %cmp5 = icmp ugt i16 %1, 38
  br i1 %cmp5, label %do.body7, label %if.end17

do.body7:                                         ; preds = %if.end3
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nla_get_via.__msg.24) #16
  %tobool9.not = icmp eq ptr %extack, null
  br i1 %tobool9.not, label %do.body7.errout_crit_edge, label %if.then10

do.body7.errout_crit_edge:                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #18
  br label %errout

if.then10:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #18
  %6 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @nla_get_via.__msg.24, ptr %extack, align 4
  %bad_attr12 = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %7 = ptrtoint ptr %bad_attr12 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %nla, ptr %bad_attr12, align 4
  %policy13 = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %8 = ptrtoint ptr %policy13 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %policy13, align 4
  br label %errout

if.end17:                                         ; preds = %if.end3
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr.i, align 2
  %11 = zext i16 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.63)
  switch i16 %10, label %if.end17.errout_crit_edge [
    i16 17, label %sw.bb
    i16 2, label %sw.bb18
    i16 10, label %sw.bb23
  ]

if.end17.errout_crit_edge:                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  br label %errout

sw.bb:                                            ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  %12 = ptrtoint ptr %via_table to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 3, ptr %via_table, align 1
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end17
  %13 = ptrtoint ptr %via_table to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %via_table, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub)
  %cmp19.not = icmp eq i32 %sub, 4
  br i1 %cmp19.not, label %sw.bb18.sw.epilog_crit_edge, label %sw.bb18.errout_crit_edge

sw.bb18.errout_crit_edge:                         ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #18
  br label %errout

sw.bb18.sw.epilog_crit_edge:                      ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.end17
  %14 = ptrtoint ptr %via_table to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %via_table, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub)
  %cmp24.not = icmp eq i32 %sub, 16
  br i1 %cmp24.not, label %sw.bb23.sw.epilog_crit_edge, label %sw.bb23.errout_crit_edge

sw.bb23.errout_crit_edge:                         ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #18
  br label %errout

sw.bb23.sw.epilog_crit_edge:                      ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb23.sw.epilog_crit_edge, %sw.bb18.sw.epilog_crit_edge, %sw.bb
  %rtvia_addr = getelementptr i8, ptr %nla, i32 6
  %15 = call ptr @memcpy(ptr %via_addr, ptr %rtvia_addr, i32 %sub)
  %conv28 = trunc i32 %sub to i8
  %16 = ptrtoint ptr %via_alen to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv28, ptr %via_alen, align 1
  br label %errout

errout:                                           ; preds = %sw.epilog, %sw.bb23.errout_crit_edge, %sw.bb18.errout_crit_edge, %if.end17.errout_crit_edge, %if.then10, %do.body7.errout_crit_edge, %if.then2, %do.body.errout_crit_edge
  %err.0 = phi i32 [ -22, %if.end17.errout_crit_edge ], [ -22, %sw.bb23.errout_crit_edge ], [ 0, %sw.epilog ], [ -22, %sw.bb18.errout_crit_edge ], [ -22, %if.then2 ], [ -22, %do.body.errout_crit_edge ], [ -22, %if.then10 ], [ -22, %do.body7.errout_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mpls_route_update(ptr noundef %net, i32 noundef %index, ptr noundef %new, ptr noundef %info) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_is_locked() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b111 = load i1, ptr @mpls_route_update.__already_done, align 1
  br i1 %.b111, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !226

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @mpls_route_update.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 559, i32 noundef 9, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.12, i32 noundef 559) #16
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %call38 = tail call zeroext i1 @lockdep_rtnl_is_held() #16
  br i1 %call38, label %if.end29.do.end46_crit_edge, label %land.lhs.true

if.end29.do.end46_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end46

land.lhs.true:                                    ; preds = %if.end29
  %call39 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %land.lhs.true.do.end46_crit_edge, label %land.lhs.true41

land.lhs.true.do.end46_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end46

land.lhs.true41:                                  ; preds = %land.lhs.true
  %.b107110 = load i1, ptr @mpls_route_update.__warned, align 1
  br i1 %.b107110, label %land.lhs.true41.do.end46_crit_edge, label %if.then43

land.lhs.true41.do.end46_crit_edge:               ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end46

if.then43:                                        ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @mpls_route_update.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 561, ptr noundef nonnull @.str.25) #16
  br label %do.end46

do.end46:                                         ; preds = %if.then43, %land.lhs.true41.do.end46_crit_edge, %land.lhs.true.do.end46_crit_edge, %if.end29.do.end46_crit_edge
  %platform_label48 = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 49, i32 3
  %0 = ptrtoint ptr %platform_label48 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_label48, align 4
  %call50 = tail call zeroext i1 @lockdep_rtnl_is_held() #16
  br i1 %call50, label %do.end46.do.end59_crit_edge, label %land.lhs.true51

do.end46.do.end59_crit_edge:                      ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end59

land.lhs.true51:                                  ; preds = %do.end46
  %call52 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %land.lhs.true51.do.end59_crit_edge, label %land.lhs.true54

land.lhs.true51.do.end59_crit_edge:               ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end59

land.lhs.true54:                                  ; preds = %land.lhs.true51
  %.b108109 = load i1, ptr @mpls_route_update.__warned.30, align 1
  br i1 %.b108109, label %land.lhs.true54.do.end59_crit_edge, label %if.then56

land.lhs.true54.do.end59_crit_edge:               ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end59

if.then56:                                        ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @mpls_route_update.__warned.30, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 562, ptr noundef nonnull @.str.25) #16
  br label %do.end59

do.end59:                                         ; preds = %if.then56, %land.lhs.true54.do.end59_crit_edge, %land.lhs.true51.do.end59_crit_edge, %do.end46.do.end59_crit_edge
  %arrayidx = getelementptr ptr, ptr %1, i32 %index
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !239
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %new, ptr %arrayidx, align 4
  tail call fastcc void @mpls_notify_route(ptr noundef %net, i32 noundef %index, ptr noundef %3, ptr noundef %new, ptr noundef %info)
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %do.end59.mpls_rt_free.exit_crit_edge, label %do.end.i

do.end59.mpls_rt_free.exit_crit_edge:             ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #18
  br label %mpls_rt_free.exit

do.end.i:                                         ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @kvfree_call_rcu(ptr noundef nonnull %3, ptr noundef null) #16
  br label %mpls_rt_free.exit

mpls_rt_free.exit:                                ; preds = %do.end.i, %do.end59.mpls_rt_free.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nla_find(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mpls_nh_assign_dev(ptr noundef %net, ptr nocapture noundef readonly %rt, ptr nocapture noundef %nh, i32 noundef %oif) unnamed_addr #2 align 64 {
entry:
  %fl6.i.i = alloca %struct.flowi6, align 8
  %fl4.i.i.i = alloca %struct.flowi4, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %oif)
  %tobool.not.i = icmp eq i32 %oif, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  %nh_via_table.i = getelementptr inbounds %struct.mpls_nh, ptr %nh, i32 0, i32 4
  %0 = ptrtoint ptr %nh_via_table.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nh_via_table.i, align 2
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.64)
  switch i8 %1, label %if.then.i.if.then_crit_edge [
    i8 0, label %sw.bb.i
    i8 1, label %sw.bb2.i
  ]

if.then.i.if.then_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

sw.bb.i:                                          ; preds = %if.then.i
  %rt_via_offset.i.i.i = getelementptr inbounds %struct.mpls_route, ptr %rt, i32 0, i32 8
  %3 = ptrtoint ptr %rt_via_offset.i.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %rt_via_offset.i.i.i, align 1
  %conv.i.i.i = zext i8 %4 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %nh, i32 %conv.i.i.i
  %5 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %daddr.sroa.0.0.copyload.i.i = load i32, ptr %add.ptr.i.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %fl4.i.i.i) #16
  %daddr2.i.i.i = getelementptr inbounds %struct.flowi4, ptr %fl4.i.i.i, i32 0, i32 2
  %6 = call ptr @memset(ptr %fl4.i.i.i, i32 0, i32 56)
  %7 = ptrtoint ptr %daddr2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %daddr.sroa.0.0.copyload.i.i, ptr %daddr2.i.i.i, align 4
  %call.i.i.i.i = call ptr @ip_route_output_flow(ptr noundef %net, ptr noundef nonnull %fl4.i.i.i, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %fl4.i.i.i) #16
  %cmp.i.i.i = icmp ugt ptr %call.i.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %sw.bb.i.if.end.i_crit_edge, label %if.end.i.i

sw.bb.i.if.end.i_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

if.end.i.i:                                       ; preds = %sw.bb.i
  %8 = ptrtoint ptr %call.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call.i.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.dev_hold.exit.i.i_crit_edge, label %do.body1.i.i.i

if.end.i.i.dev_hold.exit.i.i_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dev_hold.exit.i.i

do.body1.i.i.i:                                   ; preds = %if.end.i.i
  %10 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !218
  %pcpu_refcnt.i.i.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 118
  %11 = ptrtoint ptr %pcpu_refcnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pcpu_refcnt.i.i.i, align 4
  %13 = ptrtoint ptr %12 to i32
  %14 = call i32 @llvm.read_register.i32(metadata !207) #16
  %and.i.i.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %19, %13
  %20 = inttoptr i32 %add.i.i.i to ptr
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %add13.i.i.i = add i32 %22, 1
  store i32 %add13.i.i.i, ptr %20, align 4
  %23 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !219
  %and.i.i.i.i.i = and i32 %23, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool24.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool24.not.i.i.i, label %if.then28.i.i.i, label %do.body1.i.i.i.do.end30.i.i.i_crit_edge, !prof !220

do.body1.i.i.i.do.end30.i.i.i_crit_edge:          ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end30.i.i.i

if.then28.i.i.i:                                  ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @warn_bogus_irq_restore() #16
  br label %do.end30.i.i.i

do.end30.i.i.i:                                   ; preds = %if.then28.i.i.i, %do.body1.i.i.i.do.end30.i.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %10) #16, !srcloc !221
  br label %dev_hold.exit.i.i

dev_hold.exit.i.i:                                ; preds = %do.end30.i.i.i, %if.end.i.i.dev_hold.exit.i.i_crit_edge
  call void @dst_release(ptr noundef %call.i.i.i.i) #16
  br label %if.end.i

sw.bb2.i:                                         ; preds = %if.then.i
  %rt_via_offset.i.i23.i = getelementptr inbounds %struct.mpls_route, ptr %rt, i32 0, i32 8
  %24 = ptrtoint ptr %rt_via_offset.i.i23.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %rt_via_offset.i.i23.i, align 1
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fl6.i.i) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipv6_stub to i32))
  %26 = load ptr, ptr @ipv6_stub, align 4
  %tobool.not.i.i = icmp eq ptr %26, null
  br i1 %tobool.not.i.i, label %sw.bb2.i.inet6_fib_lookup_dev.exit.i_crit_edge, label %if.end.i27.i

sw.bb2.i.inet6_fib_lookup_dev.exit.i_crit_edge:   ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %inet6_fib_lookup_dev.exit.i

if.end.i27.i:                                     ; preds = %sw.bb2.i
  %conv.i.i24.i = zext i8 %25 to i32
  %add.ptr.i.i25.i = getelementptr i8, ptr %nh, i32 %conv.i.i24.i
  %27 = call ptr @memset(ptr %fl6.i.i, i32 0, i32 88)
  %daddr.i.i = getelementptr inbounds %struct.flowi6, ptr %fl6.i.i, i32 0, i32 1
  %28 = call ptr @memcpy(ptr %daddr.i.i, ptr %add.ptr.i.i25.i, i32 16)
  %ipv6_dst_lookup_flow.i.i = getelementptr inbounds %struct.ipv6_stub, ptr %26, i32 0, i32 2
  %29 = ptrtoint ptr %ipv6_dst_lookup_flow.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ipv6_dst_lookup_flow.i.i, align 4
  %call1.i.i = call ptr %30(ptr noundef %net, ptr noundef null, ptr noundef nonnull %fl6.i.i, ptr noundef null) #16
  %cmp.i.i26.i = icmp ugt ptr %call1.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i26.i, label %if.end.i27.i.inet6_fib_lookup_dev.exit.i_crit_edge, label %if.end5.i.i

if.end.i27.i.inet6_fib_lookup_dev.exit.i_crit_edge: ; preds = %if.end.i27.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %inet6_fib_lookup_dev.exit.i

if.end5.i.i:                                      ; preds = %if.end.i27.i
  %31 = ptrtoint ptr %call1.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call1.i.i, align 4
  %tobool.not.i.i28.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.i28.i, label %if.end5.i.i.dev_hold.exit.i40.i_crit_edge, label %do.body1.i.i37.i

if.end5.i.i.dev_hold.exit.i40.i_crit_edge:        ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dev_hold.exit.i40.i

do.body1.i.i37.i:                                 ; preds = %if.end5.i.i
  %33 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !218
  %pcpu_refcnt.i.i29.i = getelementptr inbounds %struct.net_device, ptr %32, i32 0, i32 118
  %34 = ptrtoint ptr %pcpu_refcnt.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pcpu_refcnt.i.i29.i, align 4
  %36 = ptrtoint ptr %35 to i32
  %37 = call i32 @llvm.read_register.i32(metadata !207) #16
  %and.i.i.i30.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i30.i to ptr
  %cpu.i.i31.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %cpu.i.i31.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cpu.i.i31.i, align 4
  %arrayidx.i.i32.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %40
  %41 = ptrtoint ptr %arrayidx.i.i32.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.i.i32.i, align 4
  %add.i.i33.i = add i32 %42, %36
  %43 = inttoptr i32 %add.i.i33.i to ptr
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  %add13.i.i34.i = add i32 %45, 1
  store i32 %add13.i.i34.i, ptr %43, align 4
  %46 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !219
  %and.i.i.i.i35.i = and i32 %46, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i35.i)
  %tobool24.not.i.i36.i = icmp eq i32 %and.i.i.i.i35.i, 0
  br i1 %tobool24.not.i.i36.i, label %if.then28.i.i38.i, label %do.body1.i.i37.i.do.end30.i.i39.i_crit_edge, !prof !220

do.body1.i.i37.i.do.end30.i.i39.i_crit_edge:      ; preds = %do.body1.i.i37.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end30.i.i39.i

if.then28.i.i38.i:                                ; preds = %do.body1.i.i37.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @warn_bogus_irq_restore() #16
  br label %do.end30.i.i39.i

do.end30.i.i39.i:                                 ; preds = %if.then28.i.i38.i, %do.body1.i.i37.i.do.end30.i.i39.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %33) #16, !srcloc !221
  br label %dev_hold.exit.i40.i

dev_hold.exit.i40.i:                              ; preds = %do.end30.i.i39.i, %if.end5.i.i.dev_hold.exit.i40.i_crit_edge
  call void @dst_release(ptr noundef %call1.i.i) #16
  br label %inet6_fib_lookup_dev.exit.i

inet6_fib_lookup_dev.exit.i:                      ; preds = %dev_hold.exit.i40.i, %if.end.i27.i.inet6_fib_lookup_dev.exit.i_crit_edge, %sw.bb2.i.inet6_fib_lookup_dev.exit.i_crit_edge
  %retval.0.i41.i = phi ptr [ %32, %dev_hold.exit.i40.i ], [ inttoptr (i32 -97 to ptr), %sw.bb2.i.inet6_fib_lookup_dev.exit.i_crit_edge ], [ %call1.i.i, %if.end.i27.i.inet6_fib_lookup_dev.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fl6.i.i) #16
  br label %if.end.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call5.i = tail call ptr @dev_get_by_index(ptr noundef %net, i32 noundef %oif) #16
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %inet6_fib_lookup_dev.exit.i, %dev_hold.exit.i.i, %sw.bb.i.if.end.i_crit_edge
  %dev.0.i = phi ptr [ %call5.i, %if.else.i ], [ %retval.0.i41.i, %inet6_fib_lookup_dev.exit.i ], [ %9, %dev_hold.exit.i.i ], [ %call.i.i.i.i, %sw.bb.i.if.end.i_crit_edge ]
  %tobool6.not.i = icmp eq ptr %dev.0.i, null
  br i1 %tobool6.not.i, label %if.end.i.if.then_crit_edge, label %if.end9.i

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

if.end9.i:                                        ; preds = %if.end.i
  %cmp.i.i = icmp ugt ptr %dev.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end9.i.if.then_crit_edge, label %do.body1.i.i

if.end9.i.if.then_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

do.body1.i.i:                                     ; preds = %if.end9.i
  %47 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !218
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %dev.0.i, i32 0, i32 118
  %48 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %50 = ptrtoint ptr %49 to i32
  %51 = call i32 @llvm.read_register.i32(metadata !207) #16
  %and.i.i.i = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %54
  %55 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %56, %50
  %57 = inttoptr i32 %add.i.i to ptr
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %57, align 4
  %add13.i.i = add i32 %59, -1
  store i32 %add13.i.i, ptr %57, align 4
  %60 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !219
  %and.i.i.i43.i = and i32 %60, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i43.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i43.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.if.end_crit_edge, !prof !220

do.body1.i.i.if.end_crit_edge:                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @warn_bogus_irq_restore() #16
  br label %if.end

if.then:                                          ; preds = %if.end9.i.if.then_crit_edge, %if.end.i.if.then_crit_edge, %if.then.i.if.then_crit_edge
  %retval.0.i40 = phi ptr [ inttoptr (i32 -19 to ptr), %if.end.i.if.then_crit_edge ], [ inttoptr (i32 -19 to ptr), %if.then.i.if.then_crit_edge ], [ %dev.0.i, %if.end9.i.if.then_crit_edge ]
  %61 = ptrtoint ptr %retval.0.i40 to i32
  br label %cleanup

if.end:                                           ; preds = %if.then28.i.i, %do.body1.i.i.if.end_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %47) #16, !srcloc !221
  %mpls_ptr.i = getelementptr inbounds %struct.net_device, ptr %dev.0.i, i32 0, i32 84
  %62 = ptrtoint ptr %mpls_ptr.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile ptr, ptr %mpls_ptr.i, align 8
  %call.i = call zeroext i1 @lockdep_rtnl_is_held() #16
  br i1 %call.i, label %if.end.mpls_dev_get.exit_crit_edge, label %lor.lhs.false.i

if.end.mpls_dev_get.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %mpls_dev_get.exit

lor.lhs.false.i:                                  ; preds = %if.end
  %call2.i = call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i36 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i36, label %land.lhs.true.i, label %lor.lhs.false.i.mpls_dev_get.exit_crit_edge

lor.lhs.false.i.mpls_dev_get.exit_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mpls_dev_get.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call3.i = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.mpls_dev_get.exit_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.mpls_dev_get.exit_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mpls_dev_get.exit

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b10.i = load i1, ptr @mpls_dev_get.__warned, align 1
  br i1 %.b10.i, label %land.lhs.true5.i.mpls_dev_get.exit_crit_edge, label %if.then.i37

land.lhs.true5.i.mpls_dev_get.exit_crit_edge:     ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mpls_dev_get.exit

if.then.i37:                                      ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @mpls_dev_get.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 189, ptr noundef nonnull @.str.7) #16
  br label %mpls_dev_get.exit

mpls_dev_get.exit:                                ; preds = %if.then.i37, %land.lhs.true5.i.mpls_dev_get.exit_crit_edge, %land.lhs.true.i.mpls_dev_get.exit_crit_edge, %lor.lhs.false.i.mpls_dev_get.exit_crit_edge, %if.end.mpls_dev_get.exit_crit_edge
  %tobool.not = icmp eq ptr %63, null
  br i1 %tobool.not, label %mpls_dev_get.exit.cleanup_crit_edge, label %if.end5

mpls_dev_get.exit.cleanup_crit_edge:              ; preds = %mpls_dev_get.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end5:                                          ; preds = %mpls_dev_get.exit
  %nh_via_table = getelementptr inbounds %struct.mpls_nh, ptr %nh, i32 0, i32 4
  %64 = ptrtoint ptr %nh_via_table to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %nh_via_table, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %65)
  %cmp = icmp eq i8 %65, 3
  br i1 %cmp, label %land.lhs.true, label %if.end5.if.end12_crit_edge

if.end5.if.end12_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end5
  %addr_len = getelementptr inbounds %struct.net_device, ptr %dev.0.i, i32 0, i32 56
  %66 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %addr_len, align 1
  %nh_via_alen = getelementptr inbounds %struct.mpls_nh, ptr %nh, i32 0, i32 3
  %68 = ptrtoint ptr %nh_via_alen to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %nh_via_alen, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %67, i8 %69)
  %cmp9.not = icmp eq i8 %67, %69
  br i1 %cmp9.not, label %land.lhs.true.if.end12_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

if.end12:                                         ; preds = %land.lhs.true.if.end12_crit_edge, %if.end5.if.end12_crit_edge
  %70 = ptrtoint ptr %nh to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %dev.0.i, ptr %nh, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %dev.0.i, i32 0, i32 14
  %71 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %flags, align 8
  %and = and i32 %72, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  %nh_flags = getelementptr inbounds %struct.mpls_nh, ptr %nh, i32 0, i32 1
  %73 = ptrtoint ptr %nh_flags to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %nh_flags, align 4
  %or = or i32 %74, 1
  store i32 %or, ptr %nh_flags, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end12
  %call16 = call i32 @dev_get_flags(ptr noundef nonnull %dev.0.i) #16
  %and17 = and i32 %call16, 65600
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.then19, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then19:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %nh_flags20 = getelementptr inbounds %struct.mpls_nh, ptr %nh, i32 0, i32 1
  %75 = ptrtoint ptr %nh_flags20 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %nh_flags20, align 4
  %or21 = or i32 %76, 16
  store i32 %or21, ptr %nh_flags20, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %if.else.cleanup_crit_edge, %if.then14, %land.lhs.true.cleanup_crit_edge, %mpls_dev_get.exit.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.then19 ], [ 0, %if.then14 ], [ %61, %if.then ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %mpls_dev_get.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_get_flags(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_route_output_flow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mpls_notify_route(ptr noundef %net, i32 noundef %index, ptr noundef readonly %old, ptr noundef readonly %new, ptr noundef readonly %info) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %info, null
  br i1 %tobool.not, label %entry.cond.end6_crit_edge, label %cond.true3

entry.cond.end6_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end6

cond.true3:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %portid4 = getelementptr inbounds %struct.nl_info, ptr %info, i32 0, i32 2
  %2 = ptrtoint ptr %portid4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %portid4, align 4
  br label %cond.end6

cond.end6:                                        ; preds = %cond.true3, %entry.cond.end6_crit_edge
  %cond29 = phi ptr [ %1, %cond.true3 ], [ null, %entry.cond.end6_crit_edge ]
  %cond7 = phi i32 [ %3, %cond.true3 ], [ 0, %entry.cond.end6_crit_edge ]
  %tobool8.not = icmp eq ptr %new, null
  %cond9 = select i1 %tobool8.not, i32 25, i32 24
  %old.new = select i1 %tobool8.not, ptr %old, ptr %new
  %tobool15.not = icmp eq ptr %old, null
  %4 = or i1 %tobool15.not, %tobool8.not
  %5 = select i1 %4, i32 0, i32 256
  %tobool18.not = icmp ne ptr %old.new, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %index)
  %cmp = icmp ugt i32 %index, 15
  %or.cond = and i1 %cmp, %tobool18.not
  br i1 %or.cond, label %if.then, label %cond.end6.if.end_crit_edge

cond.end6.if.end_crit_edge:                       ; preds = %cond.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %cond.end6
  %tobool.not.i = icmp eq ptr %cond29, null
  br i1 %tobool.not.i, label %if.then.cond.end.i_crit_edge, label %cond.true.i

if.then.cond.end.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %nlmsg_seq.i = getelementptr inbounds %struct.nlmsghdr, ptr %cond29, i32 0, i32 3
  %6 = ptrtoint ptr %nlmsg_seq.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nlmsg_seq.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.then.cond.end.i_crit_edge
  %cond.i = phi i32 [ %7, %cond.true.i ], [ 0, %if.then.cond.end.i_crit_edge ]
  %rt_nhn.i.i = getelementptr inbounds %struct.mpls_route, ptr %old.new, i32 0, i32 5
  %8 = ptrtoint ptr %rt_nhn.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %rt_nhn.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp.i.i = icmp eq i8 %9, 1
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %cond.end.i
  %rt_nh.i.i = getelementptr inbounds %struct.mpls_route, ptr %old.new, i32 0, i32 10
  %10 = ptrtoint ptr %rt_nh.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rt_nh.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %11, null
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 28, i32 36
  %nh_via_table.i.i = getelementptr inbounds %struct.mpls_route, ptr %old.new, i32 1, i32 3
  %12 = ptrtoint ptr %nh_via_table.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %nh_via_table.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %13)
  %cmp8.not.i.i = icmp eq i8 %13, 4
  br i1 %cmp8.not.i.i, label %if.then.i.i.if.end15.i.i_crit_edge, label %if.then10.i.i

if.then.i.i.if.end15.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.i.i

if.then10.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %nh_via_alen.i.i = getelementptr inbounds %struct.mpls_route, ptr %old.new, i32 1, i32 2
  %14 = ptrtoint ptr %nh_via_alen.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %nh_via_alen.i.i, align 1
  %conv11.i.i = zext i8 %15 to i32
  %sub.i.i.i = add nuw nsw i32 %conv11.i.i, 9
  %and.i.i.i = and i32 %sub.i.i.i, 508
  %add14.i.i = add nuw nsw i32 %and.i.i.i, %spec.select.i.i
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %if.then10.i.i, %if.then.i.i.if.end15.i.i_crit_edge
  %payload.1.i.i = phi i32 [ %add14.i.i, %if.then10.i.i ], [ %spec.select.i.i, %if.then.i.i.if.end15.i.i_crit_edge ]
  %nh_labels.i.i = getelementptr inbounds %struct.mpls_route, ptr %old.new, i32 1, i32 1
  %16 = ptrtoint ptr %nh_labels.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %nh_labels.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool16.not.i.i = icmp eq i8 %17, 0
  br i1 %tobool16.not.i.i, label %if.end15.i.i.lfib_nlmsg_size.exit.i_crit_edge, label %if.then17.i.i

if.end15.i.i.lfib_nlmsg_size.exit.i_crit_edge:    ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lfib_nlmsg_size.exit.i

if.then17.i.i:                                    ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %conv19.i.i = zext i8 %17 to i32
  %mul.i.i = shl nuw nsw i32 %conv19.i.i, 2
  %sub.i82.i.i = add nuw nsw i32 %mul.i.i, 7
  %and.i83.i.i = and i32 %sub.i82.i.i, 2044
  %add21.i.i = add nuw nsw i32 %and.i83.i.i, %payload.1.i.i
  br label %lfib_nlmsg_size.exit.i

if.else.i.i:                                      ; preds = %cond.end.i
  %conv27.i.i = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp2890.not.i.i = icmp eq i8 %9, 0
  br i1 %cmp2890.not.i.i, label %if.else.i.i.for.end.i.i_crit_edge, label %for.body.lr.ph.i.i

if.else.i.i.for.end.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %if.else.i.i
  %rt_nh24.i.i = getelementptr inbounds %struct.mpls_route, ptr %old.new, i32 0, i32 10
  %rt_nh_size.i.i = getelementptr inbounds %struct.mpls_route, ptr %old.new, i32 0, i32 7
  %18 = ptrtoint ptr %rt_nh_size.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %rt_nh_size.i.i, align 2
  %conv56.i.i = zext i8 %19 to i32
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %nh23.093.i.i = phi ptr [ %rt_nh24.i.i, %for.body.lr.ph.i.i ], [ %add.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %nhsel.092.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %nhsize.091.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %nhsize.2.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %20 = ptrtoint ptr %nh23.093.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %nh23.093.i.i, align 4
  %tobool31.not.i.i = icmp eq ptr %21, null
  br i1 %tobool31.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end33.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i

if.end33.i.i:                                     ; preds = %for.body.i.i
  %add35.i.i = add i32 %nhsize.091.i.i, 12
  %nh_via_table36.i.i = getelementptr inbounds %struct.mpls_nh, ptr %nh23.093.i.i, i32 0, i32 4
  %22 = ptrtoint ptr %nh_via_table36.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %nh_via_table36.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %23)
  %cmp38.not.i.i = icmp eq i8 %23, 4
  br i1 %cmp38.not.i.i, label %if.end33.i.i.if.end46.i.i_crit_edge, label %if.then40.i.i

if.end33.i.i.if.end46.i.i_crit_edge:              ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end46.i.i

if.then40.i.i:                                    ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %nh_via_alen41.i.i = getelementptr inbounds %struct.mpls_nh, ptr %nh23.093.i.i, i32 0, i32 3
  %24 = ptrtoint ptr %nh_via_alen41.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %nh_via_alen41.i.i, align 1
  %conv42.i.i = zext i8 %25 to i32
  %sub.i84.i.i = add nuw nsw i32 %conv42.i.i, 9
  %and.i85.i.i = and i32 %sub.i84.i.i, 508
  %add45.i.i = add i32 %and.i85.i.i, %add35.i.i
  br label %if.end46.i.i

if.end46.i.i:                                     ; preds = %if.then40.i.i, %if.end33.i.i.if.end46.i.i_crit_edge
  %nhsize.1.i.i = phi i32 [ %add45.i.i, %if.then40.i.i ], [ %add35.i.i, %if.end33.i.i.if.end46.i.i_crit_edge ]
  %nh_labels47.i.i = getelementptr inbounds %struct.mpls_nh, ptr %nh23.093.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %nh_labels47.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %nh_labels47.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool48.not.i.i = icmp eq i8 %27, 0
  br i1 %tobool48.not.i.i, label %if.end46.i.i.for.inc.i.i_crit_edge, label %if.then49.i.i

if.end46.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i

if.then49.i.i:                                    ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %conv51.i.i = zext i8 %27 to i32
  %mul52.i.i = shl nuw nsw i32 %conv51.i.i, 2
  %sub.i86.i.i = add nuw nsw i32 %mul52.i.i, 7
  %and.i87.i.i = and i32 %sub.i86.i.i, 2044
  %add54.i.i = add i32 %and.i87.i.i, %nhsize.1.i.i
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then49.i.i, %if.end46.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %nhsize.2.i.i = phi i32 [ %add54.i.i, %if.then49.i.i ], [ %nhsize.1.i.i, %if.end46.i.i.for.inc.i.i_crit_edge ], [ %nhsize.091.i.i, %for.body.i.i.for.inc.i.i_crit_edge ]
  %add.ptr.i.i = getelementptr i8, ptr %nh23.093.i.i, i32 %conv56.i.i
  %inc.i.i = add nuw nsw i32 %nhsel.092.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv27.i.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %if.else.i.i.for.end.i.i_crit_edge
  %nhsize.0.lcssa.i.i = phi i32 [ 0, %if.else.i.i.for.end.i.i_crit_edge ], [ %nhsize.2.i.i, %for.inc.i.i.for.end.i.i_crit_edge ]
  %28 = add i32 %nhsize.0.lcssa.i.i, 35
  %add58.i.i = and i32 %28, -4
  br label %lfib_nlmsg_size.exit.i

lfib_nlmsg_size.exit.i:                           ; preds = %for.end.i.i, %if.then17.i.i, %if.end15.i.i.lfib_nlmsg_size.exit.i_crit_edge
  %payload.3.i.i = phi i32 [ %add58.i.i, %for.end.i.i ], [ %add21.i.i, %if.then17.i.i ], [ %payload.1.i.i, %if.end15.i.i.lfib_nlmsg_size.exit.i_crit_edge ]
  %sub.i.i45.i = add i32 %payload.3.i.i, 19
  %and.i.i46.i = and i32 %sub.i.i45.i, -4
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef %and.i.i46.i, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #16
  %cmp.i = icmp eq ptr %call.i.i.i, null
  br i1 %cmp.i, label %lfib_nlmsg_size.exit.i.if.then29.i_crit_edge, label %if.end.i

lfib_nlmsg_size.exit.i.if.then29.i_crit_edge:     ; preds = %lfib_nlmsg_size.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then29.i

if.end.i:                                         ; preds = %lfib_nlmsg_size.exit.i
  %call2.i = tail call fastcc i32 @mpls_dump_route(ptr noundef nonnull %call.i.i.i, i32 noundef %cond7, i32 noundef %cond.i, i32 noundef %cond9, i32 noundef %index, ptr noundef nonnull %old.new, i32 noundef %5) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %if.end27.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -90, i32 %call2.i)
  %cmp5.i = icmp eq i32 %call2.i, -90
  br i1 %cmp5.i, label %do.end.i, label %if.then4.i.if.end20.i_crit_edge, !prof !220

if.then4.i.if.end20.i_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end20.i

do.end.i:                                         ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 2283, i32 noundef 9, ptr noundef null) #16
  br label %if.end20.i

if.end20.i:                                       ; preds = %do.end.i, %if.then4.i.if.end20.i_crit_edge
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #16
  br label %if.then29.i

if.end27.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @rtnl_notify(ptr noundef nonnull %call.i.i.i, ptr noundef %net, i32 noundef %cond7, i32 noundef 27, ptr noundef %cond29, i32 noundef 3264) #16
  br label %if.end

if.then29.i:                                      ; preds = %if.end20.i, %lfib_nlmsg_size.exit.i.if.then29.i_crit_edge
  %err.0.i = phi i32 [ -105, %lfib_nlmsg_size.exit.i.if.then29.i_crit_edge ], [ %call2.i, %if.end20.i ]
  tail call void @rtnl_set_sk_err(ptr noundef %net, i32 noundef 27, i32 noundef %err.0.i) #16
  br label %if.end

if.end:                                           ; preds = %if.then29.i, %if.end27.i, %cond.end6.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mpls_dump_route(ptr noundef %skb, i32 noundef %portid, i32 noundef %seq, i32 noundef %event, i32 noundef %label, ptr nocapture noundef readonly %rt, i32 noundef %flags) unnamed_addr #2 align 64 {
entry:
  %tmp.i257 = alloca i32, align 4
  %tmp.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %0 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.i.not.i.i = icmp eq i32 %1, 0
  br i1 %tobool.i.not.i.i, label %skb_tailroom.exit.i, label %entry.cleanup158_crit_edge

entry.cleanup158_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup158

skb_tailroom.exit.i:                              ; preds = %entry
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %2 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %end.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %sub.ptr.sub.i.i)
  %cmp.i = icmp slt i32 %sub.ptr.sub.i.i, 28
  br i1 %cmp.i, label %skb_tailroom.exit.i.cleanup158_crit_edge, label %nlmsg_put.exit, !prof !220

skb_tailroom.exit.i.cleanup158_crit_edge:         ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup158

nlmsg_put.exit:                                   ; preds = %skb_tailroom.exit.i
  %call3.i = tail call ptr @__nlmsg_put(ptr noundef %skb, i32 noundef %portid, i32 noundef %seq, i32 noundef %event, i32 noundef 12, i32 noundef %flags) #16
  %cmp = icmp eq ptr %call3.i, null
  br i1 %cmp, label %nlmsg_put.exit.cleanup158_crit_edge, label %if.end

nlmsg_put.exit.cleanup158_crit_edge:              ; preds = %nlmsg_put.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup158

if.end:                                           ; preds = %nlmsg_put.exit
  %add.ptr.i = getelementptr i8, ptr %call3.i, i32 16
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 28, ptr %add.ptr.i, align 4
  %rtm_dst_len = getelementptr i8, ptr %call3.i, i32 17
  %7 = ptrtoint ptr %rtm_dst_len to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 20, ptr %rtm_dst_len, align 1
  %rtm_src_len = getelementptr i8, ptr %call3.i, i32 18
  %8 = ptrtoint ptr %rtm_src_len to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %rtm_src_len, align 2
  %rtm_tos = getelementptr i8, ptr %call3.i, i32 19
  %9 = ptrtoint ptr %rtm_tos to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %rtm_tos, align 1
  %rtm_table = getelementptr i8, ptr %call3.i, i32 20
  %10 = ptrtoint ptr %rtm_table to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -2, ptr %rtm_table, align 4
  %rt_protocol = getelementptr inbounds %struct.mpls_route, ptr %rt, i32 0, i32 1
  %11 = ptrtoint ptr %rt_protocol to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %rt_protocol, align 4
  %rtm_protocol = getelementptr i8, ptr %call3.i, i32 21
  %13 = ptrtoint ptr %rtm_protocol to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %rtm_protocol, align 1
  %rtm_scope = getelementptr i8, ptr %call3.i, i32 22
  %14 = ptrtoint ptr %rtm_scope to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %rtm_scope, align 2
  %rtm_type = getelementptr i8, ptr %call3.i, i32 23
  %15 = ptrtoint ptr %rtm_type to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %rtm_type, align 1
  %rtm_flags = getelementptr i8, ptr %call3.i, i32 24
  %16 = ptrtoint ptr %rtm_flags to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %rtm_flags, align 4
  %call.i = tail call ptr @nla_reserve(ptr noundef %skb, i32 noundef 1, i32 noundef 4) #16
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.if.then.i.i_crit_edge, label %if.end4

if.end.if.then.i.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i

if.end4:                                          ; preds = %if.end
  %add.ptr.i.i = getelementptr i8, ptr %call.i, i32 4
  %shl.i.peel.i = shl i32 %label, 12
  %or2.i.peel.i = or i32 %shl.i.peel.i, 256
  %17 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or2.i.peel.i, ptr %add.ptr.i.i, align 4
  %rt_ttl_propagate = getelementptr inbounds %struct.mpls_route, ptr %rt, i32 0, i32 4
  %18 = ptrtoint ptr %rt_ttl_propagate to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %rt_ttl_propagate, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp5.not = icmp eq i8 %19, 0
  br i1 %cmp5.not, label %if.end4.if.end18_crit_edge, label %if.then7

if.end4.if.end18_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %19)
  %cmp10 = icmp eq i8 %19, 1
  %frombool = zext i1 %cmp10 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #16
  %20 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %frombool, ptr %tmp.i, align 1
  %call.i238 = call i32 @nla_put(ptr noundef %skb, i32 noundef 26, i32 noundef 1, ptr noundef nonnull %tmp.i) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i238)
  %tobool15.not = icmp eq i32 %call.i238, 0
  br i1 %tobool15.not, label %if.then7.if.end18_crit_edge, label %if.then7.if.then.i.i_crit_edge

if.then7.if.then.i.i_crit_edge:                   ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i

if.then7.if.end18_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18

if.end18:                                         ; preds = %if.then7.if.end18_crit_edge, %if.end4.if.end18_crit_edge
  %rt_nhn = getelementptr inbounds %struct.mpls_route, ptr %rt, i32 0, i32 5
  %21 = ptrtoint ptr %rt_nhn to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %rt_nhn, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %22)
  %cmp20 = icmp eq i8 %22, 1
  br i1 %cmp20, label %if.then22, label %if.else

if.then22:                                        ; preds = %if.end18
  %rt_nh = getelementptr inbounds %struct.mpls_route, ptr %rt, i32 0, i32 10
  %nh_labels = getelementptr inbounds %struct.mpls_route, ptr %rt, i32 1, i32 1
  %23 = ptrtoint ptr %nh_labels to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %nh_labels, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool24.not = icmp eq i8 %24, 0
  br i1 %tobool24.not, label %if.then22.if.end30_crit_edge, label %land.lhs.true

if.then22.if.end30_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end30

land.lhs.true:                                    ; preds = %if.then22
  %nh_label = getelementptr inbounds %struct.mpls_route, ptr %rt, i32 1, i32 5
  %conv.i = zext i8 %24 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 2
  %call.i239 = call ptr @nla_reserve(ptr noundef %skb, i32 noundef 19, i32 noundef %mul.i) #16
  %tobool.not.i240 = icmp eq ptr %call.i239, null
  br i1 %tobool.not.i240, label %land.lhs.true.if.then.i.i_crit_edge, label %for.body.preheader.i

land.lhs.true.if.then.i.i_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i

for.body.preheader.i:                             ; preds = %land.lhs.true
  %add.ptr.i.i241 = getelementptr i8, ptr %call.i239, i32 4
  %i.015.i = add nsw i32 %conv.i, -1
  %arrayidx.peel.i = getelementptr %struct.mpls_shim_hdr, ptr %add.ptr.i.i241, i32 %i.015.i
  %arrayidx4.peel.i = getelementptr i32, ptr %nh_label, i32 %i.015.i
  %25 = ptrtoint ptr %arrayidx4.peel.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx4.peel.i, align 4
  %shl.i.peel.i243 = shl i32 %26, 12
  %or2.i.peel.i244 = or i32 %shl.i.peel.i243, 256
  %27 = ptrtoint ptr %arrayidx.peel.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or2.i.peel.i244, ptr %arrayidx.peel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %24)
  %cmp.peel.not.i = icmp eq i8 %24, 1
  br i1 %cmp.peel.not.i, label %for.body.preheader.i.if.end30_crit_edge, label %for.body.peel.next.i

for.body.preheader.i.if.end30_crit_edge:          ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end30

for.body.peel.next.i:                             ; preds = %for.body.preheader.i
  %i.0.peel.i = add nsw i32 %conv.i, -2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.peel.next.i
  %i.018.i = phi i32 [ %i.0.i, %for.body.i.for.body.i_crit_edge ], [ %i.0.peel.i, %for.body.peel.next.i ]
  %arrayidx.i = getelementptr %struct.mpls_shim_hdr, ptr %add.ptr.i.i241, i32 %i.018.i
  %arrayidx4.i = getelementptr i32, ptr %nh_label, i32 %i.018.i
  %28 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx4.i, align 4
  %shl.i.i = shl i32 %29, 12
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %shl.i.i, ptr %arrayidx.i, align 4
  %i.0.i = add nsw i32 %i.018.i, -1
  %cmp.i245 = icmp sgt i32 %i.018.i, 0
  br i1 %cmp.i245, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end30_crit_edge, !llvm.loop !228

for.body.i.if.end30_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end30

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

if.end30:                                         ; preds = %for.body.i.if.end30_crit_edge, %for.body.preheader.i.if.end30_crit_edge, %if.then22.if.end30_crit_edge
  %nh_via_table = getelementptr inbounds %struct.mpls_route, ptr %rt, i32 1, i32 3
  %31 = ptrtoint ptr %nh_via_table to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %nh_via_table, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %32)
  %cmp32.not = icmp eq i8 %32, 4
  br i1 %cmp32.not, label %if.end30.if.end41_crit_edge, label %land.lhs.true34

if.end30.if.end41_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end41

land.lhs.true34:                                  ; preds = %if.end30
  %rt_via_offset.i.i = getelementptr inbounds %struct.mpls_route, ptr %rt, i32 0, i32 8
  %33 = ptrtoint ptr %rt_via_offset.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %rt_via_offset.i.i, align 1
  %conv.i.i = zext i8 %34 to i32
  %add.ptr.i.i248 = getelementptr i8, ptr %rt_nh, i32 %conv.i.i
  %nh_via_alen = getelementptr inbounds %struct.mpls_route, ptr %rt, i32 1, i32 2
  %35 = ptrtoint ptr %nh_via_alen to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %nh_via_alen, align 1
  %conv37 = zext i8 %36 to i32
  %add.i = add nuw nsw i32 %conv37, 2
  %call.i249 = call ptr @nla_reserve(ptr noundef %skb, i32 noundef 18, i32 noundef %add.i) #16
  %tobool.not.i250 = icmp eq ptr %call.i249, null
  br i1 %tobool.not.i250, label %land.lhs.true34.if.then.i.i_crit_edge, label %if.end.i252

land.lhs.true34.if.then.i.i_crit_edge:            ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i

if.end.i252:                                      ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %32)
  %cmp.i251 = icmp ult i8 %32, 4
  br i1 %cmp.i251, label %if.then2.i, label %if.end.i252.nla_put_via.exit.thread_crit_edge

if.end.i252.nla_put_via.exit.thread_crit_edge:    ; preds = %if.end.i252
  call void @__sanitizer_cov_trace_pc() #18
  br label %nla_put_via.exit.thread

if.then2.i:                                       ; preds = %if.end.i252
  call void @__sanitizer_cov_trace_pc() #18
  %conv.i253 = zext i8 %32 to i32
  %arrayidx.i254 = getelementptr [4 x i32], ptr @nla_put_via.table_to_family, i32 0, i32 %conv.i253
  %37 = ptrtoint ptr %arrayidx.i254 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i254, align 4
  %phi.cast.i = trunc i32 %38 to i16
  br label %nla_put_via.exit.thread

nla_put_via.exit.thread:                          ; preds = %if.then2.i, %if.end.i252.nla_put_via.exit.thread_crit_edge
  %family.0.i = phi i16 [ %phi.cast.i, %if.then2.i ], [ 0, %if.end.i252.nla_put_via.exit.thread_crit_edge ]
  %add.ptr.i.i255 = getelementptr i8, ptr %call.i249, i32 4
  %39 = ptrtoint ptr %add.ptr.i.i255 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %family.0.i, ptr %add.ptr.i.i255, align 2
  %rtvia_addr.i = getelementptr i8, ptr %call.i249, i32 6
  %40 = call ptr @memcpy(ptr %rtvia_addr.i, ptr %add.ptr.i.i248, i32 %conv37)
  br label %if.end41

if.end41:                                         ; preds = %nla_put_via.exit.thread, %if.end30.if.end41_crit_edge
  %41 = ptrtoint ptr %rt_nh to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rt_nh, align 4
  %tobool42.not = icmp eq ptr %42, null
  br i1 %tobool42.not, label %if.end41.if.end47_crit_edge, label %land.lhs.true43

if.end41.if.end47_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end47

land.lhs.true43:                                  ; preds = %if.end41
  %ifindex = getelementptr inbounds %struct.net_device, ptr %42, i32 0, i32 17
  %43 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ifindex, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i257) #16
  %45 = ptrtoint ptr %tmp.i257 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %tmp.i257, align 4
  %call.i258 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i257) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i257) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i258)
  %tobool45.not = icmp eq i32 %call.i258, 0
  br i1 %tobool45.not, label %land.lhs.true43.if.end47_crit_edge, label %land.lhs.true43.if.then.i.i_crit_edge

land.lhs.true43.if.then.i.i_crit_edge:            ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i

land.lhs.true43.if.end47_crit_edge:               ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end47

if.end47:                                         ; preds = %land.lhs.true43.if.end47_crit_edge, %if.end41.if.end47_crit_edge
  %nh_flags = getelementptr inbounds %struct.mpls_route, ptr %rt, i32 1, i32 0, i32 1
  %46 = ptrtoint ptr %nh_flags to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %nh_flags, align 4
  %and = and i32 %47, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool48.not = icmp eq i32 %and, 0
  br i1 %tobool48.not, label %if.end47.if.end51_crit_edge, label %if.then49

if.end47.if.end51_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end51

if.then49:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #18
  %48 = ptrtoint ptr %rtm_flags to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rtm_flags, align 4
  %or = or i32 %49, 16
  store i32 %or, ptr %rtm_flags, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %if.end47.if.end51_crit_edge
  %50 = ptrtoint ptr %nh_flags to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %nh_flags, align 4
  %and53 = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.end51.if.end157_crit_edge, label %if.then55

if.end51.if.end157_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end157

if.then55:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #18
  %52 = ptrtoint ptr %rtm_flags to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rtm_flags, align 4
  %or57 = or i32 %53, 1
  store i32 %or57, ptr %rtm_flags, align 4
  br label %if.end157

if.else:                                          ; preds = %if.end18
  %54 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %tail.i.i, align 8
  %call1.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 9, i32 noundef 0, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i260 = icmp slt i32 %call1.i, 0
  %tobool63.not341 = icmp eq ptr %55, null
  %tobool63.not = select i1 %cmp.i260, i1 true, i1 %tobool63.not341
  br i1 %tobool63.not, label %if.else.if.then.i.i_crit_edge, label %if.end65

if.else.if.then.i.i_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i

if.end65:                                         ; preds = %if.else
  %56 = ptrtoint ptr %rt_nhn to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %rt_nhn, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %cmp71349.not = icmp eq i8 %57, 0
  br i1 %cmp71349.not, label %if.end65.cleanup.cont131_crit_edge, label %for.body.lr.ph

if.end65.cleanup.cont131_crit_edge:               ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.cont131

for.body.lr.ph:                                   ; preds = %if.end65
  %rt_nh67 = getelementptr inbounds %struct.mpls_route, ptr %rt, i32 0, i32 10
  %rt_via_offset.i.i286 = getelementptr inbounds %struct.mpls_route, ptr %rt, i32 0, i32 8
  %rt_nh_size = getelementptr inbounds %struct.mpls_route, ptr %rt, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %nh66.0353 = phi ptr [ %rt_nh67, %for.body.lr.ph ], [ %add.ptr, %for.inc.for.body_crit_edge ]
  %nhsel.0352 = phi i32 [ 0, %for.body.lr.ph ], [ %inc127, %for.inc.for.body_crit_edge ]
  %dead.0351 = phi i8 [ 0, %for.body.lr.ph ], [ %dead.2, %for.inc.for.body_crit_edge ]
  %linkdown.0350 = phi i8 [ 0, %for.body.lr.ph ], [ %linkdown.2, %for.inc.for.body_crit_edge ]
  %58 = ptrtoint ptr %nh66.0353 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %nh66.0353, align 4
  %tobool74.not = icmp eq ptr %59, null
  br i1 %tobool74.not, label %for.body.for.inc_crit_edge, label %if.end76

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end76:                                         ; preds = %for.body
  %call77 = call ptr @nla_reserve_nohdr(ptr noundef %skb, i32 noundef 8) #16
  %tobool78.not = icmp eq ptr %call77, null
  br i1 %tobool78.not, label %if.end76.if.then.i.i_crit_edge, label %if.end80

if.end76.if.then.i.i_crit_edge:                   ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i

if.end80:                                         ; preds = %if.end76
  %ifindex81 = getelementptr inbounds %struct.net_device, ptr %59, i32 0, i32 17
  %60 = ptrtoint ptr %ifindex81 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ifindex81, align 4
  %rtnh_ifindex = getelementptr inbounds %struct.rtnexthop, ptr %call77, i32 0, i32 3
  %62 = ptrtoint ptr %rtnh_ifindex to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %rtnh_ifindex, align 4
  %nh_flags82 = getelementptr inbounds %struct.mpls_nh, ptr %nh66.0353, i32 0, i32 1
  %63 = ptrtoint ptr %nh_flags82 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %nh_flags82, align 4
  %and83 = and i32 %64, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %if.end80.if.end89_crit_edge, label %if.then85

if.end80.if.end89_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end89

if.then85:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #18
  %rtnh_flags = getelementptr inbounds %struct.rtnexthop, ptr %call77, i32 0, i32 1
  %65 = ptrtoint ptr %rtnh_flags to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %rtnh_flags, align 2
  %67 = or i8 %66, 16
  store i8 %67, ptr %rtnh_flags, align 2
  %inc = add i8 %linkdown.0350, 1
  br label %if.end89

if.end89:                                         ; preds = %if.then85, %if.end80.if.end89_crit_edge
  %linkdown.1 = phi i8 [ %inc, %if.then85 ], [ %linkdown.0350, %if.end80.if.end89_crit_edge ]
  %68 = ptrtoint ptr %nh_flags82 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %nh_flags82, align 4
  %and91 = and i32 %69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %if.end89.if.end99_crit_edge, label %if.then93

if.end89.if.end99_crit_edge:                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end99

if.then93:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #18
  %rtnh_flags94 = getelementptr inbounds %struct.rtnexthop, ptr %call77, i32 0, i32 1
  %70 = ptrtoint ptr %rtnh_flags94 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %rtnh_flags94, align 2
  %72 = or i8 %71, 1
  store i8 %72, ptr %rtnh_flags94, align 2
  %inc98 = add i8 %dead.0351, 1
  br label %if.end99

if.end99:                                         ; preds = %if.then93, %if.end89.if.end99_crit_edge
  %dead.1 = phi i8 [ %inc98, %if.then93 ], [ %dead.0351, %if.end89.if.end99_crit_edge ]
  %nh_labels100 = getelementptr inbounds %struct.mpls_nh, ptr %nh66.0353, i32 0, i32 2
  %73 = ptrtoint ptr %nh_labels100 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %nh_labels100, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool102.not = icmp eq i8 %74, 0
  br i1 %tobool102.not, label %if.end99.if.end110_crit_edge, label %land.lhs.true103

if.end99.if.end110_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end110

land.lhs.true103:                                 ; preds = %if.end99
  %nh_label105 = getelementptr inbounds %struct.mpls_nh, ptr %nh66.0353, i32 0, i32 6
  %conv.i261 = zext i8 %74 to i32
  %mul.i262 = shl nuw nsw i32 %conv.i261, 2
  %call.i263 = call ptr @nla_reserve(ptr noundef %skb, i32 noundef 19, i32 noundef %mul.i262) #16
  %tobool.not.i264 = icmp eq ptr %call.i263, null
  br i1 %tobool.not.i264, label %land.lhs.true103.if.then.i.i_crit_edge, label %for.body.preheader.i274

land.lhs.true103.if.then.i.i_crit_edge:           ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i

for.body.preheader.i274:                          ; preds = %land.lhs.true103
  %add.ptr.i.i265 = getelementptr i8, ptr %call.i263, i32 4
  %i.015.i268 = add nsw i32 %conv.i261, -1
  %arrayidx.peel.i269 = getelementptr %struct.mpls_shim_hdr, ptr %add.ptr.i.i265, i32 %i.015.i268
  %arrayidx4.peel.i270 = getelementptr i32, ptr %nh_label105, i32 %i.015.i268
  %75 = ptrtoint ptr %arrayidx4.peel.i270 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx4.peel.i270, align 4
  %shl.i.peel.i271 = shl i32 %76, 12
  %or2.i.peel.i272 = or i32 %shl.i.peel.i271, 256
  %77 = ptrtoint ptr %arrayidx.peel.i269 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %or2.i.peel.i272, ptr %arrayidx.peel.i269, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %74)
  %cmp.peel.not.i273 = icmp eq i8 %74, 1
  br i1 %cmp.peel.not.i273, label %for.body.preheader.i274.if.end110_crit_edge, label %for.body.peel.next.i276

for.body.preheader.i274.if.end110_crit_edge:      ; preds = %for.body.preheader.i274
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end110

for.body.peel.next.i276:                          ; preds = %for.body.preheader.i274
  %i.0.peel.i275 = add nsw i32 %conv.i261, -2
  br label %for.body.i283

for.body.i283:                                    ; preds = %for.body.i283.for.body.i283_crit_edge, %for.body.peel.next.i276
  %i.018.i277 = phi i32 [ %i.0.i281, %for.body.i283.for.body.i283_crit_edge ], [ %i.0.peel.i275, %for.body.peel.next.i276 ]
  %arrayidx.i278 = getelementptr %struct.mpls_shim_hdr, ptr %add.ptr.i.i265, i32 %i.018.i277
  %arrayidx4.i279 = getelementptr i32, ptr %nh_label105, i32 %i.018.i277
  %78 = ptrtoint ptr %arrayidx4.i279 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx4.i279, align 4
  %shl.i.i280 = shl i32 %79, 12
  %80 = ptrtoint ptr %arrayidx.i278 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %shl.i.i280, ptr %arrayidx.i278, align 4
  %i.0.i281 = add nsw i32 %i.018.i277, -1
  %cmp.i282 = icmp sgt i32 %i.018.i277, 0
  br i1 %cmp.i282, label %for.body.i283.for.body.i283_crit_edge, label %for.body.i283.if.end110_crit_edge, !llvm.loop !228

for.body.i283.if.end110_crit_edge:                ; preds = %for.body.i283
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end110

for.body.i283.for.body.i283_crit_edge:            ; preds = %for.body.i283
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i283

if.end110:                                        ; preds = %for.body.i283.if.end110_crit_edge, %for.body.preheader.i274.if.end110_crit_edge, %if.end99.if.end110_crit_edge
  %nh_via_table111 = getelementptr inbounds %struct.mpls_nh, ptr %nh66.0353, i32 0, i32 4
  %81 = ptrtoint ptr %nh_via_table111 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %nh_via_table111, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %82)
  %cmp113.not = icmp eq i8 %82, 4
  br i1 %cmp113.not, label %if.end110.if.end123_crit_edge, label %land.lhs.true115

if.end110.if.end123_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end123

land.lhs.true115:                                 ; preds = %if.end110
  %83 = ptrtoint ptr %rt_via_offset.i.i286 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %rt_via_offset.i.i286, align 1
  %conv.i.i287 = zext i8 %84 to i32
  %add.ptr.i.i288 = getelementptr i8, ptr %nh66.0353, i32 %conv.i.i287
  %nh_via_alen118 = getelementptr inbounds %struct.mpls_nh, ptr %nh66.0353, i32 0, i32 3
  %85 = ptrtoint ptr %nh_via_alen118 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %nh_via_alen118, align 1
  %conv119 = zext i8 %86 to i32
  %add.i289 = add nuw nsw i32 %conv119, 2
  %call.i290 = call ptr @nla_reserve(ptr noundef %skb, i32 noundef 18, i32 noundef %add.i289) #16
  %tobool.not.i291 = icmp eq ptr %call.i290, null
  br i1 %tobool.not.i291, label %land.lhs.true115.if.then.i.i_crit_edge, label %if.end.i293

land.lhs.true115.if.then.i.i_crit_edge:           ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i

if.end.i293:                                      ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %82)
  %cmp.i292 = icmp ult i8 %82, 4
  br i1 %cmp.i292, label %if.then2.i297, label %if.end.i293.nla_put_via.exit303.thread_crit_edge

if.end.i293.nla_put_via.exit303.thread_crit_edge: ; preds = %if.end.i293
  call void @__sanitizer_cov_trace_pc() #18
  br label %nla_put_via.exit303.thread

if.then2.i297:                                    ; preds = %if.end.i293
  call void @__sanitizer_cov_trace_pc() #18
  %conv.i294 = zext i8 %82 to i32
  %arrayidx.i295 = getelementptr [4 x i32], ptr @nla_put_via.table_to_family, i32 0, i32 %conv.i294
  %87 = ptrtoint ptr %arrayidx.i295 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx.i295, align 4
  %phi.cast.i296 = trunc i32 %88 to i16
  br label %nla_put_via.exit303.thread

nla_put_via.exit303.thread:                       ; preds = %if.then2.i297, %if.end.i293.nla_put_via.exit303.thread_crit_edge
  %family.0.i298 = phi i16 [ %phi.cast.i296, %if.then2.i297 ], [ 0, %if.end.i293.nla_put_via.exit303.thread_crit_edge ]
  %add.ptr.i.i299 = getelementptr i8, ptr %call.i290, i32 4
  %89 = ptrtoint ptr %add.ptr.i.i299 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %family.0.i298, ptr %add.ptr.i.i299, align 2
  %rtvia_addr.i300 = getelementptr i8, ptr %call.i290, i32 6
  %90 = call ptr @memcpy(ptr %rtvia_addr.i300, ptr %add.ptr.i.i288, i32 %conv119)
  br label %if.end123

if.end123:                                        ; preds = %nla_put_via.exit303.thread, %if.end110.if.end123_crit_edge
  %91 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %92 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %call77 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv125 = trunc i32 %sub.ptr.sub to i16
  %93 = ptrtoint ptr %call77 to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %conv125, ptr %call77, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end123, %for.body.for.inc_crit_edge
  %linkdown.2 = phi i8 [ %linkdown.1, %if.end123 ], [ %linkdown.0350, %for.body.for.inc_crit_edge ]
  %dead.2 = phi i8 [ %dead.1, %if.end123 ], [ %dead.0351, %for.body.for.inc_crit_edge ]
  %94 = ptrtoint ptr %rt_nh_size to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %rt_nh_size, align 2
  %conv126 = zext i8 %95 to i32
  %add.ptr = getelementptr i8, ptr %nh66.0353, i32 %conv126
  %inc127 = add nuw nsw i32 %nhsel.0352, 1
  %96 = ptrtoint ptr %rt_nhn to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %rt_nhn, align 4
  %conv70 = zext i8 %97 to i32
  %cmp71 = icmp ult i32 %inc127, %conv70
  br i1 %cmp71, label %for.inc.for.body_crit_edge, label %for.inc.cleanup.cont131_crit_edge

for.inc.cleanup.cont131_crit_edge:                ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.cont131

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

cleanup.cont131:                                  ; preds = %for.inc.cleanup.cont131_crit_edge, %if.end65.cleanup.cont131_crit_edge
  %dead.3339 = phi i8 [ 0, %if.end65.cleanup.cont131_crit_edge ], [ %dead.2, %for.inc.cleanup.cont131_crit_edge ]
  %linkdown.3338 = phi i8 [ 0, %if.end65.cleanup.cont131_crit_edge ], [ %linkdown.2, %for.inc.cleanup.cont131_crit_edge ]
  %98 = ptrtoint ptr %rt_nhn to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %rt_nhn, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %linkdown.3338, i8 %99)
  %cmp135 = icmp eq i8 %linkdown.3338, %99
  br i1 %cmp135, label %if.then137, label %cleanup.cont131.if.end140_crit_edge

cleanup.cont131.if.end140_crit_edge:              ; preds = %cleanup.cont131
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end140

if.then137:                                       ; preds = %cleanup.cont131
  call void @__sanitizer_cov_trace_pc() #18
  %100 = ptrtoint ptr %rtm_flags to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %rtm_flags, align 4
  %or139 = or i32 %101, 16
  store i32 %or139, ptr %rtm_flags, align 4
  br label %if.end140

if.end140:                                        ; preds = %if.then137, %cleanup.cont131.if.end140_crit_edge
  %102 = ptrtoint ptr %rt_nhn to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %rt_nhn, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %dead.3339, i8 %103)
  %cmp144 = icmp eq i8 %dead.3339, %103
  br i1 %cmp144, label %if.then146, label %if.end140.cleanup151_crit_edge

if.end140.cleanup151_crit_edge:                   ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup151

if.then146:                                       ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #18
  %104 = ptrtoint ptr %rtm_flags to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %rtm_flags, align 4
  %or148 = or i32 %105, 1
  store i32 %or148, ptr %rtm_flags, align 4
  br label %cleanup151

cleanup151:                                       ; preds = %if.then146, %if.end140.cleanup151_crit_edge
  %106 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %107 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %55 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i306 = trunc i32 %sub.ptr.sub.i to i16
  %108 = ptrtoint ptr %55 to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %conv.i306, ptr %55, align 2
  br label %if.end157

if.end157:                                        ; preds = %cleanup151, %if.then55, %if.end51.if.end157_crit_edge
  %109 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i308 = ptrtoint ptr %110 to i32
  %sub.ptr.rhs.cast.i309 = ptrtoint ptr %call3.i to i32
  %sub.ptr.sub.i310 = sub i32 %sub.ptr.lhs.cast.i308, %sub.ptr.rhs.cast.i309
  %111 = ptrtoint ptr %call3.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %sub.ptr.sub.i310, ptr %call3.i, align 4
  br label %cleanup158

if.then.i.i:                                      ; preds = %land.lhs.true115.if.then.i.i_crit_edge, %land.lhs.true103.if.then.i.i_crit_edge, %if.end76.if.then.i.i_crit_edge, %if.else.if.then.i.i_crit_edge, %land.lhs.true43.if.then.i.i_crit_edge, %land.lhs.true34.if.then.i.i_crit_edge, %land.lhs.true.if.then.i.i_crit_edge, %if.then7.if.then.i.i_crit_edge, %if.end.if.then.i.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %112 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp ugt ptr %113, %call3.i
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.nlmsg_cancel.exit_crit_edge, !prof !220

if.then.i.i.nlmsg_cancel.exit_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nlmsg_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 991, i32 noundef 9, ptr noundef null) #16
  br label %nlmsg_cancel.exit

nlmsg_cancel.exit:                                ; preds = %do.end.i.i, %if.then.i.i.nlmsg_cancel.exit_crit_edge
  %114 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i311 = ptrtoint ptr %call3.i to i32
  %sub.ptr.rhs.cast.i.i312 = ptrtoint ptr %115 to i32
  %sub.ptr.sub.i.i313 = sub i32 %sub.ptr.lhs.cast.i.i311, %sub.ptr.rhs.cast.i.i312
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i313) #16
  br label %cleanup158

cleanup158:                                       ; preds = %nlmsg_cancel.exit, %if.end157, %nlmsg_put.exit.cleanup158_crit_edge, %skb_tailroom.exit.i.cleanup158_crit_edge, %entry.cleanup158_crit_edge
  %retval.0 = phi i32 [ -90, %nlmsg_cancel.exit ], [ 0, %if.end157 ], [ -90, %nlmsg_put.exit.cleanup158_crit_edge ], [ -90, %skb_tailroom.exit.i.cleanup158_crit_edge ], [ -90, %entry.cleanup158_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_notify(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_set_sk_err(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nla_put_via(ptr noundef %skb, i8 noundef zeroext %table, ptr nocapture noundef readonly %addr, i32 noundef %alen) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %alen, 2
  %call = tail call ptr @nla_reserve(ptr noundef %skb, i32 noundef 18, i32 noundef %add) #16
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %table)
  %cmp = icmp ult i8 %table, 4
  br i1 %cmp, label %if.then2, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %conv = zext i8 %table to i32
  %arrayidx = getelementptr [4 x i32], ptr @nla_put_via.table_to_family, i32 0, i32 %conv
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %phi.cast = trunc i32 %1 to i16
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %family.0 = phi i16 [ %phi.cast, %if.then2 ], [ 0, %if.end.if.end3_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %call, i32 4
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %family.0, ptr %add.ptr.i, align 2
  %rtvia_addr = getelementptr i8, ptr %call, i32 6
  %3 = call ptr @memcpy(ptr %rtvia_addr, ptr %addr, i32 %alen)
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -90, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nla_reserve_nohdr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nlmsg_cancel(ptr noundef %skb, ptr noundef %nlh) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %tobool.not.i = icmp eq ptr %nlh, null
  br i1 %tobool.not.i, label %entry.nlmsg_trim.exit_crit_edge, label %if.then.i

entry.nlmsg_trim.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %nlmsg_trim.exit

if.then.i:                                        ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %cmp.i = icmp ugt ptr %1, %nlh
  br i1 %cmp.i, label %do.end.i, label %if.then.i.if.end.i_crit_edge, !prof !220

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 991, i32 noundef 9, ptr noundef null) #16
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i.if.end.i_crit_edge
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %nlh to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  tail call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i) #16
  br label %nlmsg_trim.exit

nlmsg_trim.exit:                                  ; preds = %if.end.i, %entry.nlmsg_trim.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__nlmsg_put(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @mpls_route_input_rcu(ptr noundef %net, i32 noundef %index) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_labels = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 49, i32 2
  %0 = ptrtoint ptr %platform_labels to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %platform_labels, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %index)
  %cmp = icmp ugt i32 %1, %index
  br i1 %cmp, label %if.then, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29

if.then:                                          ; preds = %entry
  %platform_label2 = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 49, i32 3
  %2 = ptrtoint ptr %platform_label2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %platform_label2, align 4
  %call = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.then.do.end10_crit_edge

if.then.do.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end10

land.lhs.true:                                    ; preds = %if.then
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end10_crit_edge, label %land.lhs.true6

land.lhs.true.do.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end10

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b34 = load i1, ptr @mpls_route_input_rcu.__warned, align 1
  br i1 %.b34, label %land.lhs.true6.do.end10_crit_edge, label %if.then8

land.lhs.true6.do.end10_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end10

if.then8:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @mpls_route_input_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 83, ptr noundef nonnull @.str.7) #16
  br label %do.end10

do.end10:                                         ; preds = %if.then8, %land.lhs.true6.do.end10_crit_edge, %land.lhs.true.do.end10_crit_edge, %if.then.do.end10_crit_edge
  %arrayidx = getelementptr ptr, ptr %3, i32 %index
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %arrayidx, align 4
  %call17 = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %land.lhs.true19, label %do.end10.if.end29_crit_edge

do.end10.if.end29_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29

land.lhs.true19:                                  ; preds = %do.end10
  %call20 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %land.lhs.true19.if.end29_crit_edge, label %land.lhs.true22

land.lhs.true19.if.end29_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29

land.lhs.true22:                                  ; preds = %land.lhs.true19
  %.b3233 = load i1, ptr @mpls_route_input_rcu.__warned.36, align 1
  br i1 %.b3233, label %land.lhs.true22.if.end29_crit_edge, label %if.then24

land.lhs.true22.if.end29_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29

if.then24:                                        ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @mpls_route_input_rcu.__warned.36, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 84, ptr noundef nonnull @.str.7) #16
  br label %if.end29

if.end29:                                         ; preds = %if.then24, %land.lhs.true22.if.end29_crit_edge, %land.lhs.true19.if.end29_crit_edge, %do.end10.if.end29_crit_edge, %entry.if.end29_crit_edge
  %rt.0 = phi ptr [ null, %entry.if.end29_crit_edge ], [ %5, %if.then24 ], [ %5, %land.lhs.true22.if.end29_crit_edge ], [ %5, %land.lhs.true19.if.end29_crit_edge ], [ %5, %do.end10.if.end29_crit_edge ]
  ret ptr %rt.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_unicast(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @skb_cow(ptr noundef %skb, i32 noundef %headroom) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %cloned.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %0 = ptrtoint ptr %cloned.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %cloned.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.skb_cloned.exit_crit_edge, label %land.rhs.i

entry.skb_cloned.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %skb_cloned.exit

land.rhs.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %1 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %end.i.i, align 4
  %dataref.i = getelementptr inbounds %struct.skb_shared_info, ptr %2, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i, i32 noundef 4) #16
  %3 = ptrtoint ptr %dataref.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %dataref.i, align 4
  %and.i = and i32 %4, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1
  br label %skb_cloned.exit

skb_cloned.exit:                                  ; preds = %land.rhs.i, %entry.skb_cloned.exit_crit_edge
  %5 = phi i1 [ true, %entry.skb_cloned.exit_crit_edge ], [ %cmp.i.not, %land.rhs.i ]
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %8 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %7 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %9 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i, i32 %headroom)
  %tobool.not.i3 = icmp uge i32 %sub.ptr.sub.i.i, %headroom
  %or.cond.i = and i1 %5, %tobool.not.i3
  br i1 %or.cond.i, label %skb_cloned.exit.__skb_cow.exit_crit_edge, label %if.then3.i

skb_cloned.exit.__skb_cow.exit_crit_edge:         ; preds = %skb_cloned.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %__skb_cow.exit

if.then3.i:                                       ; preds = %skb_cloned.exit
  call void @__sanitizer_cov_trace_pc() #18
  %10 = tail call i32 @llvm.usub.sat.i32(i32 %headroom, i32 %sub.ptr.sub.i.i) #16
  %add.i = add i32 %10, 127
  %and.i4 = and i32 %add.i, -128
  %call4.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %and.i4, i32 noundef 0, i32 noundef 2592) #16
  br label %__skb_cow.exit

__skb_cow.exit:                                   ; preds = %if.then3.i, %skb_cloned.exit.__skb_cow.exit_crit_edge
  %retval.0.i = phi i32 [ %call4.i, %if.then3.i ], [ 0, %skb_cloned.exit.__skb_cow.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @mpls_select_multipath(ptr noundef %rt, ptr noundef %skb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %rt_nhn = getelementptr inbounds %struct.mpls_route, ptr %rt, i32 0, i32 5
  %0 = ptrtoint ptr %rt_nhn to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rt_nhn, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %if.then, label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %rt_nh = getelementptr inbounds %struct.mpls_route, ptr %rt, i32 0, i32 10
  br label %cleanup40

do.end:                                           ; preds = %entry
  %rt_nhn_alive = getelementptr inbounds %struct.mpls_route, ptr %rt, i32 0, i32 6
  %2 = ptrtoint ptr %rt_nhn_alive to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load volatile i8, ptr %rt_nhn_alive, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp3 = icmp eq i8 %3, 0
  br i1 %cmp3, label %do.end.cleanup40_crit_edge, label %if.end6

do.end.cleanup40_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup40

if.end6:                                          ; preds = %do.end
  %conv2 = zext i8 %3 to i32
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  br label %for.body.i

for.cond.i:                                       ; preds = %if.end14.i
  %inc.i = add nuw nsw i32 %label_index.0115.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 4
  br i1 %exitcond.not.i, label %for.cond.i.mpls_multipath_hash.exit_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.cond.i.mpls_multipath_hash.exit_crit_edge:    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mpls_multipath_hash.exit

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end6
  %hash.0116.i = phi i32 [ 0, %if.end6 ], [ %hash.1.i, %for.cond.i.for.body.i_crit_edge ]
  %label_index.0115.i = phi i32 [ 0, %if.end6 ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %eli_seen.0.off0114.i = phi i1 [ false, %if.end6 ], [ %eli_seen.1.off0.i, %for.cond.i.for.body.i_crit_edge ]
  %mpls_hdr_len.0113.i = phi i32 [ 0, %if.end6 ], [ %add.i, %for.cond.i.for.body.i_crit_edge ]
  %add.i = add nuw nsw i32 %mpls_hdr_len.0113.i, 4
  %4 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len.i.i.i, align 4
  %6 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i.i = sub i32 %5, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %sub.i.i.i)
  %cmp.not.i.i = icmp ugt i32 %add.i, %sub.i.i.i
  br i1 %cmp.not.i.i, label %if.end.i.i, label %for.body.i.if.end.i_crit_edge, !prof !220

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

if.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %add.i)
  %cmp3.i.i = icmp ult i32 %5, %add.i
  br i1 %cmp3.i.i, label %if.end.i.i.mpls_multipath_hash.exit_crit_edge, label %pskb_may_pull.exit.i, !prof !220

if.end.i.i.mpls_multipath_hash.exit_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mpls_multipath_hash.exit

pskb_may_pull.exit.i:                             ; preds = %if.end.i.i
  %sub.i.i = sub i32 %add.i, %sub.i.i.i
  %call13.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i) #16
  %cmp14.i.not.i = icmp eq ptr %call13.i.i, null
  br i1 %cmp14.i.not.i, label %pskb_may_pull.exit.i.mpls_multipath_hash.exit_crit_edge, label %pskb_may_pull.exit.i.if.end.i_crit_edge

pskb_may_pull.exit.i.if.end.i_crit_edge:          ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

pskb_may_pull.exit.i.mpls_multipath_hash.exit_crit_edge: ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mpls_multipath_hash.exit

if.end.i:                                         ; preds = %pskb_may_pull.exit.i.if.end.i_crit_edge, %for.body.i.if.end.i_crit_edge
  %8 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %head.i.i.i, align 8
  %10 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %11 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 %conv.i.i.i
  %add.ptr.i = getelementptr %struct.mpls_shim_hdr, ptr %add.ptr.i.i.i, i32 %label_index.0115.i
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i, align 4, !noalias !240
  %shr.i.i = lshr i32 %13, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %13)
  %cmp2.i = icmp ugt i32 %13, 65535
  br i1 %cmp2.i, label %if.then4.i, label %if.else.i, !prof !226

if.then4.i:                                       ; preds = %if.end.i
  %add1.i.i = add i32 %hash.0116.i, -559038733
  %add.i.i.i = add i32 %shr.i.i, %add1.i.i
  %or.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add1.i.i, i32 %add1.i.i, i32 14) #16
  %sub.i.i3.i = sub i32 0, %or.i.i.i.i
  %xor3.i.i.i = xor i32 %add.i.i.i, %sub.i.i3.i
  %or.i52.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub.i.i3.i, i32 %sub.i.i3.i, i32 11) #16
  %sub5.i.i.i = sub i32 %xor3.i.i.i, %or.i52.i.i.i
  %xor6.i.i.i = xor i32 %sub5.i.i.i, %add1.i.i
  %or.i53.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub5.i.i.i, i32 %sub5.i.i.i, i32 25) #16
  %sub8.i.i.i = sub i32 %xor6.i.i.i, %or.i53.i.i.i
  %xor9.i.i.i = xor i32 %sub8.i.i.i, %sub.i.i3.i
  %or.i54.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub8.i.i.i, i32 %sub8.i.i.i, i32 16) #16
  %sub11.i.i.i = sub i32 %xor9.i.i.i, %or.i54.i.i.i
  %xor12.i.i.i = xor i32 %sub11.i.i.i, %sub5.i.i.i
  %or.i55.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub11.i.i.i, i32 %sub11.i.i.i, i32 4) #16
  %sub14.i.i.i = sub i32 %xor12.i.i.i, %or.i55.i.i.i
  %xor15.i.i.i = xor i32 %sub14.i.i.i, %sub8.i.i.i
  %or.i56.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub14.i.i.i, i32 %sub14.i.i.i, i32 14) #16
  %sub17.i.i.i = sub i32 %xor15.i.i.i, %or.i56.i.i.i
  %xor18.i.i.i = xor i32 %sub17.i.i.i, %sub11.i.i.i
  %or.i57.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub17.i.i.i, i32 %sub17.i.i.i, i32 24) #16
  %sub20.i.i.i = sub i32 %xor18.i.i.i, %or.i57.i.i.i
  br i1 %eli_seen.0.off0114.i, label %if.then4.i.mpls_multipath_hash.exit_crit_edge, label %if.then4.i.if.end14.i_crit_edge

if.then4.i.if.end14.i_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14.i

if.then4.i.mpls_multipath_hash.exit_crit_edge:    ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mpls_multipath_hash.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %shr.i.i)
  %cmp11.i = icmp eq i32 %shr.i.i, 7
  %spec.select.i = select i1 %cmp11.i, i1 true, i1 %eli_seen.0.off0114.i
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.else.i, %if.then4.i.if.end14.i_crit_edge
  %eli_seen.1.off0.i = phi i1 [ false, %if.then4.i.if.end14.i_crit_edge ], [ %spec.select.i, %if.else.i ]
  %hash.1.i = phi i32 [ %sub20.i.i.i, %if.then4.i.if.end14.i_crit_edge ], [ %hash.0116.i, %if.else.i ]
  %14 = and i32 %13, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool15.not.i = icmp eq i32 %14, 0
  br i1 %tobool15.not.i, label %for.cond.i, label %if.end17.i

if.end17.i:                                       ; preds = %if.end14.i
  %add18.i = add nuw i32 %mpls_hdr_len.0113.i, 24
  %15 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len.i.i.i, align 4
  %17 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i6.i = sub i32 %16, %18
  call void @__sanitizer_cov_trace_cmp4(i32 %add18.i, i32 %sub.i.i6.i)
  %cmp.not.i7.i = icmp ugt i32 %add18.i, %sub.i.i6.i
  br i1 %cmp.not.i7.i, label %if.end.i9.i, label %if.end17.i.if.then20.i_crit_edge, !prof !220

if.end17.i.if.then20.i_crit_edge:                 ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then20.i

if.end.i9.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %add18.i)
  %cmp3.i8.i = icmp ult i32 %16, %add18.i
  br i1 %cmp3.i8.i, label %if.end.i9.i.mpls_multipath_hash.exit_crit_edge, label %pskb_may_pull.exit15.i, !prof !220

if.end.i9.i.mpls_multipath_hash.exit_crit_edge:   ; preds = %if.end.i9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mpls_multipath_hash.exit

pskb_may_pull.exit15.i:                           ; preds = %if.end.i9.i
  %sub.i10.i = sub i32 %add18.i, %sub.i.i6.i
  %call13.i11.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i10.i) #16
  %cmp14.i12.not.i = icmp eq ptr %call13.i11.i, null
  br i1 %cmp14.i12.not.i, label %pskb_may_pull.exit15.i.mpls_multipath_hash.exit_crit_edge, label %pskb_may_pull.exit15.i.if.then20.i_crit_edge

pskb_may_pull.exit15.i.if.then20.i_crit_edge:     ; preds = %pskb_may_pull.exit15.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then20.i

pskb_may_pull.exit15.i.mpls_multipath_hash.exit_crit_edge: ; preds = %pskb_may_pull.exit15.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mpls_multipath_hash.exit

if.then20.i:                                      ; preds = %pskb_may_pull.exit15.i.if.then20.i_crit_edge, %if.end17.i.if.then20.i_crit_edge
  %add.ptr21.i = getelementptr %struct.mpls_shim_hdr, ptr %add.ptr.i, i32 1
  %19 = ptrtoint ptr %add.ptr21.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load.i = load i8, ptr %add.ptr21.i, align 4
  %bf.lshr.i = lshr i8 %bf.load.i, 4
  %trunc.i = trunc i8 %bf.lshr.i to i4
  %20 = zext i4 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.65)
  switch i4 %trunc.i, label %if.then20.i.mpls_multipath_hash.exit_crit_edge [
    i4 4, label %if.then24.i
    i4 6, label %land.lhs.true.i
  ]

if.then20.i.mpls_multipath_hash.exit_crit_edge:   ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mpls_multipath_hash.exit

if.then24.i:                                      ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #18
  %saddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr21.i, i32 0, i32 8
  %21 = ptrtoint ptr %saddr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %saddr.i, align 4
  %daddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr21.i, i32 0, i32 9
  %23 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %daddr.i, align 4
  %protocol.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr21.i, i32 0, i32 6
  %25 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %protocol.i, align 1
  %conv25.i = zext i8 %26 to i32
  %add1.i16.i = add i32 %hash.1.i, -559038725
  %add.i.i17.i = add i32 %22, %add1.i16.i
  %add1.i.i.i = add i32 %24, %add1.i16.i
  %add2.i.i.i = add i32 %add1.i16.i, %conv25.i
  %xor.i.i.i = xor i32 %add2.i.i.i, %add1.i.i.i
  %or.i.i.i18.i = tail call i32 @llvm.fshl.i32(i32 %add1.i.i.i, i32 %add1.i.i.i, i32 14) #16
  %sub.i.i19.i = sub i32 %xor.i.i.i, %or.i.i.i18.i
  %xor3.i.i20.i = xor i32 %sub.i.i19.i, %add.i.i17.i
  %or.i52.i.i21.i = tail call i32 @llvm.fshl.i32(i32 %sub.i.i19.i, i32 %sub.i.i19.i, i32 11) #16
  %sub5.i.i22.i = sub i32 %xor3.i.i20.i, %or.i52.i.i21.i
  %xor6.i.i23.i = xor i32 %sub5.i.i22.i, %add1.i.i.i
  %or.i53.i.i24.i = tail call i32 @llvm.fshl.i32(i32 %sub5.i.i22.i, i32 %sub5.i.i22.i, i32 25) #16
  %sub8.i.i25.i = sub i32 %xor6.i.i23.i, %or.i53.i.i24.i
  %xor9.i.i26.i = xor i32 %sub8.i.i25.i, %sub.i.i19.i
  %or.i54.i.i27.i = tail call i32 @llvm.fshl.i32(i32 %sub8.i.i25.i, i32 %sub8.i.i25.i, i32 16) #16
  %sub11.i.i28.i = sub i32 %xor9.i.i26.i, %or.i54.i.i27.i
  %xor12.i.i29.i = xor i32 %sub11.i.i28.i, %sub5.i.i22.i
  %or.i55.i.i30.i = tail call i32 @llvm.fshl.i32(i32 %sub11.i.i28.i, i32 %sub11.i.i28.i, i32 4) #16
  %sub14.i.i31.i = sub i32 %xor12.i.i29.i, %or.i55.i.i30.i
  %xor15.i.i32.i = xor i32 %sub14.i.i31.i, %sub8.i.i25.i
  %or.i56.i.i33.i = tail call i32 @llvm.fshl.i32(i32 %sub14.i.i31.i, i32 %sub14.i.i31.i, i32 14) #16
  %sub17.i.i34.i = sub i32 %xor15.i.i32.i, %or.i56.i.i33.i
  %xor18.i.i35.i = xor i32 %sub17.i.i34.i, %sub11.i.i28.i
  %or.i57.i.i36.i = tail call i32 @llvm.fshl.i32(i32 %sub17.i.i34.i, i32 %sub17.i.i34.i, i32 24) #16
  %sub20.i.i37.i = sub i32 %xor18.i.i35.i, %or.i57.i.i36.i
  br label %mpls_multipath_hash.exit

land.lhs.true.i:                                  ; preds = %if.then20.i
  %add33.i = add nuw i32 %mpls_hdr_len.0113.i, 44
  %27 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len.i.i.i, align 4
  %29 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i40.i = sub i32 %28, %30
  call void @__sanitizer_cov_trace_cmp4(i32 %add33.i, i32 %sub.i.i40.i)
  %cmp.not.i41.i = icmp ugt i32 %add33.i, %sub.i.i40.i
  br i1 %cmp.not.i41.i, label %if.end.i43.i, label %land.lhs.true.i.if.then36.i_crit_edge, !prof !220

land.lhs.true.i.if.then36.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then36.i

if.end.i43.i:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %add33.i)
  %cmp3.i42.i = icmp ult i32 %28, %add33.i
  br i1 %cmp3.i42.i, label %if.end.i43.i.mpls_multipath_hash.exit_crit_edge, label %pskb_may_pull.exit49.i, !prof !220

if.end.i43.i.mpls_multipath_hash.exit_crit_edge:  ; preds = %if.end.i43.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mpls_multipath_hash.exit

pskb_may_pull.exit49.i:                           ; preds = %if.end.i43.i
  %sub.i44.i = sub i32 %add33.i, %sub.i.i40.i
  %call13.i45.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i44.i) #16
  %cmp14.i46.not.i = icmp eq ptr %call13.i45.i, null
  br i1 %cmp14.i46.not.i, label %pskb_may_pull.exit49.i.mpls_multipath_hash.exit_crit_edge, label %pskb_may_pull.exit49.i.if.then36.i_crit_edge

pskb_may_pull.exit49.i.if.then36.i_crit_edge:     ; preds = %pskb_may_pull.exit49.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then36.i

pskb_may_pull.exit49.i.mpls_multipath_hash.exit_crit_edge: ; preds = %pskb_may_pull.exit49.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mpls_multipath_hash.exit

if.then36.i:                                      ; preds = %pskb_may_pull.exit49.i.if.then36.i_crit_edge, %land.lhs.true.i.if.then36.i_crit_edge
  %saddr38.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr21.i, i32 0, i32 5
  %31 = ptrtoint ptr %saddr38.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %saddr38.i, align 4
  %arrayidx2.i.i = getelementptr [4 x i32], ptr %saddr38.i, i32 0, i32 1
  %33 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx2.i.i, align 4
  %xor.i.i = xor i32 %34, %32
  %arrayidx4.i.i = getelementptr [4 x i32], ptr %saddr38.i, i32 0, i32 2
  %35 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx4.i.i, align 4
  %arrayidx6.i.i = getelementptr [4 x i32], ptr %saddr38.i, i32 0, i32 3
  %37 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx6.i.i, align 4
  %add1.i.i50.i = add i32 %hash.1.i, -559038725
  %add.i.i.i.i = add i32 %xor.i.i, %add1.i.i50.i
  %add1.i.i.i.i = add i32 %36, %add1.i.i50.i
  %add2.i.i.i.i = add i32 %38, %add1.i.i50.i
  %xor.i.i.i.i = xor i32 %add2.i.i.i.i, %add1.i.i.i.i
  %or.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add1.i.i.i.i, i32 %add1.i.i.i.i, i32 14) #16
  %sub.i.i.i.i = sub i32 %xor.i.i.i.i, %or.i.i.i.i.i
  %xor3.i.i.i.i = xor i32 %sub.i.i.i.i, %add.i.i.i.i
  %or.i52.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub.i.i.i.i, i32 %sub.i.i.i.i, i32 11) #16
  %sub5.i.i.i.i = sub i32 %xor3.i.i.i.i, %or.i52.i.i.i.i
  %xor6.i.i.i.i = xor i32 %sub5.i.i.i.i, %add1.i.i.i.i
  %or.i53.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub5.i.i.i.i, i32 %sub5.i.i.i.i, i32 25) #16
  %sub8.i.i.i.i = sub i32 %xor6.i.i.i.i, %or.i53.i.i.i.i
  %xor9.i.i.i.i = xor i32 %sub8.i.i.i.i, %sub.i.i.i.i
  %or.i54.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub8.i.i.i.i, i32 %sub8.i.i.i.i, i32 16) #16
  %sub11.i.i.i.i = sub i32 %xor9.i.i.i.i, %or.i54.i.i.i.i
  %xor12.i.i.i.i = xor i32 %sub11.i.i.i.i, %sub5.i.i.i.i
  %or.i55.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub11.i.i.i.i, i32 %sub11.i.i.i.i, i32 4) #16
  %sub14.i.i.i.i = sub i32 %xor12.i.i.i.i, %or.i55.i.i.i.i
  %xor15.i.i.i.i = xor i32 %sub14.i.i.i.i, %sub8.i.i.i.i
  %or.i56.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub14.i.i.i.i, i32 %sub14.i.i.i.i, i32 14) #16
  %sub17.i.i.i.i = sub i32 %xor15.i.i.i.i, %or.i56.i.i.i.i
  %xor18.i.i.i.i = xor i32 %sub17.i.i.i.i, %sub11.i.i.i.i
  %or.i57.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub17.i.i.i.i, i32 %sub17.i.i.i.i, i32 24) #16
  %sub20.i.i.i.i = sub i32 %xor18.i.i.i.i, %or.i57.i.i.i.i
  %daddr40.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr21.i, i32 0, i32 6
  %39 = ptrtoint ptr %daddr40.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %daddr40.i, align 4
  %arrayidx2.i51.i = getelementptr [4 x i32], ptr %daddr40.i, i32 0, i32 1
  %41 = ptrtoint ptr %arrayidx2.i51.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx2.i51.i, align 4
  %xor.i52.i = xor i32 %42, %40
  %arrayidx4.i53.i = getelementptr [4 x i32], ptr %daddr40.i, i32 0, i32 2
  %43 = ptrtoint ptr %arrayidx4.i53.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx4.i53.i, align 4
  %arrayidx6.i54.i = getelementptr [4 x i32], ptr %daddr40.i, i32 0, i32 3
  %45 = ptrtoint ptr %arrayidx6.i54.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx6.i54.i, align 4
  %add1.i.i55.i = add i32 %sub20.i.i.i.i, -559038725
  %add.i.i.i56.i = add i32 %add1.i.i55.i, %xor.i52.i
  %add1.i.i.i57.i = add i32 %add1.i.i55.i, %44
  %add2.i.i.i58.i = add i32 %add1.i.i55.i, %46
  %xor.i.i.i59.i = xor i32 %add2.i.i.i58.i, %add1.i.i.i57.i
  %or.i.i.i.i60.i = tail call i32 @llvm.fshl.i32(i32 %add1.i.i.i57.i, i32 %add1.i.i.i57.i, i32 14) #16
  %sub.i.i.i61.i = sub i32 %xor.i.i.i59.i, %or.i.i.i.i60.i
  %xor3.i.i.i62.i = xor i32 %sub.i.i.i61.i, %add.i.i.i56.i
  %or.i52.i.i.i63.i = tail call i32 @llvm.fshl.i32(i32 %sub.i.i.i61.i, i32 %sub.i.i.i61.i, i32 11) #16
  %sub5.i.i.i64.i = sub i32 %xor3.i.i.i62.i, %or.i52.i.i.i63.i
  %xor6.i.i.i65.i = xor i32 %sub5.i.i.i64.i, %add1.i.i.i57.i
  %or.i53.i.i.i66.i = tail call i32 @llvm.fshl.i32(i32 %sub5.i.i.i64.i, i32 %sub5.i.i.i64.i, i32 25) #16
  %sub8.i.i.i67.i = sub i32 %xor6.i.i.i65.i, %or.i53.i.i.i66.i
  %xor9.i.i.i68.i = xor i32 %sub8.i.i.i67.i, %sub.i.i.i61.i
  %or.i54.i.i.i69.i = tail call i32 @llvm.fshl.i32(i32 %sub8.i.i.i67.i, i32 %sub8.i.i.i67.i, i32 16) #16
  %sub11.i.i.i70.i = sub i32 %xor9.i.i.i68.i, %or.i54.i.i.i69.i
  %xor12.i.i.i71.i = xor i32 %sub11.i.i.i70.i, %sub5.i.i.i64.i
  %or.i55.i.i.i72.i = tail call i32 @llvm.fshl.i32(i32 %sub11.i.i.i70.i, i32 %sub11.i.i.i70.i, i32 4) #16
  %sub14.i.i.i73.i = sub i32 %xor12.i.i.i71.i, %or.i55.i.i.i72.i
  %xor15.i.i.i74.i = xor i32 %sub14.i.i.i73.i, %sub8.i.i.i67.i
  %or.i56.i.i.i75.i = tail call i32 @llvm.fshl.i32(i32 %sub14.i.i.i73.i, i32 %sub14.i.i.i73.i, i32 14) #16
  %sub17.i.i.i76.i = sub i32 %xor15.i.i.i74.i, %or.i56.i.i.i75.i
  %xor18.i.i.i77.i = xor i32 %sub17.i.i.i76.i, %sub11.i.i.i70.i
  %or.i57.i.i.i78.i = tail call i32 @llvm.fshl.i32(i32 %sub17.i.i.i76.i, i32 %sub17.i.i.i76.i, i32 24) #16
  %sub20.i.i.i79.i = sub i32 %xor18.i.i.i77.i, %or.i57.i.i.i78.i
  %nexthdr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr21.i, i32 0, i32 3
  %47 = ptrtoint ptr %nexthdr.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %nexthdr.i, align 2
  %conv42.i = zext i8 %48 to i32
  %add1.i80.i = add i32 %sub20.i.i.i79.i, -559038733
  %add.i.i81.i = add i32 %add1.i80.i, %conv42.i
  %or.i.i.i82.i = tail call i32 @llvm.fshl.i32(i32 %add1.i80.i, i32 %add1.i80.i, i32 14) #16
  %sub.i.i83.i = sub i32 0, %or.i.i.i82.i
  %xor3.i.i84.i = xor i32 %add.i.i81.i, %sub.i.i83.i
  %or.i52.i.i85.i = tail call i32 @llvm.fshl.i32(i32 %sub.i.i83.i, i32 %sub.i.i83.i, i32 11) #16
  %sub5.i.i86.i = sub i32 %xor3.i.i84.i, %or.i52.i.i85.i
  %xor6.i.i87.i = xor i32 %sub5.i.i86.i, %add1.i80.i
  %or.i53.i.i88.i = tail call i32 @llvm.fshl.i32(i32 %sub5.i.i86.i, i32 %sub5.i.i86.i, i32 25) #16
  %sub8.i.i89.i = sub i32 %xor6.i.i87.i, %or.i53.i.i88.i
  %xor9.i.i90.i = xor i32 %sub8.i.i89.i, %sub.i.i83.i
  %or.i54.i.i91.i = tail call i32 @llvm.fshl.i32(i32 %sub8.i.i89.i, i32 %sub8.i.i89.i, i32 16) #16
  %sub11.i.i92.i = sub i32 %xor9.i.i90.i, %or.i54.i.i91.i
  %xor12.i.i93.i = xor i32 %sub11.i.i92.i, %sub5.i.i86.i
  %or.i55.i.i94.i = tail call i32 @llvm.fshl.i32(i32 %sub11.i.i92.i, i32 %sub11.i.i92.i, i32 4) #16
  %sub14.i.i95.i = sub i32 %xor12.i.i93.i, %or.i55.i.i94.i
  %xor15.i.i96.i = xor i32 %sub14.i.i95.i, %sub8.i.i89.i
  %or.i56.i.i97.i = tail call i32 @llvm.fshl.i32(i32 %sub14.i.i95.i, i32 %sub14.i.i95.i, i32 14) #16
  %sub17.i.i98.i = sub i32 %xor15.i.i96.i, %or.i56.i.i97.i
  %xor18.i.i99.i = xor i32 %sub17.i.i98.i, %sub11.i.i92.i
  %or.i57.i.i100.i = tail call i32 @llvm.fshl.i32(i32 %sub17.i.i98.i, i32 %sub17.i.i98.i, i32 24) #16
  %sub20.i.i101.i = sub i32 %xor18.i.i99.i, %or.i57.i.i100.i
  br label %mpls_multipath_hash.exit

mpls_multipath_hash.exit:                         ; preds = %if.then36.i, %pskb_may_pull.exit49.i.mpls_multipath_hash.exit_crit_edge, %if.end.i43.i.mpls_multipath_hash.exit_crit_edge, %if.then24.i, %if.then20.i.mpls_multipath_hash.exit_crit_edge, %pskb_may_pull.exit15.i.mpls_multipath_hash.exit_crit_edge, %if.end.i9.i.mpls_multipath_hash.exit_crit_edge, %if.then4.i.mpls_multipath_hash.exit_crit_edge, %pskb_may_pull.exit.i.mpls_multipath_hash.exit_crit_edge, %if.end.i.i.mpls_multipath_hash.exit_crit_edge, %for.cond.i.mpls_multipath_hash.exit_crit_edge
  %hash.3.i = phi i32 [ %hash.1.i, %pskb_may_pull.exit15.i.mpls_multipath_hash.exit_crit_edge ], [ %sub20.i.i37.i, %if.then24.i ], [ %sub20.i.i101.i, %if.then36.i ], [ %hash.1.i, %pskb_may_pull.exit49.i.mpls_multipath_hash.exit_crit_edge ], [ %hash.1.i, %if.then20.i.mpls_multipath_hash.exit_crit_edge ], [ %hash.1.i, %if.end.i9.i.mpls_multipath_hash.exit_crit_edge ], [ %hash.1.i, %if.end.i43.i.mpls_multipath_hash.exit_crit_edge ], [ %sub20.i.i.i, %if.then4.i.mpls_multipath_hash.exit_crit_edge ], [ %hash.0116.i, %pskb_may_pull.exit.i.mpls_multipath_hash.exit_crit_edge ], [ %hash.1.i, %for.cond.i.mpls_multipath_hash.exit_crit_edge ], [ %hash.0116.i, %if.end.i.i.mpls_multipath_hash.exit_crit_edge ]
  %rem = urem i32 %hash.3.i, %conv2
  %49 = ptrtoint ptr %rt_nhn to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %rt_nhn, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %50)
  %cmp11 = icmp eq i8 %3, %50
  br i1 %cmp11, label %mpls_multipath_hash.exit.out_crit_edge, label %if.end14

mpls_multipath_hash.exit.out_crit_edge:           ; preds = %mpls_multipath_hash.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end14:                                         ; preds = %mpls_multipath_hash.exit
  %conv18 = zext i8 %50 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %cmp1971.not = icmp eq i8 %50, 0
  br i1 %cmp1971.not, label %if.end14.out_crit_edge, label %for.body.lr.ph

if.end14.out_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

for.body.lr.ph:                                   ; preds = %if.end14
  %rt_nh15 = getelementptr inbounds %struct.mpls_route, ptr %rt, i32 0, i32 10
  %rt_nh_size = getelementptr inbounds %struct.mpls_route, ptr %rt, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %nh.074 = phi ptr [ %rt_nh15, %for.body.lr.ph ], [ %add.ptr, %for.inc.for.body_crit_edge ]
  %nhsel.073 = phi i32 [ 0, %for.body.lr.ph ], [ %inc33, %for.inc.for.body_crit_edge ]
  %n.072 = phi i32 [ 0, %for.body.lr.ph ], [ %n.1.ph, %for.inc.for.body_crit_edge ]
  %nh_flags25 = getelementptr inbounds %struct.mpls_nh, ptr %nh.074, i32 0, i32 1
  %51 = ptrtoint ptr %nh_flags25 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %nh_flags25, align 4
  %and = and i32 %52, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end27, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end27:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %n.072, i32 %rem)
  %cmp28 = icmp eq i32 %n.072, %rem
  br i1 %cmp28, label %if.end27.cleanup40_crit_edge, label %if.end31

if.end27.cleanup40_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup40

if.end31:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #18
  %inc = add i32 %n.072, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end31, %for.body.for.inc_crit_edge
  %n.1.ph = phi i32 [ %n.072, %for.body.for.inc_crit_edge ], [ %inc, %if.end31 ]
  %53 = ptrtoint ptr %rt_nh_size to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %rt_nh_size, align 2
  %conv32 = zext i8 %54 to i32
  %add.ptr = getelementptr i8, ptr %nh.074, i32 %conv32
  %inc33 = add nuw nsw i32 %nhsel.073, 1
  %exitcond.not = icmp eq i32 %inc33, %conv18
  br i1 %exitcond.not, label %for.inc.out_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

out:                                              ; preds = %for.inc.out_crit_edge, %if.end14.out_crit_edge, %mpls_multipath_hash.exit.out_crit_edge
  %rt_nh.i = getelementptr inbounds %struct.mpls_route, ptr %rt, i32 0, i32 10
  %rt_nh_size.i = getelementptr inbounds %struct.mpls_route, ptr %rt, i32 0, i32 7
  %55 = ptrtoint ptr %rt_nh_size.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %rt_nh_size.i, align 2
  %conv1.i = zext i8 %56 to i32
  %mul.i = mul nuw nsw i32 %rem, %conv1.i
  %add.ptr.i60 = getelementptr i8, ptr %rt_nh.i, i32 %mul.i
  br label %cleanup40

cleanup40:                                        ; preds = %out, %if.end27.cleanup40_crit_edge, %do.end.cleanup40_crit_edge, %if.then
  %retval.3 = phi ptr [ %rt_nh, %if.then ], [ %add.ptr.i60, %out ], [ null, %do.end.cleanup40_crit_edge ], [ %nh.074, %if.end27.cleanup40_crit_edge ]
  ret ptr %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @netlink_strict_get_check(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nlmsg_parse_deprecated_strict(ptr noundef %nlh, i32 noundef %hdrlen, ptr noundef %tb, i32 noundef %maxtype, ptr noundef %policy, ptr noundef %extack) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %0 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nlh, align 4
  %add.i.i = add i32 %hdrlen, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %add.i.i)
  %cmp.i = icmp ult i32 %1, %add.i.i
  br i1 %cmp.i, label %do.body.i, label %if.end2.i

do.body.i:                                        ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nlmsg_parse.__msg) #16
  %tobool.not.i = icmp eq ptr %extack, null
  br i1 %tobool.not.i, label %do.body.i.__nlmsg_parse.exit_crit_edge, label %if.then1.i

do.body.i.__nlmsg_parse.exit_crit_edge:           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__nlmsg_parse.exit

if.then1.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %2 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @__nlmsg_parse.__msg, ptr %extack, align 4
  br label %__nlmsg_parse.exit

if.end2.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i.i.i = getelementptr i8, ptr %nlh, i32 16
  %sub.i.i = add i32 %hdrlen, 3
  %and.i.i = and i32 %sub.i.i, -4
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %and.i.i
  %sub.i.i.i = sub i32 -16, %and.i.i
  %sub1.i.i = add i32 %sub.i.i.i, %1
  %call5.i = tail call i32 @__nla_parse(ptr noundef %tb, i32 noundef %maxtype, ptr noundef %add.ptr.i.i, i32 noundef %sub1.i.i, ptr noundef %policy, i32 noundef 3, ptr noundef %extack) #16
  br label %__nlmsg_parse.exit

__nlmsg_parse.exit:                               ; preds = %if.end2.i, %if.then1.i, %do.body.i.__nlmsg_parse.exit_crit_edge
  %retval.0.i = phi i32 [ %call5.i, %if.end2.i ], [ -22, %if.then1.i ], [ -22, %do.body.i.__nlmsg_parse.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_valid_fib_dump_req(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mpls_netconf_fill_devconf(ptr noundef %skb, ptr nocapture noundef readonly %mdev, i32 noundef %portid, i32 noundef %seq, i32 noundef %event, i32 noundef %flags, i32 noundef %type) unnamed_addr #2 align 64 {
entry:
  %tmp.i25 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %0 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.i.not.i.i = icmp eq i32 %1, 0
  br i1 %tobool.i.not.i.i, label %skb_tailroom.exit.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

skb_tailroom.exit.i:                              ; preds = %entry
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %2 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %end.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.ptr.sub.i.i)
  %cmp.i = icmp slt i32 %sub.ptr.sub.i.i, 20
  br i1 %cmp.i, label %skb_tailroom.exit.i.cleanup_crit_edge, label %nlmsg_put.exit, !prof !220

skb_tailroom.exit.i.cleanup_crit_edge:            ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

nlmsg_put.exit:                                   ; preds = %skb_tailroom.exit.i
  %call3.i = tail call ptr @__nlmsg_put(ptr noundef %skb, i32 noundef %portid, i32 noundef %seq, i32 noundef %event, i32 noundef 1, i32 noundef %flags) #16
  %tobool.not = icmp eq ptr %call3.i, null
  br i1 %tobool.not, label %nlmsg_put.exit.cleanup_crit_edge, label %if.end

nlmsg_put.exit.cleanup_crit_edge:                 ; preds = %nlmsg_put.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %nlmsg_put.exit
  %add.ptr.i = getelementptr i8, ptr %call3.i, i32 16
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 28, ptr %add.ptr.i, align 1
  %dev = getelementptr inbounds %struct.mpls_dev, ptr %mdev, i32 0, i32 1
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %ifindex = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 17
  %9 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ifindex, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #16
  %11 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp5 = icmp slt i32 %call.i, 0
  br i1 %cmp5, label %if.end.if.then.i.i_crit_edge, label %if.end7

if.end.if.then.i.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i

if.end7:                                          ; preds = %if.end
  %12 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %type, label %if.end7.if.end13_crit_edge [
    i32 -1, label %if.end7.land.lhs.true_crit_edge
    i32 7, label %if.end7.land.lhs.true_crit_edge36
  ]

if.end7.land.lhs.true_crit_edge36:                ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true

if.end7.land.lhs.true_crit_edge:                  ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end7.land.lhs.true_crit_edge, %if.end7.land.lhs.true_crit_edge36
  %13 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mdev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i25) #16
  %15 = ptrtoint ptr %tmp.i25 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %tmp.i25, align 4
  %call.i26 = call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef 4, ptr noundef nonnull %tmp.i25) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i25) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26)
  %cmp11 = icmp slt i32 %call.i26, 0
  br i1 %cmp11, label %land.lhs.true.if.then.i.i_crit_edge, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13

land.lhs.true.if.then.i.i_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i

if.end13:                                         ; preds = %land.lhs.true.if.end13_crit_edge, %if.end7.if.end13_crit_edge
  %16 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %17 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %call3.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %18 = ptrtoint ptr %call3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %sub.ptr.sub.i, ptr %call3.i, align 4
  br label %cleanup

if.then.i.i:                                      ; preds = %land.lhs.true.if.then.i.i_crit_edge, %if.end.if.then.i.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %19 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp ugt ptr %20, %call3.i
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.nlmsg_cancel.exit_crit_edge, !prof !220

if.then.i.i.nlmsg_cancel.exit_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nlmsg_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 991, i32 noundef 9, ptr noundef null) #16
  br label %nlmsg_cancel.exit

nlmsg_cancel.exit:                                ; preds = %do.end.i.i, %if.then.i.i.nlmsg_cancel.exit_crit_edge
  %21 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i28 = ptrtoint ptr %call3.i to i32
  %sub.ptr.rhs.cast.i.i29 = ptrtoint ptr %22 to i32
  %sub.ptr.sub.i.i30 = sub i32 %sub.ptr.lhs.cast.i.i28, %sub.ptr.rhs.cast.i.i29
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i30) #16
  br label %cleanup

cleanup:                                          ; preds = %nlmsg_cancel.exit, %if.end13, %nlmsg_put.exit.cleanup_crit_edge, %skb_tailroom.exit.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %nlmsg_cancel.exit ], [ 0, %if.end13 ], [ -90, %nlmsg_put.exit.cleanup_crit_edge ], [ -90, %skb_tailroom.exit.i.cleanup_crit_edge ], [ -90, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_tunnel_encap_add_ops(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ipgre_mpls_encap_hlen(ptr nocapture noundef readnone %e) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mpls_fill_stats_af(ptr noundef %skb, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %mpls_ptr.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 84
  %0 = ptrtoint ptr %mpls_ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %mpls_ptr.i, align 8
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #16
  br i1 %call.i, label %entry.mpls_dev_get.exit_crit_edge, label %lor.lhs.false.i

entry.mpls_dev_get.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %mpls_dev_get.exit

lor.lhs.false.i:                                  ; preds = %entry
  %call2.i = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.mpls_dev_get.exit_crit_edge

lor.lhs.false.i.mpls_dev_get.exit_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mpls_dev_get.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.mpls_dev_get.exit_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.mpls_dev_get.exit_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mpls_dev_get.exit

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b10.i = load i1, ptr @mpls_dev_get.__warned, align 1
  br i1 %.b10.i, label %land.lhs.true5.i.mpls_dev_get.exit_crit_edge, label %if.then.i

land.lhs.true5.i.mpls_dev_get.exit_crit_edge:     ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mpls_dev_get.exit

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @mpls_dev_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 189, ptr noundef nonnull @.str.7) #16
  br label %mpls_dev_get.exit

mpls_dev_get.exit:                                ; preds = %if.then.i, %land.lhs.true5.i.mpls_dev_get.exit_crit_edge, %land.lhs.true.i.mpls_dev_get.exit_crit_edge, %lor.lhs.false.i.mpls_dev_get.exit_crit_edge, %entry.mpls_dev_get.exit_crit_edge
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %mpls_dev_get.exit.cleanup_crit_edge, label %if.end

mpls_dev_get.exit.cleanup_crit_edge:              ; preds = %mpls_dev_get.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %mpls_dev_get.exit
  %call1 = tail call ptr @nla_reserve_64bit(ptr noundef %skb, i32 noundef 1, i32 noundef 72, i32 noundef 0) #16
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %add.ptr.i = getelementptr i8, ptr %call1, i32 4
  %2 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 72)
  %call41.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %3 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call41.i, i32 %3)
  %cmp42.i = icmp ult i32 %call41.i, %3
  br i1 %cmp42.i, label %for.body.lr.ph.i, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.end4
  %stats1.i = getelementptr inbounds %struct.mpls_dev, ptr %1, i32 0, i32 2
  %rx_bytes12.i = getelementptr i8, ptr %call1, i32 20
  %tx_packets14.i = getelementptr i8, ptr %call1, i32 12
  %tx_bytes16.i = getelementptr i8, ptr %call1, i32 28
  %rx_errors18.i = getelementptr i8, ptr %call1, i32 36
  %tx_errors20.i = getelementptr i8, ptr %call1, i32 44
  %rx_dropped22.i = getelementptr i8, ptr %call1, i32 52
  %tx_dropped24.i = getelementptr i8, ptr %call1, i32 60
  %rx_noroute26.i = getelementptr i8, ptr %call1, i32 68
  br label %for.body.i

for.body.i:                                       ; preds = %do.end9.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %call43.i = phi i32 [ %call41.i, %for.body.lr.ph.i ], [ %call.i10, %do.end9.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %stats1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stats1.i, align 4
  %6 = ptrtoint ptr %5 to i32
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call43.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %8, %6
  %9 = inttoptr i32 %add.i to ptr
  %syncp.i = getelementptr inbounds %struct.mpls_pcpu_stats, ptr %9, i32 0, i32 1
  %dep_map.c48.i.i.i.i = getelementptr inbounds %struct.mpls_pcpu_stats, ptr %9, i32 0, i32 1, i32 0, i32 1
  %local.sroa.5.0.stats5.sroa_idx.i = getelementptr inbounds i8, ptr %9, i32 8
  %local.sroa.6.0.stats5.sroa_idx.i = getelementptr inbounds i8, ptr %9, i32 16
  %local.sroa.7.0.stats5.sroa_idx.i = getelementptr inbounds i8, ptr %9, i32 24
  %local.sroa.8.0.stats5.sroa_idx.i = getelementptr inbounds i8, ptr %9, i32 32
  %local.sroa.9.0.stats5.sroa_idx.i = getelementptr inbounds i8, ptr %9, i32 40
  %local.sroa.10.0.stats5.sroa_idx.i = getelementptr inbounds i8, ptr %9, i32 48
  %local.sroa.11.0.stats5.sroa_idx.i = getelementptr inbounds i8, ptr %9, i32 56
  %local.sroa.12.0.stats5.sroa_idx.i = getelementptr inbounds i8, ptr %9, i32 64
  br label %do.body3.i

do.body3.i:                                       ; preds = %u64_stats_fetch_begin.exit.i.do.body3.i_crit_edge, %for.body.i
  %10 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !218
  %and.i.i.i.i.i = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.i.i, label %do.body24.critedge.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @trace_hardirqs_off() #16
  %11 = tail call ptr @llvm.returnaddress(i32 0) #16
  %12 = ptrtoint ptr %11 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %12) #16
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i.i.i, i32 noundef %12) #16
  tail call void @trace_hardirqs_on() #16
  br label %do.body24.i.i.i.i

do.body24.critedge.i.i.i.i:                       ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #18
  %13 = tail call ptr @llvm.returnaddress(i32 0) #16
  %14 = ptrtoint ptr %13 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %14) #16
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i.i.i, i32 noundef %14) #16
  br label %do.body24.i.i.i.i

do.body24.i.i.i.i:                                ; preds = %do.body24.critedge.i.i.i.i, %if.then.i.i.i.i
  %15 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !219
  %and.i.i.i.i.i.i = and i32 %15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool32.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool32.not.i.i.i.i, label %if.then36.i.i.i.i, label %do.body24.i.i.i.i.seqcount_lockdep_reader_access.exit.i.i.i_crit_edge, !prof !220

do.body24.i.i.i.i.seqcount_lockdep_reader_access.exit.i.i.i_crit_edge: ; preds = %do.body24.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %seqcount_lockdep_reader_access.exit.i.i.i

if.then36.i.i.i.i:                                ; preds = %do.body24.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @warn_bogus_irq_restore() #16
  br label %seqcount_lockdep_reader_access.exit.i.i.i

seqcount_lockdep_reader_access.exit.i.i.i:        ; preds = %if.then36.i.i.i.i, %do.body24.i.i.i.i.seqcount_lockdep_reader_access.exit.i.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %10) #16, !srcloc !221
  %16 = ptrtoint ptr %syncp.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %syncp.i, align 4
  %and18.i.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i.i.i)
  %tobool.not19.i.i.i = icmp eq i32 %and18.i.i.i, 0
  br i1 %tobool.not19.i.i.i, label %seqcount_lockdep_reader_access.exit.i.i.i.u64_stats_fetch_begin.exit.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.i.i.do.end.i.i.i_crit_edge

seqcount_lockdep_reader_access.exit.i.i.i.do.end.i.i.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i.i
  br label %do.end.i.i.i

seqcount_lockdep_reader_access.exit.i.i.i.u64_stats_fetch_begin.exit.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %u64_stats_fetch_begin.exit.i

do.end.i.i.i:                                     ; preds = %do.end.i.i.i.do.end.i.i.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.i.do.end.i.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !243
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #16, !srcloc !244
  %18 = ptrtoint ptr %syncp.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %syncp.i, align 4
  %and.i.i.i = and i32 %19, 1
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.end.i.i.i.u64_stats_fetch_begin.exit.i_crit_edge, label %do.end.i.i.i.do.end.i.i.i_crit_edge

do.end.i.i.i.do.end.i.i.i_crit_edge:              ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i.i.i

do.end.i.i.i.u64_stats_fetch_begin.exit.i_crit_edge: ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %u64_stats_fetch_begin.exit.i

u64_stats_fetch_begin.exit.i:                     ; preds = %do.end.i.i.i.u64_stats_fetch_begin.exit.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.i.u64_stats_fetch_begin.exit.i_crit_edge
  %.lcssa.i.i.i = phi i32 [ %17, %seqcount_lockdep_reader_access.exit.i.i.i.u64_stats_fetch_begin.exit.i_crit_edge ], [ %19, %do.end.i.i.i.u64_stats_fetch_begin.exit.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !245
  %20 = ptrtoint ptr %9 to i32
  call void @__asan_load8_noabort(i32 %20)
  %local.sroa.0.0.copyload.i = load i64, ptr %9, align 8
  %21 = ptrtoint ptr %local.sroa.5.0.stats5.sroa_idx.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %local.sroa.5.0.copyload.i = load i64, ptr %local.sroa.5.0.stats5.sroa_idx.i, align 8
  %22 = ptrtoint ptr %local.sroa.6.0.stats5.sroa_idx.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %local.sroa.6.0.copyload.i = load i64, ptr %local.sroa.6.0.stats5.sroa_idx.i, align 8
  %23 = ptrtoint ptr %local.sroa.7.0.stats5.sroa_idx.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %local.sroa.7.0.copyload.i = load i64, ptr %local.sroa.7.0.stats5.sroa_idx.i, align 8
  %24 = ptrtoint ptr %local.sroa.8.0.stats5.sroa_idx.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %local.sroa.8.0.copyload.i = load i64, ptr %local.sroa.8.0.stats5.sroa_idx.i, align 8
  %25 = ptrtoint ptr %local.sroa.9.0.stats5.sroa_idx.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %local.sroa.9.0.copyload.i = load i64, ptr %local.sroa.9.0.stats5.sroa_idx.i, align 8
  %26 = ptrtoint ptr %local.sroa.10.0.stats5.sroa_idx.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %local.sroa.10.0.copyload.i = load i64, ptr %local.sroa.10.0.stats5.sroa_idx.i, align 8
  %27 = ptrtoint ptr %local.sroa.11.0.stats5.sroa_idx.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %local.sroa.11.0.copyload.i = load i64, ptr %local.sroa.11.0.stats5.sroa_idx.i, align 8
  %28 = ptrtoint ptr %local.sroa.12.0.stats5.sroa_idx.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %local.sroa.12.0.copyload.i = load i64, ptr %local.sroa.12.0.stats5.sroa_idx.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !246
  %29 = ptrtoint ptr %syncp.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %syncp.i, align 4
  %cmp.i.i.i.i.not.i = icmp eq i32 %30, %.lcssa.i.i.i
  br i1 %cmp.i.i.i.i.not.i, label %do.end9.i, label %u64_stats_fetch_begin.exit.i.do.body3.i_crit_edge

u64_stats_fetch_begin.exit.i.do.body3.i_crit_edge: ; preds = %u64_stats_fetch_begin.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body3.i

do.end9.i:                                        ; preds = %u64_stats_fetch_begin.exit.i
  %31 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %add.ptr.i, align 8
  %add11.i = add i64 %32, %local.sroa.0.0.copyload.i
  store i64 %add11.i, ptr %add.ptr.i, align 8
  %33 = ptrtoint ptr %rx_bytes12.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %rx_bytes12.i, align 8
  %add13.i = add i64 %34, %local.sroa.6.0.copyload.i
  store i64 %add13.i, ptr %rx_bytes12.i, align 8
  %35 = ptrtoint ptr %tx_packets14.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %tx_packets14.i, align 8
  %add15.i = add i64 %36, %local.sroa.5.0.copyload.i
  store i64 %add15.i, ptr %tx_packets14.i, align 8
  %37 = ptrtoint ptr %tx_bytes16.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %tx_bytes16.i, align 8
  %add17.i = add i64 %38, %local.sroa.7.0.copyload.i
  store i64 %add17.i, ptr %tx_bytes16.i, align 8
  %39 = ptrtoint ptr %rx_errors18.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %rx_errors18.i, align 8
  %add19.i = add i64 %40, %local.sroa.8.0.copyload.i
  store i64 %add19.i, ptr %rx_errors18.i, align 8
  %41 = ptrtoint ptr %tx_errors20.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %tx_errors20.i, align 8
  %add21.i = add i64 %42, %local.sroa.9.0.copyload.i
  store i64 %add21.i, ptr %tx_errors20.i, align 8
  %43 = ptrtoint ptr %rx_dropped22.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %rx_dropped22.i, align 8
  %add23.i = add i64 %44, %local.sroa.10.0.copyload.i
  store i64 %add23.i, ptr %rx_dropped22.i, align 8
  %45 = ptrtoint ptr %tx_dropped24.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %tx_dropped24.i, align 8
  %add25.i = add i64 %46, %local.sroa.11.0.copyload.i
  store i64 %add25.i, ptr %tx_dropped24.i, align 8
  %47 = ptrtoint ptr %rx_noroute26.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %rx_noroute26.i, align 8
  %add27.i = add i64 %48, %local.sroa.12.0.copyload.i
  store i64 %add27.i, ptr %rx_noroute26.i, align 8
  %call.i10 = tail call i32 @cpumask_next(i32 noundef %call43.i, ptr noundef nonnull @__cpu_possible_mask) #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %49 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i = icmp ult i32 %call.i10, %49
  br i1 %cmp.i, label %do.end9.i.for.body.i_crit_edge, label %do.end9.i.cleanup_crit_edge

do.end9.i.cleanup_crit_edge:                      ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end9.i.for.body.i_crit_edge:                   ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

cleanup:                                          ; preds = %do.end9.i.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %mpls_dev_get.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -61, %mpls_dev_get.exit.cleanup_crit_edge ], [ -90, %if.end.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ], [ 0, %do.end9.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mpls_get_stats_af_size(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %mpls_ptr.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 84
  %0 = ptrtoint ptr %mpls_ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %mpls_ptr.i, align 8
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #16
  br i1 %call.i, label %entry.mpls_dev_get.exit_crit_edge, label %lor.lhs.false.i

entry.mpls_dev_get.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %mpls_dev_get.exit

lor.lhs.false.i:                                  ; preds = %entry
  %call2.i = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.mpls_dev_get.exit_crit_edge

lor.lhs.false.i.mpls_dev_get.exit_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mpls_dev_get.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.mpls_dev_get.exit_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.mpls_dev_get.exit_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mpls_dev_get.exit

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b10.i = load i1, ptr @mpls_dev_get.__warned, align 1
  br i1 %.b10.i, label %land.lhs.true5.i.mpls_dev_get.exit_crit_edge, label %if.then.i

land.lhs.true5.i.mpls_dev_get.exit_crit_edge:     ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mpls_dev_get.exit

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @mpls_dev_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 189, ptr noundef nonnull @.str.7) #16
  br label %mpls_dev_get.exit

mpls_dev_get.exit:                                ; preds = %if.then.i, %land.lhs.true5.i.mpls_dev_get.exit_crit_edge, %land.lhs.true.i.mpls_dev_get.exit_crit_edge, %lor.lhs.false.i.mpls_dev_get.exit_crit_edge, %entry.mpls_dev_get.exit_crit_edge
  %tobool.not = icmp eq ptr %1, null
  %spec.select = select i1 %tobool.not, i32 0, i32 76
  ret i32 %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nla_reserve_64bit(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mpls_forward(ptr noundef %skb, ptr noundef %dev, ptr nocapture noundef readnone %pt, ptr nocapture noundef readnone %orig_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %0 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nd_net.i, align 4
  %mpls_ptr.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 84
  %2 = ptrtoint ptr %mpls_ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %mpls_ptr.i, align 8
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #16
  br i1 %call.i, label %entry.mpls_dev_get.exit_crit_edge, label %lor.lhs.false.i

entry.mpls_dev_get.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %mpls_dev_get.exit

lor.lhs.false.i:                                  ; preds = %entry
  %call2.i = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.mpls_dev_get.exit_crit_edge

lor.lhs.false.i.mpls_dev_get.exit_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mpls_dev_get.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.mpls_dev_get.exit_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.mpls_dev_get.exit_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mpls_dev_get.exit

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b10.i = load i1, ptr @mpls_dev_get.__warned, align 1
  br i1 %.b10.i, label %land.lhs.true5.i.mpls_dev_get.exit_crit_edge, label %if.then.i

land.lhs.true5.i.mpls_dev_get.exit_crit_edge:     ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mpls_dev_get.exit

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @mpls_dev_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 189, ptr noundef nonnull @.str.7) #16
  br label %mpls_dev_get.exit

mpls_dev_get.exit:                                ; preds = %if.then.i, %land.lhs.true5.i.mpls_dev_get.exit_crit_edge, %land.lhs.true.i.mpls_dev_get.exit_crit_edge, %lor.lhs.false.i.mpls_dev_get.exit_crit_edge, %entry.mpls_dev_get.exit_crit_edge
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %mpls_dev_get.exit.drop_crit_edge, label %do.body

mpls_dev_get.exit.drop_crit_edge:                 ; preds = %mpls_dev_get.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %drop

do.body:                                          ; preds = %mpls_dev_get.exit
  %stats = getelementptr inbounds %struct.mpls_dev, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stats, align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !207) #16
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %add = add i32 %12, %6
  %13 = inttoptr i32 %add to ptr
  tail call fastcc void @local_bh_disable()
  %syncp = getelementptr inbounds %struct.mpls_pcpu_stats, ptr %13, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp)
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %13, align 8
  %inc = add i64 %15, 1
  store i64 %inc, ptr %13, align 8
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %16 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len, align 4
  %conv = zext i32 %17 to i64
  %rx_bytes = getelementptr inbounds %struct.mpls_link_stats, ptr %13, i32 0, i32 2
  %18 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %rx_bytes, align 8
  %add7 = add i64 %19, %conv
  store i64 %add7, ptr %rx_bytes, align 8
  %dep_map.i.i = getelementptr inbounds %struct.mpls_pcpu_stats, ptr %13, i32 0, i32 1, i32 0, i32 1
  %20 = tail call ptr @llvm.returnaddress(i32 0) #16
  %21 = ptrtoint ptr %20 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %21) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !217
  %22 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %23, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call fastcc void @local_bh_enable()
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool11.not = icmp eq i32 %25, 0
  br i1 %tobool11.not, label %do.body13, label %if.end33

do.body13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %26 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %stats, align 4
  %28 = ptrtoint ptr %27 to i32
  %29 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cpu, align 4
  %arrayidx25 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %30
  %31 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx25, align 4
  %add26 = add i32 %32, %28
  %33 = inttoptr i32 %add26 to ptr
  tail call fastcc void @local_bh_disable()
  %syncp27 = getelementptr inbounds %struct.mpls_pcpu_stats, ptr %33, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp27)
  %rx_dropped = getelementptr inbounds %struct.mpls_link_stats, ptr %33, i32 0, i32 6
  %34 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %rx_dropped, align 8
  %inc29 = add i64 %35, 1
  store i64 %inc29, ptr %rx_dropped, align 8
  %dep_map.i.i308 = getelementptr inbounds %struct.mpls_pcpu_stats, ptr %33, i32 0, i32 1, i32 0, i32 1
  tail call void @lock_release(ptr noundef %dep_map.i.i308, i32 noundef %21) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !217
  br label %drop.sink.split

if.end33:                                         ; preds = %do.body
  %pkt_type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %36 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %36)
  %bf.load = load i16, ptr %pkt_type, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load)
  %cmp.not = icmp ult i16 %bf.load, 8192
  br i1 %cmp.not, label %if.end37, label %if.end33.do.body194_crit_edge

if.end33.do.body194_crit_edge:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body194

if.end37:                                         ; preds = %if.end33
  %users.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 21
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %users.i.i, i32 noundef 4) #16
  %37 = ptrtoint ptr %users.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %users.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %38)
  %cmp.i.not.i = icmp eq i32 %38, 1
  br i1 %cmp.i.not.i, label %skb_share_check.exit, label %if.then6.i

if.then6.i:                                       ; preds = %if.end37
  %call7.i = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #16
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %skb_share_check.exit.thread, label %skb_share_check.exit.thread359, !prof !220

skb_share_check.exit.thread359:                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @consume_skb(ptr noundef %skb) #16
  br label %if.end42

skb_share_check.exit.thread:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #16
  br label %do.body194

skb_share_check.exit:                             ; preds = %if.end37
  %cmp39 = icmp eq ptr %skb, null
  br i1 %cmp39, label %skb_share_check.exit.do.body194_crit_edge, label %skb_share_check.exit.if.end42_crit_edge

skb_share_check.exit.if.end42_crit_edge:          ; preds = %skb_share_check.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end42

skb_share_check.exit.do.body194_crit_edge:        ; preds = %skb_share_check.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body194

if.end42:                                         ; preds = %skb_share_check.exit.if.end42_crit_edge, %skb_share_check.exit.thread359
  %skb.addr.0.i362 = phi ptr [ %call7.i, %skb_share_check.exit.thread359 ], [ %skb, %skb_share_check.exit.if.end42_crit_edge ]
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i362, i32 0, i32 6
  %39 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i362, i32 0, i32 7
  %41 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %40, %42
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i.i)
  %cmp.not.i = icmp ult i32 %sub.i.i, 4
  br i1 %cmp.not.i, label %if.end.i, label %if.end42.if.end45_crit_edge, !prof !220

if.end42.if.end45_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end45

if.end.i:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %40)
  %cmp3.i = icmp ult i32 %40, 4
  br i1 %cmp3.i, label %if.end.i.do.body194_crit_edge, label %pskb_may_pull.exit, !prof !220

if.end.i.do.body194_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body194

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 4, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef nonnull %skb.addr.0.i362, i32 noundef %sub.i) #16
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.do.body194_crit_edge, label %pskb_may_pull.exit.if.end45_crit_edge

pskb_may_pull.exit.if.end45_crit_edge:            ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end45

pskb_may_pull.exit.do.body194_crit_edge:          ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body194

if.end45:                                         ; preds = %pskb_may_pull.exit.if.end45_crit_edge, %if.end42.if.end45_crit_edge
  %43 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i362, i32 0, i32 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i311 = icmp eq i32 %45, 0
  br i1 %tobool.not.i311, label %if.end45.skb_dst_drop.exit_crit_edge, label %if.then.i312

if.end45.skb_dst_drop.exit_crit_edge:             ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #18
  br label %skb_dst_drop.exit

if.then.i312:                                     ; preds = %if.end45
  %and.i.i = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then.i312.refdst_drop.exit.i_crit_edge

if.then.i312.refdst_drop.exit.i_crit_edge:        ; preds = %if.then.i312
  call void @__sanitizer_cov_trace_pc() #18
  br label %refdst_drop.exit.i

if.then.i.i:                                      ; preds = %if.then.i312
  call void @__sanitizer_cov_trace_pc() #18
  %and1.i.i = and i32 %45, -2
  %46 = inttoptr i32 %and1.i.i to ptr
  tail call void @dst_release(ptr noundef %46) #16
  br label %refdst_drop.exit.i

refdst_drop.exit.i:                               ; preds = %if.then.i.i, %if.then.i312.refdst_drop.exit.i_crit_edge
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %43, align 8
  br label %skb_dst_drop.exit

skb_dst_drop.exit:                                ; preds = %refdst_drop.exit.i, %if.end45.skb_dst_drop.exit_crit_edge
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i362, i32 0, i32 18
  %48 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i362, i32 0, i32 15, i32 0, i32 20
  %50 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %51 to i32
  %add.ptr.i.i = getelementptr i8, ptr %49, i32 %conv.i.i
  %52 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %add.ptr.i.i, align 4, !noalias !247
  %shr.i = lshr i32 %53, 12
  %conv9.i = and i32 %53, 256
  %54 = shl i32 %53, 7
  %tmp47.sroa.5.sroa.5.0.insert.shift = and i32 %54, 458752
  %tmp47.sroa.5.sroa.0.0.insert.ext = shl i32 %53, 24
  %tmp47.sroa.5.sroa.6.0.insert.insert = or i32 %tmp47.sroa.5.sroa.0.0.insert.ext, %conv9.i
  %tmp47.sroa.5.sroa.5.0.insert.insert = or i32 %tmp47.sroa.5.sroa.6.0.insert.insert, %tmp47.sroa.5.sroa.5.0.insert.shift
  %call48 = tail call fastcc ptr @mpls_route_input_rcu(ptr noundef %1, i32 noundef %shr.i)
  %tobool49.not = icmp eq ptr %call48, null
  br i1 %tobool49.not, label %do.body51, label %if.end71

do.body51:                                        ; preds = %skb_dst_drop.exit
  call void @__sanitizer_cov_trace_pc() #18
  %55 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %stats, align 4
  %57 = ptrtoint ptr %56 to i32
  %58 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %cpu, align 4
  %arrayidx63 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %59
  %60 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx63, align 4
  %add64 = add i32 %61, %57
  %62 = inttoptr i32 %add64 to ptr
  tail call fastcc void @local_bh_disable()
  %syncp65 = getelementptr inbounds %struct.mpls_pcpu_stats, ptr %62, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp65)
  %rx_noroute = getelementptr inbounds %struct.mpls_link_stats, ptr %62, i32 0, i32 8
  %63 = ptrtoint ptr %rx_noroute to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %rx_noroute, align 8
  %inc67 = add i64 %64, 1
  store i64 %inc67, ptr %rx_noroute, align 8
  %dep_map.i.i314 = getelementptr inbounds %struct.mpls_pcpu_stats, ptr %62, i32 0, i32 1, i32 0, i32 1
  tail call void @lock_release(ptr noundef %dep_map.i.i314, i32 noundef %21) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !217
  br label %drop.sink.split

if.end71:                                         ; preds = %skb_dst_drop.exit
  %call72 = tail call fastcc ptr @mpls_select_multipath(ptr noundef nonnull %call48, ptr noundef nonnull %skb.addr.0.i362)
  %tobool73.not = icmp eq ptr %call72, null
  br i1 %tobool73.not, label %if.end71.do.body194_crit_edge, label %if.end75

if.end71.do.body194_crit_edge:                    ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body194

if.end75:                                         ; preds = %if.end71
  %call76 = tail call ptr @skb_pull(ptr noundef nonnull %skb.addr.0.i362, i32 noundef 4) #16
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i362, i32 0, i32 19
  %65 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %data.i, align 4
  %67 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %66 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %68 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i316 = trunc i32 %sub.ptr.sub.i to i16
  %69 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %conv.i316, ptr %network_header.i.i, align 4
  %destructor.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i362, i32 0, i32 4, i32 0, i32 1
  %70 = ptrtoint ptr %destructor.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %destructor.i, align 4
  %tobool.not.i317 = icmp eq ptr %71, null
  br i1 %tobool.not.i317, label %do.body.i, label %if.then.i318

if.then.i318:                                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #18
  tail call void %71(ptr noundef nonnull %skb.addr.0.i362) #16
  %72 = ptrtoint ptr %destructor.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %destructor.i, align 4
  %73 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i362, i32 0, i32 1
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %73, align 4
  br label %skb_orphan.exit

do.body.i:                                        ; preds = %if.end75
  %75 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i362, i32 0, i32 1
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %75, align 4
  %tobool3.not.i = icmp eq ptr %77, null
  br i1 %tobool3.not.i, label %do.body.i.skb_orphan.exit_crit_edge, label %do.body7.i, !prof !226

do.body.i.skb_orphan.exit_crit_edge:              ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %skb_orphan.exit

do.body7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #16, !srcloc !250
  unreachable

skb_orphan.exit:                                  ; preds = %do.body.i.skb_orphan.exit_crit_edge, %if.then.i318
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i362, i32 0, i32 17
  %78 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %end.i.i, align 4
  %80 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool.i.not.i = icmp eq i32 %81, 0
  br i1 %tobool.i.not.i, label %skb_orphan.exit.if.end79_crit_edge, label %land.lhs.true.i322

skb_orphan.exit.if.end79_crit_edge:               ; preds = %skb_orphan.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end79

land.lhs.true.i322:                               ; preds = %skb_orphan.exit
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %79, i32 0, i32 4
  %82 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %83)
  %cmp.not.i321 = icmp eq i16 %83, 0
  br i1 %cmp.not.i321, label %land.lhs.true.i322.if.end79_crit_edge, label %land.lhs.true3.i

land.lhs.true.i322.if.end79_crit_edge:            ; preds = %land.lhs.true.i322
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end79

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i322
  %gso_type.i = getelementptr inbounds %struct.skb_shared_info, ptr %79, i32 0, i32 8
  %84 = ptrtoint ptr %gso_type.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %gso_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %cmp4.i = icmp eq i32 %85, 0
  br i1 %cmp4.i, label %skb_warn_if_lro.exit, label %land.lhs.true3.i.if.end79_crit_edge, !prof !220

land.lhs.true3.i.if.end79_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end79

skb_warn_if_lro.exit:                             ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__skb_warn_lro_forwarding(ptr noundef nonnull %skb.addr.0.i362) #16
  br label %do.body194

if.end79:                                         ; preds = %land.lhs.true3.i.if.end79_crit_edge, %land.lhs.true.i322.if.end79_crit_edge, %skb_orphan.exit.if.end79_crit_edge
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i362, i32 0, i32 15
  %86 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %87 = and i16 %bf.load.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %87)
  %cmp.i = icmp eq i16 %87, 1024
  br i1 %cmp.i, label %if.then.i325, label %if.end79.skb_forward_csum.exit_crit_edge

if.end79.skb_forward_csum.exit_crit_edge:         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #18
  br label %skb_forward_csum.exit

if.then.i325:                                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #18
  %bf.clear4.i = and i16 %bf.load.i, -1537
  %88 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %bf.clear4.i, ptr %ip_summed.i, align 8
  br label %skb_forward_csum.exit

skb_forward_csum.exit:                            ; preds = %if.then.i325, %if.end79.skb_forward_csum.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %tmp47.sroa.5.sroa.0.0.insert.ext)
  %cmp81 = icmp ult i32 %tmp47.sroa.5.sroa.0.0.insert.ext, 33554432
  br i1 %cmp81, label %skb_forward_csum.exit.do.body194_crit_edge, label %if.end84

skb_forward_csum.exit.do.body194_crit_edge:       ; preds = %skb_forward_csum.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body194

if.end84:                                         ; preds = %skb_forward_csum.exit
  %89 = ptrtoint ptr %call72 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %call72, align 4
  %tobool.not.i327 = icmp eq ptr %90, null
  br i1 %tobool.not.i327, label %if.end84.drop_crit_edge, label %land.lhs.true.i329

if.end84.drop_crit_edge:                          ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #18
  br label %drop

land.lhs.true.i329:                               ; preds = %if.end84
  %flags.i = getelementptr inbounds %struct.net_device, ptr %90, i32 0, i32 14
  %91 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %flags.i, align 8
  %and.i328 = and i32 %92, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i328)
  %tobool1.not.i = icmp eq i32 %and.i328, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i329.cond.end_crit_edge, label %mpls_output_possible.exit

land.lhs.true.i329.cond.end_crit_edge:            ; preds = %land.lhs.true.i329
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end

mpls_output_possible.exit:                        ; preds = %land.lhs.true.i329
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %90, i32 0, i32 6
  %93 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile i32, ptr %state.i.i, align 4
  %95 = and i32 %94, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool.not.i.i330 = icmp eq i32 %95, 0
  br i1 %tobool.not.i.i330, label %if.end87, label %mpls_output_possible.exit.cond.end_crit_edge

mpls_output_possible.exit.cond.end_crit_edge:     ; preds = %mpls_output_possible.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end

if.end87:                                         ; preds = %mpls_output_possible.exit
  %nh_labels.i = getelementptr inbounds %struct.mpls_nh, ptr %call72, i32 0, i32 2
  %96 = ptrtoint ptr %nh_labels.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %nh_labels.i, align 4
  %conv.i331 = zext i8 %97 to i32
  %mul.i = shl nuw nsw i32 %conv.i331, 2
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %90, i32 0, i32 20
  %98 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %mtu.i, align 4
  %sub = sub i32 %99, %mul.i
  %100 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %101, i32 %sub)
  %cmp.not.i332 = icmp ugt i32 %101, %sub
  br i1 %cmp.not.i332, label %if.end.i334, label %if.end87.if.end92_crit_edge

if.end87.if.end92_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end92

if.end.i334:                                      ; preds = %if.end87
  %102 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %end.i.i, align 4
  %gso_size.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %103, i32 0, i32 4
  %104 = ptrtoint ptr %gso_size.i.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %gso_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %105)
  %tobool.i.not.i333 = icmp eq i16 %105, 0
  br i1 %tobool.i.not.i333, label %if.end.i334.cond.end_crit_edge, label %land.lhs.true.i335

if.end.i334.cond.end_crit_edge:                   ; preds = %if.end.i334
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end

land.lhs.true.i335:                               ; preds = %if.end.i334
  %call1.i = tail call zeroext i1 @skb_gso_validate_network_len(ptr noundef nonnull %skb.addr.0.i362, i32 noundef %sub) #16
  br i1 %call1.i, label %land.lhs.true.i335.if.end92_crit_edge, label %land.lhs.true.i335.cond.end_crit_edge

land.lhs.true.i335.cond.end_crit_edge:            ; preds = %land.lhs.true.i335
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end

land.lhs.true.i335.if.end92_crit_edge:            ; preds = %land.lhs.true.i335
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end92

if.end92:                                         ; preds = %land.lhs.true.i335.if.end92_crit_edge, %if.end87.if.end92_crit_edge
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %90, i32 0, i32 19
  %106 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %hard_header_len, align 2
  %conv93 = zext i16 %107 to i32
  %needed_headroom = getelementptr inbounds %struct.net_device, ptr %90, i32 0, i32 21
  %108 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %needed_headroom, align 8
  %conv94 = zext i16 %109 to i32
  %add95 = add nuw nsw i32 %conv94, %conv93
  %and = and i32 %add95, 131056
  %add96 = add nuw nsw i32 %and, 16
  %header_ops = getelementptr inbounds %struct.net_device, ptr %90, i32 0, i32 49
  %110 = ptrtoint ptr %header_ops to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %header_ops, align 4
  %tobool97.not = icmp eq ptr %111, null
  %spec.store.select = select i1 %tobool97.not, i32 0, i32 %add96
  %add100 = add nuw nsw i32 %spec.store.select, %mul.i
  %call101 = tail call fastcc i32 @skb_cow(ptr noundef nonnull %skb.addr.0.i362, i32 noundef %add100)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.end104, label %if.end92.cond.end_crit_edge

if.end92.cond.end_crit_edge:                      ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end

if.end104:                                        ; preds = %if.end92
  %112 = getelementptr inbounds %struct.anon.0, ptr %skb.addr.0.i362, i32 0, i32 2
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %90, ptr %112, align 8
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i362, i32 0, i32 15, i32 0, i32 18
  %114 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 -30649, ptr %protocol, align 8
  %115 = add i32 %tmp47.sroa.5.sroa.5.0.insert.insert, -16776961
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool109.not = icmp eq i8 %97, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv9.i)
  %tobool111 = icmp ne i32 %conv9.i, 0
  %116 = select i1 %tobool109.not, i1 %tobool111, i1 false
  br i1 %116, label %if.then114, label %if.else, !prof !220

if.then114:                                       ; preds = %if.end104
  %nd_net.i337 = getelementptr inbounds %struct.net_device, ptr %90, i32 0, i32 127
  %117 = ptrtoint ptr %nd_net.i337 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %nd_net.i337, align 4
  %.fca.0.insert = insertvalue [2 x i32] poison, i32 %shr.i, 0
  %.fca.1.insert = insertvalue [2 x i32] %.fca.0.insert, i32 %115, 1
  %call116 = tail call fastcc zeroext i1 @mpls_egress(ptr noundef %118, ptr noundef nonnull %call48, ptr noundef nonnull %skb.addr.0.i362, [2 x i32] %.fca.1.insert)
  br i1 %call116, label %if.then114.if.end136_crit_edge, label %if.then114.do.body194_crit_edge

if.then114.do.body194_crit_edge:                  ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body194

if.then114.if.end136_crit_edge:                   ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end136

if.else:                                          ; preds = %if.end104
  %call120 = tail call ptr @skb_push(ptr noundef nonnull %skb.addr.0.i362, i32 noundef %mul.i) #16
  %119 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %data.i, align 4
  %121 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i340 = ptrtoint ptr %120 to i32
  %sub.ptr.rhs.cast.i341 = ptrtoint ptr %122 to i32
  %sub.ptr.sub.i342 = sub i32 %sub.ptr.lhs.cast.i340, %sub.ptr.rhs.cast.i341
  %conv.i343 = trunc i32 %sub.ptr.sub.i342 to i16
  %123 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 %conv.i343, ptr %network_header.i.i, align 4
  %conv.i.i347 = and i32 %sub.ptr.sub.i342, 65535
  %add.ptr.i.i348 = getelementptr i8, ptr %122, i32 %conv.i.i347
  %124 = ptrtoint ptr %nh_labels.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %nh_labels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %cmp126377.not = icmp eq i8 %125, 0
  br i1 %cmp126377.not, label %if.else.if.end136_crit_edge, label %for.body.lr.ph

if.else.if.end136_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end136

for.body.lr.ph:                                   ; preds = %if.else
  %conv124 = zext i8 %125 to i32
  %i.0376 = add nsw i32 %conv124, -1
  %dec.sroa.6.4.extract.shift268 = lshr i32 %115, 24
  %arrayidx128.peel = getelementptr %struct.mpls_shim_hdr, ptr %add.ptr.i.i348, i32 %i.0376
  %arrayidx130.peel = getelementptr %struct.mpls_nh, ptr %call72, i32 0, i32 6, i32 %i.0376
  %126 = ptrtoint ptr %arrayidx130.peel to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx130.peel, align 4
  %shl.i.peel = shl i32 %127, 12
  %or2.i.peel = or i32 %shl.i.peel, %conv9.i
  %or4.i.peel = or i32 %or2.i.peel, %dec.sroa.6.4.extract.shift268
  %128 = ptrtoint ptr %arrayidx128.peel to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %or4.i.peel, ptr %arrayidx128.peel, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %125)
  %cmp126.peel.not = icmp eq i8 %125, 1
  br i1 %cmp126.peel.not, label %for.body.lr.ph.if.end136_crit_edge, label %for.body.peel.next

for.body.lr.ph.if.end136_crit_edge:               ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end136

for.body.peel.next:                               ; preds = %for.body.lr.ph
  %i.0.peel = add nsw i32 %conv124, -2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.peel.next
  %i.0379 = phi i32 [ %i.0.peel, %for.body.peel.next ], [ %i.0, %for.body.for.body_crit_edge ]
  %arrayidx128 = getelementptr %struct.mpls_shim_hdr, ptr %add.ptr.i.i348, i32 %i.0379
  %arrayidx130 = getelementptr %struct.mpls_nh, ptr %call72, i32 0, i32 6, i32 %i.0379
  %129 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %arrayidx130, align 4
  %shl.i = shl i32 %130, 12
  %or4.i = or i32 %shl.i, %dec.sroa.6.4.extract.shift268
  %131 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %or4.i, ptr %arrayidx128, align 4
  %i.0 = add nsw i32 %i.0379, -1
  %cmp126 = icmp sgt i32 %i.0379, 0
  br i1 %cmp126, label %for.body.for.body_crit_edge, label %for.body.if.end136_crit_edge, !llvm.loop !251

for.body.if.end136_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end136

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

if.end136:                                        ; preds = %for.body.if.end136_crit_edge, %for.body.lr.ph.if.end136_crit_edge, %if.else.if.end136_crit_edge, %if.then114.if.end136_crit_edge
  tail call void @mpls_stats_inc_outucastpkts(ptr noundef nonnull %90, ptr noundef nonnull %skb.addr.0.i362)
  %nh_via_table = getelementptr inbounds %struct.mpls_nh, ptr %call72, i32 0, i32 4
  %132 = ptrtoint ptr %nh_via_table to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %nh_via_table, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %133)
  %cmp138 = icmp eq i8 %133, 4
  br i1 %cmp138, label %if.then140, label %if.else142

if.then140:                                       ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #18
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %90, i32 0, i32 86
  %134 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %dev_addr, align 64
  %call141 = tail call i32 @neigh_xmit(i32 noundef 3, ptr noundef nonnull %90, ptr noundef %135, ptr noundef nonnull %skb.addr.0.i362) #16
  br label %if.end147

if.else142:                                       ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #18
  %conv137 = zext i8 %133 to i32
  %rt_via_offset.i.i = getelementptr inbounds %struct.mpls_route, ptr %call48, i32 0, i32 8
  %136 = ptrtoint ptr %rt_via_offset.i.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %rt_via_offset.i.i, align 1
  %conv.i.i349 = zext i8 %137 to i32
  %add.ptr.i.i350 = getelementptr i8, ptr %call72, i32 %conv.i.i349
  %call146 = tail call i32 @neigh_xmit(i32 noundef %conv137, ptr noundef nonnull %90, ptr noundef %add.ptr.i.i350, ptr noundef nonnull %skb.addr.0.i362) #16
  br label %if.end147

if.end147:                                        ; preds = %if.else142, %if.then140
  %err.0 = phi i32 [ %call141, %if.then140 ], [ %call146, %if.else142 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool148.not = icmp eq i32 %err.0, 0
  br i1 %tobool148.not, label %if.end147.cleanup_crit_edge, label %do.body150

if.end147.cleanup_crit_edge:                      ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.body150:                                       ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mpls_forward.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mpls_forward, %land.lhs.true)) #16
          to label %cleanup [label %land.lhs.true], !srcloc !252

land.lhs.true:                                    ; preds = %do.body150
  %call161 = tail call i32 @net_ratelimit() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call161)
  %tobool162.not = icmp eq i32 %call161, 0
  br i1 %tobool162.not, label %land.lhs.true.cleanup_crit_edge, label %if.then163

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then163:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mpls_forward.descriptor, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.45, i32 noundef %err.0) #16
  br label %cleanup

cond.end:                                         ; preds = %if.end92.cond.end_crit_edge, %land.lhs.true.i335.cond.end_crit_edge, %if.end.i334.cond.end_crit_edge, %mpls_output_possible.exit.cond.end_crit_edge, %land.lhs.true.i329.cond.end_crit_edge
  %call169 = tail call fastcc ptr @mpls_dev_get(ptr noundef nonnull %90)
  %tobool170.not = icmp eq ptr %call169, null
  br i1 %tobool170.not, label %cond.end.drop_crit_edge, label %do.body172

cond.end.drop_crit_edge:                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %drop

do.body172:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #18
  %stats180 = getelementptr inbounds %struct.mpls_dev, ptr %call169, i32 0, i32 2
  %138 = ptrtoint ptr %stats180 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %stats180, align 4
  %140 = ptrtoint ptr %139 to i32
  %141 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %cpu, align 4
  %arrayidx184 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %142
  %143 = ptrtoint ptr %arrayidx184 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %arrayidx184, align 4
  %add185 = add i32 %144, %140
  %145 = inttoptr i32 %add185 to ptr
  tail call fastcc void @local_bh_disable()
  %syncp186 = getelementptr inbounds %struct.mpls_pcpu_stats, ptr %145, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp186)
  %tx_errors = getelementptr inbounds %struct.mpls_link_stats, ptr %145, i32 0, i32 5
  %146 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load8_noabort(i32 %146)
  %147 = load i64, ptr %tx_errors, align 8
  %inc188 = add i64 %147, 1
  store i64 %inc188, ptr %tx_errors, align 8
  %dep_map.i.i351 = getelementptr inbounds %struct.mpls_pcpu_stats, ptr %145, i32 0, i32 1, i32 0, i32 1
  tail call void @lock_release(ptr noundef %dep_map.i.i351, i32 noundef %21) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !217
  br label %drop.sink.split

do.body194:                                       ; preds = %if.then114.do.body194_crit_edge, %skb_forward_csum.exit.do.body194_crit_edge, %skb_warn_if_lro.exit, %if.end71.do.body194_crit_edge, %pskb_may_pull.exit.do.body194_crit_edge, %if.end.i.do.body194_crit_edge, %skb_share_check.exit.do.body194_crit_edge, %skb_share_check.exit.thread, %if.end33.do.body194_crit_edge
  %skb.addr.0 = phi ptr [ %skb, %if.end33.do.body194_crit_edge ], [ null, %skb_share_check.exit.do.body194_crit_edge ], [ %skb.addr.0.i362, %skb_warn_if_lro.exit ], [ %skb.addr.0.i362, %skb_forward_csum.exit.do.body194_crit_edge ], [ %skb.addr.0.i362, %if.then114.do.body194_crit_edge ], [ %skb.addr.0.i362, %if.end71.do.body194_crit_edge ], [ %skb.addr.0.i362, %pskb_may_pull.exit.do.body194_crit_edge ], [ null, %skb_share_check.exit.thread ], [ %skb.addr.0.i362, %if.end.i.do.body194_crit_edge ]
  %148 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %stats, align 4
  %150 = ptrtoint ptr %149 to i32
  %151 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %cpu, align 4
  %arrayidx206 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %152
  %153 = ptrtoint ptr %arrayidx206 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %arrayidx206, align 4
  %add207 = add i32 %154, %150
  %155 = inttoptr i32 %add207 to ptr
  tail call fastcc void @local_bh_disable()
  %syncp208 = getelementptr inbounds %struct.mpls_pcpu_stats, ptr %155, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp208)
  %rx_errors = getelementptr inbounds %struct.mpls_link_stats, ptr %155, i32 0, i32 4
  %156 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load8_noabort(i32 %156)
  %157 = load i64, ptr %rx_errors, align 8
  %inc210 = add i64 %157, 1
  store i64 %inc210, ptr %rx_errors, align 8
  %dep_map.i.i353 = getelementptr inbounds %struct.mpls_pcpu_stats, ptr %155, i32 0, i32 1, i32 0, i32 1
  tail call void @lock_release(ptr noundef %dep_map.i.i353, i32 noundef %21) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !217
  br label %drop.sink.split

drop.sink.split:                                  ; preds = %do.body194, %do.body172, %do.body51, %do.body13
  %syncp186.sink381 = phi ptr [ %syncp186, %do.body172 ], [ %syncp208, %do.body194 ], [ %syncp65, %do.body51 ], [ %syncp27, %do.body13 ]
  %skb.addr.1.ph = phi ptr [ %skb.addr.0.i362, %do.body172 ], [ %skb.addr.0, %do.body194 ], [ %skb.addr.0.i362, %do.body51 ], [ %skb, %do.body13 ]
  %158 = ptrtoint ptr %syncp186.sink381 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %syncp186.sink381, align 4
  %inc.i.i.i352 = add i32 %159, 1
  store i32 %inc.i.i.i352, ptr %syncp186.sink381, align 4
  tail call fastcc void @local_bh_enable()
  br label %drop

drop:                                             ; preds = %drop.sink.split, %cond.end.drop_crit_edge, %if.end84.drop_crit_edge, %mpls_dev_get.exit.drop_crit_edge
  %skb.addr.1 = phi ptr [ %skb.addr.0.i362, %cond.end.drop_crit_edge ], [ %skb, %mpls_dev_get.exit.drop_crit_edge ], [ %skb.addr.0.i362, %if.end84.drop_crit_edge ], [ %skb.addr.1.ph, %drop.sink.split ]
  tail call void @kfree_skb_reason(ptr noundef %skb.addr.1, i32 noundef 0) #16
  br label %cleanup

cleanup:                                          ; preds = %drop, %if.then163, %land.lhs.true.cleanup_crit_edge, %do.body150, %if.end147.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %drop ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.then163 ], [ 0, %if.end147.cleanup_crit_edge ], [ 0, %do.body150 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @mpls_egress(ptr nocapture noundef readonly %net, ptr nocapture noundef readonly %rt, ptr noundef %skb, [2 x i32] %dec.coerce) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %dec.coerce.fca.1.extract = extractvalue [2 x i32] %dec.coerce, 1
  %dec.sroa.1.4.extract.shift = lshr i32 %dec.coerce.fca.1.extract, 24
  %dec.sroa.1.4.extract.trunc = trunc i32 %dec.sroa.1.4.extract.shift to i8
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %1, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %sub.i.i)
  %cmp.not.i = icmp ult i32 %sub.i.i, 12
  br i1 %cmp.not.i, label %if.end.i, label %entry.if.end_crit_edge, !prof !220

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %1)
  %cmp3.i = icmp ult i32 %1, 12
  br i1 %cmp3.i, label %if.end.i.cleanup_crit_edge, label %pskb_may_pull.exit, !prof !220

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 12, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #16
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.cleanup_crit_edge, label %pskb_may_pull.exit.if.end_crit_edge

pskb_may_pull.exit.if.end_crit_edge:              ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

pskb_may_pull.exit.cleanup_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %pskb_may_pull.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %rt_payload_type = getelementptr inbounds %struct.mpls_route, ptr %rt, i32 0, i32 2
  %4 = ptrtoint ptr %rt_payload_type to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rt_payload_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp = icmp eq i8 %5, 0
  br i1 %cmp, label %if.then2, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %6 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %8 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %9 to i32
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %conv.i.i
  %10 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %add.ptr.i.i, align 4
  %bf.lshr = lshr i8 %bf.load, 4
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end.if.end5_crit_edge
  %payload_type.0.in = phi i8 [ %bf.lshr, %if.then2 ], [ %5, %if.end.if.end5_crit_edge ]
  %11 = zext i8 %payload_type.0.in to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.67)
  switch i8 %payload_type.0.in, label %if.end5.cleanup_crit_edge [
    i8 4, label %sw.bb
    i8 6, label %sw.bb29
  ]

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb:                                            ; preds = %if.end5
  %head.i.i80 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %12 = ptrtoint ptr %head.i.i80 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %head.i.i80, align 8
  %network_header.i.i81 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %14 = ptrtoint ptr %network_header.i.i81 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %network_header.i.i81, align 4
  %conv.i.i82 = zext i16 %15 to i32
  %add.ptr.i.i83 = getelementptr i8, ptr %13, i32 %conv.i.i82
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %16 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 2048, ptr %protocol, align 8
  %rt_ttl_propagate = getelementptr inbounds %struct.mpls_route, ptr %rt, i32 0, i32 4
  %17 = ptrtoint ptr %rt_ttl_propagate to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %rt_ttl_propagate, align 1
  %19 = zext i8 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.68)
  switch i8 %18, label %sw.bb.if.else_crit_edge [
    i8 1, label %sw.bb.if.end21_crit_edge
    i8 0, label %land.lhs.true
  ]

sw.bb.if.end21_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end21

sw.bb.if.else_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else

land.lhs.true:                                    ; preds = %sw.bb
  %mpls = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 49
  %20 = ptrtoint ptr %mpls to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mpls, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not = icmp eq i32 %21, 0
  br i1 %tobool.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.if.end21_crit_edge

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end21

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %sw.bb.if.else_crit_edge
  %ttl15 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i83, i32 0, i32 5
  %22 = ptrtoint ptr %ttl15 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ttl15, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool17.not = icmp eq i8 %23, 0
  %sub = add i8 %23, -1
  %spec.select = select i1 %tobool17.not, i8 0, i8 %sub
  br label %if.end21

if.end21:                                         ; preds = %if.else, %land.lhs.true.if.end21_crit_edge, %sw.bb.if.end21_crit_edge
  %new_ttl.0 = phi i8 [ %spec.select, %if.else ], [ %dec.sroa.1.4.extract.trunc, %sw.bb.if.end21_crit_edge ], [ %dec.sroa.1.4.extract.trunc, %land.lhs.true.if.end21_crit_edge ]
  %check = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i83, i32 0, i32 7
  %ttl22 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i83, i32 0, i32 5
  %24 = ptrtoint ptr %ttl22 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ttl22, align 4
  %conv23 = zext i8 %25 to i16
  %shl = shl nuw i16 %conv23, 8
  %conv25 = zext i8 %new_ttl.0 to i16
  %shl26 = shl nuw i16 %conv25, 8
  %26 = ptrtoint ptr %check to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %check, align 2
  %neg.i = xor i16 %27, -1
  %neg.i.i = xor i16 %shl, -1
  %add.i.i.i = add i16 %neg.i.i, %neg.i
  call void @__sanitizer_cov_trace_cmp2(i16 %add.i.i.i, i16 %neg.i.i)
  %cmp.i.i.i = icmp ult i16 %add.i.i.i, %neg.i.i
  %conv6.i.i.i = zext i1 %cmp.i.i.i to i16
  %add7.i.i.i = add i16 %add.i.i.i, %shl26
  %add.i.i = add i16 %add7.i.i.i, %conv6.i.i.i
  call void @__sanitizer_cov_trace_cmp2(i16 %add.i.i, i16 %shl26)
  %cmp.i.i = icmp ult i16 %add.i.i, %shl26
  %conv6.i.i = zext i1 %cmp.i.i to i16
  %add7.i.i = add i16 %add.i.i, %conv6.i.i
  %neg4.i = xor i16 %add7.i.i, -1
  %28 = ptrtoint ptr %check to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %neg4.i, ptr %check, align 2
  %29 = ptrtoint ptr %ttl22 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %new_ttl.0, ptr %ttl22, align 4
  br label %cleanup

sw.bb29:                                          ; preds = %if.end5
  %head.i.i84 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %30 = ptrtoint ptr %head.i.i84 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %head.i.i84, align 8
  %network_header.i.i85 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %32 = ptrtoint ptr %network_header.i.i85 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %network_header.i.i85, align 4
  %conv.i.i86 = zext i16 %33 to i32
  %add.ptr.i.i87 = getelementptr i8, ptr %31, i32 %conv.i.i86
  %protocol31 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %34 = ptrtoint ptr %protocol31 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 -31011, ptr %protocol31, align 8
  %rt_ttl_propagate32 = getelementptr inbounds %struct.mpls_route, ptr %rt, i32 0, i32 4
  %35 = ptrtoint ptr %rt_ttl_propagate32 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %rt_ttl_propagate32, align 1
  %37 = zext i8 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.69)
  switch i8 %36, label %sw.bb29.if.else47_crit_edge [
    i8 1, label %sw.bb29.if.then45_crit_edge
    i8 0, label %land.lhs.true41
  ]

sw.bb29.if.then45_crit_edge:                      ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then45

sw.bb29.if.else47_crit_edge:                      ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else47

land.lhs.true41:                                  ; preds = %sw.bb29
  %mpls42 = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 49
  %38 = ptrtoint ptr %mpls42 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mpls42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool44.not = icmp eq i32 %39, 0
  br i1 %tobool44.not, label %land.lhs.true41.if.else47_crit_edge, label %land.lhs.true41.if.then45_crit_edge

land.lhs.true41.if.then45_crit_edge:              ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then45

land.lhs.true41.if.else47_crit_edge:              ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else47

if.then45:                                        ; preds = %land.lhs.true41.if.then45_crit_edge, %sw.bb29.if.then45_crit_edge
  %hop_limit = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i87, i32 0, i32 4
  %40 = ptrtoint ptr %hop_limit to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %dec.sroa.1.4.extract.trunc, ptr %hop_limit, align 1
  br label %cleanup

if.else47:                                        ; preds = %land.lhs.true41.if.else47_crit_edge, %sw.bb29.if.else47_crit_edge
  %hop_limit48 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i87, i32 0, i32 4
  %41 = ptrtoint ptr %hop_limit48 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %hop_limit48, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool49.not = icmp eq i8 %42, 0
  br i1 %tobool49.not, label %if.else47.cleanup_crit_edge, label %if.then50

if.else47.cleanup_crit_edge:                      ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then50:                                        ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #18
  %sub53 = add i8 %42, -1
  %43 = ptrtoint ptr %hop_limit48 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %sub53, ptr %hop_limit48, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then50, %if.else47.cleanup_crit_edge, %if.then45, %if.end21, %if.end5.cleanup_crit_edge, %pskb_may_pull.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %pskb_may_pull.exit.cleanup_crit_edge ], [ false, %if.end5.cleanup_crit_edge ], [ true, %if.end21 ], [ true, %if.else47.cleanup_crit_edge ], [ true, %if.then50 ], [ true, %if.then45 ], [ false, %if.end.i.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @neigh_xmit(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__skb_warn_lro_forwarding(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mpls_dev_notify(ptr nocapture noundef readnone %this, i32 noundef %event, ptr nocapture noundef readonly %ptr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %event)
  %cmp = icmp eq i32 %event, 5
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @rtnl_is_locked() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %if.then.if.end29.i_crit_edge

if.then.if.end29.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29.i

land.rhs.i:                                       ; preds = %if.then
  %.b120.i = load i1, ptr @mpls_add_dev.__already_done, align 1
  br i1 %.b120.i, label %land.rhs.i.if.end29.i_crit_edge, label %if.then.i, !prof !226

land.rhs.i.if.end29.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @mpls_add_dev.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1453, i32 noundef 9, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.12, i32 noundef 1453) #16
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then.i, %land.rhs.i.if.end29.i_crit_edge, %if.then.if.end29.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 24) #20
  %tobool38.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool38.not.i, label %if.end29.i.if.then3_crit_edge, label %if.end41.i

if.end29.i.if.then3_crit_edge:                    ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then3

if.end41.i:                                       ; preds = %if.end29.i
  %call42.i = tail call noalias ptr @__alloc_percpu(i32 noundef 104, i32 noundef 8) #21
  %stats.i = getelementptr inbounds %struct.mpls_dev, ptr %call7.i.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %stats.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call42.i, ptr %stats.i, align 8
  %tobool44.not.i = icmp eq ptr %call42.i, null
  br i1 %tobool44.not.i, label %if.end41.i.free.i_crit_edge, label %for.cond.preheader.i

if.end41.i.free.i_crit_edge:                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %free.i

for.cond.preheader.i:                             ; preds = %if.end41.i
  %call47121.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call47121.i, i32 %4)
  %cmp122.i = icmp ult i32 %call47121.i, %4
  br i1 %cmp122.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %call47123.i = phi i32 [ %call47.i, %for.body.i.for.body.i_crit_edge ], [ %call47121.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %5 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %stats.i, align 8
  %7 = ptrtoint ptr %6 to i32
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call47123.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %9, %7
  %10 = inttoptr i32 %add.i to ptr
  %syncp.i = getelementptr inbounds %struct.mpls_pcpu_stats, ptr %10, i32 0, i32 1
  %dep_map.i.i = getelementptr inbounds %struct.mpls_pcpu_stats, ptr %10, i32 0, i32 1, i32 0, i32 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i.i, ptr noundef nonnull @.str.48, ptr noundef nonnull @mpls_add_dev.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  %11 = ptrtoint ptr %syncp.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %syncp.i, align 4
  %call47.i = tail call i32 @cpumask_next(i32 noundef %call47123.i, ptr noundef nonnull @__cpu_possible_mask) #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %12 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i = icmp ult i32 %call47.i, %12
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %dev57.i = getelementptr inbounds %struct.mpls_dev, ptr %call7.i.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %dev57.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %1, ptr %dev57.i, align 4
  %call58.i = tail call fastcc i32 @mpls_dev_sysctl_register(ptr noundef %1, ptr noundef nonnull %call7.i.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i)
  %tobool59.not.i = icmp eq i32 %call58.i, 0
  br i1 %tobool59.not.i, label %do.body62.i, label %for.end.i.free.i_crit_edge

for.end.i.free.i_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %free.i

do.body62.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !253
  %mpls_ptr87.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 84
  %14 = ptrtoint ptr %mpls_ptr87.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %call7.i.i.i, ptr %mpls_ptr87.i, align 8
  br label %mpls_add_dev.exit

free.i:                                           ; preds = %for.end.i.free.i_crit_edge, %if.end41.i.free.i_crit_edge
  %err.0.i = phi i32 [ %call58.i, %for.end.i.free.i_crit_edge ], [ -12, %if.end41.i.free.i_crit_edge ]
  %15 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %stats.i, align 8
  tail call void @free_percpu(ptr noundef %16) #16
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #16
  %17 = inttoptr i32 %err.0.i to ptr
  br label %mpls_add_dev.exit

mpls_add_dev.exit:                                ; preds = %free.i, %do.body62.i
  %retval.0.i = phi ptr [ %17, %free.i ], [ %call7.i.i.i, %do.body62.i ]
  %cmp.i99 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i99, label %mpls_add_dev.exit.if.then3_crit_edge, label %mpls_add_dev.exit.cleanup_crit_edge

mpls_add_dev.exit.cleanup_crit_edge:              ; preds = %mpls_add_dev.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

mpls_add_dev.exit.if.then3_crit_edge:             ; preds = %mpls_add_dev.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then3

if.then3:                                         ; preds = %mpls_add_dev.exit.if.then3_crit_edge, %if.end29.i.if.then3_crit_edge
  %retval.0.i135 = phi ptr [ %retval.0.i, %mpls_add_dev.exit.if.then3_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end29.i.if.then3_crit_edge ]
  %18 = ptrtoint ptr %retval.0.i135 to i32
  %sub.i = sub i32 1, %18
  %or.i = or i32 %sub.i, 32768
  br label %cleanup

if.end6:                                          ; preds = %entry
  %mpls_ptr.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 84
  %19 = ptrtoint ptr %mpls_ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %mpls_ptr.i, align 8
  %call.i102 = tail call zeroext i1 @lockdep_rtnl_is_held() #16
  br i1 %call.i102, label %if.end6.mpls_dev_get.exit_crit_edge, label %lor.lhs.false.i

if.end6.mpls_dev_get.exit_crit_edge:              ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %mpls_dev_get.exit

lor.lhs.false.i:                                  ; preds = %if.end6
  %call2.i = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i103 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i103, label %land.lhs.true.i, label %lor.lhs.false.i.mpls_dev_get.exit_crit_edge

lor.lhs.false.i.mpls_dev_get.exit_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mpls_dev_get.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.mpls_dev_get.exit_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.mpls_dev_get.exit_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mpls_dev_get.exit

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b10.i = load i1, ptr @mpls_dev_get.__warned, align 1
  br i1 %.b10.i, label %land.lhs.true5.i.mpls_dev_get.exit_crit_edge, label %if.then.i104

land.lhs.true5.i.mpls_dev_get.exit_crit_edge:     ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mpls_dev_get.exit

if.then.i104:                                     ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @mpls_dev_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 189, ptr noundef nonnull @.str.7) #16
  br label %mpls_dev_get.exit

mpls_dev_get.exit:                                ; preds = %if.then.i104, %land.lhs.true5.i.mpls_dev_get.exit_crit_edge, %land.lhs.true.i.mpls_dev_get.exit_crit_edge, %lor.lhs.false.i.mpls_dev_get.exit_crit_edge, %if.end6.mpls_dev_get.exit_crit_edge
  %tobool.not = icmp eq ptr %20, null
  br i1 %tobool.not, label %mpls_dev_get.exit.cleanup_crit_edge, label %if.end9

mpls_dev_get.exit.cleanup_crit_edge:              ; preds = %mpls_dev_get.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end9:                                          ; preds = %mpls_dev_get.exit
  %21 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %event, label %if.end9.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb15
    i32 4, label %sw.bb20
    i32 6, label %sw.bb32
    i32 11, label %sw.bb51
  ]

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb:                                            ; preds = %if.end9
  %call10 = tail call fastcc i32 @mpls_ifdown(ptr noundef %1, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %sw.bb.cleanup_crit_edge, label %if.then12

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then12:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i106 = sub i32 1, %call10
  %or.i107 = or i32 %sub.i106, 32768
  br label %cleanup

sw.bb15:                                          ; preds = %if.end9
  %call16 = tail call i32 @dev_get_flags(ptr noundef %1) #16
  %and = and i32 %call16, 65600
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @mpls_ifup(ptr noundef %1, i32 noundef 17)
  br label %cleanup

if.else:                                          ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @mpls_ifup(ptr noundef %1, i32 noundef 1)
  br label %cleanup

sw.bb20:                                          ; preds = %if.end9
  %call21 = tail call i32 @dev_get_flags(ptr noundef %1) #16
  %and22 = and i32 %call21, 65600
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.else25, label %if.then24

if.then24:                                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @mpls_ifup(ptr noundef %1, i32 noundef 17)
  br label %cleanup

if.else25:                                        ; preds = %sw.bb20
  %call26 = tail call fastcc i32 @mpls_ifdown(ptr noundef %1, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.else25.cleanup_crit_edge, label %if.then28

if.else25.cleanup_crit_edge:                      ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then28:                                        ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i110 = sub i32 1, %call26
  %or.i111 = or i32 %sub.i110, 32768
  br label %cleanup

sw.bb32:                                          ; preds = %if.end9
  %call33 = tail call fastcc i32 @mpls_ifdown(ptr noundef %1, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end37, label %if.then35

if.then35:                                        ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i114 = sub i32 1, %call33
  %or.i115 = or i32 %sub.i114, 32768
  br label %cleanup

if.end37:                                         ; preds = %sw.bb32
  %call38 = tail call fastcc ptr @mpls_dev_get(ptr noundef %1)
  %tobool39.not = icmp eq ptr %call38, null
  br i1 %tobool39.not, label %if.end37.cleanup_crit_edge, label %if.then40

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @mpls_dev_sysctl_unregister(ptr noundef %1, ptr noundef nonnull %call38)
  %22 = ptrtoint ptr %mpls_ptr.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr null, ptr %mpls_ptr.i, align 8
  %rcu = getelementptr inbounds %struct.mpls_dev, ptr %call38, i32 0, i32 4
  tail call void @call_rcu(ptr noundef %rcu, ptr noundef nonnull @mpls_dev_destroy_rcu) #16
  br label %cleanup

sw.bb51:                                          ; preds = %if.end9
  %23 = ptrtoint ptr %mpls_ptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %mpls_ptr.i, align 8
  %call.i118 = tail call zeroext i1 @lockdep_rtnl_is_held() #16
  br i1 %call.i118, label %sw.bb51.mpls_dev_get.exit128_crit_edge, label %lor.lhs.false.i121

sw.bb51.mpls_dev_get.exit128_crit_edge:           ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #18
  br label %mpls_dev_get.exit128

lor.lhs.false.i121:                               ; preds = %sw.bb51
  %call2.i119 = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i119)
  %tobool.not.i120 = icmp eq i32 %call2.i119, 0
  br i1 %tobool.not.i120, label %land.lhs.true.i124, label %lor.lhs.false.i121.mpls_dev_get.exit128_crit_edge

lor.lhs.false.i121.mpls_dev_get.exit128_crit_edge: ; preds = %lor.lhs.false.i121
  call void @__sanitizer_cov_trace_pc() #18
  br label %mpls_dev_get.exit128

land.lhs.true.i124:                               ; preds = %lor.lhs.false.i121
  %call3.i122 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i122)
  %tobool4.not.i123 = icmp eq i32 %call3.i122, 0
  br i1 %tobool4.not.i123, label %land.lhs.true.i124.mpls_dev_get.exit128_crit_edge, label %land.lhs.true5.i126

land.lhs.true.i124.mpls_dev_get.exit128_crit_edge: ; preds = %land.lhs.true.i124
  call void @__sanitizer_cov_trace_pc() #18
  br label %mpls_dev_get.exit128

land.lhs.true5.i126:                              ; preds = %land.lhs.true.i124
  %.b10.i125 = load i1, ptr @mpls_dev_get.__warned, align 1
  br i1 %.b10.i125, label %land.lhs.true5.i126.mpls_dev_get.exit128_crit_edge, label %if.then.i127

land.lhs.true5.i126.mpls_dev_get.exit128_crit_edge: ; preds = %land.lhs.true5.i126
  call void @__sanitizer_cov_trace_pc() #18
  br label %mpls_dev_get.exit128

if.then.i127:                                     ; preds = %land.lhs.true5.i126
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @mpls_dev_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 189, ptr noundef nonnull @.str.7) #16
  br label %mpls_dev_get.exit128

mpls_dev_get.exit128:                             ; preds = %if.then.i127, %land.lhs.true5.i126.mpls_dev_get.exit128_crit_edge, %land.lhs.true.i124.mpls_dev_get.exit128_crit_edge, %lor.lhs.false.i121.mpls_dev_get.exit128_crit_edge, %sw.bb51.mpls_dev_get.exit128_crit_edge
  %tobool53.not = icmp eq ptr %24, null
  br i1 %tobool53.not, label %mpls_dev_get.exit128.cleanup_crit_edge, label %if.then54

mpls_dev_get.exit128.cleanup_crit_edge:           ; preds = %mpls_dev_get.exit128
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then54:                                        ; preds = %mpls_dev_get.exit128
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 127
  %25 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %nd_net.i.i, align 4
  %sysctl.i = getelementptr inbounds %struct.mpls_dev, ptr %24, i32 0, i32 3
  %27 = ptrtoint ptr %sysctl.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sysctl.i, align 4
  %ctl_table_arg.i = getelementptr inbounds %struct.ctl_table_header, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %ctl_table_arg.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ctl_table_arg.i, align 4
  tail call void @unregister_net_sysctl_table(ptr noundef %28) #16
  tail call void @kfree(ptr noundef %30) #16
  tail call fastcc void @mpls_netconf_notify_devconf(ptr noundef %26, i32 noundef 81, i32 noundef 0, ptr noundef nonnull %24) #16
  %call55 = tail call fastcc i32 @mpls_dev_sysctl_register(ptr noundef %1, ptr noundef nonnull %24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.then54.cleanup_crit_edge, label %if.then57

if.then54.cleanup_crit_edge:                      ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then57:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i130 = sub i32 1, %call55
  %or.i131 = or i32 %sub.i130, 32768
  br label %cleanup

cleanup:                                          ; preds = %if.then57, %if.then54.cleanup_crit_edge, %mpls_dev_get.exit128.cleanup_crit_edge, %if.then40, %if.end37.cleanup_crit_edge, %if.then35, %if.then28, %if.else25.cleanup_crit_edge, %if.then24, %if.else, %if.then18, %if.then12, %sw.bb.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %mpls_dev_get.exit.cleanup_crit_edge, %if.then3, %mpls_add_dev.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %or.i, %if.then3 ], [ %or.i131, %if.then57 ], [ %or.i115, %if.then35 ], [ %or.i111, %if.then28 ], [ %or.i107, %if.then12 ], [ 1, %mpls_add_dev.exit.cleanup_crit_edge ], [ 1, %mpls_dev_get.exit.cleanup_crit_edge ], [ 1, %mpls_dev_get.exit128.cleanup_crit_edge ], [ 1, %if.then54.cleanup_crit_edge ], [ 1, %if.end37.cleanup_crit_edge ], [ 1, %if.then40 ], [ 1, %if.then24 ], [ 1, %if.else25.cleanup_crit_edge ], [ 1, %if.then18 ], [ 1, %if.else ], [ 1, %sw.bb.cleanup_crit_edge ], [ 1, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mpls_ifdown(ptr noundef readonly %dev, i32 noundef %event) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %0 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nd_net.i, align 4
  %call1 = tail call zeroext i1 @lockdep_rtnl_is_held() #16
  br i1 %call1, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b185 = load i1, ptr @mpls_ifdown.__warned, align 1
  br i1 %.b185, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @mpls_ifdown.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 1500, ptr noundef nonnull @.str.25) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %platform_label5 = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 49, i32 3
  %2 = ptrtoint ptr %platform_label5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_label5, align 4
  %platform_labels = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 49, i32 2
  %4 = ptrtoint ptr %platform_labels to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %platform_labels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp212.not = icmp eq i32 %5, 0
  br i1 %cmp212.not, label %do.end.cleanup132_crit_edge, label %for.body.lr.ph

do.end.cleanup132_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup132

for.body.lr.ph:                                   ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %event)
  %cmp22 = icmp eq i32 %event, 6
  br label %for.body

for.body:                                         ; preds = %for.inc129.for.body_crit_edge, %for.body.lr.ph
  %index.0213 = phi i32 [ 0, %for.body.lr.ph ], [ %inc130, %for.inc129.for.body_crit_edge ]
  %call8 = tail call zeroext i1 @lockdep_rtnl_is_held() #16
  br i1 %call8, label %for.body.do.end17_crit_edge, label %land.lhs.true9

for.body.do.end17_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end17

land.lhs.true9:                                   ; preds = %for.body
  %call10 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true9.do.end17_crit_edge, label %land.lhs.true12

land.lhs.true9.do.end17_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end17

land.lhs.true12:                                  ; preds = %land.lhs.true9
  %.b183184 = load i1, ptr @mpls_ifdown.__warned.49, align 1
  br i1 %.b183184, label %land.lhs.true12.do.end17_crit_edge, label %if.then14

land.lhs.true12.do.end17_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end17

if.then14:                                        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @mpls_ifdown.__warned.49, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 1502, ptr noundef nonnull @.str.25) #16
  br label %do.end17

do.end17:                                         ; preds = %if.then14, %land.lhs.true12.do.end17_crit_edge, %land.lhs.true9.do.end17_crit_edge, %for.body.do.end17_crit_edge
  %arrayidx = getelementptr ptr, ptr %3, i32 %index.0213
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool19.not = icmp eq ptr %7, null
  br i1 %tobool19.not, label %do.end17.for.inc129_crit_edge, label %if.end21

do.end17.for.inc129_crit_edge:                    ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc129

if.end21:                                         ; preds = %do.end17
  br i1 %cmp22, label %if.then23, label %if.end21.if.end63_crit_edge

if.end21.if.end63_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end63

if.then23:                                        ; preds = %if.end21
  %rt_nhn = getelementptr inbounds %struct.mpls_route, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %rt_nhn to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %rt_nhn, align 4
  %conv = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp25196.not = icmp eq i8 %9, 0
  br i1 %cmp25196.not, label %if.then23.for.end_crit_edge, label %for.body27.lr.ph

if.then23.for.end_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body27.lr.ph:                                 ; preds = %if.then23
  %rt_nh = getelementptr inbounds %struct.mpls_route, ptr %7, i32 0, i32 10
  %rt_nh_size = getelementptr inbounds %struct.mpls_route, ptr %7, i32 0, i32 7
  %10 = ptrtoint ptr %rt_nh_size to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %rt_nh_size, align 2
  %conv39 = zext i8 %11 to i32
  br label %for.body27

for.body27:                                       ; preds = %for.body27.for.body27_crit_edge, %for.body27.lr.ph
  %nh.0200 = phi ptr [ %rt_nh, %for.body27.lr.ph ], [ %add.ptr, %for.body27.for.body27_crit_edge ]
  %nhsel.0199 = phi i32 [ 0, %for.body27.lr.ph ], [ %inc40, %for.body27.for.body27_crit_edge ]
  %deleted.0198 = phi i8 [ 0, %for.body27.lr.ph ], [ %deleted.1, %for.body27.for.body27_crit_edge ]
  %nh_del.0197 = phi i8 [ 0, %for.body27.lr.ph ], [ %nh_del.1, %for.body27.for.body27_crit_edge ]
  %12 = ptrtoint ptr %nh.0200 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %nh.0200, align 4
  %tobool28.not = icmp eq ptr %13, null
  %cmp30 = icmp eq ptr %13, %dev
  %or.cond = or i1 %tobool28.not, %cmp30
  %inc = zext i1 %or.cond to i8
  %deleted.1 = add i8 %deleted.0198, %inc
  %nh_del.1 = select i1 %cmp30, i8 1, i8 %nh_del.0197
  %add.ptr = getelementptr i8, ptr %nh.0200, i32 %conv39
  %inc40 = add nuw nsw i32 %nhsel.0199, 1
  %exitcond.not = icmp eq i32 %inc40, %conv
  br i1 %exitcond.not, label %for.body27.for.end_crit_edge, label %for.body27.for.body27_crit_edge

for.body27.for.body27_crit_edge:                  ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body27

for.body27.for.end_crit_edge:                     ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.body27.for.end_crit_edge, %if.then23.for.end_crit_edge
  %nh_del.0.lcssa = phi i8 [ 0, %if.then23.for.end_crit_edge ], [ %nh_del.1, %for.body27.for.end_crit_edge ]
  %deleted.0.lcssa = phi i8 [ 0, %if.then23.for.end_crit_edge ], [ %deleted.1, %for.body27.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp1(i8 %deleted.0.lcssa, i8 %9)
  %cmp44 = icmp eq i8 %deleted.0.lcssa, %9
  br i1 %cmp44, label %for.end.for.inc129.sink.split_crit_edge, label %if.end47

for.end.for.inc129.sink.split_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc129.sink.split

if.end47:                                         ; preds = %for.end
  %14 = and i8 %nh_del.0.lcssa, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool48.not = icmp eq i8 %14, 0
  br i1 %tobool48.not, label %if.end47.cleanup60.thread_crit_edge, label %if.then49

if.end47.cleanup60.thread_crit_edge:              ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup60.thread

if.then49:                                        ; preds = %if.end47
  %rt_nh_size52 = getelementptr inbounds %struct.mpls_route, ptr %7, i32 0, i32 7
  %15 = ptrtoint ptr %rt_nh_size52 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %rt_nh_size52, align 2
  %conv53 = zext i8 %16 to i32
  %mul = mul nuw nsw i32 %conv53, %conv
  %add = add nuw nsw i32 %mul, 20
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #21
  %tobool55.not = icmp eq ptr %call9.i, null
  br i1 %tobool55.not, label %if.then49.cleanup132_crit_edge, label %if.end57

if.then49.cleanup132_crit_edge:                   ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup132

if.end57:                                         ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #18
  %17 = call ptr @memcpy(ptr %call9.i, ptr %7, i32 %add)
  br label %cleanup60.thread

cleanup60.thread:                                 ; preds = %if.end57, %if.end47.cleanup60.thread_crit_edge
  %rt.1.ph = phi ptr [ %call9.i, %if.end57 ], [ %7, %if.end47.cleanup60.thread_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %extract.t189 = icmp ne i8 %14, 0
  br label %if.end63

if.end63:                                         ; preds = %cleanup60.thread, %if.end21.if.end63_crit_edge
  %rt.2 = phi ptr [ %7, %if.end21.if.end63_crit_edge ], [ %rt.1.ph, %cleanup60.thread ]
  %nh_del.2.off0 = phi i1 [ false, %if.end21.if.end63_crit_edge ], [ %extract.t189, %cleanup60.thread ]
  %rt_nhn69 = getelementptr inbounds %struct.mpls_route, ptr %rt.2, i32 0, i32 5
  %18 = ptrtoint ptr %rt_nhn69 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %rt_nhn69, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp71205.not = icmp eq i8 %19, 0
  br i1 %cmp71205.not, label %if.end63.for.end111_crit_edge, label %for.body73.lr.ph

if.end63.for.end111_crit_edge:                    ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end111

for.body73.lr.ph:                                 ; preds = %if.end63
  %rt_nh66 = getelementptr inbounds %struct.mpls_route, ptr %rt.2, i32 0, i32 10
  %rt_nh_size107 = getelementptr inbounds %struct.mpls_route, ptr %rt.2, i32 0, i32 7
  br label %for.body73

for.body73:                                       ; preds = %next.for.body73_crit_edge, %for.body73.lr.ph
  %nh65.0208 = phi ptr [ %rt_nh66, %for.body73.lr.ph ], [ %add.ptr109, %next.for.body73_crit_edge ]
  %nhsel64.0207 = phi i32 [ 0, %for.body73.lr.ph ], [ %inc110, %next.for.body73_crit_edge ]
  %alive.0206 = phi i8 [ 0, %for.body73.lr.ph ], [ %spec.select, %next.for.body73_crit_edge ]
  %nh_flags74 = getelementptr inbounds %struct.mpls_nh, ptr %nh65.0208, i32 0, i32 1
  %20 = ptrtoint ptr %nh_flags74 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nh_flags74, align 4
  %22 = ptrtoint ptr %nh65.0208 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %nh65.0208, align 4
  %cmp76.not = icmp eq ptr %23, %dev
  br i1 %cmp76.not, label %if.end79, label %for.body73.next_crit_edge

for.body73.next_crit_edge:                        ; preds = %for.body73
  call void @__sanitizer_cov_trace_pc() #18
  br label %next

if.end79:                                         ; preds = %for.body73
  %24 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %event, label %if.end79.sw.epilog_crit_edge [
    i32 2, label %if.end79.sw.bb_crit_edge
    i32 6, label %if.end79.sw.bb_crit_edge217
    i32 4, label %if.end79.sw.bb80_crit_edge
  ]

if.end79.sw.bb80_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb80

if.end79.sw.bb_crit_edge217:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb

if.end79.sw.bb_crit_edge:                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb

if.end79.sw.epilog_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end79.sw.bb_crit_edge, %if.end79.sw.bb_crit_edge217
  %or = or i32 %21, 1
  br label %sw.bb80

sw.bb80:                                          ; preds = %sw.bb, %if.end79.sw.bb80_crit_edge
  %nh_flags.0 = phi i32 [ %21, %if.end79.sw.bb80_crit_edge ], [ %or, %sw.bb ]
  %or81 = or i32 %nh_flags.0, 16
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb80, %if.end79.sw.epilog_crit_edge
  %nh_flags.1 = phi i32 [ %21, %if.end79.sw.epilog_crit_edge ], [ %or81, %sw.bb80 ]
  br i1 %cmp22, label %if.then84, label %sw.epilog.if.end86_crit_edge

sw.epilog.if.end86_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end86

if.then84:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  %25 = ptrtoint ptr %nh65.0208 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %nh65.0208, align 4
  br label %if.end86

if.end86:                                         ; preds = %if.then84, %sw.epilog.if.end86_crit_edge
  %26 = ptrtoint ptr %nh_flags74 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nh_flags74, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %nh_flags.1)
  %cmp88.not = icmp eq i32 %27, %nh_flags.1
  br i1 %cmp88.not, label %if.end86.next_crit_edge, label %do.body95

if.end86.next_crit_edge:                          ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #18
  br label %next

do.body95:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #18
  %28 = ptrtoint ptr %nh_flags74 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile i32 %nh_flags.1, ptr %nh_flags74, align 4
  br label %next

next:                                             ; preds = %do.body95, %if.end86.next_crit_edge, %for.body73.next_crit_edge
  %nh_flags.2 = phi i32 [ %21, %for.body73.next_crit_edge ], [ %nh_flags.1, %do.body95 ], [ %nh_flags.1, %if.end86.next_crit_edge ]
  %and = and i32 %nh_flags.2, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool102.not = icmp eq i32 %and, 0
  %inc104 = zext i1 %tobool102.not to i8
  %spec.select = add i8 %alive.0206, %inc104
  %29 = ptrtoint ptr %rt_nh_size107 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %rt_nh_size107, align 2
  %conv108 = zext i8 %30 to i32
  %add.ptr109 = getelementptr i8, ptr %nh65.0208, i32 %conv108
  %inc110 = add nuw nsw i32 %nhsel64.0207, 1
  %31 = ptrtoint ptr %rt_nhn69 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %rt_nhn69, align 4
  %conv70 = zext i8 %32 to i32
  %cmp71 = icmp ult i32 %inc110, %conv70
  br i1 %cmp71, label %next.for.body73_crit_edge, label %next.for.end111_crit_edge

next.for.end111_crit_edge:                        ; preds = %next
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end111

next.for.body73_crit_edge:                        ; preds = %next
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body73

for.end111:                                       ; preds = %next.for.end111_crit_edge, %if.end63.for.end111_crit_edge
  %alive.0.lcssa = phi i8 [ 0, %if.end63.for.end111_crit_edge ], [ %spec.select, %next.for.end111_crit_edge ]
  %rt_nhn_alive = getelementptr inbounds %struct.mpls_route, ptr %rt.2, i32 0, i32 6
  %33 = ptrtoint ptr %rt_nhn_alive to i32
  call void @__asan_store1_noabort(i32 %33)
  store volatile i8 %alive.0.lcssa, ptr %rt_nhn_alive, align 1
  br i1 %nh_del.2.off0, label %for.end111.for.inc129.sink.split_crit_edge, label %for.end111.for.inc129_crit_edge

for.end111.for.inc129_crit_edge:                  ; preds = %for.end111
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc129

for.end111.for.inc129.sink.split_crit_edge:       ; preds = %for.end111
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc129.sink.split

for.inc129.sink.split:                            ; preds = %for.end111.for.inc129.sink.split_crit_edge, %for.end.for.inc129.sink.split_crit_edge
  %rt.2.sink = phi ptr [ %rt.2, %for.end111.for.inc129.sink.split_crit_edge ], [ null, %for.end.for.inc129.sink.split_crit_edge ]
  tail call fastcc void @mpls_route_update(ptr noundef %1, i32 noundef %index.0213, ptr noundef %rt.2.sink, ptr noundef null)
  br label %for.inc129

for.inc129:                                       ; preds = %for.inc129.sink.split, %for.end111.for.inc129_crit_edge, %do.end17.for.inc129_crit_edge
  %inc130 = add nuw i32 %index.0213, 1
  %34 = ptrtoint ptr %platform_labels to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %platform_labels, align 4
  %cmp = icmp ult i32 %inc130, %35
  br i1 %cmp, label %for.inc129.for.body_crit_edge, label %for.inc129.cleanup132_crit_edge

for.inc129.cleanup132_crit_edge:                  ; preds = %for.inc129
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup132

for.inc129.for.body_crit_edge:                    ; preds = %for.inc129
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

cleanup132:                                       ; preds = %for.inc129.cleanup132_crit_edge, %if.then49.cleanup132_crit_edge, %do.end.cleanup132_crit_edge
  %retval.6 = phi i32 [ 0, %do.end.cleanup132_crit_edge ], [ -12, %if.then49.cleanup132_crit_edge ], [ 0, %for.inc129.cleanup132_crit_edge ]
  ret i32 %retval.6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mpls_ifup(ptr noundef readonly %dev, i32 noundef %flags) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %0 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nd_net.i, align 4
  %call1 = tail call zeroext i1 @lockdep_rtnl_is_held() #16
  br i1 %call1, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b82 = load i1, ptr @mpls_ifup.__warned, align 1
  br i1 %.b82, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @mpls_ifup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 1578, ptr noundef nonnull @.str.25) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %platform_label5 = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 49, i32 3
  %2 = ptrtoint ptr %platform_label5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_label5, align 4
  %platform_labels = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 49, i32 2
  %4 = ptrtoint ptr %platform_labels to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %platform_labels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp89.not = icmp eq i32 %5, 0
  br i1 %cmp89.not, label %do.end.for.end62_crit_edge, label %for.body.lr.ph

do.end.for.end62_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end62

for.body.lr.ph:                                   ; preds = %do.end
  %neg = xor i32 %flags, -1
  br label %for.body

for.body:                                         ; preds = %cleanup57.for.body_crit_edge, %for.body.lr.ph
  %index.090 = phi i32 [ 0, %for.body.lr.ph ], [ %inc61, %cleanup57.for.body_crit_edge ]
  %call8 = tail call zeroext i1 @lockdep_rtnl_is_held() #16
  br i1 %call8, label %for.body.do.end17_crit_edge, label %land.lhs.true9

for.body.do.end17_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end17

land.lhs.true9:                                   ; preds = %for.body
  %call10 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true9.do.end17_crit_edge, label %land.lhs.true12

land.lhs.true9.do.end17_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end17

land.lhs.true12:                                  ; preds = %land.lhs.true9
  %.b8081 = load i1, ptr @mpls_ifup.__warned.50, align 1
  br i1 %.b8081, label %land.lhs.true12.do.end17_crit_edge, label %if.then14

land.lhs.true12.do.end17_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end17

if.then14:                                        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @mpls_ifup.__warned.50, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 1580, ptr noundef nonnull @.str.25) #16
  br label %do.end17

do.end17:                                         ; preds = %if.then14, %land.lhs.true12.do.end17_crit_edge, %land.lhs.true9.do.end17_crit_edge, %for.body.do.end17_crit_edge
  %arrayidx = getelementptr ptr, ptr %3, i32 %index.090
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool19.not = icmp eq ptr %7, null
  br i1 %tobool19.not, label %do.end17.cleanup57_crit_edge, label %if.end21

do.end17.cleanup57_crit_edge:                     ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup57

if.end21:                                         ; preds = %do.end17
  %rt_nhn = getelementptr inbounds %struct.mpls_route, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %rt_nhn to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %rt_nhn, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp2384.not = icmp eq i8 %9, 0
  br i1 %cmp2384.not, label %if.end21.for.end_crit_edge, label %for.body25.lr.ph

if.end21.for.end_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body25.lr.ph:                                 ; preds = %if.end21
  %rt_nh = getelementptr inbounds %struct.mpls_route, ptr %7, i32 0, i32 10
  %rt_nh_size = getelementptr inbounds %struct.mpls_route, ptr %7, i32 0, i32 7
  br label %for.body25

for.body25:                                       ; preds = %cleanup.for.body25_crit_edge, %for.body25.lr.ph
  %nh.087 = phi ptr [ %rt_nh, %for.body25.lr.ph ], [ %add.ptr, %cleanup.for.body25_crit_edge ]
  %nhsel.086 = phi i32 [ 0, %for.body25.lr.ph ], [ %inc47, %cleanup.for.body25_crit_edge ]
  %alive.085 = phi i8 [ 0, %for.body25.lr.ph ], [ %alive.1, %cleanup.for.body25_crit_edge ]
  %nh_flags26 = getelementptr inbounds %struct.mpls_nh, ptr %nh.087, i32 0, i32 1
  %10 = ptrtoint ptr %nh_flags26 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nh_flags26, align 4
  %and = and i32 %11, %flags
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool27.not = icmp eq i32 %and, 0
  br i1 %tobool27.not, label %if.then28, label %if.end29

if.then28:                                        ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #18
  %inc = add i8 %alive.085, 1
  br label %cleanup

if.end29:                                         ; preds = %for.body25
  %12 = ptrtoint ptr %nh.087 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %nh.087, align 4
  %cmp30.not = icmp eq ptr %13, %dev
  br i1 %cmp30.not, label %if.end33, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end33:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #18
  %inc34 = add i8 %alive.085, 1
  %and35 = and i32 %11, %neg
  %14 = ptrtoint ptr %nh_flags26 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 %and35, ptr %nh_flags26, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.end29.cleanup_crit_edge, %if.then28
  %alive.1 = phi i8 [ %inc34, %if.end33 ], [ %inc, %if.then28 ], [ %alive.085, %if.end29.cleanup_crit_edge ]
  %15 = ptrtoint ptr %rt_nh_size to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %rt_nh_size, align 2
  %conv46 = zext i8 %16 to i32
  %add.ptr = getelementptr i8, ptr %nh.087, i32 %conv46
  %inc47 = add nuw nsw i32 %nhsel.086, 1
  %17 = ptrtoint ptr %rt_nhn to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %rt_nhn, align 4
  %conv = zext i8 %18 to i32
  %cmp23 = icmp ult i32 %inc47, %conv
  br i1 %cmp23, label %cleanup.for.body25_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

cleanup.for.body25_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body25

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end21.for.end_crit_edge
  %alive.0.lcssa = phi i8 [ 0, %if.end21.for.end_crit_edge ], [ %alive.1, %cleanup.for.end_crit_edge ]
  %rt_nhn_alive = getelementptr inbounds %struct.mpls_route, ptr %7, i32 0, i32 6
  %19 = ptrtoint ptr %rt_nhn_alive to i32
  call void @__asan_store1_noabort(i32 %19)
  store volatile i8 %alive.0.lcssa, ptr %rt_nhn_alive, align 1
  br label %cleanup57

cleanup57:                                        ; preds = %for.end, %do.end17.cleanup57_crit_edge
  %inc61 = add nuw i32 %index.090, 1
  %20 = ptrtoint ptr %platform_labels to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %platform_labels, align 4
  %cmp = icmp ult i32 %inc61, %21
  br i1 %cmp, label %cleanup57.for.body_crit_edge, label %cleanup57.for.end62_crit_edge

cleanup57.for.end62_crit_edge:                    ; preds = %cleanup57
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end62

cleanup57.for.body_crit_edge:                     ; preds = %cleanup57
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end62:                                        ; preds = %cleanup57.for.end62_crit_edge, %do.end.for.end62_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mpls_dev_sysctl_unregister(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %mdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %0 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nd_net.i, align 4
  %sysctl = getelementptr inbounds %struct.mpls_dev, ptr %mdev, i32 0, i32 3
  %2 = ptrtoint ptr %sysctl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sysctl, align 4
  %ctl_table_arg = getelementptr inbounds %struct.ctl_table_header, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ctl_table_arg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctl_table_arg, align 4
  tail call void @unregister_net_sysctl_table(ptr noundef %3) #16
  tail call void @kfree(ptr noundef %5) #16
  tail call fastcc void @mpls_netconf_notify_devconf(ptr noundef %1, i32 noundef 81, i32 noundef 0, ptr noundef %mdev)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mpls_dev_destroy_rcu(ptr noundef %head) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %head, i32 -16
  %stats = getelementptr i8, ptr %head, i32 -8
  %0 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stats, align 4
  tail call void @free_percpu(ptr noundef %1) #16
  tail call void @kfree(ptr noundef %add.ptr) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mpls_dev_sysctl_register(ptr noundef %dev, ptr noundef %mdev) unnamed_addr #2 align 64 {
entry:
  %path = alloca [31 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 31, ptr nonnull %path) #16
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %0 = call ptr @memset(ptr %path, i32 255, i32 31)
  %1 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %nd_net.i, align 4
  %call1 = tail call ptr @kmemdup(ptr noundef nonnull @mpls_dev_table, i32 noundef 72, i32 noundef 3264) #16
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %data = getelementptr %struct.ctl_table, ptr %call1, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %5 = ptrtoint ptr %4 to i32
  %add.ptr = getelementptr i8, ptr %mdev, i32 %5
  store ptr %add.ptr, ptr %data, align 4
  %extra1 = getelementptr %struct.ctl_table, ptr %call1, i32 0, i32 7
  %6 = ptrtoint ptr %extra1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %mdev, ptr %extra1, align 4
  %extra2 = getelementptr %struct.ctl_table, ptr %call1, i32 0, i32 8
  %7 = ptrtoint ptr %extra2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %2, ptr %extra2, align 4
  %data.1 = getelementptr %struct.ctl_table, ptr %call1, i32 1, i32 1
  %8 = ptrtoint ptr %data.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.1, align 4
  %10 = ptrtoint ptr %9 to i32
  %add.ptr.1 = getelementptr i8, ptr %mdev, i32 %10
  store ptr %add.ptr.1, ptr %data.1, align 4
  %extra1.1 = getelementptr %struct.ctl_table, ptr %call1, i32 1, i32 7
  %11 = ptrtoint ptr %extra1.1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %mdev, ptr %extra1.1, align 4
  %extra2.1 = getelementptr %struct.ctl_table, ptr %call1, i32 1, i32 8
  %12 = ptrtoint ptr %extra2.1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %2, ptr %extra2.1, align 4
  %call7 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %path, i32 noundef 31, ptr noundef nonnull @.str.51, ptr noundef %dev)
  %call9 = call ptr @register_net_sysctl(ptr noundef %2, ptr noundef nonnull %path, ptr noundef nonnull %call1) #16
  %sysctl = getelementptr inbounds %struct.mpls_dev, ptr %mdev, i32 0, i32 3
  %13 = ptrtoint ptr %sysctl to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call9, ptr %sysctl, align 4
  %tobool11.not = icmp eq ptr %call9, null
  br i1 %tobool11.not, label %free, label %if.end13

if.end13:                                         ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #18
  call fastcc void @mpls_netconf_notify_devconf(ptr noundef %2, i32 noundef 80, i32 noundef -1, ptr noundef %mdev)
  br label %cleanup

free:                                             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #18
  call void @kfree(ptr noundef nonnull %call1) #16
  br label %cleanup

cleanup:                                          ; preds = %free, %if.end13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end13 ], [ -105, %entry.cleanup_crit_edge ], [ -105, %free ]
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %path) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_net_sysctl_table(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mpls_netconf_notify_devconf(ptr noundef %net, i32 noundef %event, i32 noundef %type, ptr nocapture noundef readonly %mdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %type, 1
  %switch.and.i = and i32 %0, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i)
  %switch.selectcmp.i = icmp eq i32 %switch.and.i, 0
  %sub.i.i = select i1 %switch.selectcmp.i, i32 36, i32 28
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef %sub.i.i, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #16
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.if.then28_crit_edge, label %if.end

entry.if.then28_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then28

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @mpls_netconf_fill_devconf(ptr noundef nonnull %call.i.i, ptr noundef %mdev, i32 noundef 0, i32 noundef 0, i32 noundef %event, i32 noundef 0, i32 noundef %type)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.then3, label %if.end26

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -90, i32 %call2)
  %cmp4 = icmp eq i32 %call2, -90
  br i1 %cmp4, label %do.end, label %if.then3.if.end19_crit_edge, !prof !220

if.then3.if.end19_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19

do.end:                                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1195, i32 noundef 9, ptr noundef null) #16
  br label %if.end19

if.end19:                                         ; preds = %do.end, %if.then3.if.end19_crit_edge
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #16
  br label %if.then28

if.end26:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @rtnl_notify(ptr noundef nonnull %call.i.i, ptr noundef %net, i32 noundef 0, i32 noundef 29, ptr noundef null, i32 noundef 3264) #16
  br label %cleanup

if.then28:                                        ; preds = %if.end19, %entry.if.then28_crit_edge
  %err.0 = phi i32 [ %call2, %if.end19 ], [ -105, %entry.if.then28_crit_edge ]
  tail call void @rtnl_set_sk_err(ptr noundef %net, i32 noundef 29, i32 noundef %err.0) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %if.end26
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @register_net_sysctl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mpls_conf_proc(ptr noundef %ctl, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ctl_table, ptr %ctl, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %call = tail call i32 @proc_dointvec(ptr noundef %ctl, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool.not = icmp eq i32 %write, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5

if.then:                                          ; preds = %entry
  %extra1 = getelementptr inbounds %struct.ctl_table, ptr %ctl, i32 0, i32 7
  %4 = ptrtoint ptr %extra1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %extra1, align 4
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %extra2 = getelementptr inbounds %struct.ctl_table, ptr %ctl, i32 0, i32 8
  %8 = ptrtoint ptr %extra2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %extra2, align 4
  %cmp = icmp eq ptr %7, %5
  br i1 %cmp, label %land.lhs.true, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5

land.lhs.true:                                    ; preds = %if.then
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %3)
  %cmp3.not = icmp eq i32 %11, %3
  br i1 %cmp3.not, label %land.lhs.true.if.end5_crit_edge, label %if.then4

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @mpls_netconf_notify_devconf(ptr noundef %9, i32 noundef 80, i32 noundef 7, ptr noundef %5)
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %land.lhs.true.if.end5_crit_edge, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mpls_net_init(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %mpls = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 49
  %platform_labels = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 49, i32 2
  %0 = ptrtoint ptr %platform_labels to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %platform_labels, align 4
  %platform_label = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 49, i32 3
  %1 = ptrtoint ptr %platform_label to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %platform_label, align 4
  %2 = ptrtoint ptr %mpls to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %mpls, align 4
  %default_ttl = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 49, i32 1
  %3 = ptrtoint ptr %default_ttl to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 255, ptr %default_ttl, align 4
  %call = tail call ptr @kmemdup(ptr noundef nonnull @mpls_table, i32 noundef 144, i32 noundef 3264) #16
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %data = getelementptr %struct.ctl_table, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %5 to i32
  %add.ptr = getelementptr i8, ptr %net, i32 %6
  store ptr %add.ptr, ptr %data, align 4
  %data.1 = getelementptr %struct.ctl_table, ptr %call, i32 1, i32 1
  %7 = ptrtoint ptr %data.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.1, align 4
  %9 = ptrtoint ptr %8 to i32
  %add.ptr.1 = getelementptr i8, ptr %net, i32 %9
  store ptr %add.ptr.1, ptr %data.1, align 4
  %data.2 = getelementptr %struct.ctl_table, ptr %call, i32 2, i32 1
  %10 = ptrtoint ptr %data.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.2, align 4
  %12 = ptrtoint ptr %11 to i32
  %add.ptr.2 = getelementptr i8, ptr %net, i32 %12
  store ptr %add.ptr.2, ptr %data.2, align 4
  %call7 = tail call ptr @register_net_sysctl(ptr noundef %net, ptr noundef nonnull @.str.53, ptr noundef nonnull %call) #16
  %ctl = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 49, i32 4
  %13 = ptrtoint ptr %ctl to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7, ptr %ctl, align 4
  %cmp11 = icmp eq ptr %call7, null
  br i1 %cmp11, label %if.then12, label %for.body.preheader.cleanup_crit_edge

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then12:                                        ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @kfree(ptr noundef nonnull %call) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %for.body.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then12 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %for.body.preheader.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mpls_net_exit(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %ctl = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 49, i32 4
  %0 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctl, align 4
  %ctl_table_arg = getelementptr inbounds %struct.ctl_table_header, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ctl_table_arg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctl_table_arg, align 4
  tail call void @unregister_net_sysctl_table(ptr noundef %1) #16
  tail call void @kfree(ptr noundef %3) #16
  tail call void @rtnl_lock() #16
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #16
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b48 = load i1, ptr @mpls_net_exit.__warned, align 1
  br i1 %.b48, label %land.lhs.true4.do.end_crit_edge, label %if.then

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @mpls_net_exit.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 2718, ptr noundef nonnull @.str.25) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %platform_label7 = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 49, i32 3
  %4 = ptrtoint ptr %platform_label7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_label7, align 4
  %platform_labels9 = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 49, i32 2
  %6 = ptrtoint ptr %platform_labels9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %platform_labels9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp49.not = icmp eq i32 %7, 0
  br i1 %cmp49.not, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %mpls_rt_free.exit.for.body_crit_edge, %do.end.for.body_crit_edge
  %index.050 = phi i32 [ %inc, %mpls_rt_free.exit.for.body_crit_edge ], [ 0, %do.end.for.body_crit_edge ]
  %call11 = tail call zeroext i1 @lockdep_rtnl_is_held() #16
  br i1 %call11, label %for.body.do.end20_crit_edge, label %land.lhs.true12

for.body.do.end20_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end20

land.lhs.true12:                                  ; preds = %for.body
  %call13 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %land.lhs.true12.do.end20_crit_edge, label %land.lhs.true15

land.lhs.true12.do.end20_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end20

land.lhs.true15:                                  ; preds = %land.lhs.true12
  %.b4647 = load i1, ptr @mpls_net_exit.__warned.57, align 1
  br i1 %.b4647, label %land.lhs.true15.do.end20_crit_edge, label %if.then17

land.lhs.true15.do.end20_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end20

if.then17:                                        ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @mpls_net_exit.__warned.57, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 2721, ptr noundef nonnull @.str.25) #16
  br label %do.end20

do.end20:                                         ; preds = %if.then17, %land.lhs.true15.do.end20_crit_edge, %land.lhs.true12.do.end20_crit_edge, %for.body.do.end20_crit_edge
  %arrayidx = getelementptr ptr, ptr %5, i32 %index.050
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  store volatile ptr null, ptr %arrayidx, align 4
  tail call fastcc void @mpls_notify_route(ptr noundef %net, i32 noundef %index.050, ptr noundef %9, ptr noundef null, ptr noundef null)
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %do.end20.mpls_rt_free.exit_crit_edge, label %do.end.i

do.end20.mpls_rt_free.exit_crit_edge:             ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #18
  br label %mpls_rt_free.exit

do.end.i:                                         ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @kvfree_call_rcu(ptr noundef nonnull %9, ptr noundef null) #16
  br label %mpls_rt_free.exit

mpls_rt_free.exit:                                ; preds = %do.end.i, %do.end20.mpls_rt_free.exit_crit_edge
  %inc = add nuw i32 %index.050, 1
  %exitcond.not = icmp eq i32 %inc, %7
  br i1 %exitcond.not, label %mpls_rt_free.exit.for.end_crit_edge, label %mpls_rt_free.exit.for.body_crit_edge

mpls_rt_free.exit.for.body_crit_edge:             ; preds = %mpls_rt_free.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

mpls_rt_free.exit.for.end_crit_edge:              ; preds = %mpls_rt_free.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %mpls_rt_free.exit.for.end_crit_edge, %do.end.for.end_crit_edge
  tail call void @rtnl_unlock() #16
  tail call void @kvfree(ptr noundef %5) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mpls_platform_labels(ptr nocapture noundef readonly %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #2 align 64 {
entry:
  %platform_labels = alloca i32, align 4
  %tmp = alloca %struct.ctl_table, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %platform_labels) #16
  %platform_labels1 = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 49, i32 2
  %2 = ptrtoint ptr %platform_labels1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %platform_labels1, align 4
  %4 = ptrtoint ptr %platform_labels to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %platform_labels, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %tmp) #16
  %5 = getelementptr inbounds i8, ptr %tmp, i32 12
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !234
  %7 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %table, align 4
  %9 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %tmp, align 4
  %data3 = getelementptr inbounds %struct.ctl_table, ptr %tmp, i32 0, i32 1
  %10 = ptrtoint ptr %data3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %platform_labels, ptr %data3, align 4
  %maxlen = getelementptr inbounds %struct.ctl_table, ptr %tmp, i32 0, i32 2
  %11 = ptrtoint ptr %maxlen to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4, ptr %maxlen, align 4
  %mode = getelementptr inbounds %struct.ctl_table, ptr %tmp, i32 0, i32 3
  %mode4 = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 3
  %12 = ptrtoint ptr %mode4 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %mode4, align 4
  %14 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %mode, align 4
  %child = getelementptr inbounds %struct.ctl_table, ptr %tmp, i32 0, i32 4
  %15 = ptrtoint ptr %child to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %child, align 4
  %proc_handler = getelementptr inbounds %struct.ctl_table, ptr %tmp, i32 0, i32 5
  %16 = ptrtoint ptr %proc_handler to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %proc_handler, align 4
  %poll = getelementptr inbounds %struct.ctl_table, ptr %tmp, i32 0, i32 6
  %17 = ptrtoint ptr %poll to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %poll, align 4
  %extra1 = getelementptr inbounds %struct.ctl_table, ptr %tmp, i32 0, i32 7
  %18 = ptrtoint ptr %extra1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr getelementptr inbounds ([0 x i32], ptr @sysctl_vals, i32 0, i32 1), ptr %extra1, align 4
  %extra2 = getelementptr inbounds %struct.ctl_table, ptr %tmp, i32 0, i32 8
  %19 = ptrtoint ptr %extra2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @label_limit, ptr %extra2, align 4
  %call = call i32 @proc_dointvec_minmax(ptr noundef nonnull %tmp, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool.not = icmp ne i32 %write, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  %20 = ptrtoint ptr %platform_labels to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %platform_labels, align 4
  %mul.i = shl i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %tobool.not.i = icmp eq i32 %mul.i, 0
  br i1 %tobool.not.i, label %if.then.if.end3.i_crit_edge, label %if.then.i

if.then.if.end3.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end3.i

if.then.i:                                        ; preds = %if.then
  %call.i.i.i = call noalias ptr @kvmalloc_node(i32 noundef %mul.i, i32 noundef 3520, i32 noundef -1) #21
  %tobool1.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool1.not.i, label %if.then.i.if.end_crit_edge, label %if.then.i.if.end3.i_crit_edge

if.then.i.if.end3.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end3.i

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end3.i:                                        ; preds = %if.then.i.if.end3.i_crit_edge, %if.then.if.end3.i_crit_edge
  %labels.0.i = phi ptr [ %call.i.i.i, %if.then.i.if.end3.i_crit_edge ], [ null, %if.then.if.end3.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.not.i = icmp eq i32 %21, 0
  br i1 %cmp.not.i, label %if.end3.i.if.end51.i_crit_edge, label %if.then4.i

if.end3.i.if.end51.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end51.i

if.then4.i:                                       ; preds = %if.end3.i
  %loopback_dev.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 27
  %22 = ptrtoint ptr %loopback_dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %loopback_dev.i, align 4
  %addr_len.i = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 56
  %24 = ptrtoint ptr %addr_len.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %addr_len.i, align 1
  %26 = add i8 %25, 15
  %conv6.i.i = and i8 %26, -4
  %conv8.i.i = zext i8 %conv6.i.i to i32
  %add10.i.i = add nuw nsw i32 %conv8.i.i, 20
  %call9.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add10.i.i, i32 noundef 3520) #21
  %tobool.not.i.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then4.i.nort0.i_crit_edge, label %mpls_rt_alloc.exit.i

if.then4.i.nort0.i_crit_edge:                     ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nort0.i

mpls_rt_alloc.exit.i:                             ; preds = %if.then4.i
  %rt_nhn.i.i = getelementptr inbounds %struct.mpls_route, ptr %call9.i.i.i.i, i32 0, i32 5
  %27 = ptrtoint ptr %rt_nhn.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %rt_nhn.i.i, align 4
  %rt_nhn_alive.i.i = getelementptr inbounds %struct.mpls_route, ptr %call9.i.i.i.i, i32 0, i32 6
  %28 = ptrtoint ptr %rt_nhn_alive.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %rt_nhn_alive.i.i, align 1
  %rt_nh_size.i.i = getelementptr inbounds %struct.mpls_route, ptr %call9.i.i.i.i, i32 0, i32 7
  %29 = ptrtoint ptr %rt_nh_size.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv6.i.i, ptr %rt_nh_size.i.i, align 2
  %rt_via_offset.i.i = getelementptr inbounds %struct.mpls_route, ptr %call9.i.i.i.i, i32 0, i32 8
  %30 = ptrtoint ptr %rt_via_offset.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 12, ptr %rt_via_offset.i.i, align 1
  %cmp.i.i = icmp ugt ptr %call9.i.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %mpls_rt_alloc.exit.i.nort0.i_crit_edge, label %if.end18.i

mpls_rt_alloc.exit.i.nort0.i_crit_edge:           ; preds = %mpls_rt_alloc.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nort0.i

if.end18.i:                                       ; preds = %mpls_rt_alloc.exit.i
  %rt_nh.i = getelementptr inbounds %struct.mpls_route, ptr %call9.i.i.i.i, i32 0, i32 10
  %31 = ptrtoint ptr %rt_nh.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %23, ptr %rt_nh.i, align 4
  %rt_protocol.i = getelementptr inbounds %struct.mpls_route, ptr %call9.i.i.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %rt_protocol.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 2, ptr %rt_protocol.i, align 8
  %rt_payload_type.i = getelementptr inbounds %struct.mpls_route, ptr %call9.i.i.i.i, i32 0, i32 2
  %33 = ptrtoint ptr %rt_payload_type.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 4, ptr %rt_payload_type.i, align 1
  %rt_ttl_propagate.i = getelementptr inbounds %struct.mpls_route, ptr %call9.i.i.i.i, i32 0, i32 4
  %34 = ptrtoint ptr %rt_ttl_propagate.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %rt_ttl_propagate.i, align 1
  %nh_via_table.i = getelementptr inbounds %struct.mpls_route, ptr %call9.i.i.i.i, i32 1, i32 3
  %35 = ptrtoint ptr %nh_via_table.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 3, ptr %nh_via_table.i, align 2
  %36 = ptrtoint ptr %addr_len.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %addr_len.i, align 1
  %nh_via_alen.i = getelementptr inbounds %struct.mpls_route, ptr %call9.i.i.i.i, i32 1, i32 2
  %38 = ptrtoint ptr %nh_via_alen.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %nh_via_alen.i, align 1
  %add.ptr.i.i = getelementptr %struct.mpls_route, ptr %call9.i.i.i.i, i32 1, i32 5
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 86
  %39 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev_addr.i, align 64
  %41 = load i8, ptr %addr_len.i, align 1
  %conv.i = zext i8 %41 to i32
  %42 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %40, i32 %conv.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp19.i = icmp ugt i32 %21, 2
  br i1 %cmp19.i, label %if.then21.i, label %if.end18.i.if.end51.i_crit_edge

if.end18.i.if.end51.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end51.i

if.then21.i:                                      ; preds = %if.end18.i
  %43 = ptrtoint ptr %loopback_dev.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %loopback_dev.i, align 4
  %addr_len24.i = getelementptr inbounds %struct.net_device, ptr %44, i32 0, i32 56
  %45 = ptrtoint ptr %addr_len24.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %addr_len24.i, align 1
  %47 = add i8 %46, 15
  %conv6.i224.i = and i8 %47, -4
  %conv8.i225.i = zext i8 %conv6.i224.i to i32
  %add10.i226.i = add nuw nsw i32 %conv8.i225.i, 20
  %call9.i.i.i236.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add10.i226.i, i32 noundef 3520) #21
  %tobool.not.i239.i = icmp eq ptr %call9.i.i.i236.i, null
  br i1 %tobool.not.i239.i, label %if.then21.i.mpls_rt_free.exit258.i_crit_edge, label %mpls_rt_alloc.exit247.i

if.then21.i.mpls_rt_free.exit258.i_crit_edge:     ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mpls_rt_free.exit258.i

mpls_rt_alloc.exit247.i:                          ; preds = %if.then21.i
  %rt_nhn.i241.i = getelementptr inbounds %struct.mpls_route, ptr %call9.i.i.i236.i, i32 0, i32 5
  %48 = ptrtoint ptr %rt_nhn.i241.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %rt_nhn.i241.i, align 4
  %rt_nhn_alive.i242.i = getelementptr inbounds %struct.mpls_route, ptr %call9.i.i.i236.i, i32 0, i32 6
  %49 = ptrtoint ptr %rt_nhn_alive.i242.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %rt_nhn_alive.i242.i, align 1
  %rt_nh_size.i243.i = getelementptr inbounds %struct.mpls_route, ptr %call9.i.i.i236.i, i32 0, i32 7
  %50 = ptrtoint ptr %rt_nh_size.i243.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv6.i224.i, ptr %rt_nh_size.i243.i, align 2
  %rt_via_offset.i244.i = getelementptr inbounds %struct.mpls_route, ptr %call9.i.i.i236.i, i32 0, i32 8
  %51 = ptrtoint ptr %rt_via_offset.i244.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 12, ptr %rt_via_offset.i244.i, align 1
  %cmp.i248.i = icmp ugt ptr %call9.i.i.i236.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i248.i, label %mpls_rt_alloc.exit247.i.mpls_rt_free.exit258.i_crit_edge, label %cleanup48.i

mpls_rt_alloc.exit247.i.mpls_rt_free.exit258.i_crit_edge: ; preds = %mpls_rt_alloc.exit247.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mpls_rt_free.exit258.i

cleanup48.i:                                      ; preds = %mpls_rt_alloc.exit247.i
  call void @__sanitizer_cov_trace_pc() #18
  %rt_nh29.i = getelementptr inbounds %struct.mpls_route, ptr %call9.i.i.i236.i, i32 0, i32 10
  %52 = ptrtoint ptr %rt_nh29.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %44, ptr %rt_nh29.i, align 4
  %rt_protocol32.i = getelementptr inbounds %struct.mpls_route, ptr %call9.i.i.i236.i, i32 0, i32 1
  %53 = ptrtoint ptr %rt_protocol32.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 2, ptr %rt_protocol32.i, align 8
  %rt_payload_type33.i = getelementptr inbounds %struct.mpls_route, ptr %call9.i.i.i236.i, i32 0, i32 2
  %54 = ptrtoint ptr %rt_payload_type33.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 6, ptr %rt_payload_type33.i, align 1
  %rt_ttl_propagate34.i = getelementptr inbounds %struct.mpls_route, ptr %call9.i.i.i236.i, i32 0, i32 4
  %55 = ptrtoint ptr %rt_ttl_propagate34.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %rt_ttl_propagate34.i, align 1
  %nh_via_table37.i = getelementptr inbounds %struct.mpls_route, ptr %call9.i.i.i236.i, i32 1, i32 3
  %56 = ptrtoint ptr %nh_via_table37.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 3, ptr %nh_via_table37.i, align 2
  %57 = ptrtoint ptr %addr_len24.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %addr_len24.i, align 1
  %nh_via_alen41.i = getelementptr inbounds %struct.mpls_route, ptr %call9.i.i.i236.i, i32 1, i32 2
  %59 = ptrtoint ptr %nh_via_alen41.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %nh_via_alen41.i, align 1
  %add.ptr.i251.i = getelementptr %struct.mpls_route, ptr %call9.i.i.i236.i, i32 1, i32 5
  %dev_addr45.i = getelementptr inbounds %struct.net_device, ptr %44, i32 0, i32 86
  %60 = ptrtoint ptr %dev_addr45.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev_addr45.i, align 64
  %62 = load i8, ptr %addr_len24.i, align 1
  %conv47.i = zext i8 %62 to i32
  %63 = call ptr @memcpy(ptr %add.ptr.i251.i, ptr %61, i32 %conv47.i)
  br label %if.end51.i

if.end51.i:                                       ; preds = %cleanup48.i, %if.end18.i.if.end51.i_crit_edge, %if.end3.i.if.end51.i_crit_edge
  %cmp19267.i = phi i1 [ false, %cleanup48.i ], [ true, %if.end18.i.if.end51.i_crit_edge ], [ true, %if.end3.i.if.end51.i_crit_edge ]
  %rt0.0266.i = phi ptr [ %call9.i.i.i.i, %cleanup48.i ], [ %call9.i.i.i.i, %if.end18.i.if.end51.i_crit_edge ], [ null, %if.end3.i.if.end51.i_crit_edge ]
  %rt2.0.i = phi ptr [ %call9.i.i.i236.i, %cleanup48.i ], [ null, %if.end18.i.if.end51.i_crit_edge ], [ null, %if.end3.i.if.end51.i_crit_edge ]
  call void @rtnl_lock() #16
  %call52.i = call zeroext i1 @lockdep_rtnl_is_held() #16
  br i1 %call52.i, label %if.end51.i.do.end.i_crit_edge, label %land.lhs.true.i

if.end51.i.do.end.i_crit_edge:                    ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %if.end51.i
  %call53.i = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %tobool54.not.i = icmp eq i32 %call53.i, 0
  br i1 %tobool54.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true55.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

land.lhs.true55.i:                                ; preds = %land.lhs.true.i
  %.b220.i = load i1, ptr @resize_platform_label_table.__warned, align 1
  br i1 %.b220.i, label %land.lhs.true55.i.do.end.i_crit_edge, label %if.then57.i

land.lhs.true55.i.do.end.i_crit_edge:             ; preds = %land.lhs.true55.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

if.then57.i:                                      ; preds = %land.lhs.true55.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @resize_platform_label_table.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 2563, ptr noundef nonnull @.str.25) #16
  br label %do.end.i

do.end.i:                                         ; preds = %if.then57.i, %land.lhs.true55.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %if.end51.i.do.end.i_crit_edge
  %platform_label.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 49, i32 3
  %64 = ptrtoint ptr %platform_label.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %platform_label.i, align 4
  %66 = ptrtoint ptr %platform_labels1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %platform_labels1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %21)
  %cmp60276.i = icmp ugt i32 %67, %21
  br i1 %cmp60276.i, label %do.end.i.for.body.i_crit_edge, label %do.end.i.for.end.i_crit_edge

do.end.i.for.end.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %index.0277.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ %21, %do.end.i.for.body.i_crit_edge ]
  call fastcc void @mpls_route_update(ptr noundef %1, i32 noundef %index.0277.i, ptr noundef null, ptr noundef null) #16
  %inc.i = add i32 %index.0277.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %67
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %do.end.i.for.end.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %21)
  %cmp62.i = icmp ult i32 %67, %21
  %mul65.i = shl i32 %67, 2
  %spec.select.i = select i1 %cmp62.i, i32 %mul65.i, i32 %mul.i
  %68 = call ptr @memcpy(ptr %labels.0.i, ptr %65, i32 %spec.select.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %67)
  %cmp67.i = icmp ugt i32 %67, 2
  %brmerge.i = or i1 %cmp19267.i, %cmp67.i
  br i1 %brmerge.i, label %for.end.i.if.end85.i_crit_edge, label %do.body78.i

for.end.i.if.end85.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end85.i

do.body78.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i = getelementptr ptr, ptr %labels.0.i, i32 2
  %69 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %rt2.0.i, ptr %arrayidx.i, align 4
  br label %if.end85.i

if.end85.i:                                       ; preds = %do.body78.i, %for.end.i.if.end85.i_crit_edge
  %rt2.1.i = phi ptr [ null, %do.body78.i ], [ %rt2.0.i, %for.end.i.if.end85.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp86.i = icmp ne i32 %67, 0
  %brmerge222.i = or i1 %cmp.not.i, %cmp86.i
  br i1 %brmerge222.i, label %if.end85.i.if.end105.i_crit_edge, label %do.body97.i

if.end85.i.if.end105.i_crit_edge:                 ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end105.i

do.body97.i:                                      ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #18
  %70 = ptrtoint ptr %labels.0.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %rt0.0266.i, ptr %labels.0.i, align 4
  br label %if.end105.i

if.end105.i:                                      ; preds = %do.body97.i, %if.end85.i.if.end105.i_crit_edge
  %rt0.1.i = phi ptr [ null, %do.body97.i ], [ %rt0.0266.i, %if.end85.i.if.end105.i_crit_edge ]
  %71 = ptrtoint ptr %platform_labels1 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %21, ptr %platform_labels1, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !254
  %72 = ptrtoint ptr %platform_label.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %labels.0.i, ptr %platform_label.i, align 4
  call void @rtnl_unlock() #16
  %tobool.not.i252.i = icmp eq ptr %rt2.1.i, null
  br i1 %tobool.not.i252.i, label %if.end105.i.mpls_rt_free.exit.i_crit_edge, label %do.end.i.i

if.end105.i.mpls_rt_free.exit.i_crit_edge:        ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mpls_rt_free.exit.i

do.end.i.i:                                       ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @kvfree_call_rcu(ptr noundef nonnull %rt2.1.i, ptr noundef null) #16
  br label %mpls_rt_free.exit.i

mpls_rt_free.exit.i:                              ; preds = %do.end.i.i, %if.end105.i.mpls_rt_free.exit.i_crit_edge
  %tobool.not.i253.i = icmp eq ptr %rt0.1.i, null
  br i1 %tobool.not.i253.i, label %mpls_rt_free.exit.i.mpls_rt_free.exit255.i_crit_edge, label %do.end.i254.i

mpls_rt_free.exit.i.mpls_rt_free.exit255.i_crit_edge: ; preds = %mpls_rt_free.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mpls_rt_free.exit255.i

do.end.i254.i:                                    ; preds = %mpls_rt_free.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @kvfree_call_rcu(ptr noundef nonnull %rt0.1.i, ptr noundef null) #16
  br label %mpls_rt_free.exit255.i

mpls_rt_free.exit255.i:                           ; preds = %do.end.i254.i, %mpls_rt_free.exit.i.mpls_rt_free.exit255.i_crit_edge
  %tobool150.not.i = icmp eq ptr %65, null
  br i1 %tobool150.not.i, label %mpls_rt_free.exit255.i.if.end_crit_edge, label %if.then151.i

mpls_rt_free.exit255.i.if.end_crit_edge:          ; preds = %mpls_rt_free.exit255.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then151.i:                                     ; preds = %mpls_rt_free.exit255.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @synchronize_rcu() #16
  call void @kvfree(ptr noundef nonnull %65) #16
  br label %if.end

mpls_rt_free.exit258.i:                           ; preds = %mpls_rt_alloc.exit247.i.mpls_rt_free.exit258.i_crit_edge, %if.then21.i.mpls_rt_free.exit258.i_crit_edge
  call void @kvfree_call_rcu(ptr noundef nonnull %call9.i.i.i.i, ptr noundef null) #16
  br label %nort0.i

nort0.i:                                          ; preds = %mpls_rt_free.exit258.i, %mpls_rt_alloc.exit.i.nort0.i_crit_edge, %if.then4.i.nort0.i_crit_edge
  call void @kvfree(ptr noundef %labels.0.i) #16
  br label %if.end

if.end:                                           ; preds = %nort0.i, %if.then151.i, %mpls_rt_free.exit255.i.if.end_crit_edge, %if.then.i.if.end_crit_edge, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call, %entry.if.end_crit_edge ], [ 0, %if.then151.i ], [ 0, %mpls_rt_free.exit255.i.if.end_crit_edge ], [ -12, %if.then.i.if.end_crit_edge ], [ -12, %nort0.i ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %tmp) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %platform_labels) #16
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_tunnel_encap_del_ops(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #15

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind allocsize(2) }
attributes #21 = { nounwind allocsize(0) }
attributes #22 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !35, !37, !39, !40, !41, !43, !44, !46, !47, !49, !50, !51, !52, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !92, !94, !96, !98, !100, !102, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !144, !146, !147, !148, !150, !151, !153, !155, !157, !159, !160, !161, !162, !164, !166, !168, !170, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205}
!llvm.named.register.sp = !{!207}
!llvm.module.flags = !{!208, !209, !210, !211, !212, !213, !214, !215}
!llvm.ident = !{!216}

!0 = !{ptr @__ksymtab_mpls_output_possible, !1, !"__ksymtab_mpls_output_possible", i1 false, i1 false}
!1 = !{!"../net/mpls/af_mpls.c", i32 93, i32 1}
!2 = !{ptr @__ksymtab_mpls_dev_mtu, !3, !"__ksymtab_mpls_dev_mtu", i1 false, i1 false}
!3 = !{!"../net/mpls/af_mpls.c", i32 117, i32 1}
!4 = !{ptr @__ksymtab_mpls_pkt_too_big, !5, !"__ksymtab_mpls_pkt_too_big", i1 false, i1 false}
!5 = !{!"../net/mpls/af_mpls.c", i32 129, i32 1}
!6 = !{ptr @__ksymtab_mpls_stats_inc_outucastpkts, !7, !"__ksymtab_mpls_stats_inc_outucastpkts", i1 false, i1 false}
!7 = !{!"../net/mpls/af_mpls.c", i32 154, i32 1}
!8 = !{ptr @__ksymtab_nla_put_labels, !9, !"__ksymtab_nla_put_labels", i1 false, i1 false}
!9 = !{!"../net/mpls/af_mpls.c", i32 1719, i32 1}
!10 = !{ptr @nla_get_labels.__msg, !11, !"__msg", i1 false, i1 false}
!11 = !{!"../net/mpls/af_mpls.c", i32 1734, i32 3}
!12 = !{ptr @nla_get_labels.__msg.1, !13, !"__msg", i1 false, i1 false}
!13 = !{!"../net/mpls/af_mpls.c", i32 1742, i32 3}
!14 = !{ptr @nla_get_labels.__msg.2, !15, !"__msg", i1 false, i1 false}
!15 = !{!"../net/mpls/af_mpls.c", i32 1760, i32 4}
!16 = !{ptr @nla_get_labels.__msg.3, !17, !"__msg", i1 false, i1 false}
!17 = !{!"../net/mpls/af_mpls.c", i32 1766, i32 4}
!18 = !{ptr @nla_get_labels.__msg.4, !19, !"__msg", i1 false, i1 false}
!19 = !{!"../net/mpls/af_mpls.c", i32 1774, i32 5}
!20 = !{ptr @nla_get_labels.__msg.5, !21, !"__msg", i1 false, i1 false}
!21 = !{!"../net/mpls/af_mpls.c", i32 1777, i32 5}
!22 = !{ptr @nla_get_labels.__msg.6, !23, !"__msg", i1 false, i1 false}
!23 = !{!"../net/mpls/af_mpls.c", i32 1789, i32 4}
!24 = !{ptr @__ksymtab_nla_get_labels, !25, !"__ksymtab_nla_get_labels", i1 false, i1 false}
!25 = !{!"../net/mpls/af_mpls.c", i32 1800, i32 1}
!26 = !{ptr @__initcall__kmod_mpls_router__604_2781_mpls_init6, !27, !"__initcall__kmod_mpls_router__604_2781_mpls_init6", i1 false, i1 false}
!27 = !{!"../net/mpls/af_mpls.c", i32 2781, i32 1}
!28 = !{ptr @__exitcall_mpls_exit, !29, !"__exitcall_mpls_exit", i1 false, i1 false}
!29 = !{!"../net/mpls/af_mpls.c", i32 2792, i32 1}
!30 = !{ptr @__UNIQUE_ID_description605, !31, !"__UNIQUE_ID_description605", i1 false, i1 false}
!31 = !{!"../net/mpls/af_mpls.c", i32 2794, i32 1}
!32 = !{ptr @__UNIQUE_ID_file606, !33, !"__UNIQUE_ID_file606", i1 false, i1 false}
!33 = !{!"../net/mpls/af_mpls.c", i32 2795, i32 1}
!34 = !{ptr @__UNIQUE_ID_license607, !33, !"__UNIQUE_ID_license607", i1 false, i1 false}
!35 = !{ptr @__UNIQUE_ID_alias608, !36, !"__UNIQUE_ID_alias608", i1 false, i1 false}
!36 = !{!"../net/mpls/af_mpls.c", i32 2796, i32 1}
!37 = distinct !{null, !38, !"__warned", i1 false, i1 false}
!38 = !{!"../net/mpls/internal.h", i32 189, i32 9}
!39 = !{ptr @.str, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.7, !38, !"<string literal>", i1 false, i1 false}
!41 = distinct !{null, !42, !"__already_done", i1 false, i1 false}
!42 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!43 = !{ptr @.str.8, !42, !"<string literal>", i1 false, i1 false}
!44 = distinct !{null, !45, !"__warned", i1 false, i1 false}
!45 = !{!"../include/net/addrconf.h", i32 313, i32 9}
!46 = !{ptr @.str.9, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.10, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../net/mpls/af_mpls.c", i32 2771, i32 3}
!49 = !{ptr @.str.11, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.12, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @mpls_init._entry, !48, !"_entry", i1 false, i1 false}
!52 = !{ptr @mpls_init._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @rtm_to_route_config.__msg, !54, !"__msg", i1 false, i1 false}
!54 = !{!"../net/mpls/af_mpls.c", i32 1821, i32 3}
!55 = !{ptr @rtm_to_route_config.__msg.13, !56, !"__msg", i1 false, i1 false}
!56 = !{!"../net/mpls/af_mpls.c", i32 1825, i32 3}
!57 = !{ptr @rtm_to_route_config.__msg.14, !58, !"__msg", i1 false, i1 false}
!58 = !{!"../net/mpls/af_mpls.c", i32 1829, i32 3}
!59 = !{ptr @rtm_to_route_config.__msg.15, !60, !"__msg", i1 false, i1 false}
!60 = !{!"../net/mpls/af_mpls.c", i32 1833, i32 3}
!61 = !{ptr @rtm_to_route_config.__msg.16, !62, !"__msg", i1 false, i1 false}
!62 = !{!"../net/mpls/af_mpls.c", i32 1837, i32 3}
!63 = !{ptr @rtm_to_route_config.__msg.17, !64, !"__msg", i1 false, i1 false}
!64 = !{!"../net/mpls/af_mpls.c", i32 1848, i32 3}
!65 = !{ptr @rtm_to_route_config.__msg.18, !66, !"__msg", i1 false, i1 false}
!66 = !{!"../net/mpls/af_mpls.c", i32 1853, i32 3}
!67 = !{ptr @rtm_to_route_config.__msg.19, !68, !"__msg", i1 false, i1 false}
!68 = !{!"../net/mpls/af_mpls.c", i32 1858, i32 3}
!69 = !{ptr @rtm_to_route_config.__msg.20, !70, !"__msg", i1 false, i1 false}
!70 = !{!"../net/mpls/af_mpls.c", i32 1899, i32 4}
!71 = !{ptr @rtm_to_route_config.__msg.21, !72, !"__msg", i1 false, i1 false}
!72 = !{!"../net/mpls/af_mpls.c", i32 1920, i32 5}
!73 = !{ptr @rtm_to_route_config.__msg.22, !74, !"__msg", i1 false, i1 false}
!74 = !{!"../net/mpls/af_mpls.c", i32 1930, i32 4}
!75 = !{ptr @__nlmsg_parse.__msg, !76, !"__msg", i1 false, i1 false}
!76 = !{!"../include/net/netlink.h", i32 729, i32 3}
!77 = !{ptr @rtm_mpls_policy, !78, !"rtm_mpls_policy", i1 false, i1 false}
!78 = !{!"../net/mpls/af_mpls.c", i32 484, i32 32}
!79 = !{ptr @mpls_label_ok.__msg, !80, !"__msg", i1 false, i1 false}
!80 = !{!"../net/mpls/af_mpls.c", i32 946, i32 3}
!81 = !{ptr @mpls_label_ok.__msg.23, !82, !"__msg", i1 false, i1 false}
!82 = !{!"../net/mpls/af_mpls.c", i32 953, i32 3}
!83 = !{ptr @nla_get_via.__msg, !84, !"__msg", i1 false, i1 false}
!84 = !{!"../net/mpls/af_mpls.c", i32 727, i32 3}
!85 = !{ptr @nla_get_via.__msg.24, !86, !"__msg", i1 false, i1 false}
!86 = !{!"../net/mpls/af_mpls.c", i32 734, i32 3}
!87 = !{ptr @mpls_route_add.__msg, !88, !"__msg", i1 false, i1 false}
!88 = !{!"../net/mpls/af_mpls.c", i32 988, i32 3}
!89 = distinct !{null, !90, !"__warned", i1 false, i1 false}
!90 = !{!"../net/mpls/af_mpls.c", i32 993, i32 19}
!91 = !{ptr @.str.25, !90, !"<string literal>", i1 false, i1 false}
!92 = distinct !{null, !93, !"__warned", i1 false, i1 false}
!93 = !{!"../net/mpls/af_mpls.c", i32 994, i32 8}
!94 = !{ptr @mpls_route_add.__msg.27, !95, !"__msg", i1 false, i1 false}
!95 = !{!"../net/mpls/af_mpls.c", i32 1018, i32 3}
!96 = distinct !{null, !97, !"__warned", i1 false, i1 false}
!97 = !{!"../net/mpls/af_mpls.c", i32 577, i32 19}
!98 = distinct !{null, !99, !"__warned", i1 false, i1 false}
!99 = !{!"../net/mpls/af_mpls.c", i32 581, i32 8}
!100 = distinct !{null, !101, !"__already_done", i1 false, i1 false}
!101 = !{!"../net/mpls/af_mpls.c", i32 559, i32 2}
!102 = !{ptr @.str.29, !101, !"<string literal>", i1 false, i1 false}
!103 = distinct !{null, !104, !"__warned", i1 false, i1 false}
!104 = !{!"../net/mpls/af_mpls.c", i32 561, i32 19}
!105 = distinct !{null, !106, !"__warned", i1 false, i1 false}
!106 = !{!"../net/mpls/af_mpls.c", i32 562, i32 7}
!107 = !{ptr @nla_put_via.table_to_family, !108, !"table_to_family", i1 false, i1 false}
!108 = !{!"../net/mpls/af_mpls.c", i32 1679, i32 19}
!109 = !{ptr @.str.31, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../include/net/netlink.h", i32 991, i32 3}
!111 = !{ptr @mpls_valid_getroute_req.__msg, !112, !"__msg", i1 false, i1 false}
!112 = !{!"../net/mpls/af_mpls.c", i32 2304, i32 3}
!113 = !{ptr @mpls_valid_getroute_req.__msg.32, !114, !"__msg", i1 false, i1 false}
!114 = !{!"../net/mpls/af_mpls.c", i32 2317, i32 3}
!115 = !{ptr @mpls_valid_getroute_req.__msg.33, !116, !"__msg", i1 false, i1 false}
!116 = !{!"../net/mpls/af_mpls.c", i32 2321, i32 3}
!117 = !{ptr @mpls_valid_getroute_req.__msg.34, !118, !"__msg", i1 false, i1 false}
!118 = !{!"../net/mpls/af_mpls.c", i32 2332, i32 3}
!119 = !{ptr @mpls_valid_getroute_req.__msg.35, !120, !"__msg", i1 false, i1 false}
!120 = !{!"../net/mpls/af_mpls.c", i32 2345, i32 4}
!121 = distinct !{null, !122, !"__warned", i1 false, i1 false}
!122 = !{!"../net/mpls/af_mpls.c", i32 83, i32 4}
!123 = distinct !{null, !124, !"__warned", i1 false, i1 false}
!124 = !{!"../net/mpls/af_mpls.c", i32 84, i32 8}
!125 = distinct !{null, !126, !"__already_done", i1 false, i1 false}
!126 = !{!"../net/mpls/af_mpls.c", i32 2182, i32 2}
!127 = distinct !{null, !128, !"__warned", i1 false, i1 false}
!128 = !{!"../net/mpls/af_mpls.c", i32 2204, i32 19}
!129 = distinct !{null, !130, !"__warned", i1 false, i1 false}
!130 = !{!"../net/mpls/af_mpls.c", i32 2213, i32 8}
!131 = !{ptr @mpls_netconf_valid_get_req.__msg, !132, !"__msg", i1 false, i1 false}
!132 = !{!"../net/mpls/af_mpls.c", i32 1219, i32 3}
!133 = !{ptr @mpls_netconf_valid_get_req.__msg.38, !134, !"__msg", i1 false, i1 false}
!134 = !{!"../net/mpls/af_mpls.c", i32 1243, i32 4}
!135 = !{ptr @devconf_mpls_policy, !136, !"devconf_mpls_policy", i1 false, i1 false}
!136 = !{!"../net/mpls/af_mpls.c", i32 1207, i32 32}
!137 = !{ptr @mpls_netconf_dump_devconf.__msg, !138, !"__msg", i1 false, i1 false}
!138 = !{!"../net/mpls/af_mpls.c", i32 1316, i32 4}
!139 = !{ptr @mpls_netconf_dump_devconf.__msg.39, !140, !"__msg", i1 false, i1 false}
!140 = !{!"../net/mpls/af_mpls.c", i32 1321, i32 4}
!141 = distinct !{null, !142, !"__warned", i1 false, i1 false}
!142 = !{!"../net/mpls/af_mpls.c", i32 1334, i32 3}
!143 = !{ptr @.str.40, !142, !"<string literal>", i1 false, i1 false}
!144 = distinct !{null, !145, !"__warned", i1 false, i1 false}
!145 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!146 = !{ptr @.str.41, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @.str.42, !145, !"<string literal>", i1 false, i1 false}
!148 = distinct !{null, !149, !"__warned", i1 false, i1 false}
!149 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!150 = !{ptr @.str.43, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @mpls_iptun_ops, !152, !"mpls_iptun_ops", i1 false, i1 false}
!152 = !{!"../net/mpls/af_mpls.c", i32 49, i32 41}
!153 = !{ptr @mpls_af_ops, !154, !"mpls_af_ops", i1 false, i1 false}
!154 = !{!"../net/mpls/af_mpls.c", i32 2736, i32 27}
!155 = !{ptr @mpls_packet_type, !156, !"mpls_packet_type", i1 false, i1 false}
!156 = !{!"../net/mpls/af_mpls.c", i32 479, i32 27}
!157 = !{ptr @.str.44, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../net/mpls/af_mpls.c", i32 463, i32 3}
!159 = !{ptr @.str.45, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @.str.46, !158, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @mpls_forward.descriptor, !158, !"descriptor", i1 false, i1 false}
!162 = distinct !{null, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../include/linux/skbuff.h", i32 1810, i32 2}
!164 = !{ptr @mpls_dev_notifier, !165, !"mpls_dev_notifier", i1 false, i1 false}
!165 = !{!"../net/mpls/af_mpls.c", i32 1672, i32 30}
!166 = distinct !{null, !167, !"__already_done", i1 false, i1 false}
!167 = !{!"../net/mpls/af_mpls.c", i32 1453, i32 2}
!168 = !{ptr @mpls_add_dev.__key, !169, !"__key", i1 false, i1 false}
!169 = !{!"../net/mpls/af_mpls.c", i32 1467, i32 3}
!170 = !{ptr @.str.48, !169, !"<string literal>", i1 false, i1 false}
!171 = distinct !{null, !172, !"__warned", i1 false, i1 false}
!172 = !{!"../net/mpls/af_mpls.c", i32 1500, i32 19}
!173 = distinct !{null, !174, !"__warned", i1 false, i1 false}
!174 = !{!"../net/mpls/af_mpls.c", i32 1502, i32 27}
!175 = distinct !{null, !176, !"__warned", i1 false, i1 false}
!176 = !{!"../net/mpls/af_mpls.c", i32 1578, i32 19}
!177 = distinct !{null, !178, !"__warned", i1 false, i1 false}
!178 = !{!"../net/mpls/af_mpls.c", i32 1580, i32 27}
!179 = !{ptr @.str.51, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../net/mpls/af_mpls.c", i32 1419, i32 31}
!181 = !{ptr @.str.52, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../net/mpls/af_mpls.c", i32 1389, i32 15}
!183 = !{ptr @mpls_dev_table, !184, !"mpls_dev_table", i1 false, i1 false}
!184 = !{!"../net/mpls/af_mpls.c", i32 1387, i32 31}
!185 = !{ptr @mpls_net_ops, !186, !"mpls_net_ops", i1 false, i1 false}
!186 = !{!"../net/mpls/af_mpls.c", i32 2731, i32 33}
!187 = !{ptr @.str.53, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../net/mpls/af_mpls.c", i32 2688, i32 43}
!189 = !{ptr @.str.54, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../net/mpls/af_mpls.c", i32 2641, i32 15}
!191 = !{ptr @.str.55, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../net/mpls/af_mpls.c", i32 2648, i32 15}
!193 = !{ptr @.str.56, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../net/mpls/af_mpls.c", i32 2657, i32 15}
!195 = !{ptr @mpls_table, !196, !"mpls_table", i1 false, i1 false}
!196 = !{!"../net/mpls/af_mpls.c", i32 2639, i32 31}
!197 = !{ptr @label_limit, !198, !"label_limit", i1 false, i1 false}
!198 = !{!"../net/mpls/af_mpls.c", i32 40, i32 12}
!199 = distinct !{null, !200, !"__warned", i1 false, i1 false}
!200 = !{!"../net/mpls/af_mpls.c", i32 2563, i32 8}
!201 = !{ptr @ttl_max, !202, !"ttl_max", i1 false, i1 false}
!202 = !{!"../net/mpls/af_mpls.c", i32 41, i32 12}
!203 = distinct !{null, !204, !"__warned", i1 false, i1 false}
!204 = !{!"../net/mpls/af_mpls.c", i32 2718, i32 19}
!205 = distinct !{null, !206, !"__warned", i1 false, i1 false}
!206 = !{!"../net/mpls/af_mpls.c", i32 2721, i32 27}
!207 = !{!"sp"}
!208 = !{i32 1, !"wchar_size", i32 2}
!209 = !{i32 1, !"min_enum_size", i32 4}
!210 = !{i32 8, !"branch-target-enforcement", i32 0}
!211 = !{i32 8, !"sign-return-address", i32 0}
!212 = !{i32 8, !"sign-return-address-all", i32 0}
!213 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!214 = !{i32 7, !"uwtable", i32 1}
!215 = !{i32 7, !"frame-pointer", i32 2}
!216 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!217 = !{i64 2150325488}
!218 = !{i64 804313, i64 804374}
!219 = !{i64 807045}
!220 = !{!"branch_weights", i32 1, i32 2000}
!221 = !{i64 807330}
!222 = !{i64 2150217090}
!223 = !{i64 2150222024}
!224 = !{i64 2150243742}
!225 = !{i64 2150248636}
!226 = !{!"branch_weights", i32 2000, i32 1}
!227 = !{i64 2150325163}
!228 = distinct !{!228, !229}
!229 = !{!"llvm.loop.peeled.count", i32 1}
!230 = !{!231}
!231 = distinct !{!231, !232, !"mpls_entry_decode: %agg.result"}
!232 = distinct !{!232, !"mpls_entry_decode"}
!233 = !{i64 859837, i64 859854}
!234 = !{!"auto-init"}
!235 = distinct !{!235, !229}
!236 = !{i8 0, i8 2}
!237 = !{i64 2149708469}
!238 = !{i64 2149708735}
!239 = !{i64 2158047787}
!240 = !{!241}
!241 = distinct !{!241, !242, !"mpls_entry_decode: %agg.result"}
!242 = distinct !{!242, !"mpls_entry_decode"}
!243 = !{i64 2154956450}
!244 = !{i64 2154956292}
!245 = !{i64 2154956620}
!246 = !{i64 2150324838}
!247 = !{!248}
!248 = distinct !{!248, !249, !"mpls_entry_decode: %agg.result"}
!249 = distinct !{!249, !"mpls_entry_decode"}
!250 = !{i64 2154642681, i64 2154643169, i64 2154642718, i64 2154642774, i64 2154642808, i64 2154642832, i64 2154642873, i64 2154642894, i64 2154642922, i64 2154642956}
!251 = distinct !{!251, !229}
!252 = !{i64 2148893647, i64 2148893652, i64 2148893665, i64 2148893709, i64 2148893743, i64 2148893764}
!253 = !{i64 2158102121}
!254 = !{i64 2158151327}
