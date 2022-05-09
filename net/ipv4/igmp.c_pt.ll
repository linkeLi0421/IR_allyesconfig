; ModuleID = '/llk/IR_all_yes/net/ipv4/igmp.c_pt.bc'
source_filename = "../net/ipv4/igmp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+__ip_mc_inc_group\22, \22a\22\09"
module asm "\09.weak\09__crc___ip_mc_inc_group\09\09\09\09"
module asm "\09.long\09__crc___ip_mc_inc_group\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___ip_mc_inc_group:\09\09\09\09\09"
module asm "\09.asciz \09\22__ip_mc_inc_group\22\09\09\09\09\09"
module asm "__kstrtabns___ip_mc_inc_group:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ip_mc_inc_group\22, \22a\22\09"
module asm "\09.weak\09__crc_ip_mc_inc_group\09\09\09\09"
module asm "\09.long\09__crc_ip_mc_inc_group\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_mc_inc_group:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_mc_inc_group\22\09\09\09\09\09"
module asm "__kstrtabns_ip_mc_inc_group:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ip_mc_check_igmp\22, \22a\22\09"
module asm "\09.weak\09__crc_ip_mc_check_igmp\09\09\09\09"
module asm "\09.long\09__crc_ip_mc_check_igmp\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_mc_check_igmp:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_mc_check_igmp\22\09\09\09\09\09"
module asm "__kstrtabns_ip_mc_check_igmp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__ip_mc_dec_group\22, \22a\22\09"
module asm "\09.weak\09__crc___ip_mc_dec_group\09\09\09\09"
module asm "\09.long\09__crc___ip_mc_dec_group\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___ip_mc_dec_group:\09\09\09\09\09"
module asm "\09.asciz \09\22__ip_mc_dec_group\22\09\09\09\09\09"
module asm "__kstrtabns___ip_mc_dec_group:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ip_mc_join_group\22, \22a\22\09"
module asm "\09.weak\09__crc_ip_mc_join_group\09\09\09\09"
module asm "\09.long\09__crc_ip_mc_join_group\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_mc_join_group:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_mc_join_group\22\09\09\09\09\09"
module asm "__kstrtabns_ip_mc_join_group:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ip_mc_leave_group\22, \22a\22\09"
module asm "\09.weak\09__crc_ip_mc_leave_group\09\09\09\09"
module asm "\09.long\09__crc_ip_mc_leave_group\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_mc_leave_group:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_mc_leave_group\22\09\09\09\09\09"
module asm "__kstrtabns_ip_mc_leave_group:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.7 }
%union.anon.7 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%struct.sk_buff = type { %union.anon, %union.anon.126, %union.anon.127, [48 x i8], %union.anon.128, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.130, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%union.anon.126 = type { ptr }
%union.anon.127 = type { i64 }
%union.anon.128 = type { %struct.anon.129 }
%struct.anon.129 = type { i32, ptr }
%union.anon.130 = type { %struct.anon.131 }
%struct.anon.131 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.132, i32, i32, i32, i16, i16, %union.anon.134, i32, %union.anon.135, %union.anon.136, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.132 = type { i32 }
%union.anon.134 = type { i32 }
%union.anon.135 = type { i32 }
%union.anon.136 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.125, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.125 = type { ptr }
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
%struct.igmphdr = type { i8, i8, i16, i32 }
%struct.in_device = type { ptr, ptr, %struct.refcount_struct, i32, ptr, ptr, ptr, i32, %struct.spinlock, ptr, i32, i32, i32, i32, i32, i8, i8, i32, %struct.timer_list, %struct.timer_list, ptr, %struct.ipv4_devconf, %struct.callback_head }
%struct.ipv4_devconf = type { ptr, [33 x i32], [2 x i32] }
%struct.callback_head = type { ptr, ptr }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.97, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.97 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.95, i32, %struct.spinlock }
%union.anon.95 = type { %struct.anon.96 }
%struct.anon.96 = type { ptr, ptr }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.igmpv3_query = type { i8, i8, i16, i32, i8, i8, i16, [0 x i32] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ip_mc_list = type { ptr, i32, i32, ptr, ptr, [2 x i32], %union.anon.124, ptr, %struct.timer_list, i32, %struct.refcount_struct, %struct.spinlock, i8, i8, i8, i8, i8, i8, %struct.callback_head }
%union.anon.124 = type { ptr }
%struct.ip_sf_list = type { ptr, [2 x i32], i32, i8, i8, i8 }
%struct.rtable = type { %struct.dst_entry, i32, i32, i16, i8, i8, i32, i8, %union.anon.147, i32, %struct.list_head, ptr }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%union.anon.147 = type { %struct.in6_addr }
%struct.in6_addr = type { %union.anon.27 }
%union.anon.27 = type { [4 x i32] }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.sock_common = type { %union.anon.98, %union.anon.100, %union.anon.101, i16, i8, i8, i32, %union.anon.103, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.106, [0 x i32], %union.anon.107, i16, i16, %union.anon.108, %struct.refcount_struct, [0 x i32], %union.anon.109 }
%union.anon.98 = type { i64 }
%union.anon.100 = type { i32 }
%union.anon.101 = type { i32 }
%union.anon.103 = type { %struct.hlist_node }
%struct.atomic64_t = type { i64 }
%union.anon.106 = type { i32 }
%union.anon.107 = type { %struct.hlist_node }
%union.anon.108 = type { i32 }
%union.anon.109 = type { i32 }
%struct.ip_mreqn = type { %struct.in_addr, %struct.in_addr, i32 }
%struct.in_addr = type { i32 }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.110, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.111, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.112, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.110 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.111 = type { ptr }
%union.anon.112 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.22 }
%union.anon.22 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.ip_mc_socklist = type { ptr, %struct.ip_mreqn, i32, ptr, %struct.callback_head }
%struct.flowi4 = type { %struct.flowi_common, i32, i32, %union.flowi_uli }
%struct.ip_sf_socklist = type { i32, i32, %struct.callback_head, [0 x i32] }
%struct.ip_mreq_source = type { i32, i32, i32 }
%struct.anon.153 = type { i32, i32, i32, i32, [0 x i32] }
%struct.__kernel_sockaddr_storage = type { %union.anon.156 }
%union.anon.156 = type { ptr, [124 x i8] }
%struct.anon.158 = type { i32, %struct.__kernel_sockaddr_storage, i32, i32, [0 x %struct.__kernel_sockaddr_storage] }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.anon.23 = type { i16, i16 }
%struct.igmpv3_report = type { i8, i8, i16, i16, i16, [0 x %struct.igmpv3_grec] }
%struct.igmpv3_grec = type { i8, i8, i16, i32, [0 x i32] }
%struct.in_ifaddr = type { %struct.hlist_node, ptr, ptr, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i32, [16 x i8], i32, i32, i32, i32 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.igmp_mc_iter_state = type { %struct.seq_net_private, ptr, ptr }
%struct.seq_net_private = type { ptr, ptr }
%struct.igmp_mcf_iter_state = type { %struct.seq_net_private, ptr, ptr, ptr }

@__kstrtab___ip_mc_inc_group = external dso_local constant [0 x i8], align 1
@__kstrtabns___ip_mc_inc_group = external dso_local constant [0 x i8], align 1
@__ksymtab___ip_mc_inc_group = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__ip_mc_inc_group to i32), ptr @__kstrtab___ip_mc_inc_group, ptr @__kstrtabns___ip_mc_inc_group }, section "___ksymtab+__ip_mc_inc_group", align 4
@__kstrtab_ip_mc_inc_group = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_mc_inc_group = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_mc_inc_group = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_mc_inc_group to i32), ptr @__kstrtab_ip_mc_inc_group, ptr @__kstrtabns_ip_mc_inc_group }, section "___ksymtab+ip_mc_inc_group", align 4
@__kstrtab_ip_mc_check_igmp = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_mc_check_igmp = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_mc_check_igmp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_mc_check_igmp to i32), ptr @__kstrtab_ip_mc_check_igmp, ptr @__kstrtabns_ip_mc_check_igmp }, section "___ksymtab+ip_mc_check_igmp", align 4
@__ip_mc_dec_group.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"net/ipv4/igmp.c\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@__ip_mc_dec_group.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@__kstrtab___ip_mc_dec_group = external dso_local constant [0 x i8], align 1
@__kstrtabns___ip_mc_dec_group = external dso_local constant [0 x i8], align 1
@__ksymtab___ip_mc_dec_group = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__ip_mc_dec_group to i32), ptr @__kstrtab___ip_mc_dec_group, ptr @__kstrtabns___ip_mc_dec_group }, section "___ksymtab+__ip_mc_dec_group", align 4
@ip_mc_unmap.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ip_mc_unmap.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ip_mc_unmap.__warned.3 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ip_mc_remap.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ip_mc_remap.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ip_mc_remap.__warned.4 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ip_mc_down.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ip_mc_down.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ip_mc_down.__warned.5 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ip_mc_init_dev.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ip_mc_init_dev.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"(&in_dev->mr_gq_timer)\00", [41 x i8] zeroinitializer }, align 32
@ip_mc_init_dev.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"(&in_dev->mr_ifc_timer)\00", [40 x i8] zeroinitializer }, align 32
@ip_mc_init_dev.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&in_dev->mc_tomb_lock\00", [42 x i8] zeroinitializer }, align 32
@ip_mc_up.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ip_mc_up.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ip_mc_up.__warned.11 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ip_mc_destroy_dev.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ip_mc_destroy_dev.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__kstrtab_ip_mc_join_group = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_mc_join_group = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_mc_join_group = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_mc_join_group to i32), ptr @__kstrtab_ip_mc_join_group, ptr @__kstrtabns_ip_mc_join_group }, section "___ksymtab+ip_mc_join_group", align 4
@ip_mc_leave_group.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ip_mc_leave_group.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__kstrtab_ip_mc_leave_group = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_mc_leave_group = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_mc_leave_group = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_mc_leave_group to i32), ptr @__kstrtab_ip_mc_leave_group, ptr @__kstrtabns_ip_mc_leave_group }, section "___ksymtab+ip_mc_leave_group", align 4
@ip_mc_source.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ip_mc_source.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ip_mc_source.__warned.12 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ip_mc_source.__warned.13 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ip_mc_msfilter.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ip_mc_msfilter.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ip_mc_msfilter.__warned.14 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ip_mc_msfilter.__warned.15 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ip_mc_msfget.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ip_mc_msfget.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ip_mc_msfget.__warned.16 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ip_mc_msfget.__warned.17 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ip_mc_gsfget.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ip_mc_gsfget.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ip_mc_gsfget.__warned.18 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ip_mc_gsfget.__warned.19 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ip_mc_sf_allow.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.20 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@ip_mc_sf_allow.__warned.21 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ip_mc_sf_allow.__warned.22 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ip_mc_drop_socket.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ip_check_mc_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ip_check_mc_rcu.__warned.23 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ip_check_mc_rcu.__warned.24 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ip_check_mc_rcu.__warned.25 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ip_check_mc_rcu.__warned.26 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@igmp_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @igmp_net_init, ptr null, ptr @igmp_net_exit, ptr null, ptr null, i32 0 }, [32 x i8] zeroinitializer }, align 32
@igmp_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @igmp_netdev_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@__in_dev_get_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/inetdevice.h\00", [37 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@igmp_heard_query.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@igmp_heard_query.__warned.28 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@igmp_heard_report.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@igmp_heard_report.__warned.30 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@____ip_mc_inc_group.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@____ip_mc_inc_group.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@____ip_mc_inc_group.__warned.31 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@____ip_mc_inc_group.__key = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&im->lock\00", [22 x i8] zeroinitializer }, align 32
@____ip_mc_inc_group.__key.33 = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"(&im->timer)\00", [19 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@igmpv3_send_report.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@igmpv3_send_report.__warned.35 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@igmpv3_get_srcaddr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@igmpv3_get_srcaddr.__warned.36 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ip_mc_hash_add.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ip_mc_hash_add.__warned.37 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ip_mc_hash_add.__warned.38 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ip_mc_hash_remove.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ip_mc_hash_remove.__warned.39 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@igmpv3_add_delrec.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&pmc->lock\00", [21 x i8] zeroinitializer }, align 32
@igmpv3_send_cr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@igmpv3_send_cr.__warned.41 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@igmpv3_clear_delrec.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@igmpv3_clear_delrec.__warned.42 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__ip_mc_join_group.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__ip_mc_join_group.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__ip_mc_join_group.__warned.43 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__in_dev_get_rtnl.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ip_mc_leave_src.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ip_mc_add_src.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ip_mc_add_src.__warned.44 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ip_mc_del_src.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ip_mc_del_src.__warned.45 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.46 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.49 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.51 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"igmp\00", [27 x i8] zeroinitializer }, align 32
@igmp_mc_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @igmp_mc_seq_start, ptr @igmp_mc_seq_stop, ptr @igmp_mc_seq_next, ptr @igmp_mc_seq_show }, [16 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mcfilter\00", [23 x i8] zeroinitializer }, align 32
@igmp_mcf_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @igmp_mcf_seq_start, ptr @igmp_mcf_seq_stop, ptr @igmp_mcf_seq_next, ptr @igmp_mcf_seq_show }, [16 x i8] zeroinitializer }, align 32
@igmp_net_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str, i32 3025, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013Failed to initialize the IGMP autojoin socket (err %d)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"igmp_net_init\00", [18 x i8] zeroinitializer }, align 32
@igmp_net_init._entry_ptr = internal global ptr @igmp_net_init._entry, section ".printk_index", align 4
@igmp_mc_get_first.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.56 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@igmp_mc_get_first.__warned.57 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@igmp_mc_get_next.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@igmp_mc_get_next.__warned.58 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@next_net_device_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.59 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/netdevice.h\00", [38 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Idx\09Device    : Count Querier\09Group    Users Timer\09Reporter\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"V1\00", [29 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"V2\00", [29 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"V3\00", [29 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%d\09%-10s: %5d %7s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\09\09\09\09%08X %5d %d:%08lX\09\09%d\0A\00", [37 x i8] zeroinitializer }, align 32
@igmp_mcf_get_first.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@igmp_mcf_get_first.__warned.66 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@igmp_mcf_get_next.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.67 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Idx Device        MCA        SRC    INC    EXC\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%3d %6.6s 0x%08x 0x%08x %6lu %6lu\0A\00", [61 x i8] zeroinitializer }, align 32
@ip_mc_rejoin_groups.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ip_mc_rejoin_groups.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ip_mc_rejoin_groups.__warned.69 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 2, i64 1, i64 3]
@__sancov_gen_cov_switch_values.70 = internal global [6 x i64] [i64 4, i64 8, i64 17, i64 18, i64 20, i64 22]
@__sancov_gen_cov_switch_values.71 = internal global [7 x i64] [i64 5, i64 8, i64 17, i64 18, i64 22, i64 23, i64 34]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.74 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 2, i64 1, i64 3]
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1671, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1674, i32 12 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1765, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1766, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1770, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 2641, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant [13 x i8] c"igmp_net_ops\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 3046, i32 33 }
@___asan_gen_.109 = private unnamed_addr constant [14 x i8] c"igmp_notifier\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 3070, i32 30 }
@___asan_gen_.113 = private unnamed_addr constant [30 x i8] c"../include/linux/inetdevice.h\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 232, i32 9 }
@___asan_gen_.116 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 1011, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1454, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1456, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1184, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 230, i32 6 }
@___asan_gen_.134 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 214, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 174, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 695, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 723, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 3013, i32 8 }
@___asan_gen_.151 = private unnamed_addr constant [16 x i8] c"igmp_mc_seq_ops\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 2868, i32 36 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 3017, i32 8 }
@___asan_gen_.157 = private unnamed_addr constant [17 x i8] c"igmp_mcf_seq_ops\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 3001, i32 36 }
@___asan_gen_.160 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 3024, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 2762, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant [29 x i8] c"../include/linux/netdevice.h\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 2835, i32 7 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 2837, i32 5 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 2845, i32 43 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 2846, i32 36 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 2847, i32 6 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 2853, i32 20 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 2859, i32 7 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 2987, i32 17 }
@___asan_gen_.196 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.197 = private constant [19 x i8] c"../net/ipv4/igmp.c\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 2990, i32 7 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @__ksymtab___ip_mc_dec_group, ptr @__ksymtab___ip_mc_inc_group, ptr @__ksymtab_ip_mc_check_igmp, ptr @__ksymtab_ip_mc_inc_group, ptr @__ksymtab_ip_mc_join_group, ptr @__ksymtab_ip_mc_leave_group, ptr @igmp_net_init._entry, ptr @igmp_net_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @ip_mc_init_dev.__key, ptr @.str.6, ptr @ip_mc_init_dev.__key.7, ptr @.str.8, ptr @ip_mc_init_dev.__key.9, ptr @.str.10, ptr @.str.20, ptr @igmp_net_ops, ptr @igmp_notifier, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @igmpv3_add_delrec.__key, ptr @.str.40, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @igmp_mc_seq_ops, ptr @.str.53, ptr @igmp_mcf_seq_ops, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.68], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_mc_init_dev.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_mc_init_dev.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_mc_init_dev.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igmp_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igmp_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igmpv3_add_delrec.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igmp_mc_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igmp_mcf_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igmp_net_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igmp_rcv(ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %len1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %3 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len1, align 4
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 15
  %5 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %6, 262144
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then:                                          ; preds = %entry
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 127
  %7 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %nd_net.i, align 4
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %9 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cb, align 8
  %call3 = tail call ptr @dev_get_by_index_rcu(ptr noundef %8, i32 noundef %10) #12
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.then.if.then46_crit_edge, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then.if.then46_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then46

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %dev.0 = phi ptr [ %call3, %if.then.if.end5_crit_edge ], [ %2, %entry.if.end5_crit_edge ]
  %ip_ptr.i = getelementptr inbounds %struct.net_device, ptr %dev.0, i32 0, i32 78
  %11 = ptrtoint ptr %ip_ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %ip_ptr.i, align 32
  %call.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end5.__in_dev_get_rcu.exit_crit_edge

if.end5.__in_dev_get_rcu.exit_crit_edge:          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %__in_dev_get_rcu.exit

land.lhs.true.i:                                  ; preds = %if.end5
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.__in_dev_get_rcu.exit_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.__in_dev_get_rcu.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__in_dev_get_rcu.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b9.i = load i1, ptr @__in_dev_get_rcu.__warned, align 1
  br i1 %.b9.i, label %land.lhs.true4.i.__in_dev_get_rcu.exit_crit_edge, label %if.then.i

land.lhs.true4.i.__in_dev_get_rcu.exit_crit_edge: ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__in_dev_get_rcu.exit

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__in_dev_get_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 232, ptr noundef nonnull @.str.20) #12
  br label %__in_dev_get_rcu.exit

__in_dev_get_rcu.exit:                            ; preds = %if.then.i, %land.lhs.true4.i.__in_dev_get_rcu.exit_crit_edge, %land.lhs.true.i.__in_dev_get_rcu.exit_crit_edge, %if.end5.__in_dev_get_rcu.exit_crit_edge
  %tobool7.not = icmp eq ptr %12, null
  br i1 %tobool7.not, label %__in_dev_get_rcu.exit.if.then46_crit_edge, label %if.end9

__in_dev_get_rcu.exit.if.then46_crit_edge:        ; preds = %__in_dev_get_rcu.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then46

if.end9:                                          ; preds = %__in_dev_get_rcu.exit
  %13 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len1, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %15 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %14, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.i.i)
  %cmp.not.i = icmp ult i32 %sub.i.i, 8
  br i1 %cmp.not.i, label %if.end.i, label %if.end9.if.end12_crit_edge, !prof !244

if.end9.if.end12_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.end.i:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %14)
  %cmp3.i = icmp ult i32 %14, 8
  br i1 %cmp3.i, label %if.end.i.if.then46_crit_edge, label %pskb_may_pull.exit, !prof !244

if.end.i.if.then46_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then46

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 8, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #12
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.if.then46_crit_edge, label %pskb_may_pull.exit.if.end12_crit_edge

pskb_may_pull.exit.if.end12_crit_edge:            ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

pskb_may_pull.exit.if.then46_crit_edge:           ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then46

if.end12:                                         ; preds = %pskb_may_pull.exit.if.end12_crit_edge, %if.end9.if.end12_crit_edge
  %csum_valid = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %17 = ptrtoint ptr %csum_valid to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load = load i16, ptr %csum_valid, align 8
  %bf.clear = and i16 %bf.load, -2
  store i16 %bf.clear, ptr %csum_valid, align 8
  %bf.lshr.i.i = lshr i16 %bf.load, 9
  %trunc = trunc i16 %bf.lshr.i.i to i2
  %18 = zext i2 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i2 %trunc, label %if.end12.if.then14_crit_edge [
    i2 1, label %if.end12.if.then.i80_crit_edge
    i2 -1, label %skb_csum_unnecessary.exit.i
  ]

if.end12.if.then.i80_crit_edge:                   ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i80

if.end12.if.then14_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then14

skb_csum_unnecessary.exit.i:                      ; preds = %if.end12
  %19 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %19, align 8
  %conv.i.i.i = zext i16 %21 to i32
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %22 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data.i.i.i.i, align 4
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %24 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %head.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %23 to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %25 to i32
  %sub.ptr.sub.i.neg.i.i.i = sub i32 %conv.i.i.i, %sub.ptr.lhs.cast.i.i.i.i
  %sub.i.i.i = add i32 %sub.ptr.sub.i.neg.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %tobool.not.i79 = icmp slt i32 %sub.i.i.i, 0
  br i1 %tobool.not.i79, label %skb_csum_unnecessary.exit.i.if.then14_crit_edge, label %skb_csum_unnecessary.exit.i.if.then.i80_crit_edge

skb_csum_unnecessary.exit.i.if.then.i80_crit_edge: ; preds = %skb_csum_unnecessary.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i80

skb_csum_unnecessary.exit.i.if.then14_crit_edge:  ; preds = %skb_csum_unnecessary.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then14

if.then.i80:                                      ; preds = %skb_csum_unnecessary.exit.i.if.then.i80_crit_edge, %if.end12.if.then.i80_crit_edge
  %bf.set.i = or i16 %bf.load, 1
  %26 = ptrtoint ptr %csum_valid to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %bf.set.i, ptr %csum_valid, align 8
  %27 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %27)
  %cmp.i3.i = icmp eq i16 %27, 512
  br i1 %cmp.i3.i, label %if.then.i.i, label %if.then.i80.if.end20_crit_edge

if.then.i80.if.end20_crit_edge:                   ; preds = %if.then.i80
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.then.i.i:                                      ; preds = %if.then.i80
  %csum_level.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %28 = ptrtoint ptr %csum_level.i.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %bf.load2.i.i = load i32, ptr %csum_level.i.i, align 2
  %29 = and i32 %bf.load2.i.i, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp7.i.i = icmp eq i32 %29, 0
  br i1 %cmp7.i.i, label %if.then9.i.i, label %if.else.i.i

if.then9.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %bf.clear12.i.i = and i16 %bf.set.i, -1537
  %30 = ptrtoint ptr %csum_valid to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %bf.clear12.i.i, ptr %csum_valid, align 8
  br label %if.end20

if.else.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %31 = add i32 %bf.load2.i.i, 805306368
  %bf.shl.i.i = and i32 %31, 805306368
  %bf.clear19.i.i = and i32 %bf.load2.i.i, -805306369
  %bf.set20.i.i = or i32 %bf.shl.i.i, %bf.clear19.i.i
  %32 = ptrtoint ptr %csum_level.i.i to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 %bf.set20.i.i, ptr %csum_level.i.i, align 2
  br label %if.end20

if.then14:                                        ; preds = %skb_csum_unnecessary.exit.i.if.then14_crit_edge, %if.end12.if.then14_crit_edge
  %33 = ptrtoint ptr %csum_valid to i32
  call void @__asan_load2_noabort(i32 %33)
  %bf.load.i = load i16, ptr %csum_valid, align 8
  %34 = and i16 %bf.load.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %34)
  %cmp.i = icmp eq i16 %34, 1024
  br i1 %cmp.i, label %if.then.i82, label %if.then14.__skb_checksum_validate_complete.exit_crit_edge

if.then14.__skb_checksum_validate_complete.exit_crit_edge: ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  br label %__skb_checksum_validate_complete.exit

if.then.i82:                                      ; preds = %if.then14
  %35 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 8
  %38 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %37) #15, !srcloc !245
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65537, i32 %38)
  %tobool.not.i81 = icmp ugt i32 %38, -65537
  br i1 %tobool.not.i81, label %__skb_checksum_validate_complete.exit.thread, label %if.then.i82.__skb_checksum_validate_complete.exit_crit_edge

if.then.i82.__skb_checksum_validate_complete.exit_crit_edge: ; preds = %if.then.i82
  call void @__sanitizer_cov_trace_pc() #14
  br label %__skb_checksum_validate_complete.exit

__skb_checksum_validate_complete.exit.thread:     ; preds = %if.then.i82
  call void @__sanitizer_cov_trace_pc() #14
  %bf.set.i83 = or i16 %bf.load.i, 1
  %39 = ptrtoint ptr %csum_valid to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %bf.set.i83, ptr %csum_valid, align 8
  br label %if.end20

__skb_checksum_validate_complete.exit:            ; preds = %if.then.i82.__skb_checksum_validate_complete.exit_crit_edge, %if.then14.__skb_checksum_validate_complete.exit_crit_edge
  %40 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %40, align 8
  %call12.i = tail call zeroext i16 @__skb_checksum_complete(ptr noundef %skb) #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call12.i)
  %tobool13.not.i = icmp eq i16 %call12.i, 0
  %42 = zext i1 %tobool13.not.i to i16
  %43 = ptrtoint ptr %csum_valid to i32
  call void @__asan_load2_noabort(i32 %43)
  %bf.load16.i = load i16, ptr %csum_valid, align 8
  %bf.clear17.i = and i16 %bf.load16.i, -2
  %bf.set18.i = or i16 %bf.clear17.i, %42
  store i16 %bf.set18.i, ptr %csum_valid, align 8
  br i1 %tobool13.not.i, label %__skb_checksum_validate_complete.exit.if.end20_crit_edge, label %__skb_checksum_validate_complete.exit.if.then46_crit_edge

__skb_checksum_validate_complete.exit.if.then46_crit_edge: ; preds = %__skb_checksum_validate_complete.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then46

__skb_checksum_validate_complete.exit.if.end20_crit_edge: ; preds = %__skb_checksum_validate_complete.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.end20:                                         ; preds = %__skb_checksum_validate_complete.exit.if.end20_crit_edge, %__skb_checksum_validate_complete.exit.thread, %if.else.i.i, %if.then9.i.i, %if.then.i80.if.end20_crit_edge
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %44 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %46 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %47 to i32
  %add.ptr.i.i = getelementptr i8, ptr %45, i32 %conv.i.i
  %48 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %add.ptr.i.i, align 4
  %50 = zext i8 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.70)
  switch i8 %49, label %if.end20.if.then46_crit_edge [
    i8 17, label %sw.bb
    i8 18, label %if.end20.sw.bb23_crit_edge
    i8 22, label %if.end20.sw.bb23_crit_edge113
    i8 20, label %sw.bb42
  ]

if.end20.sw.bb23_crit_edge113:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb23

if.end20.sw.bb23_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb23

if.end20.if.then46_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then46

sw.bb:                                            ; preds = %if.end20
  %group2.i = getelementptr inbounds %struct.igmphdr, ptr %add.ptr.i.i, i32 0, i32 3
  %51 = ptrtoint ptr %group2.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %group2.i, align 4
  %53 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %12, align 4
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %54, i32 0, i32 127
  %55 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %nd_net.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %4)
  %cmp.i86 = icmp eq i32 %4, 8
  br i1 %cmp.i86, label %if.then.i87, label %if.else28.i

if.then.i87:                                      ; preds = %sw.bb
  %code.i = getelementptr inbounds %struct.igmphdr, ptr %add.ptr.i.i, i32 0, i32 1
  %57 = ptrtoint ptr %code.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %code.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %cmp4.i = icmp eq i8 %58, 0
  br i1 %cmp4.i, label %if.then6.i, label %if.else.i

if.then6.i:                                       ; preds = %if.then.i87
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %59 = load volatile i32, ptr @jiffies, align 128
  %mr_qrv.i = getelementptr inbounds %struct.in_device, ptr %12, i32 0, i32 15
  %60 = ptrtoint ptr %mr_qrv.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %mr_qrv.i, align 4
  %conv7.i = zext i8 %61 to i32
  %mr_qi.i = getelementptr inbounds %struct.in_device, ptr %12, i32 0, i32 13
  %62 = ptrtoint ptr %mr_qi.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %mr_qi.i, align 4
  %mul.i = mul i32 %63, %conv7.i
  %add.i = add i32 %mul.i, %59
  %mr_qri.i = getelementptr inbounds %struct.in_device, ptr %12, i32 0, i32 14
  %64 = ptrtoint ptr %mr_qri.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %mr_qri.i, align 4
  %add8.i = add i32 %add.i, %65
  %mr_v1_seen.i = getelementptr inbounds %struct.in_device, ptr %12, i32 0, i32 10
  %66 = ptrtoint ptr %mr_v1_seen.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %add8.i, ptr %mr_v1_seen.i, align 4
  br label %do.body20.i

if.else.i:                                        ; preds = %if.then.i87
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i = zext i8 %58 to i32
  %mul11.i = mul nuw nsw i32 %conv.i, 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %67 = load volatile i32, ptr @jiffies, align 128
  %mr_qrv12.i = getelementptr inbounds %struct.in_device, ptr %12, i32 0, i32 15
  %68 = ptrtoint ptr %mr_qrv12.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %mr_qrv12.i, align 4
  %conv13.i = zext i8 %69 to i32
  %mr_qi14.i = getelementptr inbounds %struct.in_device, ptr %12, i32 0, i32 13
  %70 = ptrtoint ptr %mr_qi14.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %mr_qi14.i, align 4
  %mul15.i = mul i32 %71, %conv13.i
  %add16.i = add i32 %mul15.i, %67
  %mr_qri17.i = getelementptr inbounds %struct.in_device, ptr %12, i32 0, i32 14
  %72 = ptrtoint ptr %mr_qri17.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %mr_qri17.i, align 4
  %add18.i = add i32 %add16.i, %73
  %mr_v2_seen.i = getelementptr inbounds %struct.in_device, ptr %12, i32 0, i32 11
  %74 = ptrtoint ptr %mr_v2_seen.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %add18.i, ptr %mr_v2_seen.i, align 4
  br label %do.body20.i

do.body20.i:                                      ; preds = %if.else.i, %if.then6.i
  %group.0.i = phi i32 [ 0, %if.then6.i ], [ %52, %if.else.i ]
  %max_delay.0.i = phi i32 [ 1000, %if.then6.i ], [ %mul11.i, %if.else.i ]
  %mr_ifc_count.i = getelementptr inbounds %struct.in_device, ptr %12, i32 0, i32 17
  %75 = ptrtoint ptr %mr_ifc_count.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile i32 0, ptr %mr_ifc_count.i, align 4
  %mr_ifc_timer.i = getelementptr inbounds %struct.in_device, ptr %12, i32 0, i32 19
  %call25.i = tail call i32 @del_timer(ptr noundef %mr_ifc_timer.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool.not.i88 = icmp eq i32 %call25.i, 0
  br i1 %tobool.not.i88, label %do.body20.i.if.end27.i_crit_edge, label %if.then26.i

do.body20.i.if.end27.i_crit_edge:                 ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27.i

if.then26.i:                                      ; preds = %do.body20.i
  %refcnt.i = getelementptr inbounds %struct.in_device, ptr %12, i32 0, i32 2
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !246
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #12
  %76 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #12, !srcloc !247
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %76, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp slt i32 %asmresult.i.i.i.i.i.i, 2
  br i1 %cmp.i.i.i, label %if.then3.i.i.i, label %if.then26.i.if.end27.i_crit_edge, !prof !244

if.then26.i.if.end27.i_crit_edge:                 ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27.i

if.then3.i.i.i:                                   ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 4) #12
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then3.i.i.i, %if.then26.i.if.end27.i_crit_edge, %do.body20.i.if.end27.i_crit_edge
  tail call fastcc void @igmpv3_clear_delrec(ptr noundef nonnull %12) #12
  br label %if.end184.i

if.else28.i:                                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %4)
  %cmp29.i = icmp slt i32 %4, 12
  br i1 %cmp29.i, label %if.else28.i.if.then46_crit_edge, label %if.else32.i

if.else28.i.if.then46_crit_edge:                  ; preds = %if.else28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then46

if.else32.i:                                      ; preds = %if.else28.i
  %devconf_all.i = getelementptr inbounds %struct.net, ptr %56, i32 0, i32 35, i32 6
  %77 = ptrtoint ptr %devconf_all.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %devconf_all.i, align 4
  %arrayidx.i = getelementptr %struct.ipv4_devconf, ptr %78, i32 0, i32 1, i32 16
  %79 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %80)
  %cmp35.i = icmp eq i32 %80, 1
  br i1 %cmp35.i, label %if.else32.i.if.end184.i_crit_edge, label %lor.lhs.false.i

if.else32.i.if.end184.i_crit_edge:                ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end184.i

lor.lhs.false.i:                                  ; preds = %if.else32.i
  %arrayidx.i.i = getelementptr %struct.in_device, ptr %12, i32 0, i32 21, i32 1, i32 16
  %81 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %82)
  %cmp38.i = icmp eq i32 %82, 1
  br i1 %cmp38.i, label %lor.lhs.false.i.if.end184.i_crit_edge, label %lor.lhs.false40.i

lor.lhs.false.i.if.end184.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end184.i

lor.lhs.false40.i:                                ; preds = %lor.lhs.false.i
  %mr_v1_seen41.i = getelementptr inbounds %struct.in_device, ptr %12, i32 0, i32 10
  %83 = ptrtoint ptr %mr_v1_seen41.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %mr_v1_seen41.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool42.not.i = icmp eq i32 %84, 0
  br i1 %tobool42.not.i, label %lor.lhs.false40.i.if.else47.i_crit_edge, label %land.lhs.true.i90

lor.lhs.false40.i.if.else47.i_crit_edge:          ; preds = %lor.lhs.false40.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else47.i

land.lhs.true.i90:                                ; preds = %lor.lhs.false40.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %85 = load volatile i32, ptr @jiffies, align 128
  %sub.i89 = sub i32 %85, %84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i89)
  %cmp44.i = icmp slt i32 %sub.i89, 0
  br i1 %cmp44.i, label %land.lhs.true.i90.if.end184.i_crit_edge, label %land.lhs.true.i90.if.else47.i_crit_edge

land.lhs.true.i90.if.else47.i_crit_edge:          ; preds = %land.lhs.true.i90
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else47.i

land.lhs.true.i90.if.end184.i_crit_edge:          ; preds = %land.lhs.true.i90
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end184.i

if.else47.i:                                      ; preds = %land.lhs.true.i90.if.else47.i_crit_edge, %lor.lhs.false40.i.if.else47.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %80)
  %cmp54.i = icmp eq i32 %80, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %82)
  %cmp58.i = icmp eq i32 %82, 2
  %or.cond.i = select i1 %cmp54.i, i1 true, i1 %cmp58.i
  br i1 %or.cond.i, label %if.else47.i.if.then68.i_crit_edge, label %lor.lhs.false60.i

if.else47.i.if.then68.i_crit_edge:                ; preds = %if.else47.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then68.i

lor.lhs.false60.i:                                ; preds = %if.else47.i
  %mr_v2_seen61.i = getelementptr inbounds %struct.in_device, ptr %12, i32 0, i32 11
  %86 = ptrtoint ptr %mr_v2_seen61.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %mr_v2_seen61.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool62.not.i = icmp eq i32 %87, 0
  br i1 %tobool62.not.i, label %lor.lhs.false60.i.if.else85.i_crit_edge, label %land.lhs.true63.i

lor.lhs.false60.i.if.else85.i_crit_edge:          ; preds = %lor.lhs.false60.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else85.i

land.lhs.true63.i:                                ; preds = %lor.lhs.false60.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %88 = load volatile i32, ptr @jiffies, align 128
  %sub65.i = sub i32 %88, %87
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub65.i)
  %cmp66.i = icmp slt i32 %sub65.i, 0
  br i1 %cmp66.i, label %land.lhs.true63.i.if.then68.i_crit_edge, label %land.lhs.true63.i.if.else85.i_crit_edge

land.lhs.true63.i.if.else85.i_crit_edge:          ; preds = %land.lhs.true63.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else85.i

land.lhs.true63.i.if.then68.i_crit_edge:          ; preds = %land.lhs.true63.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then68.i

if.then68.i:                                      ; preds = %land.lhs.true63.i.if.then68.i_crit_edge, %if.else47.i.if.then68.i_crit_edge
  %code69.i = getelementptr inbounds %struct.igmpv3_query, ptr %add.ptr.i.i, i32 0, i32 1
  %89 = ptrtoint ptr %code69.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %code69.i, align 1
  %conv70.i = zext i8 %90 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %90)
  %cmp71.i = icmp sgt i8 %90, -1
  br i1 %cmp71.i, label %if.then68.i.cond.end.i_crit_edge, label %cond.false.i

if.then68.i.cond.end.i_crit_edge:                 ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #14
  %and.i91 = and i32 %conv70.i, 15
  %or.i = or i32 %and.i91, 16
  %91 = lshr i32 %conv70.i, 4
  %and79.i = and i32 %91, 7
  %add80.i = add nuw nsw i32 %and79.i, 3
  %shl.i = shl i32 %or.i, %add80.i
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.then68.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %shl.i, %cond.false.i ], [ %conv70.i, %if.then68.i.cond.end.i_crit_edge ]
  %mul81.i = mul nsw i32 %cond.i, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %tobool82.not.i = icmp eq i32 %cond.i, 0
  %spec.store.select.i = select i1 %tobool82.not.i, i32 1, i32 %mul81.i
  br label %if.end184.i

if.else85.i:                                      ; preds = %land.lhs.true63.i.if.else85.i_crit_edge, %lor.lhs.false60.i.if.else85.i_crit_edge
  %call86.i = tail call fastcc zeroext i1 @pskb_may_pull(ptr noundef %skb, i32 noundef 12) #12
  br i1 %call86.i, label %if.end88.i, label %if.else85.i.if.then46_crit_edge

if.else85.i.if.then46_crit_edge:                  ; preds = %if.else85.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then46

if.end88.i:                                       ; preds = %if.else85.i
  %92 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %head.i.i, align 8
  %94 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i357.i = zext i16 %95 to i32
  %add.ptr.i.i358.i = getelementptr i8, ptr %93, i32 %conv.i.i357.i
  %nsrcs.i = getelementptr inbounds %struct.igmpv3_query, ptr %add.ptr.i.i358.i, i32 0, i32 6
  %96 = ptrtoint ptr %nsrcs.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %nsrcs.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %97)
  %tobool90.not.i = icmp eq i16 %97, 0
  br i1 %tobool90.not.i, label %if.end88.i.if.end100.i_crit_edge, label %if.then91.i

if.end88.i.if.end100.i_crit_edge:                 ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end100.i

if.then91.i:                                      ; preds = %if.end88.i
  %conv93.i = zext i16 %97 to i32
  %mul94.i = shl nuw nsw i32 %conv93.i, 2
  %add95.i = add nuw nsw i32 %mul94.i, 12
  %call96.i = tail call fastcc zeroext i1 @pskb_may_pull(ptr noundef %skb, i32 noundef %add95.i) #12
  br i1 %call96.i, label %if.end98.i, label %if.then91.i.if.then46_crit_edge

if.then91.i.if.then46_crit_edge:                  ; preds = %if.then91.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then46

if.end98.i:                                       ; preds = %if.then91.i
  call void @__sanitizer_cov_trace_pc() #14
  %98 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %head.i.i, align 8
  %100 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i361.i = zext i16 %101 to i32
  %add.ptr.i.i362.i = getelementptr i8, ptr %99, i32 %conv.i.i361.i
  br label %if.end100.i

if.end100.i:                                      ; preds = %if.end98.i, %if.end88.i.if.end100.i_crit_edge
  %ih3.0.i = phi ptr [ %add.ptr.i.i362.i, %if.end98.i ], [ %add.ptr.i.i358.i, %if.end88.i.if.end100.i_crit_edge ]
  %code101.i = getelementptr inbounds %struct.igmpv3_query, ptr %ih3.0.i, i32 0, i32 1
  %102 = ptrtoint ptr %code101.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %code101.i, align 1
  %conv102.i = zext i8 %103 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %103)
  %cmp103.i = icmp sgt i8 %103, -1
  br i1 %cmp103.i, label %if.end100.i.cond.end119.i_crit_edge, label %cond.false108.i

if.end100.i.cond.end119.i_crit_edge:              ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end119.i

cond.false108.i:                                  ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #14
  %and111.i = and i32 %conv102.i, 15
  %or112.i = or i32 %and111.i, 16
  %104 = lshr i32 %conv102.i, 4
  %and116.i = and i32 %104, 7
  %add117.i = add nuw nsw i32 %and116.i, 3
  %shl118.i = shl i32 %or112.i, %add117.i
  br label %cond.end119.i

cond.end119.i:                                    ; preds = %cond.false108.i, %if.end100.i.cond.end119.i_crit_edge
  %cond120.i = phi i32 [ %shl118.i, %cond.false108.i ], [ %conv102.i, %if.end100.i.cond.end119.i_crit_edge ]
  %mul121.i = mul nsw i32 %cond120.i, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond120.i)
  %tobool122.not.i = icmp eq i32 %cond120.i, 0
  %spec.store.select267.i = select i1 %tobool122.not.i, i32 1, i32 %mul121.i
  %mr_maxdelay.i = getelementptr inbounds %struct.in_device, ptr %12, i32 0, i32 12
  %105 = ptrtoint ptr %mr_maxdelay.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %spec.store.select267.i, ptr %mr_maxdelay.i, align 4
  %qrv.i = getelementptr inbounds %struct.igmpv3_query, ptr %ih3.0.i, i32 0, i32 4
  %106 = ptrtoint ptr %qrv.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %bf.load.i92 = load i8, ptr %qrv.i, align 4
  %bf.clear.i = and i8 %bf.load.i92, 7
  %conv125.i = zext i8 %bf.clear.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear.i)
  %tobool126.not.i = icmp eq i8 %bf.clear.i, 0
  br i1 %tobool126.not.i, label %cond.false128.i, label %cond.end119.i.cond.end130.i_crit_edge

cond.end119.i.cond.end130.i_crit_edge:            ; preds = %cond.end119.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end130.i

cond.false128.i:                                  ; preds = %cond.end119.i
  call void @__sanitizer_cov_trace_pc() #14
  %sysctl_igmp_qrv.i = getelementptr inbounds %struct.net, ptr %56, i32 0, i32 35, i32 122
  %107 = ptrtoint ptr %sysctl_igmp_qrv.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %sysctl_igmp_qrv.i, align 4
  br label %cond.end130.i

cond.end130.i:                                    ; preds = %cond.false128.i, %cond.end119.i.cond.end130.i_crit_edge
  %cond131.i = phi i32 [ %108, %cond.false128.i ], [ %conv125.i, %cond.end119.i.cond.end130.i_crit_edge ]
  %conv132.i = trunc i32 %cond131.i to i8
  %mr_qrv133.i = getelementptr inbounds %struct.in_device, ptr %12, i32 0, i32 15
  %109 = ptrtoint ptr %mr_qrv133.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %conv132.i, ptr %mr_qrv133.i, align 4
  %qqic.i = getelementptr inbounds %struct.igmpv3_query, ptr %ih3.0.i, i32 0, i32 5
  %110 = ptrtoint ptr %qqic.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %qqic.i, align 1
  %conv134.i = zext i8 %111 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %111)
  %cmp135.i = icmp sgt i8 %111, -1
  br i1 %cmp135.i, label %cond.end130.i.cond.end151.i_crit_edge, label %cond.false140.i

cond.end130.i.cond.end151.i_crit_edge:            ; preds = %cond.end130.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end151.i

cond.false140.i:                                  ; preds = %cond.end130.i
  call void @__sanitizer_cov_trace_pc() #14
  %and143.i = and i32 %conv134.i, 15
  %or144.i = or i32 %and143.i, 16
  %112 = lshr i32 %conv134.i, 4
  %and148.i = and i32 %112, 7
  %add149.i = add nuw nsw i32 %and148.i, 3
  %shl150.i = shl i32 %or144.i, %add149.i
  br label %cond.end151.i

cond.end151.i:                                    ; preds = %cond.false140.i, %cond.end130.i.cond.end151.i_crit_edge
  %cond152.i = phi i32 [ %shl150.i, %cond.false140.i ], [ %conv134.i, %cond.end130.i.cond.end151.i_crit_edge ]
  %mul153.i = mul nsw i32 %cond152.i, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond152.i)
  %tobool154.not.i = icmp eq i32 %cond152.i, 0
  %mul153..i = select i1 %tobool154.not.i, i32 12500, i32 %mul153.i
  %mr_qi159.i = getelementptr inbounds %struct.in_device, ptr %12, i32 0, i32 13
  %113 = ptrtoint ptr %mr_qi159.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %mul153..i, ptr %mr_qi159.i, align 4
  %mr_qri160.i = getelementptr inbounds %struct.in_device, ptr %12, i32 0, i32 14
  %114 = ptrtoint ptr %mr_qri160.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %mr_qri160.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %115, i32 %mul153..i)
  %cmp162.not.i = icmp ult i32 %115, %mul153..i
  br i1 %cmp162.not.i, label %cond.end151.i.if.end169.i_crit_edge, label %if.then164.i

cond.end151.i.if.end169.i_crit_edge:              ; preds = %cond.end151.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end169.i

if.then164.i:                                     ; preds = %cond.end151.i
  call void @__sanitizer_cov_trace_pc() #14
  %116 = urem i32 %mul153..i, 100
  %117 = add nsw i32 %mul153..i, -100
  %mul167.i = sub i32 %117, %116
  %118 = ptrtoint ptr %mr_qri160.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %mul167.i, ptr %mr_qri160.i, align 4
  br label %if.end169.i

if.end169.i:                                      ; preds = %if.then164.i, %cond.end151.i.if.end169.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool170.not.i = icmp eq i32 %52, 0
  %nsrcs172.i = getelementptr inbounds %struct.igmpv3_query, ptr %ih3.0.i, i32 0, i32 6
  %119 = ptrtoint ptr %nsrcs172.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %nsrcs172.i, align 2
  br i1 %tobool170.not.i, label %if.then171.i, label %if.end176.i

if.then171.i:                                     ; preds = %if.end169.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %120)
  %tobool173.not.i = icmp eq i16 %120, 0
  br i1 %tobool173.not.i, label %if.end175.i, label %if.then171.i.if.then46_crit_edge

if.then171.i.if.then46_crit_edge:                 ; preds = %if.then171.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then46

if.end175.i:                                      ; preds = %if.then171.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @igmp_gq_start_timer(ptr noundef nonnull %12) #12
  br label %if.else

if.end176.i:                                      ; preds = %if.end169.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %120)
  %cmp179.i = icmp ne i16 %120, 0
  %conv180.i = zext i1 %cmp179.i to i32
  br label %if.end184.i

if.end184.i:                                      ; preds = %if.end176.i, %cond.end.i, %land.lhs.true.i90.if.end184.i_crit_edge, %lor.lhs.false.i.if.end184.i_crit_edge, %if.else32.i.if.end184.i_crit_edge, %if.end27.i
  %group.1.i = phi i32 [ %group.0.i, %if.end27.i ], [ %52, %cond.end.i ], [ %52, %if.end176.i ], [ 0, %land.lhs.true.i90.if.end184.i_crit_edge ], [ 0, %lor.lhs.false.i.if.end184.i_crit_edge ], [ 0, %if.else32.i.if.end184.i_crit_edge ]
  %max_delay.1.i = phi i32 [ %max_delay.0.i, %if.end27.i ], [ %spec.store.select.i, %cond.end.i ], [ %spec.store.select267.i, %if.end176.i ], [ 1000, %land.lhs.true.i90.if.end184.i_crit_edge ], [ 1000, %lor.lhs.false.i.if.end184.i_crit_edge ], [ 1000, %if.else32.i.if.end184.i_crit_edge ]
  %mark.0.i = phi i32 [ 0, %if.end27.i ], [ 0, %cond.end.i ], [ %conv180.i, %if.end176.i ], [ 0, %land.lhs.true.i90.if.end184.i_crit_edge ], [ 0, %lor.lhs.false.i.if.end184.i_crit_edge ], [ 0, %if.else32.i.if.end184.i_crit_edge ]
  %ih3.1.i = phi ptr [ %add.ptr.i.i, %if.end27.i ], [ %add.ptr.i.i, %cond.end.i ], [ %ih3.0.i, %if.end176.i ], [ %add.ptr.i.i, %land.lhs.true.i90.if.end184.i_crit_edge ], [ %add.ptr.i.i, %lor.lhs.false.i.if.end184.i_crit_edge ], [ %add.ptr.i.i, %if.else32.i.if.end184.i_crit_edge ]
  %121 = tail call i32 @llvm.read_register.i32(metadata !234) #12
  %and.i.i.i.i.i.i = and i32 %121, -16384
  %122 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %122, i32 0, i32 1
  %123 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %124, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !248
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i, label %if.end184.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end184.i.rcu_read_lock.exit.i_crit_edge:       ; preds = %if.end184.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end184.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i93 = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i93, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i94

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

if.then.i.i94:                                    ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.49, i32 noundef 696, ptr noundef nonnull @.str.50) #12
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i94, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end184.i.rcu_read_lock.exit.i_crit_edge
  %mc_list.i = getelementptr inbounds %struct.in_device, ptr %12, i32 0, i32 5
  %125 = ptrtoint ptr %mc_list.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load volatile ptr, ptr %mc_list.i, align 4
  %call189.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call189.i)
  %tobool190.not.i = icmp eq i32 %call189.i, 0
  br i1 %tobool190.not.i, label %land.lhs.true191.i, label %rcu_read_lock.exit.i.do.end199.i_crit_edge

rcu_read_lock.exit.i.do.end199.i_crit_edge:       ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end199.i

land.lhs.true191.i:                               ; preds = %rcu_read_lock.exit.i
  %call192.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call192.i)
  %tobool193.not.i = icmp eq i32 %call192.i, 0
  br i1 %tobool193.not.i, label %land.lhs.true191.i.do.end199.i_crit_edge, label %land.lhs.true194.i

land.lhs.true191.i.do.end199.i_crit_edge:         ; preds = %land.lhs.true191.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end199.i

land.lhs.true194.i:                               ; preds = %land.lhs.true191.i
  %.b347.i = load i1, ptr @igmp_heard_query.__warned, align 1
  br i1 %.b347.i, label %land.lhs.true194.i.do.end199.i_crit_edge, label %if.then196.i

land.lhs.true194.i.do.end199.i_crit_edge:         ; preds = %land.lhs.true194.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end199.i

if.then196.i:                                     ; preds = %land.lhs.true194.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @igmp_heard_query.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1040, ptr noundef nonnull @.str.20) #12
  br label %do.end199.i

do.end199.i:                                      ; preds = %if.then196.i, %land.lhs.true194.i.do.end199.i_crit_edge, %land.lhs.true191.i.do.end199.i_crit_edge, %rcu_read_lock.exit.i.do.end199.i_crit_edge
  %cmp201.not388.i = icmp eq ptr %126, null
  br i1 %cmp201.not388.i, label %do.end199.i.for.end.i_crit_edge, label %for.body.lr.ph.i

do.end199.i.for.end.i_crit_edge:                  ; preds = %do.end199.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %do.end199.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %group.1.i)
  %tobool203.not.i = icmp eq i32 %group.1.i, 0
  %sysctl_igmp_llm_reports.i = getelementptr inbounds %struct.net, ptr %56, i32 0, i32 35, i32 119
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mark.0.i)
  %tobool226.i = icmp ne i32 %mark.0.i, 0
  %conv230.i = trunc i32 %mark.0.i to i8
  %nsrcs235.i = getelementptr inbounds %struct.igmpv3_query, ptr %ih3.1.i, i32 0, i32 6
  %srcs.i = getelementptr inbounds %struct.igmpv3_query, ptr %ih3.1.i, i32 0, i32 7
  br label %for.body.i

for.body.i:                                       ; preds = %do.end258.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %im.0389.i = phi ptr [ %126, %for.body.lr.ph.i ], [ %175, %do.end258.i.for.body.i_crit_edge ]
  br i1 %tobool203.not.i, label %for.body.i.if.end208.i_crit_edge, label %land.lhs.true204.i

for.body.i.if.end208.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end208.i

land.lhs.true204.i:                               ; preds = %for.body.i
  %multiaddr.i = getelementptr inbounds %struct.ip_mc_list, ptr %im.0389.i, i32 0, i32 1
  %127 = ptrtoint ptr %multiaddr.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %multiaddr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %group.1.i, i32 %128)
  %cmp205.not.i = icmp eq i32 %group.1.i, %128
  br i1 %cmp205.not.i, label %land.lhs.true204.i.if.end208.i_crit_edge, label %land.lhs.true204.i.cleanup.i_crit_edge

land.lhs.true204.i.cleanup.i_crit_edge:           ; preds = %land.lhs.true204.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

land.lhs.true204.i.if.end208.i_crit_edge:         ; preds = %land.lhs.true204.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end208.i

if.end208.i:                                      ; preds = %land.lhs.true204.i.if.end208.i_crit_edge, %for.body.i.if.end208.i_crit_edge
  %multiaddr209.i = getelementptr inbounds %struct.ip_mc_list, ptr %im.0389.i, i32 0, i32 1
  %129 = ptrtoint ptr %multiaddr209.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %multiaddr209.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870911, i32 %130)
  %cmp210.i = icmp eq i32 %130, -536870911
  br i1 %cmp210.i, label %if.end208.i.cleanup.i_crit_edge, label %if.end213.i

if.end208.i.cleanup.i_crit_edge:                  ; preds = %if.end208.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

if.end213.i:                                      ; preds = %if.end208.i
  %and.i.i = and i32 %130, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i.i)
  %cmp.i.i95 = icmp eq i32 %and.i.i, -536870912
  br i1 %cmp.i.i95, label %land.lhs.true217.i, label %if.end213.i.if.end221.i_crit_edge

if.end213.i.if.end221.i_crit_edge:                ; preds = %if.end213.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end221.i

land.lhs.true217.i:                               ; preds = %if.end213.i
  %131 = ptrtoint ptr %sysctl_igmp_llm_reports.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %sysctl_igmp_llm_reports.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %132)
  %tobool219.not.i = icmp eq i8 %132, 0
  br i1 %tobool219.not.i, label %land.lhs.true217.i.cleanup.i_crit_edge, label %land.lhs.true217.i.if.end221.i_crit_edge

land.lhs.true217.i.if.end221.i_crit_edge:         ; preds = %land.lhs.true217.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end221.i

land.lhs.true217.i.cleanup.i_crit_edge:           ; preds = %land.lhs.true217.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

if.end221.i:                                      ; preds = %land.lhs.true217.i.if.end221.i_crit_edge, %if.end213.i.if.end221.i_crit_edge
  %lock.i = getelementptr inbounds %struct.ip_mc_list, ptr %im.0389.i, i32 0, i32 11
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #12
  %tm_running.i = getelementptr inbounds %struct.ip_mc_list, ptr %im.0389.i, i32 0, i32 12
  %133 = ptrtoint ptr %tm_running.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %tm_running.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %tobool222.not.i = icmp eq i8 %134, 0
  %gsquery231.i = getelementptr inbounds %struct.ip_mc_list, ptr %im.0389.i, i32 0, i32 16
  br i1 %tobool222.not.i, label %if.end221.i.if.end232.i_crit_edge, label %if.then223.i

if.end221.i.if.end232.i_crit_edge:                ; preds = %if.end221.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end232.i

if.then223.i:                                     ; preds = %if.end221.i
  call void @__sanitizer_cov_trace_pc() #14
  %135 = ptrtoint ptr %gsquery231.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %gsquery231.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %136)
  %tobool225.not.i = icmp ne i8 %136, 0
  %spec.select.i = select i1 %tobool225.not.i, i1 %tobool226.i, i1 false
  %conv227.i = zext i1 %spec.select.i to i8
  br label %if.end232.i

if.end232.i:                                      ; preds = %if.then223.i, %if.end221.i.if.end232.i_crit_edge
  %conv230.sink.i = phi i8 [ %conv227.i, %if.then223.i ], [ %conv230.i, %if.end221.i.if.end232.i_crit_edge ]
  %137 = ptrtoint ptr %gsquery231.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %conv230.sink.i, ptr %gsquery231.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv230.sink.i)
  %tobool234.not.i = icmp eq i8 %conv230.sink.i, 0
  br i1 %tobool234.not.i, label %if.end232.i.if.then241.sink.split.i_crit_edge, label %lor.rhs.i

if.end232.i.if.then241.sink.split.i_crit_edge:    ; preds = %if.end232.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then241.sink.split.i

lor.rhs.i:                                        ; preds = %if.end232.i
  %138 = ptrtoint ptr %nsrcs235.i to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %nsrcs235.i, align 2
  %conv236.i = zext i16 %139 to i32
  %sfmode.i.i = getelementptr inbounds %struct.ip_mc_list, ptr %im.0389.i, i32 0, i32 2
  %140 = ptrtoint ptr %sfmode.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %sfmode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %cmp.i363.i = icmp eq i32 %141, 0
  %sources.i.i.i = getelementptr inbounds %struct.ip_mc_list, ptr %im.0389.i, i32 0, i32 3
  %142 = ptrtoint ptr %sources.i.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %psf.037.i.i.i = load ptr, ptr %sources.i.i.i, align 4
  %tobool.not38.i.i.i = icmp eq ptr %psf.037.i.i.i, null
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %139)
  %cmp39.i.i.i = icmp eq i16 %139, 0
  %or.cond40.i.i.i = or i1 %cmp39.i.i.i, %tobool.not38.i.i.i
  br i1 %cmp.i363.i, label %if.then.i364.i, label %if.end.i.i

if.then.i364.i:                                   ; preds = %lor.rhs.i
  br i1 %or.cond40.i.i.i, label %if.then.i364.i.igmp_marksources.exit.i_crit_edge, label %for.cond1.preheader.lr.ph.i.i.i

if.then.i364.i.igmp_marksources.exit.i_crit_edge: ; preds = %if.then.i364.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %igmp_marksources.exit.i

for.cond1.preheader.lr.ph.i.i.i:                  ; preds = %if.then.i364.i
  %sfcount.i.i.i = getelementptr inbounds %struct.ip_mc_list, ptr %im.0389.i, i32 0, i32 5
  br label %for.cond1.preheader.i.i.i

for.cond1.preheader.i.i.i:                        ; preds = %for.inc16.i.i.i.for.cond1.preheader.i.i.i_crit_edge, %for.cond1.preheader.lr.ph.i.i.i
  %psf.042.i.i.i = phi ptr [ %psf.037.i.i.i, %for.cond1.preheader.lr.ph.i.i.i ], [ %psf.0.i.i.i, %for.inc16.i.i.i.for.cond1.preheader.i.i.i_crit_edge ]
  %scount.041.i.i.i = phi i32 [ 0, %for.cond1.preheader.lr.ph.i.i.i ], [ %scount.1.i.i.i, %for.inc16.i.i.i.for.cond1.preheader.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr %struct.ip_sf_list, ptr %psf.042.i.i.i, i32 0, i32 1, i32 1
  %143 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %tobool4.not.i.i.i = icmp eq i32 %144, 0
  %sf_inaddr.i.i.i = getelementptr inbounds %struct.ip_sf_list, ptr %psf.042.i.i.i, i32 0, i32 2
  br i1 %tobool4.not.i.i.i, label %for.body3.lr.ph.split.i.i.i, label %for.cond1.preheader.i.i.i.for.inc16.i.i.i_crit_edge

for.cond1.preheader.i.i.i.for.inc16.i.i.i_crit_edge: ; preds = %for.cond1.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc16.i.i.i

for.body3.lr.ph.split.i.i.i:                      ; preds = %for.cond1.preheader.i.i.i
  %sf_count.i.i.i = getelementptr inbounds %struct.ip_sf_list, ptr %psf.042.i.i.i, i32 0, i32 1
  %145 = ptrtoint ptr %sfcount.i.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %sfcount.i.i.i, align 4
  %147 = ptrtoint ptr %sf_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %sf_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %146, i32 %148)
  %cmp8.not.i.i.i = icmp eq i32 %146, %148
  br i1 %cmp8.not.i.i.i, label %for.body3.lr.ph.split.split.i.i.i, label %for.body3.lr.ph.split.i.i.i.for.inc16.i.i.i_crit_edge

for.body3.lr.ph.split.i.i.i.for.inc16.i.i.i_crit_edge: ; preds = %for.body3.lr.ph.split.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc16.i.i.i

for.body3.lr.ph.split.split.i.i.i:                ; preds = %for.body3.lr.ph.split.i.i.i
  %149 = ptrtoint ptr %sf_inaddr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %sf_inaddr.i.i.i, align 4
  br label %for.body3.i.i.i

for.cond1.i.i.i:                                  ; preds = %for.body3.i.i.i
  %inc15.i.i.i = add nuw nsw i32 %i.036.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc15.i.i.i, %conv236.i
  br i1 %exitcond.not.i.i.i, label %for.cond1.i.i.i.for.inc16.i.i.i_crit_edge, label %for.cond1.i.i.i.for.body3.i.i.i_crit_edge

for.cond1.i.i.i.for.body3.i.i.i_crit_edge:        ; preds = %for.cond1.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body3.i.i.i

for.cond1.i.i.i.for.inc16.i.i.i_crit_edge:        ; preds = %for.cond1.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc16.i.i.i

for.body3.i.i.i:                                  ; preds = %for.cond1.i.i.i.for.body3.i.i.i_crit_edge, %for.body3.lr.ph.split.split.i.i.i
  %i.036.i.i.i = phi i32 [ 0, %for.body3.lr.ph.split.split.i.i.i ], [ %inc15.i.i.i, %for.cond1.i.i.i.for.body3.i.i.i_crit_edge ]
  %arrayidx11.i.i.i = getelementptr i32, ptr %srcs.i, i32 %i.036.i.i.i
  %151 = ptrtoint ptr %arrayidx11.i.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %arrayidx11.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %152, i32 %150)
  %cmp12.i.i.i = icmp eq i32 %152, %150
  br i1 %cmp12.i.i.i, label %if.then13.i.i.i, label %for.cond1.i.i.i

if.then13.i.i.i:                                  ; preds = %for.body3.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %inc.i.i.i = add i32 %scount.041.i.i.i, 1
  br label %for.inc16.i.i.i

for.inc16.i.i.i:                                  ; preds = %if.then13.i.i.i, %for.cond1.i.i.i.for.inc16.i.i.i_crit_edge, %for.body3.lr.ph.split.i.i.i.for.inc16.i.i.i_crit_edge, %for.cond1.preheader.i.i.i.for.inc16.i.i.i_crit_edge
  %scount.1.i.i.i = phi i32 [ %inc.i.i.i, %if.then13.i.i.i ], [ %scount.041.i.i.i, %for.body3.lr.ph.split.i.i.i.for.inc16.i.i.i_crit_edge ], [ %scount.041.i.i.i, %for.cond1.preheader.i.i.i.for.inc16.i.i.i_crit_edge ], [ %scount.041.i.i.i, %for.cond1.i.i.i.for.inc16.i.i.i_crit_edge ]
  %153 = ptrtoint ptr %psf.042.i.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %psf.0.i.i.i = load ptr, ptr %psf.042.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %psf.0.i.i.i, null
  call void @__sanitizer_cov_trace_cmp4(i32 %scount.1.i.i.i, i32 %conv236.i)
  %cmp.i.i365.i = icmp eq i32 %scount.1.i.i.i, %conv236.i
  %or.cond.i.i.i = select i1 %tobool.not.i.i.i, i1 true, i1 %cmp.i.i365.i
  br i1 %or.cond.i.i.i, label %for.inc16.i.i.i.igmp_marksources.exit.i_crit_edge, label %for.inc16.i.i.i.for.cond1.preheader.i.i.i_crit_edge

for.inc16.i.i.i.for.cond1.preheader.i.i.i_crit_edge: ; preds = %for.inc16.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond1.preheader.i.i.i

for.inc16.i.i.i.igmp_marksources.exit.i_crit_edge: ; preds = %for.inc16.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %igmp_marksources.exit.i

if.end.i.i:                                       ; preds = %lor.rhs.i
  br i1 %or.cond40.i.i.i, label %if.end.i.i.igmp_marksources.exit.thread385.i_crit_edge, label %if.end.i.i.for.cond4.preheader.i.i_crit_edge

if.end.i.i.for.cond4.preheader.i.i_crit_edge:     ; preds = %if.end.i.i
  br label %for.cond4.preheader.i.i

if.end.i.i.igmp_marksources.exit.thread385.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %igmp_marksources.exit.thread385.i

for.cond4.preheader.i.i:                          ; preds = %for.inc11.i.i.for.cond4.preheader.i.i_crit_edge, %if.end.i.i.for.cond4.preheader.i.i_crit_edge
  %psf.040.i.i = phi ptr [ %psf.0.i.i, %for.inc11.i.i.for.cond4.preheader.i.i_crit_edge ], [ %psf.037.i.i.i, %if.end.i.i.for.cond4.preheader.i.i_crit_edge ]
  %scount.039.i.i = phi i32 [ %scount.1.i.i, %for.inc11.i.i.for.cond4.preheader.i.i_crit_edge ], [ 0, %if.end.i.i.for.cond4.preheader.i.i_crit_edge ]
  %sf_inaddr.i.i = getelementptr inbounds %struct.ip_sf_list, ptr %psf.040.i.i, i32 0, i32 2
  %154 = ptrtoint ptr %sf_inaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %sf_inaddr.i.i, align 4
  br label %for.body6.i.i

for.cond4.i.i:                                    ; preds = %for.body6.i.i
  %inc10.i.i = add nuw nsw i32 %i.034.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc10.i.i, %conv236.i
  br i1 %exitcond.not.i.i, label %for.cond4.i.i.for.inc11.i.i_crit_edge, label %for.cond4.i.i.for.body6.i.i_crit_edge

for.cond4.i.i.for.body6.i.i_crit_edge:            ; preds = %for.cond4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body6.i.i

for.cond4.i.i.for.inc11.i.i_crit_edge:            ; preds = %for.cond4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc11.i.i

for.body6.i.i:                                    ; preds = %for.cond4.i.i.for.body6.i.i_crit_edge, %for.cond4.preheader.i.i
  %i.034.i.i = phi i32 [ 0, %for.cond4.preheader.i.i ], [ %inc10.i.i, %for.cond4.i.i.for.body6.i.i_crit_edge ]
  %arrayidx.i366.i = getelementptr i32, ptr %srcs.i, i32 %i.034.i.i
  %156 = ptrtoint ptr %arrayidx.i366.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %arrayidx.i366.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %157, i32 %155)
  %cmp7.i.i96 = icmp eq i32 %157, %155
  br i1 %cmp7.i.i96, label %if.then8.i.i, label %for.cond4.i.i

if.then8.i.i:                                     ; preds = %for.body6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sf_gsresp.i.i = getelementptr inbounds %struct.ip_sf_list, ptr %psf.040.i.i, i32 0, i32 3
  %158 = ptrtoint ptr %sf_gsresp.i.i to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 1, ptr %sf_gsresp.i.i, align 4
  %inc.i.i = add i32 %scount.039.i.i, 1
  br label %for.inc11.i.i

for.inc11.i.i:                                    ; preds = %if.then8.i.i, %for.cond4.i.i.for.inc11.i.i_crit_edge
  %scount.1.i.i = phi i32 [ %inc.i.i, %if.then8.i.i ], [ %scount.039.i.i, %for.cond4.i.i.for.inc11.i.i_crit_edge ]
  %159 = ptrtoint ptr %psf.040.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %psf.0.i.i = load ptr, ptr %psf.040.i.i, align 4
  %tobool.not.i367.i = icmp eq ptr %psf.0.i.i, null
  call void @__sanitizer_cov_trace_cmp4(i32 %scount.1.i.i, i32 %conv236.i)
  %cmp1.i.i = icmp eq i32 %scount.1.i.i, %conv236.i
  %or.cond.i.i97 = select i1 %tobool.not.i367.i, i1 true, i1 %cmp1.i.i
  br i1 %or.cond.i.i97, label %for.end12.i.i, label %for.inc11.i.i.for.cond4.preheader.i.i_crit_edge

for.inc11.i.i.for.cond4.preheader.i.i_crit_edge:  ; preds = %for.inc11.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond4.preheader.i.i

for.end12.i.i:                                    ; preds = %for.inc11.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %scount.1.i.i)
  %tobool13.not.i.i = icmp eq i32 %scount.1.i.i, 0
  br i1 %tobool13.not.i.i, label %for.end12.i.i.igmp_marksources.exit.thread385.i_crit_edge, label %igmp_marksources.exit.thread.i

for.end12.i.i.igmp_marksources.exit.thread385.i_crit_edge: ; preds = %for.end12.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %igmp_marksources.exit.thread385.i

igmp_marksources.exit.thread385.i:                ; preds = %for.end12.i.i.igmp_marksources.exit.thread385.i_crit_edge, %if.end.i.i.igmp_marksources.exit.thread385.i_crit_edge
  %160 = ptrtoint ptr %gsquery231.i to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 0, ptr %gsquery231.i, align 4
  br label %cleanup.sink.split.i

igmp_marksources.exit.thread.i:                   ; preds = %for.end12.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %161 = ptrtoint ptr %gsquery231.i to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 1, ptr %gsquery231.i, align 4
  br label %if.then241.sink.split.i

igmp_marksources.exit.i:                          ; preds = %for.inc16.i.i.i.igmp_marksources.exit.i_crit_edge, %if.then.i364.i.igmp_marksources.exit.i_crit_edge
  %cmp.lcssa.i.i.i = phi i1 [ %cmp39.i.i.i, %if.then.i364.i.igmp_marksources.exit.i_crit_edge ], [ %cmp.i.i365.i, %for.inc16.i.i.i.igmp_marksources.exit.i_crit_edge ]
  %162 = ptrtoint ptr %gsquery231.i to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 0, ptr %gsquery231.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #12
  br i1 %cmp.lcssa.i.i.i, label %igmp_marksources.exit.i.cleanup.i_crit_edge, label %igmp_marksources.exit.i.if.then241.i_crit_edge

igmp_marksources.exit.i.if.then241.i_crit_edge:   ; preds = %igmp_marksources.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then241.i

igmp_marksources.exit.i.cleanup.i_crit_edge:      ; preds = %igmp_marksources.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

if.then241.sink.split.i:                          ; preds = %igmp_marksources.exit.thread.i, %if.end232.i.if.then241.sink.split.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #12
  br label %if.then241.i

if.then241.i:                                     ; preds = %if.then241.sink.split.i, %igmp_marksources.exit.i.if.then241.i_crit_edge
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #12
  %unsolicit_count.i.i = getelementptr inbounds %struct.ip_mc_list, ptr %im.0389.i, i32 0, i32 14
  %163 = ptrtoint ptr %unsolicit_count.i.i to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 0, ptr %unsolicit_count.i.i, align 2
  %timer.i.i = getelementptr inbounds %struct.ip_mc_list, ptr %im.0389.i, i32 0, i32 8
  %call.i368.i = tail call i32 @del_timer(ptr noundef %timer.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i368.i)
  %tobool.not.i369.i = icmp eq i32 %call.i368.i, 0
  br i1 %tobool.not.i369.i, label %if.then241.i.if.end5.i.i_crit_edge, label %if.then.i371.i

if.then241.i.if.end5.i.i_crit_edge:               ; preds = %if.then241.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5.i.i

if.then.i371.i:                                   ; preds = %if.then241.i
  %expires.i.i = getelementptr inbounds %struct.ip_mc_list, ptr %im.0389.i, i32 0, i32 8, i32 1
  %164 = ptrtoint ptr %expires.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %expires.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %166 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i98 = sub i32 %165, %166
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i98, i32 %max_delay.1.i)
  %cmp.i370.i = icmp slt i32 %sub.i.i98, %max_delay.1.i
  br i1 %cmp.i370.i, label %if.then2.i.i, label %if.end.i372.i

if.then2.i.i:                                     ; preds = %if.then.i371.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @add_timer(ptr noundef %timer.i.i) #12
  %167 = ptrtoint ptr %tm_running.i to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 1, ptr %tm_running.i, align 4
  br label %cleanup.sink.split.i

if.end.i372.i:                                    ; preds = %if.then.i371.i
  %refcnt.i.i = getelementptr inbounds %struct.ip_mc_list, ptr %im.0389.i, i32 0, i32 10
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !246
  tail call void @llvm.prefetch.p0(ptr %refcnt.i.i, i32 1, i32 3, i32 1) #12
  %168 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i, ptr %refcnt.i.i, i32 1, ptr elementtype(i32) %refcnt.i.i) #12, !srcloc !247
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %168, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %asmresult.i.i.i.i.i.i.i, 2
  br i1 %cmp.i.i.i.i, label %if.then3.i.i.i.i, label %if.end.i372.i.if.end5.i.i_crit_edge, !prof !244

if.end.i372.i.if.end5.i.i_crit_edge:              ; preds = %if.end.i372.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5.i.i

if.then3.i.i.i.i:                                 ; preds = %if.end.i372.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i.i, i32 noundef 4) #12
  br label %if.end5.i.i

if.end5.i.i:                                      ; preds = %if.then3.i.i.i.i, %if.end.i372.i.if.end5.i.i_crit_edge, %if.then241.i.if.end5.i.i_crit_edge
  %call.i.i.i = tail call i32 @prandom_u32() #12
  %rem.i.i.i = urem i32 %call.i.i.i, %max_delay.1.i
  %169 = ptrtoint ptr %tm_running.i to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 1, ptr %tm_running.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %170 = load volatile i32, ptr @jiffies, align 128
  %add.i.i.i = add i32 %rem.i.i.i, 2
  %add1.i.i.i = add i32 %add.i.i.i, %170
  %call2.i.i.i = tail call i32 @mod_timer(ptr noundef %timer.i.i, i32 noundef %add1.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool.not.i.i373.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool.not.i.i373.i, label %if.then.i.i.i, label %if.end5.i.i.cleanup.sink.split.i_crit_edge

if.end5.i.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i

if.then.i.i.i:                                    ; preds = %if.end5.i.i
  %refcnt.i.i.i = getelementptr inbounds %struct.ip_mc_list, ptr %im.0389.i, i32 0, i32 10
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %refcnt.i.i.i, i32 1, i32 3, i32 1) #12
  %171 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i.i, ptr %refcnt.i.i.i, i32 1, ptr elementtype(i32) %refcnt.i.i.i) #12, !srcloc !249
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %171, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !244

if.then.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then.i.i.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %172 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %172)
  %.not.i.i.i.i.i.i = icmp sgt i32 %172, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.cleanup.sink.split.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !250

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.cleanup.sink.split.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i.i.i, i32 noundef %.sink.i.i.i.i.i.i) #12
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.cleanup.sink.split.i_crit_edge, %if.end5.i.i.cleanup.sink.split.i_crit_edge, %if.then2.i.i, %igmp_marksources.exit.thread385.i
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #12
  br label %cleanup.i

cleanup.i:                                        ; preds = %cleanup.sink.split.i, %igmp_marksources.exit.i.cleanup.i_crit_edge, %land.lhs.true217.i.cleanup.i_crit_edge, %if.end208.i.cleanup.i_crit_edge, %land.lhs.true204.i.cleanup.i_crit_edge
  %173 = getelementptr inbounds %struct.ip_mc_list, ptr %im.0389.i, i32 0, i32 6
  %174 = ptrtoint ptr %173 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load volatile ptr, ptr %173, align 4
  %call248.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call248.i)
  %tobool249.not.i = icmp eq i32 %call248.i, 0
  br i1 %tobool249.not.i, label %land.lhs.true250.i, label %cleanup.i.do.end258.i_crit_edge

cleanup.i.do.end258.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end258.i

land.lhs.true250.i:                               ; preds = %cleanup.i
  %call251.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call251.i)
  %tobool252.not.i = icmp eq i32 %call251.i, 0
  br i1 %tobool252.not.i, label %land.lhs.true250.i.do.end258.i_crit_edge, label %land.lhs.true253.i

land.lhs.true250.i.do.end258.i_crit_edge:         ; preds = %land.lhs.true250.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end258.i

land.lhs.true253.i:                               ; preds = %land.lhs.true250.i
  %.b345346.i = load i1, ptr @igmp_heard_query.__warned.28, align 1
  br i1 %.b345346.i, label %land.lhs.true253.i.do.end258.i_crit_edge, label %if.then255.i

land.lhs.true253.i.do.end258.i_crit_edge:         ; preds = %land.lhs.true253.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end258.i

if.then255.i:                                     ; preds = %land.lhs.true253.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @igmp_heard_query.__warned.28, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1040, ptr noundef nonnull @.str.20) #12
  br label %do.end258.i

do.end258.i:                                      ; preds = %if.then255.i, %land.lhs.true253.i.do.end258.i_crit_edge, %land.lhs.true250.i.do.end258.i_crit_edge, %cleanup.i.do.end258.i_crit_edge
  %cmp201.not.i = icmp eq ptr %175, null
  br i1 %cmp201.not.i, label %do.end258.i.for.end.i_crit_edge, label %do.end258.i.for.body.i_crit_edge

do.end258.i.for.body.i_crit_edge:                 ; preds = %do.end258.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

do.end258.i.for.end.i_crit_edge:                  ; preds = %do.end258.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.end.i:                                        ; preds = %do.end258.i.for.end.i_crit_edge, %do.end199.i.for.end.i_crit_edge
  %call.i374.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i374.i, label %for.end.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i377.i

for.end.i.rcu_read_unlock.exit.i_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i

land.lhs.true.i377.i:                             ; preds = %for.end.i
  %call1.i375.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i375.i)
  %tobool.not.i376.i = icmp eq i32 %call1.i375.i, 0
  br i1 %tobool.not.i376.i, label %land.lhs.true.i377.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i379.i

land.lhs.true.i377.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i377.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i379.i:                            ; preds = %land.lhs.true.i377.i
  %.b4.i378.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i378.i, label %land.lhs.true2.i379.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i380.i

land.lhs.true2.i379.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i379.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i

if.then.i380.i:                                   ; preds = %land.lhs.true2.i379.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.49, i32 noundef 724, ptr noundef nonnull @.str.51) #12
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i380.i, %land.lhs.true2.i379.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i377.i.rcu_read_unlock.exit.i_crit_edge, %for.end.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !251
  %176 = tail call i32 @llvm.read_register.i32(metadata !234) #12
  %and.i.i.i.i.i381.i = and i32 %176, -16384
  %177 = inttoptr i32 %and.i.i.i.i.i381.i to ptr
  %preempt_count.i.i.i.i382.i = getelementptr inbounds %struct.thread_info, ptr %177, i32 0, i32 1
  %178 = ptrtoint ptr %preempt_count.i.i.i.i382.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load volatile i32, ptr %preempt_count.i.i.i.i382.i, align 4
  %sub.i.i.i.i = add i32 %179, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i382.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %if.else

sw.bb23:                                          ; preds = %if.end20.sw.bb23_crit_edge, %if.end20.sw.bb23_crit_edge113
  %180 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %181 = ptrtoint ptr %180 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %180, align 8
  %and.i.i100 = and i32 %182, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i100)
  %tobool.not.i.i101 = icmp eq i32 %and.i.i100, 0
  br i1 %tobool.not.i.i101, label %sw.bb23.skb_rtable.exit_crit_edge, label %land.lhs.true.i.i103

sw.bb23.skb_rtable.exit_crit_edge:                ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_rtable.exit

land.lhs.true.i.i103:                             ; preds = %sw.bb23
  %call.i.i102 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i102)
  %tobool1.not.i.i = icmp eq i32 %call.i.i102, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i103.skb_rtable.exit_crit_edge

land.lhs.true.i.i103.skb_rtable.exit_crit_edge:   ; preds = %land.lhs.true.i.i103
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_rtable.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i103
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.skb_rtable.exit_crit_edge, !prof !244

land.rhs.i.i.skb_rtable.exit_crit_edge:           ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_rtable.exit

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 1013, i32 noundef 9, ptr noundef null) #12
  br label %skb_rtable.exit

skb_rtable.exit:                                  ; preds = %do.end.i.i, %land.rhs.i.i.skb_rtable.exit_crit_edge, %land.lhs.true.i.i103.skb_rtable.exit_crit_edge, %sw.bb23.skb_rtable.exit_crit_edge
  %183 = ptrtoint ptr %180 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %180, align 8
  %and25.i.i = and i32 %184, -2
  %185 = inttoptr i32 %and25.i.i to ptr
  %rt_is_input.i = getelementptr inbounds %struct.rtable, ptr %185, i32 0, i32 4
  %186 = ptrtoint ptr %rt_is_input.i to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %rt_is_input.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %187)
  %cmp.i104 = icmp eq i8 %187, 0
  br i1 %cmp.i104, label %skb_rtable.exit.if.then46_crit_edge, label %if.end27

skb_rtable.exit.if.then46_crit_edge:              ; preds = %skb_rtable.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then46

if.end27:                                         ; preds = %skb_rtable.exit
  %188 = ptrtoint ptr %csum_valid to i32
  call void @__asan_load2_noabort(i32 %188)
  %bf.load28 = load i16, ptr %csum_valid, align 8
  %bf.lshr = lshr i16 %bf.load28, 13
  %bf.lshr.off = add nsw i16 %bf.lshr, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %bf.lshr.off)
  %switch = icmp ult i16 %bf.lshr.off, 2
  br i1 %switch, label %if.then38, label %if.end27.if.then46_crit_edge

if.end27.if.then46_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then46

if.then38:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  %group = getelementptr inbounds %struct.igmphdr, ptr %add.ptr.i.i, i32 0, i32 3
  %189 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %group, align 4
  tail call fastcc void @igmp_heard_report(ptr noundef nonnull %12, i32 noundef %190)
  br label %if.else

sw.bb42:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  %call43 = tail call i32 @pim_rcv_v1(ptr noundef %skb) #12
  br label %cleanup

if.then46:                                        ; preds = %if.end27.if.then46_crit_edge, %skb_rtable.exit.if.then46_crit_edge, %if.then171.i.if.then46_crit_edge, %if.then91.i.if.then46_crit_edge, %if.else85.i.if.then46_crit_edge, %if.else28.i.if.then46_crit_edge, %if.end20.if.then46_crit_edge, %__skb_checksum_validate_complete.exit.if.then46_crit_edge, %pskb_may_pull.exit.if.then46_crit_edge, %if.end.i.if.then46_crit_edge, %__in_dev_get_rcu.exit.if.then46_crit_edge, %if.then.if.then46_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #12
  br label %cleanup

if.else:                                          ; preds = %if.then38, %rcu_read_unlock.exit.i, %if.end175.i
  tail call void @consume_skb(ptr noundef %skb) #12
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then46, %sw.bb42
  %retval.0 = phi i32 [ %call43, %sw.bb42 ], [ 0, %if.else ], [ 0, %if.then46 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index_rcu(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @pskb_may_pull(ptr noundef %skb, i32 noundef %len) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i, align 8
  %sub.i = sub i32 %1, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %len)
  %cmp.not = icmp ult i32 %sub.i, %len
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge, !prof !244

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %len)
  %cmp3 = icmp ult i32 %1, %len
  br i1 %cmp3, label %if.end.return_crit_edge, label %if.end11, !prof !244

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %sub = sub i32 %len, %sub.i
  %call13 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub) #12
  %cmp14 = icmp ne ptr %call13, null
  br label %return

return:                                           ; preds = %if.end11, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ %cmp14, %if.end11 ], [ true, %entry.return_crit_edge ], [ false, %if.end.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @igmp_heard_report(ptr noundef %in_dev, i32 noundef %group) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %in_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %in_dev, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 127
  %2 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nd_net.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870911, i32 %group)
  %cmp = icmp eq i32 %group, -536870911
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %and.i = and i32 %group, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, -536870912
  br i1 %cmp.i, label %land.lhs.true, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

land.lhs.true:                                    ; preds = %if.end
  %sysctl_igmp_llm_reports = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 35, i32 119
  %4 = ptrtoint ptr %sysctl_igmp_llm_reports to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sysctl_igmp_llm_reports, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end3_crit_edge

land.lhs.true.if.end3_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %land.lhs.true.if.end3_crit_edge, %if.end.if.end3_crit_edge
  %6 = tail call i32 @llvm.read_register.i32(metadata !234) #12
  %and.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %9, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !248
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %if.end3.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end3.rcu_read_lock.exit_crit_edge:             ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end3
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.49, i32 noundef 696, ptr noundef nonnull @.str.50) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end3.rcu_read_lock.exit_crit_edge
  %mc_list = getelementptr inbounds %struct.in_device, ptr %in_dev, i32 0, i32 5
  %10 = ptrtoint ptr %mc_list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %mc_list, align 4
  %call5 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true7, label %rcu_read_lock.exit.do.end15_crit_edge

rcu_read_lock.exit.do.end15_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end15

land.lhs.true7:                                   ; preds = %rcu_read_lock.exit
  %call8 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true7.do.end15_crit_edge, label %land.lhs.true10

land.lhs.true7.do.end15_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end15

land.lhs.true10:                                  ; preds = %land.lhs.true7
  %.b2 = load i1, ptr @igmp_heard_report.__warned, align 1
  br i1 %.b2, label %land.lhs.true10.do.end15_crit_edge, label %if.then12

land.lhs.true10.do.end15_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end15

if.then12:                                        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @igmp_heard_report.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 927, ptr noundef nonnull @.str.20) #12
  br label %do.end15

do.end15:                                         ; preds = %if.then12, %land.lhs.true10.do.end15_crit_edge, %land.lhs.true7.do.end15_crit_edge, %rcu_read_lock.exit.do.end15_crit_edge
  %cmp17.not13 = icmp eq ptr %11, null
  br i1 %cmp17.not13, label %do.end15.for.end_crit_edge, label %do.end15.for.body_crit_edge

do.end15.for.body_crit_edge:                      ; preds = %do.end15
  br label %for.body

do.end15.for.end_crit_edge:                       ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %do.end36.for.body_crit_edge, %do.end15.for.body_crit_edge
  %im.014 = phi ptr [ %16, %do.end36.for.body_crit_edge ], [ %11, %do.end15.for.body_crit_edge ]
  %multiaddr = getelementptr inbounds %struct.ip_mc_list, ptr %im.014, i32 0, i32 1
  %12 = ptrtoint ptr %multiaddr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %multiaddr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %group)
  %cmp18 = icmp eq i32 %13, %group
  br i1 %cmp18, label %if.then19, label %for.inc

if.then19:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @igmp_stop_timer(ptr noundef nonnull %im.014)
  br label %for.end

for.inc:                                          ; preds = %for.body
  %14 = getelementptr inbounds %struct.ip_mc_list, ptr %im.014, i32 0, i32 6
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %14, align 4
  %call26 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %land.lhs.true28, label %for.inc.do.end36_crit_edge

for.inc.do.end36_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end36

land.lhs.true28:                                  ; preds = %for.inc
  %call29 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %land.lhs.true28.do.end36_crit_edge, label %land.lhs.true31

land.lhs.true28.do.end36_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end36

land.lhs.true31:                                  ; preds = %land.lhs.true28
  %.b451 = load i1, ptr @igmp_heard_report.__warned.30, align 1
  br i1 %.b451, label %land.lhs.true31.do.end36_crit_edge, label %if.then33

land.lhs.true31.do.end36_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end36

if.then33:                                        ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @igmp_heard_report.__warned.30, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 927, ptr noundef nonnull @.str.20) #12
  br label %do.end36

do.end36:                                         ; preds = %if.then33, %land.lhs.true31.do.end36_crit_edge, %land.lhs.true28.do.end36_crit_edge, %for.inc.do.end36_crit_edge
  %cmp17.not = icmp eq ptr %16, null
  br i1 %cmp17.not, label %do.end36.for.end_crit_edge, label %do.end36.for.body_crit_edge

do.end36.for.body_crit_edge:                      ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

do.end36.for.end_crit_edge:                       ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %do.end36.for.end_crit_edge, %if.then19, %do.end15.for.end_crit_edge
  %call.i3 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i3, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i6

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i6:                                 ; preds = %for.end
  %call1.i4 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4)
  %tobool.not.i5 = icmp eq i32 %call1.i4, 0
  br i1 %tobool.not.i5, label %land.lhs.true.i6.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i8

land.lhs.true.i6.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i6
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i8:                                ; preds = %land.lhs.true.i6
  %.b4.i7 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7, label %land.lhs.true2.i8.rcu_read_unlock.exit_crit_edge, label %if.then.i9

land.lhs.true2.i8.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i8
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i9:                                       ; preds = %land.lhs.true2.i8
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.49, i32 noundef 724, ptr noundef nonnull @.str.51) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i9, %land.lhs.true2.i8.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i6.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !251
  %17 = tail call i32 @llvm.read_register.i32(metadata !234) #12
  %and.i.i.i.i.i10 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i10 to ptr
  %preempt_count.i.i.i.i11 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i.i.i11, align 4
  %sub.i.i.i = add i32 %20, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i11, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pim_rcv_v1(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__ip_mc_inc_group(ptr noundef %in_dev, i32 noundef %addr, i32 noundef %gfp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @____ip_mc_inc_group(ptr noundef %in_dev, i32 noundef %addr, i32 noundef 0, i32 noundef %gfp)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @____ip_mc_inc_group(ptr noundef %in_dev, i32 noundef %addr, i32 noundef %mode, i32 noundef %gfp) unnamed_addr #0 align 64 {
entry:
  %addr.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %addr.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %addr, ptr %addr.addr, align 4
  %call = tail call i32 @rtnl_is_locked() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b157 = load i1, ptr @____ip_mc_inc_group.__already_done, align 1
  br i1 %.b157, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !250

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @____ip_mc_inc_group.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1432, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 1432) #12
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %call38 = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call38, label %if.end29.do.end46_crit_edge, label %land.lhs.true

if.end29.do.end46_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end46

land.lhs.true:                                    ; preds = %if.end29
  %call39 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %land.lhs.true.do.end46_crit_edge, label %land.lhs.true41

land.lhs.true.do.end46_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end46

land.lhs.true41:                                  ; preds = %land.lhs.true
  %.b153156 = load i1, ptr @____ip_mc_inc_group.__warned, align 1
  br i1 %.b153156, label %land.lhs.true41.do.end46_crit_edge, label %if.then43

land.lhs.true41.do.end46_crit_edge:               ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end46

if.then43:                                        ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @____ip_mc_inc_group.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1434, ptr noundef nonnull @.str.2) #12
  br label %do.end46

do.end46:                                         ; preds = %if.then43, %land.lhs.true41.do.end46_crit_edge, %land.lhs.true.do.end46_crit_edge, %if.end29.do.end46_crit_edge
  %mc_list = getelementptr inbounds %struct.in_device, ptr %in_dev, i32 0, i32 5
  %1 = ptrtoint ptr %mc_list to i32
  call void @__asan_load4_noabort(i32 %1)
  %im.0159 = load ptr, ptr %mc_list, align 4
  %cmp.not160 = icmp eq ptr %im.0159, null
  br i1 %cmp.not160, label %do.end46.for.end_crit_edge, label %do.end46.for.body_crit_edge

do.end46.for.body_crit_edge:                      ; preds = %do.end46
  br label %for.body

do.end46.for.end_crit_edge:                       ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %do.end62.for.body_crit_edge, %do.end46.for.body_crit_edge
  %im.0161 = phi ptr [ %im.0, %do.end62.for.body_crit_edge ], [ %im.0159, %do.end46.for.body_crit_edge ]
  %multiaddr = getelementptr inbounds %struct.ip_mc_list, ptr %im.0161, i32 0, i32 1
  %2 = ptrtoint ptr %multiaddr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %multiaddr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %addr)
  %cmp48 = icmp eq i32 %3, %addr
  br i1 %cmp48, label %if.then49, label %do.body52

if.then49:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %users = getelementptr inbounds %struct.ip_mc_list, ptr %im.0161, i32 0, i32 9
  %4 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %users, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %users, align 4
  %call50 = call fastcc i32 @ip_mc_add_src(ptr noundef %in_dev, ptr noundef nonnull %addr.addr, i32 noundef %mode, i32 noundef 0, ptr noundef null, i32 noundef 0)
  br label %out

do.body52:                                        ; preds = %for.body
  %call53 = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call53, label %do.body52.do.end62_crit_edge, label %land.lhs.true54

do.body52.do.end62_crit_edge:                     ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end62

land.lhs.true54:                                  ; preds = %do.body52
  %call55 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %land.lhs.true54.do.end62_crit_edge, label %land.lhs.true57

land.lhs.true54.do.end62_crit_edge:               ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end62

land.lhs.true57:                                  ; preds = %land.lhs.true54
  %.b154155 = load i1, ptr @____ip_mc_inc_group.__warned.31, align 1
  br i1 %.b154155, label %land.lhs.true57.do.end62_crit_edge, label %if.then59

land.lhs.true57.do.end62_crit_edge:               ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end62

if.then59:                                        ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @____ip_mc_inc_group.__warned.31, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1434, ptr noundef nonnull @.str.2) #12
  br label %do.end62

do.end62:                                         ; preds = %if.then59, %land.lhs.true57.do.end62_crit_edge, %land.lhs.true54.do.end62_crit_edge, %do.body52.do.end62_crit_edge
  %6 = getelementptr inbounds %struct.ip_mc_list, ptr %im.0161, i32 0, i32 6
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %im.0 = load ptr, ptr %6, align 4
  %cmp.not = icmp eq ptr %im.0, null
  br i1 %cmp.not, label %do.end62.for.end_crit_edge, label %do.end62.for.body_crit_edge

do.end62.for.body_crit_edge:                      ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

do.end62.for.end_crit_edge:                       ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %do.end62.for.end_crit_edge, %do.end46.for.end_crit_edge
  %or.i = or i32 %gfp, 256
  %and.i.i.i = and i32 %gfp, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i19.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i19.i.i, label %for.end.kzalloc.exit_crit_edge, label %if.end.i.i.i, !prof !250

for.end.kzalloc.exit_crit_edge:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %kzalloc.exit

if.end.i.i.i:                                     ; preds = %for.end
  %and2.i.i.i = and i32 %gfp, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i.i.i.kzalloc.exit_crit_edge

if.end.i.i.i.kzalloc.exit_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %and6.i.i.i = and i32 %gfp, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc.exit

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i.i.i.kzalloc.exit_crit_edge, %for.end.kzalloc.exit_crit_edge
  %retval.0.i20.i.i = phi i32 [ 0, %for.end.kzalloc.exit_crit_edge ], [ 3, %if.end.i.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i20.i.i, i32 8
  %8 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef %or.i, i32 noundef 152) #16
  %tobool65.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool65.not, label %kzalloc.exit.out_crit_edge, label %if.end67

kzalloc.exit.out_crit_edge:                       ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end67:                                         ; preds = %kzalloc.exit
  %users68 = getelementptr inbounds %struct.ip_mc_list, ptr %call7.i.i, i32 0, i32 9
  %10 = ptrtoint ptr %users68 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %users68, align 4
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %in_dev, ptr %call7.i.i, align 8
  %refcnt = getelementptr inbounds %struct.in_device, ptr %in_dev, i32 0, i32 2
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #12
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #12, !srcloc !249
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.end67.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !244

if.end67.if.end15.sink.split.i.i.i_crit_edge:     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.end67
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %13 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %.not.i.i.i = icmp sgt i32 %13, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !250

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.end67.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.end67.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef %.sink.i.i.i) #12
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  %multiaddr69 = getelementptr inbounds %struct.ip_mc_list, ptr %call7.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %multiaddr69 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %addr, ptr %multiaddr69, align 4
  %sfmode = getelementptr inbounds %struct.ip_mc_list, ptr %call7.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %sfmode to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %mode, ptr %sfmode, align 8
  %arrayidx = getelementptr %struct.ip_mc_list, ptr %call7.i.i, i32 0, i32 5, i32 %mode
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %arrayidx, align 4
  %refcnt70 = getelementptr inbounds %struct.ip_mc_list, ptr %call7.i.i, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt70, i32 noundef 4) #12
  %17 = ptrtoint ptr %refcnt70 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 1, ptr %refcnt70, align 8
  %lock = getelementptr inbounds %struct.ip_mc_list, ptr %call7.i.i, i32 0, i32 11
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.32, ptr noundef nonnull @____ip_mc_inc_group.__key, i16 noundef signext 3) #12
  %timer = getelementptr inbounds %struct.ip_mc_list, ptr %call7.i.i, i32 0, i32 8
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @igmp_timer_expire, i32 noundef 0, ptr noundef nonnull @.str.34, ptr noundef nonnull @____ip_mc_inc_group.__key.33) #12
  %18 = ptrtoint ptr %mc_list to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mc_list, align 4
  %20 = getelementptr inbounds %struct.ip_mc_list, ptr %call7.i.i, i32 0, i32 6
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %19, ptr %20, align 4
  %mc_count = getelementptr inbounds %struct.in_device, ptr %in_dev, i32 0, i32 7
  %22 = ptrtoint ptr %mc_count to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mc_count, align 4
  %inc79 = add i32 %23, 1
  store i32 %inc79, ptr %mc_count, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !252
  %24 = ptrtoint ptr %mc_list to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %call7.i.i, ptr %mc_list, align 4
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call.i, label %refcount_inc.exit.do.end.i_crit_edge, label %land.lhs.true.i

refcount_inc.exit.do.end.i_crit_edge:             ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %refcount_inc.exit
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b160.i = load i1, ptr @ip_mc_hash_add.__warned, align 1
  br i1 %.b160.i, label %land.lhs.true2.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true2.i.do.end.i_crit_edge:              ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ip_mc_hash_add.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1383, ptr noundef nonnull @.str.2) #12
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true2.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %refcount_inc.exit.do.end.i_crit_edge
  %mc_hash4.i = getelementptr inbounds %struct.in_device, ptr %in_dev, i32 0, i32 6
  %25 = ptrtoint ptr %mc_hash4.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mc_hash4.i, align 4
  %tobool5.not.i = icmp eq ptr %26, null
  br i1 %tobool5.not.i, label %if.end46.i, label %if.then6.i

if.then6.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %multiaddr69 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %multiaddr69, align 4
  %mul.i.i.i.i = mul i32 %28, 1640531527
  %shr.i.i.i = lshr i32 %mul.i.i.i.i, 23
  %arrayidx.i = getelementptr ptr, ptr %26, i32 %shr.i.i.i
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i, align 4
  %next_hash.i = getelementptr inbounds %struct.ip_mc_list, ptr %call7.i.i, i32 0, i32 7
  %31 = ptrtoint ptr %next_hash.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %next_hash.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !253
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %call7.i.i, ptr %arrayidx.i, align 4
  br label %ip_mc_hash_add.exit

if.end46.i:                                       ; preds = %do.end.i
  %33 = ptrtoint ptr %mc_count to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mc_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %34)
  %cmp47.i = icmp slt i32 %34, 4
  br i1 %cmp47.i, label %if.end46.i.ip_mc_hash_add.exit_crit_edge, label %if.end49.i

if.end46.i.ip_mc_hash_add.exit_crit_edge:         ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip_mc_hash_add.exit

if.end49.i:                                       ; preds = %if.end46.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %35 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %35, i32 noundef 3520, i32 noundef 2048) #16
  %tobool51.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool51.not.i, label %if.end49.i.ip_mc_hash_add.exit_crit_edge, label %do.body54.i

if.end49.i.ip_mc_hash_add.exit_crit_edge:         ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip_mc_hash_add.exit

do.body54.i:                                      ; preds = %if.end49.i
  %call55.i = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call55.i, label %do.body54.i.do.end64.i_crit_edge, label %land.lhs.true56.i

do.body54.i.do.end64.i_crit_edge:                 ; preds = %do.body54.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end64.i

land.lhs.true56.i:                                ; preds = %do.body54.i
  %call57.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i)
  %tobool58.not.i = icmp eq i32 %call57.i, 0
  br i1 %tobool58.not.i, label %land.lhs.true56.i.do.end64.i_crit_edge, label %land.lhs.true59.i

land.lhs.true56.i.do.end64.i_crit_edge:           ; preds = %land.lhs.true56.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end64.i

land.lhs.true59.i:                                ; preds = %land.lhs.true56.i
  %.b156159.i = load i1, ptr @ip_mc_hash_add.__warned.37, align 1
  br i1 %.b156159.i, label %land.lhs.true59.i.do.end64.i_crit_edge, label %if.then61.i

land.lhs.true59.i.do.end64.i_crit_edge:           ; preds = %land.lhs.true59.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end64.i

if.then61.i:                                      ; preds = %land.lhs.true59.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ip_mc_hash_add.__warned.37, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1400, ptr noundef nonnull @.str.2) #12
  br label %do.end64.i

do.end64.i:                                       ; preds = %if.then61.i, %land.lhs.true59.i.do.end64.i_crit_edge, %land.lhs.true56.i.do.end64.i_crit_edge, %do.body54.i.do.end64.i_crit_edge
  %36 = ptrtoint ptr %mc_list to i32
  call void @__asan_load4_noabort(i32 %36)
  %im.addr.0164.i = load ptr, ptr %mc_list, align 4
  %cmp66.not165.i = icmp eq ptr %im.addr.0164.i, null
  br i1 %cmp66.not165.i, label %do.end64.i.do.body95.i_crit_edge, label %do.end64.i.for.body.i_crit_edge

do.end64.i.for.body.i_crit_edge:                  ; preds = %do.end64.i
  br label %for.body.i

do.end64.i.do.body95.i_crit_edge:                 ; preds = %do.end64.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body95.i

for.body.i:                                       ; preds = %do.end93.i.for.body.i_crit_edge, %do.end64.i.for.body.i_crit_edge
  %im.addr.0166.i = phi ptr [ %im.addr.0.i, %do.end93.i.for.body.i_crit_edge ], [ %im.addr.0164.i, %do.end64.i.for.body.i_crit_edge ]
  %multiaddr.i161.i = getelementptr inbounds %struct.ip_mc_list, ptr %im.addr.0166.i, i32 0, i32 1
  %37 = ptrtoint ptr %multiaddr.i161.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %multiaddr.i161.i, align 4
  %mul.i.i.i162.i = mul i32 %38, 1640531527
  %shr.i.i163.i = lshr i32 %mul.i.i.i162.i, 23
  %arrayidx68.i = getelementptr ptr, ptr %call7.i.i.i, i32 %shr.i.i163.i
  %39 = ptrtoint ptr %arrayidx68.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx68.i, align 4
  %next_hash69.i = getelementptr inbounds %struct.ip_mc_list, ptr %im.addr.0166.i, i32 0, i32 7
  %41 = ptrtoint ptr %next_hash69.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %next_hash69.i, align 4
  store volatile ptr %im.addr.0166.i, ptr %arrayidx68.i, align 4
  %call84.i = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call84.i, label %for.body.i.do.end93.i_crit_edge, label %land.lhs.true85.i

for.body.i.do.end93.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end93.i

land.lhs.true85.i:                                ; preds = %for.body.i
  %call86.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86.i)
  %tobool87.not.i = icmp eq i32 %call86.i, 0
  br i1 %tobool87.not.i, label %land.lhs.true85.i.do.end93.i_crit_edge, label %land.lhs.true88.i

land.lhs.true85.i.do.end93.i_crit_edge:           ; preds = %land.lhs.true85.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end93.i

land.lhs.true88.i:                                ; preds = %land.lhs.true85.i
  %.b157158.i = load i1, ptr @ip_mc_hash_add.__warned.38, align 1
  br i1 %.b157158.i, label %land.lhs.true88.i.do.end93.i_crit_edge, label %if.then90.i

land.lhs.true88.i.do.end93.i_crit_edge:           ; preds = %land.lhs.true88.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end93.i

if.then90.i:                                      ; preds = %land.lhs.true88.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ip_mc_hash_add.__warned.38, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1400, ptr noundef nonnull @.str.2) #12
  br label %do.end93.i

do.end93.i:                                       ; preds = %if.then90.i, %land.lhs.true88.i.do.end93.i_crit_edge, %land.lhs.true85.i.do.end93.i_crit_edge, %for.body.i.do.end93.i_crit_edge
  %42 = getelementptr inbounds %struct.ip_mc_list, ptr %im.addr.0166.i, i32 0, i32 6
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %im.addr.0.i = load ptr, ptr %42, align 4
  %cmp66.not.i = icmp eq ptr %im.addr.0.i, null
  br i1 %cmp66.not.i, label %do.end93.i.do.body95.i_crit_edge, label %do.end93.i.for.body.i_crit_edge

do.end93.i.for.body.i_crit_edge:                  ; preds = %do.end93.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

do.end93.i.do.body95.i_crit_edge:                 ; preds = %do.end93.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body95.i

do.body95.i:                                      ; preds = %do.end93.i.do.body95.i_crit_edge, %do.end64.i.do.body95.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !254
  %44 = ptrtoint ptr %mc_hash4.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %call7.i.i.i, ptr %mc_hash4.i, align 4
  br label %ip_mc_hash_add.exit

ip_mc_hash_add.exit:                              ; preds = %do.body95.i, %if.end49.i.ip_mc_hash_add.exit_crit_edge, %if.end46.i.ip_mc_hash_add.exit_crit_edge, %if.then6.i
  tail call fastcc void @igmpv3_del_delrec(ptr noundef %in_dev, ptr noundef nonnull %call7.i.i)
  tail call fastcc void @igmp_group_added(ptr noundef nonnull %call7.i.i)
  %dead = getelementptr inbounds %struct.in_device, ptr %in_dev, i32 0, i32 3
  %45 = ptrtoint ptr %dead to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dead, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool119.not = icmp eq i32 %46, 0
  br i1 %tobool119.not, label %if.then120, label %ip_mc_hash_add.exit.out_crit_edge

ip_mc_hash_add.exit.out_crit_edge:                ; preds = %ip_mc_hash_add.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then120:                                       ; preds = %ip_mc_hash_add.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @ip_rt_multicast_event(ptr noundef %in_dev) #12
  br label %out

out:                                              ; preds = %if.then120, %ip_mc_hash_add.exit.out_crit_edge, %kzalloc.exit.out_crit_edge, %if.then49
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ip_mc_inc_group(ptr noundef %in_dev, i32 noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @____ip_mc_inc_group(ptr noundef %in_dev, i32 noundef %addr, i32 noundef 0, i32 noundef 3264) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip_mc_check_igmp(ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %3 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 %conv.i.i.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %add.i = add i32 %sub.ptr.sub.i.i, 20
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len.i.i.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %8 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i.i = sub i32 %7, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %sub.i.i.i)
  %cmp.not.i.i = icmp ugt i32 %add.i, %sub.i.i.i
  br i1 %cmp.not.i.i, label %if.end.i.i, label %entry.if.end.i_crit_edge, !prof !244

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %add.i)
  %cmp3.i.i = icmp ult i32 %7, %add.i
  br i1 %cmp3.i.i, label %if.end.i.i.cleanup_crit_edge, label %pskb_may_pull.exit.i, !prof !244

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

pskb_may_pull.exit.i:                             ; preds = %if.end.i.i
  %sub.i.i = sub i32 %add.i, %sub.i.i.i
  %call13.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i) #12
  %cmp14.i.not.i = icmp eq ptr %call13.i.i, null
  br i1 %cmp14.i.not.i, label %pskb_may_pull.exit.i.cleanup_crit_edge, label %pskb_may_pull.exit.i.if.end.i_crit_edge

pskb_may_pull.exit.i.if.end.i_crit_edge:          ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

pskb_may_pull.exit.i.cleanup_crit_edge:           ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %pskb_may_pull.exit.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %10 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head.i.i.i, align 8
  %12 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i54.i = zext i16 %13 to i32
  %add.ptr.i.i55.i = getelementptr i8, ptr %11, i32 %conv.i.i54.i
  %14 = ptrtoint ptr %add.ptr.i.i55.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load.i = load i8, ptr %add.ptr.i.i55.i, align 4
  %bf.lshr.mask.i = and i8 %bf.load.i, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr.mask.i)
  %cmp.not.i = icmp eq i8 %bf.lshr.mask.i, 64
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end.i
  %bf.clear.i.i = shl i8 %bf.load.i, 2
  %15 = and i8 %bf.clear.i.i, 60
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %15)
  %cmp5.i = icmp ult i8 %15, 20
  br i1 %cmp5.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end8.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8.i:                                        ; preds = %lor.lhs.false.i
  %mul.i.i = zext i8 %15 to i32
  %add10.i = add i32 %sub.ptr.sub.i.i, %mul.i.i
  %16 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len.i.i.i, align 4
  %18 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i65.i = sub i32 %17, %19
  call void @__sanitizer_cov_trace_cmp4(i32 %add10.i, i32 %sub.i.i65.i)
  %cmp.not.i66.i = icmp ugt i32 %add10.i, %sub.i.i65.i
  br i1 %cmp.not.i66.i, label %if.end.i68.i, label %if.end8.i.if.end13.i_crit_edge, !prof !244

if.end8.i.if.end13.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i

if.end.i68.i:                                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %add10.i)
  %cmp3.i67.i = icmp ult i32 %17, %add10.i
  br i1 %cmp3.i67.i, label %if.end.i68.i.cleanup_crit_edge, label %pskb_may_pull.exit74.i, !prof !244

if.end.i68.i.cleanup_crit_edge:                   ; preds = %if.end.i68.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

pskb_may_pull.exit74.i:                           ; preds = %if.end.i68.i
  %sub.i69.i = sub i32 %add10.i, %sub.i.i65.i
  %call13.i70.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i69.i) #12
  %cmp14.i71.not.i = icmp eq ptr %call13.i70.i, null
  br i1 %cmp14.i71.not.i, label %pskb_may_pull.exit74.i.cleanup_crit_edge, label %pskb_may_pull.exit74.i.if.end13.i_crit_edge

pskb_may_pull.exit74.i.if.end13.i_crit_edge:      ; preds = %pskb_may_pull.exit74.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i

pskb_may_pull.exit74.i.cleanup_crit_edge:         ; preds = %pskb_may_pull.exit74.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13.i:                                       ; preds = %pskb_may_pull.exit74.i.if.end13.i_crit_edge, %if.end8.i.if.end13.i_crit_edge
  %20 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %head.i.i.i, align 8
  %22 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i77.i = zext i16 %23 to i32
  %add.ptr.i.i78.i = getelementptr i8, ptr %21, i32 %conv.i.i77.i
  %24 = ptrtoint ptr %add.ptr.i.i78.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load15.i = load i8, ptr %add.ptr.i.i78.i, align 4
  %bf.clear.i = and i8 %bf.load15.i, 15
  %conv16.i = zext i8 %bf.clear.i to i32
  %25 = tail call { i32, ptr, i32, i32 } asm sideeffect "ldr\09$0, [$1], #4\09\09@ ip_fast_csum\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09sub\09$2, $2, #5\09\09\09\09\09\0A\09adds\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A1:\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09tst\09$2, #15\09\09\09@ do this carefully\09\0A\09subne\09$2, $2, #1\09\09@ without destroying\09\0A\09bne\091b\09\09\09@ the carry flag\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09adc\09$0, $0, #0", "=r,=r,=r,=r,1,2,~{cc},~{memory}"(ptr %add.ptr.i.i78.i, i32 %conv16.i) #12, !srcloc !255
  %asmresult.i.i = extractvalue { i32, ptr, i32, i32 } %25, 0
  %26 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %asmresult.i.i) #15, !srcloc !245
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65537, i32 %26)
  %tobool.not.i = icmp ugt i32 %26, -65537
  br i1 %tobool.not.i, label %if.end21.i, label %if.end13.i.cleanup_crit_edge, !prof !250

if.end13.i.cleanup_crit_edge:                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end21.i:                                       ; preds = %if.end13.i
  %27 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %head.i.i.i, align 8
  %29 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i82.i = zext i16 %30 to i32
  %add.ptr.i.i83.i = getelementptr i8, ptr %28, i32 %conv.i.i82.i
  %31 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i85.i = ptrtoint ptr %add.ptr.i.i83.i to i32
  %sub.ptr.rhs.cast.i86.i = ptrtoint ptr %32 to i32
  %sub.ptr.sub.i87.i = sub i32 %sub.ptr.lhs.cast.i85.i, %sub.ptr.rhs.cast.i86.i
  %tot_len.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i78.i, i32 0, i32 2
  %33 = ptrtoint ptr %tot_len.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %tot_len.i, align 2
  %conv23.i = zext i16 %34 to i32
  %add24.i = add i32 %sub.ptr.sub.i87.i, %conv23.i
  %35 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %add24.i)
  %cmp26.i = icmp ult i32 %36, %add24.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add24.i, i32 %add10.i)
  %cmp29.i = icmp ult i32 %add24.i, %add10.i
  %or.cond.i = or i1 %cmp26.i, %cmp29.i
  br i1 %or.cond.i, label %if.end21.i.cleanup_crit_edge, label %if.end

if.end21.i.cleanup_crit_edge:                     ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %if.end21.i
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %28 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.rhs.cast.i86.i, %sub.ptr.rhs.cast.i.i.i
  %conv.i.i89.i = trunc i32 %sub.ptr.sub.i.i.i to i16
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %37 = trunc i32 %add10.i to i16
  %conv1.i.i = add i16 %conv.i.i89.i, %37
  %38 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv1.i.i, ptr %transport_header.i.i.i, align 2
  %39 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %head.i.i.i, align 8
  %41 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i = zext i16 %42 to i32
  %add.ptr.i.i = getelementptr i8, ptr %40, i32 %conv.i.i
  %protocol = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 6
  %43 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %protocol, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %44)
  %cmp2.not = icmp eq i8 %44, 2
  br i1 %cmp2.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %45 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %transport_header.i.i.i, align 2
  %conv.i.i.i20 = zext i16 %46 to i32
  %add.ptr.i.i.i21 = getelementptr i8, ptr %40, i32 %conv.i.i.i20
  %47 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i23 = ptrtoint ptr %add.ptr.i.i.i21 to i32
  %sub.ptr.rhs.cast.i.i24 = ptrtoint ptr %48 to i32
  %sub.ptr.sub.i.i25 = sub i32 %sub.ptr.lhs.cast.i.i23, %sub.ptr.rhs.cast.i.i24
  %add.i26 = add i32 %sub.ptr.sub.i.i25, 8
  %tot_len.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 2
  %49 = ptrtoint ptr %tot_len.i.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %tot_len.i.i, align 2
  %conv.i.i27 = zext i16 %50 to i32
  %sub.i.neg.i.i = add nuw nsw i32 %conv.i.i27, %conv.i.i
  %sub.i.i28 = sub nsw i32 %sub.i.neg.i.i, %conv.i.i.i20
  %51 = add i32 %sub.ptr.rhs.cast.i.i24, %conv.i.i.i20
  %sub.ptr.sub.i.i.i29 = sub i32 %sub.ptr.lhs.cast.i.i23, %51
  %add.i.i = add i32 %sub.ptr.sub.i.i.i29, %sub.i.neg.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %add.i26)
  %cmp.i.i = icmp ult i32 %add.i.i, %add.i26
  br i1 %cmp.i.i, label %if.end5.cleanup_crit_edge, label %if.end.i.i30

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i.i30:                                     ; preds = %if.end5
  %52 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %len.i.i.i, align 4
  %54 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i.i.i = sub i32 %53, %55
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i26, i32 %sub.i.i.i.i)
  %cmp.not.i.i.i = icmp ugt i32 %add.i26, %sub.i.i.i.i
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %if.end.i.i30.if.end.i31_crit_edge, !prof !244

if.end.i.i30.if.end.i31_crit_edge:                ; preds = %if.end.i.i30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i31

if.end.i.i.i:                                     ; preds = %if.end.i.i30
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %add.i26)
  %cmp3.i.i.i = icmp ult i32 %53, %add.i26
  br i1 %cmp3.i.i.i, label %if.end.i.i.i.cleanup_crit_edge, label %ip_mc_may_pull.exit.i, !prof !244

if.end.i.i.i.cleanup_crit_edge:                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

ip_mc_may_pull.exit.i:                            ; preds = %if.end.i.i.i
  %sub.i8.i.i = sub i32 %add.i26, %sub.i.i.i.i
  %call13.i.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i8.i.i) #12
  %cmp14.i.i.not.i = icmp eq ptr %call13.i.i.i, null
  br i1 %cmp14.i.i.not.i, label %ip_mc_may_pull.exit.i.cleanup_crit_edge, label %ip_mc_may_pull.exit.i.if.end.i31_crit_edge

ip_mc_may_pull.exit.i.if.end.i31_crit_edge:       ; preds = %ip_mc_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i31

ip_mc_may_pull.exit.i.cleanup_crit_edge:          ; preds = %ip_mc_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i31:                                       ; preds = %ip_mc_may_pull.exit.i.if.end.i31_crit_edge, %if.end.i.i30.if.end.i31_crit_edge
  %call3.i = tail call ptr @skb_checksum_trimmed(ptr noundef %skb, i32 noundef %sub.i.i28, ptr noundef nonnull @ip_mc_validate_checksum) #12
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %if.end.i31.cleanup_crit_edge, label %if.end6.i

if.end.i31.cleanup_crit_edge:                     ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6.i:                                        ; preds = %if.end.i31
  %cmp.not.i32 = icmp eq ptr %call3.i, %skb
  br i1 %cmp.not.i32, label %if.end6.i.if.end10_crit_edge, label %if.then7.i

if.end6.i.if.end10_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then7.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree_skb_reason(ptr noundef nonnull %call3.i, i32 noundef 0) #12
  br label %if.end10

if.end10:                                         ; preds = %if.then7.i, %if.end6.i.if.end10_crit_edge
  %56 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %head.i.i.i, align 8
  %58 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %transport_header.i.i.i, align 2
  %conv.i.i.i36 = zext i16 %59 to i32
  %add.ptr.i.i.i37 = getelementptr i8, ptr %57, i32 %conv.i.i.i36
  %60 = ptrtoint ptr %add.ptr.i.i.i37 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %add.ptr.i.i.i37, align 4
  %62 = zext i8 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.71)
  switch i8 %61, label %sw.default.i [
    i8 23, label %if.end10.cleanup_crit_edge
    i8 18, label %if.end10.cleanup_crit_edge53
    i8 22, label %if.end10.cleanup_crit_edge54
    i8 34, label %sw.bb1.i
    i8 17, label %sw.bb3.i
  ]

if.end10.cleanup_crit_edge54:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end10.cleanup_crit_edge53:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb1.i:                                         ; preds = %if.end10
  %63 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr.i.i.i37 to i32
  %sub.ptr.rhs.cast.i.i.i38 = ptrtoint ptr %64 to i32
  %sub.ptr.sub.i.i.i39 = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i38
  %add.i.i40 = add i32 %sub.ptr.sub.i.i.i39, 8
  %65 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i.i.i.i = zext i16 %66 to i32
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %57, i32 %conv.i.i.i.i.i.i
  %tot_len.i.i.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i.i.i.i, i32 0, i32 2
  %67 = ptrtoint ptr %tot_len.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %tot_len.i.i.i.i, align 2
  %conv.i.i4.i.i = zext i16 %68 to i32
  %69 = add i32 %conv.i.i.i36, %sub.ptr.rhs.cast.i.i.i38
  %sub.i.i.i.i41 = sub i32 %sub.ptr.lhs.cast.i.i.i, %69
  %sub.ptr.sub.i.i.i.i = add i32 %sub.i.i.i.i41, %conv.i.i.i.i.i.i
  %add.i.i.i = add i32 %sub.ptr.sub.i.i.i.i, %conv.i.i4.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i, i32 %add.i.i40)
  %cmp.i.i.i = icmp ult i32 %add.i.i.i, %add.i.i40
  br i1 %cmp.i.i.i, label %sw.bb1.i.ip_mc_may_pull.exit.thread.i.i_crit_edge, label %if.end.i.i.i42

sw.bb1.i.ip_mc_may_pull.exit.thread.i.i_crit_edge: ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip_mc_may_pull.exit.thread.i.i

if.end.i.i.i42:                                   ; preds = %sw.bb1.i
  %70 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %len.i.i.i, align 4
  %72 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i.i.i.i = sub i32 %71, %73
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i40, i32 %sub.i.i.i.i.i)
  %cmp.not.i.i.i.i = icmp ugt i32 %add.i.i40, %sub.i.i.i.i.i
  br i1 %cmp.not.i.i.i.i, label %if.end.i.i.i.i, label %if.end.i.i.i42.cleanup_crit_edge, !prof !244

if.end.i.i.i42.cleanup_crit_edge:                 ; preds = %if.end.i.i.i42
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i.i.i.i:                                   ; preds = %if.end.i.i.i42
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %add.i.i40)
  %cmp3.i.i.i.i = icmp ult i32 %71, %add.i.i40
  br i1 %cmp3.i.i.i.i, label %if.end.i.i.i.i.ip_mc_may_pull.exit.thread.i.i_crit_edge, label %ip_mc_may_pull.exit.i.i, !prof !244

if.end.i.i.i.i.ip_mc_may_pull.exit.thread.i.i_crit_edge: ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip_mc_may_pull.exit.thread.i.i

ip_mc_may_pull.exit.i.i:                          ; preds = %if.end.i.i.i.i
  %sub.i8.i.i.i = sub i32 %add.i.i40, %sub.i.i.i.i.i
  %call13.i.i.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i8.i.i.i) #12
  %cmp14.i.i.not.i.i = icmp eq ptr %call13.i.i.i.i, null
  br i1 %cmp14.i.i.not.i.i, label %ip_mc_may_pull.exit.i.i.ip_mc_may_pull.exit.thread.i.i_crit_edge, label %ip_mc_may_pull.exit.i.i.cleanup_crit_edge

ip_mc_may_pull.exit.i.i.cleanup_crit_edge:        ; preds = %ip_mc_may_pull.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

ip_mc_may_pull.exit.i.i.ip_mc_may_pull.exit.thread.i.i_crit_edge: ; preds = %ip_mc_may_pull.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip_mc_may_pull.exit.thread.i.i

ip_mc_may_pull.exit.thread.i.i:                   ; preds = %ip_mc_may_pull.exit.i.i.ip_mc_may_pull.exit.thread.i.i_crit_edge, %if.end.i.i.i.i.ip_mc_may_pull.exit.thread.i.i_crit_edge, %sw.bb1.i.ip_mc_may_pull.exit.thread.i.i_crit_edge
  br label %cleanup

sw.bb3.i:                                         ; preds = %if.end10
  %74 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i.i.i = zext i16 %75 to i32
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %57, i32 %conv.i.i.i.i.i
  %tot_len.i.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i.i.i, i32 0, i32 2
  %76 = ptrtoint ptr %tot_len.i.i.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %tot_len.i.i.i, align 2
  %conv.i.i7.i = zext i16 %77 to i32
  %sub.i.neg.i.i.i = add nuw nsw i32 %conv.i.i7.i, %conv.i.i.i.i.i
  %sub.i.i.i43 = sub nsw i32 %sub.i.neg.i.i.i, %conv.i.i.i36
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.i.i.i43)
  %cmp.not.i.i44 = icmp eq i32 %sub.i.i.i43, 8
  br i1 %cmp.not.i.i44, label %sw.bb3.i.if.end7.i.i_crit_edge, label %if.then.i.i

sw.bb3.i.if.end7.i.i_crit_edge:                   ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i.i

if.then.i.i:                                      ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %sub.i.i.i43)
  %cmp1.i.i = icmp ult i32 %sub.i.i.i43, 12
  br i1 %cmp1.i.i, label %if.then.i.i.cleanup_crit_edge, label %if.end.i.i45

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i.i45:                                     ; preds = %if.then.i.i
  %78 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i12.i = ptrtoint ptr %add.ptr.i.i.i37 to i32
  %sub.ptr.rhs.cast.i.i13.i = ptrtoint ptr %79 to i32
  %sub.ptr.sub.i.i14.i = sub i32 %sub.ptr.lhs.cast.i.i12.i, %sub.ptr.rhs.cast.i.i13.i
  %add.i15.i = add i32 %sub.ptr.sub.i.i14.i, 12
  %80 = add i32 %sub.i.neg.i.i.i, %sub.ptr.lhs.cast.i.i12.i
  %81 = add i32 %conv.i.i.i36, %sub.ptr.rhs.cast.i.i13.i
  %add.i.i16.i = sub i32 %80, %81
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i16.i, i32 %add.i15.i)
  %cmp.i.i17.i = icmp ult i32 %add.i.i16.i, %add.i15.i
  br i1 %cmp.i.i17.i, label %if.end.i.i45.cleanup_crit_edge, label %if.end.i.i22.i

if.end.i.i45.cleanup_crit_edge:                   ; preds = %if.end.i.i45
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i.i22.i:                                   ; preds = %if.end.i.i45
  %82 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %len.i.i.i, align 4
  %84 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i.i.i20.i = sub i32 %83, %85
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i15.i, i32 %sub.i.i.i.i20.i)
  %cmp.not.i.i.i21.i = icmp ugt i32 %add.i15.i, %sub.i.i.i.i20.i
  br i1 %cmp.not.i.i.i21.i, label %if.end.i.i.i24.i, label %if.end.i.i22.i.if.end7.i.i_crit_edge, !prof !244

if.end.i.i22.i.if.end7.i.i_crit_edge:             ; preds = %if.end.i.i22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i.i

if.end.i.i.i24.i:                                 ; preds = %if.end.i.i22.i
  call void @__sanitizer_cov_trace_cmp4(i32 %83, i32 %add.i15.i)
  %cmp3.i.i.i23.i = icmp ult i32 %83, %add.i15.i
  br i1 %cmp3.i.i.i23.i, label %if.end.i.i.i24.i.cleanup_crit_edge, label %ip_mc_may_pull.exit.i28.i, !prof !244

if.end.i.i.i24.i.cleanup_crit_edge:               ; preds = %if.end.i.i.i24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

ip_mc_may_pull.exit.i28.i:                        ; preds = %if.end.i.i.i24.i
  %sub.i8.i.i25.i = sub i32 %add.i15.i, %sub.i.i.i.i20.i
  %call13.i.i.i26.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i8.i.i25.i) #12
  %cmp14.i.i.not.i27.i = icmp eq ptr %call13.i.i.i26.i, null
  br i1 %cmp14.i.i.not.i27.i, label %ip_mc_may_pull.exit.i28.i.cleanup_crit_edge, label %ip_mc_may_pull.exit.i28.i.if.end7.i.i_crit_edge

ip_mc_may_pull.exit.i28.i.if.end7.i.i_crit_edge:  ; preds = %ip_mc_may_pull.exit.i28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i.i

ip_mc_may_pull.exit.i28.i.cleanup_crit_edge:      ; preds = %ip_mc_may_pull.exit.i28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7.i.i:                                      ; preds = %ip_mc_may_pull.exit.i28.i.if.end7.i.i_crit_edge, %if.end.i.i22.i.if.end7.i.i_crit_edge, %sw.bb3.i.if.end7.i.i_crit_edge
  %86 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %head.i.i.i, align 8
  %88 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %transport_header.i.i.i, align 2
  %conv.i.i28.i.i = zext i16 %89 to i32
  %add.ptr.i.i29.i.i = getelementptr i8, ptr %87, i32 %conv.i.i28.i.i
  %group.i.i = getelementptr inbounds %struct.igmphdr, ptr %add.ptr.i.i29.i.i, i32 0, i32 3
  %90 = ptrtoint ptr %group.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %group.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool9.not.i.i = icmp eq i32 %91, 0
  br i1 %tobool9.not.i.i, label %land.lhs.true.i.i, label %if.end7.i.i.if.end13.i.i_crit_edge

if.end7.i.i.if.end13.i.i_crit_edge:               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i.i

land.lhs.true.i.i:                                ; preds = %if.end7.i.i
  %92 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i31.i.i = zext i16 %93 to i32
  %add.ptr.i.i32.i.i = getelementptr i8, ptr %87, i32 %conv.i.i31.i.i
  %daddr.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i32.i.i, i32 0, i32 9
  %94 = ptrtoint ptr %daddr.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %daddr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870911, i32 %95)
  %cmp11.not.i.i = icmp eq i32 %95, -536870911
  br i1 %cmp11.not.i.i, label %land.lhs.true.i.i.if.end13.i.i_crit_edge, label %land.lhs.true.i.i.cleanup_crit_edge

land.lhs.true.i.i.cleanup_crit_edge:              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.i.i.if.end13.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i.i

if.end13.i.i:                                     ; preds = %land.lhs.true.i.i.if.end13.i.i_crit_edge, %if.end7.i.i.if.end13.i.i_crit_edge
  br label %cleanup

sw.default.i:                                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %sw.default.i, %if.end13.i.i, %land.lhs.true.i.i.cleanup_crit_edge, %ip_mc_may_pull.exit.i28.i.cleanup_crit_edge, %if.end.i.i.i24.i.cleanup_crit_edge, %if.end.i.i45.cleanup_crit_edge, %if.then.i.i.cleanup_crit_edge, %ip_mc_may_pull.exit.thread.i.i, %ip_mc_may_pull.exit.i.i.cleanup_crit_edge, %if.end.i.i.i42.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end10.cleanup_crit_edge53, %if.end10.cleanup_crit_edge54, %if.end.i31.cleanup_crit_edge, %ip_mc_may_pull.exit.i.cleanup_crit_edge, %if.end.i.i.i.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end21.i.cleanup_crit_edge, %if.end13.i.cleanup_crit_edge, %pskb_may_pull.exit74.i.cleanup_crit_edge, %if.end.i68.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %pskb_may_pull.exit.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -42, %if.end.cleanup_crit_edge ], [ -42, %sw.default.i ], [ 0, %if.end10.cleanup_crit_edge ], [ 0, %if.end10.cleanup_crit_edge53 ], [ 0, %if.end10.cleanup_crit_edge54 ], [ -22, %ip_mc_may_pull.exit.thread.i.i ], [ 0, %ip_mc_may_pull.exit.i.i.cleanup_crit_edge ], [ 0, %if.end.i.i.i42.cleanup_crit_edge ], [ 0, %if.end13.i.i ], [ -22, %if.then.i.i.cleanup_crit_edge ], [ -22, %ip_mc_may_pull.exit.i28.i.cleanup_crit_edge ], [ -22, %land.lhs.true.i.i.cleanup_crit_edge ], [ -22, %if.end.i.i45.cleanup_crit_edge ], [ -22, %if.end.i.i.i24.i.cleanup_crit_edge ], [ -22, %pskb_may_pull.exit.i.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ -22, %pskb_may_pull.exit74.i.cleanup_crit_edge ], [ -22, %if.end13.i.cleanup_crit_edge ], [ -22, %if.end21.i.cleanup_crit_edge ], [ -22, %if.end.i.i.cleanup_crit_edge ], [ -22, %if.end.i68.i.cleanup_crit_edge ], [ -22, %ip_mc_may_pull.exit.i.cleanup_crit_edge ], [ -22, %if.end.i31.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ -22, %if.end.i.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__ip_mc_dec_group(ptr noundef %in_dev, i32 noundef %addr, i32 noundef %gfp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_is_locked() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b75 = load i1, ptr @__ip_mc_dec_group.__already_done, align 1
  br i1 %.b75, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !250

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__ip_mc_dec_group.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1671, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 1671) #12
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %mc_list = getelementptr inbounds %struct.in_device, ptr %in_dev, i32 0, i32 5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end29
  %ip.0 = phi ptr [ %mc_list, %if.end29 ], [ %34, %for.inc ]
  %call38 = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call38, label %for.cond.do.end46_crit_edge, label %land.lhs.true

for.cond.do.end46_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end46

land.lhs.true:                                    ; preds = %for.cond
  %call39 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %land.lhs.true.do.end46_crit_edge, label %land.lhs.true41

land.lhs.true.do.end46_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end46

land.lhs.true41:                                  ; preds = %land.lhs.true
  %.b7374 = load i1, ptr @__ip_mc_dec_group.__warned, align 1
  br i1 %.b7374, label %land.lhs.true41.do.end46_crit_edge, label %if.then43

land.lhs.true41.do.end46_crit_edge:               ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end46

if.then43:                                        ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__ip_mc_dec_group.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1674, ptr noundef nonnull @.str.2) #12
  br label %do.end46

do.end46:                                         ; preds = %if.then43, %land.lhs.true41.do.end46_crit_edge, %land.lhs.true.do.end46_crit_edge, %for.cond.do.end46_crit_edge
  %0 = ptrtoint ptr %ip.0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip.0, align 4
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %do.end46.cleanup_crit_edge, label %for.body

do.end46.cleanup_crit_edge:                       ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %do.end46
  %multiaddr = getelementptr inbounds %struct.ip_mc_list, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %multiaddr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %multiaddr, align 4
  %cmp48 = icmp eq i32 %3, %addr
  br i1 %cmp48, label %if.then49, label %for.inc

if.then49:                                        ; preds = %for.body
  %multiaddr.le = getelementptr inbounds %struct.ip_mc_list, ptr %1, i32 0, i32 1
  %users = getelementptr inbounds %struct.ip_mc_list, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %users, align 4
  %dec = add i32 %5, -1
  store i32 %dec, ptr %users, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp50 = icmp eq i32 %dec, 0
  br i1 %cmp50, label %if.then51, label %if.then49.cleanup_crit_edge

if.then49.cleanup_crit_edge:                      ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then51:                                        ; preds = %if.then49
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call.i, label %if.then51.do.end.i_crit_edge, label %land.lhs.true.i

if.then51.do.end.i_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %if.then51
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b31.i = load i1, ptr @ip_mc_hash_remove.__warned, align 1
  br i1 %.b31.i, label %land.lhs.true2.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true2.i.do.end.i_crit_edge:              ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ip_mc_hash_remove.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1412, ptr noundef nonnull @.str.2) #12
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true2.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %if.then51.do.end.i_crit_edge
  %mc_hash4.i = getelementptr inbounds %struct.in_device, ptr %in_dev, i32 0, i32 6
  %6 = ptrtoint ptr %mc_hash4.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mc_hash4.i, align 4
  %tobool5.not.i = icmp eq ptr %7, null
  br i1 %tobool5.not.i, label %do.end.i.ip_mc_hash_remove.exit_crit_edge, label %if.end7.i

do.end.i.ip_mc_hash_remove.exit_crit_edge:        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip_mc_hash_remove.exit

if.end7.i:                                        ; preds = %do.end.i
  %8 = ptrtoint ptr %multiaddr.le to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %multiaddr.le, align 4
  %mul.i.i.i.i = mul i32 %9, 1640531527
  %shr.i.i.i = lshr i32 %mul.i.i.i.i, 23
  %add.ptr.i = getelementptr ptr, ptr %7, i32 %shr.i.i.i
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.end19.i.while.cond.i_crit_edge, %if.end7.i
  %mc_hash.0.i = phi ptr [ %add.ptr.i, %if.end7.i ], [ %next_hash.i, %do.end19.i.while.cond.i_crit_edge ]
  %call10.i = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call10.i, label %while.cond.i.do.end19.i_crit_edge, label %land.lhs.true11.i

while.cond.i.do.end19.i_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end19.i

land.lhs.true11.i:                                ; preds = %while.cond.i
  %call12.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %land.lhs.true11.i.do.end19.i_crit_edge, label %land.lhs.true14.i

land.lhs.true11.i.do.end19.i_crit_edge:           ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end19.i

land.lhs.true14.i:                                ; preds = %land.lhs.true11.i
  %.b2930.i = load i1, ptr @ip_mc_hash_remove.__warned.39, align 1
  br i1 %.b2930.i, label %land.lhs.true14.i.do.end19.i_crit_edge, label %if.then16.i

land.lhs.true14.i.do.end19.i_crit_edge:           ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end19.i

if.then16.i:                                      ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ip_mc_hash_remove.__warned.39, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1418, ptr noundef nonnull @.str.2) #12
  br label %do.end19.i

do.end19.i:                                       ; preds = %if.then16.i, %land.lhs.true14.i.do.end19.i_crit_edge, %land.lhs.true11.i.do.end19.i_crit_edge, %while.cond.i.do.end19.i_crit_edge
  %10 = ptrtoint ptr %mc_hash.0.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mc_hash.0.i, align 4
  %cmp.not.i = icmp eq ptr %11, %1
  %next_hash.i = getelementptr inbounds %struct.ip_mc_list, ptr %11, i32 0, i32 7
  br i1 %cmp.not.i, label %while.end.i, label %do.end19.i.while.cond.i_crit_edge

do.end19.i.while.cond.i_crit_edge:                ; preds = %do.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

while.end.i:                                      ; preds = %do.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  %next_hash21.i = getelementptr inbounds %struct.ip_mc_list, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %next_hash21.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %next_hash21.i, align 4
  %14 = ptrtoint ptr %mc_hash.0.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %mc_hash.0.i, align 4
  br label %ip_mc_hash_remove.exit

ip_mc_hash_remove.exit:                           ; preds = %while.end.i, %do.end.i.ip_mc_hash_remove.exit_crit_edge
  %15 = getelementptr inbounds %struct.ip_mc_list, ptr %1, i32 0, i32 6
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %18 = ptrtoint ptr %ip.0 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %ip.0, align 4
  %mc_count = getelementptr inbounds %struct.in_device, ptr %in_dev, i32 0, i32 7
  %19 = ptrtoint ptr %mc_count to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mc_count, align 4
  %dec52 = add i32 %20, -1
  store i32 %dec52, ptr %mc_count, align 4
  tail call fastcc void @__igmp_group_dropped(ptr noundef nonnull %1, i32 noundef %gfp)
  %lock.i = getelementptr inbounds %struct.ip_mc_list, ptr %1, i32 0, i32 11
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #12
  %tomb1.i = getelementptr inbounds %struct.ip_mc_list, ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %tomb1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tomb1.i, align 4
  store ptr null, ptr %tomb1.i, align 4
  %sources3.i = getelementptr inbounds %struct.ip_mc_list, ptr %1, i32 0, i32 3
  %23 = ptrtoint ptr %sources3.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sources3.i, align 4
  store ptr null, ptr %sources3.i, align 4
  %sfmode.i = getelementptr inbounds %struct.ip_mc_list, ptr %1, i32 0, i32 2
  %25 = ptrtoint ptr %sfmode.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %sfmode.i, align 4
  %sfcount.i = getelementptr inbounds %struct.ip_mc_list, ptr %1, i32 0, i32 5
  %arrayidx.i = getelementptr %struct.ip_mc_list, ptr %1, i32 0, i32 5, i32 1
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %arrayidx.i, align 4
  %27 = ptrtoint ptr %sfcount.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %sfcount.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #12
  %tobool.not3.i.i = icmp eq ptr %22, null
  br i1 %tobool.not3.i.i, label %ip_mc_hash_remove.exit.ip_sf_list_clear_all.exit.i_crit_edge, label %ip_mc_hash_remove.exit.while.body.i.i_crit_edge

ip_mc_hash_remove.exit.while.body.i.i_crit_edge:  ; preds = %ip_mc_hash_remove.exit
  br label %while.body.i.i

ip_mc_hash_remove.exit.ip_sf_list_clear_all.exit.i_crit_edge: ; preds = %ip_mc_hash_remove.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip_sf_list_clear_all.exit.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %ip_mc_hash_remove.exit.while.body.i.i_crit_edge
  %psf.addr.04.i.i = phi ptr [ %29, %while.body.i.i.while.body.i.i_crit_edge ], [ %22, %ip_mc_hash_remove.exit.while.body.i.i_crit_edge ]
  %28 = ptrtoint ptr %psf.addr.04.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %psf.addr.04.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %psf.addr.04.i.i) #12
  %tobool.not.i.i = icmp eq ptr %29, null
  br i1 %tobool.not.i.i, label %while.body.i.i.ip_sf_list_clear_all.exit.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i

while.body.i.i.ip_sf_list_clear_all.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip_sf_list_clear_all.exit.i

ip_sf_list_clear_all.exit.i:                      ; preds = %while.body.i.i.ip_sf_list_clear_all.exit.i_crit_edge, %ip_mc_hash_remove.exit.ip_sf_list_clear_all.exit.i_crit_edge
  %tobool.not3.i16.i = icmp eq ptr %24, null
  br i1 %tobool.not3.i16.i, label %ip_sf_list_clear_all.exit.i.ip_mc_clear_src.exit_crit_edge, label %ip_sf_list_clear_all.exit.i.while.body.i19.i_crit_edge

ip_sf_list_clear_all.exit.i.while.body.i19.i_crit_edge: ; preds = %ip_sf_list_clear_all.exit.i
  br label %while.body.i19.i

ip_sf_list_clear_all.exit.i.ip_mc_clear_src.exit_crit_edge: ; preds = %ip_sf_list_clear_all.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip_mc_clear_src.exit

while.body.i19.i:                                 ; preds = %while.body.i19.i.while.body.i19.i_crit_edge, %ip_sf_list_clear_all.exit.i.while.body.i19.i_crit_edge
  %psf.addr.04.i17.i = phi ptr [ %31, %while.body.i19.i.while.body.i19.i_crit_edge ], [ %24, %ip_sf_list_clear_all.exit.i.while.body.i19.i_crit_edge ]
  %30 = ptrtoint ptr %psf.addr.04.i17.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %psf.addr.04.i17.i, align 4
  tail call void @kfree(ptr noundef nonnull %psf.addr.04.i17.i) #12
  %tobool.not.i18.i = icmp eq ptr %31, null
  br i1 %tobool.not.i18.i, label %while.body.i19.i.ip_mc_clear_src.exit_crit_edge, label %while.body.i19.i.while.body.i19.i_crit_edge

while.body.i19.i.while.body.i19.i_crit_edge:      ; preds = %while.body.i19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i19.i

while.body.i19.i.ip_mc_clear_src.exit_crit_edge:  ; preds = %while.body.i19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip_mc_clear_src.exit

ip_mc_clear_src.exit:                             ; preds = %while.body.i19.i.ip_mc_clear_src.exit_crit_edge, %ip_sf_list_clear_all.exit.i.ip_mc_clear_src.exit_crit_edge
  %dead = getelementptr inbounds %struct.in_device, ptr %in_dev, i32 0, i32 3
  %32 = ptrtoint ptr %dead to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dead, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool53.not = icmp eq i32 %33, 0
  br i1 %tobool53.not, label %if.then54, label %ip_mc_clear_src.exit.if.end55_crit_edge

ip_mc_clear_src.exit.if.end55_crit_edge:          ; preds = %ip_mc_clear_src.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55

if.then54:                                        ; preds = %ip_mc_clear_src.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @ip_rt_multicast_event(ptr noundef %in_dev) #12
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %ip_mc_clear_src.exit.if.end55_crit_edge
  tail call fastcc void @ip_ma_put(ptr noundef nonnull %1)
  br label %cleanup

for.inc:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %34 = getelementptr inbounds %struct.ip_mc_list, ptr %1, i32 0, i32 6
  br label %for.cond

cleanup:                                          ; preds = %if.end55, %if.then49.cleanup_crit_edge, %do.end46.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__igmp_group_dropped(ptr noundef %im, i32 noundef %gfp) unnamed_addr #0 align 64 {
entry:
  %buf.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %im to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %im, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 127
  %4 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nd_net.i, align 4
  %loaded = getelementptr inbounds %struct.ip_mc_list, ptr %im, i32 0, i32 15
  %6 = ptrtoint ptr %loaded to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %loaded, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %8 = ptrtoint ptr %loaded to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %loaded, align 1
  %multiaddr = getelementptr inbounds %struct.ip_mc_list, ptr %im, i32 0, i32 1
  %9 = ptrtoint ptr %multiaddr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %multiaddr, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf.i) #12
  %11 = call ptr @memset(ptr %buf.i, i32 255, i32 32)
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %call.i = call i32 @arp_mc_map(i32 noundef %10, ptr noundef nonnull %buf.i, ptr noundef %13, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.then.ip_mc_filter_del.exit_crit_edge

if.then.ip_mc_filter_del.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip_mc_filter_del.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %call3.i = call i32 @dev_mc_del(ptr noundef %13, ptr noundef nonnull %buf.i) #12
  br label %ip_mc_filter_del.exit

ip_mc_filter_del.exit:                            ; preds = %if.then.i, %if.then.ip_mc_filter_del.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf.i) #12
  br label %if.end

if.end:                                           ; preds = %ip_mc_filter_del.exit, %entry.if.end_crit_edge
  %multiaddr2 = getelementptr inbounds %struct.ip_mc_list, ptr %im, i32 0, i32 1
  %14 = ptrtoint ptr %multiaddr2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %multiaddr2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870911, i32 %15)
  %cmp = icmp eq i32 %15, -536870911
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %and.i = and i32 %15, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i)
  %cmp.i79 = icmp eq i32 %and.i, -536870912
  br i1 %cmp.i79, label %land.lhs.true, label %if.end4.if.end9_crit_edge

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

land.lhs.true:                                    ; preds = %if.end4
  %sysctl_igmp_llm_reports = getelementptr inbounds %struct.net, ptr %5, i32 0, i32 35, i32 119
  %16 = ptrtoint ptr %sysctl_igmp_llm_reports to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %sysctl_igmp_llm_reports, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool7.not = icmp eq i8 %17, 0
  br i1 %tobool7.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end9_crit_edge

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %land.lhs.true.if.end9_crit_edge, %if.end4.if.end9_crit_edge
  %reporter10 = getelementptr inbounds %struct.ip_mc_list, ptr %im, i32 0, i32 13
  %18 = ptrtoint ptr %reporter10 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %reporter10, align 1
  call fastcc void @igmp_stop_timer(ptr noundef %im)
  %dead = getelementptr inbounds %struct.in_device, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %dead to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dead, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool11.not = icmp eq i32 %21, 0
  br i1 %tobool11.not, label %if.then12, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then12:                                        ; preds = %if.end9
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %nd_net.i80 = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 127
  %24 = ptrtoint ptr %nd_net.i80 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %nd_net.i80, align 4
  %devconf_all = getelementptr inbounds %struct.net, ptr %25, i32 0, i32 35, i32 6
  %26 = ptrtoint ptr %devconf_all to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %devconf_all, align 4
  %arrayidx = getelementptr %struct.ipv4_devconf, ptr %27, i32 0, i32 1, i32 16
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp16 = icmp eq i32 %29, 1
  br i1 %cmp16, label %if.then12.cleanup_crit_edge, label %lor.lhs.false

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then12
  %arrayidx.i = getelementptr %struct.in_device, ptr %1, i32 0, i32 21, i32 1, i32 16
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp19 = icmp eq i32 %31, 1
  br i1 %cmp19, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false21

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false21:                                  ; preds = %lor.lhs.false
  %mr_v1_seen = getelementptr inbounds %struct.in_device, ptr %1, i32 0, i32 10
  %32 = ptrtoint ptr %mr_v1_seen to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mr_v1_seen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool22.not = icmp eq i32 %33, 0
  br i1 %tobool22.not, label %lor.lhs.false21.if.end28_crit_edge, label %land.lhs.true23

lor.lhs.false21.if.end28_crit_edge:               ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

land.lhs.true23:                                  ; preds = %lor.lhs.false21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %34 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %34, %33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp25 = icmp slt i32 %sub, 0
  br i1 %cmp25, label %land.lhs.true23.cleanup_crit_edge, label %land.lhs.true23.if.end28_crit_edge

land.lhs.true23.if.end28_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

land.lhs.true23.cleanup_crit_edge:                ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end28:                                         ; preds = %land.lhs.true23.if.end28_crit_edge, %lor.lhs.false21.if.end28_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %29)
  %cmp35 = icmp eq i32 %29, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %cmp39 = icmp eq i32 %31, 2
  %or.cond = select i1 %cmp35, i1 true, i1 %cmp39
  br i1 %or.cond, label %if.end28.if.then48_crit_edge, label %lor.lhs.false41

if.end28.if.then48_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then48

lor.lhs.false41:                                  ; preds = %if.end28
  %mr_v2_seen = getelementptr inbounds %struct.in_device, ptr %1, i32 0, i32 11
  %35 = ptrtoint ptr %mr_v2_seen to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mr_v2_seen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool42.not = icmp eq i32 %36, 0
  br i1 %tobool42.not, label %lor.lhs.false41.if.end53_crit_edge, label %land.lhs.true43

lor.lhs.false41.if.end53_crit_edge:               ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53

land.lhs.true43:                                  ; preds = %lor.lhs.false41
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %37 = load volatile i32, ptr @jiffies, align 128
  %sub45 = sub i32 %37, %36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub45)
  %cmp46 = icmp slt i32 %sub45, 0
  br i1 %cmp46, label %land.lhs.true43.if.then48_crit_edge, label %land.lhs.true43.if.end53_crit_edge

land.lhs.true43.if.end53_crit_edge:               ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53

land.lhs.true43.if.then48_crit_edge:              ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then48

if.then48:                                        ; preds = %land.lhs.true43.if.then48_crit_edge, %if.end28.if.then48_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool49.not = icmp eq i8 %19, 0
  br i1 %tobool49.not, label %if.then48.cleanup_crit_edge, label %if.then50

if.then48.cleanup_crit_edge:                      ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then50:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @igmp_send_report(ptr noundef %1, ptr noundef %im, i32 noundef 23)
  br label %cleanup

if.end53:                                         ; preds = %land.lhs.true43.if.end53_crit_edge, %lor.lhs.false41.if.end53_crit_edge
  call fastcc void @igmpv3_add_delrec(ptr noundef %1, ptr noundef %im, i32 noundef %gfp)
  call fastcc void @igmp_ifc_event(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %if.then50, %if.then48.cleanup_crit_edge, %land.lhs.true23.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.then12.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_rt_multicast_event(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ip_ma_put(ptr noundef %im) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %refcnt = getelementptr inbounds %struct.ip_mc_list, ptr %im, i32 0, i32 10
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !246
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #12, !srcloc !247
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end5_crit_edge, label %if.then10.i.i.i, !prof !250

if.end5.i.i.i.if.end5_crit_edge:                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 3) #12
  br label %if.end5

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !256
  %1 = ptrtoint ptr %im to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %im, align 4
  %refcnt.i = getelementptr inbounds %struct.in_device, ptr %2, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !246
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #12
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #12, !srcloc !247
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.in_dev_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !250

if.end5.i.i.i.i.in_dev_put.exit_crit_edge:        ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %in_dev_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #12
  br label %in_dev_put.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !256
  tail call void @in_dev_finish_destroy(ptr noundef %2) #12
  br label %in_dev_put.exit

in_dev_put.exit:                                  ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.in_dev_put.exit_crit_edge
  %tobool.not = icmp eq ptr %im, null
  br i1 %tobool.not, label %in_dev_put.exit.if.end5_crit_edge, label %do.end

in_dev_put.exit.if.end5_crit_edge:                ; preds = %in_dev_put.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

do.end:                                           ; preds = %in_dev_put.exit
  call void @__sanitizer_cov_trace_pc() #14
  %rcu = getelementptr inbounds %struct.ip_mc_list, ptr %im, i32 0, i32 18
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 144 to ptr)) #12
  br label %if.end5

if.end5:                                          ; preds = %do.end, %in_dev_put.exit.if.end5_crit_edge, %if.then10.i.i.i, %if.end5.i.i.i.if.end5_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ip_mc_unmap(ptr nocapture noundef readonly %in_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_is_locked() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b68 = load i1, ptr @ip_mc_unmap.__already_done, align 1
  br i1 %.b68, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !250

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ip_mc_unmap.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1702, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 1702) #12
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %call38 = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call38, label %if.end29.do.end46_crit_edge, label %land.lhs.true

if.end29.do.end46_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end46

land.lhs.true:                                    ; preds = %if.end29
  %call39 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %land.lhs.true.do.end46_crit_edge, label %land.lhs.true41

land.lhs.true.do.end46_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end46

land.lhs.true41:                                  ; preds = %land.lhs.true
  %.b6467 = load i1, ptr @ip_mc_unmap.__warned, align 1
  br i1 %.b6467, label %land.lhs.true41.do.end46_crit_edge, label %if.then43

land.lhs.true41.do.end46_crit_edge:               ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end46

if.then43:                                        ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ip_mc_unmap.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1704, ptr noundef nonnull @.str.2) #12
  br label %do.end46

do.end46:                                         ; preds = %if.then43, %land.lhs.true41.do.end46_crit_edge, %land.lhs.true.do.end46_crit_edge, %if.end29.do.end46_crit_edge
  %mc_list = getelementptr inbounds %struct.in_device, ptr %in_dev, i32 0, i32 5
  %0 = ptrtoint ptr %mc_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %pmc.069 = load ptr, ptr %mc_list, align 4
  %cmp.not70 = icmp eq ptr %pmc.069, null
  br i1 %cmp.not70, label %do.end46.for.end_crit_edge, label %do.end46.for.body_crit_edge

do.end46.for.body_crit_edge:                      ; preds = %do.end46
  br label %for.body

do.end46.for.end_crit_edge:                       ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %do.end58.for.body_crit_edge, %do.end46.for.body_crit_edge
  %pmc.071 = phi ptr [ %pmc.0, %do.end58.for.body_crit_edge ], [ %pmc.069, %do.end46.for.body_crit_edge ]
  tail call fastcc void @__igmp_group_dropped(ptr noundef nonnull %pmc.071, i32 noundef 3264) #12
  %call49 = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call49, label %for.body.do.end58_crit_edge, label %land.lhs.true50

for.body.do.end58_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end58

land.lhs.true50:                                  ; preds = %for.body
  %call51 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %land.lhs.true50.do.end58_crit_edge, label %land.lhs.true53

land.lhs.true50.do.end58_crit_edge:               ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end58

land.lhs.true53:                                  ; preds = %land.lhs.true50
  %.b6566 = load i1, ptr @ip_mc_unmap.__warned.3, align 1
  br i1 %.b6566, label %land.lhs.true53.do.end58_crit_edge, label %if.then55

land.lhs.true53.do.end58_crit_edge:               ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end58

if.then55:                                        ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ip_mc_unmap.__warned.3, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1704, ptr noundef nonnull @.str.2) #12
  br label %do.end58

do.end58:                                         ; preds = %if.then55, %land.lhs.true53.do.end58_crit_edge, %land.lhs.true50.do.end58_crit_edge, %for.body.do.end58_crit_edge
  %1 = getelementptr inbounds %struct.ip_mc_list, ptr %pmc.071, i32 0, i32 6
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %pmc.0 = load ptr, ptr %1, align 4
  %cmp.not = icmp eq ptr %pmc.0, null
  br i1 %cmp.not, label %do.end58.for.end_crit_edge, label %do.end58.for.body_crit_edge

do.end58.for.body_crit_edge:                      ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

do.end58.for.end_crit_edge:                       ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %do.end58.for.end_crit_edge, %do.end46.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ip_mc_remap(ptr noundef %in_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_is_locked() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b70 = load i1, ptr @ip_mc_remap.__already_done, align 1
  br i1 %.b70, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !250

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ip_mc_remap.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1712, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 1712) #12
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %call38 = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call38, label %if.end29.do.end46_crit_edge, label %land.lhs.true

if.end29.do.end46_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end46

land.lhs.true:                                    ; preds = %if.end29
  %call39 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %land.lhs.true.do.end46_crit_edge, label %land.lhs.true41

land.lhs.true.do.end46_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end46

land.lhs.true41:                                  ; preds = %land.lhs.true
  %.b6669 = load i1, ptr @ip_mc_remap.__warned, align 1
  br i1 %.b6669, label %land.lhs.true41.do.end46_crit_edge, label %if.then43

land.lhs.true41.do.end46_crit_edge:               ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end46

if.then43:                                        ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ip_mc_remap.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1714, ptr noundef nonnull @.str.2) #12
  br label %do.end46

do.end46:                                         ; preds = %if.then43, %land.lhs.true41.do.end46_crit_edge, %land.lhs.true.do.end46_crit_edge, %if.end29.do.end46_crit_edge
  %mc_list = getelementptr inbounds %struct.in_device, ptr %in_dev, i32 0, i32 5
  %0 = ptrtoint ptr %mc_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %pmc.071 = load ptr, ptr %mc_list, align 4
  %cmp.not72 = icmp eq ptr %pmc.071, null
  br i1 %cmp.not72, label %do.end46.for.end_crit_edge, label %do.end46.for.body_crit_edge

do.end46.for.body_crit_edge:                      ; preds = %do.end46
  br label %for.body

do.end46.for.end_crit_edge:                       ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %do.end58.for.body_crit_edge, %do.end46.for.body_crit_edge
  %pmc.073 = phi ptr [ %pmc.0, %do.end58.for.body_crit_edge ], [ %pmc.071, %do.end46.for.body_crit_edge ]
  tail call fastcc void @igmpv3_del_delrec(ptr noundef %in_dev, ptr noundef nonnull %pmc.073)
  tail call fastcc void @igmp_group_added(ptr noundef nonnull %pmc.073)
  %call49 = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call49, label %for.body.do.end58_crit_edge, label %land.lhs.true50

for.body.do.end58_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end58

land.lhs.true50:                                  ; preds = %for.body
  %call51 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %land.lhs.true50.do.end58_crit_edge, label %land.lhs.true53

land.lhs.true50.do.end58_crit_edge:               ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end58

land.lhs.true53:                                  ; preds = %land.lhs.true50
  %.b6768 = load i1, ptr @ip_mc_remap.__warned.4, align 1
  br i1 %.b6768, label %land.lhs.true53.do.end58_crit_edge, label %if.then55

land.lhs.true53.do.end58_crit_edge:               ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end58

if.then55:                                        ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ip_mc_remap.__warned.4, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1714, ptr noundef nonnull @.str.2) #12
  br label %do.end58

do.end58:                                         ; preds = %if.then55, %land.lhs.true53.do.end58_crit_edge, %land.lhs.true50.do.end58_crit_edge, %for.body.do.end58_crit_edge
  %1 = getelementptr inbounds %struct.ip_mc_list, ptr %pmc.073, i32 0, i32 6
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %pmc.0 = load ptr, ptr %1, align 4
  %cmp.not = icmp eq ptr %pmc.0, null
  br i1 %cmp.not, label %do.end58.for.end_crit_edge, label %do.end58.for.body_crit_edge

do.end58.for.body_crit_edge:                      ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

do.end58.for.end_crit_edge:                       ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %do.end58.for.end_crit_edge, %do.end46.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @igmpv3_del_delrec(ptr noundef %in_dev, ptr noundef %im) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %in_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %in_dev, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 127
  %2 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nd_net.i, align 4
  %multiaddr1 = getelementptr inbounds %struct.ip_mc_list, ptr %im, i32 0, i32 1
  %4 = ptrtoint ptr %multiaddr1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %multiaddr1, align 4
  %mc_tomb_lock = getelementptr inbounds %struct.in_device, ptr %in_dev, i32 0, i32 8
  tail call void @_raw_spin_lock_bh(ptr noundef %mc_tomb_lock) #12
  %mc_tomb = getelementptr inbounds %struct.in_device, ptr %in_dev, i32 0, i32 9
  %6 = ptrtoint ptr %mc_tomb to i32
  call void @__asan_load4_noabort(i32 %6)
  %pmc.088 = load ptr, ptr %mc_tomb, align 4
  %tobool.not89 = icmp eq ptr %pmc.088, null
  br i1 %tobool.not89, label %entry.if.end9_crit_edge, label %for.body.preheader

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

for.body.preheader:                               ; preds = %entry
  %multiaddr2104 = getelementptr inbounds %struct.ip_mc_list, ptr %pmc.088, i32 0, i32 1
  %7 = ptrtoint ptr %multiaddr2104 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %multiaddr2104, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %5)
  %cmp105 = icmp eq i32 %8, %5
  br i1 %cmp105, label %for.body.preheader.if.then4.critedge_crit_edge, label %for.body.preheader.if.end_crit_edge

for.body.preheader.if.end_crit_edge:              ; preds = %for.body.preheader
  br label %if.end

for.body.preheader.if.then4.critedge_crit_edge:   ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then4.critedge

for.body:                                         ; preds = %if.end
  %multiaddr2 = getelementptr inbounds %struct.ip_mc_list, ptr %pmc.0, i32 0, i32 1
  %9 = ptrtoint ptr %multiaddr2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %multiaddr2, align 4
  %cmp = icmp eq i32 %10, %5
  br i1 %cmp, label %for.body.if.then4.critedge_crit_edge, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.body.if.then4.critedge_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then4.critedge

if.end:                                           ; preds = %for.body.if.end_crit_edge, %for.body.preheader.if.end_crit_edge
  %pmc.091106 = phi ptr [ %pmc.0, %for.body.if.end_crit_edge ], [ %pmc.088, %for.body.preheader.if.end_crit_edge ]
  %11 = getelementptr inbounds %struct.ip_mc_list, ptr %pmc.091106, i32 0, i32 6
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %pmc.0 = load ptr, ptr %11, align 4
  %tobool.not = icmp eq ptr %pmc.0, null
  br i1 %tobool.not, label %if.end.if.end9_crit_edge, label %for.body

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then4.critedge:                                ; preds = %for.body.if.then4.critedge_crit_edge, %for.body.preheader.if.then4.critedge_crit_edge
  %pmc.091.lcssa = phi ptr [ %pmc.088, %for.body.preheader.if.then4.critedge_crit_edge ], [ %pmc.0, %for.body.if.then4.critedge_crit_edge ]
  %pmc_prev.090.lcssa = phi ptr [ null, %for.body.preheader.if.then4.critedge_crit_edge ], [ %pmc.091106, %for.body.if.then4.critedge_crit_edge ]
  %tobool5.not = icmp eq ptr %pmc_prev.090.lcssa, null
  %13 = getelementptr inbounds %struct.ip_mc_list, ptr %pmc.091.lcssa, i32 0, i32 6
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %16 = getelementptr inbounds %struct.ip_mc_list, ptr %pmc_prev.090.lcssa, i32 0, i32 6
  %.sink = select i1 %tobool5.not, ptr %mc_tomb, ptr %16
  %17 = ptrtoint ptr %.sink to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %15, ptr %.sink, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then4.critedge, %if.end.if.end9_crit_edge, %entry.if.end9_crit_edge
  %pmc.086 = phi ptr [ null, %entry.if.end9_crit_edge ], [ %pmc.091.lcssa, %if.then4.critedge ], [ null, %if.end.if.end9_crit_edge ]
  %tobool.not84 = phi i1 [ true, %entry.if.end9_crit_edge ], [ false, %if.then4.critedge ], [ true, %if.end.if.end9_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %mc_tomb_lock) #12
  %lock = getelementptr inbounds %struct.ip_mc_list, ptr %im, i32 0, i32 11
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  br i1 %tobool.not84, label %if.end9.if.end47_crit_edge, label %if.then12

if.end9.if.end47_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47

if.then12:                                        ; preds = %if.end9
  %18 = ptrtoint ptr %pmc.086 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pmc.086, align 4
  %20 = ptrtoint ptr %im to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %im, align 4
  %sfmode = getelementptr inbounds %struct.ip_mc_list, ptr %im, i32 0, i32 2
  %21 = ptrtoint ptr %sfmode to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sfmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp14 = icmp eq i32 %22, 1
  br i1 %cmp14, label %do.body, label %if.else34

do.body:                                          ; preds = %if.then12
  %tomb = getelementptr inbounds %struct.ip_mc_list, ptr %im, i32 0, i32 4
  %23 = ptrtoint ptr %tomb to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tomb, align 4
  %tomb16 = getelementptr inbounds %struct.ip_mc_list, ptr %pmc.086, i32 0, i32 4
  %25 = ptrtoint ptr %tomb16 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tomb16, align 4
  store ptr %26, ptr %tomb, align 4
  store ptr %24, ptr %tomb16, align 4
  %sources = getelementptr inbounds %struct.ip_mc_list, ptr %im, i32 0, i32 3
  %27 = ptrtoint ptr %sources to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sources, align 4
  %sources21 = getelementptr inbounds %struct.ip_mc_list, ptr %pmc.086, i32 0, i32 3
  %29 = ptrtoint ptr %sources21 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sources21, align 4
  store ptr %30, ptr %sources, align 4
  store ptr %28, ptr %sources21, align 4
  %psf.094 = load ptr, ptr %sources, align 4
  %tobool28.not95 = icmp eq ptr %psf.094, null
  br i1 %tobool28.not95, label %do.body.if.end45_crit_edge, label %for.body29.lr.ph

do.body.if.end45_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

for.body29.lr.ph:                                 ; preds = %do.body
  %mr_qrv = getelementptr inbounds %struct.in_device, ptr %in_dev, i32 0, i32 15
  %sysctl_igmp_qrv = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 35, i32 122
  br label %for.body29

for.body29:                                       ; preds = %cond.end.for.body29_crit_edge, %for.body29.lr.ph
  %psf.096 = phi ptr [ %psf.094, %for.body29.lr.ph ], [ %psf.0, %cond.end.for.body29_crit_edge ]
  %31 = ptrtoint ptr %mr_qrv to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %mr_qrv, align 4
  %conv = zext i8 %32 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool30.not = icmp eq i8 %32, 0
  br i1 %tobool30.not, label %cond.false, label %for.body29.cond.end_crit_edge

for.body29.cond.end_crit_edge:                    ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #14
  %33 = ptrtoint ptr %sysctl_igmp_qrv to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sysctl_igmp_qrv, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %for.body29.cond.end_crit_edge
  %cond = phi i32 [ %34, %cond.false ], [ %conv, %for.body29.cond.end_crit_edge ]
  %conv31 = trunc i32 %cond to i8
  %sf_crcount = getelementptr inbounds %struct.ip_sf_list, ptr %psf.096, i32 0, i32 5
  %35 = ptrtoint ptr %sf_crcount to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv31, ptr %sf_crcount, align 2
  %36 = ptrtoint ptr %psf.096 to i32
  call void @__asan_load4_noabort(i32 %36)
  %psf.0 = load ptr, ptr %psf.096, align 4
  %tobool28.not = icmp eq ptr %psf.0, null
  br i1 %tobool28.not, label %cond.end.if.end45_crit_edge, label %cond.end.for.body29_crit_edge

cond.end.for.body29_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body29

cond.end.if.end45_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

if.else34:                                        ; preds = %if.then12
  %mr_qrv35 = getelementptr inbounds %struct.in_device, ptr %in_dev, i32 0, i32 15
  %37 = ptrtoint ptr %mr_qrv35 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %mr_qrv35, align 4
  %conv36 = zext i8 %38 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool37.not = icmp eq i8 %38, 0
  br i1 %tobool37.not, label %cond.false39, label %if.else34.cond.end42_crit_edge

if.else34.cond.end42_crit_edge:                   ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end42

cond.false39:                                     ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #14
  %sysctl_igmp_qrv41 = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 35, i32 122
  %39 = ptrtoint ptr %sysctl_igmp_qrv41 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %sysctl_igmp_qrv41, align 4
  br label %cond.end42

cond.end42:                                       ; preds = %cond.false39, %if.else34.cond.end42_crit_edge
  %cond43 = phi i32 [ %40, %cond.false39 ], [ %conv36, %if.else34.cond.end42_crit_edge ]
  %conv44 = trunc i32 %cond43 to i8
  %crcount = getelementptr inbounds %struct.ip_mc_list, ptr %im, i32 0, i32 17
  %41 = ptrtoint ptr %crcount to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv44, ptr %crcount, align 1
  br label %if.end45

if.end45:                                         ; preds = %cond.end42, %cond.end.if.end45_crit_edge, %do.body.if.end45_crit_edge
  %42 = ptrtoint ptr %pmc.086 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pmc.086, align 4
  %refcnt.i = getelementptr inbounds %struct.in_device, ptr %43, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !246
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #12
  %44 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #12, !srcloc !247
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %44, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.in_dev_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !250

if.end5.i.i.i.i.in_dev_put.exit_crit_edge:        ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %in_dev_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #12
  br label %in_dev_put.exit

if.then.i:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !256
  tail call void @in_dev_finish_destroy(ptr noundef %43) #12
  br label %in_dev_put.exit

in_dev_put.exit:                                  ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.in_dev_put.exit_crit_edge
  %sources.i = getelementptr inbounds %struct.ip_mc_list, ptr %pmc.086, i32 0, i32 3
  %45 = ptrtoint ptr %sources.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sources.i, align 4
  %tobool.not3.i.i = icmp eq ptr %46, null
  br i1 %tobool.not3.i.i, label %in_dev_put.exit.ip_sf_list_clear_all.exit.i_crit_edge, label %in_dev_put.exit.while.body.i.i_crit_edge

in_dev_put.exit.while.body.i.i_crit_edge:         ; preds = %in_dev_put.exit
  br label %while.body.i.i

in_dev_put.exit.ip_sf_list_clear_all.exit.i_crit_edge: ; preds = %in_dev_put.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip_sf_list_clear_all.exit.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %in_dev_put.exit.while.body.i.i_crit_edge
  %psf.addr.04.i.i = phi ptr [ %48, %while.body.i.i.while.body.i.i_crit_edge ], [ %46, %in_dev_put.exit.while.body.i.i_crit_edge ]
  %47 = ptrtoint ptr %psf.addr.04.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %psf.addr.04.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %psf.addr.04.i.i) #12
  %tobool.not.i.i = icmp eq ptr %48, null
  br i1 %tobool.not.i.i, label %while.body.i.i.ip_sf_list_clear_all.exit.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i

while.body.i.i.ip_sf_list_clear_all.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip_sf_list_clear_all.exit.i

ip_sf_list_clear_all.exit.i:                      ; preds = %while.body.i.i.ip_sf_list_clear_all.exit.i_crit_edge, %in_dev_put.exit.ip_sf_list_clear_all.exit.i_crit_edge
  %tomb.i = getelementptr inbounds %struct.ip_mc_list, ptr %pmc.086, i32 0, i32 4
  %49 = ptrtoint ptr %tomb.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %tomb.i, align 4
  %tobool.not3.i3.i = icmp eq ptr %50, null
  br i1 %tobool.not3.i3.i, label %ip_sf_list_clear_all.exit.i.kfree_pmc.exit_crit_edge, label %ip_sf_list_clear_all.exit.i.while.body.i6.i_crit_edge

ip_sf_list_clear_all.exit.i.while.body.i6.i_crit_edge: ; preds = %ip_sf_list_clear_all.exit.i
  br label %while.body.i6.i

ip_sf_list_clear_all.exit.i.kfree_pmc.exit_crit_edge: ; preds = %ip_sf_list_clear_all.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kfree_pmc.exit

while.body.i6.i:                                  ; preds = %while.body.i6.i.while.body.i6.i_crit_edge, %ip_sf_list_clear_all.exit.i.while.body.i6.i_crit_edge
  %psf.addr.04.i4.i = phi ptr [ %52, %while.body.i6.i.while.body.i6.i_crit_edge ], [ %50, %ip_sf_list_clear_all.exit.i.while.body.i6.i_crit_edge ]
  %51 = ptrtoint ptr %psf.addr.04.i4.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %psf.addr.04.i4.i, align 4
  tail call void @kfree(ptr noundef nonnull %psf.addr.04.i4.i) #12
  %tobool.not.i5.i = icmp eq ptr %52, null
  br i1 %tobool.not.i5.i, label %while.body.i6.i.kfree_pmc.exit_crit_edge, label %while.body.i6.i.while.body.i6.i_crit_edge

while.body.i6.i.while.body.i6.i_crit_edge:        ; preds = %while.body.i6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i6.i

while.body.i6.i.kfree_pmc.exit_crit_edge:         ; preds = %while.body.i6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kfree_pmc.exit

kfree_pmc.exit:                                   ; preds = %while.body.i6.i.kfree_pmc.exit_crit_edge, %ip_sf_list_clear_all.exit.i.kfree_pmc.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %pmc.086) #12
  br label %if.end47

if.end47:                                         ; preds = %kfree_pmc.exit, %if.end9.if.end47_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @igmp_group_added(ptr noundef %im) unnamed_addr #0 align 64 {
entry:
  %buf.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %im to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %im, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 127
  %4 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nd_net.i, align 4
  %loaded = getelementptr inbounds %struct.ip_mc_list, ptr %im, i32 0, i32 15
  %6 = ptrtoint ptr %loaded to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %loaded, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp = icmp eq i8 %7, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %8 = ptrtoint ptr %loaded to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %loaded, align 1
  %multiaddr = getelementptr inbounds %struct.ip_mc_list, ptr %im, i32 0, i32 1
  %9 = ptrtoint ptr %multiaddr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %multiaddr, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf.i) #12
  %11 = call ptr @memset(ptr %buf.i, i32 255, i32 32)
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %call.i = call i32 @arp_mc_map(i32 noundef %10, ptr noundef nonnull %buf.i, ptr noundef %13, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.then.ip_mc_filter_add.exit_crit_edge

if.then.ip_mc_filter_add.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip_mc_filter_add.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %call3.i = call i32 @dev_mc_add(ptr noundef %13, ptr noundef nonnull %buf.i) #12
  br label %ip_mc_filter_add.exit

ip_mc_filter_add.exit:                            ; preds = %if.then.i, %if.then.ip_mc_filter_add.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf.i) #12
  br label %if.end

if.end:                                           ; preds = %ip_mc_filter_add.exit, %entry.if.end_crit_edge
  %multiaddr3 = getelementptr inbounds %struct.ip_mc_list, ptr %im, i32 0, i32 1
  %14 = ptrtoint ptr %multiaddr3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %multiaddr3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870911, i32 %15)
  %cmp4 = icmp eq i32 %15, -536870911
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %and.i = and i32 %15, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i)
  %cmp.i90 = icmp eq i32 %and.i, -536870912
  br i1 %cmp.i90, label %land.lhs.true, label %if.end7.if.end12_crit_edge

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end7
  %sysctl_igmp_llm_reports = getelementptr inbounds %struct.net, ptr %5, i32 0, i32 35, i32 119
  %16 = ptrtoint ptr %sysctl_igmp_llm_reports to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %sysctl_igmp_llm_reports, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not = icmp eq i8 %17, 0
  br i1 %tobool.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end12_crit_edge

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end12:                                         ; preds = %land.lhs.true.if.end12_crit_edge, %if.end7.if.end12_crit_edge
  %dead = getelementptr inbounds %struct.in_device, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %dead to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dead, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool13.not = icmp eq i32 %19, 0
  br i1 %tobool13.not, label %if.end15, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end15:                                         ; preds = %if.end12
  %sysctl_igmp_qrv = getelementptr inbounds %struct.net, ptr %5, i32 0, i32 35, i32 122
  %20 = ptrtoint ptr %sysctl_igmp_qrv to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sysctl_igmp_qrv, align 4
  %conv17 = trunc i32 %21 to i8
  %unsolicit_count = getelementptr inbounds %struct.ip_mc_list, ptr %im, i32 0, i32 14
  %22 = ptrtoint ptr %unsolicit_count to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv17, ptr %unsolicit_count, align 2
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %nd_net.i91 = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 127
  %25 = ptrtoint ptr %nd_net.i91 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %nd_net.i91, align 4
  %devconf_all = getelementptr inbounds %struct.net, ptr %26, i32 0, i32 35, i32 6
  %27 = ptrtoint ptr %devconf_all to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %devconf_all, align 4
  %arrayidx = getelementptr %struct.ipv4_devconf, ptr %28, i32 0, i32 1, i32 16
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp21 = icmp eq i32 %30, 1
  br i1 %cmp21, label %if.end15.if.then52_crit_edge, label %lor.lhs.false

if.end15.if.then52_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then52

lor.lhs.false:                                    ; preds = %if.end15
  %arrayidx.i = getelementptr %struct.in_device, ptr %1, i32 0, i32 21, i32 1, i32 16
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp24 = icmp eq i32 %32, 1
  br i1 %cmp24, label %lor.lhs.false.if.then52_crit_edge, label %lor.lhs.false26

lor.lhs.false.if.then52_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then52

lor.lhs.false26:                                  ; preds = %lor.lhs.false
  %mr_v1_seen = getelementptr inbounds %struct.in_device, ptr %1, i32 0, i32 10
  %33 = ptrtoint ptr %mr_v1_seen to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mr_v1_seen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool27.not = icmp eq i32 %34, 0
  br i1 %tobool27.not, label %lor.lhs.false32, label %land.lhs.true28

land.lhs.true28:                                  ; preds = %lor.lhs.false26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %35 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %35, %34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp30 = icmp slt i32 %sub, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %30)
  %cmp39 = icmp eq i32 %30, 2
  %or.cond = select i1 %cmp30, i1 true, i1 %cmp39
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %32)
  %cmp43 = icmp eq i32 %32, 2
  %or.cond96 = select i1 %or.cond, i1 true, i1 %cmp43
  br i1 %or.cond96, label %land.lhs.true28.if.then52_crit_edge, label %land.lhs.true28.lor.lhs.false45_crit_edge

land.lhs.true28.lor.lhs.false45_crit_edge:        ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false45

land.lhs.true28.if.then52_crit_edge:              ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then52

lor.lhs.false32:                                  ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %30)
  %cmp39.old = icmp eq i32 %30, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %32)
  %cmp43.old = icmp eq i32 %32, 2
  %or.cond97 = select i1 %cmp39.old, i1 true, i1 %cmp43.old
  br i1 %or.cond97, label %lor.lhs.false32.if.then52_crit_edge, label %lor.lhs.false32.lor.lhs.false45_crit_edge

lor.lhs.false32.lor.lhs.false45_crit_edge:        ; preds = %lor.lhs.false32
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false45

lor.lhs.false32.if.then52_crit_edge:              ; preds = %lor.lhs.false32
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then52

lor.lhs.false45:                                  ; preds = %lor.lhs.false32.lor.lhs.false45_crit_edge, %land.lhs.true28.lor.lhs.false45_crit_edge
  %mr_v2_seen = getelementptr inbounds %struct.in_device, ptr %1, i32 0, i32 11
  %36 = ptrtoint ptr %mr_v2_seen to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mr_v2_seen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool46.not = icmp eq i32 %37, 0
  br i1 %tobool46.not, label %lor.lhs.false45.if.end54_crit_edge, label %land.lhs.true47

lor.lhs.false45.if.end54_crit_edge:               ; preds = %lor.lhs.false45
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54

land.lhs.true47:                                  ; preds = %lor.lhs.false45
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %38 = load volatile i32, ptr @jiffies, align 128
  %sub49 = sub i32 %38, %37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub49)
  %cmp50 = icmp slt i32 %sub49, 0
  br i1 %cmp50, label %land.lhs.true47.if.then52_crit_edge, label %land.lhs.true47.if.end54_crit_edge

land.lhs.true47.if.end54_crit_edge:               ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54

land.lhs.true47.if.then52_crit_edge:              ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then52

if.then52:                                        ; preds = %land.lhs.true47.if.then52_crit_edge, %lor.lhs.false32.if.then52_crit_edge, %land.lhs.true28.if.then52_crit_edge, %lor.lhs.false.if.then52_crit_edge, %if.end15.if.then52_crit_edge
  %lock = getelementptr inbounds %struct.ip_mc_list, ptr %im, i32 0, i32 11
  call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  %call.i94 = call i32 @prandom_u32() #12
  %tm_running.i = getelementptr inbounds %struct.ip_mc_list, ptr %im, i32 0, i32 12
  %39 = ptrtoint ptr %tm_running.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %tm_running.i, align 4
  %timer.i = getelementptr inbounds %struct.ip_mc_list, ptr %im, i32 0, i32 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %40 = load volatile i32, ptr @jiffies, align 128
  %add1.i = add i32 %40, 2
  %call2.i = call i32 @mod_timer(ptr noundef %timer.i, i32 noundef %add1.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.then.i95, label %if.then52.igmp_start_timer.exit_crit_edge

if.then52.igmp_start_timer.exit_crit_edge:        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %igmp_start_timer.exit

if.then.i95:                                      ; preds = %if.then52
  %refcnt.i = getelementptr inbounds %struct.ip_mc_list, ptr %im, i32 0, i32 10
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #12
  %41 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #12, !srcloc !249
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %41, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i95.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !244

if.then.i95.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.then.i95
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i95
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %42 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %42)
  %.not.i.i.i.i = icmp sgt i32 %42, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.igmp_start_timer.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !250

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.igmp_start_timer.exit_crit_edge:  ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %igmp_start_timer.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i95.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i95.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef %.sink.i.i.i.i) #12
  br label %igmp_start_timer.exit

igmp_start_timer.exit:                            ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.igmp_start_timer.exit_crit_edge, %if.then52.igmp_start_timer.exit_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  br label %cleanup

if.end54:                                         ; preds = %land.lhs.true47.if.end54_crit_edge, %lor.lhs.false45.if.end54_crit_edge
  %sfmode = getelementptr inbounds %struct.ip_mc_list, ptr %im, i32 0, i32 2
  %43 = ptrtoint ptr %sfmode to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %sfmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp55 = icmp eq i32 %44, 0
  br i1 %cmp55, label %if.then57, label %if.end54.if.end63_crit_edge

if.end54.if.end63_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63

if.then57:                                        ; preds = %if.end54
  %mr_qrv = getelementptr inbounds %struct.in_device, ptr %1, i32 0, i32 15
  %45 = ptrtoint ptr %mr_qrv to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %mr_qrv, align 4
  %conv58 = zext i8 %46 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool59.not = icmp eq i8 %46, 0
  br i1 %tobool59.not, label %cond.false, label %if.then57.cond.end_crit_edge

if.then57.cond.end_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #14
  %47 = ptrtoint ptr %sysctl_igmp_qrv to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %sysctl_igmp_qrv, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then57.cond.end_crit_edge
  %cond = phi i32 [ %48, %cond.false ], [ %conv58, %if.then57.cond.end_crit_edge ]
  %conv62 = trunc i32 %cond to i8
  %crcount = getelementptr inbounds %struct.ip_mc_list, ptr %im, i32 0, i32 17
  %49 = ptrtoint ptr %crcount to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv62, ptr %crcount, align 1
  br label %if.end63

if.end63:                                         ; preds = %cond.end, %if.end54.if.end63_crit_edge
  call fastcc void @igmp_ifc_event(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end63, %igmp_start_timer.exit, %if.end12.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ip_mc_down(ptr noundef %in_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_is_locked() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b93 = load i1, ptr @ip_mc_down.__already_done, align 1
  br i1 %.b93, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !250

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ip_mc_down.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1728, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 1728) #12
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %call38 = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call38, label %if.end29.do.end46_crit_edge, label %land.lhs.true

if.end29.do.end46_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end46

land.lhs.true:                                    ; preds = %if.end29
  %call39 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %land.lhs.true.do.end46_crit_edge, label %land.lhs.true41

land.lhs.true.do.end46_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end46

land.lhs.true41:                                  ; preds = %land.lhs.true
  %.b8992 = load i1, ptr @ip_mc_down.__warned, align 1
  br i1 %.b8992, label %land.lhs.true41.do.end46_crit_edge, label %if.then43

land.lhs.true41.do.end46_crit_edge:               ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end46

if.then43:                                        ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ip_mc_down.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1730, ptr noundef nonnull @.str.2) #12
  br label %do.end46

do.end46:                                         ; preds = %if.then43, %land.lhs.true41.do.end46_crit_edge, %land.lhs.true.do.end46_crit_edge, %if.end29.do.end46_crit_edge
  %mc_list = getelementptr inbounds %struct.in_device, ptr %in_dev, i32 0, i32 5
  %0 = ptrtoint ptr %mc_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %pmc.099 = load ptr, ptr %mc_list, align 4
  %cmp.not100 = icmp eq ptr %pmc.099, null
  br i1 %cmp.not100, label %do.end46.do.body64_crit_edge, label %do.end46.for.body_crit_edge

do.end46.for.body_crit_edge:                      ; preds = %do.end46
  br label %for.body

do.end46.do.body64_crit_edge:                     ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body64

for.body:                                         ; preds = %do.end58.for.body_crit_edge, %do.end46.for.body_crit_edge
  %pmc.0101 = phi ptr [ %pmc.0, %do.end58.for.body_crit_edge ], [ %pmc.099, %do.end46.for.body_crit_edge ]
  tail call fastcc void @__igmp_group_dropped(ptr noundef nonnull %pmc.0101, i32 noundef 3264) #12
  %call49 = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call49, label %for.body.do.end58_crit_edge, label %land.lhs.true50

for.body.do.end58_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end58

land.lhs.true50:                                  ; preds = %for.body
  %call51 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %land.lhs.true50.do.end58_crit_edge, label %land.lhs.true53

land.lhs.true50.do.end58_crit_edge:               ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end58

land.lhs.true53:                                  ; preds = %land.lhs.true50
  %.b9091 = load i1, ptr @ip_mc_down.__warned.5, align 1
  br i1 %.b9091, label %land.lhs.true53.do.end58_crit_edge, label %if.then55

land.lhs.true53.do.end58_crit_edge:               ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end58

if.then55:                                        ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ip_mc_down.__warned.5, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1730, ptr noundef nonnull @.str.2) #12
  br label %do.end58

do.end58:                                         ; preds = %if.then55, %land.lhs.true53.do.end58_crit_edge, %land.lhs.true50.do.end58_crit_edge, %for.body.do.end58_crit_edge
  %1 = getelementptr inbounds %struct.ip_mc_list, ptr %pmc.0101, i32 0, i32 6
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %pmc.0 = load ptr, ptr %1, align 4
  %cmp.not = icmp eq ptr %pmc.0, null
  br i1 %cmp.not, label %do.end58.do.body64_crit_edge, label %do.end58.for.body_crit_edge

do.end58.for.body_crit_edge:                      ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

do.end58.do.body64_crit_edge:                     ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body64

do.body64:                                        ; preds = %do.end58.do.body64_crit_edge, %do.end46.do.body64_crit_edge
  %mr_ifc_count = getelementptr inbounds %struct.in_device, ptr %in_dev, i32 0, i32 17
  %3 = ptrtoint ptr %mr_ifc_count to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 0, ptr %mr_ifc_count, align 4
  %mr_ifc_timer = getelementptr inbounds %struct.in_device, ptr %in_dev, i32 0, i32 19
  %call69 = tail call i32 @del_timer(ptr noundef %mr_ifc_timer) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %do.body64.if.end72_crit_edge, label %if.then71

do.body64.if.end72_crit_edge:                     ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72

if.then71:                                        ; preds = %do.body64
  %refcnt = getelementptr inbounds %struct.in_device, ptr %in_dev, i32 0, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !246
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #12
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #12, !srcloc !247
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp slt i32 %asmresult.i.i.i.i.i, 2
  br i1 %cmp.i.i, label %if.then3.i.i, label %if.then71.if.end72_crit_edge, !prof !244

if.then71.if.end72_crit_edge:                     ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72

if.then3.i.i:                                     ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 4) #12
  br label %if.end72

if.end72:                                         ; preds = %if.then3.i.i, %if.then71.if.end72_crit_edge, %do.body64.if.end72_crit_edge
  %mr_gq_running = getelementptr inbounds %struct.in_device, ptr %in_dev, i32 0, i32 16
  %5 = ptrtoint ptr %mr_gq_running to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %mr_gq_running, align 1
  %mr_gq_timer = getelementptr inbounds %struct.in_device, ptr %in_dev, i32 0, i32 18
  %call73 = tail call i32 @del_timer(ptr noundef %mr_gq_timer) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end72.if.end77_crit_edge, label %if.then75

if.end72.if.end77_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end77

if.then75:                                        ; preds = %if.end72
  %refcnt76 = getelementptr inbounds %struct.in_device, ptr %in_dev, i32 0, i32 2
  %call.i.i.i.i94 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt76, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !246
  tail call void @llvm.prefetch.p0(ptr %refcnt76, i32 1, i32 3, i32 1) #12
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt76, ptr %refcnt76, i32 1, ptr elementtype(i32) %refcnt76) #12, !srcloc !247
  %asmresult.i.i.i.i.i95 = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i95)
  %cmp.i.i96 = icmp slt i32 %asmresult.i.i.i.i.i95, 2
  br i1 %cmp.i.i96, label %if.then3.i.i97, label %if.then75.if.end77_crit_edge, !prof !244

if.then75.if.end77_crit_edge:                     ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end77

if.then3.i.i97:                                   ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %refcnt76, i32 noundef 4) #12
  br label %if.end77

if.end77:                                         ; preds = %if.then3.i.i97, %if.then75.if.end77_crit_edge, %if.end72.if.end77_crit_edge
  tail call void @__ip_mc_dec_group(ptr noundef %in_dev, i32 noundef -536870911, i32 noundef 3264) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ip_mc_init_dev(ptr noundef %in_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_is_locked() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b52 = load i1, ptr @ip_mc_init_dev.__already_done, align 1
  br i1 %.b52, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !250

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ip_mc_init_dev.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1762, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 1762) #12
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %mr_gq_timer = getelementptr inbounds %struct.in_device, ptr %in_dev, i32 0, i32 18
  tail call void @init_timer_key(ptr noundef %mr_gq_timer, ptr noundef nonnull @igmp_gq_timer_expire, i32 noundef 0, ptr noundef nonnull @.str.6, ptr noundef nonnull @ip_mc_init_dev.__key) #12
  %mr_ifc_timer = getelementptr inbounds %struct.in_device, ptr %in_dev, i32 0, i32 19
  tail call void @init_timer_key(ptr noundef %mr_ifc_timer, ptr noundef nonnull @igmp_ifc_timer_expire, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull @ip_mc_init_dev.__key.7) #12
  %0 = ptrtoint ptr %in_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %in_dev, align 4
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 127
  %2 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nd_net.i.i, align 4
  %mr_qi.i = getelementptr inbounds %struct.in_device, ptr %in_dev, i32 0, i32 13
  %4 = ptrtoint ptr %mr_qi.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 12500, ptr %mr_qi.i, align 4
  %mr_qri.i = getelementptr inbounds %struct.in_device, ptr %in_dev, i32 0, i32 14
  %5 = ptrtoint ptr %mr_qri.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1000, ptr %mr_qri.i, align 4
  %sysctl_igmp_qrv.i = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 35, i32 122
  %6 = ptrtoint ptr %sysctl_igmp_qrv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sysctl_igmp_qrv.i, align 4
  %conv.i = trunc i32 %7 to i8
  %mr_qrv.i = getelementptr inbounds %struct.in_device, ptr %in_dev, i32 0, i32 15
  %8 = ptrtoint ptr %mr_qrv.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv.i, ptr %mr_qrv.i, align 4
  %mc_tomb_lock = getelementptr inbounds %struct.in_device, ptr %in_dev, i32 0, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %mc_tomb_lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @ip_mc_init_dev.__key.9, i16 noundef signext 3) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @igmp_gq_timer_expire(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -108
  %mr_gq_running = getelementptr i8, ptr %t, i32 -7
  %0 = ptrtoint ptr %mr_gq_running to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %mr_gq_running, align 1
  %call = tail call fastcc i32 @igmpv3_send_report(ptr noundef %add.ptr, ptr noundef null)
  %refcnt.i = getelementptr i8, ptr %t, i32 -100
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !246
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #12
  %1 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #12, !srcloc !247
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.in_dev_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !250

if.end5.i.i.i.i.in_dev_put.exit_crit_edge:        ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %in_dev_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #12
  br label %in_dev_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !256
  tail call void @in_dev_finish_destroy(ptr noundef %add.ptr) #12
  br label %in_dev_put.exit

in_dev_put.exit:                                  ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.in_dev_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @igmp_ifc_timer_expire(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -156
  %0 = tail call i32 @llvm.read_register.i32(metadata !234) #12
  %and.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !248
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.49, i32 noundef 696, ptr noundef nonnull @.str.50) #12
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %mc_tomb_lock.i = getelementptr i8, ptr %t, i32 -124
  tail call void @_raw_spin_lock_bh(ptr noundef %mc_tomb_lock.i) #12
  %mc_tomb.i = getelementptr i8, ptr %t, i32 -80
  %4 = ptrtoint ptr %mc_tomb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mc_tomb.i, align 4
  %tobool.not181.i = icmp eq ptr %5, null
  br i1 %tobool.not181.i, label %rcu_read_lock.exit.i.for.end.i_crit_edge, label %rcu_read_lock.exit.i.for.body.i_crit_edge

rcu_read_lock.exit.i.for.body.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  br label %for.body.i

rcu_read_lock.exit.i.for.end.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %rcu_read_lock.exit.i.for.body.i_crit_edge
  %pmc.0184.i = phi ptr [ %8, %for.inc.i.for.body.i_crit_edge ], [ %5, %rcu_read_lock.exit.i.for.body.i_crit_edge ]
  %pmc_prev.0183.i = phi ptr [ %pmc_prev.1.i, %for.inc.i.for.body.i_crit_edge ], [ null, %rcu_read_lock.exit.i.for.body.i_crit_edge ]
  %skb.0182.i = phi ptr [ %skb.3176.i, %for.inc.i.for.body.i_crit_edge ], [ null, %rcu_read_lock.exit.i.for.body.i_crit_edge ]
  %6 = getelementptr inbounds %struct.ip_mc_list, ptr %pmc.0184.i, i32 0, i32 6
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %sfmode.i = getelementptr inbounds %struct.ip_mc_list, ptr %pmc.0184.i, i32 0, i32 2
  %9 = ptrtoint ptr %sfmode.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sfmode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp.i = icmp eq i32 %10, 1
  br i1 %cmp.i, label %if.then.i, label %for.body.i.if.end.i_crit_edge

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i34 = tail call fastcc ptr @add_grec(ptr noundef %skb.0182.i, ptr noundef nonnull %pmc.0184.i, i32 noundef 6, i32 noundef 1, i32 noundef 0) #12
  %call1.i = tail call fastcc ptr @add_grec(ptr noundef %call.i34, ptr noundef nonnull %pmc.0184.i, i32 noundef 6, i32 noundef 1, i32 noundef 1) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %skb.1.i = phi ptr [ %call1.i, %if.then.i ], [ %skb.0182.i, %for.body.i.if.end.i_crit_edge ]
  %crcount.i = getelementptr inbounds %struct.ip_mc_list, ptr %pmc.0184.i, i32 0, i32 17
  %11 = ptrtoint ptr %crcount.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %crcount.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool2.not.i = icmp eq i8 %12, 0
  br i1 %tobool2.not.i, label %if.end.i.land.lhs.true.i_crit_edge, label %if.then3.i

if.end.i.land.lhs.true.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i

if.then3.i:                                       ; preds = %if.end.i
  %13 = ptrtoint ptr %sfmode.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sfmode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp5.i = icmp eq i32 %14, 0
  br i1 %cmp5.i, label %if.then6.i, label %if.then3.i.if.end8.i_crit_edge

if.then3.i.if.end8.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i

if.then6.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #14
  %call7.i = tail call fastcc ptr @add_grec(ptr noundef %skb.1.i, ptr noundef nonnull %pmc.0184.i, i32 noundef 3, i32 noundef 1, i32 noundef 0) #12
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then6.i, %if.then3.i.if.end8.i_crit_edge
  %skb.2.i = phi ptr [ %call7.i, %if.then6.i ], [ %skb.1.i, %if.then3.i.if.end8.i_crit_edge ]
  %15 = ptrtoint ptr %crcount.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %crcount.i, align 1
  %dec.i = add i8 %16, -1
  store i8 %dec.i, ptr %crcount.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec.i)
  %cmp11.i = icmp eq i8 %dec.i, 0
  br i1 %cmp11.i, label %if.then13.i, label %if.end8.i.for.inc.i_crit_edge

if.end8.i.for.inc.i_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then13.i:                                      ; preds = %if.end8.i
  %tomb.i = getelementptr inbounds %struct.ip_mc_list, ptr %pmc.0184.i, i32 0, i32 4
  %17 = ptrtoint ptr %tomb.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tomb.i, align 4
  %tobool.not17.i.i = icmp eq ptr %18, null
  br i1 %tobool.not17.i.i, label %if.then13.i.igmpv3_clear_zeros.exit.i_crit_edge, label %if.then13.i.for.body.i.i_crit_edge

if.then13.i.for.body.i.i_crit_edge:               ; preds = %if.then13.i
  br label %for.body.i.i

if.then13.i.igmpv3_clear_zeros.exit.i_crit_edge:  ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %igmpv3_clear_zeros.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then13.i.for.body.i.i_crit_edge
  %psf.020.i.i = phi ptr [ %20, %for.inc.i.i.for.body.i.i_crit_edge ], [ %18, %if.then13.i.for.body.i.i_crit_edge ]
  %psf_prev.018.i.i = phi ptr [ %psf_prev.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ null, %if.then13.i.for.body.i.i_crit_edge ]
  %19 = ptrtoint ptr %psf.020.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %psf.020.i.i, align 4
  %sf_crcount.i.i = getelementptr inbounds %struct.ip_sf_list, ptr %psf.020.i.i, i32 0, i32 5
  %21 = ptrtoint ptr %sf_crcount.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %sf_crcount.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp.i.i = icmp eq i8 %22, 0
  br i1 %cmp.i.i, label %if.then.i149.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

if.then.i149.i:                                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %tobool2.not.i.i = icmp eq ptr %psf_prev.018.i.i, null
  %ppsf.psf_prev.018.i.i = select i1 %tobool2.not.i.i, ptr %tomb.i, ptr %psf_prev.018.i.i
  %23 = ptrtoint ptr %ppsf.psf_prev.018.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %ppsf.psf_prev.018.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %psf.020.i.i) #12
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i149.i, %for.body.i.i.for.inc.i.i_crit_edge
  %psf_prev.1.i.i = phi ptr [ %psf_prev.018.i.i, %if.then.i149.i ], [ %psf.020.i.i, %for.body.i.i.for.inc.i.i_crit_edge ]
  %tobool.not.i150.i = icmp eq ptr %20, null
  br i1 %tobool.not.i150.i, label %for.inc.i.i.igmpv3_clear_zeros.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.inc.i.i.igmpv3_clear_zeros.exit.i_crit_edge:  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %igmpv3_clear_zeros.exit.i

igmpv3_clear_zeros.exit.i:                        ; preds = %for.inc.i.i.igmpv3_clear_zeros.exit.i_crit_edge, %if.then13.i.igmpv3_clear_zeros.exit.i_crit_edge
  %sources.i = getelementptr inbounds %struct.ip_mc_list, ptr %pmc.0184.i, i32 0, i32 3
  %24 = ptrtoint ptr %sources.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sources.i, align 4
  %tobool.not17.i151.i = icmp eq ptr %25, null
  br i1 %tobool.not17.i151.i, label %igmpv3_clear_zeros.exit.i.if.end15.i_crit_edge, label %igmpv3_clear_zeros.exit.i.for.body.i156.i_crit_edge

igmpv3_clear_zeros.exit.i.for.body.i156.i_crit_edge: ; preds = %igmpv3_clear_zeros.exit.i
  br label %for.body.i156.i

igmpv3_clear_zeros.exit.i.if.end15.i_crit_edge:   ; preds = %igmpv3_clear_zeros.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.i

for.body.i156.i:                                  ; preds = %for.inc.i162.i.for.body.i156.i_crit_edge, %igmpv3_clear_zeros.exit.i.for.body.i156.i_crit_edge
  %psf.020.i152.i = phi ptr [ %27, %for.inc.i162.i.for.body.i156.i_crit_edge ], [ %25, %igmpv3_clear_zeros.exit.i.for.body.i156.i_crit_edge ]
  %psf_prev.018.i153.i = phi ptr [ %psf_prev.1.i160.i, %for.inc.i162.i.for.body.i156.i_crit_edge ], [ null, %igmpv3_clear_zeros.exit.i.for.body.i156.i_crit_edge ]
  %26 = ptrtoint ptr %psf.020.i152.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %psf.020.i152.i, align 4
  %sf_crcount.i154.i = getelementptr inbounds %struct.ip_sf_list, ptr %psf.020.i152.i, i32 0, i32 5
  %28 = ptrtoint ptr %sf_crcount.i154.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %sf_crcount.i154.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp.i155.i = icmp eq i8 %29, 0
  br i1 %cmp.i155.i, label %if.then.i159.i, label %for.body.i156.i.for.inc.i162.i_crit_edge

for.body.i156.i.for.inc.i162.i_crit_edge:         ; preds = %for.body.i156.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i162.i

if.then.i159.i:                                   ; preds = %for.body.i156.i
  call void @__sanitizer_cov_trace_pc() #14
  %tobool2.not.i157.i = icmp eq ptr %psf_prev.018.i153.i, null
  %ppsf.psf_prev.018.i158.i = select i1 %tobool2.not.i157.i, ptr %sources.i, ptr %psf_prev.018.i153.i
  %30 = ptrtoint ptr %ppsf.psf_prev.018.i158.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %ppsf.psf_prev.018.i158.i, align 4
  tail call void @kfree(ptr noundef nonnull %psf.020.i152.i) #12
  br label %for.inc.i162.i

for.inc.i162.i:                                   ; preds = %if.then.i159.i, %for.body.i156.i.for.inc.i162.i_crit_edge
  %psf_prev.1.i160.i = phi ptr [ %psf_prev.018.i153.i, %if.then.i159.i ], [ %psf.020.i152.i, %for.body.i156.i.for.inc.i162.i_crit_edge ]
  %tobool.not.i161.i = icmp eq ptr %27, null
  br i1 %tobool.not.i161.i, label %for.inc.i162.i.if.end15.i_crit_edge, label %for.inc.i162.i.for.body.i156.i_crit_edge

for.inc.i162.i.for.body.i156.i_crit_edge:         ; preds = %for.inc.i162.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i156.i

for.inc.i162.i.if.end15.i_crit_edge:              ; preds = %for.inc.i162.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.i

if.end15.i:                                       ; preds = %for.inc.i162.i.if.end15.i_crit_edge, %igmpv3_clear_zeros.exit.i.if.end15.i_crit_edge
  %31 = ptrtoint ptr %crcount.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %.pr.i = load i8, ptr %crcount.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr.i)
  %cmp18.i = icmp eq i8 %.pr.i, 0
  br i1 %cmp18.i, label %if.end15.i.land.lhs.true.i_crit_edge, label %if.end15.i.for.inc.i_crit_edge

if.end15.i.for.inc.i_crit_edge:                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end15.i.land.lhs.true.i_crit_edge:             ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end15.i.land.lhs.true.i_crit_edge, %if.end.i.land.lhs.true.i_crit_edge
  %skb.3177.i = phi ptr [ %skb.2.i, %if.end15.i.land.lhs.true.i_crit_edge ], [ %skb.1.i, %if.end.i.land.lhs.true.i_crit_edge ]
  %tomb20.i = getelementptr inbounds %struct.ip_mc_list, ptr %pmc.0184.i, i32 0, i32 4
  %32 = ptrtoint ptr %tomb20.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tomb20.i, align 4
  %tobool21.not.i = icmp eq ptr %33, null
  br i1 %tobool21.not.i, label %land.lhs.true22.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true22.i:                                ; preds = %land.lhs.true.i
  %sources23.i = getelementptr inbounds %struct.ip_mc_list, ptr %pmc.0184.i, i32 0, i32 3
  %34 = ptrtoint ptr %sources23.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sources23.i, align 4
  %tobool24.not.i = icmp eq ptr %35, null
  br i1 %tobool24.not.i, label %if.then25.i, label %land.lhs.true22.i.for.inc.i_crit_edge

land.lhs.true22.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then25.i:                                      ; preds = %land.lhs.true22.i
  %tobool26.not.i = icmp eq ptr %pmc_prev.0183.i, null
  %36 = getelementptr inbounds %struct.ip_mc_list, ptr %pmc_prev.0183.i, i32 0, i32 6
  %mc_tomb.sink.i = select i1 %tobool26.not.i, ptr %mc_tomb.i, ptr %36
  %37 = ptrtoint ptr %mc_tomb.sink.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %8, ptr %mc_tomb.sink.i, align 4
  %38 = ptrtoint ptr %pmc.0184.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pmc.0184.i, align 4
  %refcnt.i.i = getelementptr inbounds %struct.in_device, ptr %39, i32 0, i32 2
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !246
  tail call void @llvm.prefetch.p0(ptr %refcnt.i.i, i32 1, i32 3, i32 1) #12
  %40 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i, ptr %refcnt.i.i, i32 1, ptr elementtype(i32) %refcnt.i.i) #12, !srcloc !247
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %40, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i164.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.in_dev_put.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !250

if.end5.i.i.i.i.i.in_dev_put.exit.i_crit_edge:    ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %in_dev_put.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i.i, i32 noundef 3) #12
  br label %in_dev_put.exit.i

if.then.i164.i:                                   ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !256
  tail call void @in_dev_finish_destroy(ptr noundef %39) #12
  br label %in_dev_put.exit.i

in_dev_put.exit.i:                                ; preds = %if.then.i164.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.in_dev_put.exit.i_crit_edge
  %41 = ptrtoint ptr %sources23.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sources23.i, align 4
  %tobool.not3.i.i.i = icmp eq ptr %42, null
  br i1 %tobool.not3.i.i.i, label %in_dev_put.exit.i.ip_sf_list_clear_all.exit.i.i_crit_edge, label %in_dev_put.exit.i.while.body.i.i.i_crit_edge

in_dev_put.exit.i.while.body.i.i.i_crit_edge:     ; preds = %in_dev_put.exit.i
  br label %while.body.i.i.i

in_dev_put.exit.i.ip_sf_list_clear_all.exit.i.i_crit_edge: ; preds = %in_dev_put.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip_sf_list_clear_all.exit.i.i

while.body.i.i.i:                                 ; preds = %while.body.i.i.i.while.body.i.i.i_crit_edge, %in_dev_put.exit.i.while.body.i.i.i_crit_edge
  %psf.addr.04.i.i.i = phi ptr [ %44, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ %42, %in_dev_put.exit.i.while.body.i.i.i_crit_edge ]
  %43 = ptrtoint ptr %psf.addr.04.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %psf.addr.04.i.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %psf.addr.04.i.i.i) #12
  %tobool.not.i.i.i = icmp eq ptr %44, null
  br i1 %tobool.not.i.i.i, label %while.body.i.i.i.ip_sf_list_clear_all.exit.i.i_crit_edge, label %while.body.i.i.i.while.body.i.i.i_crit_edge

while.body.i.i.i.while.body.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i.i

while.body.i.i.i.ip_sf_list_clear_all.exit.i.i_crit_edge: ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip_sf_list_clear_all.exit.i.i

ip_sf_list_clear_all.exit.i.i:                    ; preds = %while.body.i.i.i.ip_sf_list_clear_all.exit.i.i_crit_edge, %in_dev_put.exit.i.ip_sf_list_clear_all.exit.i.i_crit_edge
  %45 = ptrtoint ptr %tomb20.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %tomb20.i, align 4
  %tobool.not3.i3.i.i = icmp eq ptr %46, null
  br i1 %tobool.not3.i3.i.i, label %ip_sf_list_clear_all.exit.i.i.kfree_pmc.exit.i_crit_edge, label %ip_sf_list_clear_all.exit.i.i.while.body.i6.i.i_crit_edge

ip_sf_list_clear_all.exit.i.i.while.body.i6.i.i_crit_edge: ; preds = %ip_sf_list_clear_all.exit.i.i
  br label %while.body.i6.i.i

ip_sf_list_clear_all.exit.i.i.kfree_pmc.exit.i_crit_edge: ; preds = %ip_sf_list_clear_all.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kfree_pmc.exit.i

while.body.i6.i.i:                                ; preds = %while.body.i6.i.i.while.body.i6.i.i_crit_edge, %ip_sf_list_clear_all.exit.i.i.while.body.i6.i.i_crit_edge
  %psf.addr.04.i4.i.i = phi ptr [ %48, %while.body.i6.i.i.while.body.i6.i.i_crit_edge ], [ %46, %ip_sf_list_clear_all.exit.i.i.while.body.i6.i.i_crit_edge ]
  %47 = ptrtoint ptr %psf.addr.04.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %psf.addr.04.i4.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %psf.addr.04.i4.i.i) #12
  %tobool.not.i5.i.i = icmp eq ptr %48, null
  br i1 %tobool.not.i5.i.i, label %while.body.i6.i.i.kfree_pmc.exit.i_crit_edge, label %while.body.i6.i.i.while.body.i6.i.i_crit_edge

while.body.i6.i.i.while.body.i6.i.i_crit_edge:    ; preds = %while.body.i6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i6.i.i

while.body.i6.i.i.kfree_pmc.exit.i_crit_edge:     ; preds = %while.body.i6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kfree_pmc.exit.i

kfree_pmc.exit.i:                                 ; preds = %while.body.i6.i.i.kfree_pmc.exit.i_crit_edge, %ip_sf_list_clear_all.exit.i.i.kfree_pmc.exit.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %pmc.0184.i) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %kfree_pmc.exit.i, %land.lhs.true22.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %if.end15.i.for.inc.i_crit_edge, %if.end8.i.for.inc.i_crit_edge
  %skb.3176.i = phi ptr [ %skb.3177.i, %kfree_pmc.exit.i ], [ %skb.3177.i, %land.lhs.true22.i.for.inc.i_crit_edge ], [ %skb.3177.i, %land.lhs.true.i.for.inc.i_crit_edge ], [ %skb.2.i, %if.end15.i.for.inc.i_crit_edge ], [ %skb.2.i, %if.end8.i.for.inc.i_crit_edge ]
  %pmc_prev.1.i = phi ptr [ %pmc_prev.0183.i, %kfree_pmc.exit.i ], [ %pmc.0184.i, %land.lhs.true22.i.for.inc.i_crit_edge ], [ %pmc.0184.i, %land.lhs.true.i.for.inc.i_crit_edge ], [ %pmc.0184.i, %if.end15.i.for.inc.i_crit_edge ], [ %pmc.0184.i, %if.end8.i.for.inc.i_crit_edge ]
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %rcu_read_lock.exit.i.for.end.i_crit_edge
  %skb.0.lcssa.i = phi ptr [ null, %rcu_read_lock.exit.i.for.end.i_crit_edge ], [ %skb.3176.i, %for.inc.i.for.end.i_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %mc_tomb_lock.i) #12
  %mc_list.i = getelementptr i8, ptr %t, i32 -136
  %49 = ptrtoint ptr %mc_list.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile ptr, ptr %mc_list.i, align 4
  %call34.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %land.lhs.true36.i, label %for.end.i.do.end44.i_crit_edge

for.end.i.do.end44.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end44.i

land.lhs.true36.i:                                ; preds = %for.end.i
  %call37.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %tobool38.not.i = icmp eq i32 %call37.i, 0
  br i1 %tobool38.not.i, label %land.lhs.true36.i.do.end44.i_crit_edge, label %land.lhs.true39.i

land.lhs.true36.i.do.end44.i_crit_edge:           ; preds = %land.lhs.true36.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end44.i

land.lhs.true39.i:                                ; preds = %land.lhs.true36.i
  %.b146.i = load i1, ptr @igmpv3_send_cr.__warned, align 1
  br i1 %.b146.i, label %land.lhs.true39.i.do.end44.i_crit_edge, label %if.then41.i

land.lhs.true39.i.do.end44.i_crit_edge:           ; preds = %land.lhs.true39.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end44.i

if.then41.i:                                      ; preds = %land.lhs.true39.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @igmpv3_send_cr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 692, ptr noundef nonnull @.str.20) #12
  br label %do.end44.i

do.end44.i:                                       ; preds = %if.then41.i, %land.lhs.true39.i.do.end44.i_crit_edge, %land.lhs.true36.i.do.end44.i_crit_edge, %for.end.i.do.end44.i_crit_edge
  %cmp47.not186.i = icmp eq ptr %50, null
  br i1 %cmp47.not186.i, label %do.end44.i.for.end88.i_crit_edge, label %do.end44.i.for.body49.i_crit_edge

do.end44.i.for.body49.i_crit_edge:                ; preds = %do.end44.i
  br label %for.body49.i

do.end44.i.for.end88.i_crit_edge:                 ; preds = %do.end44.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end88.i

for.body49.i:                                     ; preds = %do.end86.i.for.body49.i_crit_edge, %do.end44.i.for.body49.i_crit_edge
  %pmc.1188.i = phi ptr [ %61, %do.end86.i.for.body49.i_crit_edge ], [ %50, %do.end44.i.for.body49.i_crit_edge ]
  %skb.4187.i = phi ptr [ %skb.5.i, %do.end86.i.for.body49.i_crit_edge ], [ %skb.0.lcssa.i, %do.end44.i.for.body49.i_crit_edge ]
  %lock.i = getelementptr inbounds %struct.ip_mc_list, ptr %pmc.1188.i, i32 0, i32 11
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #12
  %sfcount.i = getelementptr inbounds %struct.ip_mc_list, ptr %pmc.1188.i, i32 0, i32 5
  %51 = ptrtoint ptr %sfcount.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %sfcount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool50.not.i = icmp eq i32 %52, 0
  %..i = select i1 %tobool50.not.i, i32 5, i32 6
  %.147.i = select i1 %tobool50.not.i, i32 6, i32 5
  %call54.i = tail call fastcc ptr @add_grec(ptr noundef %skb.4187.i, ptr noundef nonnull %pmc.1188.i, i32 noundef %..i, i32 noundef 0, i32 noundef 0) #12
  %call55.i = tail call fastcc ptr @add_grec(ptr noundef %call54.i, ptr noundef nonnull %pmc.1188.i, i32 noundef %.147.i, i32 noundef 0, i32 noundef 1) #12
  %crcount56.i = getelementptr inbounds %struct.ip_mc_list, ptr %pmc.1188.i, i32 0, i32 17
  %53 = ptrtoint ptr %crcount56.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %crcount56.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool57.not.i = icmp eq i8 %54, 0
  br i1 %tobool57.not.i, label %for.body49.i.if.end68.i_crit_edge, label %if.then58.i

for.body49.i.if.end68.i_crit_edge:                ; preds = %for.body49.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end68.i

if.then58.i:                                      ; preds = %for.body49.i
  call void @__sanitizer_cov_trace_pc() #14
  %sfmode59.i = getelementptr inbounds %struct.ip_mc_list, ptr %pmc.1188.i, i32 0, i32 2
  %55 = ptrtoint ptr %sfmode59.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %sfmode59.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp60.i = icmp eq i32 %56, 0
  %.148.i = select i1 %cmp60.i, i32 4, i32 3
  %call65.i = tail call fastcc ptr @add_grec(ptr noundef %call55.i, ptr noundef nonnull %pmc.1188.i, i32 noundef %.148.i, i32 noundef 0, i32 noundef 0) #12
  %57 = ptrtoint ptr %crcount56.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %crcount56.i, align 1
  %dec67.i = add i8 %58, -1
  store i8 %dec67.i, ptr %crcount56.i, align 1
  br label %if.end68.i

if.end68.i:                                       ; preds = %if.then58.i, %for.body49.i.if.end68.i_crit_edge
  %skb.5.i = phi ptr [ %call65.i, %if.then58.i ], [ %call55.i, %for.body49.i.if.end68.i_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #12
  %59 = getelementptr inbounds %struct.ip_mc_list, ptr %pmc.1188.i, i32 0, i32 6
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile ptr, ptr %59, align 4
  %call76.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76.i)
  %tobool77.not.i = icmp eq i32 %call76.i, 0
  br i1 %tobool77.not.i, label %land.lhs.true78.i, label %if.end68.i.do.end86.i_crit_edge

if.end68.i.do.end86.i_crit_edge:                  ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end86.i

land.lhs.true78.i:                                ; preds = %if.end68.i
  %call79.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79.i)
  %tobool80.not.i = icmp eq i32 %call79.i, 0
  br i1 %tobool80.not.i, label %land.lhs.true78.i.do.end86.i_crit_edge, label %land.lhs.true81.i

land.lhs.true78.i.do.end86.i_crit_edge:           ; preds = %land.lhs.true78.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end86.i

land.lhs.true81.i:                                ; preds = %land.lhs.true78.i
  %.b144145.i = load i1, ptr @igmpv3_send_cr.__warned.41, align 1
  br i1 %.b144145.i, label %land.lhs.true81.i.do.end86.i_crit_edge, label %if.then83.i

land.lhs.true81.i.do.end86.i_crit_edge:           ; preds = %land.lhs.true81.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end86.i

if.then83.i:                                      ; preds = %land.lhs.true81.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @igmpv3_send_cr.__warned.41, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 692, ptr noundef nonnull @.str.20) #12
  br label %do.end86.i

do.end86.i:                                       ; preds = %if.then83.i, %land.lhs.true81.i.do.end86.i_crit_edge, %land.lhs.true78.i.do.end86.i_crit_edge, %if.end68.i.do.end86.i_crit_edge
  %cmp47.not.i = icmp eq ptr %61, null
  br i1 %cmp47.not.i, label %do.end86.i.for.end88.i_crit_edge, label %do.end86.i.for.body49.i_crit_edge

do.end86.i.for.body49.i_crit_edge:                ; preds = %do.end86.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body49.i

do.end86.i.for.end88.i_crit_edge:                 ; preds = %do.end86.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end88.i

for.end88.i:                                      ; preds = %do.end86.i.for.end88.i_crit_edge, %do.end44.i.for.end88.i_crit_edge
  %skb.4.lcssa.i = phi ptr [ %skb.0.lcssa.i, %do.end44.i.for.end88.i_crit_edge ], [ %skb.5.i, %do.end86.i.for.end88.i_crit_edge ]
  %call.i165.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i165.i, label %for.end88.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i168.i

for.end88.i.rcu_read_unlock.exit.i_crit_edge:     ; preds = %for.end88.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i

land.lhs.true.i168.i:                             ; preds = %for.end88.i
  %call1.i166.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i166.i)
  %tobool.not.i167.i = icmp eq i32 %call1.i166.i, 0
  br i1 %tobool.not.i167.i, label %land.lhs.true.i168.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i170.i

land.lhs.true.i168.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i168.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i170.i:                            ; preds = %land.lhs.true.i168.i
  %.b4.i169.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i169.i, label %land.lhs.true2.i170.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i171.i

land.lhs.true2.i170.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i170.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i

if.then.i171.i:                                   ; preds = %land.lhs.true2.i170.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.49, i32 noundef 724, ptr noundef nonnull @.str.51) #12
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i171.i, %land.lhs.true2.i170.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i168.i.rcu_read_unlock.exit.i_crit_edge, %for.end88.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !251
  %62 = tail call i32 @llvm.read_register.i32(metadata !234) #12
  %and.i.i.i.i.i172.i = and i32 %62, -16384
  %63 = inttoptr i32 %and.i.i.i.i.i172.i to ptr
  %preempt_count.i.i.i.i173.i = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %preempt_count.i.i.i.i173.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %preempt_count.i.i.i.i173.i, align 4
  %sub.i.i.i.i = add i32 %65, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i173.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %tobool89.not.i = icmp eq ptr %skb.4.lcssa.i, null
  br i1 %tobool89.not.i, label %rcu_read_unlock.exit.i.igmpv3_send_cr.exit_crit_edge, label %if.end91.i

rcu_read_unlock.exit.i.igmpv3_send_cr.exit_crit_edge: ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %igmpv3_send_cr.exit

if.end91.i:                                       ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %call92.i = tail call fastcc i32 @igmpv3_sendpack(ptr noundef nonnull %skb.4.lcssa.i) #12
  br label %igmpv3_send_cr.exit

igmpv3_send_cr.exit:                              ; preds = %if.end91.i, %rcu_read_unlock.exit.i.igmpv3_send_cr.exit_crit_edge
  %mr_ifc_count2 = getelementptr i8, ptr %t, i32 -52
  br label %restart

restart:                                          ; preds = %__cmpxchg.exit.restart_crit_edge, %igmpv3_send_cr.exit
  %66 = ptrtoint ptr %mr_ifc_count2 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %mr_ifc_count2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool.not = icmp eq i32 %67, 0
  br i1 %tobool.not, label %restart.if.end24_crit_edge, label %if.then

restart.if.end24_crit_edge:                       ; preds = %restart
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

if.then:                                          ; preds = %restart
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mr_ifc_count2, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !257
  %sub = add i32 %67, -1
  tail call void @llvm.prefetch.p0(ptr %mr_ifc_count2, i32 1, i32 3, i32 1) #12
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.then
  %68 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %mr_ifc_count2, i32 %67, i32 %sub) #12, !srcloc !258
  %asmresult.i = extractvalue { i32, i32 } %68, 0
  %tobool.not.i35 = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i35, label %__cmpxchg.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

__cmpxchg.exit:                                   ; preds = %do.body.i
  %asmresult1.i = extractvalue { i32, i32 } %68, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !259
  %cmp.not = icmp eq i32 %asmresult1.i, %67
  br i1 %cmp.not, label %if.end, label %__cmpxchg.exit.restart_crit_edge

__cmpxchg.exit.restart_crit_edge:                 ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %restart

if.end:                                           ; preds = %__cmpxchg.exit
  %69 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %add.ptr, align 4
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %70, i32 0, i32 127
  %71 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %nd_net.i.i, align 4
  %devconf_all.i = getelementptr inbounds %struct.net, ptr %72, i32 0, i32 35, i32 6
  %73 = ptrtoint ptr %devconf_all.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %devconf_all.i, align 4
  %arrayidx.i = getelementptr %struct.ipv4_devconf, ptr %74, i32 0, i32 1, i32 16
  %75 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %76)
  %cmp.i36 = icmp eq i32 %76, 1
  br i1 %cmp.i36, label %if.end.if.else.i.i_crit_edge, label %lor.lhs.false.i

if.end.if.else.i.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i.i

lor.lhs.false.i:                                  ; preds = %if.end
  %arrayidx.i.i = getelementptr i8, ptr %t, i32 120
  %77 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %78)
  %cmp2.i = icmp eq i32 %78, 1
  br i1 %cmp2.i, label %lor.lhs.false.i.if.else.i.i_crit_edge, label %lor.lhs.false3.i

lor.lhs.false.i.if.else.i.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i.i

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i
  %mr_v1_seen.i = getelementptr i8, ptr %t, i32 -76
  %79 = ptrtoint ptr %mr_v1_seen.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %mr_v1_seen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool.not.i37 = icmp eq i32 %80, 0
  br i1 %tobool.not.i37, label %lor.lhs.false6.i, label %land.lhs.true.i39

land.lhs.true.i39:                                ; preds = %lor.lhs.false3.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %81 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %81, %80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp5.i38 = icmp slt i32 %sub.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %76)
  %cmp13.i = icmp eq i32 %76, 2
  %or.cond.i = select i1 %cmp5.i38, i1 true, i1 %cmp13.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %78)
  %cmp16.i = icmp eq i32 %78, 2
  %or.cond43.i = select i1 %or.cond.i, i1 true, i1 %cmp16.i
  br i1 %or.cond43.i, label %land.lhs.true.i39.if.else.i.i_crit_edge, label %land.lhs.true.i39.lor.lhs.false17.i_crit_edge

land.lhs.true.i39.lor.lhs.false17.i_crit_edge:    ; preds = %land.lhs.true.i39
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false17.i

land.lhs.true.i39.if.else.i.i_crit_edge:          ; preds = %land.lhs.true.i39
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i.i

lor.lhs.false6.i:                                 ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %76)
  %cmp13.old.i = icmp eq i32 %76, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %78)
  %cmp16.old.i = icmp eq i32 %78, 2
  %or.cond44.i = select i1 %cmp13.old.i, i1 true, i1 %cmp16.old.i
  br i1 %or.cond44.i, label %lor.lhs.false6.i.if.else.i.i_crit_edge, label %lor.lhs.false6.i.lor.lhs.false17.i_crit_edge

lor.lhs.false6.i.lor.lhs.false17.i_crit_edge:     ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false17.i

lor.lhs.false6.i.if.else.i.i_crit_edge:           ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i.i

lor.lhs.false17.i:                                ; preds = %lor.lhs.false6.i.lor.lhs.false17.i_crit_edge, %land.lhs.true.i39.lor.lhs.false17.i_crit_edge
  %mr_v2_seen.i = getelementptr i8, ptr %t, i32 -72
  %82 = ptrtoint ptr %mr_v2_seen.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %mr_v2_seen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool18.not.i = icmp eq i32 %83, 0
  br i1 %tobool18.not.i, label %lor.lhs.false17.i.if.else.i_crit_edge, label %land.lhs.true19.i

lor.lhs.false17.i.if.else.i_crit_edge:            ; preds = %lor.lhs.false17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

land.lhs.true19.i:                                ; preds = %lor.lhs.false17.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %84 = load volatile i32, ptr @jiffies, align 128
  %sub21.i = sub i32 %84, %83
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub21.i)
  %cmp22.i = icmp slt i32 %sub21.i, 0
  br i1 %cmp22.i, label %land.lhs.true19.i.if.else.i.i_crit_edge, label %land.lhs.true19.i.if.else.i_crit_edge

land.lhs.true19.i.if.else.i_crit_edge:            ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

land.lhs.true19.i.if.else.i.i_crit_edge:          ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i.i

if.else.i:                                        ; preds = %land.lhs.true19.i.if.else.i_crit_edge, %lor.lhs.false17.i.if.else.i_crit_edge
  br label %if.else.i.i

if.else.i.i:                                      ; preds = %if.else.i, %land.lhs.true19.i.if.else.i.i_crit_edge, %lor.lhs.false6.i.if.else.i.i_crit_edge, %land.lhs.true.i39.if.else.i.i_crit_edge, %lor.lhs.false.i.if.else.i.i_crit_edge, %if.end.if.else.i.i_crit_edge
  %.sink = phi i32 [ 164, %if.else.i ], [ 160, %land.lhs.true19.i.if.else.i.i_crit_edge ], [ 160, %lor.lhs.false6.i.if.else.i.i_crit_edge ], [ 160, %land.lhs.true.i39.if.else.i.i_crit_edge ], [ 160, %lor.lhs.false.i.if.else.i.i_crit_edge ], [ 160, %if.end.if.else.i.i_crit_edge ]
  %arrayidx.i42.i = getelementptr i8, ptr %t, i32 %.sink
  %85 = ptrtoint ptr %arrayidx.i42.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %interval_ms.0.i = load i32, ptr %arrayidx.i42.i, align 4
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %interval_ms.0.i) #12
  %86 = tail call i32 @llvm.smax.i32(i32 %call2.i.i, i32 1) #12
  %call.i44 = tail call i32 @prandom_u32() #12
  %rem.i = urem i32 %call.i44, %86
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %87 = load volatile i32, ptr @jiffies, align 128
  %add.i = add nuw i32 %rem.i, 2
  %add1.i = add i32 %add.i, %87
  %call2.i = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add1.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i45 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i45, label %if.then.i46, label %if.else.i.i.if.end24_crit_edge

if.else.i.i.if.end24_crit_edge:                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

if.then.i46:                                      ; preds = %if.else.i.i
  %refcnt.i = getelementptr i8, ptr %t, i32 -148
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #12
  %88 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #12, !srcloc !249
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %88, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i46.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !244

if.then.i46.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.then.i46
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i46
  %add.i.i.i.i47 = add i32 %asmresult.i.i.i.i.i.i, 1
  %89 = or i32 %add.i.i.i.i47, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %89)
  %.not.i.i.i.i = icmp sgt i32 %89, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end24_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !250

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end24_crit_edge:               ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i46.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i46.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef %.sink.i.i.i.i) #12
  br label %if.end24

if.end24:                                         ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end24_crit_edge, %if.else.i.i.if.end24_crit_edge, %restart.if.end24_crit_edge
  %refcnt.i49 = getelementptr i8, ptr %t, i32 -148
  %call.i.i.i.i.i.i50 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i49, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !246
  tail call void @llvm.prefetch.p0(ptr %refcnt.i49, i32 1, i32 3, i32 1) #12
  %90 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i49, ptr %refcnt.i49, i32 1, ptr elementtype(i32) %refcnt.i49) #12, !srcloc !247
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %90, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i52, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i51 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i51, label %if.end5.i.i.i.i.in_dev_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !250

if.end5.i.i.i.i.in_dev_put.exit_crit_edge:        ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %in_dev_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i49, i32 noundef 3) #12
  br label %in_dev_put.exit

if.then.i52:                                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !256
  tail call void @in_dev_finish_destroy(ptr noundef %add.ptr) #12
  br label %in_dev_put.exit

in_dev_put.exit:                                  ; preds = %if.then.i52, %if.then10.i.i.i.i, %if.end5.i.i.i.i.in_dev_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ip_mc_up(ptr noundef %in_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_is_locked() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b72 = load i1, ptr @ip_mc_up.__already_done, align 1
  br i1 %.b72, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !250

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ip_mc_up.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1779, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 1779) #12
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %0 = ptrtoint ptr %in_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %in_dev, align 4
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 127
  %2 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nd_net.i.i, align 4
  %mr_qi.i = getelementptr inbounds %struct.in_device, ptr %in_dev, i32 0, i32 13
  %4 = ptrtoint ptr %mr_qi.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 12500, ptr %mr_qi.i, align 4
  %mr_qri.i = getelementptr inbounds %struct.in_device, ptr %in_dev, i32 0, i32 14
  %5 = ptrtoint ptr %mr_qri.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1000, ptr %mr_qri.i, align 4
  %sysctl_igmp_qrv.i = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 35, i32 122
  %6 = ptrtoint ptr %sysctl_igmp_qrv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sysctl_igmp_qrv.i, align 4
  %conv.i = trunc i32 %7 to i8
  %mr_qrv.i = getelementptr inbounds %struct.in_device, ptr %in_dev, i32 0, i32 15
  %8 = ptrtoint ptr %mr_qrv.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv.i, ptr %mr_qrv.i, align 4
  tail call fastcc void @____ip_mc_inc_group(ptr noundef %in_dev, i32 noundef -536870911, i32 noundef 0, i32 noundef 3264) #12
  %call38 = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call38, label %if.end29.do.end46_crit_edge, label %land.lhs.true

if.end29.do.end46_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end46

land.lhs.true:                                    ; preds = %if.end29
  %call39 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %land.lhs.true.do.end46_crit_edge, label %land.lhs.true41

land.lhs.true.do.end46_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end46

land.lhs.true41:                                  ; preds = %land.lhs.true
  %.b6871 = load i1, ptr @ip_mc_up.__warned, align 1
  br i1 %.b6871, label %land.lhs.true41.do.end46_crit_edge, label %if.then43

land.lhs.true41.do.end46_crit_edge:               ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end46

if.then43:                                        ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ip_mc_up.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1784, ptr noundef nonnull @.str.2) #12
  br label %do.end46

do.end46:                                         ; preds = %if.then43, %land.lhs.true41.do.end46_crit_edge, %land.lhs.true.do.end46_crit_edge, %if.end29.do.end46_crit_edge
  %mc_list = getelementptr inbounds %struct.in_device, ptr %in_dev, i32 0, i32 5
  %9 = ptrtoint ptr %mc_list to i32
  call void @__asan_load4_noabort(i32 %9)
  %pmc.073 = load ptr, ptr %mc_list, align 4
  %cmp.not74 = icmp eq ptr %pmc.073, null
  br i1 %cmp.not74, label %do.end46.for.end_crit_edge, label %do.end46.for.body_crit_edge

do.end46.for.body_crit_edge:                      ; preds = %do.end46
  br label %for.body

do.end46.for.end_crit_edge:                       ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %do.end58.for.body_crit_edge, %do.end46.for.body_crit_edge
  %pmc.075 = phi ptr [ %pmc.0, %do.end58.for.body_crit_edge ], [ %pmc.073, %do.end46.for.body_crit_edge ]
  tail call fastcc void @igmpv3_del_delrec(ptr noundef %in_dev, ptr noundef nonnull %pmc.075)
  tail call fastcc void @igmp_group_added(ptr noundef nonnull %pmc.075)
  %call49 = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call49, label %for.body.do.end58_crit_edge, label %land.lhs.true50

for.body.do.end58_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end58

land.lhs.true50:                                  ; preds = %for.body
  %call51 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %land.lhs.true50.do.end58_crit_edge, label %land.lhs.true53

land.lhs.true50.do.end58_crit_edge:               ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end58

land.lhs.true53:                                  ; preds = %land.lhs.true50
  %.b6970 = load i1, ptr @ip_mc_up.__warned.11, align 1
  br i1 %.b6970, label %land.lhs.true53.do.end58_crit_edge, label %if.then55

land.lhs.true53.do.end58_crit_edge:               ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end58

if.then55:                                        ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ip_mc_up.__warned.11, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1784, ptr noundef nonnull @.str.2) #12
  br label %do.end58

do.end58:                                         ; preds = %if.then55, %land.lhs.true53.do.end58_crit_edge, %land.lhs.true50.do.end58_crit_edge, %for.body.do.end58_crit_edge
  %10 = getelementptr inbounds %struct.ip_mc_list, ptr %pmc.075, i32 0, i32 6
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %pmc.0 = load ptr, ptr %10, align 4
  %cmp.not = icmp eq ptr %pmc.0, null
  br i1 %cmp.not, label %do.end58.for.end_crit_edge, label %do.end58.for.body_crit_edge

do.end58.for.body_crit_edge:                      ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

do.end58.for.end_crit_edge:                       ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %do.end58.for.end_crit_edge, %do.end46.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ip_mc_destroy_dev(ptr noundef %in_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_is_locked() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b59 = load i1, ptr @ip_mc_destroy_dev.__already_done, align 1
  br i1 %.b59, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !250

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ip_mc_destroy_dev.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1800, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 1800) #12
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  tail call void @ip_mc_down(ptr noundef %in_dev)
  tail call fastcc void @igmpv3_clear_delrec(ptr noundef %in_dev)
  %mc_list = getelementptr inbounds %struct.in_device, ptr %in_dev, i32 0, i32 5
  %mc_count = getelementptr inbounds %struct.in_device, ptr %in_dev, i32 0, i32 7
  br label %while.cond

while.cond:                                       ; preds = %ip_mc_clear_src.exit, %if.end29
  %call38 = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call38, label %while.cond.do.end46_crit_edge, label %land.lhs.true

while.cond.do.end46_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end46

land.lhs.true:                                    ; preds = %while.cond
  %call39 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %land.lhs.true.do.end46_crit_edge, label %land.lhs.true41

land.lhs.true.do.end46_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end46

land.lhs.true41:                                  ; preds = %land.lhs.true
  %.b5758 = load i1, ptr @ip_mc_destroy_dev.__warned, align 1
  br i1 %.b5758, label %land.lhs.true41.do.end46_crit_edge, label %if.then43

land.lhs.true41.do.end46_crit_edge:               ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end46

if.then43:                                        ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ip_mc_destroy_dev.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1808, ptr noundef nonnull @.str.2) #12
  br label %do.end46

do.end46:                                         ; preds = %if.then43, %land.lhs.true41.do.end46_crit_edge, %land.lhs.true.do.end46_crit_edge, %while.cond.do.end46_crit_edge
  %0 = ptrtoint ptr %mc_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mc_list, align 4
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %while.end, label %while.body

while.body:                                       ; preds = %do.end46
  %2 = getelementptr inbounds %struct.ip_mc_list, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %5 = ptrtoint ptr %mc_list to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %mc_list, align 4
  %6 = ptrtoint ptr %mc_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mc_count, align 4
  %dec = add i32 %7, -1
  store i32 %dec, ptr %mc_count, align 4
  %lock.i = getelementptr inbounds %struct.ip_mc_list, ptr %1, i32 0, i32 11
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #12
  %tomb1.i = getelementptr inbounds %struct.ip_mc_list, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %tomb1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tomb1.i, align 4
  store ptr null, ptr %tomb1.i, align 4
  %sources3.i = getelementptr inbounds %struct.ip_mc_list, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %sources3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sources3.i, align 4
  store ptr null, ptr %sources3.i, align 4
  %sfmode.i = getelementptr inbounds %struct.ip_mc_list, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %sfmode.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %sfmode.i, align 4
  %sfcount.i = getelementptr inbounds %struct.ip_mc_list, ptr %1, i32 0, i32 5
  %arrayidx.i = getelementptr %struct.ip_mc_list, ptr %1, i32 0, i32 5, i32 1
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %arrayidx.i, align 4
  %14 = ptrtoint ptr %sfcount.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %sfcount.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #12
  %tobool.not3.i.i = icmp eq ptr %9, null
  br i1 %tobool.not3.i.i, label %while.body.ip_sf_list_clear_all.exit.i_crit_edge, label %while.body.while.body.i.i_crit_edge

while.body.while.body.i.i_crit_edge:              ; preds = %while.body
  br label %while.body.i.i

while.body.ip_sf_list_clear_all.exit.i_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip_sf_list_clear_all.exit.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.while.body.i.i_crit_edge
  %psf.addr.04.i.i = phi ptr [ %16, %while.body.i.i.while.body.i.i_crit_edge ], [ %9, %while.body.while.body.i.i_crit_edge ]
  %15 = ptrtoint ptr %psf.addr.04.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %psf.addr.04.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %psf.addr.04.i.i) #12
  %tobool.not.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i, label %while.body.i.i.ip_sf_list_clear_all.exit.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i

while.body.i.i.ip_sf_list_clear_all.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip_sf_list_clear_all.exit.i

ip_sf_list_clear_all.exit.i:                      ; preds = %while.body.i.i.ip_sf_list_clear_all.exit.i_crit_edge, %while.body.ip_sf_list_clear_all.exit.i_crit_edge
  %tobool.not3.i16.i = icmp eq ptr %11, null
  br i1 %tobool.not3.i16.i, label %ip_sf_list_clear_all.exit.i.ip_mc_clear_src.exit_crit_edge, label %ip_sf_list_clear_all.exit.i.while.body.i19.i_crit_edge

ip_sf_list_clear_all.exit.i.while.body.i19.i_crit_edge: ; preds = %ip_sf_list_clear_all.exit.i
  br label %while.body.i19.i

ip_sf_list_clear_all.exit.i.ip_mc_clear_src.exit_crit_edge: ; preds = %ip_sf_list_clear_all.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip_mc_clear_src.exit

while.body.i19.i:                                 ; preds = %while.body.i19.i.while.body.i19.i_crit_edge, %ip_sf_list_clear_all.exit.i.while.body.i19.i_crit_edge
  %psf.addr.04.i17.i = phi ptr [ %18, %while.body.i19.i.while.body.i19.i_crit_edge ], [ %11, %ip_sf_list_clear_all.exit.i.while.body.i19.i_crit_edge ]
  %17 = ptrtoint ptr %psf.addr.04.i17.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %psf.addr.04.i17.i, align 4
  tail call void @kfree(ptr noundef nonnull %psf.addr.04.i17.i) #12
  %tobool.not.i18.i = icmp eq ptr %18, null
  br i1 %tobool.not.i18.i, label %while.body.i19.i.ip_mc_clear_src.exit_crit_edge, label %while.body.i19.i.while.body.i19.i_crit_edge

while.body.i19.i.while.body.i19.i_crit_edge:      ; preds = %while.body.i19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i19.i

while.body.i19.i.ip_mc_clear_src.exit_crit_edge:  ; preds = %while.body.i19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip_mc_clear_src.exit

ip_mc_clear_src.exit:                             ; preds = %while.body.i19.i.ip_mc_clear_src.exit_crit_edge, %ip_sf_list_clear_all.exit.i.ip_mc_clear_src.exit_crit_edge
  tail call fastcc void @ip_ma_put(ptr noundef nonnull %1)
  br label %while.cond

while.end:                                        ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @igmpv3_clear_delrec(ptr noundef %in_dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mc_tomb_lock = getelementptr inbounds %struct.in_device, ptr %in_dev, i32 0, i32 8
  tail call void @_raw_spin_lock_bh(ptr noundef %mc_tomb_lock) #12
  %mc_tomb = getelementptr inbounds %struct.in_device, ptr %in_dev, i32 0, i32 9
  %0 = ptrtoint ptr %mc_tomb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mc_tomb, align 4
  store ptr null, ptr %mc_tomb, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %mc_tomb_lock) #12
  %tobool.not68 = icmp eq ptr %1, null
  br i1 %tobool.not68, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %kfree_pmc.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %pmc.069 = phi ptr [ %4, %kfree_pmc.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = getelementptr inbounds %struct.ip_mc_list, ptr %pmc.069, i32 0, i32 6
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %lock.i = getelementptr inbounds %struct.ip_mc_list, ptr %pmc.069, i32 0, i32 11
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #12
  %tomb1.i = getelementptr inbounds %struct.ip_mc_list, ptr %pmc.069, i32 0, i32 4
  %5 = ptrtoint ptr %tomb1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tomb1.i, align 4
  store ptr null, ptr %tomb1.i, align 4
  %sources3.i = getelementptr inbounds %struct.ip_mc_list, ptr %pmc.069, i32 0, i32 3
  %7 = ptrtoint ptr %sources3.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sources3.i, align 4
  store ptr null, ptr %sources3.i, align 4
  %sfmode.i = getelementptr inbounds %struct.ip_mc_list, ptr %pmc.069, i32 0, i32 2
  %9 = ptrtoint ptr %sfmode.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %sfmode.i, align 4
  %sfcount.i = getelementptr inbounds %struct.ip_mc_list, ptr %pmc.069, i32 0, i32 5
  %arrayidx.i = getelementptr %struct.ip_mc_list, ptr %pmc.069, i32 0, i32 5, i32 1
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %arrayidx.i, align 4
  %11 = ptrtoint ptr %sfcount.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %sfcount.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #12
  %tobool.not3.i.i = icmp eq ptr %6, null
  br i1 %tobool.not3.i.i, label %for.body.ip_sf_list_clear_all.exit.i_crit_edge, label %for.body.while.body.i.i_crit_edge

for.body.while.body.i.i_crit_edge:                ; preds = %for.body
  br label %while.body.i.i

for.body.ip_sf_list_clear_all.exit.i_crit_edge:   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip_sf_list_clear_all.exit.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %for.body.while.body.i.i_crit_edge
  %psf.addr.04.i.i = phi ptr [ %13, %while.body.i.i.while.body.i.i_crit_edge ], [ %6, %for.body.while.body.i.i_crit_edge ]
  %12 = ptrtoint ptr %psf.addr.04.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %psf.addr.04.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %psf.addr.04.i.i) #12
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %while.body.i.i.ip_sf_list_clear_all.exit.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i

while.body.i.i.ip_sf_list_clear_all.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip_sf_list_clear_all.exit.i

ip_sf_list_clear_all.exit.i:                      ; preds = %while.body.i.i.ip_sf_list_clear_all.exit.i_crit_edge, %for.body.ip_sf_list_clear_all.exit.i_crit_edge
  %tobool.not3.i16.i = icmp eq ptr %8, null
  br i1 %tobool.not3.i16.i, label %ip_sf_list_clear_all.exit.i.ip_mc_clear_src.exit_crit_edge, label %ip_sf_list_clear_all.exit.i.while.body.i19.i_crit_edge

ip_sf_list_clear_all.exit.i.while.body.i19.i_crit_edge: ; preds = %ip_sf_list_clear_all.exit.i
  br label %while.body.i19.i

ip_sf_list_clear_all.exit.i.ip_mc_clear_src.exit_crit_edge: ; preds = %ip_sf_list_clear_all.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip_mc_clear_src.exit

while.body.i19.i:                                 ; preds = %while.body.i19.i.while.body.i19.i_crit_edge, %ip_sf_list_clear_all.exit.i.while.body.i19.i_crit_edge
  %psf.addr.04.i17.i = phi ptr [ %15, %while.body.i19.i.while.body.i19.i_crit_edge ], [ %8, %ip_sf_list_clear_all.exit.i.while.body.i19.i_crit_edge ]
  %14 = ptrtoint ptr %psf.addr.04.i17.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %psf.addr.04.i17.i, align 4
  tail call void @kfree(ptr noundef nonnull %psf.addr.04.i17.i) #12
  %tobool.not.i18.i = icmp eq ptr %15, null
  br i1 %tobool.not.i18.i, label %while.body.i19.i.ip_mc_clear_src.exit_crit_edge, label %while.body.i19.i.while.body.i19.i_crit_edge

while.body.i19.i.while.body.i19.i_crit_edge:      ; preds = %while.body.i19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i19.i

while.body.i19.i.ip_mc_clear_src.exit_crit_edge:  ; preds = %while.body.i19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip_mc_clear_src.exit

ip_mc_clear_src.exit:                             ; preds = %while.body.i19.i.ip_mc_clear_src.exit_crit_edge, %ip_sf_list_clear_all.exit.i.ip_mc_clear_src.exit_crit_edge
  %16 = ptrtoint ptr %pmc.069 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pmc.069, align 4
  %refcnt.i = getelementptr inbounds %struct.in_device, ptr %17, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !246
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #12
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #12, !srcloc !247
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i52, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %ip_mc_clear_src.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.in_dev_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !250

if.end5.i.i.i.i.in_dev_put.exit_crit_edge:        ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %in_dev_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #12
  br label %in_dev_put.exit

if.then.i52:                                      ; preds = %ip_mc_clear_src.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !256
  tail call void @in_dev_finish_destroy(ptr noundef %17) #12
  br label %in_dev_put.exit

in_dev_put.exit:                                  ; preds = %if.then.i52, %if.then10.i.i.i.i, %if.end5.i.i.i.i.in_dev_put.exit_crit_edge
  %19 = ptrtoint ptr %sources3.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sources3.i, align 4
  %tobool.not3.i.i53 = icmp eq ptr %20, null
  br i1 %tobool.not3.i.i53, label %in_dev_put.exit.ip_sf_list_clear_all.exit.i57_crit_edge, label %in_dev_put.exit.while.body.i.i56_crit_edge

in_dev_put.exit.while.body.i.i56_crit_edge:       ; preds = %in_dev_put.exit
  br label %while.body.i.i56

in_dev_put.exit.ip_sf_list_clear_all.exit.i57_crit_edge: ; preds = %in_dev_put.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip_sf_list_clear_all.exit.i57

while.body.i.i56:                                 ; preds = %while.body.i.i56.while.body.i.i56_crit_edge, %in_dev_put.exit.while.body.i.i56_crit_edge
  %psf.addr.04.i.i54 = phi ptr [ %22, %while.body.i.i56.while.body.i.i56_crit_edge ], [ %20, %in_dev_put.exit.while.body.i.i56_crit_edge ]
  %21 = ptrtoint ptr %psf.addr.04.i.i54 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %psf.addr.04.i.i54, align 4
  tail call void @kfree(ptr noundef nonnull %psf.addr.04.i.i54) #12
  %tobool.not.i.i55 = icmp eq ptr %22, null
  br i1 %tobool.not.i.i55, label %while.body.i.i56.ip_sf_list_clear_all.exit.i57_crit_edge, label %while.body.i.i56.while.body.i.i56_crit_edge

while.body.i.i56.while.body.i.i56_crit_edge:      ; preds = %while.body.i.i56
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i56

while.body.i.i56.ip_sf_list_clear_all.exit.i57_crit_edge: ; preds = %while.body.i.i56
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip_sf_list_clear_all.exit.i57

ip_sf_list_clear_all.exit.i57:                    ; preds = %while.body.i.i56.ip_sf_list_clear_all.exit.i57_crit_edge, %in_dev_put.exit.ip_sf_list_clear_all.exit.i57_crit_edge
  %23 = ptrtoint ptr %tomb1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tomb1.i, align 4
  %tobool.not3.i3.i = icmp eq ptr %24, null
  br i1 %tobool.not3.i3.i, label %ip_sf_list_clear_all.exit.i57.kfree_pmc.exit_crit_edge, label %ip_sf_list_clear_all.exit.i57.while.body.i6.i_crit_edge

ip_sf_list_clear_all.exit.i57.while.body.i6.i_crit_edge: ; preds = %ip_sf_list_clear_all.exit.i57
  br label %while.body.i6.i

ip_sf_list_clear_all.exit.i57.kfree_pmc.exit_crit_edge: ; preds = %ip_sf_list_clear_all.exit.i57
  call void @__sanitizer_cov_trace_pc() #14
  br label %kfree_pmc.exit

while.body.i6.i:                                  ; preds = %while.body.i6.i.while.body.i6.i_crit_edge, %ip_sf_list_clear_all.exit.i57.while.body.i6.i_crit_edge
  %psf.addr.04.i4.i = phi ptr [ %26, %while.body.i6.i.while.body.i6.i_crit_edge ], [ %24, %ip_sf_list_clear_all.exit.i57.while.body.i6.i_crit_edge ]
  %25 = ptrtoint ptr %psf.addr.04.i4.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %psf.addr.04.i4.i, align 4
  tail call void @kfree(ptr noundef nonnull %psf.addr.04.i4.i) #12
  %tobool.not.i5.i = icmp eq ptr %26, null
  br i1 %tobool.not.i5.i, label %while.body.i6.i.kfree_pmc.exit_crit_edge, label %while.body.i6.i.while.body.i6.i_crit_edge

while.body.i6.i.while.body.i6.i_crit_edge:        ; preds = %while.body.i6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i6.i

while.body.i6.i.kfree_pmc.exit_crit_edge:         ; preds = %while.body.i6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kfree_pmc.exit

kfree_pmc.exit:                                   ; preds = %while.body.i6.i.kfree_pmc.exit_crit_edge, %ip_sf_list_clear_all.exit.i57.kfree_pmc.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %pmc.069) #12
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %kfree_pmc.exit.for.end_crit_edge, label %kfree_pmc.exit.for.body_crit_edge

kfree_pmc.exit.for.body_crit_edge:                ; preds = %kfree_pmc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

kfree_pmc.exit.for.end_crit_edge:                 ; preds = %kfree_pmc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %kfree_pmc.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %27 = tail call i32 @llvm.read_register.i32(metadata !234) #12
  %and.i.i.i.i.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %30, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !248
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %for.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

for.end.rcu_read_lock.exit_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %for.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.49, i32 noundef 696, ptr noundef nonnull @.str.50) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %for.end.rcu_read_lock.exit_crit_edge
  %mc_list = getelementptr inbounds %struct.in_device, ptr %in_dev, i32 0, i32 5
  %31 = ptrtoint ptr %mc_list to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %mc_list, align 4
  %call = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end10_crit_edge

rcu_read_lock.exit.do.end10_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end10_crit_edge, label %land.lhs.true7

land.lhs.true.do.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b51 = load i1, ptr @igmpv3_clear_delrec.__warned, align 1
  br i1 %.b51, label %land.lhs.true7.do.end10_crit_edge, label %if.then

land.lhs.true7.do.end10_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

if.then:                                          ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @igmpv3_clear_delrec.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1270, ptr noundef nonnull @.str.20) #12
  br label %do.end10

do.end10:                                         ; preds = %if.then, %land.lhs.true7.do.end10_crit_edge, %land.lhs.true.do.end10_crit_edge, %rcu_read_lock.exit.do.end10_crit_edge
  %cmp.not70 = icmp eq ptr %32, null
  br i1 %cmp.not70, label %do.end10.for.end34_crit_edge, label %do.end10.for.body13_crit_edge

do.end10.for.body13_crit_edge:                    ; preds = %do.end10
  br label %for.body13

do.end10.for.end34_crit_edge:                     ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end34

for.body13:                                       ; preds = %do.end32.for.body13_crit_edge, %do.end10.for.body13_crit_edge
  %pmc.171 = phi ptr [ %39, %do.end32.for.body13_crit_edge ], [ %32, %do.end10.for.body13_crit_edge ]
  %lock = getelementptr inbounds %struct.ip_mc_list, ptr %pmc.171, i32 0, i32 11
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  %tomb = getelementptr inbounds %struct.ip_mc_list, ptr %pmc.171, i32 0, i32 4
  %33 = ptrtoint ptr %tomb to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tomb, align 4
  store ptr null, ptr %tomb, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  %tobool.not3.i = icmp eq ptr %34, null
  br i1 %tobool.not3.i, label %for.body13.ip_sf_list_clear_all.exit_crit_edge, label %for.body13.while.body.i_crit_edge

for.body13.while.body.i_crit_edge:                ; preds = %for.body13
  br label %while.body.i

for.body13.ip_sf_list_clear_all.exit_crit_edge:   ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip_sf_list_clear_all.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %for.body13.while.body.i_crit_edge
  %psf.addr.04.i = phi ptr [ %36, %while.body.i.while.body.i_crit_edge ], [ %34, %for.body13.while.body.i_crit_edge ]
  %35 = ptrtoint ptr %psf.addr.04.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %psf.addr.04.i, align 4
  tail call void @kfree(ptr noundef nonnull %psf.addr.04.i) #12
  %tobool.not.i58 = icmp eq ptr %36, null
  br i1 %tobool.not.i58, label %while.body.i.ip_sf_list_clear_all.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

while.body.i.ip_sf_list_clear_all.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip_sf_list_clear_all.exit

ip_sf_list_clear_all.exit:                        ; preds = %while.body.i.ip_sf_list_clear_all.exit_crit_edge, %for.body13.ip_sf_list_clear_all.exit_crit_edge
  %37 = getelementptr inbounds %struct.ip_mc_list, ptr %pmc.171, i32 0, i32 6
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %37, align 4
  %call22 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %land.lhs.true24, label %ip_sf_list_clear_all.exit.do.end32_crit_edge

ip_sf_list_clear_all.exit.do.end32_crit_edge:     ; preds = %ip_sf_list_clear_all.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end32

land.lhs.true24:                                  ; preds = %ip_sf_list_clear_all.exit
  %call25 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %land.lhs.true24.do.end32_crit_edge, label %land.lhs.true27

land.lhs.true24.do.end32_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end32

land.lhs.true27:                                  ; preds = %land.lhs.true24
  %.b4950 = load i1, ptr @igmpv3_clear_delrec.__warned.42, align 1
  br i1 %.b4950, label %land.lhs.true27.do.end32_crit_edge, label %if.then29

land.lhs.true27.do.end32_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end32

if.then29:                                        ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @igmpv3_clear_delrec.__warned.42, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1270, ptr noundef nonnull @.str.20) #12
  br label %do.end32

do.end32:                                         ; preds = %if.then29, %land.lhs.true27.do.end32_crit_edge, %land.lhs.true24.do.end32_crit_edge, %ip_sf_list_clear_all.exit.do.end32_crit_edge
  %cmp.not = icmp eq ptr %39, null
  br i1 %cmp.not, label %do.end32.for.end34_crit_edge, label %do.end32.for.body13_crit_edge

do.end32.for.body13_crit_edge:                    ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body13

do.end32.for.end34_crit_edge:                     ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end34

for.end34:                                        ; preds = %do.end32.for.end34_crit_edge, %do.end10.for.end34_crit_edge
  %call.i59 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i59, label %for.end34.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i62

for.end34.rcu_read_unlock.exit_crit_edge:         ; preds = %for.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i62:                                ; preds = %for.end34
  %call1.i60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i60)
  %tobool.not.i61 = icmp eq i32 %call1.i60, 0
  br i1 %tobool.not.i61, label %land.lhs.true.i62.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i64

land.lhs.true.i62.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i62
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i64:                               ; preds = %land.lhs.true.i62
  %.b4.i63 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i63, label %land.lhs.true2.i64.rcu_read_unlock.exit_crit_edge, label %if.then.i65

land.lhs.true2.i64.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i64
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i65:                                      ; preds = %land.lhs.true2.i64
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.49, i32 noundef 724, ptr noundef nonnull @.str.51) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i65, %land.lhs.true2.i64.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i62.rcu_read_unlock.exit_crit_edge, %for.end34.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !251
  %40 = tail call i32 @llvm.read_register.i32(metadata !234) #12
  %and.i.i.i.i.i66 = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i.i.i66 to ptr
  %preempt_count.i.i.i.i67 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %preempt_count.i.i.i.i67 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %preempt_count.i.i.i.i67, align 4
  %sub.i.i.i = add i32 %43, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i67, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip_mc_join_group(ptr noundef %sk, ptr nocapture noundef %imr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__ip_mc_join_group(ptr noundef %sk, ptr noundef %imr, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__ip_mc_join_group(ptr noundef %sk, ptr nocapture noundef %imr, i32 noundef %mode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %imr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %imr, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %2 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skc_net.i, align 4
  %call2 = tail call i32 @rtnl_is_locked() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end31_crit_edge

entry.if.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

land.rhs:                                         ; preds = %entry
  %.b162 = load i1, ptr @__ip_mc_join_group.__already_done, align 1
  br i1 %.b162, label %land.rhs.if.end31_crit_edge, label %if.then, !prof !250

land.rhs.if.end31_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__ip_mc_join_group.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2174, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 2174) #12
  br label %if.end31

if.end31:                                         ; preds = %if.then, %land.rhs.if.end31_crit_edge, %entry.if.end31_crit_edge
  %and.i = and i32 %1, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, -536870912
  br i1 %cmp.i, label %if.end41, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end41:                                         ; preds = %if.end31
  %call42 = tail call fastcc ptr @ip_mc_find_dev(ptr noundef %3, ptr noundef %imr)
  %tobool43.not = icmp eq ptr %call42, null
  br i1 %tobool43.not, label %if.end41.cleanup_crit_edge, label %if.end45

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end45:                                         ; preds = %if.end41
  %imr_ifindex = getelementptr inbounds %struct.ip_mreqn, ptr %imr, i32 0, i32 2
  %4 = ptrtoint ptr %imr_ifindex to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %imr_ifindex, align 4
  %call47 = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call47, label %if.end45.do.end55_crit_edge, label %land.lhs.true

if.end45.do.end55_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end55

land.lhs.true:                                    ; preds = %if.end45
  %call48 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %land.lhs.true.do.end55_crit_edge, label %land.lhs.true50

land.lhs.true.do.end55_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end55

land.lhs.true50:                                  ; preds = %land.lhs.true
  %.b158161 = load i1, ptr @__ip_mc_join_group.__warned, align 1
  br i1 %.b158161, label %land.lhs.true50.do.end55_crit_edge, label %if.then52

land.lhs.true50.do.end55_crit_edge:               ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end55

if.then52:                                        ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__ip_mc_join_group.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2188, ptr noundef nonnull @.str.2) #12
  br label %do.end55

do.end55:                                         ; preds = %if.then52, %land.lhs.true50.do.end55_crit_edge, %land.lhs.true.do.end55_crit_edge, %if.end45.do.end55_crit_edge
  %mc_list = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 18
  %6 = ptrtoint ptr %mc_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %i.0164 = load ptr, ptr %mc_list, align 4
  %cmp.not165 = icmp eq ptr %i.0164, null
  br i1 %cmp.not165, label %do.end55.for.end_crit_edge, label %do.end55.for.body_crit_edge

do.end55.for.body_crit_edge:                      ; preds = %do.end55
  br label %for.body

do.end55.for.end_crit_edge:                       ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %do.end76.for.body_crit_edge, %do.end55.for.body_crit_edge
  %i.0167 = phi ptr [ %i.0, %do.end76.for.body_crit_edge ], [ %i.0164, %do.end55.for.body_crit_edge ]
  %count.0166 = phi i32 [ %inc, %do.end76.for.body_crit_edge ], [ 0, %do.end55.for.body_crit_edge ]
  %multi = getelementptr inbounds %struct.ip_mc_socklist, ptr %i.0167, i32 0, i32 1
  %7 = ptrtoint ptr %multi to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %multi, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %1)
  %cmp59 = icmp eq i32 %8, %1
  br i1 %cmp59, label %land.lhs.true60, label %for.body.if.end65_crit_edge

for.body.if.end65_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65

land.lhs.true60:                                  ; preds = %for.body
  %imr_ifindex62 = getelementptr inbounds %struct.ip_mc_socklist, ptr %i.0167, i32 0, i32 1, i32 2
  %9 = ptrtoint ptr %imr_ifindex62 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %imr_ifindex62, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %5)
  %cmp63 = icmp eq i32 %10, %5
  br i1 %cmp63, label %land.lhs.true60.cleanup_crit_edge, label %land.lhs.true60.if.end65_crit_edge

land.lhs.true60.if.end65_crit_edge:               ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65

land.lhs.true60.cleanup_crit_edge:                ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end65:                                         ; preds = %land.lhs.true60.if.end65_crit_edge, %for.body.if.end65_crit_edge
  %inc = add i32 %count.0166, 1
  %call67 = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call67, label %if.end65.do.end76_crit_edge, label %land.lhs.true68

if.end65.do.end76_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end76

land.lhs.true68:                                  ; preds = %if.end65
  %call69 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %land.lhs.true68.do.end76_crit_edge, label %land.lhs.true71

land.lhs.true68.do.end76_crit_edge:               ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end76

land.lhs.true71:                                  ; preds = %land.lhs.true68
  %.b159160 = load i1, ptr @__ip_mc_join_group.__warned.43, align 1
  br i1 %.b159160, label %land.lhs.true71.do.end76_crit_edge, label %if.then73

land.lhs.true71.do.end76_crit_edge:               ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end76

if.then73:                                        ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__ip_mc_join_group.__warned.43, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2188, ptr noundef nonnull @.str.2) #12
  br label %do.end76

do.end76:                                         ; preds = %if.then73, %land.lhs.true71.do.end76_crit_edge, %land.lhs.true68.do.end76_crit_edge, %if.end65.do.end76_crit_edge
  %11 = ptrtoint ptr %i.0167 to i32
  call void @__asan_load4_noabort(i32 %11)
  %i.0 = load ptr, ptr %i.0167, align 4
  %cmp.not = icmp eq ptr %i.0, null
  br i1 %cmp.not, label %do.end76.for.end_crit_edge, label %do.end76.for.body_crit_edge

do.end76.for.body_crit_edge:                      ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

do.end76.for.end_crit_edge:                       ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %do.end76.for.end_crit_edge, %do.end55.for.end_crit_edge
  %count.0.lcssa = phi i32 [ 0, %do.end55.for.end_crit_edge ], [ %inc, %do.end76.for.end_crit_edge ]
  %sysctl_igmp_max_memberships = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 35, i32 120
  %12 = ptrtoint ptr %sysctl_igmp_max_memberships to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sysctl_igmp_max_memberships, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %count.0.lcssa, i32 %13)
  %cmp78.not = icmp slt i32 %count.0.lcssa, %13
  br i1 %cmp78.not, label %if.end80, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end80:                                         ; preds = %for.end
  %call81 = tail call ptr @sock_kmalloc(ptr noundef %sk, i32 noundef 32, i32 noundef 3264) #12
  %tobool82.not = icmp eq ptr %call81, null
  br i1 %tobool82.not, label %if.end80.cleanup_crit_edge, label %if.end84

if.end80.cleanup_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end84:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #14
  %multi85 = getelementptr inbounds %struct.ip_mc_socklist, ptr %call81, i32 0, i32 1
  %14 = call ptr @memcpy(ptr %multi85, ptr %imr, i32 12)
  %15 = ptrtoint ptr %mc_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mc_list, align 8
  %17 = ptrtoint ptr %call81 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %call81, align 4
  %sflist = getelementptr inbounds %struct.ip_mc_socklist, ptr %call81, i32 0, i32 3
  %18 = ptrtoint ptr %sflist to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %sflist, align 4
  %sfmode = getelementptr inbounds %struct.ip_mc_socklist, ptr %call81, i32 0, i32 2
  %19 = ptrtoint ptr %sfmode to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %mode, ptr %sfmode, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !260
  %20 = ptrtoint ptr %mc_list to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %call81, ptr %mc_list, align 8
  tail call fastcc void @____ip_mc_inc_group(ptr noundef nonnull %call42, i32 noundef %1, i32 noundef %mode, i32 noundef 3264)
  br label %cleanup

cleanup:                                          ; preds = %if.end84, %if.end80.cleanup_crit_edge, %for.end.cleanup_crit_edge, %land.lhs.true60.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %if.end31.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.end31.cleanup_crit_edge ], [ -105, %for.end.cleanup_crit_edge ], [ 0, %if.end84 ], [ -105, %if.end80.cleanup_crit_edge ], [ -19, %if.end41.cleanup_crit_edge ], [ -98, %land.lhs.true60.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip_mc_join_group_ssm(ptr noundef %sk, ptr nocapture noundef %imr, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__ip_mc_join_group(ptr noundef %sk, ptr noundef %imr, i32 noundef %mode)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip_mc_leave_group(ptr noundef %sk, ptr nocapture noundef %imr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i, align 4
  %2 = ptrtoint ptr %imr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %imr, align 4
  %call2 = tail call i32 @rtnl_is_locked() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end31_crit_edge

entry.if.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

land.rhs:                                         ; preds = %entry
  %.b135 = load i1, ptr @ip_mc_leave_group.__already_done, align 1
  br i1 %.b135, label %land.rhs.if.end31_crit_edge, label %if.then, !prof !250

land.rhs.if.end31_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ip_mc_leave_group.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2259, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 2259) #12
  br label %if.end31

if.end31:                                         ; preds = %if.then, %land.rhs.if.end31_crit_edge, %entry.if.end31_crit_edge
  %call39 = tail call fastcc ptr @ip_mc_find_dev(ptr noundef %1, ptr noundef %imr)
  %imr_ifindex = getelementptr inbounds %struct.ip_mreqn, ptr %imr, i32 0, i32 2
  %4 = ptrtoint ptr %imr_ifindex to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %imr_ifindex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool40.not = icmp eq i32 %5, 0
  br i1 %tobool40.not, label %land.lhs.true, label %if.end31.if.end46_crit_edge

if.end31.if.end46_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

land.lhs.true:                                    ; preds = %if.end31
  %imr_address = getelementptr inbounds %struct.ip_mreqn, ptr %imr, i32 0, i32 1
  %6 = ptrtoint ptr %imr_address to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %imr_address, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool42.not = icmp eq i32 %7, 0
  %tobool44.not = icmp eq ptr %call39, null
  %or.cond = select i1 %tobool42.not, i1 %tobool44.not, i1 false
  br i1 %or.cond, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end46_crit_edge

land.lhs.true.if.end46_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end46:                                         ; preds = %land.lhs.true.if.end46_crit_edge, %if.end31.if.end46_crit_edge
  %mc_list = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 18
  %imr_address72 = getelementptr inbounds %struct.ip_mreqn, ptr %imr, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.cond.backedge, %if.end46
  %imlp.0 = phi ptr [ %mc_list, %if.end46 ], [ %9, %for.cond.backedge ]
  %call49 = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call49, label %for.cond.do.end58_crit_edge, label %land.lhs.true50

for.cond.do.end58_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end58

land.lhs.true50:                                  ; preds = %for.cond
  %call51 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %land.lhs.true50.do.end58_crit_edge, label %land.lhs.true53

land.lhs.true50.do.end58_crit_edge:               ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end58

land.lhs.true53:                                  ; preds = %land.lhs.true50
  %.b133134 = load i1, ptr @ip_mc_leave_group.__warned, align 1
  br i1 %.b133134, label %land.lhs.true53.do.end58_crit_edge, label %if.then55

land.lhs.true53.do.end58_crit_edge:               ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end58

if.then55:                                        ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ip_mc_leave_group.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2268, ptr noundef nonnull @.str.2) #12
  br label %do.end58

do.end58:                                         ; preds = %if.then55, %land.lhs.true53.do.end58_crit_edge, %land.lhs.true50.do.end58_crit_edge, %for.cond.do.end58_crit_edge
  %8 = ptrtoint ptr %imlp.0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %imlp.0, align 4
  %cmp.not = icmp eq ptr %9, null
  br i1 %cmp.not, label %do.end58.cleanup_crit_edge, label %for.body

do.end58.cleanup_crit_edge:                       ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %do.end58
  %multi = getelementptr inbounds %struct.ip_mc_socklist, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %multi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %multi, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %3)
  %cmp62.not = icmp eq i32 %11, %3
  br i1 %cmp62.not, label %if.end64, label %for.body.for.cond.backedge_crit_edge

for.body.for.cond.backedge_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.backedge

if.end64:                                         ; preds = %for.body
  br i1 %tobool40.not, label %if.else, label %if.then66

if.then66:                                        ; preds = %if.end64
  %imr_ifindex68 = getelementptr inbounds %struct.ip_mc_socklist, ptr %9, i32 0, i32 1, i32 2
  %12 = ptrtoint ptr %imr_ifindex68 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %imr_ifindex68, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %5)
  %cmp69.not = icmp eq i32 %13, %5
  br i1 %cmp69.not, label %if.then66.if.end84_crit_edge, label %if.then66.for.cond.backedge_crit_edge

if.then66.for.cond.backedge_crit_edge:            ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.backedge

if.then66.if.end84_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end84

if.else:                                          ; preds = %if.end64
  %14 = ptrtoint ptr %imr_address72 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %imr_address72, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool74.not = icmp eq i32 %15, 0
  br i1 %tobool74.not, label %if.else.if.end84_crit_edge, label %land.lhs.true75

if.else.if.end84_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end84

land.lhs.true75:                                  ; preds = %if.else
  %imr_address79 = getelementptr inbounds %struct.ip_mc_socklist, ptr %9, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %imr_address79 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %imr_address79, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp81.not = icmp eq i32 %15, %17
  br i1 %cmp81.not, label %land.lhs.true75.if.end84_crit_edge, label %land.lhs.true75.for.cond.backedge_crit_edge

land.lhs.true75.for.cond.backedge_crit_edge:      ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.backedge

land.lhs.true75.if.end84_crit_edge:               ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end84

for.cond.backedge:                                ; preds = %land.lhs.true75.for.cond.backedge_crit_edge, %if.then66.for.cond.backedge_crit_edge, %for.body.for.cond.backedge_crit_edge
  br label %for.cond

if.end84:                                         ; preds = %land.lhs.true75.if.end84_crit_edge, %if.else.if.end84_crit_edge, %if.then66.if.end84_crit_edge
  tail call fastcc void @ip_mc_leave_src(ptr noundef %sk, ptr noundef nonnull %9, ptr noundef %call39)
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %9, align 4
  %20 = ptrtoint ptr %imlp.0 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %imlp.0, align 4
  %tobool86.not = icmp eq ptr %call39, null
  br i1 %tobool86.not, label %if.end84.if.end88_crit_edge, label %if.then87

if.end84.if.end88_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end88

if.then87:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__ip_mc_dec_group(ptr noundef nonnull %call39, i32 noundef %3, i32 noundef 3264) #12
  br label %if.end88

if.end88:                                         ; preds = %if.then87, %if.end84.if.end88_crit_edge
  %sk_omem_alloc = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 20
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_omem_alloc, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %sk_omem_alloc, i32 1, i32 3, i32 1) #12
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_omem_alloc, ptr %sk_omem_alloc, i32 32, ptr elementtype(i32) %sk_omem_alloc) #12, !srcloc !261
  %rcu = getelementptr inbounds %struct.ip_mc_socklist, ptr %9, i32 0, i32 4
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 24 to ptr)) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end88, %do.end58.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end88 ], [ -19, %land.lhs.true.cleanup_crit_edge ], [ -99, %do.end58.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ip_mc_find_dev(ptr noundef %net, ptr nocapture noundef %imr) unnamed_addr #0 align 64 {
entry:
  %fl4.i = alloca %struct.flowi4, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %imr_ifindex = getelementptr inbounds %struct.ip_mreqn, ptr %imr, i32 0, i32 2
  %0 = ptrtoint ptr %imr_ifindex to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %imr_ifindex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call ptr @inetdev_by_index(ptr noundef %net, i32 noundef %1) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %imr_address = getelementptr inbounds %struct.ip_mreqn, ptr %imr, i32 0, i32 1
  %2 = ptrtoint ptr %imr_address to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %imr_address, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %if.then12, label %if.then3

if.then3:                                         ; preds = %if.end
  %call6 = tail call ptr @__ip_dev_find(ptr noundef %net, i32 noundef %3, i1 noundef zeroext false) #12
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.then3.cleanup_crit_edge, label %if.then3.if.then21_crit_edge

if.then3.if.then21_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then21

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then12:                                        ; preds = %if.end
  %4 = ptrtoint ptr %imr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %imr, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %fl4.i) #12
  %daddr2.i = getelementptr inbounds %struct.flowi4, ptr %fl4.i, i32 0, i32 2
  %6 = call ptr @memset(ptr %fl4.i, i32 0, i32 56)
  %7 = ptrtoint ptr %daddr2.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %5, ptr %daddr2.i, align 4
  %call.i.i = call ptr @ip_route_output_flow(ptr noundef %net, ptr noundef nonnull %fl4.i, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %fl4.i) #12
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12.cleanup_crit_edge, label %if.end19

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end19:                                         ; preds = %if.then12
  %8 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call.i.i, align 4
  call void @dst_release(ptr noundef %call.i.i) #12
  %tobool20.not = icmp eq ptr %9, null
  br i1 %tobool20.not, label %if.end19.cleanup_crit_edge, label %if.end19.if.then21_crit_edge

if.end19.if.then21_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then21

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then21:                                        ; preds = %if.end19.if.then21_crit_edge, %if.then3.if.then21_crit_edge
  %dev.248 = phi ptr [ %9, %if.end19.if.then21_crit_edge ], [ %call6, %if.then3.if.then21_crit_edge ]
  %ifindex = getelementptr inbounds %struct.net_device, ptr %dev.248, i32 0, i32 17
  %10 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ifindex, align 4
  %12 = ptrtoint ptr %imr_ifindex to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %imr_ifindex, align 4
  %call.i = call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call.i, label %if.then21.__in_dev_get_rtnl.exit_crit_edge, label %land.lhs.true.i

if.then21.__in_dev_get_rtnl.exit_crit_edge:       ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  br label %__in_dev_get_rtnl.exit

land.lhs.true.i:                                  ; preds = %if.then21
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.__in_dev_get_rtnl.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.__in_dev_get_rtnl.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__in_dev_get_rtnl.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @__in_dev_get_rtnl.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.__in_dev_get_rtnl.exit_crit_edge, label %if.then.i

land.lhs.true2.i.__in_dev_get_rtnl.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__in_dev_get_rtnl.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__in_dev_get_rtnl.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 249, ptr noundef nonnull @.str.2) #12
  br label %__in_dev_get_rtnl.exit

__in_dev_get_rtnl.exit:                           ; preds = %if.then.i, %land.lhs.true2.i.__in_dev_get_rtnl.exit_crit_edge, %land.lhs.true.i.__in_dev_get_rtnl.exit_crit_edge, %if.then21.__in_dev_get_rtnl.exit_crit_edge
  %ip_ptr.i = getelementptr inbounds %struct.net_device, ptr %dev.248, i32 0, i32 78
  %13 = ptrtoint ptr %ip_ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ip_ptr.i, align 32
  br label %cleanup

cleanup:                                          ; preds = %__in_dev_get_rtnl.exit, %if.end19.cleanup_crit_edge, %if.then12.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ %call, %if.then ], [ null, %if.then3.cleanup_crit_edge ], [ %14, %__in_dev_get_rtnl.exit ], [ null, %if.end19.cleanup_crit_edge ], [ null, %if.then12.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ip_mc_leave_src(ptr noundef %sk, ptr noundef %iml, ptr noundef %in_dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b1 = load i1, ptr @ip_mc_leave_src.__warned, align 1
  br i1 %.b1, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ip_mc_leave_src.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2231, ptr noundef nonnull @.str.2) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %sflist = getelementptr inbounds %struct.ip_mc_socklist, ptr %iml, i32 0, i32 3
  %0 = ptrtoint ptr %sflist to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sflist, align 4
  %tobool4.not = icmp eq ptr %1, null
  %multi = getelementptr inbounds %struct.ip_mc_socklist, ptr %iml, i32 0, i32 1
  %sfmode = getelementptr inbounds %struct.ip_mc_socklist, ptr %iml, i32 0, i32 2
  %2 = ptrtoint ptr %sfmode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sfmode, align 4
  br i1 %tobool4.not, label %if.then5, label %if.end7

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %call6 = tail call fastcc i32 @ip_mc_del_src(ptr noundef %in_dev, ptr noundef %multi, i32 noundef %3, i32 noundef 0, ptr noundef null, i32 noundef 0)
  br label %cleanup

if.end7:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %sl_count = getelementptr inbounds %struct.ip_sf_socklist, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %sl_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sl_count, align 4
  %sl_addr = getelementptr inbounds %struct.ip_sf_socklist, ptr %1, i32 0, i32 3
  %call12 = tail call fastcc i32 @ip_mc_del_src(ptr noundef %in_dev, ptr noundef %multi, i32 noundef %3, i32 noundef %5, ptr noundef %sl_addr, i32 noundef 0)
  %6 = ptrtoint ptr %sflist to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr null, ptr %sflist, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %1, align 4
  %9 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %8, i32 4) #12
  %10 = extractvalue { i32, i1 } %9, 1
  %11 = extractvalue { i32, i1 } %9, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %11, i32 16) #12
  %retval.0.i = select i1 %10, i32 -1, i32 %spec.select.i
  %sk_omem_alloc = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 20
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_omem_alloc, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %sk_omem_alloc, i32 1, i32 3, i32 1) #12
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_omem_alloc, ptr %sk_omem_alloc, i32 %retval.0.i, ptr elementtype(i32) %sk_omem_alloc) #12, !srcloc !261
  %rcu = getelementptr inbounds %struct.ip_sf_socklist, ptr %1, i32 0, i32 2
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 8 to ptr)) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip_mc_source(i32 noundef %add, i32 noundef %omode, ptr noundef %sk, ptr nocapture noundef readonly %mreqs, i32 noundef %ifindex) local_unnamed_addr #0 align 64 {
entry:
  %imr = alloca %struct.ip_mreqn, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %imr) #12
  %0 = getelementptr inbounds %struct.ip_mreqn, ptr %imr, i32 0, i32 1
  %1 = getelementptr inbounds %struct.ip_mreqn, ptr %imr, i32 0, i32 2
  %2 = ptrtoint ptr %mreqs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mreqs, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %4 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %skc_net.i, align 4
  %and.i = and i32 %3, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, -536870912
  br i1 %cmp.i, label %if.end, label %entry.cleanup288_crit_edge

entry.cleanup288_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup288

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @rtnl_is_locked() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %land.rhs, label %if.end.if.end34_crit_edge

if.end.if.end34_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

land.rhs:                                         ; preds = %if.end
  %.b404 = load i1, ptr @ip_mc_source.__already_done, align 1
  br i1 %.b404, label %land.rhs.if.end34_crit_edge, label %if.then12, !prof !250

land.rhs.if.end34_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

if.then12:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ip_mc_source.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2313, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 2313) #12
  br label %if.end34

if.end34:                                         ; preds = %if.then12, %land.rhs.if.end34_crit_edge, %if.end.if.end34_crit_edge
  %6 = ptrtoint ptr %mreqs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mreqs, align 4
  %8 = ptrtoint ptr %imr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %imr, align 4
  %imr_interface = getelementptr inbounds %struct.ip_mreq_source, ptr %mreqs, i32 0, i32 1
  %9 = ptrtoint ptr %imr_interface to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %imr_interface, align 4
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %0, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %ifindex, ptr %1, align 4
  %call45 = call fastcc ptr @ip_mc_find_dev(ptr noundef %5, ptr noundef nonnull %imr)
  %tobool46.not = icmp eq ptr %call45, null
  br i1 %tobool46.not, label %if.end34.cleanup288_crit_edge, label %if.end48

if.end34.cleanup288_crit_edge:                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup288

if.end48:                                         ; preds = %if.end34
  %call50 = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call50, label %if.end48.do.end58_crit_edge, label %land.lhs.true

if.end48.do.end58_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end58

land.lhs.true:                                    ; preds = %if.end48
  %call51 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %land.lhs.true.do.end58_crit_edge, label %land.lhs.true53

land.lhs.true.do.end58_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end58

land.lhs.true53:                                  ; preds = %land.lhs.true
  %.b397403 = load i1, ptr @ip_mc_source.__warned, align 1
  br i1 %.b397403, label %land.lhs.true53.do.end58_crit_edge, label %if.then55

land.lhs.true53.do.end58_crit_edge:               ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end58

if.then55:                                        ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ip_mc_source.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2326, ptr noundef nonnull @.str.2) #12
  br label %do.end58

do.end58:                                         ; preds = %if.then55, %land.lhs.true53.do.end58_crit_edge, %land.lhs.true.do.end58_crit_edge, %if.end48.do.end58_crit_edge
  %mc_list = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 18
  %13 = ptrtoint ptr %mc_list to i32
  call void @__asan_load4_noabort(i32 %13)
  %pmc.0426 = load ptr, ptr %mc_list, align 4
  %cmp.not427 = icmp eq ptr %pmc.0426, null
  br i1 %cmp.not427, label %do.end58.cleanup288_crit_edge, label %for.body.lr.ph

do.end58.cleanup288_crit_edge:                    ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup288

for.body.lr.ph:                                   ; preds = %do.end58
  %14 = ptrtoint ptr %imr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %imr, align 4
  br label %for.body

for.body:                                         ; preds = %do.end82.for.body_crit_edge, %for.body.lr.ph
  %pmc.0428 = phi ptr [ %pmc.0426, %for.body.lr.ph ], [ %pmc.0, %do.end82.for.body_crit_edge ]
  %multi = getelementptr inbounds %struct.ip_mc_socklist, ptr %pmc.0428, i32 0, i32 1
  %16 = ptrtoint ptr %multi to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %multi, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %15)
  %cmp64 = icmp eq i32 %17, %15
  br i1 %cmp64, label %land.lhs.true65, label %for.body.do.body72_crit_edge

for.body.do.body72_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body72

land.lhs.true65:                                  ; preds = %for.body
  %imr_ifindex67 = getelementptr inbounds %struct.ip_mc_socklist, ptr %pmc.0428, i32 0, i32 1, i32 2
  %18 = ptrtoint ptr %imr_ifindex67 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %imr_ifindex67, align 4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp69 = icmp eq i32 %19, %21
  br i1 %cmp69, label %if.end86, label %land.lhs.true65.do.body72_crit_edge

land.lhs.true65.do.body72_crit_edge:              ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body72

do.body72:                                        ; preds = %land.lhs.true65.do.body72_crit_edge, %for.body.do.body72_crit_edge
  %call73 = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call73, label %do.body72.do.end82_crit_edge, label %land.lhs.true74

do.body72.do.end82_crit_edge:                     ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end82

land.lhs.true74:                                  ; preds = %do.body72
  %call75 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %land.lhs.true74.do.end82_crit_edge, label %land.lhs.true77

land.lhs.true74.do.end82_crit_edge:               ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end82

land.lhs.true77:                                  ; preds = %land.lhs.true74
  %.b398402 = load i1, ptr @ip_mc_source.__warned.12, align 1
  br i1 %.b398402, label %land.lhs.true77.do.end82_crit_edge, label %if.then79

land.lhs.true77.do.end82_crit_edge:               ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end82

if.then79:                                        ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ip_mc_source.__warned.12, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2326, ptr noundef nonnull @.str.2) #12
  br label %do.end82

do.end82:                                         ; preds = %if.then79, %land.lhs.true77.do.end82_crit_edge, %land.lhs.true74.do.end82_crit_edge, %do.body72.do.end82_crit_edge
  %22 = ptrtoint ptr %pmc.0428 to i32
  call void @__asan_load4_noabort(i32 %22)
  %pmc.0 = load ptr, ptr %pmc.0428, align 4
  %cmp.not = icmp eq ptr %pmc.0, null
  br i1 %cmp.not, label %do.end82.cleanup288_crit_edge, label %do.end82.for.body_crit_edge

do.end82.for.body_crit_edge:                      ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

do.end82.cleanup288_crit_edge:                    ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup288

if.end86:                                         ; preds = %land.lhs.true65
  %sflist = getelementptr inbounds %struct.ip_mc_socklist, ptr %pmc.0428, i32 0, i32 3
  %23 = ptrtoint ptr %sflist to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sflist, align 4
  %tobool87.not = icmp eq ptr %24, null
  %sfmode92 = getelementptr inbounds %struct.ip_mc_socklist, ptr %pmc.0428, i32 0, i32 2
  %25 = ptrtoint ptr %sfmode92 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sfmode92, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %omode)
  %cmp93.not = icmp eq i32 %26, %omode
  br i1 %tobool87.not, label %if.else, label %if.then88

if.then88:                                        ; preds = %if.end86
  br i1 %cmp93.not, label %if.then88.do.body103_crit_edge, label %if.then88.cleanup288_crit_edge

if.then88.cleanup288_crit_edge:                   ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup288

if.then88.do.body103_crit_edge:                   ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body103

if.else:                                          ; preds = %if.end86
  br i1 %cmp93.not, label %if.else.do.body103_crit_edge, label %if.then94

if.else.do.body103_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body103

if.then94:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %call96 = tail call fastcc i32 @ip_mc_add_src(ptr noundef nonnull %call45, ptr noundef %mreqs, i32 noundef %omode, i32 noundef 0, ptr noundef null, i32 noundef 0)
  %27 = ptrtoint ptr %sfmode92 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sfmode92, align 4
  %call99 = tail call fastcc i32 @ip_mc_del_src(ptr noundef nonnull %call45, ptr noundef %mreqs, i32 noundef %28, i32 noundef 0, ptr noundef null, i32 noundef 0)
  %29 = ptrtoint ptr %sfmode92 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %omode, ptr %sfmode92, align 4
  br label %do.body103

do.body103:                                       ; preds = %if.then94, %if.else.do.body103_crit_edge, %if.then88.do.body103_crit_edge
  %call104 = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call104, label %do.body103.do.end113_crit_edge, label %land.lhs.true105

do.body103.do.end113_crit_edge:                   ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end113

land.lhs.true105:                                 ; preds = %do.body103
  %call106 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %land.lhs.true105.do.end113_crit_edge, label %land.lhs.true108

land.lhs.true105.do.end113_crit_edge:             ; preds = %land.lhs.true105
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end113

land.lhs.true108:                                 ; preds = %land.lhs.true105
  %.b399401 = load i1, ptr @ip_mc_source.__warned.13, align 1
  br i1 %.b399401, label %land.lhs.true108.do.end113_crit_edge, label %if.then110

land.lhs.true108.do.end113_crit_edge:             ; preds = %land.lhs.true108
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end113

if.then110:                                       ; preds = %land.lhs.true108
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ip_mc_source.__warned.13, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2350, ptr noundef nonnull @.str.2) #12
  br label %do.end113

do.end113:                                        ; preds = %if.then110, %land.lhs.true108.do.end113_crit_edge, %land.lhs.true105.do.end113_crit_edge, %do.body103.do.end113_crit_edge
  %30 = ptrtoint ptr %sflist to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sflist, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool116.not = icmp eq i32 %add, 0
  %tobool118.not = icmp eq ptr %31, null
  br i1 %tobool116.not, label %if.then117, label %if.end155

if.then117:                                       ; preds = %do.end113
  br i1 %tobool118.not, label %if.then117.cleanup288_crit_edge, label %for.cond121.preheader

if.then117.cleanup288_crit_edge:                  ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup288

for.cond121.preheader:                            ; preds = %if.then117
  %sl_count = getelementptr inbounds %struct.ip_sf_socklist, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %sl_count to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sl_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp122438.not = icmp eq i32 %33, 0
  br i1 %cmp122438.not, label %for.cond121.preheader.cleanup288_crit_edge, label %for.body123.lr.ph

for.cond121.preheader.cleanup288_crit_edge:       ; preds = %for.cond121.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup288

for.body123.lr.ph:                                ; preds = %for.cond121.preheader
  %imr_sourceaddr = getelementptr inbounds %struct.ip_mreq_source, ptr %mreqs, i32 0, i32 2
  br label %for.body123

for.body123:                                      ; preds = %for.inc128.for.body123_crit_edge, %for.body123.lr.ph
  %i.0439 = phi i32 [ 0, %for.body123.lr.ph ], [ %inc, %for.inc128.for.body123_crit_edge ]
  %arrayidx = getelementptr %struct.ip_sf_socklist, ptr %31, i32 0, i32 3, i32 %i.0439
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(4) %arrayidx, ptr noundef dereferenceable(4) %imr_sourceaddr, i32 4) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp125 = icmp eq i32 %bcmp, 0
  br i1 %cmp125, label %if.end132.critedge, label %for.inc128

for.inc128:                                       ; preds = %for.body123
  %inc = add nuw i32 %i.0439, 1
  %exitcond450.not = icmp eq i32 %inc, %33
  br i1 %exitcond450.not, label %for.inc128.cleanup288_crit_edge, label %for.inc128.for.body123_crit_edge

for.inc128.for.body123_crit_edge:                 ; preds = %for.inc128
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body123

for.inc128.cleanup288_crit_edge:                  ; preds = %for.inc128
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup288

if.end132.critedge:                               ; preds = %for.body123
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp134 = icmp eq i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %omode)
  %cmp136 = icmp eq i32 %omode, 1
  %or.cond = and i1 %cmp136, %cmp134
  br i1 %or.cond, label %if.then285, label %if.end138

if.end138:                                        ; preds = %if.end132.critedge
  %call141 = tail call fastcc i32 @ip_mc_del_src(ptr noundef nonnull %call45, ptr noundef %mreqs, i32 noundef %omode, i32 noundef 1, ptr noundef %imr_sourceaddr, i32 noundef 1)
  %j.0440 = add i32 %i.0439, 1
  %34 = ptrtoint ptr %sl_count to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sl_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0440, i32 %35)
  %cmp145441 = icmp ult i32 %j.0440, %35
  br i1 %cmp145441, label %if.end138.for.body146_crit_edge, label %if.end138.for.end153_crit_edge

if.end138.for.end153_crit_edge:                   ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end153

if.end138.for.body146_crit_edge:                  ; preds = %if.end138
  br label %for.body146

for.body146:                                      ; preds = %for.body146.for.body146_crit_edge, %if.end138.for.body146_crit_edge
  %j.0443 = phi i32 [ %j.0, %for.body146.for.body146_crit_edge ], [ %j.0440, %if.end138.for.body146_crit_edge ]
  %j.0.in442 = phi i32 [ %j.0443, %for.body146.for.body146_crit_edge ], [ %i.0439, %if.end138.for.body146_crit_edge ]
  %arrayidx148 = getelementptr %struct.ip_sf_socklist, ptr %31, i32 0, i32 3, i32 %j.0443
  %36 = ptrtoint ptr %arrayidx148 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx148, align 4
  %arrayidx150 = getelementptr %struct.ip_sf_socklist, ptr %31, i32 0, i32 3, i32 %j.0.in442
  %38 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %arrayidx150, align 4
  %j.0 = add nuw i32 %j.0443, 1
  %39 = ptrtoint ptr %sl_count to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %sl_count, align 4
  %cmp145 = icmp ult i32 %j.0, %40
  br i1 %cmp145, label %for.body146.for.body146_crit_edge, label %for.body146.for.end153_crit_edge

for.body146.for.end153_crit_edge:                 ; preds = %for.body146
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end153

for.body146.for.body146_crit_edge:                ; preds = %for.body146
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body146

for.end153:                                       ; preds = %for.body146.for.end153_crit_edge, %if.end138.for.end153_crit_edge
  %.lcssa = phi i32 [ %35, %if.end138.for.end153_crit_edge ], [ %40, %for.body146.for.end153_crit_edge ]
  %dec = add i32 %.lcssa, -1
  %41 = ptrtoint ptr %sl_count to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %dec, ptr %sl_count, align 4
  br label %cleanup288

if.end155:                                        ; preds = %do.end113
  br i1 %tobool118.not, label %if.end155.if.end170_crit_edge, label %land.lhs.true157

if.end155.if.end170_crit_edge:                    ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end170

land.lhs.true157:                                 ; preds = %if.end155
  %sl_count158 = getelementptr inbounds %struct.ip_sf_socklist, ptr %31, i32 0, i32 1
  %42 = ptrtoint ptr %sl_count158 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %sl_count158, align 4
  %sysctl_igmp_max_msf = getelementptr inbounds %struct.net, ptr %5, i32 0, i32 35, i32 121
  %44 = ptrtoint ptr %sysctl_igmp_max_msf to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %sysctl_igmp_max_msf, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %45)
  %cmp159.not = icmp ult i32 %43, %45
  br i1 %cmp159.not, label %lor.lhs.false.critedge, label %land.lhs.true157.cleanup288_crit_edge

land.lhs.true157.cleanup288_crit_edge:            ; preds = %land.lhs.true157
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup288

lor.lhs.false.critedge:                           ; preds = %land.lhs.true157
  %46 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %31, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %47)
  %cmp164 = icmp eq i32 %43, %47
  br i1 %cmp164, label %if.then167.critedge, label %lor.lhs.false.critedge.if.end245_crit_edge

lor.lhs.false.critedge.if.end245_crit_edge:       ; preds = %lor.lhs.false.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end245

if.then167.critedge:                              ; preds = %lor.lhs.false.critedge
  call void @__sanitizer_cov_trace_pc() #14
  %add169 = add i32 %43, 10
  br label %if.end170

if.end170:                                        ; preds = %if.then167.critedge, %if.end155.if.end170_crit_edge
  %count.0 = phi i32 [ %add169, %if.then167.critedge ], [ 10, %if.end155.if.end170_crit_edge ]
  %48 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %count.0, i32 4) #12
  %49 = extractvalue { i32, i1 } %48, 1
  %50 = extractvalue { i32, i1 } %48, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %50, i32 16) #12
  %retval.0.i = select i1 %49, i32 -1, i32 %spec.select.i
  %call172 = tail call ptr @sock_kmalloc(ptr noundef %sk, i32 noundef %retval.0.i, i32 noundef 3264) #12
  %tobool173.not = icmp eq ptr %call172, null
  br i1 %tobool173.not, label %if.end170.cleanup288_crit_edge, label %if.end175

if.end170.cleanup288_crit_edge:                   ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup288

if.end175:                                        ; preds = %if.end170
  %51 = ptrtoint ptr %call172 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %count.0, ptr %call172, align 4
  %sub177 = add i32 %count.0, -10
  %sl_count178 = getelementptr inbounds %struct.ip_sf_socklist, ptr %call172, i32 0, i32 1
  %52 = ptrtoint ptr %sl_count178 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %sub177, ptr %sl_count178, align 4
  br i1 %tobool118.not, label %if.end175.cleanup.thread_crit_edge, label %for.cond181.preheader

if.end175.cleanup.thread_crit_edge:               ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread

for.cond181.preheader:                            ; preds = %if.end175
  %sl_count182 = getelementptr inbounds %struct.ip_sf_socklist, ptr %31, i32 0, i32 1
  %53 = ptrtoint ptr %sl_count182 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %sl_count182, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp183429.not = icmp eq i32 %54, 0
  br i1 %cmp183429.not, label %for.cond181.preheader.for.end191_crit_edge, label %for.cond181.preheader.for.body184_crit_edge

for.cond181.preheader.for.body184_crit_edge:      ; preds = %for.cond181.preheader
  br label %for.body184

for.cond181.preheader.for.end191_crit_edge:       ; preds = %for.cond181.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end191

for.body184:                                      ; preds = %for.body184.for.body184_crit_edge, %for.cond181.preheader.for.body184_crit_edge
  %i.1430 = phi i32 [ %inc190, %for.body184.for.body184_crit_edge ], [ 0, %for.cond181.preheader.for.body184_crit_edge ]
  %arrayidx186 = getelementptr %struct.ip_sf_socklist, ptr %31, i32 0, i32 3, i32 %i.1430
  %55 = ptrtoint ptr %arrayidx186 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx186, align 4
  %arrayidx188 = getelementptr %struct.ip_sf_socklist, ptr %call172, i32 0, i32 3, i32 %i.1430
  %57 = ptrtoint ptr %arrayidx188 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %arrayidx188, align 4
  %inc190 = add nuw i32 %i.1430, 1
  %58 = ptrtoint ptr %sl_count182 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %sl_count182, align 4
  %cmp183 = icmp ult i32 %inc190, %59
  br i1 %cmp183, label %for.body184.for.body184_crit_edge, label %for.body184.for.end191_crit_edge

for.body184.for.end191_crit_edge:                 ; preds = %for.body184
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end191

for.body184.for.body184_crit_edge:                ; preds = %for.body184
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body184

for.end191:                                       ; preds = %for.body184.for.end191_crit_edge, %for.cond181.preheader.for.end191_crit_edge
  %60 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %31, align 4
  %62 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %61, i32 4) #12
  %63 = extractvalue { i32, i1 } %62, 1
  %64 = extractvalue { i32, i1 } %62, 0
  %spec.select.i407 = tail call i32 @llvm.uadd.sat.i32(i32 %64, i32 16) #12
  %retval.0.i408 = select i1 %63, i32 -1, i32 %spec.select.i407
  %sk_omem_alloc = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 20
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_omem_alloc, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %sk_omem_alloc, i32 1, i32 3, i32 1) #12
  %65 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_omem_alloc, ptr %sk_omem_alloc, i32 %retval.0.i408, ptr elementtype(i32) %sk_omem_alloc) #12, !srcloc !261
  %rcu = getelementptr inbounds %struct.ip_sf_socklist, ptr %31, i32 0, i32 2
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 8 to ptr)) #12
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %for.end191, %if.end175.cleanup.thread_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !262
  %66 = ptrtoint ptr %sflist to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %call172, ptr %sflist, align 4
  br label %if.end245

if.end245:                                        ; preds = %cleanup.thread, %lor.lhs.false.critedge.if.end245_crit_edge
  %psl.1 = phi ptr [ %31, %lor.lhs.false.critedge.if.end245_crit_edge ], [ %call172, %cleanup.thread ]
  %sl_count247 = getelementptr inbounds %struct.ip_sf_socklist, ptr %psl.1, i32 0, i32 1
  %67 = ptrtoint ptr %sl_count247 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %sl_count247, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cond = icmp eq i32 %68, 0
  br i1 %cond, label %if.end245.for.end275_crit_edge, label %for.body249.lr.ph

if.end245.for.end275_crit_edge:                   ; preds = %if.end245
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end275

for.body249.lr.ph:                                ; preds = %if.end245
  %imr_sourceaddr252 = getelementptr inbounds %struct.ip_mreq_source, ptr %mreqs, i32 0, i32 2
  br label %for.body249

for.cond265.preheader:                            ; preds = %for.inc257
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %68)
  %cmp266.not435.not = icmp eq i32 %68, -2147483648
  br i1 %cmp266.not435.not, label %for.body267.preheader, label %for.cond265.preheader.for.end275_crit_edge

for.cond265.preheader.for.end275_crit_edge:       ; preds = %for.cond265.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end275

for.body267.preheader:                            ; preds = %for.cond265.preheader
  %j.1434 = add i32 %68, -1
  br label %for.body267

for.body249:                                      ; preds = %for.inc257.for.body249_crit_edge, %for.body249.lr.ph
  %i.2432 = phi i32 [ 0, %for.body249.lr.ph ], [ %inc258, %for.inc257.for.body249_crit_edge ]
  %arrayidx251 = getelementptr %struct.ip_sf_socklist, ptr %psl.1, i32 0, i32 3, i32 %i.2432
  %bcmp400 = tail call i32 @bcmp(ptr noundef dereferenceable(4) %arrayidx251, ptr noundef dereferenceable(4) %imr_sourceaddr252, i32 4) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp400)
  %cmp254 = icmp eq i32 %bcmp400, 0
  br i1 %cmp254, label %for.body249.cleanup288_crit_edge, label %for.inc257

for.body249.cleanup288_crit_edge:                 ; preds = %for.body249
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup288

for.inc257:                                       ; preds = %for.body249
  %inc258 = add nuw i32 %i.2432, 1
  %exitcond.not = icmp eq i32 %inc258, %68
  br i1 %exitcond.not, label %for.cond265.preheader, label %for.inc257.for.body249_crit_edge

for.inc257.for.body249_crit_edge:                 ; preds = %for.inc257
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body249

for.body267:                                      ; preds = %for.body267.for.body267_crit_edge, %for.body267.preheader
  %j.1437 = phi i32 [ %j.1, %for.body267.for.body267_crit_edge ], [ %j.1434, %for.body267.preheader ]
  %j.1.in436 = phi i32 [ %j.1437, %for.body267.for.body267_crit_edge ], [ %68, %for.body267.preheader ]
  %arrayidx269 = getelementptr %struct.ip_sf_socklist, ptr %psl.1, i32 0, i32 3, i32 %j.1437
  %69 = ptrtoint ptr %arrayidx269 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx269, align 4
  %arrayidx272 = getelementptr %struct.ip_sf_socklist, ptr %psl.1, i32 0, i32 3, i32 %j.1.in436
  %71 = ptrtoint ptr %arrayidx272 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %arrayidx272, align 4
  %j.1 = add i32 %j.1437, -1
  %cmp266.not = icmp slt i32 %j.1, %68
  br i1 %cmp266.not, label %for.body267.for.end275_crit_edge, label %for.body267.for.body267_crit_edge

for.body267.for.body267_crit_edge:                ; preds = %for.body267
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body267

for.body267.for.end275_crit_edge:                 ; preds = %for.body267
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end275

for.end275:                                       ; preds = %for.body267.for.end275_crit_edge, %for.cond265.preheader.for.end275_crit_edge, %if.end245.for.end275_crit_edge
  %imr_sourceaddr276 = getelementptr inbounds %struct.ip_mreq_source, ptr %mreqs, i32 0, i32 2
  %72 = ptrtoint ptr %imr_sourceaddr276 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %imr_sourceaddr276, align 4
  %arrayidx278 = getelementptr %struct.ip_sf_socklist, ptr %psl.1, i32 0, i32 3, i32 %68
  %74 = ptrtoint ptr %arrayidx278 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %arrayidx278, align 4
  %75 = ptrtoint ptr %sl_count247 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %sl_count247, align 4
  %inc280 = add i32 %76, 1
  store i32 %inc280, ptr %sl_count247, align 4
  %call283 = tail call fastcc i32 @ip_mc_add_src(ptr noundef nonnull %call45, ptr noundef %mreqs, i32 noundef %omode, i32 noundef 1, ptr noundef %imr_sourceaddr276, i32 noundef 1)
  br label %cleanup288

if.then285:                                       ; preds = %if.end132.critedge
  call void @__sanitizer_cov_trace_pc() #14
  %call286 = call i32 @ip_mc_leave_group(ptr noundef %sk, ptr noundef nonnull %imr)
  br label %cleanup288

cleanup288:                                       ; preds = %if.then285, %for.end275, %for.body249.cleanup288_crit_edge, %if.end170.cleanup288_crit_edge, %land.lhs.true157.cleanup288_crit_edge, %for.end153, %for.inc128.cleanup288_crit_edge, %for.cond121.preheader.cleanup288_crit_edge, %if.then117.cleanup288_crit_edge, %if.then88.cleanup288_crit_edge, %do.end82.cleanup288_crit_edge, %do.end58.cleanup288_crit_edge, %if.end34.cleanup288_crit_edge, %entry.cleanup288_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup288_crit_edge ], [ %call286, %if.then285 ], [ -105, %if.end170.cleanup288_crit_edge ], [ -105, %land.lhs.true157.cleanup288_crit_edge ], [ -22, %if.then88.cleanup288_crit_edge ], [ -19, %if.end34.cleanup288_crit_edge ], [ 0, %for.end153 ], [ 0, %for.end275 ], [ -99, %if.then117.cleanup288_crit_edge ], [ -99, %for.cond121.preheader.cleanup288_crit_edge ], [ -22, %do.end58.cleanup288_crit_edge ], [ -99, %for.inc128.cleanup288_crit_edge ], [ -99, %for.body249.cleanup288_crit_edge ], [ -22, %do.end82.cleanup288_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %imr) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ip_mc_add_src(ptr noundef %in_dev, ptr nocapture noundef readonly %pmca, i32 noundef %sfmode, i32 noundef %sfcount, ptr nocapture noundef readonly %psfsrc, i32 noundef %delta) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %in_dev, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !234) #12
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !248
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.49, i32 noundef 696, ptr noundef nonnull @.str.50) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %mc_list = getelementptr inbounds %struct.in_device, ptr %in_dev, i32 0, i32 5
  %4 = ptrtoint ptr %mc_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %mc_list, align 4
  %call = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end10_crit_edge

rcu_read_lock.exit.do.end10_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end10_crit_edge, label %land.lhs.true5

land.lhs.true.do.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b164 = load i1, ptr @ip_mc_add_src.__warned, align 1
  br i1 %.b164, label %land.lhs.true5.do.end10_crit_edge, label %if.then7

land.lhs.true5.do.end10_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

if.then7:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ip_mc_add_src.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2083, ptr noundef nonnull @.str.20) #12
  br label %do.end10

do.end10:                                         ; preds = %if.then7, %land.lhs.true5.do.end10_crit_edge, %land.lhs.true.do.end10_crit_edge, %rcu_read_lock.exit.do.end10_crit_edge
  %cmp.not205 = icmp eq ptr %5, null
  br i1 %cmp.not205, label %do.end10.if.then33.critedge_crit_edge, label %do.end10.for.body_crit_edge

do.end10.for.body_crit_edge:                      ; preds = %do.end10
  br label %for.body

do.end10.if.then33.critedge_crit_edge:            ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then33.critedge

for.body:                                         ; preds = %do.end30.for.body_crit_edge, %do.end10.for.body_crit_edge
  %pmc.0206 = phi ptr [ %12, %do.end30.for.body_crit_edge ], [ %5, %do.end10.for.body_crit_edge ]
  %6 = ptrtoint ptr %pmca to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pmca, align 4
  %multiaddr = getelementptr inbounds %struct.ip_mc_list, ptr %pmc.0206, i32 0, i32 1
  %8 = ptrtoint ptr %multiaddr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %multiaddr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp12 = icmp eq i32 %7, %9
  br i1 %cmp12, label %if.end34, label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = getelementptr inbounds %struct.ip_mc_list, ptr %pmc.0206, i32 0, i32 6
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %10, align 4
  %call20 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %land.lhs.true22, label %for.inc.do.end30_crit_edge

for.inc.do.end30_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end30

land.lhs.true22:                                  ; preds = %for.inc
  %call23 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %land.lhs.true22.do.end30_crit_edge, label %land.lhs.true25

land.lhs.true22.do.end30_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end30

land.lhs.true25:                                  ; preds = %land.lhs.true22
  %.b162163 = load i1, ptr @ip_mc_add_src.__warned.44, align 1
  br i1 %.b162163, label %land.lhs.true25.do.end30_crit_edge, label %if.then27

land.lhs.true25.do.end30_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end30

if.then27:                                        ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ip_mc_add_src.__warned.44, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2083, ptr noundef nonnull @.str.20) #12
  br label %do.end30

do.end30:                                         ; preds = %if.then27, %land.lhs.true25.do.end30_crit_edge, %land.lhs.true22.do.end30_crit_edge, %for.inc.do.end30_crit_edge
  %cmp.not = icmp eq ptr %12, null
  br i1 %cmp.not, label %do.end30.if.then33.critedge_crit_edge, label %do.end30.for.body_crit_edge

do.end30.for.body_crit_edge:                      ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

do.end30.if.then33.critedge_crit_edge:            ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then33.critedge

if.then33.critedge:                               ; preds = %do.end30.if.then33.critedge_crit_edge, %do.end10.if.then33.critedge_crit_edge
  %call.i165 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i165, label %if.then33.critedge.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i168

if.then33.critedge.rcu_read_unlock.exit_crit_edge: ; preds = %if.then33.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i168:                               ; preds = %if.then33.critedge
  %call1.i166 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i166)
  %tobool.not.i167 = icmp eq i32 %call1.i166, 0
  br i1 %tobool.not.i167, label %land.lhs.true.i168.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i170

land.lhs.true.i168.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i168
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i170:                              ; preds = %land.lhs.true.i168
  %.b4.i169 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i169, label %land.lhs.true2.i170.rcu_read_unlock.exit_crit_edge, label %if.then.i171

land.lhs.true2.i170.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i170
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i171:                                     ; preds = %land.lhs.true2.i170
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.49, i32 noundef 724, ptr noundef nonnull @.str.51) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i171, %land.lhs.true2.i170.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i168.rcu_read_unlock.exit_crit_edge, %if.then33.critedge.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !251
  %13 = tail call i32 @llvm.read_register.i32(metadata !234) #12
  %and.i.i.i.i.i172 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i172 to ptr
  %preempt_count.i.i.i.i173 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i173 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i173, align 4
  %sub.i.i.i = add i32 %16, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i173, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %cleanup

if.end34:                                         ; preds = %for.body
  %lock = getelementptr inbounds %struct.ip_mc_list, ptr %pmc.0206, i32 0, i32 11
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  %call.i174 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i174, label %if.end34.rcu_read_unlock.exit184_crit_edge, label %land.lhs.true.i177

if.end34.rcu_read_unlock.exit184_crit_edge:       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit184

land.lhs.true.i177:                               ; preds = %if.end34
  %call1.i175 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i175)
  %tobool.not.i176 = icmp eq i32 %call1.i175, 0
  br i1 %tobool.not.i176, label %land.lhs.true.i177.rcu_read_unlock.exit184_crit_edge, label %land.lhs.true2.i179

land.lhs.true.i177.rcu_read_unlock.exit184_crit_edge: ; preds = %land.lhs.true.i177
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit184

land.lhs.true2.i179:                              ; preds = %land.lhs.true.i177
  %.b4.i178 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i178, label %land.lhs.true2.i179.rcu_read_unlock.exit184_crit_edge, label %if.then.i180

land.lhs.true2.i179.rcu_read_unlock.exit184_crit_edge: ; preds = %land.lhs.true2.i179
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit184

if.then.i180:                                     ; preds = %land.lhs.true2.i179
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.49, i32 noundef 724, ptr noundef nonnull @.str.51) #12
  br label %rcu_read_unlock.exit184

rcu_read_unlock.exit184:                          ; preds = %if.then.i180, %land.lhs.true2.i179.rcu_read_unlock.exit184_crit_edge, %land.lhs.true.i177.rcu_read_unlock.exit184_crit_edge, %if.end34.rcu_read_unlock.exit184_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !251
  %17 = tail call i32 @llvm.read_register.i32(metadata !234) #12
  %and.i.i.i.i.i181 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i181 to ptr
  %preempt_count.i.i.i.i182 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i.i.i182 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i.i.i182, align 4
  %sub.i.i.i183 = add i32 %20, -1
  store volatile i32 %sub.i.i.i183, ptr %preempt_count.i.i.i.i182, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %sfcount.i = getelementptr inbounds %struct.ip_mc_list, ptr %pmc.0206, i32 0, i32 5
  %21 = ptrtoint ptr %sfcount.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sfcount.i, align 4
  %sources.i = getelementptr inbounds %struct.ip_mc_list, ptr %pmc.0206, i32 0, i32 3
  %23 = ptrtoint ptr %sources.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %psf.022.i = load ptr, ptr %sources.i, align 4
  %tobool.not23.i = icmp eq ptr %psf.022.i, null
  br i1 %tobool.not23.i, label %rcu_read_unlock.exit184.sf_markstate.exit_crit_edge, label %rcu_read_unlock.exit184.for.body.i_crit_edge

rcu_read_unlock.exit184.for.body.i_crit_edge:     ; preds = %rcu_read_unlock.exit184
  br label %for.body.i

rcu_read_unlock.exit184.sf_markstate.exit_crit_edge: ; preds = %rcu_read_unlock.exit184
  call void @__sanitizer_cov_trace_pc() #14
  br label %sf_markstate.exit

for.bodythread-pre-split.i:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %sfcount.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pr.i = load i32, ptr %sfcount.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.bodythread-pre-split.i, %rcu_read_unlock.exit184.for.body.i_crit_edge
  %25 = phi i32 [ %.pr.i, %for.bodythread-pre-split.i ], [ %22, %rcu_read_unlock.exit184.for.body.i_crit_edge ]
  %psf.024.i = phi ptr [ %psf.0.i, %for.bodythread-pre-split.i ], [ %psf.022.i, %rcu_read_unlock.exit184.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool3.not.i = icmp eq i32 %25, 0
  br i1 %tobool3.not.i, label %if.else.i, label %if.then.i185

if.then.i185:                                     ; preds = %for.body.i
  %sf_count.i = getelementptr inbounds %struct.ip_sf_list, ptr %psf.024.i, i32 0, i32 1
  %26 = ptrtoint ptr %sf_count.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sf_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %27)
  %cmp.i = icmp eq i32 %22, %27
  br i1 %cmp.i, label %land.rhs.i, label %if.then.i185.for.inc.i_crit_edge

if.then.i185.for.inc.i_crit_edge:                 ; preds = %if.then.i185
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.rhs.i:                                       ; preds = %if.then.i185
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx6.i = getelementptr %struct.ip_sf_list, ptr %psf.024.i, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool7.not.i = icmp eq i32 %29, 0
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx9.i = getelementptr %struct.ip_sf_list, ptr %psf.024.i, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp10.i = icmp ne i32 %31, 0
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %land.rhs.i, %if.then.i185.for.inc.i_crit_edge
  %.sink.i = phi i1 [ %cmp10.i, %if.else.i ], [ false, %if.then.i185.for.inc.i_crit_edge ], [ %tobool7.not.i, %land.rhs.i ]
  %conv.i = zext i1 %.sink.i to i8
  %sf_oldin.i = getelementptr inbounds %struct.ip_sf_list, ptr %psf.024.i, i32 0, i32 4
  %32 = ptrtoint ptr %sf_oldin.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv.i, ptr %sf_oldin.i, align 1
  %33 = ptrtoint ptr %psf.024.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %psf.0.i = load ptr, ptr %psf.024.i, align 4
  %tobool.not.i186 = icmp eq ptr %psf.0.i, null
  br i1 %tobool.not.i186, label %for.inc.i.sf_markstate.exit_crit_edge, label %for.bodythread-pre-split.i

for.inc.i.sf_markstate.exit_crit_edge:            ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sf_markstate.exit

sf_markstate.exit:                                ; preds = %for.inc.i.sf_markstate.exit_crit_edge, %rcu_read_unlock.exit184.sf_markstate.exit_crit_edge
  %sfmode35 = getelementptr inbounds %struct.ip_mc_list, ptr %pmc.0206, i32 0, i32 2
  %34 = ptrtoint ptr %sfmode35 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sfmode35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp36 = icmp ne i32 %35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %delta)
  %tobool37.not = icmp eq i32 %delta, 0
  br i1 %tobool37.not, label %if.then38, label %sf_markstate.exit.if.end40_crit_edge

sf_markstate.exit.if.end40_crit_edge:             ; preds = %sf_markstate.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

if.then38:                                        ; preds = %sf_markstate.exit
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx = getelementptr %struct.ip_mc_list, ptr %pmc.0206, i32 0, i32 5, i32 %sfmode
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx, align 4
  %inc = add i32 %37, 1
  store i32 %inc, ptr %arrayidx, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %sf_markstate.exit.if.end40_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sfcount)
  %cmp42207 = icmp sgt i32 %sfcount, 0
  br i1 %cmp42207, label %if.end40.for.body44_crit_edge, label %if.end40.if.else_crit_edge

if.end40.if.else_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.end40.for.body44_crit_edge:                    ; preds = %if.end40
  br label %for.body44

for.body44:                                       ; preds = %for.inc50.for.body44_crit_edge, %if.end40.for.body44_crit_edge
  %i.0208 = phi i32 [ %inc51, %for.inc50.for.body44_crit_edge ], [ 0, %if.end40.for.body44_crit_edge ]
  %arrayidx45 = getelementptr i32, ptr %psfsrc, i32 %i.0208
  %38 = ptrtoint ptr %sources.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %psf.036.i = load ptr, ptr %sources.i, align 4
  %tobool.not37.i = icmp eq ptr %psf.036.i, null
  br i1 %tobool.not37.i, label %for.body44.if.then2.critedge.i_crit_edge, label %for.body.lr.ph.i

for.body44.if.then2.critedge.i_crit_edge:         ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then2.critedge.i

for.body.lr.ph.i:                                 ; preds = %for.body44
  %39 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx45, align 4
  br label %for.body.i191

for.cond.i:                                       ; preds = %for.body.i191
  %41 = ptrtoint ptr %psf.038.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %psf.0.i188 = load ptr, ptr %psf.038.i, align 4
  %tobool.not.i189 = icmp eq ptr %psf.0.i188, null
  br i1 %tobool.not.i189, label %for.cond.i.if.then2.critedge.i_crit_edge, label %for.cond.i.for.body.i191_crit_edge

for.cond.i.for.body.i191_crit_edge:               ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i191

for.cond.i.if.then2.critedge.i_crit_edge:         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then2.critedge.i

for.body.i191:                                    ; preds = %for.cond.i.for.body.i191_crit_edge, %for.body.lr.ph.i
  %psf.038.i = phi ptr [ %psf.036.i, %for.body.lr.ph.i ], [ %psf.0.i188, %for.cond.i.for.body.i191_crit_edge ]
  %sf_inaddr.i = getelementptr inbounds %struct.ip_sf_list, ptr %psf.038.i, i32 0, i32 2
  %42 = ptrtoint ptr %sf_inaddr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %sf_inaddr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %40)
  %cmp.i190 = icmp eq i32 %43, %40
  br i1 %cmp.i190, label %for.body.i191.if.end12.i_crit_edge, label %for.cond.i

for.body.i191.if.end12.i_crit_edge:               ; preds = %for.body.i191
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i

if.then2.critedge.i:                              ; preds = %for.cond.i.if.then2.critedge.i_crit_edge, %for.body44.if.then2.critedge.i_crit_edge
  %psf_prev.0.lcssa.i = phi ptr [ null, %for.body44.if.then2.critedge.i_crit_edge ], [ %psf.038.i, %for.cond.i.if.then2.critedge.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %44 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %44, i32 noundef 2848, i32 noundef 20) #16
  %tobool3.not.i192 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool3.not.i192, label %if.then54, label %if.end5.i

if.end5.i:                                        ; preds = %if.then2.critedge.i
  call void @__sanitizer_cov_trace_pc() #14
  %45 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx45, align 4
  %sf_inaddr6.i = getelementptr inbounds %struct.ip_sf_list, ptr %call7.i.i.i, i32 0, i32 2
  %47 = ptrtoint ptr %sf_inaddr6.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %sf_inaddr6.i, align 4
  %tobool7.not.i193 = icmp eq ptr %psf_prev.0.lcssa.i, null
  %sources.psf_prev.0.lcssa.i = select i1 %tobool7.not.i193, ptr %sources.i, ptr %psf_prev.0.lcssa.i
  %48 = ptrtoint ptr %sources.psf_prev.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call7.i.i.i, ptr %sources.psf_prev.0.lcssa.i, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.end5.i, %for.body.i191.if.end12.i_crit_edge
  %psf.1.i = phi ptr [ %call7.i.i.i, %if.end5.i ], [ %psf.038.i, %for.body.i191.if.end12.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ip_sf_list, ptr %psf.1.i, i32 0, i32 1, i32 %sfmode
  %49 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.i, align 4
  %inc.i = add i32 %50, 1
  store i32 %inc.i, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp15.i = icmp eq i32 %50, 0
  br i1 %cmp15.i, label %if.then16.i, label %if.end12.i.for.inc50_crit_edge

if.end12.i.for.inc50_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc50

if.then16.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  %51 = ptrtoint ptr %pmc.0206 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pmc.0206, align 4
  tail call void @ip_rt_multicast_event(ptr noundef %52) #12
  br label %for.inc50

for.inc50:                                        ; preds = %if.then16.i, %if.end12.i.for.inc50_crit_edge
  %inc51 = add nuw nsw i32 %i.0208, 1
  %exitcond.not = icmp eq i32 %inc51, %sfcount
  br i1 %exitcond.not, label %for.inc50.if.else_crit_edge, label %for.inc50.for.body44_crit_edge

for.inc50.for.body44_crit_edge:                   ; preds = %for.inc50
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body44

for.inc50.if.else_crit_edge:                      ; preds = %for.inc50
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then54:                                        ; preds = %if.then2.critedge.i
  br i1 %tobool37.not, label %if.then56, label %if.then54.if.end59_crit_edge

if.then54.if.end59_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59

if.then56:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx58 = getelementptr %struct.ip_mc_list, ptr %pmc.0206, i32 0, i32 5, i32 %sfmode
  %53 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx58, align 4
  %dec = add i32 %54, -1
  store i32 %dec, ptr %arrayidx58, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then56, %if.then54.if.end59_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0208)
  %cmp61213.not = icmp eq i32 %i.0208, 0
  br i1 %cmp61213.not, label %if.end59.if.end116_crit_edge, label %if.end59.for.body63_crit_edge

if.end59.for.body63_crit_edge:                    ; preds = %if.end59
  br label %for.body63

if.end59.if.end116_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end116

for.body63:                                       ; preds = %for.body63.for.body63_crit_edge, %if.end59.for.body63_crit_edge
  %j.0214 = phi i32 [ %inc67, %for.body63.for.body63_crit_edge ], [ 0, %if.end59.for.body63_crit_edge ]
  %arrayidx64 = getelementptr i32, ptr %psfsrc, i32 %j.0214
  %call65 = tail call fastcc i32 @ip_mc_del1_src(ptr noundef nonnull %pmc.0206, i32 noundef %sfmode, ptr noundef %arrayidx64)
  %inc67 = add nuw nsw i32 %j.0214, 1
  %exitcond219.not = icmp eq i32 %inc67, %i.0208
  br i1 %exitcond219.not, label %for.body63.if.end116_crit_edge, label %for.body63.for.body63_crit_edge

for.body63.for.body63_crit_edge:                  ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body63

for.body63.if.end116_crit_edge:                   ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end116

if.else:                                          ; preds = %for.inc50.if.else_crit_edge, %if.end40.if.else_crit_edge
  %55 = ptrtoint ptr %sfcount.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %sfcount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp71 = icmp ne i32 %56, 0
  %cmp73.not = xor i1 %cmp36, %cmp71
  br i1 %cmp73.not, label %if.else110, label %if.then75

if.then75:                                        ; preds = %if.else
  %57 = ptrtoint ptr %pmc.0206 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pmc.0206, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %60, i32 0, i32 127
  %61 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %nd_net.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool80.not = icmp eq i32 %56, 0
  br i1 %tobool80.not, label %if.else83, label %if.then75.if.end90.sink.split_crit_edge

if.then75.if.end90.sink.split_crit_edge:          ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end90.sink.split

if.else83:                                        ; preds = %if.then75
  %arrayidx85 = getelementptr %struct.ip_mc_list, ptr %pmc.0206, i32 0, i32 5, i32 1
  %63 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx85, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool86.not = icmp eq i32 %64, 0
  br i1 %tobool86.not, label %if.else83.if.end90_crit_edge, label %if.else83.if.end90.sink.split_crit_edge

if.else83.if.end90.sink.split_crit_edge:          ; preds = %if.else83
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end90.sink.split

if.else83.if.end90_crit_edge:                     ; preds = %if.else83
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end90

if.end90.sink.split:                              ; preds = %if.else83.if.end90.sink.split_crit_edge, %if.then75.if.end90.sink.split_crit_edge
  %.sink = phi i32 [ 0, %if.then75.if.end90.sink.split_crit_edge ], [ 1, %if.else83.if.end90.sink.split_crit_edge ]
  %65 = ptrtoint ptr %sfmode35 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %.sink, ptr %sfmode35, align 4
  br label %if.end90

if.end90:                                         ; preds = %if.end90.sink.split, %if.else83.if.end90_crit_edge
  %mr_qrv = getelementptr inbounds %struct.in_device, ptr %58, i32 0, i32 15
  %66 = ptrtoint ptr %mr_qrv to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %mr_qrv, align 4
  %conv91 = zext i8 %67 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool92.not = icmp eq i8 %67, 0
  br i1 %tobool92.not, label %cond.false, label %if.end90.cond.end_crit_edge

if.end90.cond.end_crit_edge:                      ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #14
  %sysctl_igmp_qrv = getelementptr inbounds %struct.net, ptr %62, i32 0, i32 35, i32 122
  %68 = ptrtoint ptr %sysctl_igmp_qrv to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %sysctl_igmp_qrv, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end90.cond.end_crit_edge
  %cond = phi i32 [ %69, %cond.false ], [ %conv91, %if.end90.cond.end_crit_edge ]
  %conv93 = trunc i32 %cond to i8
  %crcount = getelementptr inbounds %struct.ip_mc_list, ptr %pmc.0206, i32 0, i32 17
  %70 = ptrtoint ptr %crcount to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv93, ptr %crcount, align 1
  %conv100 = and i32 %cond, 255
  %mr_ifc_count = getelementptr inbounds %struct.in_device, ptr %58, i32 0, i32 17
  %71 = ptrtoint ptr %mr_ifc_count to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile i32 %conv100, ptr %mr_ifc_count, align 4
  %72 = ptrtoint ptr %sources.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %psf.0210 = load ptr, ptr %sources.i, align 4
  %tobool106.not211 = icmp eq ptr %psf.0210, null
  br i1 %tobool106.not211, label %cond.end.for.end109_crit_edge, label %cond.end.for.body107_crit_edge

cond.end.for.body107_crit_edge:                   ; preds = %cond.end
  br label %for.body107

cond.end.for.end109_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end109

for.body107:                                      ; preds = %for.body107.for.body107_crit_edge, %cond.end.for.body107_crit_edge
  %psf.0212 = phi ptr [ %psf.0, %for.body107.for.body107_crit_edge ], [ %psf.0210, %cond.end.for.body107_crit_edge ]
  %sf_crcount = getelementptr inbounds %struct.ip_sf_list, ptr %psf.0212, i32 0, i32 5
  %73 = ptrtoint ptr %sf_crcount to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %sf_crcount, align 2
  %74 = ptrtoint ptr %psf.0212 to i32
  call void @__asan_load4_noabort(i32 %74)
  %psf.0 = load ptr, ptr %psf.0212, align 4
  %tobool106.not = icmp eq ptr %psf.0, null
  br i1 %tobool106.not, label %for.body107.for.end109_crit_edge, label %for.body107.for.body107_crit_edge

for.body107.for.body107_crit_edge:                ; preds = %for.body107
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body107

for.body107.for.end109_crit_edge:                 ; preds = %for.body107
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end109

for.end109:                                       ; preds = %for.body107.for.end109_crit_edge, %cond.end.for.end109_crit_edge
  tail call fastcc void @igmp_ifc_event(ptr noundef %58)
  br label %if.end116

if.else110:                                       ; preds = %if.else
  %call111 = tail call fastcc i32 @sf_setstate(ptr noundef nonnull %pmc.0206)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %if.else110.if.end116_crit_edge, label %if.then113

if.else110.if.end116_crit_edge:                   ; preds = %if.else110
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end116

if.then113:                                       ; preds = %if.else110
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @igmp_ifc_event(ptr noundef nonnull %in_dev)
  br label %if.end116

if.end116:                                        ; preds = %if.then113, %if.else110.if.end116_crit_edge, %for.end109, %for.body63.if.end116_crit_edge, %if.end59.if.end116_crit_edge
  %err.1198 = phi i32 [ 0, %for.end109 ], [ 0, %if.then113 ], [ 0, %if.else110.if.end116_crit_edge ], [ -105, %if.end59.if.end116_crit_edge ], [ -105, %for.body63.if.end116_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end116, %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1198, %if.end116 ], [ -3, %rcu_read_unlock.exit ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ip_mc_del_src(ptr noundef %in_dev, ptr nocapture noundef readonly %pmca, i32 noundef %sfmode, i32 noundef %sfcount, ptr nocapture noundef readonly %psfsrc, i32 noundef %delta) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %in_dev, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !234) #12
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !248
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.49, i32 noundef 696, ptr noundef nonnull @.str.50) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %mc_list = getelementptr inbounds %struct.in_device, ptr %in_dev, i32 0, i32 5
  %4 = ptrtoint ptr %mc_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %mc_list, align 4
  %call = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end10_crit_edge

rcu_read_lock.exit.do.end10_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end10_crit_edge, label %land.lhs.true5

land.lhs.true.do.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b138 = load i1, ptr @ip_mc_del_src.__warned, align 1
  br i1 %.b138, label %land.lhs.true5.do.end10_crit_edge, label %if.then7

land.lhs.true5.do.end10_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

if.then7:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ip_mc_del_src.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1911, ptr noundef nonnull @.str.20) #12
  br label %do.end10

do.end10:                                         ; preds = %if.then7, %land.lhs.true5.do.end10_crit_edge, %land.lhs.true.do.end10_crit_edge, %rcu_read_lock.exit.do.end10_crit_edge
  %cmp.not163 = icmp eq ptr %5, null
  br i1 %cmp.not163, label %do.end10.if.then33.critedge_crit_edge, label %do.end10.for.body_crit_edge

do.end10.for.body_crit_edge:                      ; preds = %do.end10
  br label %for.body

do.end10.if.then33.critedge_crit_edge:            ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then33.critedge

for.body:                                         ; preds = %do.end30.for.body_crit_edge, %do.end10.for.body_crit_edge
  %pmc.0164 = phi ptr [ %12, %do.end30.for.body_crit_edge ], [ %5, %do.end10.for.body_crit_edge ]
  %6 = ptrtoint ptr %pmca to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pmca, align 4
  %multiaddr = getelementptr inbounds %struct.ip_mc_list, ptr %pmc.0164, i32 0, i32 1
  %8 = ptrtoint ptr %multiaddr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %multiaddr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp12 = icmp eq i32 %7, %9
  br i1 %cmp12, label %if.end34, label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = getelementptr inbounds %struct.ip_mc_list, ptr %pmc.0164, i32 0, i32 6
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %10, align 4
  %call20 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %land.lhs.true22, label %for.inc.do.end30_crit_edge

for.inc.do.end30_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end30

land.lhs.true22:                                  ; preds = %for.inc
  %call23 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %land.lhs.true22.do.end30_crit_edge, label %land.lhs.true25

land.lhs.true22.do.end30_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end30

land.lhs.true25:                                  ; preds = %land.lhs.true22
  %.b136137 = load i1, ptr @ip_mc_del_src.__warned.45, align 1
  br i1 %.b136137, label %land.lhs.true25.do.end30_crit_edge, label %if.then27

land.lhs.true25.do.end30_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end30

if.then27:                                        ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ip_mc_del_src.__warned.45, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1911, ptr noundef nonnull @.str.20) #12
  br label %do.end30

do.end30:                                         ; preds = %if.then27, %land.lhs.true25.do.end30_crit_edge, %land.lhs.true22.do.end30_crit_edge, %for.inc.do.end30_crit_edge
  %cmp.not = icmp eq ptr %12, null
  br i1 %cmp.not, label %do.end30.if.then33.critedge_crit_edge, label %do.end30.for.body_crit_edge

do.end30.for.body_crit_edge:                      ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

do.end30.if.then33.critedge_crit_edge:            ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then33.critedge

if.then33.critedge:                               ; preds = %do.end30.if.then33.critedge_crit_edge, %do.end10.if.then33.critedge_crit_edge
  %call.i139 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i139, label %if.then33.critedge.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i142

if.then33.critedge.rcu_read_unlock.exit_crit_edge: ; preds = %if.then33.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i142:                               ; preds = %if.then33.critedge
  %call1.i140 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i140)
  %tobool.not.i141 = icmp eq i32 %call1.i140, 0
  br i1 %tobool.not.i141, label %land.lhs.true.i142.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i144

land.lhs.true.i142.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i142
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i144:                              ; preds = %land.lhs.true.i142
  %.b4.i143 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i143, label %land.lhs.true2.i144.rcu_read_unlock.exit_crit_edge, label %if.then.i145

land.lhs.true2.i144.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i144
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i145:                                     ; preds = %land.lhs.true2.i144
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.49, i32 noundef 724, ptr noundef nonnull @.str.51) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i145, %land.lhs.true2.i144.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i142.rcu_read_unlock.exit_crit_edge, %if.then33.critedge.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !251
  %13 = tail call i32 @llvm.read_register.i32(metadata !234) #12
  %and.i.i.i.i.i146 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i146 to ptr
  %preempt_count.i.i.i.i147 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i147 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i147, align 4
  %sub.i.i.i = add i32 %16, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i147, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %cleanup

if.end34:                                         ; preds = %for.body
  %lock = getelementptr inbounds %struct.ip_mc_list, ptr %pmc.0164, i32 0, i32 11
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  %call.i148 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i148, label %if.end34.rcu_read_unlock.exit158_crit_edge, label %land.lhs.true.i151

if.end34.rcu_read_unlock.exit158_crit_edge:       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit158

land.lhs.true.i151:                               ; preds = %if.end34
  %call1.i149 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i149)
  %tobool.not.i150 = icmp eq i32 %call1.i149, 0
  br i1 %tobool.not.i150, label %land.lhs.true.i151.rcu_read_unlock.exit158_crit_edge, label %land.lhs.true2.i153

land.lhs.true.i151.rcu_read_unlock.exit158_crit_edge: ; preds = %land.lhs.true.i151
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit158

land.lhs.true2.i153:                              ; preds = %land.lhs.true.i151
  %.b4.i152 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i152, label %land.lhs.true2.i153.rcu_read_unlock.exit158_crit_edge, label %if.then.i154

land.lhs.true2.i153.rcu_read_unlock.exit158_crit_edge: ; preds = %land.lhs.true2.i153
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit158

if.then.i154:                                     ; preds = %land.lhs.true2.i153
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.49, i32 noundef 724, ptr noundef nonnull @.str.51) #12
  br label %rcu_read_unlock.exit158

rcu_read_unlock.exit158:                          ; preds = %if.then.i154, %land.lhs.true2.i153.rcu_read_unlock.exit158_crit_edge, %land.lhs.true.i151.rcu_read_unlock.exit158_crit_edge, %if.end34.rcu_read_unlock.exit158_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !251
  %17 = tail call i32 @llvm.read_register.i32(metadata !234) #12
  %and.i.i.i.i.i155 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i155 to ptr
  %preempt_count.i.i.i.i156 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i.i.i156 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i.i.i156, align 4
  %sub.i.i.i157 = add i32 %20, -1
  store volatile i32 %sub.i.i.i157, ptr %preempt_count.i.i.i.i156, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %sfcount.i = getelementptr inbounds %struct.ip_mc_list, ptr %pmc.0164, i32 0, i32 5
  %21 = ptrtoint ptr %sfcount.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sfcount.i, align 4
  %sources.i = getelementptr inbounds %struct.ip_mc_list, ptr %pmc.0164, i32 0, i32 3
  %23 = ptrtoint ptr %sources.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %psf.022.i = load ptr, ptr %sources.i, align 4
  %tobool.not23.i = icmp eq ptr %psf.022.i, null
  br i1 %tobool.not23.i, label %rcu_read_unlock.exit158.sf_markstate.exit_crit_edge, label %rcu_read_unlock.exit158.for.body.i_crit_edge

rcu_read_unlock.exit158.for.body.i_crit_edge:     ; preds = %rcu_read_unlock.exit158
  br label %for.body.i

rcu_read_unlock.exit158.sf_markstate.exit_crit_edge: ; preds = %rcu_read_unlock.exit158
  call void @__sanitizer_cov_trace_pc() #14
  br label %sf_markstate.exit

for.bodythread-pre-split.i:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %sfcount.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pr.i = load i32, ptr %sfcount.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.bodythread-pre-split.i, %rcu_read_unlock.exit158.for.body.i_crit_edge
  %25 = phi i32 [ %.pr.i, %for.bodythread-pre-split.i ], [ %22, %rcu_read_unlock.exit158.for.body.i_crit_edge ]
  %psf.024.i = phi ptr [ %psf.0.i, %for.bodythread-pre-split.i ], [ %psf.022.i, %rcu_read_unlock.exit158.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool3.not.i = icmp eq i32 %25, 0
  br i1 %tobool3.not.i, label %if.else.i, label %if.then.i159

if.then.i159:                                     ; preds = %for.body.i
  %sf_count.i = getelementptr inbounds %struct.ip_sf_list, ptr %psf.024.i, i32 0, i32 1
  %26 = ptrtoint ptr %sf_count.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sf_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %27)
  %cmp.i = icmp eq i32 %22, %27
  br i1 %cmp.i, label %land.rhs.i, label %if.then.i159.for.inc.i_crit_edge

if.then.i159.for.inc.i_crit_edge:                 ; preds = %if.then.i159
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.rhs.i:                                       ; preds = %if.then.i159
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx6.i = getelementptr %struct.ip_sf_list, ptr %psf.024.i, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool7.not.i = icmp eq i32 %29, 0
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx9.i = getelementptr %struct.ip_sf_list, ptr %psf.024.i, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp10.i = icmp ne i32 %31, 0
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %land.rhs.i, %if.then.i159.for.inc.i_crit_edge
  %.sink.i = phi i1 [ %cmp10.i, %if.else.i ], [ false, %if.then.i159.for.inc.i_crit_edge ], [ %tobool7.not.i, %land.rhs.i ]
  %conv.i = zext i1 %.sink.i to i8
  %sf_oldin.i = getelementptr inbounds %struct.ip_sf_list, ptr %psf.024.i, i32 0, i32 4
  %32 = ptrtoint ptr %sf_oldin.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv.i, ptr %sf_oldin.i, align 1
  %33 = ptrtoint ptr %psf.024.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %psf.0.i = load ptr, ptr %psf.024.i, align 4
  %tobool.not.i160 = icmp eq ptr %psf.0.i, null
  br i1 %tobool.not.i160, label %for.inc.i.sf_markstate.exit_crit_edge, label %for.bodythread-pre-split.i

for.inc.i.sf_markstate.exit_crit_edge:            ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sf_markstate.exit

sf_markstate.exit:                                ; preds = %for.inc.i.sf_markstate.exit_crit_edge, %rcu_read_unlock.exit158.sf_markstate.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %delta)
  %tobool35.not = icmp eq i32 %delta, 0
  br i1 %tobool35.not, label %if.then36, label %sf_markstate.exit.if.end43_crit_edge

sf_markstate.exit.if.end43_crit_edge:             ; preds = %sf_markstate.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

if.then36:                                        ; preds = %sf_markstate.exit
  %arrayidx = getelementptr %struct.ip_mc_list, ptr %pmc.0164, i32 0, i32 5, i32 %sfmode
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool38.not = icmp eq i32 %35, 0
  br i1 %tobool38.not, label %if.then36.out_unlock_crit_edge, label %if.end40

if.then36.out_unlock_crit_edge:                   ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.end40:                                         ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #14
  %dec = add i32 %35, -1
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %dec, ptr %arrayidx, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.end40, %sf_markstate.exit.if.end43_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sfcount)
  %cmp45165 = icmp sgt i32 %sfcount, 0
  br i1 %cmp45165, label %if.end43.for.body46_crit_edge, label %if.end43.for.end57_crit_edge

if.end43.for.end57_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end57

if.end43.for.body46_crit_edge:                    ; preds = %if.end43
  br label %for.body46

for.body46:                                       ; preds = %for.body46.for.body46_crit_edge, %if.end43.for.body46_crit_edge
  %changerec.0168 = phi i32 [ %or, %for.body46.for.body46_crit_edge ], [ 0, %if.end43.for.body46_crit_edge ]
  %i.0167 = phi i32 [ %inc, %for.body46.for.body46_crit_edge ], [ 0, %if.end43.for.body46_crit_edge ]
  %err.0166 = phi i32 [ %err.1, %for.body46.for.body46_crit_edge ], [ 0, %if.end43.for.body46_crit_edge ]
  %arrayidx47 = getelementptr i32, ptr %psfsrc, i32 %i.0167
  %call48 = tail call fastcc i32 @ip_mc_del1_src(ptr noundef nonnull %pmc.0164, i32 noundef %sfmode, ptr noundef %arrayidx47)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49 = icmp sgt i32 %call48, 0
  %conv = zext i1 %cmp49 to i32
  %or = or i32 %changerec.0168, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0166)
  %tobool50.not = icmp eq i32 %err.0166, 0
  %37 = tail call i32 @llvm.smin.i32(i32 %call48, i32 0)
  %err.1 = select i1 %tobool50.not, i32 %37, i32 %err.0166
  %inc = add nuw nsw i32 %i.0167, 1
  %exitcond.not = icmp eq i32 %inc, %sfcount
  br i1 %exitcond.not, label %for.body46.for.end57_crit_edge, label %for.body46.for.body46_crit_edge

for.body46.for.body46_crit_edge:                  ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body46

for.body46.for.end57_crit_edge:                   ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end57

for.end57:                                        ; preds = %for.body46.for.end57_crit_edge, %if.end43.for.end57_crit_edge
  %err.0.lcssa = phi i32 [ 0, %if.end43.for.end57_crit_edge ], [ %err.1, %for.body46.for.end57_crit_edge ]
  %changerec.0.lcssa = phi i32 [ 0, %if.end43.for.end57_crit_edge ], [ %or, %for.body46.for.end57_crit_edge ]
  %sfmode58 = getelementptr inbounds %struct.ip_mc_list, ptr %pmc.0164, i32 0, i32 2
  %38 = ptrtoint ptr %sfmode58 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sfmode58, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp59 = icmp eq i32 %39, 0
  br i1 %cmp59, label %land.lhs.true61, label %for.end57.if.else_crit_edge

for.end57.if.else_crit_edge:                      ; preds = %for.end57
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true61:                                  ; preds = %for.end57
  %40 = ptrtoint ptr %sfcount.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sfcount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp64 = icmp eq i32 %41, 0
  br i1 %cmp64, label %land.lhs.true66, label %land.lhs.true61.if.else_crit_edge

land.lhs.true61.if.else_crit_edge:                ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true66:                                  ; preds = %land.lhs.true61
  %arrayidx68 = getelementptr %struct.ip_mc_list, ptr %pmc.0164, i32 0, i32 5, i32 1
  %42 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx68, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool69.not = icmp eq i32 %43, 0
  br i1 %tobool69.not, label %land.lhs.true66.if.else_crit_edge, label %if.then70

land.lhs.true66.if.else_crit_edge:                ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then70:                                        ; preds = %land.lhs.true66
  %44 = ptrtoint ptr %in_dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %in_dev, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %45, i32 0, i32 127
  %46 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %nd_net.i, align 4
  %48 = ptrtoint ptr %sfmode58 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %sfmode58, align 4
  %mr_qrv = getelementptr inbounds %struct.in_device, ptr %in_dev, i32 0, i32 15
  %49 = ptrtoint ptr %mr_qrv to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %mr_qrv, align 4
  %conv73 = zext i8 %50 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool74.not = icmp eq i8 %50, 0
  br i1 %tobool74.not, label %cond.false, label %if.then70.cond.end_crit_edge

if.then70.cond.end_crit_edge:                     ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #14
  %sysctl_igmp_qrv = getelementptr inbounds %struct.net, ptr %47, i32 0, i32 35, i32 122
  %51 = ptrtoint ptr %sysctl_igmp_qrv to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %sysctl_igmp_qrv, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then70.cond.end_crit_edge
  %cond = phi i32 [ %52, %cond.false ], [ %conv73, %if.then70.cond.end_crit_edge ]
  %conv75 = trunc i32 %cond to i8
  %crcount = getelementptr inbounds %struct.ip_mc_list, ptr %pmc.0164, i32 0, i32 17
  %53 = ptrtoint ptr %crcount to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv75, ptr %crcount, align 1
  %conv82 = and i32 %cond, 255
  %mr_ifc_count = getelementptr inbounds %struct.in_device, ptr %in_dev, i32 0, i32 17
  %54 = ptrtoint ptr %mr_ifc_count to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile i32 %conv82, ptr %mr_ifc_count, align 4
  %55 = ptrtoint ptr %sources.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %psf.0170 = load ptr, ptr %sources.i, align 4
  %tobool88.not171 = icmp eq ptr %psf.0170, null
  br i1 %tobool88.not171, label %cond.end.out_unlock.sink.split_crit_edge, label %cond.end.for.body89_crit_edge

cond.end.for.body89_crit_edge:                    ; preds = %cond.end
  br label %for.body89

cond.end.out_unlock.sink.split_crit_edge:         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock.sink.split

for.body89:                                       ; preds = %for.body89.for.body89_crit_edge, %cond.end.for.body89_crit_edge
  %psf.0172 = phi ptr [ %psf.0, %for.body89.for.body89_crit_edge ], [ %psf.0170, %cond.end.for.body89_crit_edge ]
  %sf_crcount = getelementptr inbounds %struct.ip_sf_list, ptr %psf.0172, i32 0, i32 5
  %56 = ptrtoint ptr %sf_crcount to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %sf_crcount, align 2
  %57 = ptrtoint ptr %psf.0172 to i32
  call void @__asan_load4_noabort(i32 %57)
  %psf.0 = load ptr, ptr %psf.0172, align 4
  %tobool88.not = icmp eq ptr %psf.0, null
  br i1 %tobool88.not, label %for.body89.out_unlock.sink.split_crit_edge, label %for.body89.for.body89_crit_edge

for.body89.for.body89_crit_edge:                  ; preds = %for.body89
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body89

for.body89.out_unlock.sink.split_crit_edge:       ; preds = %for.body89
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock.sink.split

if.else:                                          ; preds = %land.lhs.true66.if.else_crit_edge, %land.lhs.true61.if.else_crit_edge, %for.end57.if.else_crit_edge
  %call92 = tail call fastcc i32 @sf_setstate(ptr noundef nonnull %pmc.0164)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %changerec.0.lcssa)
  %tobool94.not = icmp eq i32 %changerec.0.lcssa, 0
  %or.cond = select i1 %tobool93.not, i1 %tobool94.not, i1 false
  br i1 %or.cond, label %if.else.out_unlock_crit_edge, label %if.else.out_unlock.sink.split_crit_edge

if.else.out_unlock.sink.split_crit_edge:          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock.sink.split

if.else.out_unlock_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

out_unlock.sink.split:                            ; preds = %if.else.out_unlock.sink.split_crit_edge, %for.body89.out_unlock.sink.split_crit_edge, %cond.end.out_unlock.sink.split_crit_edge
  %58 = ptrtoint ptr %pmc.0164 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pmc.0164, align 4
  tail call fastcc void @igmp_ifc_event(ptr noundef %59)
  br label %out_unlock

out_unlock:                                       ; preds = %out_unlock.sink.split, %if.else.out_unlock_crit_edge, %if.then36.out_unlock_crit_edge
  %err.2 = phi i32 [ -22, %if.then36.out_unlock_crit_edge ], [ %err.0.lcssa, %if.else.out_unlock_crit_edge ], [ %err.0.lcssa, %out_unlock.sink.split ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.2, %out_unlock ], [ -3, %rcu_read_unlock.exit ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip_mc_msfilter(ptr noundef %sk, ptr nocapture noundef readonly %msf, i32 noundef %ifindex) local_unnamed_addr #0 align 64 {
entry:
  %imr = alloca %struct.ip_mreqn, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %imr) #12
  %0 = getelementptr inbounds %struct.ip_mreqn, ptr %imr, i32 0, i32 1
  %1 = getelementptr inbounds %struct.ip_mreqn, ptr %imr, i32 0, i32 2
  %2 = ptrtoint ptr %msf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msf, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %4 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %skc_net.i, align 4
  %and.i = and i32 %3, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, -536870912
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %imsf_fmode = getelementptr inbounds %struct.anon.153, ptr %msf, i32 0, i32 2
  %6 = ptrtoint ptr %imsf_fmode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %imsf_fmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %switch = icmp ult i32 %7, 2
  br i1 %switch, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @rtnl_is_locked() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %land.rhs, label %if.end6.if.end38_crit_edge

if.end6.if.end38_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

land.rhs:                                         ; preds = %if.end6
  %.b276 = load i1, ptr @ip_mc_msfilter.__already_done, align 1
  br i1 %.b276, label %land.rhs.if.end38_crit_edge, label %if.then16, !prof !250

land.rhs.if.end38_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

if.then16:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ip_mc_msfilter.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2452, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 2452) #12
  br label %if.end38

if.end38:                                         ; preds = %if.then16, %land.rhs.if.end38_crit_edge, %if.end6.if.end38_crit_edge
  %8 = ptrtoint ptr %msf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msf, align 4
  %10 = ptrtoint ptr %imr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %imr, align 4
  %imsf_interface = getelementptr inbounds %struct.anon.153, ptr %msf, i32 0, i32 1
  %11 = ptrtoint ptr %imsf_interface to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %imsf_interface, align 4
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %0, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %ifindex, ptr %1, align 4
  %call48 = call fastcc ptr @ip_mc_find_dev(ptr noundef %5, ptr noundef nonnull %imr)
  %tobool49.not = icmp eq ptr %call48, null
  br i1 %tobool49.not, label %if.end38.cleanup_crit_edge, label %if.end51

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end51:                                         ; preds = %if.end38
  %15 = ptrtoint ptr %imsf_fmode to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %imsf_fmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp53 = icmp eq i32 %16, 1
  br i1 %cmp53, label %land.lhs.true54, label %if.end51.do.body58_crit_edge

if.end51.do.body58_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body58

land.lhs.true54:                                  ; preds = %if.end51
  %imsf_numsrc = getelementptr inbounds %struct.anon.153, ptr %msf, i32 0, i32 3
  %17 = ptrtoint ptr %imsf_numsrc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %imsf_numsrc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp55 = icmp eq i32 %18, 0
  br i1 %cmp55, label %if.then203, label %land.lhs.true54.do.body58_crit_edge

land.lhs.true54.do.body58_crit_edge:              ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body58

do.body58:                                        ; preds = %land.lhs.true54.do.body58_crit_edge, %if.end51.do.body58_crit_edge
  %call59 = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call59, label %do.body58.do.end68_crit_edge, label %land.lhs.true60

do.body58.do.end68_crit_edge:                     ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end68

land.lhs.true60:                                  ; preds = %do.body58
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true60.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true60.do.end68_crit_edge:               ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true60
  %.b270275 = load i1, ptr @ip_mc_msfilter.__warned, align 1
  br i1 %.b270275, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ip_mc_msfilter.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2470, ptr noundef nonnull @.str.2) #12
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true60.do.end68_crit_edge, %do.body58.do.end68_crit_edge
  %mc_list = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 18
  %19 = ptrtoint ptr %mc_list to i32
  call void @__asan_load4_noabort(i32 %19)
  %pmc.0286 = load ptr, ptr %mc_list, align 4
  %cmp70.not287 = icmp eq ptr %pmc.0286, null
  br i1 %cmp70.not287, label %do.end68.cleanup_crit_edge, label %do.end68.for.body_crit_edge

do.end68.for.body_crit_edge:                      ; preds = %do.end68
  br label %for.body

do.end68.cleanup_crit_edge:                       ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %do.end92.for.body_crit_edge, %do.end68.for.body_crit_edge
  %pmc.0288 = phi ptr [ %pmc.0, %do.end92.for.body_crit_edge ], [ %pmc.0286, %do.end68.for.body_crit_edge ]
  %multi = getelementptr inbounds %struct.ip_mc_socklist, ptr %pmc.0288, i32 0, i32 1
  %20 = ptrtoint ptr %multi to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %multi, align 4
  %22 = ptrtoint ptr %msf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %msf, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp74 = icmp eq i32 %21, %23
  br i1 %cmp74, label %land.lhs.true75, label %for.body.do.body82_crit_edge

for.body.do.body82_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body82

land.lhs.true75:                                  ; preds = %for.body
  %imr_ifindex77 = getelementptr inbounds %struct.ip_mc_socklist, ptr %pmc.0288, i32 0, i32 1, i32 2
  %24 = ptrtoint ptr %imr_ifindex77 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %imr_ifindex77, align 4
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp79 = icmp eq i32 %25, %27
  br i1 %cmp79, label %if.end96, label %land.lhs.true75.do.body82_crit_edge

land.lhs.true75.do.body82_crit_edge:              ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body82

do.body82:                                        ; preds = %land.lhs.true75.do.body82_crit_edge, %for.body.do.body82_crit_edge
  %call83 = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call83, label %do.body82.do.end92_crit_edge, label %land.lhs.true84

do.body82.do.end92_crit_edge:                     ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end92

land.lhs.true84:                                  ; preds = %do.body82
  %call85 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %land.lhs.true84.do.end92_crit_edge, label %land.lhs.true87

land.lhs.true84.do.end92_crit_edge:               ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end92

land.lhs.true87:                                  ; preds = %land.lhs.true84
  %.b271274 = load i1, ptr @ip_mc_msfilter.__warned.14, align 1
  br i1 %.b271274, label %land.lhs.true87.do.end92_crit_edge, label %if.then89

land.lhs.true87.do.end92_crit_edge:               ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end92

if.then89:                                        ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ip_mc_msfilter.__warned.14, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2470, ptr noundef nonnull @.str.2) #12
  br label %do.end92

do.end92:                                         ; preds = %if.then89, %land.lhs.true87.do.end92_crit_edge, %land.lhs.true84.do.end92_crit_edge, %do.body82.do.end92_crit_edge
  %28 = ptrtoint ptr %pmc.0288 to i32
  call void @__asan_load4_noabort(i32 %28)
  %pmc.0 = load ptr, ptr %pmc.0288, align 4
  %cmp70.not = icmp eq ptr %pmc.0, null
  br i1 %cmp70.not, label %do.end92.cleanup_crit_edge, label %do.end92.for.body_crit_edge

do.end92.for.body_crit_edge:                      ; preds = %do.end92
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

do.end92.cleanup_crit_edge:                       ; preds = %do.end92
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end96:                                         ; preds = %land.lhs.true75
  %imsf_numsrc97 = getelementptr inbounds %struct.anon.153, ptr %msf, i32 0, i32 3
  %29 = ptrtoint ptr %imsf_numsrc97 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %imsf_numsrc97, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool98.not = icmp eq i32 %30, 0
  br i1 %tobool98.not, label %if.else, label %if.then99

if.then99:                                        ; preds = %if.end96
  %31 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %30, i32 4) #12
  %32 = extractvalue { i32, i1 } %31, 1
  %33 = extractvalue { i32, i1 } %31, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %33, i32 16) #12
  %retval.0.i = select i1 %32, i32 -1, i32 %spec.select.i
  %call102 = tail call ptr @sock_kmalloc(ptr noundef %sk, i32 noundef %retval.0.i, i32 noundef 3264) #12
  %tobool103.not = icmp eq ptr %call102, null
  br i1 %tobool103.not, label %if.then99.cleanup_crit_edge, label %if.end105

if.then99.cleanup_crit_edge:                      ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end105:                                        ; preds = %if.then99
  %34 = ptrtoint ptr %imsf_numsrc97 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %imsf_numsrc97, align 4
  %sl_count = getelementptr inbounds %struct.ip_sf_socklist, ptr %call102, i32 0, i32 1
  %36 = ptrtoint ptr %sl_count to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %sl_count, align 4
  %37 = ptrtoint ptr %call102 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %35, ptr %call102, align 4
  %sl_addr = getelementptr inbounds %struct.ip_sf_socklist, ptr %call102, i32 0, i32 3
  %imsf_slist_flex = getelementptr inbounds %struct.anon.153, ptr %msf, i32 0, i32 4
  %38 = load i32, ptr %imsf_numsrc97, align 4
  %39 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %38, i32 4) #12
  %40 = extractvalue { i32, i1 } %39, 1
  %41 = extractvalue { i32, i1 } %39, 0
  %retval.0.i277 = select i1 %40, i32 -1, i32 %41
  %42 = call ptr @memcpy(ptr %sl_addr, ptr %imsf_slist_flex, i32 %retval.0.i277)
  %43 = ptrtoint ptr %imsf_fmode to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %imsf_fmode, align 4
  %call115 = tail call fastcc i32 @ip_mc_add_src(ptr noundef nonnull %call48, ptr noundef %msf, i32 noundef %44, i32 noundef %35, ptr noundef %sl_addr, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %if.end105.do.body125_crit_edge, label %if.then117

if.end105.do.body125_crit_edge:                   ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body125

if.then117:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #14
  %45 = ptrtoint ptr %call102 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %call102, align 4
  %47 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %46, i32 4) #12
  %48 = extractvalue { i32, i1 } %47, 1
  %49 = extractvalue { i32, i1 } %47, 0
  %spec.select.i278 = tail call i32 @llvm.uadd.sat.i32(i32 %49, i32 16) #12
  %retval.0.i279 = select i1 %48, i32 -1, i32 %spec.select.i278
  tail call void @sock_kfree_s(ptr noundef %sk, ptr noundef nonnull %call102, i32 noundef %retval.0.i279) #12
  br label %cleanup

if.else:                                          ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #14
  %50 = ptrtoint ptr %imsf_fmode to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %imsf_fmode, align 4
  %call123 = tail call fastcc i32 @ip_mc_add_src(ptr noundef nonnull %call48, ptr noundef %msf, i32 noundef %51, i32 noundef 0, ptr noundef null, i32 noundef 0)
  br label %do.body125

do.body125:                                       ; preds = %if.else, %if.end105.do.body125_crit_edge
  %newpsl.0 = phi ptr [ %call102, %if.end105.do.body125_crit_edge ], [ null, %if.else ]
  %call126 = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call126, label %do.body125.do.end135_crit_edge, label %land.lhs.true127

do.body125.do.end135_crit_edge:                   ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end135

land.lhs.true127:                                 ; preds = %do.body125
  %call128 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %tobool129.not = icmp eq i32 %call128, 0
  br i1 %tobool129.not, label %land.lhs.true127.do.end135_crit_edge, label %land.lhs.true130

land.lhs.true127.do.end135_crit_edge:             ; preds = %land.lhs.true127
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end135

land.lhs.true130:                                 ; preds = %land.lhs.true127
  %.b272273 = load i1, ptr @ip_mc_msfilter.__warned.15, align 1
  br i1 %.b272273, label %land.lhs.true130.do.end135_crit_edge, label %if.then132

land.lhs.true130.do.end135_crit_edge:             ; preds = %land.lhs.true130
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end135

if.then132:                                       ; preds = %land.lhs.true130
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ip_mc_msfilter.__warned.15, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2503, ptr noundef nonnull @.str.2) #12
  br label %do.end135

do.end135:                                        ; preds = %if.then132, %land.lhs.true130.do.end135_crit_edge, %land.lhs.true127.do.end135_crit_edge, %do.body125.do.end135_crit_edge
  %sflist = getelementptr inbounds %struct.ip_mc_socklist, ptr %pmc.0288, i32 0, i32 3
  %52 = ptrtoint ptr %sflist to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sflist, align 4
  %tobool137.not = icmp eq ptr %53, null
  %sfmode157 = getelementptr inbounds %struct.ip_mc_socklist, ptr %pmc.0288, i32 0, i32 2
  %54 = ptrtoint ptr %sfmode157 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %sfmode157, align 4
  br i1 %tobool137.not, label %if.else155, label %if.then138

if.then138:                                       ; preds = %do.end135
  call void @__sanitizer_cov_trace_pc() #14
  %sl_count140 = getelementptr inbounds %struct.ip_sf_socklist, ptr %53, i32 0, i32 1
  %56 = ptrtoint ptr %sl_count140 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %sl_count140, align 4
  %sl_addr141 = getelementptr inbounds %struct.ip_sf_socklist, ptr %53, i32 0, i32 3
  %call143 = tail call fastcc i32 @ip_mc_del_src(ptr noundef nonnull %call48, ptr noundef %msf, i32 noundef %55, i32 noundef %57, ptr noundef %sl_addr141, i32 noundef 0)
  %58 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %53, align 4
  %60 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %59, i32 4) #12
  %61 = extractvalue { i32, i1 } %60, 1
  %62 = extractvalue { i32, i1 } %60, 0
  %spec.select.i280 = tail call i32 @llvm.uadd.sat.i32(i32 %62, i32 16) #12
  %retval.0.i281 = select i1 %61, i32 -1, i32 %spec.select.i280
  %sk_omem_alloc = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 20
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_omem_alloc, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %sk_omem_alloc, i32 1, i32 3, i32 1) #12
  %63 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_omem_alloc, ptr %sk_omem_alloc, i32 %retval.0.i281, ptr elementtype(i32) %sk_omem_alloc) #12, !srcloc !261
  %rcu = getelementptr inbounds %struct.ip_sf_socklist, ptr %53, i32 0, i32 2
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 8 to ptr)) #12
  br label %do.body160

if.else155:                                       ; preds = %do.end135
  call void @__sanitizer_cov_trace_pc() #14
  %call158 = tail call fastcc i32 @ip_mc_del_src(ptr noundef nonnull %call48, ptr noundef %msf, i32 noundef %55, i32 noundef 0, ptr noundef null, i32 noundef 0)
  br label %do.body160

do.body160:                                       ; preds = %if.else155, %if.then138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !263
  %64 = ptrtoint ptr %sflist to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %newpsl.0, ptr %sflist, align 4
  %65 = ptrtoint ptr %imsf_fmode to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %imsf_fmode, align 4
  %sfmode201 = getelementptr inbounds %struct.ip_mc_socklist, ptr %pmc.0288, i32 0, i32 2
  %67 = ptrtoint ptr %sfmode201 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %sfmode201, align 4
  br label %cleanup

if.then203:                                       ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #14
  %call204 = call i32 @ip_mc_leave_group(ptr noundef %sk, ptr noundef nonnull %imr)
  br label %cleanup

cleanup:                                          ; preds = %if.then203, %do.body160, %if.then117, %if.then99.cleanup_crit_edge, %do.end92.cleanup_crit_edge, %do.end68.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call204, %if.then203 ], [ -105, %if.then99.cleanup_crit_edge ], [ -19, %if.end38.cleanup_crit_edge ], [ %call115, %if.then117 ], [ 0, %do.body160 ], [ -22, %do.end68.cleanup_crit_edge ], [ -22, %do.end92.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %imr) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_kfree_s(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip_mc_msfget(ptr nocapture noundef readonly %sk, ptr noundef %msf, ptr noundef %optval, ptr noundef %optlen) local_unnamed_addr #0 align 64 {
entry:
  %imr = alloca %struct.ip_mreqn, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %imr) #12
  %0 = getelementptr inbounds %struct.ip_mreqn, ptr %imr, i32 0, i32 1
  %1 = getelementptr inbounds %struct.ip_mreqn, ptr %imr, i32 0, i32 2
  %2 = ptrtoint ptr %msf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msf, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %4 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %skc_net.i, align 4
  %call2 = tail call i32 @rtnl_is_locked() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end31_crit_edge

entry.if.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

land.rhs:                                         ; preds = %entry
  %.b162 = load i1, ptr @ip_mc_msfget.__already_done, align 1
  br i1 %.b162, label %land.rhs.if.end31_crit_edge, label %if.then, !prof !250

land.rhs.if.end31_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ip_mc_msfget.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2535, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 2535) #12
  br label %if.end31

if.end31:                                         ; preds = %if.then, %land.rhs.if.end31_crit_edge, %entry.if.end31_crit_edge
  %and.i176 = and i32 %3, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i176)
  %cmp.i = icmp eq i32 %and.i176, -536870912
  br i1 %cmp.i, label %if.end41, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end41:                                         ; preds = %if.end31
  %6 = ptrtoint ptr %msf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msf, align 4
  %8 = ptrtoint ptr %imr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %imr, align 4
  %imsf_interface = getelementptr inbounds %struct.anon.153, ptr %msf, i32 0, i32 1
  %9 = ptrtoint ptr %imsf_interface to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %imsf_interface, align 4
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %0, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %1, align 4
  %call44 = call fastcc ptr @ip_mc_find_dev(ptr noundef %5, ptr noundef nonnull %imr)
  %tobool45.not = icmp eq ptr %call44, null
  br i1 %tobool45.not, label %if.end41.cleanup_crit_edge, label %if.end47

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end47:                                         ; preds = %if.end41
  %call49 = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call49, label %if.end47.do.end57_crit_edge, label %land.lhs.true

if.end47.do.end57_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end57

land.lhs.true:                                    ; preds = %if.end47
  %call50 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %land.lhs.true.do.end57_crit_edge, label %land.lhs.true52

land.lhs.true.do.end57_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end57

land.lhs.true52:                                  ; preds = %land.lhs.true
  %.b156161 = load i1, ptr @ip_mc_msfget.__warned, align 1
  br i1 %.b156161, label %land.lhs.true52.do.end57_crit_edge, label %if.then54

land.lhs.true52.do.end57_crit_edge:               ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end57

if.then54:                                        ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ip_mc_msfget.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2551, ptr noundef nonnull @.str.2) #12
  br label %do.end57

do.end57:                                         ; preds = %if.then54, %land.lhs.true52.do.end57_crit_edge, %land.lhs.true.do.end57_crit_edge, %if.end47.do.end57_crit_edge
  %mc_list = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 18
  %13 = ptrtoint ptr %mc_list to i32
  call void @__asan_load4_noabort(i32 %13)
  %pmc.0182 = load ptr, ptr %mc_list, align 4
  %cmp.not183 = icmp eq ptr %pmc.0182, null
  br i1 %cmp.not183, label %do.end57.cleanup_crit_edge, label %do.end57.for.body_crit_edge

do.end57.for.body_crit_edge:                      ; preds = %do.end57
  br label %for.body

do.end57.cleanup_crit_edge:                       ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %do.end80.for.body_crit_edge, %do.end57.for.body_crit_edge
  %pmc.0184 = phi ptr [ %pmc.0, %do.end80.for.body_crit_edge ], [ %pmc.0182, %do.end57.for.body_crit_edge ]
  %multi = getelementptr inbounds %struct.ip_mc_socklist, ptr %pmc.0184, i32 0, i32 1
  %14 = ptrtoint ptr %multi to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %multi, align 4
  %16 = ptrtoint ptr %msf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %msf, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp62 = icmp eq i32 %15, %17
  br i1 %cmp62, label %land.lhs.true63, label %for.body.do.body70_crit_edge

for.body.do.body70_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body70

land.lhs.true63:                                  ; preds = %for.body
  %imr_ifindex65 = getelementptr inbounds %struct.ip_mc_socklist, ptr %pmc.0184, i32 0, i32 1, i32 2
  %18 = ptrtoint ptr %imr_ifindex65 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %imr_ifindex65, align 4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp67 = icmp eq i32 %19, %21
  br i1 %cmp67, label %if.end84.critedge, label %land.lhs.true63.do.body70_crit_edge

land.lhs.true63.do.body70_crit_edge:              ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body70

do.body70:                                        ; preds = %land.lhs.true63.do.body70_crit_edge, %for.body.do.body70_crit_edge
  %call71 = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call71, label %do.body70.do.end80_crit_edge, label %land.lhs.true72

do.body70.do.end80_crit_edge:                     ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end80

land.lhs.true72:                                  ; preds = %do.body70
  %call73 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %land.lhs.true72.do.end80_crit_edge, label %land.lhs.true75

land.lhs.true72.do.end80_crit_edge:               ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end80

land.lhs.true75:                                  ; preds = %land.lhs.true72
  %.b157160 = load i1, ptr @ip_mc_msfget.__warned.16, align 1
  br i1 %.b157160, label %land.lhs.true75.do.end80_crit_edge, label %if.then77

land.lhs.true75.do.end80_crit_edge:               ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end80

if.then77:                                        ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ip_mc_msfget.__warned.16, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2551, ptr noundef nonnull @.str.2) #12
  br label %do.end80

do.end80:                                         ; preds = %if.then77, %land.lhs.true75.do.end80_crit_edge, %land.lhs.true72.do.end80_crit_edge, %do.body70.do.end80_crit_edge
  %22 = ptrtoint ptr %pmc.0184 to i32
  call void @__asan_load4_noabort(i32 %22)
  %pmc.0 = load ptr, ptr %pmc.0184, align 4
  %cmp.not = icmp eq ptr %pmc.0, null
  br i1 %cmp.not, label %do.end80.cleanup_crit_edge, label %do.end80.for.body_crit_edge

do.end80.for.body_crit_edge:                      ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

do.end80.cleanup_crit_edge:                       ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end84.critedge:                                ; preds = %land.lhs.true63
  %sfmode = getelementptr inbounds %struct.ip_mc_socklist, ptr %pmc.0184, i32 0, i32 2
  %23 = ptrtoint ptr %sfmode to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sfmode, align 4
  %imsf_fmode = getelementptr inbounds %struct.anon.153, ptr %msf, i32 0, i32 2
  %25 = ptrtoint ptr %imsf_fmode to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %imsf_fmode, align 4
  %call86 = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call86, label %if.end84.critedge.do.end95_crit_edge, label %land.lhs.true87

if.end84.critedge.do.end95_crit_edge:             ; preds = %if.end84.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end95

land.lhs.true87:                                  ; preds = %if.end84.critedge
  %call88 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %land.lhs.true87.do.end95_crit_edge, label %land.lhs.true90

land.lhs.true87.do.end95_crit_edge:               ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end95

land.lhs.true90:                                  ; preds = %land.lhs.true87
  %.b158159 = load i1, ptr @ip_mc_msfget.__warned.17, align 1
  br i1 %.b158159, label %land.lhs.true90.do.end95_crit_edge, label %if.then92

land.lhs.true90.do.end95_crit_edge:               ; preds = %land.lhs.true90
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end95

if.then92:                                        ; preds = %land.lhs.true90
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ip_mc_msfget.__warned.17, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2559, ptr noundef nonnull @.str.2) #12
  br label %do.end95

do.end95:                                         ; preds = %if.then92, %land.lhs.true90.do.end95_crit_edge, %land.lhs.true87.do.end95_crit_edge, %if.end84.critedge.do.end95_crit_edge
  %sflist = getelementptr inbounds %struct.ip_mc_socklist, ptr %pmc.0184, i32 0, i32 3
  %26 = ptrtoint ptr %sflist to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sflist, align 4
  %tobool97.not = icmp eq ptr %27, null
  br i1 %tobool97.not, label %do.end95.if.end99_crit_edge, label %if.else

do.end95.if.end99_crit_edge:                      ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end99

if.else:                                          ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #14
  %sl_count = getelementptr inbounds %struct.ip_sf_socklist, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %sl_count to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sl_count, align 4
  br label %if.end99

if.end99:                                         ; preds = %if.else, %do.end95.if.end99_crit_edge
  %count.0 = phi i32 [ %29, %if.else ], [ 0, %do.end95.if.end99_crit_edge ]
  %imsf_numsrc = getelementptr inbounds %struct.anon.153, ptr %msf, i32 0, i32 3
  %30 = ptrtoint ptr %imsf_numsrc to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %imsf_numsrc, align 4
  %32 = tail call i32 @llvm.umin.i32(i32 %count.0, i32 %31)
  %33 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %32, i32 4) #12
  %34 = extractvalue { i32, i1 } %33, 1
  %35 = extractvalue { i32, i1 } %33, 0
  %retval.0.i = select i1 %34, i32 -1, i32 %35
  %36 = ptrtoint ptr %imsf_numsrc to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %count.0, ptr %imsf_numsrc, align 4
  %mul = shl i32 %32, 2
  %add = add i32 %mul, 16
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 2568) #12
  %37 = tail call i32 @llvm.read_register.i32(metadata !234) #12
  %and.i.i.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 4
  %39 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #9, !srcloc !264
  %and.i = and i32 %39, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #12, !srcloc !265
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !266
  %40 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optlen, i32 %add, i32 -1226833921) #12, !srcloc !267
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %39) #12, !srcloc !265
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !266
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool110.not = icmp eq i32 %40, 0
  br i1 %tobool110.not, label %if.end8.i.i, label %if.end99.cleanup_crit_edge

if.end99.cleanup_crit_edge:                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8.i.i:                                      ; preds = %if.end99
  tail call void @__might_fault(ptr noundef nonnull @.str.48, i32 noundef 174) #12
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %if.end8.i.i.cleanup_crit_edge, label %if.end.i.i

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end8.i.i
  %41 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %optval, i32 16, i32 -1226833920) #15, !srcloc !268
  %asmresult.i.i = extractvalue { i32, i32 } %41, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %msf, i32 noundef 16) #12
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %optval, ptr noundef %msf, i32 noundef 16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool112.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool112.not, label %if.end114, label %copy_to_user.exit.cleanup_crit_edge

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end114:                                        ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool115.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool115.not, label %if.end114.if.end120_crit_edge, label %land.lhs.true116

if.end114.if.end120_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end120

land.lhs.true116:                                 ; preds = %if.end114
  %imsf_slist_flex = getelementptr inbounds %struct.anon.153, ptr %optval, i32 0, i32 4
  %sl_addr = getelementptr inbounds %struct.ip_sf_socklist, ptr %27, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp9.i.i = icmp slt i32 %retval.0.i, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %land.lhs.true116
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.cleanup_crit_edge, label %if.then27.i.i, !prof !250

land.rhs16.i.i.cleanup_crit_edge:                 ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.46, i32 noundef 230, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

if.then.i.i.i:                                    ; preds = %land.lhs.true116
  tail call void @__check_object_size(ptr noundef %sl_addr, i32 noundef %retval.0.i, i1 noundef zeroext true) #12
  tail call void @__might_fault(ptr noundef nonnull @.str.48, i32 noundef 174) #12
  %call.i.i167 = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i167, label %if.then.i.i.i.cleanup_crit_edge, label %if.end.i.i170

if.then.i.i.i.cleanup_crit_edge:                  ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i.i170:                                    ; preds = %if.then.i.i.i
  %42 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %imsf_slist_flex, i32 %retval.0.i, i32 -1226833920) #15, !srcloc !268
  %asmresult.i.i168 = extractvalue { i32, i32 } %42, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i168)
  %cmp.i6.i169 = icmp eq i32 %asmresult.i.i168, 0
  br i1 %cmp.i6.i169, label %copy_to_user.exit175, label %if.end.i.i170.cleanup_crit_edge

if.end.i.i170.cleanup_crit_edge:                  ; preds = %if.end.i.i170
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

copy_to_user.exit175:                             ; preds = %if.end.i.i170
  %call.i.i.i171 = tail call zeroext i1 @__kasan_check_read(ptr noundef %sl_addr, i32 noundef %retval.0.i) #12
  %call.i12.i.i172 = tail call i32 @arm_copy_to_user(ptr noundef %imsf_slist_flex, ptr noundef %sl_addr, i32 noundef %retval.0.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i172)
  %tobool118.not = icmp eq i32 %call.i12.i.i172, 0
  br i1 %tobool118.not, label %copy_to_user.exit175.if.end120_crit_edge, label %copy_to_user.exit175.cleanup_crit_edge

copy_to_user.exit175.cleanup_crit_edge:           ; preds = %copy_to_user.exit175
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

copy_to_user.exit175.if.end120_crit_edge:         ; preds = %copy_to_user.exit175
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end120

if.end120:                                        ; preds = %copy_to_user.exit175.if.end120_crit_edge, %if.end114.if.end120_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end120, %copy_to_user.exit175.cleanup_crit_edge, %if.end.i.i170.cleanup_crit_edge, %if.then.i.i.i.cleanup_crit_edge, %if.then27.i.i, %land.rhs16.i.i.cleanup_crit_edge, %copy_to_user.exit.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %if.end8.i.i.cleanup_crit_edge, %if.end99.cleanup_crit_edge, %do.end80.cleanup_crit_edge, %do.end57.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %if.end31.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end120 ], [ -22, %if.end31.cleanup_crit_edge ], [ -14, %copy_to_user.exit.cleanup_crit_edge ], [ -14, %if.end99.cleanup_crit_edge ], [ -14, %copy_to_user.exit175.cleanup_crit_edge ], [ -19, %if.end41.cleanup_crit_edge ], [ -14, %if.end8.i.i.cleanup_crit_edge ], [ -14, %if.end.i.i.cleanup_crit_edge ], [ -14, %if.then.i.i.i.cleanup_crit_edge ], [ -14, %if.end.i.i170.cleanup_crit_edge ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.cleanup_crit_edge ], [ -99, %do.end57.cleanup_crit_edge ], [ -99, %do.end80.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %imr) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip_mc_gsfget(ptr nocapture noundef readonly %sk, ptr nocapture noundef %gsf, ptr noundef %p) local_unnamed_addr #0 align 64 {
entry:
  %ss = alloca %struct.__kernel_sockaddr_storage, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call i32 @rtnl_is_locked() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end30_crit_edge

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

land.rhs:                                         ; preds = %entry
  %.b155 = load i1, ptr @ip_mc_gsfget.__already_done, align 1
  br i1 %.b155, label %land.rhs.if.end30_crit_edge, label %if.then, !prof !250

land.rhs.if.end30_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ip_mc_gsfget.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2590, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 2590) #12
  br label %if.end30

if.end30:                                         ; preds = %if.then, %land.rhs.if.end30_crit_edge, %entry.if.end30_crit_edge
  %gf_group = getelementptr inbounds %struct.anon.158, ptr %gsf, i32 0, i32 1
  %0 = ptrtoint ptr %gf_group to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %gf_group, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %1)
  %cmp.not = icmp eq i16 %1, 2
  br i1 %cmp.not, label %if.end40, label %if.end30.cleanup115_crit_edge

if.end30.cleanup115_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup115

if.end40:                                         ; preds = %if.end30
  %sin_addr = getelementptr inbounds %struct.anon.158, ptr %gsf, i32 0, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %sin_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sin_addr, align 4
  %and.i = and i32 %3, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, -536870912
  br i1 %cmp.i, label %do.body44, label %if.end40.cleanup115_crit_edge

if.end40.cleanup115_crit_edge:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup115

do.body44:                                        ; preds = %if.end40
  %call45 = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call45, label %do.body44.do.end53_crit_edge, label %land.lhs.true

do.body44.do.end53_crit_edge:                     ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end53

land.lhs.true:                                    ; preds = %do.body44
  %call46 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %land.lhs.true.do.end53_crit_edge, label %land.lhs.true48

land.lhs.true.do.end53_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end53

land.lhs.true48:                                  ; preds = %land.lhs.true
  %.b149154 = load i1, ptr @ip_mc_gsfget.__warned, align 1
  br i1 %.b149154, label %land.lhs.true48.do.end53_crit_edge, label %if.then50

land.lhs.true48.do.end53_crit_edge:               ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end53

if.then50:                                        ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ip_mc_gsfget.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2599, ptr noundef nonnull @.str.2) #12
  br label %do.end53

do.end53:                                         ; preds = %if.then50, %land.lhs.true48.do.end53_crit_edge, %land.lhs.true.do.end53_crit_edge, %do.body44.do.end53_crit_edge
  %mc_list = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 18
  %4 = ptrtoint ptr %mc_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %pmc.0160 = load ptr, ptr %mc_list, align 4
  %cmp55.not161 = icmp eq ptr %pmc.0160, null
  br i1 %cmp55.not161, label %do.end53.cleanup115_crit_edge, label %do.end53.for.body_crit_edge

do.end53.for.body_crit_edge:                      ; preds = %do.end53
  br label %for.body

do.end53.cleanup115_crit_edge:                    ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup115

for.body:                                         ; preds = %do.end76.for.body_crit_edge, %do.end53.for.body_crit_edge
  %pmc.0162 = phi ptr [ %pmc.0, %do.end76.for.body_crit_edge ], [ %pmc.0160, %do.end53.for.body_crit_edge ]
  %multi = getelementptr inbounds %struct.ip_mc_socklist, ptr %pmc.0162, i32 0, i32 1
  %5 = ptrtoint ptr %multi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %multi, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %3)
  %cmp58 = icmp eq i32 %6, %3
  br i1 %cmp58, label %land.lhs.true60, label %for.body.do.body66_crit_edge

for.body.do.body66_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body66

land.lhs.true60:                                  ; preds = %for.body
  %imr_ifindex = getelementptr inbounds %struct.ip_mc_socklist, ptr %pmc.0162, i32 0, i32 1, i32 2
  %7 = ptrtoint ptr %imr_ifindex to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %imr_ifindex, align 4
  %9 = ptrtoint ptr %gsf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %gsf, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp62 = icmp eq i32 %8, %10
  br i1 %cmp62, label %if.end80, label %land.lhs.true60.do.body66_crit_edge

land.lhs.true60.do.body66_crit_edge:              ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body66

do.body66:                                        ; preds = %land.lhs.true60.do.body66_crit_edge, %for.body.do.body66_crit_edge
  %call67 = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call67, label %do.body66.do.end76_crit_edge, label %land.lhs.true68

do.body66.do.end76_crit_edge:                     ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end76

land.lhs.true68:                                  ; preds = %do.body66
  %call69 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %land.lhs.true68.do.end76_crit_edge, label %land.lhs.true71

land.lhs.true68.do.end76_crit_edge:               ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end76

land.lhs.true71:                                  ; preds = %land.lhs.true68
  %.b150153 = load i1, ptr @ip_mc_gsfget.__warned.18, align 1
  br i1 %.b150153, label %land.lhs.true71.do.end76_crit_edge, label %if.then73

land.lhs.true71.do.end76_crit_edge:               ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end76

if.then73:                                        ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ip_mc_gsfget.__warned.18, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2599, ptr noundef nonnull @.str.2) #12
  br label %do.end76

do.end76:                                         ; preds = %if.then73, %land.lhs.true71.do.end76_crit_edge, %land.lhs.true68.do.end76_crit_edge, %do.body66.do.end76_crit_edge
  %11 = ptrtoint ptr %pmc.0162 to i32
  call void @__asan_load4_noabort(i32 %11)
  %pmc.0 = load ptr, ptr %pmc.0162, align 4
  %cmp55.not = icmp eq ptr %pmc.0, null
  br i1 %cmp55.not, label %do.end76.cleanup115_crit_edge, label %do.end76.for.body_crit_edge

do.end76.for.body_crit_edge:                      ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

do.end76.cleanup115_crit_edge:                    ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup115

if.end80:                                         ; preds = %land.lhs.true60
  %sfmode = getelementptr inbounds %struct.ip_mc_socklist, ptr %pmc.0162, i32 0, i32 2
  %12 = ptrtoint ptr %sfmode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sfmode, align 4
  %gf_fmode = getelementptr inbounds %struct.anon.158, ptr %gsf, i32 0, i32 2
  %14 = ptrtoint ptr %gf_fmode to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %gf_fmode, align 4
  %call82 = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call82, label %if.end80.do.end91_crit_edge, label %land.lhs.true83

if.end80.do.end91_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end91

land.lhs.true83:                                  ; preds = %if.end80
  %call84 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %land.lhs.true83.do.end91_crit_edge, label %land.lhs.true86

land.lhs.true83.do.end91_crit_edge:               ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end91

land.lhs.true86:                                  ; preds = %land.lhs.true83
  %.b151152 = load i1, ptr @ip_mc_gsfget.__warned.19, align 1
  br i1 %.b151152, label %land.lhs.true86.do.end91_crit_edge, label %if.then88

land.lhs.true86.do.end91_crit_edge:               ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end91

if.then88:                                        ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ip_mc_gsfget.__warned.19, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2607, ptr noundef nonnull @.str.2) #12
  br label %do.end91

do.end91:                                         ; preds = %if.then88, %land.lhs.true86.do.end91_crit_edge, %land.lhs.true83.do.end91_crit_edge, %if.end80.do.end91_crit_edge
  %sflist = getelementptr inbounds %struct.ip_mc_socklist, ptr %pmc.0162, i32 0, i32 3
  %15 = ptrtoint ptr %sflist to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sflist, align 4
  %tobool93.not = icmp eq ptr %16, null
  br i1 %tobool93.not, label %do.end91.cond.end_crit_edge, label %cond.true

do.end91.cond.end_crit_edge:                      ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #14
  %sl_count = getelementptr inbounds %struct.ip_sf_socklist, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %sl_count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sl_count, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end91.cond.end_crit_edge
  %cond = phi i32 [ %18, %cond.true ], [ 0, %do.end91.cond.end_crit_edge ]
  %gf_numsrc = getelementptr inbounds %struct.anon.158, ptr %gsf, i32 0, i32 3
  %19 = ptrtoint ptr %gf_numsrc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %gf_numsrc, align 4
  %21 = tail call i32 @llvm.umin.i32(i32 %cond, i32 %20)
  %22 = ptrtoint ptr %gf_numsrc to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %cond, ptr %gf_numsrc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp103163 = icmp sgt i32 %21, 0
  br i1 %cmp103163, label %for.body105.lr.ph, label %cond.end.cleanup115_crit_edge

cond.end.cleanup115_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup115

for.body105.lr.ph:                                ; preds = %cond.end
  %sin_addr107 = getelementptr inbounds %struct.sockaddr_in, ptr %ss, i32 0, i32 2
  br label %for.body105

for.body105:                                      ; preds = %for.inc113.for.body105_crit_edge, %for.body105.lr.ph
  %p.addr.0165 = phi ptr [ %p, %for.body105.lr.ph ], [ %incdec.ptr, %for.inc113.for.body105_crit_edge ]
  %i.0164 = phi i32 [ 0, %for.body105.lr.ph ], [ %inc, %for.inc113.for.body105_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %ss) #12
  %23 = call ptr @memset(ptr %ss, i32 0, i32 128)
  %24 = ptrtoint ptr %ss to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 2, ptr %ss, align 4
  %arrayidx = getelementptr %struct.ip_sf_socklist, ptr %16, i32 0, i32 3, i32 %i.0164
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx, align 4
  %27 = ptrtoint ptr %sin_addr107 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %sin_addr107, align 4
  call void @__might_fault(ptr noundef nonnull @.str.48, i32 noundef 174) #12
  %call.i.i = call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %for.body105.copy_to_user.exit.thread_crit_edge, label %if.end.i.i

for.body105.copy_to_user.exit.thread_crit_edge:   ; preds = %for.body105
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_user.exit.thread

if.end.i.i:                                       ; preds = %for.body105
  %28 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %p.addr.0165, i32 128, i32 -1226833920) #15, !srcloc !268
  %asmresult.i.i = extractvalue { i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.copy_to_user.exit.thread_crit_edge

if.end.i.i.copy_to_user.exit.thread_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_user.exit.thread

copy_to_user.exit.thread:                         ; preds = %if.end.i.i.copy_to_user.exit.thread_crit_edge, %for.body105.copy_to_user.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %ss) #12
  br label %cleanup115

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %ss, i32 noundef 128) #12
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %p.addr.0165, ptr noundef nonnull %ss, i32 noundef 128) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool110.not = icmp eq i32 %call.i12.i.i, 0
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %ss) #12
  br i1 %tobool110.not, label %for.inc113, label %copy_to_user.exit.cleanup115_crit_edge

copy_to_user.exit.cleanup115_crit_edge:           ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup115

for.inc113:                                       ; preds = %copy_to_user.exit
  %inc = add nuw nsw i32 %i.0164, 1
  %incdec.ptr = getelementptr %struct.__kernel_sockaddr_storage, ptr %p.addr.0165, i32 1
  %exitcond.not = icmp eq i32 %inc, %21
  br i1 %exitcond.not, label %for.inc113.cleanup115_crit_edge, label %for.inc113.for.body105_crit_edge

for.inc113.for.body105_crit_edge:                 ; preds = %for.inc113
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body105

for.inc113.cleanup115_crit_edge:                  ; preds = %for.inc113
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup115

cleanup115:                                       ; preds = %for.inc113.cleanup115_crit_edge, %copy_to_user.exit.cleanup115_crit_edge, %copy_to_user.exit.thread, %cond.end.cleanup115_crit_edge, %do.end76.cleanup115_crit_edge, %do.end53.cleanup115_crit_edge, %if.end40.cleanup115_crit_edge, %if.end30.cleanup115_crit_edge
  %retval.2 = phi i32 [ -22, %if.end30.cleanup115_crit_edge ], [ -22, %if.end40.cleanup115_crit_edge ], [ -14, %copy_to_user.exit.thread ], [ 0, %cond.end.cleanup115_crit_edge ], [ -99, %do.end53.cleanup115_crit_edge ], [ -14, %copy_to_user.exit.cleanup115_crit_edge ], [ 0, %for.inc113.cleanup115_crit_edge ], [ -99, %do.end76.cleanup115_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip_mc_sf_allow(ptr noundef %sk, i32 noundef %loc_addr, i32 noundef %rmt_addr, i32 noundef %dif, i32 noundef %sdif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i32 %loc_addr, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, -536870912
  br i1 %cmp.i, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end:                                           ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !234) #12
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !248
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.49, i32 noundef 696, ptr noundef nonnull @.str.50) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %mc_list = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 18
  %4 = ptrtoint ptr %mc_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %mc_list, align 8
  %call3 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end11_crit_edge

rcu_read_lock.exit.do.end11_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end11

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end11_crit_edge, label %land.lhs.true6

land.lhs.true.do.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end11

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b119 = load i1, ptr @ip_mc_sf_allow.__warned, align 1
  br i1 %.b119, label %land.lhs.true6.do.end11_crit_edge, label %if.then8

land.lhs.true6.do.end11_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end11

if.then8:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ip_mc_sf_allow.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2641, ptr noundef nonnull @.str.20) #12
  br label %do.end11

do.end11:                                         ; preds = %if.then8, %land.lhs.true6.do.end11_crit_edge, %land.lhs.true.do.end11_crit_edge, %rcu_read_lock.exit.do.end11_crit_edge
  %cmp.not135 = icmp eq ptr %5, null
  br i1 %cmp.not135, label %do.end11.for.end_crit_edge, label %for.body.lr.ph

do.end11.for.end_crit_edge:                       ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sdif)
  %tobool17.not = icmp ne i32 %sdif, 0
  br label %for.body

for.body:                                         ; preds = %do.end39.for.body_crit_edge, %for.body.lr.ph
  %pmc.0136 = phi ptr [ %5, %for.body.lr.ph ], [ %11, %do.end39.for.body_crit_edge ]
  %multi = getelementptr inbounds %struct.ip_mc_socklist, ptr %pmc.0136, i32 0, i32 1
  %6 = ptrtoint ptr %multi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %multi, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %loc_addr)
  %cmp13 = icmp eq i32 %7, %loc_addr
  br i1 %cmp13, label %land.lhs.true14, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true14:                                  ; preds = %for.body
  %imr_ifindex = getelementptr inbounds %struct.ip_mc_socklist, ptr %pmc.0136, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %imr_ifindex to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %imr_ifindex, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %dif)
  %cmp16 = icmp eq i32 %9, %dif
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %sdif)
  %cmp21 = icmp eq i32 %9, %sdif
  %or.cond = select i1 %tobool17.not, i1 %cmp21, i1 false
  %or.cond140 = or i1 %cmp16, %or.cond
  br i1 %or.cond140, label %if.end43, label %land.lhs.true14.for.inc_crit_edge

land.lhs.true14.for.inc_crit_edge:                ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true14.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %10 = ptrtoint ptr %pmc.0136 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %pmc.0136, align 4
  %call29 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %land.lhs.true31, label %for.inc.do.end39_crit_edge

for.inc.do.end39_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end39

land.lhs.true31:                                  ; preds = %for.inc
  %call32 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %land.lhs.true31.do.end39_crit_edge, label %land.lhs.true34

land.lhs.true31.do.end39_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end39

land.lhs.true34:                                  ; preds = %land.lhs.true31
  %.b115118 = load i1, ptr @ip_mc_sf_allow.__warned.21, align 1
  br i1 %.b115118, label %land.lhs.true34.do.end39_crit_edge, label %if.then36

land.lhs.true34.do.end39_crit_edge:               ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end39

if.then36:                                        ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ip_mc_sf_allow.__warned.21, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2641, ptr noundef nonnull @.str.20) #12
  br label %do.end39

do.end39:                                         ; preds = %if.then36, %land.lhs.true34.do.end39_crit_edge, %land.lhs.true31.do.end39_crit_edge, %for.inc.do.end39_crit_edge
  %cmp.not = icmp eq ptr %11, null
  br i1 %cmp.not, label %do.end39.for.end_crit_edge, label %do.end39.for.body_crit_edge

do.end39.for.body_crit_edge:                      ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

do.end39.for.end_crit_edge:                       ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %do.end39.for.end_crit_edge, %do.end11.for.end_crit_edge
  %mc_all = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 12
  %12 = ptrtoint ptr %mc_all to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load = load i16, ptr %mc_all, align 8
  %bf.lshr = lshr i16 %bf.load, 9
  %13 = and i16 %bf.lshr, 1
  %bf.cast = zext i16 %13 to i32
  br label %unlock

if.end43:                                         ; preds = %land.lhs.true14
  %sflist = getelementptr inbounds %struct.ip_mc_socklist, ptr %pmc.0136, i32 0, i32 3
  %14 = ptrtoint ptr %sflist to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %sflist, align 4
  %call49 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %land.lhs.true51, label %if.end43.do.end59_crit_edge

if.end43.do.end59_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end59

land.lhs.true51:                                  ; preds = %if.end43
  %call52 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %land.lhs.true51.do.end59_crit_edge, label %land.lhs.true54

land.lhs.true51.do.end59_crit_edge:               ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end59

land.lhs.true54:                                  ; preds = %land.lhs.true51
  %.b116117 = load i1, ptr @ip_mc_sf_allow.__warned.22, align 1
  br i1 %.b116117, label %land.lhs.true54.do.end59_crit_edge, label %if.then56

land.lhs.true54.do.end59_crit_edge:               ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end59

if.then56:                                        ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ip_mc_sf_allow.__warned.22, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2650, ptr noundef nonnull @.str.20) #12
  br label %do.end59

do.end59:                                         ; preds = %if.then56, %land.lhs.true54.do.end59_crit_edge, %land.lhs.true51.do.end59_crit_edge, %if.end43.do.end59_crit_edge
  %sfmode = getelementptr inbounds %struct.ip_mc_socklist, ptr %pmc.0136, i32 0, i32 2
  %16 = ptrtoint ptr %sfmode to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sfmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp61 = icmp eq i32 %17, 0
  %conv62 = zext i1 %cmp61 to i32
  %tobool63.not = icmp eq ptr %15, null
  br i1 %tobool63.not, label %do.end59.unlock_crit_edge, label %for.cond66.preheader

do.end59.unlock_crit_edge:                        ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

for.cond66.preheader:                             ; preds = %do.end59
  %sl_count = getelementptr inbounds %struct.ip_sf_socklist, ptr %15, i32 0, i32 1
  %18 = ptrtoint ptr %sl_count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sl_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp67138.not = icmp eq i32 %19, 0
  br i1 %cmp67138.not, label %for.cond66.preheader.for.end75.thread_crit_edge, label %for.cond66.preheader.for.body69_crit_edge

for.cond66.preheader.for.body69_crit_edge:        ; preds = %for.cond66.preheader
  br label %for.body69

for.cond66.preheader.for.end75.thread_crit_edge:  ; preds = %for.cond66.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end75.thread

for.cond66:                                       ; preds = %for.body69
  %inc = add nuw i32 %i.0139, 1
  %exitcond.not = icmp eq i32 %inc, %19
  br i1 %exitcond.not, label %for.cond66.for.end75.thread_crit_edge, label %for.cond66.for.body69_crit_edge

for.cond66.for.body69_crit_edge:                  ; preds = %for.cond66
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body69

for.cond66.for.end75.thread_crit_edge:            ; preds = %for.cond66
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end75.thread

for.body69:                                       ; preds = %for.cond66.for.body69_crit_edge, %for.cond66.preheader.for.body69_crit_edge
  %i.0139 = phi i32 [ %inc, %for.cond66.for.body69_crit_edge ], [ 0, %for.cond66.preheader.for.body69_crit_edge ]
  %arrayidx = getelementptr %struct.ip_sf_socklist, ptr %15, i32 0, i32 3, i32 %i.0139
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %rmt_addr)
  %cmp70 = icmp eq i32 %21, %rmt_addr
  br i1 %cmp70, label %if.end84, label %for.cond66

for.end75.thread:                                 ; preds = %for.cond66.for.end75.thread_crit_edge, %for.cond66.preheader.for.end75.thread_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp77133 = icmp eq i32 %17, 1
  br i1 %cmp77133, label %for.end75.thread.unlock_crit_edge, label %for.end75.thread.if.end93_crit_edge

for.end75.thread.if.end93_crit_edge:              ; preds = %for.end75.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end93

for.end75.thread.unlock_crit_edge:                ; preds = %for.end75.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

if.end84:                                         ; preds = %for.body69
  br i1 %cmp61, label %if.end84.unlock_crit_edge, label %if.end84.if.end93_crit_edge

if.end84.if.end93_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end93

if.end84.unlock_crit_edge:                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

if.end93:                                         ; preds = %if.end84.if.end93_crit_edge, %for.end75.thread.if.end93_crit_edge
  br label %unlock

unlock:                                           ; preds = %if.end93, %if.end84.unlock_crit_edge, %for.end75.thread.unlock_crit_edge, %do.end59.unlock_crit_edge, %for.end
  %ret.0 = phi i32 [ 1, %if.end93 ], [ %conv62, %do.end59.unlock_crit_edge ], [ %bf.cast, %for.end ], [ 0, %for.end75.thread.unlock_crit_edge ], [ 0, %if.end84.unlock_crit_edge ]
  %call.i120 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i120, label %unlock.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i123

unlock.rcu_read_unlock.exit_crit_edge:            ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i123:                               ; preds = %unlock
  %call1.i121 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i121)
  %tobool.not.i122 = icmp eq i32 %call1.i121, 0
  br i1 %tobool.not.i122, label %land.lhs.true.i123.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i125

land.lhs.true.i123.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i123
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i125:                              ; preds = %land.lhs.true.i123
  %.b4.i124 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i124, label %land.lhs.true2.i125.rcu_read_unlock.exit_crit_edge, label %if.then.i126

land.lhs.true2.i125.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i125
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i126:                                     ; preds = %land.lhs.true2.i125
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.49, i32 noundef 724, ptr noundef nonnull @.str.51) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i126, %land.lhs.true2.i125.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i123.rcu_read_unlock.exit_crit_edge, %unlock.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !251
  %22 = tail call i32 @llvm.read_register.i32(metadata !234) #12
  %and.i.i.i.i.i127 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i127 to ptr
  %preempt_count.i.i.i.i128 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i.i.i128 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i.i.i128, align 4
  %sub.i.i.i = add i32 %25, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i128, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %out

out:                                              ; preds = %rcu_read_unlock.exit, %entry.out_crit_edge
  %ret.1 = phi i32 [ %ret.0, %rcu_read_unlock.exit ], [ 1, %entry.out_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ip_mc_drop_socket(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i, align 4
  %mc_list = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 18
  %2 = ptrtoint ptr %mc_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mc_list, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @rtnl_lock() #12
  %sk_omem_alloc = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 20
  br label %while.cond

while.cond:                                       ; preds = %if.end16, %if.end
  %call2 = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call2, label %while.cond.do.end_crit_edge, label %land.lhs.true

while.cond.do.end_crit_edge:                      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %while.cond
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true5

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b40 = load i1, ptr @ip_mc_drop_socket.__warned, align 1
  br i1 %.b40, label %land.lhs.true5.do.end_crit_edge, label %if.then7

land.lhs.true5.do.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then7:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ip_mc_drop_socket.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2685, ptr noundef nonnull @.str.2) #12
  br label %do.end

do.end:                                           ; preds = %if.then7, %land.lhs.true5.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %while.cond.do.end_crit_edge
  %4 = ptrtoint ptr %mc_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mc_list, align 8
  %cmp.not = icmp eq ptr %5, null
  br i1 %cmp.not, label %while.end, label %while.body

while.body:                                       ; preds = %do.end
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %8 = ptrtoint ptr %mc_list to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %mc_list, align 8
  %imr_ifindex = getelementptr inbounds %struct.ip_mc_socklist, ptr %5, i32 0, i32 1, i32 2
  %9 = ptrtoint ptr %imr_ifindex to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %imr_ifindex, align 4
  %call11 = tail call ptr @inetdev_by_index(ptr noundef %1, i32 noundef %10) #12
  tail call fastcc void @ip_mc_leave_src(ptr noundef %sk, ptr noundef nonnull %5, ptr noundef %call11)
  %tobool13.not = icmp eq ptr %call11, null
  br i1 %tobool13.not, label %while.body.if.end16_crit_edge, label %if.then14

while.body.if.end16_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.then14:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %multi = getelementptr inbounds %struct.ip_mc_socklist, ptr %5, i32 0, i32 1
  %11 = ptrtoint ptr %multi to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %multi, align 4
  tail call void @__ip_mc_dec_group(ptr noundef nonnull %call11, i32 noundef %12, i32 noundef 3264) #12
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %while.body.if.end16_crit_edge
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_omem_alloc, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %sk_omem_alloc, i32 1, i32 3, i32 1) #12
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_omem_alloc, ptr %sk_omem_alloc, i32 32, ptr elementtype(i32) %sk_omem_alloc) #12, !srcloc !261
  %rcu = getelementptr inbounds %struct.ip_mc_socklist, ptr %5, i32 0, i32 4
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 24 to ptr)) #12
  br label %while.cond

while.end:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @rtnl_unlock() #12
  br label %cleanup

cleanup:                                          ; preds = %while.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inetdev_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip_check_mc_rcu(ptr noundef %in_dev, i32 noundef %mc_addr, i32 noundef %src_addr, i8 noundef zeroext %proto) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mc_hash1 = getelementptr inbounds %struct.in_device, ptr %in_dev, i32 0, i32 6
  %0 = ptrtoint ptr %mc_hash1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %mc_hash1, align 4
  %call = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end8_crit_edge

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8

land.lhs.true:                                    ; preds = %entry
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b163 = load i1, ptr @ip_check_mc_rcu.__warned, align 1
  br i1 %.b163, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ip_check_mc_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2708, ptr noundef nonnull @.str.20) #12
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %entry.do.end8_crit_edge
  %tobool10.not = icmp eq ptr %1, null
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %do.end8
  %mul.i.i = mul i32 %mc_addr, 1640531527
  %shr.i = lshr i32 %mul.i.i, 23
  %arrayidx = getelementptr ptr, ptr %1, i32 %shr.i
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %arrayidx, align 4
  %call18 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %land.lhs.true20, label %if.then11.do.end28_crit_edge

if.then11.do.end28_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end28

land.lhs.true20:                                  ; preds = %if.then11
  %call21 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %land.lhs.true20.do.end28_crit_edge, label %land.lhs.true23

land.lhs.true20.do.end28_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end28

land.lhs.true23:                                  ; preds = %land.lhs.true20
  %.b155162 = load i1, ptr @ip_check_mc_rcu.__warned.23, align 1
  br i1 %.b155162, label %land.lhs.true23.do.end28_crit_edge, label %if.then25

land.lhs.true23.do.end28_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end28

if.then25:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ip_check_mc_rcu.__warned.23, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2712, ptr noundef nonnull @.str.20) #12
  br label %do.end28

do.end28:                                         ; preds = %if.then25, %land.lhs.true23.do.end28_crit_edge, %land.lhs.true20.do.end28_crit_edge, %if.then11.do.end28_crit_edge
  %cmp.not167 = icmp eq ptr %3, null
  br i1 %cmp.not167, label %do.end28.if.end132_crit_edge, label %do.end28.for.body_crit_edge

do.end28.for.body_crit_edge:                      ; preds = %do.end28
  br label %for.body

do.end28.if.end132_crit_edge:                     ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end132

for.body:                                         ; preds = %do.end48.for.body_crit_edge, %do.end28.for.body_crit_edge
  %im.0168 = phi ptr [ %7, %do.end48.for.body_crit_edge ], [ %3, %do.end28.for.body_crit_edge ]
  %multiaddr = getelementptr inbounds %struct.ip_mc_list, ptr %im.0168, i32 0, i32 1
  %4 = ptrtoint ptr %multiaddr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %multiaddr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %mc_addr)
  %cmp30 = icmp eq i32 %5, %mc_addr
  br i1 %cmp30, label %for.body.if.end93_crit_edge, label %for.inc

for.body.if.end93_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end93

for.inc:                                          ; preds = %for.body
  %next_hash = getelementptr inbounds %struct.ip_mc_list, ptr %im.0168, i32 0, i32 7
  %6 = ptrtoint ptr %next_hash to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %next_hash, align 4
  %call38 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %land.lhs.true40, label %for.inc.do.end48_crit_edge

for.inc.do.end48_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end48

land.lhs.true40:                                  ; preds = %for.inc
  %call41 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %land.lhs.true40.do.end48_crit_edge, label %land.lhs.true43

land.lhs.true40.do.end48_crit_edge:               ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end48

land.lhs.true43:                                  ; preds = %land.lhs.true40
  %.b156161 = load i1, ptr @ip_check_mc_rcu.__warned.24, align 1
  br i1 %.b156161, label %land.lhs.true43.do.end48_crit_edge, label %if.then45

land.lhs.true43.do.end48_crit_edge:               ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end48

if.then45:                                        ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ip_check_mc_rcu.__warned.24, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2714, ptr noundef nonnull @.str.20) #12
  br label %do.end48

do.end48:                                         ; preds = %if.then45, %land.lhs.true43.do.end48_crit_edge, %land.lhs.true40.do.end48_crit_edge, %for.inc.do.end48_crit_edge
  %cmp.not = icmp eq ptr %7, null
  br i1 %cmp.not, label %do.end48.if.end132_crit_edge, label %do.end48.for.body_crit_edge

do.end48.for.body_crit_edge:                      ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

do.end48.if.end132_crit_edge:                     ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end132

if.else:                                          ; preds = %do.end8
  %mc_list = getelementptr inbounds %struct.in_device, ptr %in_dev, i32 0, i32 5
  %8 = ptrtoint ptr %mc_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %mc_list, align 4
  %call55 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %land.lhs.true57, label %if.else.do.end65_crit_edge

if.else.do.end65_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end65

land.lhs.true57:                                  ; preds = %if.else
  %call58 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true57.do.end65_crit_edge, label %land.lhs.true60

land.lhs.true57.do.end65_crit_edge:               ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end65

land.lhs.true60:                                  ; preds = %land.lhs.true57
  %.b157160 = load i1, ptr @ip_check_mc_rcu.__warned.25, align 1
  br i1 %.b157160, label %land.lhs.true60.do.end65_crit_edge, label %if.then62

land.lhs.true60.do.end65_crit_edge:               ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end65

if.then62:                                        ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ip_check_mc_rcu.__warned.25, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2719, ptr noundef nonnull @.str.20) #12
  br label %do.end65

do.end65:                                         ; preds = %if.then62, %land.lhs.true60.do.end65_crit_edge, %land.lhs.true57.do.end65_crit_edge, %if.else.do.end65_crit_edge
  %cmp68.not170 = icmp eq ptr %9, null
  br i1 %cmp68.not170, label %do.end65.if.end132_crit_edge, label %do.end65.for.body69_crit_edge

do.end65.for.body69_crit_edge:                    ; preds = %do.end65
  br label %for.body69

do.end65.if.end132_crit_edge:                     ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end132

for.body69:                                       ; preds = %do.end90.for.body69_crit_edge, %do.end65.for.body69_crit_edge
  %im.1171 = phi ptr [ %14, %do.end90.for.body69_crit_edge ], [ %9, %do.end65.for.body69_crit_edge ]
  %multiaddr70 = getelementptr inbounds %struct.ip_mc_list, ptr %im.1171, i32 0, i32 1
  %10 = ptrtoint ptr %multiaddr70 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %multiaddr70, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %mc_addr)
  %cmp71 = icmp eq i32 %11, %mc_addr
  br i1 %cmp71, label %for.body69.if.end93_crit_edge, label %for.inc74

for.body69.if.end93_crit_edge:                    ; preds = %for.body69
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end93

for.inc74:                                        ; preds = %for.body69
  %12 = getelementptr inbounds %struct.ip_mc_list, ptr %im.1171, i32 0, i32 6
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %12, align 4
  %call80 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %land.lhs.true82, label %for.inc74.do.end90_crit_edge

for.inc74.do.end90_crit_edge:                     ; preds = %for.inc74
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end90

land.lhs.true82:                                  ; preds = %for.inc74
  %call83 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %land.lhs.true82.do.end90_crit_edge, label %land.lhs.true85

land.lhs.true82.do.end90_crit_edge:               ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end90

land.lhs.true85:                                  ; preds = %land.lhs.true82
  %.b158159 = load i1, ptr @ip_check_mc_rcu.__warned.26, align 1
  br i1 %.b158159, label %land.lhs.true85.do.end90_crit_edge, label %if.then87

land.lhs.true85.do.end90_crit_edge:               ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end90

if.then87:                                        ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ip_check_mc_rcu.__warned.26, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2719, ptr noundef nonnull @.str.20) #12
  br label %do.end90

do.end90:                                         ; preds = %if.then87, %land.lhs.true85.do.end90_crit_edge, %land.lhs.true82.do.end90_crit_edge, %for.inc74.do.end90_crit_edge
  %cmp68.not = icmp eq ptr %14, null
  br i1 %cmp68.not, label %do.end90.if.end132_crit_edge, label %do.end90.for.body69_crit_edge

do.end90.for.body69_crit_edge:                    ; preds = %do.end90
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body69

do.end90.if.end132_crit_edge:                     ; preds = %do.end90
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end132

if.end93:                                         ; preds = %for.body69.if.end93_crit_edge, %for.body.if.end93_crit_edge
  %im.2 = phi ptr [ %im.1171, %for.body69.if.end93_crit_edge ], [ %im.0168, %for.body.if.end93_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %proto)
  %cmp96 = icmp eq i8 %proto, 2
  br i1 %cmp96, label %if.end93.if.end132_crit_edge, label %if.then101

if.end93.if.end132_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end132

if.then101:                                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %src_addr)
  %tobool102.not = icmp eq i32 %src_addr, 0
  br i1 %tobool102.not, label %if.then101.if.end132_crit_edge, label %if.then103

if.then101.if.end132_crit_edge:                   ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end132

if.then103:                                       ; preds = %if.then101
  %lock = getelementptr inbounds %struct.ip_mc_list, ptr %im.2, i32 0, i32 11
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  %sources = getelementptr inbounds %struct.ip_mc_list, ptr %im.2, i32 0, i32 3
  br label %for.cond104

for.cond104:                                      ; preds = %for.body106.for.cond104_crit_edge, %if.then103
  %psf.0.in = phi ptr [ %sources, %if.then103 ], [ %psf.0, %for.body106.for.cond104_crit_edge ]
  %15 = ptrtoint ptr %psf.0.in to i32
  call void @__asan_load4_noabort(i32 %15)
  %psf.0 = load ptr, ptr %psf.0.in, align 4
  %tobool105.not = icmp eq ptr %psf.0, null
  br i1 %tobool105.not, label %if.else122, label %for.body106

for.body106:                                      ; preds = %for.cond104
  %sf_inaddr = getelementptr inbounds %struct.ip_sf_list, ptr %psf.0, i32 0, i32 2
  %16 = ptrtoint ptr %sf_inaddr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sf_inaddr, align 4
  %cmp107 = icmp eq i32 %17, %src_addr
  br i1 %cmp107, label %if.then114.critedge, label %for.body106.for.cond104_crit_edge

for.body106.for.cond104_crit_edge:                ; preds = %for.body106
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond104

if.then114.critedge:                              ; preds = %for.body106
  %arrayidx115 = getelementptr %struct.ip_sf_list, ptr %psf.0, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx115, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool116.not = icmp eq i32 %19, 0
  br i1 %tobool116.not, label %lor.rhs, label %if.then114.critedge.if.end127_crit_edge

if.then114.critedge.if.end127_crit_edge:          ; preds = %if.then114.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end127

lor.rhs:                                          ; preds = %if.then114.critedge
  call void @__sanitizer_cov_trace_pc() #14
  %sf_count = getelementptr inbounds %struct.ip_sf_list, ptr %psf.0, i32 0, i32 1
  %sfcount = getelementptr inbounds %struct.ip_mc_list, ptr %im.2, i32 0, i32 5
  %20 = ptrtoint ptr %sfcount to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sfcount, align 4
  br label %if.end127.sink.split

if.else122:                                       ; preds = %for.cond104
  call void @__sanitizer_cov_trace_pc() #14
  %sfcount123 = getelementptr inbounds %struct.ip_mc_list, ptr %im.2, i32 0, i32 5
  br label %if.end127.sink.split

if.end127.sink.split:                             ; preds = %if.else122, %lor.rhs
  %.sink188 = phi i32 [ %21, %lor.rhs ], [ 0, %if.else122 ]
  %.sink.in = phi ptr [ %sf_count, %lor.rhs ], [ %sfcount123, %if.else122 ]
  %22 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %22)
  %.sink = load i32, ptr %.sink.in, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.sink, i32 %.sink188)
  %cmp120 = icmp ne i32 %.sink, %.sink188
  br label %if.end127

if.end127:                                        ; preds = %if.end127.sink.split, %if.then114.critedge.if.end127_crit_edge
  %rv.0.in = phi i1 [ true, %if.then114.critedge.if.end127_crit_edge ], [ %cmp120, %if.end127.sink.split ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  br label %if.end132

if.end132:                                        ; preds = %if.end127, %if.then101.if.end132_crit_edge, %if.end93.if.end132_crit_edge, %do.end90.if.end132_crit_edge, %do.end65.if.end132_crit_edge, %do.end48.if.end132_crit_edge, %do.end28.if.end132_crit_edge
  %rv.1.shrunk = phi i1 [ %rv.0.in, %if.end127 ], [ %cmp96, %if.end93.if.end132_crit_edge ], [ true, %if.then101.if.end132_crit_edge ], [ false, %do.end65.if.end132_crit_edge ], [ false, %do.end28.if.end132_crit_edge ], [ false, %do.end90.if.end132_crit_edge ], [ false, %do.end48.if.end132_crit_edge ]
  %rv.1 = zext i1 %rv.1.shrunk to i32
  ret i32 %rv.1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igmp_mc_init() local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_pernet_subsys(ptr noundef nonnull @igmp_net_ops) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @igmp_notifier) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %reg_notif_fail

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

reg_notif_fail:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @igmp_net_ops) #12
  br label %cleanup

cleanup:                                          ; preds = %reg_notif_fail, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %reg_notif_fail ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @__skb_checksum_complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @igmp_gq_start_timer(ptr noundef %in_dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @prandom_u32() #12
  %mr_maxdelay = getelementptr inbounds %struct.in_device, ptr %in_dev, i32 0, i32 12
  %0 = ptrtoint ptr %mr_maxdelay to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mr_maxdelay, align 4
  %rem = urem i32 %call, %1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %rem, 2
  %add1 = add i32 %add, %2
  %mr_gq_running = getelementptr inbounds %struct.in_device, ptr %in_dev, i32 0, i32 16
  %3 = ptrtoint ptr %mr_gq_running to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %mr_gq_running, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %expires = getelementptr inbounds %struct.in_device, ptr %in_dev, i32 0, i32 18, i32 1
  %5 = ptrtoint ptr %expires to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %expires, align 4
  %sub = sub i32 %add1, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp = icmp sgt i32 %sub, -1
  br i1 %cmp, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %mr_gq_running to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %mr_gq_running, align 1
  %mr_gq_timer4 = getelementptr inbounds %struct.in_device, ptr %in_dev, i32 0, i32 18
  %call5 = tail call i32 @mod_timer(ptr noundef %mr_gq_timer4, i32 noundef %add1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then7:                                         ; preds = %if.end
  %refcnt = getelementptr inbounds %struct.in_device, ptr %in_dev, i32 0, i32 2
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #12
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #12, !srcloc !249
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then7.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !244

if.then7.if.end15.sink.split.i.i.i_crit_edge:     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then7
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %9 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.cleanup_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !250

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.cleanup_crit_edge:                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then7.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then7.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef %.sink.i.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @igmp_stop_timer(ptr noundef %im) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.ip_mc_list, ptr %im, i32 0, i32 11
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  %timer = getelementptr inbounds %struct.ip_mc_list, ptr %im, i32 0, i32 8
  %call = tail call i32 @del_timer(ptr noundef %timer) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %refcnt = getelementptr inbounds %struct.ip_mc_list, ptr %im, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !246
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #12, !srcloc !247
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp slt i32 %asmresult.i.i.i.i.i, 2
  br i1 %cmp.i.i, label %if.then3.i.i, label %if.then.if.end_crit_edge, !prof !244

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then3.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 4) #12
  br label %if.end

if.end:                                           ; preds = %if.then3.i.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %tm_running = getelementptr inbounds %struct.ip_mc_list, ptr %im, i32 0, i32 12
  %1 = ptrtoint ptr %tm_running to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %tm_running, align 4
  %reporter = getelementptr inbounds %struct.ip_mc_list, ptr %im, i32 0, i32 13
  %2 = ptrtoint ptr %reporter to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %reporter, align 1
  %unsolicit_count = getelementptr inbounds %struct.ip_mc_list, ptr %im, i32 0, i32 14
  %3 = ptrtoint ptr %unsolicit_count to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %unsolicit_count, align 2
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @igmp_timer_expire(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -36
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %lock = getelementptr i8, ptr %t, i32 56
  tail call void @_raw_spin_lock(ptr noundef %lock) #12
  %tm_running = getelementptr i8, ptr %t, i32 100
  %2 = ptrtoint ptr %tm_running to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %tm_running, align 4
  %unsolicit_count = getelementptr i8, ptr %t, i32 102
  %3 = ptrtoint ptr %unsolicit_count to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %unsolicit_count, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %dec = add i8 %4, -1
  %5 = ptrtoint ptr %unsolicit_count to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %dec, ptr %unsolicit_count, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec)
  %tobool3.not = icmp eq i8 %dec, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 127
  %8 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nd_net.i.i, align 4
  %devconf_all.i = getelementptr inbounds %struct.net, ptr %9, i32 0, i32 35, i32 6
  %10 = ptrtoint ptr %devconf_all.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %devconf_all.i, align 4
  %arrayidx.i = getelementptr %struct.ipv4_devconf, ptr %11, i32 0, i32 1, i32 16
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp.i = icmp eq i32 %13, 1
  br i1 %cmp.i, label %if.then.if.then.i_crit_edge, label %lor.lhs.false.i

if.then.if.then.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.then
  %arrayidx.i.i = getelementptr %struct.in_device, ptr %1, i32 0, i32 21, i32 1, i32 16
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp2.i = icmp eq i32 %15, 1
  br i1 %cmp2.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false3.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i
  %mr_v1_seen.i = getelementptr inbounds %struct.in_device, ptr %1, i32 0, i32 10
  %16 = ptrtoint ptr %mr_v1_seen.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mr_v1_seen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %lor.lhs.false6.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false3.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %18, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp5.i = icmp slt i32 %sub.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp13.i = icmp eq i32 %13, 2
  %or.cond.i = select i1 %cmp5.i, i1 true, i1 %cmp13.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp16.i = icmp eq i32 %15, 2
  %or.cond43.i = select i1 %or.cond.i, i1 true, i1 %cmp16.i
  br i1 %or.cond43.i, label %land.lhs.true.i.if.then.i_crit_edge, label %land.lhs.true.i.lor.lhs.false17.i_crit_edge

land.lhs.true.i.lor.lhs.false17.i_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false17.i

land.lhs.true.i.if.then.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

lor.lhs.false6.i:                                 ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp13.old.i = icmp eq i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp16.old.i = icmp eq i32 %15, 2
  %or.cond44.i = select i1 %cmp13.old.i, i1 true, i1 %cmp16.old.i
  br i1 %or.cond44.i, label %lor.lhs.false6.i.if.then.i_crit_edge, label %lor.lhs.false6.i.lor.lhs.false17.i_crit_edge

lor.lhs.false6.i.lor.lhs.false17.i_crit_edge:     ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false17.i

lor.lhs.false6.i.if.then.i_crit_edge:             ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

lor.lhs.false17.i:                                ; preds = %lor.lhs.false6.i.lor.lhs.false17.i_crit_edge, %land.lhs.true.i.lor.lhs.false17.i_crit_edge
  %mr_v2_seen.i = getelementptr inbounds %struct.in_device, ptr %1, i32 0, i32 11
  %19 = ptrtoint ptr %mr_v2_seen.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mr_v2_seen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool18.not.i = icmp eq i32 %20, 0
  br i1 %tobool18.not.i, label %lor.lhs.false17.i.if.else.i_crit_edge, label %land.lhs.true19.i

lor.lhs.false17.i.if.else.i_crit_edge:            ; preds = %lor.lhs.false17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

land.lhs.true19.i:                                ; preds = %lor.lhs.false17.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %sub21.i = sub i32 %21, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub21.i)
  %cmp22.i = icmp slt i32 %sub21.i, 0
  br i1 %cmp22.i, label %land.lhs.true19.i.if.then.i_crit_edge, label %land.lhs.true19.i.if.else.i_crit_edge

land.lhs.true19.i.if.else.i_crit_edge:            ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

land.lhs.true19.i.if.then.i_crit_edge:            ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true19.i.if.then.i_crit_edge, %lor.lhs.false6.i.if.then.i_crit_edge, %land.lhs.true.i.if.then.i_crit_edge, %lor.lhs.false.i.if.then.i_crit_edge, %if.then.if.then.i_crit_edge
  %arrayidx.i41.i = getelementptr %struct.in_device, ptr %1, i32 0, i32 21, i32 1, i32 26
  br label %if.else.i.i

if.else.i:                                        ; preds = %land.lhs.true19.i.if.else.i_crit_edge, %lor.lhs.false17.i.if.else.i_crit_edge
  %arrayidx.i42.i = getelementptr %struct.in_device, ptr %1, i32 0, i32 21, i32 1, i32 27
  br label %if.else.i.i

if.else.i.i:                                      ; preds = %if.else.i, %if.then.i
  %interval_ms.0.in.i = phi ptr [ %arrayidx.i41.i, %if.then.i ], [ %arrayidx.i42.i, %if.else.i ]
  %22 = ptrtoint ptr %interval_ms.0.in.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %interval_ms.0.i = load i32, ptr %interval_ms.0.in.i, align 4
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %interval_ms.0.i) #12
  %23 = tail call i32 @llvm.smax.i32(i32 %call2.i.i, i32 1) #12
  %call.i = tail call i32 @prandom_u32() #12
  %rem.i = urem i32 %call.i, %23
  %24 = ptrtoint ptr %tm_running to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %tm_running, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %25 = load volatile i32, ptr @jiffies, align 128
  %add.i = add nuw i32 %rem.i, 2
  %add1.i = add i32 %add.i, %25
  %call2.i = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add1.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i65 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i65, label %if.then.i66, label %if.else.i.i.if.end_crit_edge

if.else.i.i.if.end_crit_edge:                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then.i66:                                      ; preds = %if.else.i.i
  %refcnt.i = getelementptr i8, ptr %t, i32 52
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #12
  %26 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #12, !srcloc !249
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i66.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !244

if.then.i66.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.then.i66
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i66
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %27 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %.not.i.i.i.i = icmp sgt i32 %27, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !250

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end_crit_edge:                 ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i66.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i66.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef %.sink.i.i.i.i) #12
  br label %if.end

if.end:                                           ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end_crit_edge, %if.else.i.i.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %reporter = getelementptr i8, ptr %t, i32 101
  %28 = ptrtoint ptr %reporter to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %reporter, align 1
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %30, i32 0, i32 127
  %31 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %nd_net.i, align 4
  %devconf_all = getelementptr inbounds %struct.net, ptr %32, i32 0, i32 35, i32 6
  %33 = ptrtoint ptr %devconf_all to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %devconf_all, align 4
  %arrayidx = getelementptr %struct.ipv4_devconf, ptr %34, i32 0, i32 1, i32 16
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %36)
  %cmp = icmp eq i32 %36, 1
  br i1 %cmp, label %if.end.if.then16_crit_edge, label %lor.lhs.false

if.end.if.then16_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then16

lor.lhs.false:                                    ; preds = %if.end
  %arrayidx.i68 = getelementptr %struct.in_device, ptr %1, i32 0, i32 21, i32 1, i32 16
  %37 = ptrtoint ptr %arrayidx.i68 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i68, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %38)
  %cmp8 = icmp eq i32 %38, 1
  br i1 %cmp8, label %lor.lhs.false.if.then16_crit_edge, label %lor.lhs.false10

lor.lhs.false.if.then16_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then16

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %mr_v1_seen = getelementptr inbounds %struct.in_device, ptr %1, i32 0, i32 10
  %39 = ptrtoint ptr %mr_v1_seen to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mr_v1_seen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool11.not = icmp eq i32 %40, 0
  br i1 %tobool11.not, label %lor.lhs.false10.if.else_crit_edge, label %land.lhs.true12

lor.lhs.false10.if.else_crit_edge:                ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true12:                                  ; preds = %lor.lhs.false10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %41 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %41, %40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp14 = icmp slt i32 %sub, 0
  br i1 %cmp14, label %land.lhs.true12.if.then16_crit_edge, label %land.lhs.true12.if.else_crit_edge

land.lhs.true12.if.else_crit_edge:                ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true12.if.then16_crit_edge:              ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then16

if.then16:                                        ; preds = %land.lhs.true12.if.then16_crit_edge, %lor.lhs.false.if.then16_crit_edge, %if.end.if.then16_crit_edge
  tail call fastcc void @igmp_send_report(ptr noundef %1, ptr noundef %add.ptr, i32 noundef 18)
  br label %if.end42

if.else:                                          ; preds = %land.lhs.true12.if.else_crit_edge, %lor.lhs.false10.if.else_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %36)
  %cmp24 = icmp eq i32 %36, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %38)
  %cmp28 = icmp eq i32 %38, 2
  %or.cond = select i1 %cmp24, i1 true, i1 %cmp28
  br i1 %or.cond, label %if.else.if.then37_crit_edge, label %lor.lhs.false30

if.else.if.then37_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then37

lor.lhs.false30:                                  ; preds = %if.else
  %mr_v2_seen = getelementptr inbounds %struct.in_device, ptr %1, i32 0, i32 11
  %42 = ptrtoint ptr %mr_v2_seen to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %mr_v2_seen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool31.not = icmp eq i32 %43, 0
  br i1 %tobool31.not, label %lor.lhs.false30.if.else39_crit_edge, label %land.lhs.true32

lor.lhs.false30.if.else39_crit_edge:              ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else39

land.lhs.true32:                                  ; preds = %lor.lhs.false30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %44 = load volatile i32, ptr @jiffies, align 128
  %sub34 = sub i32 %44, %43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub34)
  %cmp35 = icmp slt i32 %sub34, 0
  br i1 %cmp35, label %land.lhs.true32.if.then37_crit_edge, label %land.lhs.true32.if.else39_crit_edge

land.lhs.true32.if.else39_crit_edge:              ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else39

land.lhs.true32.if.then37_crit_edge:              ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then37

if.then37:                                        ; preds = %land.lhs.true32.if.then37_crit_edge, %if.else.if.then37_crit_edge
  tail call fastcc void @igmp_send_report(ptr noundef %1, ptr noundef %add.ptr, i32 noundef 22)
  br label %if.end42

if.else39:                                        ; preds = %land.lhs.true32.if.else39_crit_edge, %lor.lhs.false30.if.else39_crit_edge
  %call2.i73 = tail call fastcc i32 @igmpv3_send_report(ptr noundef %1, ptr noundef %add.ptr) #12
  br label %if.end42

if.end42:                                         ; preds = %if.else39, %if.then37, %if.then16
  tail call fastcc void @ip_ma_put(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @igmp_send_report(ptr noundef %in_dev, ptr noundef %pmc, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  %fl4 = alloca %struct.flowi4, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %in_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %in_dev, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 127
  %2 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nd_net.i, align 4
  %tobool.not = icmp eq ptr %pmc, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %multiaddr = getelementptr inbounds %struct.ip_mc_list, ptr %pmc, i32 0, i32 1
  %4 = ptrtoint ptr %multiaddr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %multiaddr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %5, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %fl4) #12
  %6 = getelementptr inbounds i8, ptr %fl4, i32 32
  %7 = call ptr @memset(ptr %6, i32 255, i32 24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %type)
  %cmp = icmp eq i32 %type, 34
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  %call2 = tail call fastcc i32 @igmpv3_send_report(ptr noundef %in_dev, ptr noundef %pmc)
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %and.i = and i32 %cond, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, -536870912
  br i1 %cmp.i, label %land.lhs.true, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %sysctl_igmp_llm_reports = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 35, i32 119
  %8 = ptrtoint ptr %sysctl_igmp_llm_reports to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %sysctl_igmp_llm_reports, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool4.not = icmp eq i8 %9, 0
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %type)
  %cmp7 = icmp eq i32 %type, 23
  %.cond = select i1 %cmp7, i32 -536870910, i32 %cond
  %ifindex = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 17
  %10 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ifindex, align 4
  %user_ns.i.i = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 11
  %12 = ptrtoint ptr %user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %user_ns.i.i, align 4
  %call.i.i = tail call i32 @make_kuid(ptr noundef %13, i32 noundef 0) #12
  %14 = ptrtoint ptr %fl4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %11, ptr %fl4, align 8
  %flowic_iif.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 1
  %15 = ptrtoint ptr %flowic_iif.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %flowic_iif.i.i, align 4
  %flowic_mark.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 2
  %16 = ptrtoint ptr %flowic_mark.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %flowic_mark.i.i, align 8
  %flowic_tos.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 3
  %17 = ptrtoint ptr %flowic_tos.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %flowic_tos.i.i, align 4
  %flowic_scope.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 4
  %18 = ptrtoint ptr %flowic_scope.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %flowic_scope.i.i, align 1
  %flowic_proto.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 5
  %19 = ptrtoint ptr %flowic_proto.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 2, ptr %flowic_proto.i.i, align 2
  %flowic_flags.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 6
  %20 = ptrtoint ptr %flowic_flags.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %flowic_flags.i.i, align 1
  %flowic_secid.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 7
  %21 = ptrtoint ptr %flowic_secid.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %flowic_secid.i.i, align 8
  %flowic_tun_key.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 9
  %22 = ptrtoint ptr %flowic_tun_key.i.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 0, ptr %flowic_tun_key.i.i, align 8
  %flowic_uid.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 8
  %23 = ptrtoint ptr %flowic_uid.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call.i.i, ptr %flowic_uid.i.i, align 4
  %daddr10.i.i = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 2
  %24 = ptrtoint ptr %daddr10.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %.cond, ptr %daddr10.i.i, align 4
  %saddr11.i.i = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 1
  %25 = ptrtoint ptr %saddr11.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %saddr11.i.i, align 8
  %uli.i.i = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 3
  %26 = ptrtoint ptr %uli.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %uli.i.i, align 8
  %sport14.i.i = getelementptr inbounds %struct.anon.23, ptr %uli.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %sport14.i.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %sport14.i.i, align 2
  %flowic_multipath_hash.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 10
  %28 = ptrtoint ptr %flowic_multipath_hash.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %flowic_multipath_hash.i.i, align 8
  %call11.i = call ptr @ip_route_output_flow(ptr noundef %3, ptr noundef nonnull %fl4, ptr noundef null) #12
  %cmp.i1 = icmp ugt ptr %call11.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1, label %if.end6.cleanup_crit_edge, label %if.end13

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 19
  %29 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %hard_header_len, align 2
  %conv = zext i16 %30 to i32
  %needed_headroom = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 21
  %31 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %needed_headroom, align 8
  %conv14 = zext i16 %32 to i32
  %add = add nuw nsw i32 %conv14, %conv
  %and = and i32 %add, 131056
  %needed_tailroom = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 22
  %33 = ptrtoint ptr %needed_tailroom to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %needed_tailroom, align 2
  %conv16 = zext i16 %34 to i32
  %add17 = add nuw nsw i32 %conv16, 48
  %add18 = add nuw nsw i32 %add17, %and
  %call.i = call ptr @__alloc_skb(i32 noundef %add18, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #12
  %tobool20.not = icmp eq ptr %call.i, null
  br i1 %tobool20.not, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  call void @dst_release(ptr noundef %call11.i) #12
  br label %cleanup

if.end22:                                         ; preds = %if.end13
  %add15 = add nuw nsw i32 %and, 16
  %priority = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 6
  %35 = ptrtoint ptr %priority to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 7, ptr %priority, align 4
  %tobool.not.i = icmp eq ptr %call11.i, null
  %slow_gro.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 3
  %36 = ptrtoint ptr %slow_gro.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %bf.load.i = load i32, ptr %slow_gro.i, align 2
  %bf.load.mask.i = and i32 %bf.load.i, 4096
  %bf.shl.i = select i1 %tobool.not.i, i32 %bf.load.mask.i, i32 4096
  %bf.clear4.i = and i32 %bf.load.i, -4097
  %bf.set.i = or i32 %bf.shl.i, %bf.clear4.i
  store i32 %bf.set.i, ptr %slow_gro.i, align 2
  %37 = ptrtoint ptr %call11.i to i32
  %38 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %37, ptr %38, align 8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %40 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %41, i32 %add15
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %42 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %43, i32 %add15
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 18
  %44 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %45 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 20
  %46 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv.i, ptr %network_header.i, align 4
  %conv.i.i = and i32 %sub.ptr.sub.i, 65535
  %add.ptr.i.i = getelementptr i8, ptr %45, i32 %conv.i.i
  %call25 = call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 24) #12
  %47 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 70, ptr %add.ptr.i.i, align 4
  %tos = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 1
  %48 = ptrtoint ptr %tos to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 -64, ptr %tos, align 1
  %frag_off = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 4
  %49 = ptrtoint ptr %frag_off to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 16384, ptr %frag_off, align 2
  %ttl = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 5
  %50 = ptrtoint ptr %ttl to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %ttl, align 4
  %daddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 9
  %51 = ptrtoint ptr %daddr to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %.cond, ptr %daddr, align 4
  %52 = ptrtoint ptr %saddr11.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %saddr11.i.i, align 8
  %saddr29 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 8
  %54 = ptrtoint ptr %saddr29 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %saddr29, align 4
  %protocol = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 6
  %55 = ptrtoint ptr %protocol to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 2, ptr %protocol, align 1
  %56 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %head.i, align 8
  %58 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %network_header.i, align 4
  %conv.i.i.i.i = zext i16 %59 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %57, i32 %conv.i.i.i.i
  %frag_off.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i.i, i32 0, i32 4
  %60 = ptrtoint ptr %frag_off.i.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %frag_off.i.i, align 2
  %62 = and i16 %61, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %62)
  %tobool9.not.i.i = icmp eq i16 %62, 0
  br i1 %tobool9.not.i.i, label %if.end22.if.else.i.i_crit_edge, label %land.lhs.true10.i.i

if.end22.if.else.i.i_crit_edge:                   ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i.i

land.lhs.true10.i.i:                              ; preds = %if.end22
  %ignore_df.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15
  %63 = ptrtoint ptr %ignore_df.i.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %bf.load.i.i = load i16, ptr %ignore_df.i.i, align 8
  %64 = and i16 %bf.load.i.i, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %64)
  %tobool11.not.i.i = icmp eq i16 %64, 0
  br i1 %tobool11.not.i.i, label %if.then12.i.i, label %land.lhs.true10.i.i.if.else.i.i_crit_edge

land.lhs.true10.i.i.if.else.i.i_crit_edge:        ; preds = %land.lhs.true10.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i.i

if.then12.i.i:                                    ; preds = %land.lhs.true10.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %id13.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i.i, i32 0, i32 3
  %65 = ptrtoint ptr %id13.i.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 0, ptr %id13.i.i, align 4
  br label %ip_select_ident.exit

if.else.i.i:                                      ; preds = %land.lhs.true10.i.i.if.else.i.i_crit_edge, %if.end22.if.else.i.i_crit_edge
  call void @__ip_select_ident(ptr noundef %3, ptr noundef %add.ptr.i.i.i.i, i32 noundef 1) #12
  br label %ip_select_ident.exit

ip_select_ident.exit:                             ; preds = %if.else.i.i, %if.then12.i.i
  %arrayidx = getelementptr %struct.iphdr, ptr %add.ptr.i.i, i32 1
  %66 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 -108, ptr %arrayidx, align 1
  %arrayidx32 = getelementptr %struct.iphdr, ptr %add.ptr.i.i, i32 1, i32 1
  %67 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 4, ptr %arrayidx32, align 1
  %arrayidx34 = getelementptr %struct.iphdr, ptr %add.ptr.i.i, i32 1, i32 2
  %68 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %arrayidx34, align 1
  %arrayidx36 = getelementptr i8, ptr %arrayidx, i32 3
  %69 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %arrayidx36, align 1
  %call37 = call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 8) #12
  %conv38 = trunc i32 %type to i8
  %70 = ptrtoint ptr %call37 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv38, ptr %call37, align 4
  %code = getelementptr inbounds %struct.igmphdr, ptr %call37, i32 0, i32 1
  %71 = ptrtoint ptr %code to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %code, align 1
  %csum = getelementptr inbounds %struct.igmphdr, ptr %call37, i32 0, i32 2
  %72 = ptrtoint ptr %csum to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 0, ptr %csum, align 2
  %group40 = getelementptr inbounds %struct.igmphdr, ptr %call37, i32 0, i32 3
  %73 = ptrtoint ptr %group40 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %cond, ptr %group40, align 4
  %call.i3 = call i32 @csum_partial(ptr noundef %call37, i32 noundef 8, i32 noundef 0) #12
  %74 = call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i3) #15, !srcloc !245
  %neg.i.i = xor i32 %74, -1
  %shr.i.i = lshr i32 %neg.i.i, 16
  %conv.i.i4 = trunc i32 %shr.i.i to i16
  %75 = ptrtoint ptr %csum to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %conv.i.i4, ptr %csum, align 2
  %76 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 1
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %76, align 4
  %call43 = call i32 @ip_local_out(ptr noundef %3, ptr noundef %78, ptr noundef nonnull %call.i) #12
  br label %cleanup

cleanup:                                          ; preds = %ip_select_ident.exit, %if.then21, %if.end6.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.then
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %fl4) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @igmpv3_send_report(ptr noundef %in_dev, ptr noundef %pmc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %in_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %in_dev, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 127
  %2 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nd_net.i, align 4
  %tobool.not = icmp eq ptr %pmc, null
  br i1 %tobool.not, label %if.then, label %if.else43

if.then:                                          ; preds = %entry
  %4 = tail call i32 @llvm.read_register.i32(metadata !234) #12
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !248
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %if.then.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then.rcu_read_lock.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.49, i32 noundef 696, ptr noundef nonnull @.str.50) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then.rcu_read_lock.exit_crit_edge
  %mc_list = getelementptr inbounds %struct.in_device, ptr %in_dev, i32 0, i32 5
  %8 = ptrtoint ptr %mc_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %mc_list, align 4
  %call2 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end10_crit_edge

rcu_read_lock.exit.do.end10_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end10_crit_edge, label %land.lhs.true6

land.lhs.true.do.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b79 = load i1, ptr @igmpv3_send_report.__warned, align 1
  br i1 %.b79, label %land.lhs.true6.do.end10_crit_edge, label %if.then8

land.lhs.true6.do.end10_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

if.then8:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @igmpv3_send_report.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 592, ptr noundef nonnull @.str.20) #12
  br label %do.end10

do.end10:                                         ; preds = %if.then8, %land.lhs.true6.do.end10_crit_edge, %land.lhs.true.do.end10_crit_edge, %rcu_read_lock.exit.do.end10_crit_edge
  %cmp.not90 = icmp eq ptr %9, null
  br i1 %cmp.not90, label %do.end10.for.end_crit_edge, label %for.body.lr.ph

do.end10.for.end_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end10
  %sysctl_igmp_llm_reports = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 35, i32 119
  br label %for.body

for.body:                                         ; preds = %do.end41.for.body_crit_edge, %for.body.lr.ph
  %pmc.addr.093 = phi ptr [ %9, %for.body.lr.ph ], [ %18, %do.end41.for.body_crit_edge ]
  %skb.091 = phi ptr [ null, %for.body.lr.ph ], [ %skb.1, %do.end41.for.body_crit_edge ]
  %multiaddr = getelementptr inbounds %struct.ip_mc_list, ptr %pmc.addr.093, i32 0, i32 1
  %10 = ptrtoint ptr %multiaddr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %multiaddr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870911, i32 %11)
  %cmp12 = icmp eq i32 %11, -536870911
  br i1 %cmp12, label %for.body.for.inc_crit_edge, label %if.end14

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end14:                                         ; preds = %for.body
  %and.i = and i32 %11, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, -536870912
  br i1 %cmp.i, label %land.lhs.true17, label %if.end14.if.end20_crit_edge

if.end14.if.end20_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

land.lhs.true17:                                  ; preds = %if.end14
  %12 = ptrtoint ptr %sysctl_igmp_llm_reports to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %sysctl_igmp_llm_reports, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool18.not = icmp eq i8 %13, 0
  br i1 %tobool18.not, label %land.lhs.true17.for.inc_crit_edge, label %land.lhs.true17.if.end20_crit_edge

land.lhs.true17.if.end20_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

land.lhs.true17.for.inc_crit_edge:                ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end20:                                         ; preds = %land.lhs.true17.if.end20_crit_edge, %if.end14.if.end20_crit_edge
  %lock = getelementptr inbounds %struct.ip_mc_list, ptr %pmc.addr.093, i32 0, i32 11
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  %sfcount = getelementptr inbounds %struct.ip_mc_list, ptr %pmc.addr.093, i32 0, i32 5
  %14 = ptrtoint ptr %sfcount to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sfcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool21.not = icmp eq i32 %15, 0
  %. = select i1 %tobool21.not, i32 1, i32 2
  %call24 = tail call fastcc ptr @add_grec(ptr noundef %skb.091, ptr noundef nonnull %pmc.addr.093, i32 noundef %., i32 noundef 0, i32 noundef 0)
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  br label %for.inc

for.inc:                                          ; preds = %if.end20, %land.lhs.true17.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %skb.1 = phi ptr [ %skb.091, %for.body.for.inc_crit_edge ], [ %call24, %if.end20 ], [ %skb.091, %land.lhs.true17.for.inc_crit_edge ]
  %16 = getelementptr inbounds %struct.ip_mc_list, ptr %pmc.addr.093, i32 0, i32 6
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %16, align 4
  %call31 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %land.lhs.true33, label %for.inc.do.end41_crit_edge

for.inc.do.end41_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end41

land.lhs.true33:                                  ; preds = %for.inc
  %call34 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %land.lhs.true33.do.end41_crit_edge, label %land.lhs.true36

land.lhs.true33.do.end41_crit_edge:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end41

land.lhs.true36:                                  ; preds = %land.lhs.true33
  %.b7778 = load i1, ptr @igmpv3_send_report.__warned.35, align 1
  br i1 %.b7778, label %land.lhs.true36.do.end41_crit_edge, label %if.then38

land.lhs.true36.do.end41_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end41

if.then38:                                        ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @igmpv3_send_report.__warned.35, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 592, ptr noundef nonnull @.str.20) #12
  br label %do.end41

do.end41:                                         ; preds = %if.then38, %land.lhs.true36.do.end41_crit_edge, %land.lhs.true33.do.end41_crit_edge, %for.inc.do.end41_crit_edge
  %cmp.not = icmp eq ptr %18, null
  br i1 %cmp.not, label %do.end41.for.end_crit_edge, label %do.end41.for.body_crit_edge

do.end41.for.body_crit_edge:                      ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

do.end41.for.end_crit_edge:                       ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %do.end41.for.end_crit_edge, %do.end10.for.end_crit_edge
  %skb.0.lcssa = phi ptr [ null, %do.end10.for.end_crit_edge ], [ %skb.1, %do.end41.for.end_crit_edge ]
  %call.i81 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i81, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i84

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i84:                                ; preds = %for.end
  %call1.i82 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i82)
  %tobool.not.i83 = icmp eq i32 %call1.i82, 0
  br i1 %tobool.not.i83, label %land.lhs.true.i84.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i86

land.lhs.true.i84.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i84
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i86:                               ; preds = %land.lhs.true.i84
  %.b4.i85 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i85, label %land.lhs.true2.i86.rcu_read_unlock.exit_crit_edge, label %if.then.i87

land.lhs.true2.i86.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i86
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i87:                                      ; preds = %land.lhs.true2.i86
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.49, i32 noundef 724, ptr noundef nonnull @.str.51) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i87, %land.lhs.true2.i86.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i84.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !251
  %19 = tail call i32 @llvm.read_register.i32(metadata !234) #12
  %and.i.i.i.i.i88 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i88 to ptr
  %preempt_count.i.i.i.i89 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i.i.i89 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i.i.i89, align 4
  %sub.i.i.i = add i32 %22, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i89, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %if.end53

if.else43:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %lock44 = getelementptr inbounds %struct.ip_mc_list, ptr %pmc, i32 0, i32 11
  tail call void @_raw_spin_lock_bh(ptr noundef %lock44) #12
  %sfcount45 = getelementptr inbounds %struct.ip_mc_list, ptr %pmc, i32 0, i32 5
  %23 = ptrtoint ptr %sfcount45 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sfcount45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool47.not = icmp eq i32 %24, 0
  %.80 = select i1 %tobool47.not, i32 1, i32 2
  %call51 = tail call fastcc ptr @add_grec(ptr noundef null, ptr noundef nonnull %pmc, i32 noundef %.80, i32 noundef 0, i32 noundef 0)
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock44) #12
  br label %if.end53

if.end53:                                         ; preds = %if.else43, %rcu_read_unlock.exit
  %skb.2 = phi ptr [ %call51, %if.else43 ], [ %skb.0.lcssa, %rcu_read_unlock.exit ]
  %tobool54.not = icmp eq ptr %skb.2, null
  br i1 %tobool54.not, label %if.end53.cleanup_crit_edge, label %if.end56

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end56:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  %call57 = tail call fastcc i32 @igmpv3_sendpack(ptr noundef nonnull %skb.2)
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %if.end53.cleanup_crit_edge
  %retval.0 = phi i32 [ %call57, %if.end56 ], [ 0, %if.end53.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_local_out(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @add_grec(ptr noundef %skb, ptr nocapture noundef %pmc, i32 noundef %type, i32 noundef %gdeleted, i32 noundef %sdeleted) unnamed_addr #0 align 64 {
entry:
  %pgr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pmc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmc, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 127
  %4 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nd_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pgr) #12
  %6 = ptrtoint ptr %pgr to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %pgr, align 4
  %multiaddr = getelementptr inbounds %struct.ip_mc_list, ptr %pmc, i32 0, i32 1
  %7 = ptrtoint ptr %multiaddr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %multiaddr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870911, i32 %8)
  %cmp = icmp eq i32 %8, -536870911
  br i1 %cmp, label %entry.cleanup177_crit_edge, label %if.end

entry.cleanup177_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup177

if.end:                                           ; preds = %entry
  %and.i = and i32 %8, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, -536870912
  br i1 %cmp.i, label %land.lhs.true, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %if.end
  %sysctl_igmp_llm_reports = getelementptr inbounds %struct.net, ptr %5, i32 0, i32 35, i32 119
  %9 = ptrtoint ptr %sysctl_igmp_llm_reports to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %sysctl_igmp_llm_reports, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %land.lhs.true.cleanup177_crit_edge, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true.cleanup177_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup177

do.end:                                           ; preds = %land.lhs.true.do.end_crit_edge, %if.end.do.end_crit_edge
  %mtu6 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 20
  %11 = ptrtoint ptr %mtu6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %mtu6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %12)
  %cmp7 = icmp ult i32 %12, 68
  br i1 %cmp7, label %do.end.cleanup177_crit_edge, label %lor.end15

do.end.cleanup177_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup177

lor.end15:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sdeleted)
  %tobool17.not = icmp eq i32 %sdeleted, 0
  %tomb = getelementptr inbounds %struct.ip_mc_list, ptr %pmc, i32 0, i32 4
  %sources = getelementptr inbounds %struct.ip_mc_list, ptr %pmc, i32 0, i32 3
  %cond = select i1 %tobool17.not, ptr %sources, ptr %tomb
  %13 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cond, align 4
  %tobool18.not = icmp eq ptr %14, null
  br i1 %tobool18.not, label %lor.end15.if.then139_crit_edge, label %if.end20

lor.end15.if.then139_crit_edge:                   ; preds = %lor.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then139

if.end20:                                         ; preds = %lor.end15
  %tobool21.not = icmp eq ptr %skb, null
  br i1 %tobool21.not, label %if.end20.cond.end25_crit_edge, label %cond.true22

if.end20.cond.end25_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end25

cond.true22:                                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %15 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %17 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %18 to i32
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 %conv.i.i
  br label %cond.end25

cond.end25:                                       ; preds = %cond.true22, %if.end20.cond.end25_crit_edge
  %cond26 = phi ptr [ %add.ptr.i.i, %cond.true22 ], [ null, %if.end20.cond.end25_crit_edge ]
  %19 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %type, label %cond.end25.if.end49_crit_edge [
    i32 4, label %cond.end25.if.then28_crit_edge
    i32 2, label %cond.end25.if.then28_crit_edge396
  ]

cond.end25.if.then28_crit_edge396:                ; preds = %cond.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then28

cond.end25.if.then28_crit_edge:                   ; preds = %cond.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then28

cond.end25.if.end49_crit_edge:                    ; preds = %cond.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

if.then28:                                        ; preds = %cond.end25.if.then28_crit_edge, %cond.end25.if.then28_crit_edge396
  %tobool29.not = icmp eq ptr %cond26, null
  br i1 %tobool29.not, label %if.then28.if.end49_crit_edge, label %land.lhs.true30

if.then28.if.end49_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

land.lhs.true30:                                  ; preds = %if.then28
  %ngrec = getelementptr inbounds %struct.igmpv3_report, ptr %cond26, i32 0, i32 4
  %20 = ptrtoint ptr %ngrec to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %ngrec, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool31.not = icmp eq i16 %21, 0
  br i1 %tobool31.not, label %land.lhs.true30.if.end49_crit_edge, label %land.lhs.true32

land.lhs.true30.if.end49_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

land.lhs.true32:                                  ; preds = %land.lhs.true30
  br i1 %tobool21.not, label %land.lhs.true32.cond.end37_crit_edge, label %cond.true34

land.lhs.true32.cond.end37_crit_edge:             ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end37

cond.true34:                                      ; preds = %land.lhs.true32
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %22 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.i.not.i = icmp eq i32 %23, 0
  br i1 %tobool.i.not.i, label %if.end.i, label %cond.true34.cond.end37_crit_edge

cond.true34.cond.end37_crit_edge:                 ; preds = %cond.true34
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end37

if.end.i:                                         ; preds = %cond.true34
  call void @__sanitizer_cov_trace_pc() #14
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %24 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %26 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %25 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %27 to i32
  %28 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  %31 = add i32 %30, %sub.ptr.rhs.cast.i
  %sub.i = sub i32 %sub.ptr.lhs.cast.i, %31
  br label %cond.end37

cond.end37:                                       ; preds = %if.end.i, %cond.true34.cond.end37_crit_edge, %land.lhs.true32.cond.end37_crit_edge
  %cond38 = phi i32 [ 0, %land.lhs.true32.cond.end37_crit_edge ], [ %sub.i, %if.end.i ], [ 0, %cond.true34.cond.end37_crit_edge ]
  %32 = ptrtoint ptr %sources to i32
  call void @__asan_load4_noabort(i32 %32)
  %psf.06.i.i = load ptr, ptr %sources, align 4
  %tobool.not7.i.i = icmp eq ptr %psf.06.i.i, null
  br i1 %tobool.not7.i.i, label %cond.end37.grec_size.exit_crit_edge, label %cond.end37.for.body.i.i_crit_edge

cond.end37.for.body.i.i_crit_edge:                ; preds = %cond.end37
  br label %for.body.i.i

cond.end37.grec_size.exit_crit_edge:              ; preds = %cond.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %grec_size.exit

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %cond.end37.for.body.i.i_crit_edge
  %psf.09.i.i = phi ptr [ %psf.0.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %psf.06.i.i, %cond.end37.for.body.i.i_crit_edge ]
  %scount.08.i.i = phi i32 [ %spec.select.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %cond.end37.for.body.i.i_crit_edge ]
  %call.i.i = tail call fastcc i32 @is_in(ptr noundef %pmc, ptr noundef nonnull %psf.09.i.i, i32 noundef %type, i32 noundef %gdeleted, i32 noundef %sdeleted) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp ne i32 %call.i.i, 0
  %inc.i.i = zext i1 %tobool1.not.i.i to i32
  %spec.select.i.i = add i32 %scount.08.i.i, %inc.i.i
  %33 = ptrtoint ptr %psf.09.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %psf.0.i.i = load ptr, ptr %psf.09.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %psf.0.i.i, null
  br i1 %tobool.not.i.i, label %igmp_scount.exit.loopexit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

igmp_scount.exit.loopexit.i:                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %phi.bo.i = shl i32 %spec.select.i.i, 2
  %phi.bo1.i = add i32 %phi.bo.i, 8
  br label %grec_size.exit

grec_size.exit:                                   ; preds = %igmp_scount.exit.loopexit.i, %cond.end37.grec_size.exit_crit_edge
  %scount.0.lcssa.i.i = phi i32 [ 8, %cond.end37.grec_size.exit_crit_edge ], [ %phi.bo1.i, %igmp_scount.exit.loopexit.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond38, i32 %scount.0.lcssa.i.i)
  %cmp40 = icmp slt i32 %cond38, %scount.0.lcssa.i.i
  br i1 %cmp40, label %if.then42, label %grec_size.exit.if.end49_crit_edge

grec_size.exit.if.end49_crit_edge:                ; preds = %grec_size.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

if.then42:                                        ; preds = %grec_size.exit
  br i1 %tobool21.not, label %if.then42.if.end46_crit_edge, label %if.then44

if.then42.if.end46_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

if.then44:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #14
  %call45 = tail call fastcc i32 @igmpv3_sendpack(ptr noundef nonnull %skb)
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %if.then42.if.end46_crit_edge
  %call47 = tail call fastcc ptr @igmpv3_newpack(ptr noundef %3, i32 noundef %12)
  br label %if.end49

if.end49:                                         ; preds = %if.end46, %grec_size.exit.if.end49_crit_edge, %land.lhs.true30.if.end49_crit_edge, %if.then28.if.end49_crit_edge, %cond.end25.if.end49_crit_edge
  %skb.addr.0 = phi ptr [ %call47, %if.end46 ], [ %skb, %grec_size.exit.if.end49_crit_edge ], [ %skb, %land.lhs.true30.if.end49_crit_edge ], [ %skb, %if.then28.if.end49_crit_edge ], [ %skb, %cond.end25.if.end49_crit_edge ]
  %34 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cond, align 4
  %tobool50.not370 = icmp eq ptr %35, null
  br i1 %tobool50.not370, label %if.end49.if.then139_crit_edge, label %for.body.lr.ph

if.end49.if.then139_crit_edge:                    ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then139

for.body.lr.ph:                                   ; preds = %if.end49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %gdeleted)
  %tobool55.not = icmp eq i32 %gdeleted, 0
  %sfmode = getelementptr inbounds %struct.ip_mc_list, ptr %pmc, i32 0, i32 2
  %crcount = getelementptr inbounds %struct.ip_mc_list, ptr %pmc, i32 0, i32 17
  %type.off = add i32 %type, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type.off)
  %switch = icmp ult i32 %type.off, 2
  %type.off280 = add i32 %type, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type.off280)
  %switch281 = icmp ult i32 %type.off280, 2
  %conv.i = trunc i32 %type to i8
  %36 = or i32 %sdeleted, %gdeleted
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %37 = icmp ne i32 %36, 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %first.0383 = phi i32 [ 1, %for.body.lr.ph ], [ %first.5.ph, %for.inc.for.body_crit_edge ]
  %stotal.0379 = phi i32 [ 0, %for.body.lr.ph ], [ %stotal.3.ph, %for.inc.for.body_crit_edge ]
  %scount.0377 = phi i32 [ 0, %for.body.lr.ph ], [ %scount.4.ph, %for.inc.for.body_crit_edge ]
  %psf_prev.0376 = phi ptr [ null, %for.body.lr.ph ], [ %psf_prev.1.ph, %for.inc.for.body_crit_edge ]
  %psf.0373 = phi ptr [ %35, %for.body.lr.ph ], [ %39, %for.inc.for.body_crit_edge ]
  %skb.addr.1371 = phi ptr [ %skb.addr.0, %for.body.lr.ph ], [ %skb.addr.6.ph, %for.inc.for.body_crit_edge ]
  %38 = ptrtoint ptr %psf.0373 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %psf.0373, align 4
  %call51 = tail call fastcc i32 @is_in(ptr noundef %pmc, ptr noundef nonnull %psf.0373, i32 noundef %type, i32 noundef %gdeleted, i32 noundef %sdeleted)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %for.body.for.inc_crit_edge, label %if.end54

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end54:                                         ; preds = %for.body
  br i1 %tobool55.not, label %land.lhs.true60.critedge, label %land.lhs.true56

land.lhs.true56:                                  ; preds = %if.end54
  %40 = ptrtoint ptr %sfmode to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sfmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp57 = icmp eq i32 %41, 0
  %42 = and i1 %switch, %cmp57
  br i1 %42, label %land.lhs.true56.land.lhs.true69_crit_edge, label %land.lhs.true56.if.end73_crit_edge

land.lhs.true56.if.end73_crit_edge:               ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end73

land.lhs.true56.land.lhs.true69_crit_edge:        ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true69

land.lhs.true60.critedge:                         ; preds = %if.end54
  %43 = ptrtoint ptr %crcount to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %crcount, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool62.not = icmp ne i8 %44, 0
  %45 = and i1 %switch, %tobool62.not
  br i1 %45, label %land.lhs.true60.critedge.land.lhs.true69_crit_edge, label %land.lhs.true60.critedge.if.end73_crit_edge

land.lhs.true60.critedge.if.end73_crit_edge:      ; preds = %land.lhs.true60.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end73

land.lhs.true60.critedge.land.lhs.true69_crit_edge: ; preds = %land.lhs.true60.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true69

land.lhs.true69:                                  ; preds = %land.lhs.true60.critedge.land.lhs.true69_crit_edge, %land.lhs.true56.land.lhs.true69_crit_edge
  %sf_crcount = getelementptr inbounds %struct.ip_sf_list, ptr %psf.0373, i32 0, i32 5
  %46 = ptrtoint ptr %sf_crcount to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %sf_crcount, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool71.not = icmp eq i8 %47, 0
  br i1 %tobool71.not, label %land.lhs.true69.if.end76_crit_edge, label %land.lhs.true69.decrease_sf_crcount_crit_edge

land.lhs.true69.decrease_sf_crcount_crit_edge:    ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #14
  br label %decrease_sf_crcount

land.lhs.true69.if.end76_crit_edge:               ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end76

if.end73:                                         ; preds = %land.lhs.true60.critedge.if.end73_crit_edge, %land.lhs.true56.if.end73_crit_edge
  br i1 %switch281, label %if.then75, label %if.end73.if.end76_crit_edge

if.end73.if.end76_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end76

if.then75:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #14
  %sf_gsresp = getelementptr inbounds %struct.ip_sf_list, ptr %psf.0373, i32 0, i32 3
  %48 = ptrtoint ptr %sf_gsresp to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %sf_gsresp, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.then75, %if.end73.if.end76_crit_edge, %land.lhs.true69.if.end76_crit_edge
  %tobool77.not = icmp eq ptr %skb.addr.1371, null
  br i1 %tobool77.not, label %if.end76.if.then85_crit_edge, label %cond.true78

if.end76.if.then85_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then85

cond.true78:                                      ; preds = %if.end76
  %data_len.i.i290 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1371, i32 0, i32 7
  %49 = ptrtoint ptr %data_len.i.i290 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %data_len.i.i290, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.i.not.i291 = icmp eq i32 %50, 0
  br i1 %tobool.i.not.i291, label %cond.end81, label %cond.true78.if.then85_crit_edge

cond.true78.if.then85_crit_edge:                  ; preds = %cond.true78
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then85

cond.end81:                                       ; preds = %cond.true78
  %end.i292 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1371, i32 0, i32 17
  %51 = ptrtoint ptr %end.i292 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %end.i292, align 4
  %tail.i293 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1371, i32 0, i32 16
  %53 = ptrtoint ptr %tail.i293 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %tail.i293, align 8
  %sub.ptr.lhs.cast.i294 = ptrtoint ptr %52 to i32
  %sub.ptr.rhs.cast.i295 = ptrtoint ptr %54 to i32
  %55 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1371, i32 0, i32 15, i32 0, i32 13
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %55, align 4
  %58 = add i32 %57, %sub.ptr.rhs.cast.i295
  %sub.i296 = sub i32 %sub.ptr.lhs.cast.i294, %58
  %mul = shl i32 %first.0383, 3
  %add = or i32 %mul, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i296, i32 %add)
  %cmp83 = icmp ult i32 %sub.i296, %add
  br i1 %cmp83, label %cond.end81.if.then85_crit_edge, label %if.end100

cond.end81.if.then85_crit_edge:                   ; preds = %cond.end81
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then85

if.then85:                                        ; preds = %cond.end81.if.then85_crit_edge, %cond.true78.if.then85_crit_edge, %if.end76.if.then85_crit_edge
  %59 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %type, label %if.then85.if.end90_crit_edge [
    i32 4, label %if.then85.land.lhs.true87_crit_edge
    i32 2, label %if.then85.land.lhs.true87_crit_edge397
  ]

if.then85.land.lhs.true87_crit_edge397:           ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true87

if.then85.land.lhs.true87_crit_edge:              ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true87

if.then85.if.end90_crit_edge:                     ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end90

land.lhs.true87:                                  ; preds = %if.then85.land.lhs.true87_crit_edge, %if.then85.land.lhs.true87_crit_edge397
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %first.0383)
  %tobool88.not = icmp eq i32 %first.0383, 0
  br i1 %tobool88.not, label %land.lhs.true87.empty_source_crit_edge, label %land.lhs.true87.if.end90_crit_edge

land.lhs.true87.if.end90_crit_edge:               ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end90

land.lhs.true87.empty_source_crit_edge:           ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #14
  br label %empty_source

if.end90:                                         ; preds = %land.lhs.true87.if.end90_crit_edge, %if.then85.if.end90_crit_edge
  %60 = ptrtoint ptr %pgr to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pgr, align 4
  %tobool91.not = icmp eq ptr %61, null
  br i1 %tobool91.not, label %if.end90.if.end94_crit_edge, label %if.then92

if.end90.if.end94_crit_edge:                      ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end94

if.then92:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #14
  %conv93 = trunc i32 %scount.0377 to i16
  %grec_nsrcs = getelementptr inbounds %struct.igmpv3_grec, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %grec_nsrcs to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv93, ptr %grec_nsrcs, align 2
  br label %if.end94

if.end94:                                         ; preds = %if.then92, %if.end90.if.end94_crit_edge
  br i1 %tobool77.not, label %if.end94.if.then102_crit_edge, label %if.then96

if.end94.if.then102_crit_edge:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then102

if.then96:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #14
  %call97 = tail call fastcc i32 @igmpv3_sendpack(ptr noundef nonnull %skb.addr.1371)
  br label %if.then102

if.end100:                                        ; preds = %cond.end81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %first.0383)
  %tobool101.not = icmp eq i32 %first.0383, 0
  br i1 %tobool101.not, label %if.end100.if.end107_crit_edge, label %if.end100.if.end4.i_crit_edge

if.end100.if.end4.i_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i

if.end100.if.end107_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end107

if.then102:                                       ; preds = %if.then96, %if.end94.if.then102_crit_edge
  %call99 = tail call fastcc ptr @igmpv3_newpack(ptr noundef %3, i32 noundef %12)
  %tobool.not.i = icmp eq ptr %call99, null
  br i1 %tobool.not.i, label %if.then.i, label %if.then102.if.end4.i_crit_edge

if.then102.if.end4.i_crit_edge:                   ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i

if.then.i:                                        ; preds = %if.then102
  %63 = ptrtoint ptr %pmc to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %pmc, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 4
  %call.i = tail call fastcc ptr @igmpv3_newpack(ptr noundef %66, i32 noundef %12) #12
  %tobool2.not.i = icmp eq ptr %call.i, null
  br i1 %tobool2.not.i, label %if.then.i.cleanup177_crit_edge, label %if.then.i.if.end4.i_crit_edge

if.then.i.if.end4.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i

if.then.i.cleanup177_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup177

if.end4.i:                                        ; preds = %if.then.i.if.end4.i_crit_edge, %if.then102.if.end4.i_crit_edge, %if.end100.if.end4.i_crit_edge
  %scount.1322328 = phi i32 [ 0, %if.then102.if.end4.i_crit_edge ], [ 0, %if.then.i.if.end4.i_crit_edge ], [ %scount.0377, %if.end100.if.end4.i_crit_edge ]
  %skb.addr.0.i = phi ptr [ %call99, %if.then102.if.end4.i_crit_edge ], [ %call.i, %if.then.i.if.end4.i_crit_edge ], [ %skb.addr.1371, %if.end100.if.end4.i_crit_edge ]
  %call5.i = tail call ptr @skb_put(ptr noundef nonnull %skb.addr.0.i, i32 noundef 8) #12
  %67 = ptrtoint ptr %call5.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv.i, ptr %call5.i, align 4
  %grec_auxwords.i = getelementptr inbounds %struct.igmpv3_grec, ptr %call5.i, i32 0, i32 1
  %68 = ptrtoint ptr %grec_auxwords.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %grec_auxwords.i, align 1
  %grec_nsrcs.i = getelementptr inbounds %struct.igmpv3_grec, ptr %call5.i, i32 0, i32 2
  %69 = ptrtoint ptr %grec_nsrcs.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 0, ptr %grec_nsrcs.i, align 2
  %70 = ptrtoint ptr %multiaddr to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %multiaddr, align 4
  %grec_mca.i = getelementptr inbounds %struct.igmpv3_grec, ptr %call5.i, i32 0, i32 3
  %72 = ptrtoint ptr %grec_mca.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %grec_mca.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i, i32 0, i32 18
  %73 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %head.i.i.i, align 8
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i, i32 0, i32 15, i32 0, i32 19
  %75 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %transport_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %76 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %74, i32 %conv.i.i.i
  %ngrec.i = getelementptr inbounds %struct.igmpv3_report, ptr %add.ptr.i.i.i, i32 0, i32 4
  %77 = ptrtoint ptr %ngrec.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %ngrec.i, align 2
  %add.i = add i16 %78, 1
  store i16 %add.i, ptr %ngrec.i, align 2
  %79 = ptrtoint ptr %pgr to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call5.i, ptr %pgr, align 4
  br label %if.end107

if.end107:                                        ; preds = %if.end4.i, %if.end100.if.end107_crit_edge
  %scount.1323.ph = phi i32 [ %scount.1322328, %if.end4.i ], [ %scount.0377, %if.end100.if.end107_crit_edge ]
  %skb.addr.3.ph = phi ptr [ %skb.addr.0.i, %if.end4.i ], [ %skb.addr.1371, %if.end100.if.end107_crit_edge ]
  %call108 = tail call ptr @skb_put(ptr noundef nonnull %skb.addr.3.ph, i32 noundef 4) #12
  %sf_inaddr = getelementptr inbounds %struct.ip_sf_list, ptr %psf.0373, i32 0, i32 2
  %80 = ptrtoint ptr %sf_inaddr to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %sf_inaddr, align 4
  %82 = ptrtoint ptr %call108 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %call108, align 4
  %inc = add i32 %scount.1323.ph, 1
  %inc109 = add i32 %stotal.0379, 1
  br i1 %switch, label %land.lhs.true115, label %if.end107.for.inc_crit_edge

if.end107.for.inc_crit_edge:                      ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true115:                                 ; preds = %if.end107
  %sf_crcount116 = getelementptr inbounds %struct.ip_sf_list, ptr %psf.0373, i32 0, i32 5
  %83 = ptrtoint ptr %sf_crcount116 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %sf_crcount116, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool118.not = icmp eq i8 %84, 0
  br i1 %tobool118.not, label %land.lhs.true115.for.inc_crit_edge, label %land.lhs.true115.decrease_sf_crcount_crit_edge

land.lhs.true115.decrease_sf_crcount_crit_edge:   ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #14
  br label %decrease_sf_crcount

land.lhs.true115.for.inc_crit_edge:               ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

decrease_sf_crcount:                              ; preds = %land.lhs.true115.decrease_sf_crcount_crit_edge, %land.lhs.true69.decrease_sf_crcount_crit_edge
  %skb.addr.4 = phi ptr [ %skb.addr.1371, %land.lhs.true69.decrease_sf_crcount_crit_edge ], [ %skb.addr.3.ph, %land.lhs.true115.decrease_sf_crcount_crit_edge ]
  %scount.2 = phi i32 [ %scount.0377, %land.lhs.true69.decrease_sf_crcount_crit_edge ], [ %inc, %land.lhs.true115.decrease_sf_crcount_crit_edge ]
  %stotal.1 = phi i32 [ %stotal.0379, %land.lhs.true69.decrease_sf_crcount_crit_edge ], [ %inc109, %land.lhs.true115.decrease_sf_crcount_crit_edge ]
  %first.3 = phi i32 [ %first.0383, %land.lhs.true69.decrease_sf_crcount_crit_edge ], [ 0, %land.lhs.true115.decrease_sf_crcount_crit_edge ]
  %sf_crcount120 = getelementptr inbounds %struct.ip_sf_list, ptr %psf.0373, i32 0, i32 5
  %85 = ptrtoint ptr %sf_crcount120 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %sf_crcount120, align 2
  %dec = add i8 %86, -1
  store i8 %dec, ptr %sf_crcount120, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec)
  %cmp127 = icmp eq i8 %dec, 0
  %or.cond361 = select i1 %37, i1 %cmp127, i1 false
  br i1 %or.cond361, label %if.then129, label %decrease_sf_crcount.for.inc_crit_edge

decrease_sf_crcount.for.inc_crit_edge:            ; preds = %decrease_sf_crcount
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then129:                                       ; preds = %decrease_sf_crcount
  call void @__sanitizer_cov_trace_pc() #14
  %tobool130.not = icmp eq ptr %psf_prev.0376, null
  %87 = ptrtoint ptr %psf.0373 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %psf.0373, align 4
  %cond.psf_prev.0376 = select i1 %tobool130.not, ptr %cond, ptr %psf_prev.0376
  %89 = ptrtoint ptr %cond.psf_prev.0376 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %88, ptr %cond.psf_prev.0376, align 4
  tail call void @kfree(ptr noundef nonnull %psf.0373) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then129, %decrease_sf_crcount.for.inc_crit_edge, %land.lhs.true115.for.inc_crit_edge, %if.end107.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %skb.addr.6.ph = phi ptr [ %skb.addr.4, %decrease_sf_crcount.for.inc_crit_edge ], [ %skb.addr.3.ph, %if.end107.for.inc_crit_edge ], [ %skb.addr.3.ph, %land.lhs.true115.for.inc_crit_edge ], [ %skb.addr.1371, %for.body.for.inc_crit_edge ], [ %skb.addr.4, %if.then129 ]
  %psf_prev.1.ph = phi ptr [ %psf.0373, %decrease_sf_crcount.for.inc_crit_edge ], [ %psf.0373, %if.end107.for.inc_crit_edge ], [ %psf.0373, %land.lhs.true115.for.inc_crit_edge ], [ %psf.0373, %for.body.for.inc_crit_edge ], [ %psf_prev.0376, %if.then129 ]
  %scount.4.ph = phi i32 [ %scount.2, %decrease_sf_crcount.for.inc_crit_edge ], [ %inc, %if.end107.for.inc_crit_edge ], [ %inc, %land.lhs.true115.for.inc_crit_edge ], [ %scount.0377, %for.body.for.inc_crit_edge ], [ %scount.2, %if.then129 ]
  %stotal.3.ph = phi i32 [ %stotal.1, %decrease_sf_crcount.for.inc_crit_edge ], [ %inc109, %if.end107.for.inc_crit_edge ], [ %inc109, %land.lhs.true115.for.inc_crit_edge ], [ %stotal.0379, %for.body.for.inc_crit_edge ], [ %stotal.1, %if.then129 ]
  %first.5.ph = phi i32 [ %first.3, %decrease_sf_crcount.for.inc_crit_edge ], [ 0, %if.end107.for.inc_crit_edge ], [ 0, %land.lhs.true115.for.inc_crit_edge ], [ %first.0383, %for.body.for.inc_crit_edge ], [ %first.3, %if.then129 ]
  %tobool50.not = icmp eq ptr %39, null
  br i1 %tobool50.not, label %for.inc.empty_source_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.empty_source_crit_edge:                   ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %empty_source

empty_source:                                     ; preds = %for.inc.empty_source_crit_edge, %land.lhs.true87.empty_source_crit_edge
  %skb.addr.1.lcssa = phi ptr [ %skb.addr.6.ph, %for.inc.empty_source_crit_edge ], [ %skb.addr.1371, %land.lhs.true87.empty_source_crit_edge ]
  %scount.0.lcssa = phi i32 [ %scount.4.ph, %for.inc.empty_source_crit_edge ], [ %scount.0377, %land.lhs.true87.empty_source_crit_edge ]
  %stotal.0.lcssa = phi i32 [ %stotal.3.ph, %for.inc.empty_source_crit_edge ], [ %stotal.0379, %land.lhs.true87.empty_source_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stotal.0.lcssa)
  %tobool138.not = icmp eq i32 %stotal.0.lcssa, 0
  br i1 %tobool138.not, label %empty_source.if.then139_crit_edge, label %empty_source.if.end168_crit_edge

empty_source.if.end168_crit_edge:                 ; preds = %empty_source
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end168

empty_source.if.then139_crit_edge:                ; preds = %empty_source
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then139

if.then139:                                       ; preds = %empty_source.if.then139_crit_edge, %if.end49.if.then139_crit_edge, %lor.end15.if.then139_crit_edge
  %scount.5358 = phi i32 [ %scount.0.lcssa, %empty_source.if.then139_crit_edge ], [ 0, %lor.end15.if.then139_crit_edge ], [ 0, %if.end49.if.then139_crit_edge ]
  %skb.addr.7356 = phi ptr [ %skb.addr.1.lcssa, %empty_source.if.then139_crit_edge ], [ %skb, %lor.end15.if.then139_crit_edge ], [ %skb.addr.0, %if.end49.if.then139_crit_edge ]
  %type.off284 = add i32 %type, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type.off284)
  %switch285 = icmp ult i32 %type.off284, 2
  br i1 %switch285, label %if.then139.cleanup177_crit_edge, label %if.end146

if.then139.cleanup177_crit_edge:                  ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup177

if.end146:                                        ; preds = %if.then139
  %crcount147 = getelementptr inbounds %struct.ip_mc_list, ptr %pmc, i32 0, i32 17
  %90 = ptrtoint ptr %crcount147 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %crcount147, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool149.not = icmp ne i8 %91, 0
  %type.off286 = add i32 %type, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type.off286)
  %switch287 = icmp ult i32 %type.off286, 2
  %or.cond = or i1 %switch287, %tobool149.not
  br i1 %or.cond, label %if.then152, label %if.end146.if.end168_crit_edge

if.end146.if.end168_crit_edge:                    ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end168

if.then152:                                       ; preds = %if.end146
  %tobool153.not = icmp eq ptr %skb.addr.7356, null
  br i1 %tobool153.not, label %if.then152.if.end165_crit_edge, label %cond.true156

if.then152.if.end165_crit_edge:                   ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end165

cond.true156:                                     ; preds = %if.then152
  %data_len.i.i301 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.7356, i32 0, i32 7
  %92 = ptrtoint ptr %data_len.i.i301 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %data_len.i.i301, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool.i.not.i302 = icmp eq i32 %93, 0
  br i1 %tobool.i.not.i302, label %skb_availroom.exit310, label %cond.true156.if.then163_crit_edge

cond.true156.if.then163_crit_edge:                ; preds = %cond.true156
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then163

skb_availroom.exit310:                            ; preds = %cond.true156
  %end.i303 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.7356, i32 0, i32 17
  %94 = ptrtoint ptr %end.i303 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %end.i303, align 4
  %tail.i304 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.7356, i32 0, i32 16
  %96 = ptrtoint ptr %tail.i304 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %tail.i304, align 8
  %sub.ptr.lhs.cast.i305 = ptrtoint ptr %95 to i32
  %sub.ptr.rhs.cast.i306 = ptrtoint ptr %97 to i32
  %98 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.7356, i32 0, i32 15, i32 0, i32 13
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %98, align 4
  %101 = add i32 %100, %sub.ptr.rhs.cast.i306
  %sub.i307 = sub i32 %sub.ptr.lhs.cast.i305, %101
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.i307)
  %cmp161 = icmp ult i32 %sub.i307, 8
  br i1 %cmp161, label %skb_availroom.exit310.if.then163_crit_edge, label %skb_availroom.exit310.if.end165_crit_edge

skb_availroom.exit310.if.end165_crit_edge:        ; preds = %skb_availroom.exit310
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end165

skb_availroom.exit310.if.then163_crit_edge:       ; preds = %skb_availroom.exit310
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then163

if.then163:                                       ; preds = %skb_availroom.exit310.if.then163_crit_edge, %cond.true156.if.then163_crit_edge
  %call164 = tail call fastcc i32 @igmpv3_sendpack(ptr noundef nonnull %skb.addr.7356)
  br label %if.end165

if.end165:                                        ; preds = %if.then163, %skb_availroom.exit310.if.end165_crit_edge, %if.then152.if.end165_crit_edge
  %skb.addr.8 = phi ptr [ null, %if.then163 ], [ %skb.addr.7356, %skb_availroom.exit310.if.end165_crit_edge ], [ null, %if.then152.if.end165_crit_edge ]
  %call166 = call fastcc ptr @add_grhead(ptr noundef %skb.addr.8, ptr noundef %pmc, i32 noundef %type, ptr noundef nonnull %pgr, i32 noundef %12)
  br label %if.end168

if.end168:                                        ; preds = %if.end165, %if.end146.if.end168_crit_edge, %empty_source.if.end168_crit_edge
  %scount.5357 = phi i32 [ %scount.0.lcssa, %empty_source.if.end168_crit_edge ], [ %scount.5358, %if.end165 ], [ %scount.5358, %if.end146.if.end168_crit_edge ]
  %skb.addr.9 = phi ptr [ %skb.addr.1.lcssa, %empty_source.if.end168_crit_edge ], [ %call166, %if.end165 ], [ %skb.addr.7356, %if.end146.if.end168_crit_edge ]
  %102 = ptrtoint ptr %pgr to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %pgr, align 4
  %tobool169.not = icmp eq ptr %103, null
  br i1 %tobool169.not, label %if.end168.if.end173_crit_edge, label %if.then170

if.end168.if.end173_crit_edge:                    ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end173

if.then170:                                       ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #14
  %conv171 = trunc i32 %scount.5357 to i16
  %grec_nsrcs172 = getelementptr inbounds %struct.igmpv3_grec, ptr %103, i32 0, i32 2
  %104 = ptrtoint ptr %grec_nsrcs172 to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %conv171, ptr %grec_nsrcs172, align 2
  br label %if.end173

if.end173:                                        ; preds = %if.then170, %if.end168.if.end173_crit_edge
  %type.off288 = add i32 %type, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type.off288)
  %switch289 = icmp ult i32 %type.off288, 2
  br i1 %switch289, label %if.then175, label %if.end173.cleanup177_crit_edge

if.end173.cleanup177_crit_edge:                   ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup177

if.then175:                                       ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #14
  %gsquery = getelementptr inbounds %struct.ip_mc_list, ptr %pmc, i32 0, i32 16
  %105 = ptrtoint ptr %gsquery to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 0, ptr %gsquery, align 4
  br label %cleanup177

cleanup177:                                       ; preds = %if.then175, %if.end173.cleanup177_crit_edge, %if.then139.cleanup177_crit_edge, %if.then.i.cleanup177_crit_edge, %do.end.cleanup177_crit_edge, %land.lhs.true.cleanup177_crit_edge, %entry.cleanup177_crit_edge
  %retval.2 = phi ptr [ %skb, %entry.cleanup177_crit_edge ], [ %skb, %land.lhs.true.cleanup177_crit_edge ], [ %skb, %do.end.cleanup177_crit_edge ], [ %skb.addr.7356, %if.then139.cleanup177_crit_edge ], [ %skb.addr.9, %if.end173.cleanup177_crit_edge ], [ %skb.addr.9, %if.then175 ], [ null, %if.then.i.cleanup177_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pgr) #12
  ret ptr %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @igmpv3_sendpack(ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %2 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call.i = tail call i32 @csum_partial(ptr noundef %add.ptr.i.i, i32 noundef %sub.ptr.sub, i32 noundef 0) #12
  %6 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i) #15, !srcloc !245
  %neg.i.i = xor i32 %6, -1
  %shr.i.i = lshr i32 %neg.i.i, 16
  %conv.i.i18 = trunc i32 %shr.i.i to i16
  %csum = getelementptr inbounds %struct.igmphdr, ptr %add.ptr.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %csum to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv.i.i18, ptr %csum, align 2
  %8 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 8
  %and.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.skb_dst.exit_crit_edge, label %land.lhs.true.i

entry.skb_dst.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %entry
  %call.i19 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19)
  %tobool1.not.i = icmp eq i32 %call.i19, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !244

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 1013, i32 noundef 9, ptr noundef null) #12
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %entry.skb_dst.exit_crit_edge
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %8, align 8
  %and25.i = and i32 %12, -2
  %13 = inttoptr i32 %and25.i to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 127
  %16 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %nd_net.i, align 4
  %18 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %call7 = tail call i32 @ip_local_out(ptr noundef %17, ptr noundef %20, ptr noundef %skb) #12
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @igmpv3_newpack(ptr noundef %dev, i32 noundef %mtu) unnamed_addr #0 align 64 {
entry:
  %fl4 = alloca %struct.flowi4, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %0 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nd_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %fl4) #12
  %2 = getelementptr inbounds i8, ptr %fl4, i32 32
  %3 = call ptr @memset(ptr %2, i32 255, i32 24)
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 19
  %4 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %hard_header_len, align 2
  %conv = zext i16 %5 to i32
  %needed_headroom = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 21
  %6 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %needed_headroom, align 8
  %conv1 = zext i16 %7 to i32
  %add = add nuw nsw i32 %conv1, %conv
  %and = and i32 %add, 131056
  %add2 = add nuw nsw i32 %and, 16
  %needed_tailroom = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 22
  %8 = ptrtoint ptr %needed_tailroom to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %needed_tailroom, align 2
  %conv3 = zext i16 %9 to i32
  %add4 = add nuw nsw i32 %add2, %conv3
  br label %while.cond

while.cond:                                       ; preds = %if.end.while.cond_crit_edge, %entry
  %size.0 = phi i32 [ %mtu, %entry ], [ %shr, %if.end.while.cond_crit_edge ]
  %add5 = add i32 %add4, %size.0
  %call.i86 = tail call ptr @__alloc_skb(i32 noundef %add5, i32 noundef 10784, i32 noundef 0, i32 noundef -1) #12
  %tobool.not = icmp eq ptr %call.i86, null
  br i1 %tobool.not, label %if.end, label %while.end

if.end:                                           ; preds = %while.cond
  %shr = lshr i32 %size.0, 1
  %cmp = icmp ult i32 %size.0, 512
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end.while.cond_crit_edge

if.end.while.cond_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.end:                                        ; preds = %while.cond
  %priority = getelementptr inbounds %struct.sk_buff, ptr %call.i86, i32 0, i32 15, i32 0, i32 6
  %10 = ptrtoint ptr %priority to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 7, ptr %priority, align 4
  %ifindex = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 17
  %11 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ifindex, align 4
  %user_ns.i.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 11
  %13 = ptrtoint ptr %user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %user_ns.i.i, align 4
  %call.i.i = tail call i32 @make_kuid(ptr noundef %14, i32 noundef 0) #12
  %15 = ptrtoint ptr %fl4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %12, ptr %fl4, align 8
  %flowic_iif.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 1
  %16 = ptrtoint ptr %flowic_iif.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %flowic_iif.i.i, align 4
  %flowic_mark.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 2
  %17 = ptrtoint ptr %flowic_mark.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %flowic_mark.i.i, align 8
  %flowic_tos.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 3
  %18 = ptrtoint ptr %flowic_tos.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %flowic_tos.i.i, align 4
  %flowic_scope.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 4
  %19 = ptrtoint ptr %flowic_scope.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %flowic_scope.i.i, align 1
  %flowic_proto.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 5
  %20 = ptrtoint ptr %flowic_proto.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 2, ptr %flowic_proto.i.i, align 2
  %flowic_flags.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 6
  %21 = ptrtoint ptr %flowic_flags.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %flowic_flags.i.i, align 1
  %flowic_secid.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 7
  %22 = ptrtoint ptr %flowic_secid.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %flowic_secid.i.i, align 8
  %flowic_tun_key.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 9
  %23 = ptrtoint ptr %flowic_tun_key.i.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 0, ptr %flowic_tun_key.i.i, align 8
  %flowic_uid.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 8
  %24 = ptrtoint ptr %flowic_uid.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call.i.i, ptr %flowic_uid.i.i, align 4
  %daddr10.i.i = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 2
  %25 = ptrtoint ptr %daddr10.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -536870890, ptr %daddr10.i.i, align 4
  %saddr11.i.i = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 1
  %26 = ptrtoint ptr %saddr11.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %saddr11.i.i, align 8
  %uli.i.i = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 3
  %27 = ptrtoint ptr %uli.i.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %uli.i.i, align 8
  %sport14.i.i = getelementptr inbounds %struct.anon.23, ptr %uli.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %sport14.i.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %sport14.i.i, align 2
  %flowic_multipath_hash.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 10
  %29 = ptrtoint ptr %flowic_multipath_hash.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %flowic_multipath_hash.i.i, align 8
  %call11.i = call ptr @ip_route_output_flow(ptr noundef %1, ptr noundef nonnull %fl4, ptr noundef null) #12
  %cmp.i = icmp ugt ptr %call11.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end13

if.then12:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree_skb_reason(ptr noundef nonnull %call.i86, i32 noundef 0) #12
  br label %cleanup

if.end13:                                         ; preds = %while.end
  %tobool.not.i87 = icmp eq ptr %call11.i, null
  %slow_gro.i = getelementptr inbounds %struct.sk_buff, ptr %call.i86, i32 0, i32 15, i32 0, i32 3
  %30 = ptrtoint ptr %slow_gro.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %bf.load.i = load i32, ptr %slow_gro.i, align 2
  %bf.load.mask.i = and i32 %bf.load.i, 4096
  %bf.shl.i = select i1 %tobool.not.i87, i32 %bf.load.mask.i, i32 4096
  %bf.clear4.i = and i32 %bf.load.i, -4097
  %bf.set.i = or i32 %bf.shl.i, %bf.clear4.i
  store i32 %bf.set.i, ptr %slow_gro.i, align 2
  %31 = ptrtoint ptr %call11.i to i32
  %32 = getelementptr inbounds %struct.sk_buff, ptr %call.i86, i32 0, i32 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %31, ptr %32, align 8
  %34 = getelementptr inbounds %struct.anon, ptr %call.i86, i32 0, i32 2
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %dev, ptr %34, align 8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i86, i32 0, i32 19
  %36 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %37, i32 %add2
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i86, i32 0, i32 16
  %38 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %39, i32 %add2
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i86, i32 0, i32 7
  %40 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.i.not.i = icmp eq i32 %41, 0
  br i1 %tobool.i.not.i, label %skb_tailroom.exit.i, label %do.body2.i, !prof !250

do.body2.i:                                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2502, 0\0A.popsection", ""() #12, !srcloc !269
  unreachable

skb_tailroom.exit.i:                              ; preds = %if.end13
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i86, i32 0, i32 17
  %42 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %end.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %43 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %44 = add i32 %sub.ptr.rhs.cast.i.i, %conv3
  %sub.i = sub i32 %sub.ptr.lhs.cast.i.i, %44
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %mtu)
  %cmp.i88 = icmp ugt i32 %sub.i, %mtu
  %45 = add i32 %sub.ptr.rhs.cast.i.i, %mtu
  %sub9.i = sub i32 %sub.ptr.lhs.cast.i.i, %45
  %needed_tailroom.sink.i = select i1 %cmp.i88, i32 %sub9.i, i32 %conv3
  %46 = getelementptr inbounds %struct.sk_buff, ptr %call.i86, i32 0, i32 15, i32 0, i32 13
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %needed_tailroom.sink.i, ptr %46, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call.i86, i32 0, i32 18
  %48 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %49 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %call.i86, i32 0, i32 15, i32 0, i32 20
  %50 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %conv.i, ptr %network_header.i, align 4
  %conv.i.i = and i32 %sub.ptr.sub.i, 65535
  %add.ptr.i.i = getelementptr i8, ptr %49, i32 %conv.i.i
  %call15 = call ptr @skb_put(ptr noundef nonnull %call.i86, i32 noundef 24) #12
  %51 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 70, ptr %add.ptr.i.i, align 4
  %tos = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 1
  %52 = ptrtoint ptr %tos to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 -64, ptr %tos, align 1
  %frag_off = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 4
  %53 = ptrtoint ptr %frag_off to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 16384, ptr %frag_off, align 2
  %ttl = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 5
  %54 = ptrtoint ptr %ttl to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %ttl, align 4
  %55 = ptrtoint ptr %daddr10.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %daddr10.i.i, align 4
  %daddr19 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 9
  %57 = ptrtoint ptr %daddr19 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %daddr19, align 4
  %58 = call i32 @llvm.read_register.i32(metadata !234) #12
  %and.i.i.i.i.i = and i32 %58, -16384
  %59 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %61, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !248
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %skb_tailroom.exit.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

skb_tailroom.exit.i.rcu_read_lock.exit_crit_edge: ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %skb_tailroom.exit.i
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.49, i32 noundef 696, ptr noundef nonnull @.str.50) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %skb_tailroom.exit.i.rcu_read_lock.exit_crit_edge
  %ip_ptr.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 78
  %62 = ptrtoint ptr %ip_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile ptr, ptr %ip_ptr.i.i, align 32
  %call.i.i90 = call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i90)
  %tobool.not.i.i = icmp eq i32 %call.i.i90, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %rcu_read_lock.exit.__in_dev_get_rcu.exit.i_crit_edge

rcu_read_lock.exit.__in_dev_get_rcu.exit.i_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %__in_dev_get_rcu.exit.i

land.lhs.true.i.i:                                ; preds = %rcu_read_lock.exit
  %call2.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.__in_dev_get_rcu.exit.i_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i.i.__in_dev_get_rcu.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__in_dev_get_rcu.exit.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  %.b9.i.i = load i1, ptr @__in_dev_get_rcu.__warned, align 1
  br i1 %.b9.i.i, label %land.lhs.true4.i.i.__in_dev_get_rcu.exit.i_crit_edge, label %if.then.i.i

land.lhs.true4.i.i.__in_dev_get_rcu.exit.i_crit_edge: ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__in_dev_get_rcu.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__in_dev_get_rcu.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 232, ptr noundef nonnull @.str.20) #12
  br label %__in_dev_get_rcu.exit.i

__in_dev_get_rcu.exit.i:                          ; preds = %if.then.i.i, %land.lhs.true4.i.i.__in_dev_get_rcu.exit.i_crit_edge, %land.lhs.true.i.i.__in_dev_get_rcu.exit.i_crit_edge, %rcu_read_lock.exit.__in_dev_get_rcu.exit.i_crit_edge
  %tobool.not.i91 = icmp eq ptr %63, null
  br i1 %tobool.not.i91, label %__in_dev_get_rcu.exit.i.igmpv3_get_srcaddr.exit_crit_edge, label %if.end.i

__in_dev_get_rcu.exit.i.igmpv3_get_srcaddr.exit_crit_edge: ; preds = %__in_dev_get_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %igmpv3_get_srcaddr.exit

if.end.i:                                         ; preds = %__in_dev_get_rcu.exit.i
  %ifa_list.i = getelementptr inbounds %struct.in_device, ptr %63, i32 0, i32 4
  %64 = ptrtoint ptr %ifa_list.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile ptr, ptr %ifa_list.i, align 4
  %call2.i = call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i92, label %if.end.i.do.end11.i_crit_edge

if.end.i.do.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end11.i

land.lhs.true.i92:                                ; preds = %if.end.i
  %call4.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i92.do.end11.i_crit_edge, label %land.lhs.true6.i

land.lhs.true.i92.do.end11.i_crit_edge:           ; preds = %land.lhs.true.i92
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end11.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i92
  %.b41.i = load i1, ptr @igmpv3_get_srcaddr.__warned, align 1
  br i1 %.b41.i, label %land.lhs.true6.i.do.end11.i_crit_edge, label %if.then8.i

land.lhs.true6.i.do.end11.i_crit_edge:            ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end11.i

if.then8.i:                                       ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @igmpv3_get_srcaddr.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 338, ptr noundef nonnull @.str.20) #12
  br label %do.end11.i

do.end11.i:                                       ; preds = %if.then8.i, %land.lhs.true6.i.do.end11.i_crit_edge, %land.lhs.true.i92.do.end11.i_crit_edge, %if.end.i.do.end11.i_crit_edge
  %tobool13.not42.i = icmp eq ptr %65, null
  br i1 %tobool13.not42.i, label %do.end11.i.igmpv3_get_srcaddr.exit_crit_edge, label %do.end11.i.for.body.i_crit_edge

do.end11.i.for.body.i_crit_edge:                  ; preds = %do.end11.i
  br label %for.body.i

do.end11.i.igmpv3_get_srcaddr.exit_crit_edge:     ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %igmpv3_get_srcaddr.exit

for.body.i:                                       ; preds = %do.end32.i.for.body.i_crit_edge, %do.end11.i.for.body.i_crit_edge
  %ifa.043.i = phi ptr [ %71, %do.end32.i.for.body.i_crit_edge ], [ %65, %do.end11.i.for.body.i_crit_edge ]
  %66 = ptrtoint ptr %saddr11.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %saddr11.i.i, align 8
  %ifa_local.i = getelementptr inbounds %struct.in_ifaddr, ptr %ifa.043.i, i32 0, i32 4
  %68 = ptrtoint ptr %ifa_local.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %ifa_local.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %69)
  %cmp.i93 = icmp eq i32 %67, %69
  br i1 %cmp.i93, label %for.body.i.igmpv3_get_srcaddr.exit_crit_edge, label %for.inc.i

for.body.i.igmpv3_get_srcaddr.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %igmpv3_get_srcaddr.exit

for.inc.i:                                        ; preds = %for.body.i
  %ifa_next.i = getelementptr inbounds %struct.in_ifaddr, ptr %ifa.043.i, i32 0, i32 1
  %70 = ptrtoint ptr %ifa_next.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile ptr, ptr %ifa_next.i, align 4
  %call22.i = call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %land.lhs.true24.i, label %for.inc.i.do.end32.i_crit_edge

for.inc.i.do.end32.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end32.i

land.lhs.true24.i:                                ; preds = %for.inc.i
  %call25.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %land.lhs.true24.i.do.end32.i_crit_edge, label %land.lhs.true27.i

land.lhs.true24.i.do.end32.i_crit_edge:           ; preds = %land.lhs.true24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end32.i

land.lhs.true27.i:                                ; preds = %land.lhs.true24.i
  %.b3940.i = load i1, ptr @igmpv3_get_srcaddr.__warned.36, align 1
  br i1 %.b3940.i, label %land.lhs.true27.i.do.end32.i_crit_edge, label %if.then29.i

land.lhs.true27.i.do.end32.i_crit_edge:           ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end32.i

if.then29.i:                                      ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @igmpv3_get_srcaddr.__warned.36, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 338, ptr noundef nonnull @.str.20) #12
  br label %do.end32.i

do.end32.i:                                       ; preds = %if.then29.i, %land.lhs.true27.i.do.end32.i_crit_edge, %land.lhs.true24.i.do.end32.i_crit_edge, %for.inc.i.do.end32.i_crit_edge
  %tobool13.not.i = icmp eq ptr %71, null
  br i1 %tobool13.not.i, label %do.end32.i.igmpv3_get_srcaddr.exit_crit_edge, label %do.end32.i.for.body.i_crit_edge

do.end32.i.for.body.i_crit_edge:                  ; preds = %do.end32.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

do.end32.i.igmpv3_get_srcaddr.exit_crit_edge:     ; preds = %do.end32.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %igmpv3_get_srcaddr.exit

igmpv3_get_srcaddr.exit:                          ; preds = %do.end32.i.igmpv3_get_srcaddr.exit_crit_edge, %for.body.i.igmpv3_get_srcaddr.exit_crit_edge, %do.end11.i.igmpv3_get_srcaddr.exit_crit_edge, %__in_dev_get_rcu.exit.i.igmpv3_get_srcaddr.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %__in_dev_get_rcu.exit.i.igmpv3_get_srcaddr.exit_crit_edge ], [ 0, %do.end11.i.igmpv3_get_srcaddr.exit_crit_edge ], [ 0, %do.end32.i.igmpv3_get_srcaddr.exit_crit_edge ], [ %67, %for.body.i.igmpv3_get_srcaddr.exit_crit_edge ]
  %saddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 8
  %72 = ptrtoint ptr %saddr to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %retval.0.i, ptr %saddr, align 4
  %call.i94 = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i94, label %igmpv3_get_srcaddr.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i97

igmpv3_get_srcaddr.exit.rcu_read_unlock.exit_crit_edge: ; preds = %igmpv3_get_srcaddr.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i97:                                ; preds = %igmpv3_get_srcaddr.exit
  %call1.i95 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i95)
  %tobool.not.i96 = icmp eq i32 %call1.i95, 0
  br i1 %tobool.not.i96, label %land.lhs.true.i97.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i99

land.lhs.true.i97.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i97
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i99:                               ; preds = %land.lhs.true.i97
  %.b4.i98 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i98, label %land.lhs.true2.i99.rcu_read_unlock.exit_crit_edge, label %if.then.i100

land.lhs.true2.i99.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i99
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i100:                                     ; preds = %land.lhs.true2.i99
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.49, i32 noundef 724, ptr noundef nonnull @.str.51) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i100, %land.lhs.true2.i99.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i97.rcu_read_unlock.exit_crit_edge, %igmpv3_get_srcaddr.exit.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !251
  %73 = call i32 @llvm.read_register.i32(metadata !234) #12
  %and.i.i.i.i.i101 = and i32 %73, -16384
  %74 = inttoptr i32 %and.i.i.i.i.i101 to ptr
  %preempt_count.i.i.i.i102 = getelementptr inbounds %struct.thread_info, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %preempt_count.i.i.i.i102 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %preempt_count.i.i.i.i102, align 4
  %sub.i.i.i = add i32 %76, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i102, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %protocol = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 6
  %77 = ptrtoint ptr %protocol to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 2, ptr %protocol, align 1
  %tot_len = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 2
  %78 = ptrtoint ptr %tot_len to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 0, ptr %tot_len, align 2
  %79 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %head.i, align 8
  %81 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %network_header.i, align 4
  %conv.i.i.i.i = zext i16 %82 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %80, i32 %conv.i.i.i.i
  %frag_off.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i.i, i32 0, i32 4
  %83 = ptrtoint ptr %frag_off.i.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %frag_off.i.i, align 2
  %85 = and i16 %84, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %85)
  %tobool9.not.i.i = icmp eq i16 %85, 0
  br i1 %tobool9.not.i.i, label %rcu_read_unlock.exit.if.else.i.i_crit_edge, label %land.lhs.true10.i.i

rcu_read_unlock.exit.if.else.i.i_crit_edge:       ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i.i

land.lhs.true10.i.i:                              ; preds = %rcu_read_unlock.exit
  %ignore_df.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i86, i32 0, i32 15
  %86 = ptrtoint ptr %ignore_df.i.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %bf.load.i.i = load i16, ptr %ignore_df.i.i, align 8
  %87 = and i16 %bf.load.i.i, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %87)
  %tobool11.not.i.i = icmp eq i16 %87, 0
  br i1 %tobool11.not.i.i, label %if.then12.i.i, label %land.lhs.true10.i.i.if.else.i.i_crit_edge

land.lhs.true10.i.i.if.else.i.i_crit_edge:        ; preds = %land.lhs.true10.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i.i

if.then12.i.i:                                    ; preds = %land.lhs.true10.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %id13.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i.i, i32 0, i32 3
  %88 = ptrtoint ptr %id13.i.i to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 0, ptr %id13.i.i, align 4
  br label %ip_select_ident.exit

if.else.i.i:                                      ; preds = %land.lhs.true10.i.i.if.else.i.i_crit_edge, %rcu_read_unlock.exit.if.else.i.i_crit_edge
  call void @__ip_select_ident(ptr noundef %1, ptr noundef %add.ptr.i.i.i.i, i32 noundef 1) #12
  br label %ip_select_ident.exit

ip_select_ident.exit:                             ; preds = %if.else.i.i, %if.then12.i.i
  %arrayidx = getelementptr %struct.iphdr, ptr %add.ptr.i.i, i32 1
  %89 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 -108, ptr %arrayidx, align 1
  %arrayidx23 = getelementptr %struct.iphdr, ptr %add.ptr.i.i, i32 1, i32 1
  %90 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 4, ptr %arrayidx23, align 1
  %arrayidx25 = getelementptr %struct.iphdr, ptr %add.ptr.i.i, i32 1, i32 2
  %91 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 0, ptr %arrayidx25, align 1
  %arrayidx27 = getelementptr i8, ptr %arrayidx, i32 3
  %92 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 0, ptr %arrayidx27, align 1
  %93 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %network_header.i, align 4
  %add30 = add i16 %94, 24
  %transport_header = getelementptr inbounds %struct.sk_buff, ptr %call.i86, i32 0, i32 15, i32 0, i32 19
  %95 = ptrtoint ptr %transport_header to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %add30, ptr %transport_header, align 2
  %call32 = call ptr @skb_put(ptr noundef nonnull %call.i86, i32 noundef 8) #12
  %96 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %head.i, align 8
  %98 = ptrtoint ptr %transport_header to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %transport_header, align 2
  %conv.i.i104 = zext i16 %99 to i32
  %add.ptr.i.i105 = getelementptr i8, ptr %97, i32 %conv.i.i104
  %100 = ptrtoint ptr %add.ptr.i.i105 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 34, ptr %add.ptr.i.i105, align 4
  %resv1 = getelementptr inbounds %struct.igmpv3_report, ptr %add.ptr.i.i105, i32 0, i32 1
  %101 = call ptr @memset(ptr %resv1, i32 0, i32 7)
  br label %cleanup

cleanup:                                          ; preds = %ip_select_ident.exit, %if.then12, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then12 ], [ %call.i86, %ip_select_ident.exit ], [ null, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %fl4) #12
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @is_in(ptr nocapture noundef readonly %pmc, ptr nocapture noundef readonly %psf, i32 noundef %type, i32 noundef %gdeleted, i32 noundef %sdeleted) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %type, label %entry.return_crit_edge [
    i32 1, label %entry.sw.bb_crit_edge
    i32 2, label %entry.sw.bb_crit_edge108
    i32 3, label %sw.bb19
    i32 4, label %sw.bb29
    i32 5, label %sw.bb51
    i32 6, label %sw.bb60
  ]

entry.sw.bb_crit_edge108:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge108
  %1 = or i32 %sdeleted, %gdeleted
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %if.end, label %sw.bb.return_crit_edge

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %sw.bb
  %gsquery = getelementptr inbounds %struct.ip_mc_list, ptr %pmc, i32 0, i32 16
  %3 = ptrtoint ptr %gsquery to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %gsquery, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not = icmp eq i8 %4, 0
  br i1 %tobool2.not, label %if.end.if.then4_crit_edge, label %land.lhs.true

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then4

land.lhs.true:                                    ; preds = %if.end
  %sf_gsresp = getelementptr inbounds %struct.ip_sf_list, ptr %psf, i32 0, i32 3
  %5 = ptrtoint ptr %sf_gsresp to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %sf_gsresp, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool3.not = icmp eq i8 %6, 0
  br i1 %tobool3.not, label %land.lhs.true.return_crit_edge, label %land.lhs.true.if.then4_crit_edge

land.lhs.true.if.then4_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then4

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then4:                                         ; preds = %land.lhs.true.if.then4_crit_edge, %if.end.if.then4_crit_edge
  %sfmode = getelementptr inbounds %struct.ip_mc_list, ptr %pmc, i32 0, i32 2
  %7 = ptrtoint ptr %sfmode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sfmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp = icmp eq i32 %8, 1
  br i1 %cmp, label %if.then4.return_crit_edge, label %if.end7

if.then4.return_crit_edge:                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end7:                                          ; preds = %if.then4
  %arrayidx = getelementptr %struct.ip_sf_list, ptr %psf, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool8.not = icmp eq i32 %10, 0
  br i1 %tobool8.not, label %if.end12, label %if.then9

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp10 = icmp eq i32 %type, 1
  %conv11 = zext i1 %cmp10 to i32
  br label %return

if.end12:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %sf_count = getelementptr inbounds %struct.ip_sf_list, ptr %psf, i32 0, i32 1
  %sfcount = getelementptr inbounds %struct.ip_mc_list, ptr %pmc, i32 0, i32 5
  %11 = ptrtoint ptr %sfcount to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sfcount, align 4
  %13 = ptrtoint ptr %sf_count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sf_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp16 = icmp eq i32 %12, %14
  %conv17 = zext i1 %cmp16 to i32
  br label %return

sw.bb19:                                          ; preds = %entry
  %15 = or i32 %sdeleted, %gdeleted
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %if.end24, label %sw.bb19.return_crit_edge

sw.bb19.return_crit_edge:                         ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end24:                                         ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx26 = getelementptr %struct.ip_sf_list, ptr %psf, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp27 = icmp ne i32 %18, 0
  %conv28 = zext i1 %cmp27 to i32
  br label %return

sw.bb29:                                          ; preds = %entry
  %19 = or i32 %sdeleted, %gdeleted
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %if.end34, label %sw.bb29.return_crit_edge

sw.bb29.return_crit_edge:                         ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end34:                                         ; preds = %sw.bb29
  %sfcount35 = getelementptr inbounds %struct.ip_mc_list, ptr %pmc, i32 0, i32 5
  %21 = ptrtoint ptr %sfcount35 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sfcount35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp37 = icmp eq i32 %22, 0
  br i1 %cmp37, label %if.end34.return_crit_edge, label %lor.lhs.false39

if.end34.return_crit_edge:                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

lor.lhs.false39:                                  ; preds = %if.end34
  %arrayidx41 = getelementptr %struct.ip_sf_list, ptr %psf, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool42.not = icmp eq i32 %24, 0
  br i1 %tobool42.not, label %if.end44, label %lor.lhs.false39.return_crit_edge

lor.lhs.false39.return_crit_edge:                 ; preds = %lor.lhs.false39
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end44:                                         ; preds = %lor.lhs.false39
  call void @__sanitizer_cov_trace_pc() #14
  %sf_count40 = getelementptr inbounds %struct.ip_sf_list, ptr %psf, i32 0, i32 1
  %25 = ptrtoint ptr %sf_count40 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sf_count40, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %26)
  %cmp49 = icmp eq i32 %22, %26
  %conv50 = zext i1 %cmp49 to i32
  br label %return

sw.bb51:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %gdeleted)
  %tobool52.not = icmp eq i32 %gdeleted, 0
  br i1 %tobool52.not, label %lor.lhs.false53, label %sw.bb51.return_crit_edge

sw.bb51.return_crit_edge:                         ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

lor.lhs.false53:                                  ; preds = %sw.bb51
  %sf_crcount = getelementptr inbounds %struct.ip_sf_list, ptr %psf, i32 0, i32 5
  %27 = ptrtoint ptr %sf_crcount to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %sf_crcount, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool54.not = icmp eq i8 %28, 0
  br i1 %tobool54.not, label %lor.lhs.false53.return_crit_edge, label %if.end56

lor.lhs.false53.return_crit_edge:                 ; preds = %lor.lhs.false53
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end56:                                         ; preds = %lor.lhs.false53
  call void @__sanitizer_cov_trace_pc() #14
  %sfmode57 = getelementptr inbounds %struct.ip_mc_list, ptr %pmc, i32 0, i32 2
  %29 = ptrtoint ptr %sfmode57 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sfmode57, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp58 = icmp eq i32 %30, 1
  %conv59 = zext i1 %cmp58 to i32
  %xor = xor i32 %conv59, %sdeleted
  br label %return

sw.bb60:                                          ; preds = %entry
  %sfmode61 = getelementptr inbounds %struct.ip_mc_list, ptr %pmc, i32 0, i32 2
  %31 = ptrtoint ptr %sfmode61 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sfmode61, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp62 = icmp eq i32 %32, 1
  br i1 %cmp62, label %if.then64, label %if.end70

if.then64:                                        ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %gdeleted)
  %tobool65.not = icmp eq i32 %gdeleted, 0
  br i1 %tobool65.not, label %lor.rhs, label %if.then64.return_crit_edge

if.then64.return_crit_edge:                       ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

lor.rhs:                                          ; preds = %if.then64
  %sf_crcount66 = getelementptr inbounds %struct.ip_sf_list, ptr %psf, i32 0, i32 5
  %33 = ptrtoint ptr %sf_crcount66 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %sf_crcount66, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool68.not = icmp eq i8 %34, 0
  br i1 %tobool68.not, label %lor.rhs.return_crit_edge, label %land.rhs

lor.rhs.return_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

land.rhs:                                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sdeleted)
  %tobool69 = icmp ne i32 %sdeleted, 0
  %phi.cast104 = zext i1 %tobool69 to i32
  br label %return

if.end70:                                         ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #14
  %sf_crcount71 = getelementptr inbounds %struct.ip_sf_list, ptr %psf, i32 0, i32 5
  %35 = ptrtoint ptr %sf_crcount71 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %sf_crcount71, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool73.not = icmp ne i8 %36, 0
  %37 = or i32 %sdeleted, %gdeleted
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %38 = icmp eq i32 %37, 0
  %39 = and i1 %38, %tobool73.not
  %40 = zext i1 %39 to i32
  br label %return

return:                                           ; preds = %if.end70, %land.rhs, %lor.rhs.return_crit_edge, %if.then64.return_crit_edge, %if.end56, %lor.lhs.false53.return_crit_edge, %sw.bb51.return_crit_edge, %if.end44, %lor.lhs.false39.return_crit_edge, %if.end34.return_crit_edge, %sw.bb29.return_crit_edge, %if.end24, %sw.bb19.return_crit_edge, %if.end12, %if.then9, %if.then4.return_crit_edge, %land.lhs.true.return_crit_edge, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %40, %if.end70 ], [ %xor, %if.end56 ], [ %conv50, %if.end44 ], [ %conv28, %if.end24 ], [ %conv11, %if.then9 ], [ %conv17, %if.end12 ], [ 0, %sw.bb.return_crit_edge ], [ 1, %if.then4.return_crit_edge ], [ 0, %land.lhs.true.return_crit_edge ], [ 0, %sw.bb19.return_crit_edge ], [ 0, %sw.bb29.return_crit_edge ], [ 0, %lor.lhs.false39.return_crit_edge ], [ 0, %if.end34.return_crit_edge ], [ 0, %lor.lhs.false53.return_crit_edge ], [ 0, %sw.bb51.return_crit_edge ], [ 1, %if.then64.return_crit_edge ], [ 0, %lor.rhs.return_crit_edge ], [ %phi.cast104, %land.rhs ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @add_grhead(ptr noundef %skb, ptr nocapture noundef readonly %pmc, i32 noundef %type, ptr nocapture noundef writeonly %ppgr, i32 noundef %mtu) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %skb, null
  br i1 %tobool.not, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %pmc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmc, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call fastcc ptr @igmpv3_newpack(ptr noundef %3, i32 noundef %mtu)
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.then.cleanup_crit_edge, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %skb.addr.0 = phi ptr [ %skb, %entry.if.end4_crit_edge ], [ %call, %if.then.if.end4_crit_edge ]
  %call5 = tail call ptr @skb_put(ptr noundef nonnull %skb.addr.0, i32 noundef 8) #12
  %conv = trunc i32 %type to i8
  %4 = ptrtoint ptr %call5 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %call5, align 4
  %grec_auxwords = getelementptr inbounds %struct.igmpv3_grec, ptr %call5, i32 0, i32 1
  %5 = ptrtoint ptr %grec_auxwords to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %grec_auxwords, align 1
  %grec_nsrcs = getelementptr inbounds %struct.igmpv3_grec, ptr %call5, i32 0, i32 2
  %6 = ptrtoint ptr %grec_nsrcs to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %grec_nsrcs, align 2
  %multiaddr = getelementptr inbounds %struct.ip_mc_list, ptr %pmc, i32 0, i32 1
  %7 = ptrtoint ptr %multiaddr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %multiaddr, align 4
  %grec_mca = getelementptr inbounds %struct.igmpv3_grec, ptr %call5, i32 0, i32 3
  %9 = ptrtoint ptr %grec_mca to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %grec_mca, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 18
  %10 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 15, i32 0, i32 19
  %12 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %13 to i32
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 %conv.i.i
  %ngrec = getelementptr inbounds %struct.igmpv3_report, ptr %add.ptr.i.i, i32 0, i32 4
  %14 = ptrtoint ptr %ngrec to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %ngrec, align 2
  %add = add i16 %15, 1
  store i16 %add, ptr %ngrec, align 2
  %16 = ptrtoint ptr %ppgr to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call5, ptr %ppgr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ %skb.addr.0, %if.end4 ], [ null, %if.then.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_route_output_flow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ip_select_ident(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_checksum_trimmed(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @ip_mc_validate_checksum(ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %csum_valid = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %0 = ptrtoint ptr %csum_valid to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %csum_valid, align 8
  %bf.clear = and i16 %bf.load, -2
  store i16 %bf.clear, ptr %csum_valid, align 8
  %bf.lshr.i.i = lshr i16 %bf.load, 9
  %trunc = trunc i16 %bf.lshr.i.i to i2
  %1 = zext i2 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.75)
  switch i2 %trunc, label %entry.if.then_crit_edge [
    i2 1, label %entry.if.then.i_crit_edge
    i2 -1, label %skb_csum_unnecessary.exit.i
  ]

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

skb_csum_unnecessary.exit.i:                      ; preds = %entry
  %2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %2, align 8
  %conv.i.i.i = zext i16 %4 to i32
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %5 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i.i.i.i, align 4
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %7 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %head.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %6 to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %8 to i32
  %sub.ptr.sub.i.neg.i.i.i = sub i32 %conv.i.i.i, %sub.ptr.lhs.cast.i.i.i.i
  %sub.i.i.i = add i32 %sub.ptr.sub.i.neg.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %tobool.not.i = icmp slt i32 %sub.i.i.i, 0
  br i1 %tobool.not.i, label %skb_csum_unnecessary.exit.i.if.then_crit_edge, label %skb_csum_unnecessary.exit.i.if.then.i_crit_edge

skb_csum_unnecessary.exit.i.if.then.i_crit_edge:  ; preds = %skb_csum_unnecessary.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

skb_csum_unnecessary.exit.i.if.then_crit_edge:    ; preds = %skb_csum_unnecessary.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then.i:                                        ; preds = %skb_csum_unnecessary.exit.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %bf.set.i = or i16 %bf.load, 1
  %9 = ptrtoint ptr %csum_valid to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %bf.set.i, ptr %csum_valid, align 8
  %10 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %10)
  %cmp.i3.i = icmp eq i16 %10, 512
  br i1 %cmp.i3.i, label %if.then.i.i, label %if.then.i.if.end_crit_edge

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then.i.i:                                      ; preds = %if.then.i
  %csum_level.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %11 = ptrtoint ptr %csum_level.i.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %bf.load2.i.i = load i32, ptr %csum_level.i.i, align 2
  %12 = and i32 %bf.load2.i.i, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp7.i.i = icmp eq i32 %12, 0
  br i1 %cmp7.i.i, label %if.then9.i.i, label %if.else.i.i

if.then9.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %bf.clear12.i.i = and i16 %bf.set.i, -1537
  %13 = ptrtoint ptr %csum_valid to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %bf.clear12.i.i, ptr %csum_valid, align 8
  br label %if.end

if.else.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %14 = add i32 %bf.load2.i.i, 805306368
  %bf.shl.i.i = and i32 %14, 805306368
  %bf.clear19.i.i = and i32 %bf.load2.i.i, -805306369
  %bf.set20.i.i = or i32 %bf.shl.i.i, %bf.clear19.i.i
  %15 = ptrtoint ptr %csum_level.i.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %bf.set20.i.i, ptr %csum_level.i.i, align 2
  br label %if.end

if.then:                                          ; preds = %skb_csum_unnecessary.exit.i.if.then_crit_edge, %entry.if.then_crit_edge
  %16 = ptrtoint ptr %csum_valid to i32
  call void @__asan_load2_noabort(i32 %16)
  %bf.load.i = load i16, ptr %csum_valid, align 8
  %17 = and i16 %bf.load.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %17)
  %cmp.i = icmp eq i16 %17, 1024
  br i1 %cmp.i, label %if.then.i7, label %if.then.if.end6.i_crit_edge

if.then.if.end6.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6.i

if.then.i7:                                       ; preds = %if.then
  %18 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 8
  %21 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %20) #15, !srcloc !245
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65537, i32 %21)
  %tobool.not.i6 = icmp ugt i32 %21, -65537
  br i1 %tobool.not.i6, label %if.then3.i, label %if.then.i7.if.end6.i_crit_edge

if.then.i7.if.end6.i_crit_edge:                   ; preds = %if.then.i7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6.i

if.then3.i:                                       ; preds = %if.then.i7
  call void @__sanitizer_cov_trace_pc() #14
  %bf.set.i8 = or i16 %bf.load.i, 1
  br label %__skb_checksum_validate_complete.exit

if.end6.i:                                        ; preds = %if.then.i7.if.end6.i_crit_edge, %if.then.if.end6.i_crit_edge
  %22 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %22, align 8
  %call12.i = tail call zeroext i16 @__skb_checksum_complete(ptr noundef %skb) #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call12.i)
  %tobool13.not.i = icmp eq i16 %call12.i, 0
  %24 = zext i1 %tobool13.not.i to i16
  %25 = ptrtoint ptr %csum_valid to i32
  call void @__asan_load2_noabort(i32 %25)
  %bf.load16.i = load i16, ptr %csum_valid, align 8
  %bf.clear17.i = and i16 %bf.load16.i, -2
  %bf.set18.i = or i16 %bf.clear17.i, %24
  br label %__skb_checksum_validate_complete.exit

__skb_checksum_validate_complete.exit:            ; preds = %if.end6.i, %if.then3.i
  %storemerge.i = phi i16 [ %bf.set18.i, %if.end6.i ], [ %bf.set.i8, %if.then3.i ]
  %retval.0.i = phi i16 [ %call12.i, %if.end6.i ], [ 0, %if.then3.i ]
  %26 = ptrtoint ptr %csum_valid to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %storemerge.i, ptr %csum_valid, align 8
  br label %if.end

if.end:                                           ; preds = %__skb_checksum_validate_complete.exit, %if.else.i.i, %if.then9.i.i, %if.then.i.if.end_crit_edge
  %__ret.0 = phi i16 [ %retval.0.i, %__skb_checksum_validate_complete.exit ], [ 0, %if.then.i.if.end_crit_edge ], [ 0, %if.then9.i.i ], [ 0, %if.else.i.i ]
  ret i16 %__ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @igmpv3_add_delrec(ptr noundef %in_dev, ptr noundef %im, i32 noundef %gfp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %in_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %in_dev, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 127
  %2 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nd_net.i, align 4
  %or.i = or i32 %gfp, 256
  %and.i.i.i = and i32 %gfp, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i19.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i19.i.i, label %entry.kzalloc.exit_crit_edge, label %if.end.i.i.i, !prof !250

entry.kzalloc.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %kzalloc.exit

if.end.i.i.i:                                     ; preds = %entry
  %and2.i.i.i = and i32 %gfp, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i.i.i.kzalloc.exit_crit_edge

if.end.i.i.i.kzalloc.exit_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %and6.i.i.i = and i32 %gfp, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc.exit

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i.i.i.kzalloc.exit_crit_edge, %entry.kzalloc.exit_crit_edge
  %retval.0.i20.i.i = phi i32 [ 0, %entry.kzalloc.exit_crit_edge ], [ 3, %if.end.i.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i20.i.i, i32 8
  %4 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef %or.i, i32 noundef 152) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %kzalloc.exit.cleanup_crit_edge, label %do.body

kzalloc.exit.cleanup_crit_edge:                   ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %kzalloc.exit
  %lock = getelementptr inbounds %struct.ip_mc_list, ptr %call7.i.i, i32 0, i32 11
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.40, ptr noundef nonnull @igmpv3_add_delrec.__key, i16 noundef signext 3) #12
  %lock3 = getelementptr inbounds %struct.ip_mc_list, ptr %im, i32 0, i32 11
  tail call void @_raw_spin_lock_bh(ptr noundef %lock3) #12
  %6 = ptrtoint ptr %im to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %im, align 4
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %call7.i.i, align 8
  %refcnt = getelementptr inbounds %struct.in_device, ptr %in_dev, i32 0, i32 2
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #12
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #12, !srcloc !249
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %do.body.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !244

do.body.if.end15.sink.split.i.i.i_crit_edge:      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %do.body
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %10 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %.not.i.i.i = icmp sgt i32 %10, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !250

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %do.body.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %do.body.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef %.sink.i.i.i) #12
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  %multiaddr = getelementptr inbounds %struct.ip_mc_list, ptr %im, i32 0, i32 1
  %11 = ptrtoint ptr %multiaddr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %multiaddr, align 4
  %multiaddr5 = getelementptr inbounds %struct.ip_mc_list, ptr %call7.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %multiaddr5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %multiaddr5, align 4
  %mr_qrv = getelementptr inbounds %struct.in_device, ptr %in_dev, i32 0, i32 15
  %14 = ptrtoint ptr %mr_qrv to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %mr_qrv, align 4
  %conv = zext i8 %15 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool6.not = icmp eq i8 %15, 0
  br i1 %tobool6.not, label %cond.false, label %refcount_inc.exit.cond.end_crit_edge

refcount_inc.exit.cond.end_crit_edge:             ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #14
  %sysctl_igmp_qrv = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 35, i32 122
  %16 = ptrtoint ptr %sysctl_igmp_qrv to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sysctl_igmp_qrv, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %refcount_inc.exit.cond.end_crit_edge
  %cond = phi i32 [ %17, %cond.false ], [ %conv, %refcount_inc.exit.cond.end_crit_edge ]
  %conv7 = trunc i32 %cond to i8
  %crcount = getelementptr inbounds %struct.ip_mc_list, ptr %call7.i.i, i32 0, i32 17
  %18 = ptrtoint ptr %crcount to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv7, ptr %crcount, align 1
  %sfmode = getelementptr inbounds %struct.ip_mc_list, ptr %im, i32 0, i32 2
  %19 = ptrtoint ptr %sfmode to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sfmode, align 4
  %sfmode8 = getelementptr inbounds %struct.ip_mc_list, ptr %call7.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %sfmode8 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %sfmode8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp = icmp eq i32 %20, 1
  br i1 %cmp, label %if.then11, label %cond.end.if.end19_crit_edge

cond.end.if.end19_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then11:                                        ; preds = %cond.end
  %tomb = getelementptr inbounds %struct.ip_mc_list, ptr %im, i32 0, i32 4
  %22 = ptrtoint ptr %tomb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tomb, align 4
  %tomb12 = getelementptr inbounds %struct.ip_mc_list, ptr %call7.i.i, i32 0, i32 4
  %24 = ptrtoint ptr %tomb12 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %tomb12, align 8
  %sources = getelementptr inbounds %struct.ip_mc_list, ptr %im, i32 0, i32 3
  %25 = ptrtoint ptr %sources to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sources, align 4
  %sources13 = getelementptr inbounds %struct.ip_mc_list, ptr %call7.i.i, i32 0, i32 3
  %27 = ptrtoint ptr %sources13 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %sources13, align 4
  store ptr null, ptr %sources, align 4
  store ptr null, ptr %tomb, align 4
  %tobool17.not52 = icmp eq ptr %26, null
  br i1 %tobool17.not52, label %if.then11.if.end19_crit_edge, label %if.then11.for.body_crit_edge

if.then11.for.body_crit_edge:                     ; preds = %if.then11
  br label %for.body

if.then11.if.end19_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then11.for.body_crit_edge
  %psf.053 = phi ptr [ %32, %for.body.for.body_crit_edge ], [ %26, %if.then11.for.body_crit_edge ]
  %28 = ptrtoint ptr %crcount to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %crcount, align 1
  %sf_crcount = getelementptr inbounds %struct.ip_sf_list, ptr %psf.053, i32 0, i32 5
  %30 = ptrtoint ptr %sf_crcount to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %sf_crcount, align 2
  %31 = ptrtoint ptr %psf.053 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %psf.053, align 4
  %tobool17.not = icmp eq ptr %32, null
  br i1 %tobool17.not, label %for.body.if.end19_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.if.end19_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.end19:                                         ; preds = %for.body.if.end19_crit_edge, %if.then11.if.end19_crit_edge, %cond.end.if.end19_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock3) #12
  %mc_tomb_lock = getelementptr inbounds %struct.in_device, ptr %in_dev, i32 0, i32 8
  tail call void @_raw_spin_lock_bh(ptr noundef %mc_tomb_lock) #12
  %mc_tomb = getelementptr inbounds %struct.in_device, ptr %in_dev, i32 0, i32 9
  %33 = ptrtoint ptr %mc_tomb to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mc_tomb, align 4
  %35 = getelementptr inbounds %struct.ip_mc_list, ptr %call7.i.i, i32 0, i32 6
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %34, ptr %35, align 4
  store ptr %call7.i.i, ptr %mc_tomb, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %mc_tomb_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %kzalloc.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @igmp_ifc_event(ptr noundef %in_dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %in_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %in_dev, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 127
  %2 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nd_net.i, align 4
  %devconf_all = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 35, i32 6
  %4 = ptrtoint ptr %devconf_all to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %devconf_all, align 4
  %arrayidx = getelementptr %struct.ipv4_devconf, ptr %5, i32 0, i32 1, i32 16
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp eq i32 %7, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx.i = getelementptr %struct.in_device, ptr %in_dev, i32 0, i32 21, i32 1, i32 16
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp4 = icmp eq i32 %9, 1
  br i1 %cmp4, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false5

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %mr_v1_seen = getelementptr inbounds %struct.in_device, ptr %in_dev, i32 0, i32 10
  %10 = ptrtoint ptr %mr_v1_seen to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mr_v1_seen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %lor.lhs.false8, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %12, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp7 = icmp slt i32 %sub, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp15 = icmp eq i32 %7, 2
  %or.cond = select i1 %cmp7, i1 true, i1 %cmp15
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp18 = icmp eq i32 %9, 2
  %or.cond47 = select i1 %or.cond, i1 true, i1 %cmp18
  br i1 %or.cond47, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.lor.lhs.false19_crit_edge

land.lhs.true.lor.lhs.false19_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false19

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false8:                                   ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp15.old = icmp eq i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp18.old = icmp eq i32 %9, 2
  %or.cond48 = select i1 %cmp15.old, i1 true, i1 %cmp18.old
  br i1 %or.cond48, label %lor.lhs.false8.cleanup_crit_edge, label %lor.lhs.false8.lor.lhs.false19_crit_edge

lor.lhs.false8.lor.lhs.false19_crit_edge:         ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false19

lor.lhs.false8.cleanup_crit_edge:                 ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false19:                                  ; preds = %lor.lhs.false8.lor.lhs.false19_crit_edge, %land.lhs.true.lor.lhs.false19_crit_edge
  %mr_v2_seen = getelementptr inbounds %struct.in_device, ptr %in_dev, i32 0, i32 11
  %13 = ptrtoint ptr %mr_v2_seen to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mr_v2_seen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool20.not = icmp eq i32 %14, 0
  br i1 %tobool20.not, label %lor.lhs.false19.do.body26_crit_edge, label %land.lhs.true21

lor.lhs.false19.do.body26_crit_edge:              ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body26

land.lhs.true21:                                  ; preds = %lor.lhs.false19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %sub23 = sub i32 %15, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub23)
  %cmp24 = icmp slt i32 %sub23, 0
  br i1 %cmp24, label %land.lhs.true21.cleanup_crit_edge, label %land.lhs.true21.do.body26_crit_edge

land.lhs.true21.do.body26_crit_edge:              ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body26

land.lhs.true21.cleanup_crit_edge:                ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body26:                                        ; preds = %land.lhs.true21.do.body26_crit_edge, %lor.lhs.false19.do.body26_crit_edge
  %mr_qrv = getelementptr inbounds %struct.in_device, ptr %in_dev, i32 0, i32 15
  %16 = ptrtoint ptr %mr_qrv to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %mr_qrv, align 4
  %conv = zext i8 %17 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool27.not = icmp eq i8 %17, 0
  br i1 %tobool27.not, label %cond.false, label %do.body26.cond.end_crit_edge

do.body26.cond.end_crit_edge:                     ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #14
  %sysctl_igmp_qrv = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 35, i32 122
  %18 = ptrtoint ptr %sysctl_igmp_qrv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sysctl_igmp_qrv, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %do.body26.cond.end_crit_edge
  %cond = phi i32 [ %19, %cond.false ], [ %conv, %do.body26.cond.end_crit_edge ]
  %mr_ifc_count = getelementptr inbounds %struct.in_device, ptr %in_dev, i32 0, i32 17
  %20 = ptrtoint ptr %mr_ifc_count to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 %cond, ptr %mr_ifc_count, align 4
  %call.i = tail call i32 @prandom_u32() #12
  %mr_ifc_timer.i = getelementptr inbounds %struct.in_device, ptr %in_dev, i32 0, i32 19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %add1.i = add i32 %21, 2
  %call2.i = tail call i32 @mod_timer(ptr noundef %mr_ifc_timer.i, i32 noundef %add1.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i:                                        ; preds = %cond.end
  %refcnt.i = getelementptr inbounds %struct.in_device, ptr %in_dev, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #12
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #12, !srcloc !249
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !244

if.then.i.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %23 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %.not.i.i.i.i = icmp sgt i32 %23, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.cleanup_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !250

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.cleanup_crit_edge:                ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef %.sink.i.i.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.cleanup_crit_edge, %cond.end.cleanup_crit_edge, %land.lhs.true21.cleanup_crit_edge, %lor.lhs.false8.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arp_mc_map(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_mc_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @in_dev_finish_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_mc_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ip_dev_find(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ip_mc_del1_src(ptr nocapture noundef %pmc, i32 noundef %sfmode, ptr nocapture noundef readonly %psfsrc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sources = getelementptr inbounds %struct.ip_mc_list, ptr %pmc, i32 0, i32 3
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %psf.0.in = phi ptr [ %sources, %entry ], [ %psf.0, %for.body.for.cond_crit_edge ]
  %psf_prev.0 = phi ptr [ null, %entry ], [ %psf.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %psf.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %psf.0 = load ptr, ptr %psf.0.in, align 4
  %tobool.not = icmp eq ptr %psf.0, null
  br i1 %tobool.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %sf_inaddr = getelementptr inbounds %struct.ip_sf_list, ptr %psf.0, i32 0, i32 2
  %1 = ptrtoint ptr %sf_inaddr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %sf_inaddr, align 4
  %3 = ptrtoint ptr %psfsrc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %psfsrc, align 4
  %cmp = icmp eq i32 %2, %4
  br i1 %cmp, label %lor.lhs.false.critedge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond

lor.lhs.false.critedge:                           ; preds = %for.body
  %sf_count = getelementptr inbounds %struct.ip_sf_list, ptr %psf.0, i32 0, i32 1
  %arrayidx = getelementptr %struct.ip_sf_list, ptr %psf.0, i32 0, i32 1, i32 %sfmode
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp2 = icmp eq i32 %6, 0
  br i1 %cmp2, label %lor.lhs.false.critedge.cleanup_crit_edge, label %if.end4

lor.lhs.false.critedge.cleanup_crit_edge:         ; preds = %lor.lhs.false.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %lor.lhs.false.critedge
  %dec = add i32 %6, -1
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %dec, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp9 = icmp eq i32 %dec, 0
  br i1 %cmp9, label %if.then10, label %if.end4.if.end11_crit_edge

if.end4.if.end11_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then10:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %pmc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pmc, align 4
  tail call void @ip_rt_multicast_event(ptr noundef %9) #12
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end4.if.end11_crit_edge
  %arrayidx13 = getelementptr %struct.ip_sf_list, ptr %psf.0, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool14.not = icmp eq i32 %11, 0
  br i1 %tobool14.not, label %land.lhs.true, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end11
  %12 = ptrtoint ptr %sf_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sf_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool17.not = icmp eq i32 %13, 0
  br i1 %tobool17.not, label %if.then18, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then18:                                        ; preds = %land.lhs.true
  %14 = ptrtoint ptr %pmc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pmc, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 127
  %18 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %nd_net.i, align 4
  %tobool20.not = icmp eq ptr %psf_prev.0, null
  %20 = ptrtoint ptr %psf.0 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %psf.0, align 4
  %sources.psf_prev.0.lcssa123 = select i1 %tobool20.not, ptr %sources, ptr %psf_prev.0
  %22 = ptrtoint ptr %sources.psf_prev.0.lcssa123 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %sources.psf_prev.0.lcssa123, align 4
  %sf_oldin = getelementptr inbounds %struct.ip_sf_list, ptr %psf.0, i32 0, i32 4
  %23 = ptrtoint ptr %sf_oldin to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %sf_oldin, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool27.not = icmp eq i8 %24, 0
  br i1 %tobool27.not, label %if.then18.if.else71_crit_edge, label %land.lhs.true28

if.then18.if.else71_crit_edge:                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else71

land.lhs.true28:                                  ; preds = %if.then18
  %25 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %15, align 4
  %nd_net.i109 = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 127
  %27 = ptrtoint ptr %nd_net.i109 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %nd_net.i109, align 4
  %devconf_all = getelementptr inbounds %struct.net, ptr %28, i32 0, i32 35, i32 6
  %29 = ptrtoint ptr %devconf_all to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %devconf_all, align 4
  %arrayidx31 = getelementptr %struct.ipv4_devconf, ptr %30, i32 0, i32 1, i32 16
  %31 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp32 = icmp eq i32 %32, 1
  br i1 %cmp32, label %land.lhs.true28.if.else71_crit_edge, label %lor.lhs.false34

land.lhs.true28.if.else71_crit_edge:              ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else71

lor.lhs.false34:                                  ; preds = %land.lhs.true28
  %arrayidx.i = getelementptr %struct.in_device, ptr %15, i32 0, i32 21, i32 1, i32 16
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp36 = icmp eq i32 %34, 1
  br i1 %cmp36, label %lor.lhs.false34.if.else71_crit_edge, label %lor.lhs.false38

lor.lhs.false34.if.else71_crit_edge:              ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else71

lor.lhs.false38:                                  ; preds = %lor.lhs.false34
  %mr_v1_seen = getelementptr inbounds %struct.in_device, ptr %15, i32 0, i32 10
  %35 = ptrtoint ptr %mr_v1_seen to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mr_v1_seen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool39.not = icmp eq i32 %36, 0
  br i1 %tobool39.not, label %land.lhs.true44, label %land.lhs.true40

land.lhs.true40:                                  ; preds = %lor.lhs.false38
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %37 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %37, %36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp42 = icmp slt i32 %sub, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %32)
  %cmp51 = icmp eq i32 %32, 2
  %or.cond = select i1 %cmp42, i1 true, i1 %cmp51
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %34)
  %cmp55 = icmp eq i32 %34, 2
  %or.cond112 = select i1 %or.cond, i1 true, i1 %cmp55
  br i1 %or.cond112, label %land.lhs.true40.if.else71_crit_edge, label %land.lhs.true40.lor.lhs.false57_crit_edge

land.lhs.true40.lor.lhs.false57_crit_edge:        ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false57

land.lhs.true40.if.else71_crit_edge:              ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else71

land.lhs.true44:                                  ; preds = %lor.lhs.false38
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %32)
  %cmp51.old = icmp eq i32 %32, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %34)
  %cmp55.old = icmp eq i32 %34, 2
  %or.cond113 = select i1 %cmp51.old, i1 true, i1 %cmp55.old
  br i1 %or.cond113, label %land.lhs.true44.if.else71_crit_edge, label %land.lhs.true44.lor.lhs.false57_crit_edge

land.lhs.true44.lor.lhs.false57_crit_edge:        ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false57

land.lhs.true44.if.else71_crit_edge:              ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else71

lor.lhs.false57:                                  ; preds = %land.lhs.true44.lor.lhs.false57_crit_edge, %land.lhs.true40.lor.lhs.false57_crit_edge
  %mr_v2_seen = getelementptr inbounds %struct.in_device, ptr %15, i32 0, i32 11
  %38 = ptrtoint ptr %mr_v2_seen to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mr_v2_seen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool58.not = icmp eq i32 %39, 0
  br i1 %tobool58.not, label %lor.lhs.false57.if.then64_crit_edge, label %land.lhs.true59

lor.lhs.false57.if.then64_crit_edge:              ; preds = %lor.lhs.false57
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then64

land.lhs.true59:                                  ; preds = %lor.lhs.false57
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %40 = load volatile i32, ptr @jiffies, align 128
  %sub61 = sub i32 %40, %39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub61)
  %cmp62 = icmp slt i32 %sub61, 0
  br i1 %cmp62, label %land.lhs.true59.if.else71_crit_edge, label %land.lhs.true59.if.then64_crit_edge

land.lhs.true59.if.then64_crit_edge:              ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then64

land.lhs.true59.if.else71_crit_edge:              ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else71

if.then64:                                        ; preds = %land.lhs.true59.if.then64_crit_edge, %lor.lhs.false57.if.then64_crit_edge
  %mr_qrv = getelementptr inbounds %struct.in_device, ptr %15, i32 0, i32 15
  %41 = ptrtoint ptr %mr_qrv to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %mr_qrv, align 4
  %conv65 = zext i8 %42 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool66.not = icmp eq i8 %42, 0
  br i1 %tobool66.not, label %cond.false, label %if.then64.cond.end_crit_edge

if.then64.cond.end_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #14
  %sysctl_igmp_qrv = getelementptr inbounds %struct.net, ptr %19, i32 0, i32 35, i32 122
  %43 = ptrtoint ptr %sysctl_igmp_qrv to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %sysctl_igmp_qrv, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then64.cond.end_crit_edge
  %cond = phi i32 [ %44, %cond.false ], [ %conv65, %if.then64.cond.end_crit_edge ]
  %conv68 = trunc i32 %cond to i8
  %sf_crcount = getelementptr inbounds %struct.ip_sf_list, ptr %psf.0, i32 0, i32 5
  %45 = ptrtoint ptr %sf_crcount to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv68, ptr %sf_crcount, align 2
  %tomb = getelementptr inbounds %struct.ip_mc_list, ptr %pmc, i32 0, i32 4
  %46 = ptrtoint ptr %tomb to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %tomb, align 4
  %48 = ptrtoint ptr %psf.0 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %psf.0, align 4
  store ptr %psf.0, ptr %tomb, align 4
  br label %cleanup

if.else71:                                        ; preds = %land.lhs.true59.if.else71_crit_edge, %land.lhs.true44.if.else71_crit_edge, %land.lhs.true40.if.else71_crit_edge, %lor.lhs.false34.if.else71_crit_edge, %land.lhs.true28.if.else71_crit_edge, %if.then18.if.else71_crit_edge
  tail call void @kfree(ptr noundef nonnull %psf.0) #12
  br label %cleanup

cleanup:                                          ; preds = %if.else71, %cond.end, %land.lhs.true.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %lor.lhs.false.critedge.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ -3, %lor.lhs.false.critedge.cleanup_crit_edge ], [ 0, %if.end11.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.else71 ], [ 1, %cond.end ], [ -3, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sf_setstate(ptr nocapture noundef %pmc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sfcount = getelementptr inbounds %struct.ip_mc_list, ptr %pmc, i32 0, i32 5
  %0 = ptrtoint ptr %sfcount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sfcount, align 4
  %2 = ptrtoint ptr %pmc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pmc, align 4
  %mr_qrv = getelementptr inbounds %struct.in_device, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %mr_qrv to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mr_qrv, align 4
  %sources = getelementptr inbounds %struct.ip_mc_list, ptr %pmc, i32 0, i32 3
  %6 = ptrtoint ptr %sources to i32
  call void @__asan_load4_noabort(i32 %6)
  %psf.0116 = load ptr, ptr %sources, align 4
  %tobool.not117 = icmp eq ptr %psf.0116, null
  br i1 %tobool.not117, label %entry.for.end72_crit_edge, label %for.body.lr.ph

entry.for.end72_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end72

for.body.lr.ph:                                   ; preds = %entry
  %tomb = getelementptr inbounds %struct.ip_mc_list, ptr %pmc, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc70.for.body_crit_edge, %for.body.lr.ph
  %psf.0121 = phi ptr [ %psf.0116, %for.body.lr.ph ], [ %psf.0, %for.inc70.for.body_crit_edge ]
  %rv.0118 = phi i32 [ 0, %for.body.lr.ph ], [ %rv.1, %for.inc70.for.body_crit_edge ]
  %7 = ptrtoint ptr %sfcount to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sfcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool3.not = icmp eq i32 %8, 0
  br i1 %tobool3.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  %sf_count = getelementptr inbounds %struct.ip_sf_list, ptr %psf.0121, i32 0, i32 1
  %9 = ptrtoint ptr %sf_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sf_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %10)
  %cmp = icmp eq i32 %1, %10
  br i1 %cmp, label %if.end, label %if.then.if.else38_crit_edge

if.then.if.else38_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else38

if.else:                                          ; preds = %for.body
  %arrayidx10 = getelementptr %struct.ip_sf_list, ptr %psf.0121, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp11.not = icmp eq i32 %12, 0
  br i1 %cmp11.not, label %if.else.if.else38_crit_edge, label %if.else.if.then14_crit_edge

if.else.if.then14_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then14

if.else.if.else38_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else38

if.end:                                           ; preds = %if.then
  %arrayidx7 = getelementptr %struct.ip_sf_list, ptr %psf.0121, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool8.not = icmp eq i32 %14, 0
  br i1 %tobool8.not, label %if.end.if.then14_crit_edge, label %if.end.if.else38_crit_edge

if.end.if.else38_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else38

if.end.if.then14_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then14

if.then14:                                        ; preds = %if.end.if.then14_crit_edge, %if.else.if.then14_crit_edge
  %sf_oldin = getelementptr inbounds %struct.ip_sf_list, ptr %psf.0121, i32 0, i32 4
  %15 = ptrtoint ptr %sf_oldin to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %sf_oldin, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool15.not = icmp eq i8 %16, 0
  br i1 %tobool15.not, label %if.then16, label %if.then14.for.inc70_crit_edge

if.then14.for.inc70_crit_edge:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc70

if.then16:                                        ; preds = %if.then14
  %sf_inaddr20 = getelementptr inbounds %struct.ip_sf_list, ptr %psf.0121, i32 0, i32 2
  br label %for.cond17

for.cond17:                                       ; preds = %for.body19.for.cond17_crit_edge, %if.then16
  %dpsf.0.in = phi ptr [ %tomb, %if.then16 ], [ %dpsf.0, %for.body19.for.cond17_crit_edge ]
  %prev.0 = phi ptr [ null, %if.then16 ], [ %dpsf.0, %for.body19.for.cond17_crit_edge ]
  %17 = ptrtoint ptr %dpsf.0.in to i32
  call void @__asan_load4_noabort(i32 %17)
  %dpsf.0 = load ptr, ptr %dpsf.0.in, align 4
  %tobool18.not = icmp eq ptr %dpsf.0, null
  br i1 %tobool18.not, label %for.cond17.for.inc70.sink.split_crit_edge, label %for.body19

for.cond17.for.inc70.sink.split_crit_edge:        ; preds = %for.cond17
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc70.sink.split

for.body19:                                       ; preds = %for.cond17
  %sf_inaddr = getelementptr inbounds %struct.ip_sf_list, ptr %dpsf.0, i32 0, i32 2
  %18 = ptrtoint ptr %sf_inaddr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sf_inaddr, align 4
  %20 = ptrtoint ptr %sf_inaddr20 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sf_inaddr20, align 4
  %cmp21 = icmp eq i32 %19, %21
  br i1 %cmp21, label %if.then26.critedge, label %for.body19.for.cond17_crit_edge

for.body19.for.cond17_crit_edge:                  ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond17

if.then26.critedge:                               ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #14
  %tobool27.not = icmp eq ptr %prev.0, null
  %22 = ptrtoint ptr %dpsf.0 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dpsf.0, align 4
  %tomb.prev.0.lcssa127 = select i1 %tobool27.not, ptr %tomb, ptr %prev.0
  %24 = ptrtoint ptr %tomb.prev.0.lcssa127 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %tomb.prev.0.lcssa127, align 4
  tail call void @kfree(ptr noundef nonnull %dpsf.0) #12
  br label %for.inc70.sink.split

if.else38:                                        ; preds = %if.end.if.else38_crit_edge, %if.else.if.else38_crit_edge, %if.then.if.else38_crit_edge
  %sf_oldin39 = getelementptr inbounds %struct.ip_sf_list, ptr %psf.0121, i32 0, i32 4
  %25 = ptrtoint ptr %sf_oldin39 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %sf_oldin39, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool40.not = icmp eq i8 %26, 0
  br i1 %tobool40.not, label %if.else38.for.inc70_crit_edge, label %if.then41

if.else38.for.inc70_crit_edge:                    ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc70

if.then41:                                        ; preds = %if.else38
  %sf_crcount42 = getelementptr inbounds %struct.ip_sf_list, ptr %psf.0121, i32 0, i32 5
  %27 = ptrtoint ptr %sf_crcount42 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %sf_crcount42, align 2
  %sf_inaddr48 = getelementptr inbounds %struct.ip_sf_list, ptr %psf.0121, i32 0, i32 2
  br label %for.cond44

for.cond44:                                       ; preds = %for.body46.for.cond44_crit_edge, %if.then41
  %dpsf.1.in = phi ptr [ %tomb, %if.then41 ], [ %dpsf.1, %for.body46.for.cond44_crit_edge ]
  %28 = ptrtoint ptr %dpsf.1.in to i32
  call void @__asan_load4_noabort(i32 %28)
  %dpsf.1 = load ptr, ptr %dpsf.1.in, align 4
  %tobool45.not = icmp eq ptr %dpsf.1, null
  br i1 %tobool45.not, label %if.then57.critedge, label %for.body46

for.body46:                                       ; preds = %for.cond44
  %sf_inaddr47 = getelementptr inbounds %struct.ip_sf_list, ptr %dpsf.1, i32 0, i32 2
  %29 = ptrtoint ptr %sf_inaddr47 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sf_inaddr47, align 4
  %31 = ptrtoint ptr %sf_inaddr48 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sf_inaddr48, align 4
  %cmp49 = icmp eq i32 %30, %32
  br i1 %cmp49, label %for.body46.for.inc70.sink.split_crit_edge, label %for.body46.for.cond44_crit_edge

for.body46.for.cond44_crit_edge:                  ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond44

for.body46.for.inc70.sink.split_crit_edge:        ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc70.sink.split

if.then57.critedge:                               ; preds = %for.cond44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %33 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %33, i32 noundef 2592, i32 noundef 20) #16
  %tobool58.not = icmp eq ptr %call7.i, null
  br i1 %tobool58.not, label %if.then57.critedge.for.inc70_crit_edge, label %if.end60

if.then57.critedge.for.inc70_crit_edge:           ; preds = %if.then57.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc70

if.end60:                                         ; preds = %if.then57.critedge
  call void @__sanitizer_cov_trace_pc() #14
  %34 = call ptr @memcpy(ptr %call7.i, ptr %psf.0121, i32 20)
  %35 = ptrtoint ptr %tomb to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tomb, align 4
  %37 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %call7.i, align 8
  store ptr %call7.i, ptr %tomb, align 4
  br label %for.inc70.sink.split

for.inc70.sink.split:                             ; preds = %if.end60, %for.body46.for.inc70.sink.split_crit_edge, %if.then26.critedge, %for.cond17.for.inc70.sink.split_crit_edge
  %psf.0121.sink = phi ptr [ %psf.0121, %if.then26.critedge ], [ %call7.i, %if.end60 ], [ %dpsf.1, %for.body46.for.inc70.sink.split_crit_edge ], [ %psf.0121, %for.cond17.for.inc70.sink.split_crit_edge ]
  %sf_crcount = getelementptr inbounds %struct.ip_sf_list, ptr %psf.0121.sink, i32 0, i32 5
  %38 = ptrtoint ptr %sf_crcount to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %5, ptr %sf_crcount, align 2
  %inc = add i32 %rv.0118, 1
  br label %for.inc70

for.inc70:                                        ; preds = %for.inc70.sink.split, %if.then57.critedge.for.inc70_crit_edge, %if.else38.for.inc70_crit_edge, %if.then14.for.inc70_crit_edge
  %rv.1 = phi i32 [ %rv.0118, %if.then14.for.inc70_crit_edge ], [ %rv.0118, %if.then57.critedge.for.inc70_crit_edge ], [ %rv.0118, %if.else38.for.inc70_crit_edge ], [ %inc, %for.inc70.sink.split ]
  %39 = ptrtoint ptr %psf.0121 to i32
  call void @__asan_load4_noabort(i32 %39)
  %psf.0 = load ptr, ptr %psf.0121, align 4
  %tobool.not = icmp eq ptr %psf.0, null
  br i1 %tobool.not, label %for.inc70.for.end72_crit_edge, label %for.inc70.for.body_crit_edge

for.inc70.for.body_crit_edge:                     ; preds = %for.inc70
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc70.for.end72_crit_edge:                    ; preds = %for.inc70
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end72

for.end72:                                        ; preds = %for.inc70.for.end72_crit_edge, %entry.for.end72_crit_edge
  %rv.0.lcssa = phi i32 [ 0, %entry.for.end72_crit_edge ], [ %rv.1, %for.inc70.for.end72_crit_edge ]
  ret i32 %rv.0.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igmp_net_init(ptr noundef %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %proc_net = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 17
  %0 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %proc_net, align 4
  %call = tail call ptr @proc_create_net_data(ptr noundef nonnull @.str.52, i16 noundef zeroext 292, ptr noundef %1, ptr noundef nonnull @igmp_mc_seq_ops, i32 noundef 16, ptr noundef null) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %proc_net, align 4
  %call2 = tail call ptr @proc_create_net_data(ptr noundef nonnull @.str.53, i16 noundef zeroext 292, ptr noundef %3, ptr noundef nonnull @igmp_mcf_seq_ops, i32 noundef 20, ptr noundef null) #12
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.out_mcfilter_crit_edge, label %if.end5

if.end.out_mcfilter_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_mcfilter

if.end5:                                          ; preds = %if.end
  %mc_autojoin_sk = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 35, i32 21
  %call6 = tail call i32 @inet_ctl_sock_create(ptr noundef %mc_autojoin_sk, i16 noundef zeroext 2, i16 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef %net) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %do.end, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, i32 noundef %call6) #18
  %4 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %proc_net, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.53, ptr noundef %5) #12
  br label %out_mcfilter

out_mcfilter:                                     ; preds = %do.end, %if.end.out_mcfilter_crit_edge
  %6 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %proc_net, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.52, ptr noundef %7) #12
  br label %cleanup

cleanup:                                          ; preds = %out_mcfilter, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ], [ -12, %out_mcfilter ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @igmp_net_exit(ptr nocapture noundef readonly %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %proc_net = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 17
  %0 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %proc_net, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.53, ptr noundef %1) #12
  %2 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %proc_net, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.52, ptr noundef %3) #12
  %mc_autojoin_sk = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 35, i32 21
  %4 = ptrtoint ptr %mc_autojoin_sk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mc_autojoin_sk, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.inet_ctl_sock_destroy.exit_crit_edge, label %if.then.i

entry.inet_ctl_sock_destroy.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %inet_ctl_sock_destroy.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %sk_socket.i = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 71
  %6 = ptrtoint ptr %sk_socket.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sk_socket.i, align 8
  tail call void @sock_release(ptr noundef %7) #12
  br label %inet_ctl_sock_destroy.exit

inet_ctl_sock_destroy.exit:                       ; preds = %if.then.i, %entry.inet_ctl_sock_destroy.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_net_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_ctl_sock_create(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @igmp_mc_seq_start(ptr nocapture noundef readonly %seq, ptr nocapture noundef readonly %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !234) #12
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !248
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.49, i32 noundef 696, ptr noundef nonnull @.str.50) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool.not = icmp eq i64 %5, 0
  br i1 %tobool.not, label %rcu_read_lock.exit.cond.end_crit_edge, label %cond.true

rcu_read_lock.exit.cond.end_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %rcu_read_lock.exit
  %call.i2 = tail call fastcc ptr @igmp_mc_get_first(ptr noundef %seq) #12
  %tobool.not.i3 = icmp eq ptr %call.i2, null
  br i1 %tobool.not.i3, label %cond.true.cond.end_crit_edge, label %while.cond.preheader.i

cond.true.cond.end_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

while.cond.preheader.i:                           ; preds = %cond.true
  %sub = add i64 %5, -1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub)
  %tobool1.not17.i = icmp eq i64 %sub, 0
  br i1 %tobool1.not17.i, label %while.cond.preheader.i.cond.end_crit_edge, label %while.cond.preheader.i.land.rhs.i_crit_edge

while.cond.preheader.i.land.rhs.i_crit_edge:      ; preds = %while.cond.preheader.i
  br label %land.rhs.i

while.cond.preheader.i.cond.end_crit_edge:        ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

while.cond.i:                                     ; preds = %land.rhs.i
  %dec.i = add i64 %pos.addr.018.i, -1
  %tobool1.not.i = icmp eq i64 %dec.i, 0
  br i1 %tobool1.not.i, label %while.cond.i.cond.end_crit_edge, label %while.cond.i.land.rhs.i_crit_edge

while.cond.i.land.rhs.i_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i

while.cond.i.cond.end_crit_edge:                  ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

land.rhs.i:                                       ; preds = %while.cond.i.land.rhs.i_crit_edge, %while.cond.preheader.i.land.rhs.i_crit_edge
  %im.019.i = phi ptr [ %call2.i, %while.cond.i.land.rhs.i_crit_edge ], [ %call.i2, %while.cond.preheader.i.land.rhs.i_crit_edge ]
  %pos.addr.018.i = phi i64 [ %dec.i, %while.cond.i.land.rhs.i_crit_edge ], [ %sub, %while.cond.preheader.i.land.rhs.i_crit_edge ]
  %call2.i = tail call fastcc ptr @igmp_mc_get_next(ptr noundef %seq, ptr noundef nonnull %im.019.i) #12
  %cmp.not.i = icmp eq ptr %call2.i, null
  br i1 %cmp.not.i, label %land.rhs.i.cond.end_crit_edge, label %while.cond.i

land.rhs.i.cond.end_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.end:                                         ; preds = %land.rhs.i.cond.end_crit_edge, %while.cond.i.cond.end_crit_edge, %while.cond.preheader.i.cond.end_crit_edge, %cond.true.cond.end_crit_edge, %rcu_read_lock.exit.cond.end_crit_edge
  %cond = phi ptr [ inttoptr (i32 1 to ptr), %rcu_read_lock.exit.cond.end_crit_edge ], [ null, %cond.true.cond.end_crit_edge ], [ %call.i2, %while.cond.preheader.i.cond.end_crit_edge ], [ %call2.i, %while.cond.i.cond.end_crit_edge ], [ null, %land.rhs.i.cond.end_crit_edge ]
  ret ptr %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @igmp_mc_seq_stop(ptr nocapture noundef readonly %seq, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %in_dev = getelementptr inbounds %struct.igmp_mc_iter_state, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %in_dev to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %in_dev, align 4
  %dev = getelementptr inbounds %struct.igmp_mc_iter_state, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %dev, align 4
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_unlock.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_unlock.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.49, i32 noundef 724, ptr noundef nonnull @.str.51) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i.rcu_read_unlock.exit_crit_edge, %entry.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !251
  %4 = tail call i32 @llvm.read_register.i32(metadata !234) #12
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %7, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @igmp_mc_seq_next(ptr nocapture noundef readonly %seq, ptr noundef %v, ptr nocapture noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call fastcc ptr @igmp_mc_get_first(ptr noundef %seq)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call fastcc ptr @igmp_mc_get_next(ptr noundef %seq, ptr noundef %v)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %im.0 = phi ptr [ %call, %if.then ], [ %call1, %if.else ]
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %inc = add i64 %1, 1
  store i64 %inc, ptr %pos, align 8
  ret ptr %im.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igmp_mc_seq_show(ptr noundef %seq, ptr noundef readonly %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.60) #12
  br label %if.end46

if.else:                                          ; preds = %entry
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %in_dev = getelementptr inbounds %struct.igmp_mc_iter_state, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %in_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %in_dev, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 127
  %6 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nd_net.i, align 4
  %devconf_all = getelementptr inbounds %struct.net, ptr %7, i32 0, i32 35, i32 6
  %8 = ptrtoint ptr %devconf_all to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %devconf_all, align 4
  %arrayidx = getelementptr %struct.ipv4_devconf, ptr %9, i32 0, i32 1, i32 16
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp1 = icmp eq i32 %11, 1
  br i1 %cmp1, label %if.else.cond.end_crit_edge, label %lor.lhs.false

if.else.cond.end_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

lor.lhs.false:                                    ; preds = %if.else
  %arrayidx.i = getelementptr %struct.in_device, ptr %3, i32 0, i32 21, i32 1, i32 16
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp4 = icmp eq i32 %13, 1
  br i1 %cmp4, label %lor.lhs.false.cond.end_crit_edge, label %lor.lhs.false5

lor.lhs.false.cond.end_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %mr_v1_seen = getelementptr inbounds %struct.in_device, ptr %3, i32 0, i32 10
  %14 = ptrtoint ptr %mr_v1_seen to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mr_v1_seen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %lor.lhs.false5.cond.false_crit_edge, label %land.lhs.true

lor.lhs.false5.cond.false_crit_edge:              ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false

land.lhs.true:                                    ; preds = %lor.lhs.false5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %16, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp9 = icmp slt i32 %sub, 0
  br i1 %cmp9, label %land.lhs.true.cond.end_crit_edge, label %land.lhs.true.cond.false_crit_edge

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false

land.lhs.true.cond.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.cond.false_crit_edge, %lor.lhs.false5.cond.false_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp17 = icmp eq i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp21 = icmp eq i32 %13, 2
  %or.cond = select i1 %cmp17, i1 true, i1 %cmp21
  br i1 %or.cond, label %cond.false.cond.end_crit_edge, label %lor.rhs

cond.false.cond.end_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

lor.rhs:                                          ; preds = %cond.false
  %mr_v2_seen = getelementptr inbounds %struct.in_device, ptr %3, i32 0, i32 11
  %17 = ptrtoint ptr %mr_v2_seen to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mr_v2_seen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool23.not = icmp eq i32 %18, 0
  br i1 %tobool23.not, label %lor.rhs.cond.end_crit_edge, label %land.rhs

lor.rhs.cond.end_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

land.rhs:                                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  %sub26 = sub i32 %19, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub26)
  %cmp27 = icmp slt i32 %sub26, 0
  %phi.sel = select i1 %cmp27, ptr @.str.62, ptr @.str.63
  br label %cond.end

cond.end:                                         ; preds = %land.rhs, %lor.rhs.cond.end_crit_edge, %cond.false.cond.end_crit_edge, %land.lhs.true.cond.end_crit_edge, %lor.lhs.false.cond.end_crit_edge, %if.else.cond.end_crit_edge
  %cond28 = phi ptr [ @.str.61, %land.lhs.true.cond.end_crit_edge ], [ @.str.61, %lor.lhs.false.cond.end_crit_edge ], [ @.str.61, %if.else.cond.end_crit_edge ], [ @.str.62, %cond.false.cond.end_crit_edge ], [ @.str.63, %lor.rhs.cond.end_crit_edge ], [ %phi.sel, %land.rhs ]
  %mc_list = getelementptr inbounds %struct.in_device, ptr %3, i32 0, i32 5
  %20 = ptrtoint ptr %mc_list to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %mc_list, align 4
  %cmp31 = icmp eq ptr %21, %v
  br i1 %cmp31, label %if.then32, label %cond.end.if.end_crit_edge

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then32:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev33 = getelementptr inbounds %struct.igmp_mc_iter_state, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev33, align 4
  %ifindex = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 17
  %24 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ifindex, align 4
  %mc_count = getelementptr inbounds %struct.in_device, ptr %3, i32 0, i32 7
  %26 = ptrtoint ptr %mc_count to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mc_count, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.64, i32 noundef %25, ptr noundef %23, i32 noundef %27, ptr noundef nonnull %cond28) #12
  br label %if.end

if.end:                                           ; preds = %if.then32, %cond.end.if.end_crit_edge
  %expires = getelementptr inbounds %struct.ip_mc_list, ptr %v, i32 0, i32 8, i32 1
  %28 = ptrtoint ptr %expires to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %expires, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %30 = load volatile i32, ptr @jiffies, align 128
  %multiaddr = getelementptr inbounds %struct.ip_mc_list, ptr %v, i32 0, i32 1
  %31 = ptrtoint ptr %multiaddr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %multiaddr, align 4
  %users = getelementptr inbounds %struct.ip_mc_list, ptr %v, i32 0, i32 9
  %33 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %users, align 4
  %tm_running = getelementptr inbounds %struct.ip_mc_list, ptr %v, i32 0, i32 12
  %35 = ptrtoint ptr %tm_running to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %tm_running, align 4
  %conv = zext i8 %36 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool39.not = icmp eq i8 %36, 0
  br i1 %tobool39.not, label %if.end.cond.end43_crit_edge, label %cond.true40

if.end.cond.end43_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end43

cond.true40:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %sub36 = sub i32 %29, %30
  %37 = tail call i32 @llvm.smax.i32(i32 %sub36, i32 0) #12
  %call.i = tail call i32 @jiffies_to_clock_t(i32 noundef %37) #12
  br label %cond.end43

cond.end43:                                       ; preds = %cond.true40, %if.end.cond.end43_crit_edge
  %cond44 = phi i32 [ %call.i, %cond.true40 ], [ 0, %if.end.cond.end43_crit_edge ]
  %reporter = getelementptr inbounds %struct.ip_mc_list, ptr %v, i32 0, i32 13
  %38 = ptrtoint ptr %reporter to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %reporter, align 1
  %conv45 = zext i8 %39 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.65, i32 noundef %32, i32 noundef %34, i32 noundef %conv, i32 noundef %cond44, i32 noundef %conv45) #12
  br label %if.end46

if.end46:                                         ; preds = %cond.end43, %if.then
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @igmp_mc_get_first(ptr nocapture noundef readonly %seq) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %private.i = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %in_dev = getelementptr inbounds %struct.igmp_mc_iter_state, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %in_dev to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %in_dev, align 4
  %call1 = tail call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b66 = load i1, ptr @igmp_mc_get_first.__warned, align 1
  br i1 %.b66, label %land.lhs.true4.do.end_crit_edge, label %if.then

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @igmp_mc_get_first.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2762, ptr noundef nonnull @.str.56) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %dev_base_head = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 16
  %dev = getelementptr inbounds %struct.igmp_mc_iter_state, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %dev_base_head to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn73 = load volatile ptr, ptr %dev_base_head, align 4
  %storemerge74 = getelementptr i8, ptr %.pn73, i32 -40
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %storemerge74, ptr %dev, align 4
  %cmp.not75 = icmp eq ptr %.pn73, %dev_base_head
  br i1 %cmp.not75, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn76 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn73, %do.end.for.body_crit_edge ]
  %ip_ptr.i = getelementptr i8, ptr %.pn76, i32 504
  %7 = ptrtoint ptr %ip_ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %ip_ptr.i, align 32
  %call.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %for.body.__in_dev_get_rcu.exit_crit_edge

for.body.__in_dev_get_rcu.exit_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %__in_dev_get_rcu.exit

land.lhs.true.i:                                  ; preds = %for.body
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.__in_dev_get_rcu.exit_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.__in_dev_get_rcu.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__in_dev_get_rcu.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b9.i = load i1, ptr @__in_dev_get_rcu.__warned, align 1
  br i1 %.b9.i, label %land.lhs.true4.i.__in_dev_get_rcu.exit_crit_edge, label %if.then.i

land.lhs.true4.i.__in_dev_get_rcu.exit_crit_edge: ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__in_dev_get_rcu.exit

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__in_dev_get_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 232, ptr noundef nonnull @.str.20) #12
  br label %__in_dev_get_rcu.exit

__in_dev_get_rcu.exit:                            ; preds = %if.then.i, %land.lhs.true4.i.__in_dev_get_rcu.exit_crit_edge, %land.lhs.true.i.__in_dev_get_rcu.exit_crit_edge, %for.body.__in_dev_get_rcu.exit_crit_edge
  %tobool15.not = icmp eq ptr %8, null
  br i1 %tobool15.not, label %__in_dev_get_rcu.exit.for.inc_crit_edge, label %if.end17

__in_dev_get_rcu.exit.for.inc_crit_edge:          ; preds = %__in_dev_get_rcu.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end17:                                         ; preds = %__in_dev_get_rcu.exit
  %mc_list = getelementptr inbounds %struct.in_device, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %mc_list to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %mc_list, align 4
  %call23 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %land.lhs.true25, label %if.end17.do.end33_crit_edge

if.end17.do.end33_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end33

land.lhs.true25:                                  ; preds = %if.end17
  %call26 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %land.lhs.true25.do.end33_crit_edge, label %land.lhs.true28

land.lhs.true25.do.end33_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end33

land.lhs.true28:                                  ; preds = %land.lhs.true25
  %.b6465 = load i1, ptr @igmp_mc_get_first.__warned.57, align 1
  br i1 %.b6465, label %land.lhs.true28.do.end33_crit_edge, label %if.then30

land.lhs.true28.do.end33_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end33

if.then30:                                        ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @igmp_mc_get_first.__warned.57, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2768, ptr noundef nonnull @.str.20) #12
  br label %do.end33

do.end33:                                         ; preds = %if.then30, %land.lhs.true28.do.end33_crit_edge, %land.lhs.true25.do.end33_crit_edge, %if.end17.do.end33_crit_edge
  %tobool35.not = icmp eq ptr %10, null
  br i1 %tobool35.not, label %do.end33.for.inc_crit_edge, label %cleanup

do.end33.for.inc_crit_edge:                       ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

cleanup:                                          ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %in_dev to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %in_dev, align 4
  br label %for.end

for.inc:                                          ; preds = %do.end33.for.inc_crit_edge, %__in_dev_get_rcu.exit.for.inc_crit_edge
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %dev_list45 = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %dev_list45 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn = load volatile ptr, ptr %dev_list45, align 4
  %storemerge = getelementptr i8, ptr %.pn, i32 -40
  store ptr %storemerge, ptr %dev, align 4
  %cmp.not = icmp eq ptr %.pn, %dev_base_head
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cleanup, %do.end.for.end_crit_edge
  %im.2 = phi ptr [ %10, %cleanup ], [ null, %do.end.for.end_crit_edge ], [ null, %for.inc.for.end_crit_edge ]
  ret ptr %im.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @igmp_mc_get_next(ptr nocapture noundef readonly %seq, ptr noundef %im) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = getelementptr inbounds %struct.ip_mc_list, ptr %im, i32 0, i32 6
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %2, align 4
  %call = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b52 = load i1, ptr @igmp_mc_get_next.__warned, align 1
  br i1 %.b52, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @igmp_mc_get_next.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2781, ptr noundef nonnull @.str.20) #12
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %entry.do.end7_crit_edge
  %tobool9.not59 = icmp eq ptr %4, null
  br i1 %tobool9.not59, label %while.body.lr.ph, label %do.end7.while.end_crit_edge

do.end7.while.end_crit_edge:                      ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %do.end7
  %dev = getelementptr inbounds %struct.igmp_mc_iter_state, ptr %1, i32 0, i32 1
  %in_dev18 = getelementptr inbounds %struct.igmp_mc_iter_state, ptr %1, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 127
  %7 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %nd_net.i.i, align 4
  %dev_list.i = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 7
  %9 = ptrtoint ptr %dev_list.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %dev_list.i, align 8
  %call2.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %while.body.next_net_device_rcu.exit_crit_edge

while.body.next_net_device_rcu.exit_crit_edge:    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %next_net_device_rcu.exit

land.lhs.true.i:                                  ; preds = %while.body
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.next_net_device_rcu.exit_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.next_net_device_rcu.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %next_net_device_rcu.exit

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b13.i = load i1, ptr @next_net_device_rcu.__warned, align 1
  br i1 %.b13.i, label %land.lhs.true5.i.next_net_device_rcu.exit_crit_edge, label %if.then.i

land.lhs.true5.i.next_net_device_rcu.exit_crit_edge: ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %next_net_device_rcu.exit

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @next_net_device_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.59, i32 noundef 2835, ptr noundef nonnull @.str.20) #12
  br label %next_net_device_rcu.exit

next_net_device_rcu.exit:                         ; preds = %if.then.i, %land.lhs.true5.i.next_net_device_rcu.exit_crit_edge, %land.lhs.true.i.next_net_device_rcu.exit_crit_edge, %while.body.next_net_device_rcu.exit_crit_edge
  %dev_base_head.i = getelementptr inbounds %struct.net, ptr %8, i32 0, i32 16
  %cmp.i = icmp eq ptr %10, %dev_base_head.i
  %add.ptr.i = getelementptr i8, ptr %10, i32 -40
  %spec.select.i = select i1 %cmp.i, ptr null, ptr %add.ptr.i
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %spec.select.i, ptr %dev, align 4
  %tobool13.not = icmp eq ptr %spec.select.i, null
  br i1 %tobool13.not, label %if.then14, label %if.end15

if.then14:                                        ; preds = %next_net_device_rcu.exit
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %in_dev18 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %in_dev18, align 4
  br label %while.end

if.end15:                                         ; preds = %next_net_device_rcu.exit
  %ip_ptr.i = getelementptr inbounds %struct.net_device, ptr %spec.select.i, i32 0, i32 78
  %13 = ptrtoint ptr %ip_ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %ip_ptr.i, align 32
  %call.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i53 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i53, label %land.lhs.true.i55, label %if.end15.__in_dev_get_rcu.exit_crit_edge

if.end15.__in_dev_get_rcu.exit_crit_edge:         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %__in_dev_get_rcu.exit

land.lhs.true.i55:                                ; preds = %if.end15
  %call2.i54 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i54)
  %tobool3.not.i = icmp eq i32 %call2.i54, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i55.__in_dev_get_rcu.exit_crit_edge, label %land.lhs.true4.i

land.lhs.true.i55.__in_dev_get_rcu.exit_crit_edge: ; preds = %land.lhs.true.i55
  call void @__sanitizer_cov_trace_pc() #14
  br label %__in_dev_get_rcu.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i55
  %.b9.i = load i1, ptr @__in_dev_get_rcu.__warned, align 1
  br i1 %.b9.i, label %land.lhs.true4.i.__in_dev_get_rcu.exit_crit_edge, label %if.then.i56

land.lhs.true4.i.__in_dev_get_rcu.exit_crit_edge: ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__in_dev_get_rcu.exit

if.then.i56:                                      ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__in_dev_get_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 232, ptr noundef nonnull @.str.20) #12
  br label %__in_dev_get_rcu.exit

__in_dev_get_rcu.exit:                            ; preds = %if.then.i56, %land.lhs.true4.i.__in_dev_get_rcu.exit_crit_edge, %land.lhs.true.i55.__in_dev_get_rcu.exit_crit_edge, %if.end15.__in_dev_get_rcu.exit_crit_edge
  %15 = ptrtoint ptr %in_dev18 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %in_dev18, align 4
  %tobool20.not = icmp eq ptr %14, null
  br i1 %tobool20.not, label %__in_dev_get_rcu.exit.while.cond.backedge_crit_edge, label %if.end22

__in_dev_get_rcu.exit.while.cond.backedge_crit_edge: ; preds = %__in_dev_get_rcu.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.backedge

if.end22:                                         ; preds = %__in_dev_get_rcu.exit
  %mc_list = getelementptr inbounds %struct.in_device, ptr %14, i32 0, i32 5
  %16 = ptrtoint ptr %mc_list to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %mc_list, align 4
  %call29 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %land.lhs.true31, label %if.end22.while.cond.backedge_crit_edge

if.end22.while.cond.backedge_crit_edge:           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.backedge

land.lhs.true31:                                  ; preds = %if.end22
  %call32 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %land.lhs.true31.while.cond.backedge_crit_edge, label %land.lhs.true34

land.lhs.true31.while.cond.backedge_crit_edge:    ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.backedge

land.lhs.true34:                                  ; preds = %land.lhs.true31
  %.b5051 = load i1, ptr @igmp_mc_get_next.__warned.58, align 1
  br i1 %.b5051, label %land.lhs.true34.while.cond.backedge_crit_edge, label %if.then36

land.lhs.true34.while.cond.backedge_crit_edge:    ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.backedge

if.then36:                                        ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @igmp_mc_get_next.__warned.58, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2791, ptr noundef nonnull @.str.20) #12
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then36, %land.lhs.true34.while.cond.backedge_crit_edge, %land.lhs.true31.while.cond.backedge_crit_edge, %if.end22.while.cond.backedge_crit_edge, %__in_dev_get_rcu.exit.while.cond.backedge_crit_edge
  %im.addr.0.be = phi ptr [ null, %__in_dev_get_rcu.exit.while.cond.backedge_crit_edge ], [ %17, %if.then36 ], [ %17, %land.lhs.true34.while.cond.backedge_crit_edge ], [ %17, %land.lhs.true31.while.cond.backedge_crit_edge ], [ %17, %if.end22.while.cond.backedge_crit_edge ]
  %tobool9.not = icmp eq ptr %im.addr.0.be, null
  br i1 %tobool9.not, label %while.cond.backedge.while.body_crit_edge, label %while.cond.backedge.while.end_crit_edge

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %if.then14, %do.end7.while.end_crit_edge
  %im.addr.058 = phi ptr [ null, %if.then14 ], [ %4, %do.end7.while.end_crit_edge ], [ %im.addr.0.be, %while.cond.backedge.while.end_crit_edge ]
  ret ptr %im.addr.058
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_clock_t(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @igmp_mcf_seq_start(ptr nocapture noundef readonly %seq, ptr nocapture noundef readonly %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !234) #12
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !248
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.49, i32 noundef 696, ptr noundef nonnull @.str.50) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool.not = icmp eq i64 %5, 0
  br i1 %tobool.not, label %rcu_read_lock.exit.cond.end_crit_edge, label %cond.true

rcu_read_lock.exit.cond.end_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %rcu_read_lock.exit
  %call.i2 = tail call fastcc ptr @igmp_mcf_get_first(ptr noundef %seq) #12
  %tobool.not.i3 = icmp eq ptr %call.i2, null
  br i1 %tobool.not.i3, label %cond.true.cond.end_crit_edge, label %while.cond.preheader.i

cond.true.cond.end_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

while.cond.preheader.i:                           ; preds = %cond.true
  %sub = add i64 %5, -1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub)
  %tobool1.not17.i = icmp eq i64 %sub, 0
  br i1 %tobool1.not17.i, label %while.cond.preheader.i.cond.end_crit_edge, label %while.cond.preheader.i.land.rhs.i_crit_edge

while.cond.preheader.i.land.rhs.i_crit_edge:      ; preds = %while.cond.preheader.i
  br label %land.rhs.i

while.cond.preheader.i.cond.end_crit_edge:        ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

while.cond.i:                                     ; preds = %land.rhs.i
  %dec.i = add i64 %pos.addr.018.i, -1
  %tobool1.not.i = icmp eq i64 %dec.i, 0
  br i1 %tobool1.not.i, label %while.cond.i.cond.end_crit_edge, label %while.cond.i.land.rhs.i_crit_edge

while.cond.i.land.rhs.i_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i

while.cond.i.cond.end_crit_edge:                  ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

land.rhs.i:                                       ; preds = %while.cond.i.land.rhs.i_crit_edge, %while.cond.preheader.i.land.rhs.i_crit_edge
  %psf.019.i = phi ptr [ %call2.i, %while.cond.i.land.rhs.i_crit_edge ], [ %call.i2, %while.cond.preheader.i.land.rhs.i_crit_edge ]
  %pos.addr.018.i = phi i64 [ %dec.i, %while.cond.i.land.rhs.i_crit_edge ], [ %sub, %while.cond.preheader.i.land.rhs.i_crit_edge ]
  %call2.i = tail call fastcc ptr @igmp_mcf_get_next(ptr noundef %seq, ptr noundef nonnull %psf.019.i) #12
  %cmp.not.i = icmp eq ptr %call2.i, null
  br i1 %cmp.not.i, label %land.rhs.i.cond.end_crit_edge, label %while.cond.i

land.rhs.i.cond.end_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.end:                                         ; preds = %land.rhs.i.cond.end_crit_edge, %while.cond.i.cond.end_crit_edge, %while.cond.preheader.i.cond.end_crit_edge, %cond.true.cond.end_crit_edge, %rcu_read_lock.exit.cond.end_crit_edge
  %cond = phi ptr [ inttoptr (i32 1 to ptr), %rcu_read_lock.exit.cond.end_crit_edge ], [ null, %cond.true.cond.end_crit_edge ], [ %call.i2, %while.cond.preheader.i.cond.end_crit_edge ], [ %call2.i, %while.cond.i.cond.end_crit_edge ], [ null, %land.rhs.i.cond.end_crit_edge ]
  ret ptr %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @igmp_mcf_seq_stop(ptr nocapture noundef readonly %seq, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %im = getelementptr inbounds %struct.igmp_mcf_iter_state, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %im to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %im, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !prof !244

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %lock = getelementptr inbounds %struct.ip_mc_list, ptr %3, i32 0, i32 11
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  %4 = ptrtoint ptr %im to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %im, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %idev = getelementptr inbounds %struct.igmp_mcf_iter_state, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %idev to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %idev, align 4
  %dev = getelementptr inbounds %struct.igmp_mcf_iter_state, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %dev, align 4
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %if.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_unlock.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_unlock.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.49, i32 noundef 724, ptr noundef nonnull @.str.51) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i.rcu_read_unlock.exit_crit_edge, %if.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !251
  %7 = tail call i32 @llvm.read_register.i32(metadata !234) #12
  %and.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @igmp_mcf_seq_next(ptr nocapture noundef readonly %seq, ptr noundef readonly %v, ptr nocapture noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call fastcc ptr @igmp_mcf_get_first(ptr noundef %seq)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call fastcc ptr @igmp_mcf_get_next(ptr noundef %seq, ptr noundef %v)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %psf.0 = phi ptr [ %call, %if.then ], [ %call1, %if.else ]
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %inc = add i64 %1, 1
  store i64 %inc, ptr %pos, align 8
  ret ptr %psf.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igmp_mcf_seq_show(ptr noundef %seq, ptr noundef readonly %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.67) #12
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %dev = getelementptr inbounds %struct.igmp_mcf_iter_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %ifindex = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ifindex, align 4
  %im = getelementptr inbounds %struct.igmp_mcf_iter_state, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %im to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %im, align 4
  %multiaddr = getelementptr inbounds %struct.ip_mc_list, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %multiaddr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %multiaddr, align 4
  %sf_inaddr = getelementptr inbounds %struct.ip_sf_list, ptr %v, i32 0, i32 2
  %10 = ptrtoint ptr %sf_inaddr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sf_inaddr, align 4
  %sf_count = getelementptr inbounds %struct.ip_sf_list, ptr %v, i32 0, i32 1
  %arrayidx = getelementptr %struct.ip_sf_list, ptr %v, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %14 = ptrtoint ptr %sf_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sf_count, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.68, i32 noundef %5, ptr noundef %3, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15) #12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @igmp_mcf_get_first(ptr nocapture noundef readonly %seq) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %private.i = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %idev = getelementptr inbounds %struct.igmp_mcf_iter_state, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %idev to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %idev, align 4
  %im1 = getelementptr inbounds %struct.igmp_mcf_iter_state, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %im1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %im1, align 4
  %call2 = tail call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true5

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b95 = load i1, ptr @igmp_mcf_get_first.__warned, align 1
  br i1 %.b95, label %land.lhs.true5.do.end_crit_edge, label %if.then

land.lhs.true5.do.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @igmp_mcf_get_first.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2893, ptr noundef nonnull @.str.56) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true5.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %dev_base_head = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 16
  %dev = getelementptr inbounds %struct.igmp_mcf_iter_state, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %dev_base_head to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn103 = load volatile ptr, ptr %dev_base_head, align 4
  %storemerge104 = getelementptr i8, ptr %.pn103, i32 -40
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %storemerge104, ptr %dev, align 4
  %cmp.not105 = icmp eq ptr %.pn103, %dev_base_head
  br i1 %cmp.not105, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn106 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn103, %do.end.for.body_crit_edge ]
  %ip_ptr.i = getelementptr i8, ptr %.pn106, i32 504
  %8 = ptrtoint ptr %ip_ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %ip_ptr.i, align 32
  %call.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %for.body.__in_dev_get_rcu.exit_crit_edge

for.body.__in_dev_get_rcu.exit_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %__in_dev_get_rcu.exit

land.lhs.true.i:                                  ; preds = %for.body
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.__in_dev_get_rcu.exit_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.__in_dev_get_rcu.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__in_dev_get_rcu.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b9.i = load i1, ptr @__in_dev_get_rcu.__warned, align 1
  br i1 %.b9.i, label %land.lhs.true4.i.__in_dev_get_rcu.exit_crit_edge, label %if.then.i

land.lhs.true4.i.__in_dev_get_rcu.exit_crit_edge: ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__in_dev_get_rcu.exit

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__in_dev_get_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 232, ptr noundef nonnull @.str.20) #12
  br label %__in_dev_get_rcu.exit

__in_dev_get_rcu.exit:                            ; preds = %if.then.i, %land.lhs.true4.i.__in_dev_get_rcu.exit_crit_edge, %land.lhs.true.i.__in_dev_get_rcu.exit_crit_edge, %for.body.__in_dev_get_rcu.exit_crit_edge
  %tobool16.not = icmp eq ptr %9, null
  br i1 %tobool16.not, label %__in_dev_get_rcu.exit.for.inc_crit_edge, label %if.end21, !prof !244

__in_dev_get_rcu.exit.for.inc_crit_edge:          ; preds = %__in_dev_get_rcu.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end21:                                         ; preds = %__in_dev_get_rcu.exit
  %mc_list = getelementptr inbounds %struct.in_device, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %mc_list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %mc_list, align 4
  %call27 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %land.lhs.true29, label %if.end21.do.end37_crit_edge

if.end21.do.end37_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end37

land.lhs.true29:                                  ; preds = %if.end21
  %call30 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %land.lhs.true29.do.end37_crit_edge, label %land.lhs.true32

land.lhs.true29.do.end37_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end37

land.lhs.true32:                                  ; preds = %land.lhs.true29
  %.b9394 = load i1, ptr @igmp_mcf_get_first.__warned.66, align 1
  br i1 %.b9394, label %land.lhs.true32.do.end37_crit_edge, label %if.then34

land.lhs.true32.do.end37_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end37

if.then34:                                        ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @igmp_mcf_get_first.__warned.66, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2898, ptr noundef nonnull @.str.20) #12
  br label %do.end37

do.end37:                                         ; preds = %if.then34, %land.lhs.true32.do.end37_crit_edge, %land.lhs.true29.do.end37_crit_edge, %if.end21.do.end37_crit_edge
  %tobool39.not = icmp eq ptr %11, null
  br i1 %tobool39.not, label %do.end37.for.inc_crit_edge, label %if.then46, !prof !244

do.end37.for.inc_crit_edge:                       ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then46:                                        ; preds = %do.end37
  %lock = getelementptr inbounds %struct.ip_mc_list, ptr %11, i32 0, i32 11
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  %sources = getelementptr inbounds %struct.ip_mc_list, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %sources to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sources, align 4
  %tobool47.not = icmp eq ptr %13, null
  br i1 %tobool47.not, label %if.end57, label %cleanup, !prof !244

if.end57:                                         ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  br label %for.inc

cleanup:                                          ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %im1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %im1, align 4
  %15 = ptrtoint ptr %idev to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %9, ptr %idev, align 4
  br label %for.end

for.inc:                                          ; preds = %if.end57, %do.end37.for.inc_crit_edge, %__in_dev_get_rcu.exit.for.inc_crit_edge
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %dev_list66 = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %dev_list66 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn = load volatile ptr, ptr %dev_list66, align 4
  %storemerge = getelementptr i8, ptr %.pn, i32 -40
  store ptr %storemerge, ptr %dev, align 4
  %cmp.not = icmp eq ptr %.pn, %dev_base_head
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cleanup, %do.end.for.end_crit_edge
  %psf.3 = phi ptr [ %13, %cleanup ], [ null, %do.end.for.end_crit_edge ], [ null, %for.inc.for.end_crit_edge ]
  ret ptr %psf.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @igmp_mcf_get_next(ptr nocapture noundef readonly %seq, ptr nocapture noundef readonly %psf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psf to i32
  call void @__asan_load4_noabort(i32 %0)
  %psf.addr.066 = load ptr, ptr %psf, align 4
  %tobool.not67 = icmp eq ptr %psf.addr.066, null
  br i1 %tobool.not67, label %while.body.lr.ph, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

while.body.lr.ph:                                 ; preds = %entry
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %1 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private, align 8
  %im = getelementptr inbounds %struct.igmp_mcf_iter_state, ptr %2, i32 0, i32 3
  %dev = getelementptr inbounds %struct.igmp_mcf_iter_state, ptr %2, i32 0, i32 1
  %idev13 = getelementptr inbounds %struct.igmp_mcf_iter_state, ptr %2, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %if.end35.while.body_crit_edge, %while.body.lr.ph
  %3 = ptrtoint ptr %im to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %im, align 4
  %lock = getelementptr inbounds %struct.ip_mc_list, ptr %4, i32 0, i32 11
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  %5 = ptrtoint ptr %im to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %im, align 4
  %7 = getelementptr inbounds %struct.ip_mc_list, ptr %6, i32 0, i32 6
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  store ptr %9, ptr %im, align 4
  %tobool5.not65 = icmp eq ptr %9, null
  br i1 %tobool5.not65, label %while.body.while.body7_crit_edge, label %while.body.if.end35_crit_edge

while.body.if.end35_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

while.body.while.body7_crit_edge:                 ; preds = %while.body
  br label %while.body7

while.cond3thread-pre-split:                      ; preds = %__in_dev_get_rcu.exit
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %im to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load ptr, ptr %im, align 4
  br label %while.cond3.backedge

while.body7:                                      ; preds = %while.cond3.backedge.while.body7_crit_edge, %while.body.while.body7_crit_edge
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 127
  %13 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %nd_net.i.i, align 4
  %dev_list.i = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 7
  %15 = ptrtoint ptr %dev_list.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %dev_list.i, align 8
  %call2.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %while.body7.next_net_device_rcu.exit_crit_edge

while.body7.next_net_device_rcu.exit_crit_edge:   ; preds = %while.body7
  call void @__sanitizer_cov_trace_pc() #14
  br label %next_net_device_rcu.exit

land.lhs.true.i:                                  ; preds = %while.body7
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.next_net_device_rcu.exit_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.next_net_device_rcu.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %next_net_device_rcu.exit

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b13.i = load i1, ptr @next_net_device_rcu.__warned, align 1
  br i1 %.b13.i, label %land.lhs.true5.i.next_net_device_rcu.exit_crit_edge, label %if.then.i

land.lhs.true5.i.next_net_device_rcu.exit_crit_edge: ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %next_net_device_rcu.exit

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @next_net_device_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.59, i32 noundef 2835, ptr noundef nonnull @.str.20) #12
  br label %next_net_device_rcu.exit

next_net_device_rcu.exit:                         ; preds = %if.then.i, %land.lhs.true5.i.next_net_device_rcu.exit_crit_edge, %land.lhs.true.i.next_net_device_rcu.exit_crit_edge, %while.body7.next_net_device_rcu.exit_crit_edge
  %dev_base_head.i = getelementptr inbounds %struct.net, ptr %14, i32 0, i32 16
  %cmp.i = icmp eq ptr %16, %dev_base_head.i
  %add.ptr.i = getelementptr i8, ptr %16, i32 -40
  %spec.select.i = select i1 %cmp.i, ptr null, ptr %add.ptr.i
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %spec.select.i, ptr %dev, align 4
  %tobool10.not = icmp eq ptr %spec.select.i, null
  br i1 %tobool10.not, label %if.then, label %if.end

if.then:                                          ; preds = %next_net_device_rcu.exit
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %idev13 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %idev13, align 4
  br label %out

if.end:                                           ; preds = %next_net_device_rcu.exit
  %ip_ptr.i = getelementptr inbounds %struct.net_device, ptr %spec.select.i, i32 0, i32 78
  %19 = ptrtoint ptr %ip_ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %ip_ptr.i, align 32
  %call.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i58 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i58, label %land.lhs.true.i60, label %if.end.__in_dev_get_rcu.exit_crit_edge

if.end.__in_dev_get_rcu.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %__in_dev_get_rcu.exit

land.lhs.true.i60:                                ; preds = %if.end
  %call2.i59 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i59)
  %tobool3.not.i = icmp eq i32 %call2.i59, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i60.__in_dev_get_rcu.exit_crit_edge, label %land.lhs.true4.i

land.lhs.true.i60.__in_dev_get_rcu.exit_crit_edge: ; preds = %land.lhs.true.i60
  call void @__sanitizer_cov_trace_pc() #14
  br label %__in_dev_get_rcu.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i60
  %.b9.i = load i1, ptr @__in_dev_get_rcu.__warned, align 1
  br i1 %.b9.i, label %land.lhs.true4.i.__in_dev_get_rcu.exit_crit_edge, label %if.then.i61

land.lhs.true4.i.__in_dev_get_rcu.exit_crit_edge: ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__in_dev_get_rcu.exit

if.then.i61:                                      ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__in_dev_get_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 232, ptr noundef nonnull @.str.20) #12
  br label %__in_dev_get_rcu.exit

__in_dev_get_rcu.exit:                            ; preds = %if.then.i61, %land.lhs.true4.i.__in_dev_get_rcu.exit_crit_edge, %land.lhs.true.i60.__in_dev_get_rcu.exit_crit_edge, %if.end.__in_dev_get_rcu.exit_crit_edge
  %21 = ptrtoint ptr %idev13 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %idev13, align 4
  %tobool15.not = icmp eq ptr %20, null
  br i1 %tobool15.not, label %while.cond3thread-pre-split, label %if.end17

if.end17:                                         ; preds = %__in_dev_get_rcu.exit
  %mc_list = getelementptr inbounds %struct.in_device, ptr %20, i32 0, i32 5
  %22 = ptrtoint ptr %mc_list to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %mc_list, align 4
  %call20 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %land.lhs.true, label %if.end17.do.end29_crit_edge

if.end17.do.end29_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end29

land.lhs.true:                                    ; preds = %if.end17
  %call22 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %land.lhs.true.do.end29_crit_edge, label %land.lhs.true24

land.lhs.true.do.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end29

land.lhs.true24:                                  ; preds = %land.lhs.true
  %.b57 = load i1, ptr @igmp_mcf_get_next.__warned, align 1
  br i1 %.b57, label %land.lhs.true24.do.end29_crit_edge, label %if.then26

land.lhs.true24.do.end29_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end29

if.then26:                                        ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @igmp_mcf_get_next.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2930, ptr noundef nonnull @.str.20) #12
  br label %do.end29

do.end29:                                         ; preds = %if.then26, %land.lhs.true24.do.end29_crit_edge, %land.lhs.true.do.end29_crit_edge, %if.end17.do.end29_crit_edge
  %24 = ptrtoint ptr %im to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %im, align 4
  br label %while.cond3.backedge

while.cond3.backedge:                             ; preds = %do.end29, %while.cond3thread-pre-split
  %.be = phi ptr [ %.pr, %while.cond3thread-pre-split ], [ %23, %do.end29 ]
  %tobool5.not = icmp eq ptr %.be, null
  br i1 %tobool5.not, label %while.cond3.backedge.while.body7_crit_edge, label %while.cond3.backedge.if.end35_crit_edge

while.cond3.backedge.if.end35_crit_edge:          ; preds = %while.cond3.backedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

while.cond3.backedge.while.body7_crit_edge:       ; preds = %while.cond3.backedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body7

if.end35:                                         ; preds = %while.cond3.backedge.if.end35_crit_edge, %while.body.if.end35_crit_edge
  %.lcssa = phi ptr [ %9, %while.body.if.end35_crit_edge ], [ %.be, %while.cond3.backedge.if.end35_crit_edge ]
  %lock37 = getelementptr inbounds %struct.ip_mc_list, ptr %.lcssa, i32 0, i32 11
  tail call void @_raw_spin_lock_bh(ptr noundef %lock37) #12
  %25 = ptrtoint ptr %im to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %im, align 4
  %sources = getelementptr inbounds %struct.ip_mc_list, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %sources to i32
  call void @__asan_load4_noabort(i32 %27)
  %psf.addr.0 = load ptr, ptr %sources, align 4
  %tobool.not = icmp eq ptr %psf.addr.0, null
  br i1 %tobool.not, label %if.end35.while.body_crit_edge, label %if.end35.out_crit_edge

if.end35.out_crit_edge:                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end35.while.body_crit_edge:                    ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

out:                                              ; preds = %if.end35.out_crit_edge, %if.then, %entry.out_crit_edge
  %psf.addr.064 = phi ptr [ null, %if.then ], [ %psf.addr.066, %entry.out_crit_edge ], [ %psf.addr.0, %if.end35.out_crit_edge ]
  ret ptr %psf.addr.064
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igmp_netdev_event(ptr nocapture noundef readnone %this, i32 noundef %event, ptr nocapture noundef readonly %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %event)
  %cond = icmp eq i32 %event, 22
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call.i, label %sw.bb.__in_dev_get_rtnl.exit_crit_edge, label %land.lhs.true.i

sw.bb.__in_dev_get_rtnl.exit_crit_edge:           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %__in_dev_get_rtnl.exit

land.lhs.true.i:                                  ; preds = %sw.bb
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.__in_dev_get_rtnl.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.__in_dev_get_rtnl.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__in_dev_get_rtnl.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @__in_dev_get_rtnl.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.__in_dev_get_rtnl.exit_crit_edge, label %if.then.i

land.lhs.true2.i.__in_dev_get_rtnl.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__in_dev_get_rtnl.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__in_dev_get_rtnl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 249, ptr noundef nonnull @.str.2) #12
  br label %__in_dev_get_rtnl.exit

__in_dev_get_rtnl.exit:                           ; preds = %if.then.i, %land.lhs.true2.i.__in_dev_get_rtnl.exit_crit_edge, %land.lhs.true.i.__in_dev_get_rtnl.exit_crit_edge, %sw.bb.__in_dev_get_rtnl.exit_crit_edge
  %ip_ptr.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 78
  %2 = ptrtoint ptr %ip_ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ip_ptr.i, align 32
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %__in_dev_get_rtnl.exit.sw.epilog_crit_edge, label %if.then

__in_dev_get_rtnl.exit.sw.epilog_crit_edge:       ; preds = %__in_dev_get_rtnl.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then:                                          ; preds = %__in_dev_get_rtnl.exit
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 127
  %6 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nd_net.i.i, align 4
  %call1.i3 = tail call i32 @rtnl_is_locked() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3)
  %tobool.not.i4 = icmp eq i32 %call1.i3, 0
  br i1 %tobool.not.i4, label %land.rhs.i, label %if.then.if.end30.i_crit_edge

if.then.if.end30.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30.i

land.rhs.i:                                       ; preds = %if.then
  %.b123.i = load i1, ptr @ip_mc_rejoin_groups.__already_done, align 1
  br i1 %.b123.i, label %land.rhs.i.if.end30.i_crit_edge, label %if.then.i5, !prof !250

land.rhs.i.if.end30.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30.i

if.then.i5:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ip_mc_rejoin_groups.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1639, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 1639) #12
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then.i5, %land.rhs.i.if.end30.i_crit_edge, %if.then.if.end30.i_crit_edge
  %call39.i = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call39.i, label %if.end30.i.do.end47.i_crit_edge, label %land.lhs.true.i6

if.end30.i.do.end47.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end47.i

land.lhs.true.i6:                                 ; preds = %if.end30.i
  %call40.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %tobool41.not.i = icmp eq i32 %call40.i, 0
  br i1 %tobool41.not.i, label %land.lhs.true.i6.do.end47.i_crit_edge, label %land.lhs.true42.i

land.lhs.true.i6.do.end47.i_crit_edge:            ; preds = %land.lhs.true.i6
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end47.i

land.lhs.true42.i:                                ; preds = %land.lhs.true.i6
  %.b119122.i = load i1, ptr @ip_mc_rejoin_groups.__warned, align 1
  br i1 %.b119122.i, label %land.lhs.true42.i.do.end47.i_crit_edge, label %if.then44.i

land.lhs.true42.i.do.end47.i_crit_edge:           ; preds = %land.lhs.true42.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end47.i

if.then44.i:                                      ; preds = %land.lhs.true42.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ip_mc_rejoin_groups.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1641, ptr noundef nonnull @.str.2) #12
  br label %do.end47.i

do.end47.i:                                       ; preds = %if.then44.i, %land.lhs.true42.i.do.end47.i_crit_edge, %land.lhs.true.i6.do.end47.i_crit_edge, %if.end30.i.do.end47.i_crit_edge
  %mc_list.i = getelementptr inbounds %struct.in_device, ptr %3, i32 0, i32 5
  %8 = ptrtoint ptr %mc_list.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %im.0127.i = load ptr, ptr %mc_list.i, align 4
  %cmp.not128.i = icmp eq ptr %im.0127.i, null
  br i1 %cmp.not128.i, label %do.end47.i.sw.epilog_crit_edge, label %for.body.lr.ph.i

do.end47.i.sw.epilog_crit_edge:                   ; preds = %do.end47.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

for.body.lr.ph.i:                                 ; preds = %do.end47.i
  %sysctl_igmp_llm_reports.i = getelementptr inbounds %struct.net, ptr %7, i32 0, i32 35, i32 119
  %arrayidx.i.i = getelementptr %struct.in_device, ptr %3, i32 0, i32 21, i32 1, i32 16
  %mr_v1_seen.i = getelementptr inbounds %struct.in_device, ptr %3, i32 0, i32 10
  %mr_v2_seen.i = getelementptr inbounds %struct.in_device, ptr %3, i32 0, i32 11
  br label %for.body.i

for.body.i:                                       ; preds = %do.end101.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %im.0129.i = phi ptr [ %im.0127.i, %for.body.lr.ph.i ], [ %im.0.i, %do.end101.i.for.body.i_crit_edge ]
  %multiaddr.i = getelementptr inbounds %struct.ip_mc_list, ptr %im.0129.i, i32 0, i32 1
  %9 = ptrtoint ptr %multiaddr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %multiaddr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870911, i32 %10)
  %cmp49.i = icmp eq i32 %10, -536870911
  br i1 %cmp49.i, label %for.body.i.do.body91.i_crit_edge, label %if.end51.i

for.body.i.do.body91.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body91.i

if.end51.i:                                       ; preds = %for.body.i
  %and.i.i = and i32 %10, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, -536870912
  br i1 %cmp.i.i, label %land.lhs.true54.i, label %if.end51.i.if.end57.i_crit_edge

if.end51.i.if.end57.i_crit_edge:                  ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57.i

land.lhs.true54.i:                                ; preds = %if.end51.i
  %11 = ptrtoint ptr %sysctl_igmp_llm_reports.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %sysctl_igmp_llm_reports.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool55.not.i = icmp eq i8 %12, 0
  br i1 %tobool55.not.i, label %land.lhs.true54.i.do.body91.i_crit_edge, label %land.lhs.true54.i.if.end57.i_crit_edge

land.lhs.true54.i.if.end57.i_crit_edge:           ; preds = %land.lhs.true54.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57.i

land.lhs.true54.i.do.body91.i_crit_edge:          ; preds = %land.lhs.true54.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body91.i

if.end57.i:                                       ; preds = %land.lhs.true54.i.if.end57.i_crit_edge, %if.end51.i.if.end57.i_crit_edge
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 4
  %nd_net.i124.i = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 127
  %15 = ptrtoint ptr %nd_net.i124.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %nd_net.i124.i, align 4
  %devconf_all.i = getelementptr inbounds %struct.net, ptr %16, i32 0, i32 35, i32 6
  %17 = ptrtoint ptr %devconf_all.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %devconf_all.i, align 4
  %arrayidx.i = getelementptr %struct.ipv4_devconf, ptr %18, i32 0, i32 1, i32 16
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp61.i = icmp eq i32 %20, 1
  br i1 %cmp61.i, label %if.end57.i.if.end89.i_crit_edge, label %lor.lhs.false.i

if.end57.i.if.end89.i_crit_edge:                  ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end89.i

lor.lhs.false.i:                                  ; preds = %if.end57.i
  %21 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp63.i = icmp eq i32 %22, 1
  br i1 %cmp63.i, label %lor.lhs.false.i.if.end89.i_crit_edge, label %lor.lhs.false64.i

lor.lhs.false.i.if.end89.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end89.i

lor.lhs.false64.i:                                ; preds = %lor.lhs.false.i
  %23 = ptrtoint ptr %mr_v1_seen.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mr_v1_seen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool65.not.i = icmp eq i32 %24, 0
  br i1 %tobool65.not.i, label %lor.lhs.false64.i.if.else.i_crit_edge, label %land.lhs.true66.i

lor.lhs.false64.i.if.else.i_crit_edge:            ; preds = %lor.lhs.false64.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

land.lhs.true66.i:                                ; preds = %lor.lhs.false64.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %25 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %25, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp68.i = icmp slt i32 %sub.i, 0
  br i1 %cmp68.i, label %land.lhs.true66.i.if.end89.i_crit_edge, label %land.lhs.true66.i.if.else.i_crit_edge

land.lhs.true66.i.if.else.i_crit_edge:            ; preds = %land.lhs.true66.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

land.lhs.true66.i.if.end89.i_crit_edge:           ; preds = %land.lhs.true66.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end89.i

if.else.i:                                        ; preds = %land.lhs.true66.i.if.else.i_crit_edge, %lor.lhs.false64.i.if.else.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp76.i = icmp eq i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp79.i = icmp eq i32 %22, 2
  %or.cond.i = select i1 %cmp76.i, i1 true, i1 %cmp79.i
  br i1 %or.cond.i, label %if.else.i.if.end89.i_crit_edge, label %lor.lhs.false80.i

if.else.i.if.end89.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end89.i

lor.lhs.false80.i:                                ; preds = %if.else.i
  %26 = ptrtoint ptr %mr_v2_seen.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mr_v2_seen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool81.not.i = icmp eq i32 %27, 0
  br i1 %tobool81.not.i, label %lor.lhs.false80.i.if.else87.i_crit_edge, label %land.lhs.true82.i

lor.lhs.false80.i.if.else87.i_crit_edge:          ; preds = %lor.lhs.false80.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else87.i

land.lhs.true82.i:                                ; preds = %lor.lhs.false80.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %28 = load volatile i32, ptr @jiffies, align 128
  %sub84.i = sub i32 %28, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub84.i)
  %cmp85.i = icmp slt i32 %sub84.i, 0
  br i1 %cmp85.i, label %land.lhs.true82.i.if.end89.i_crit_edge, label %land.lhs.true82.i.if.else87.i_crit_edge

land.lhs.true82.i.if.else87.i_crit_edge:          ; preds = %land.lhs.true82.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else87.i

land.lhs.true82.i.if.end89.i_crit_edge:           ; preds = %land.lhs.true82.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end89.i

if.else87.i:                                      ; preds = %land.lhs.true82.i.if.else87.i_crit_edge, %lor.lhs.false80.i.if.else87.i_crit_edge
  br label %if.end89.i

if.end89.i:                                       ; preds = %if.else87.i, %land.lhs.true82.i.if.end89.i_crit_edge, %if.else.i.if.end89.i_crit_edge, %land.lhs.true66.i.if.end89.i_crit_edge, %lor.lhs.false.i.if.end89.i_crit_edge, %if.end57.i.if.end89.i_crit_edge
  %type.0.i = phi i32 [ 34, %if.else87.i ], [ 18, %land.lhs.true66.i.if.end89.i_crit_edge ], [ 18, %lor.lhs.false.i.if.end89.i_crit_edge ], [ 18, %if.end57.i.if.end89.i_crit_edge ], [ 22, %land.lhs.true82.i.if.end89.i_crit_edge ], [ 22, %if.else.i.if.end89.i_crit_edge ]
  tail call fastcc void @igmp_send_report(ptr noundef nonnull %3, ptr noundef nonnull %im.0129.i, i32 noundef %type.0.i) #12
  br label %do.body91.i

do.body91.i:                                      ; preds = %if.end89.i, %land.lhs.true54.i.do.body91.i_crit_edge, %for.body.i.do.body91.i_crit_edge
  %call92.i = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call92.i, label %do.body91.i.do.end101.i_crit_edge, label %land.lhs.true93.i

do.body91.i.do.end101.i_crit_edge:                ; preds = %do.body91.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end101.i

land.lhs.true93.i:                                ; preds = %do.body91.i
  %call94.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94.i)
  %tobool95.not.i = icmp eq i32 %call94.i, 0
  br i1 %tobool95.not.i, label %land.lhs.true93.i.do.end101.i_crit_edge, label %land.lhs.true96.i

land.lhs.true93.i.do.end101.i_crit_edge:          ; preds = %land.lhs.true93.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end101.i

land.lhs.true96.i:                                ; preds = %land.lhs.true93.i
  %.b120121.i = load i1, ptr @ip_mc_rejoin_groups.__warned.69, align 1
  br i1 %.b120121.i, label %land.lhs.true96.i.do.end101.i_crit_edge, label %if.then98.i

land.lhs.true96.i.do.end101.i_crit_edge:          ; preds = %land.lhs.true96.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end101.i

if.then98.i:                                      ; preds = %land.lhs.true96.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ip_mc_rejoin_groups.__warned.69, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1641, ptr noundef nonnull @.str.2) #12
  br label %do.end101.i

do.end101.i:                                      ; preds = %if.then98.i, %land.lhs.true96.i.do.end101.i_crit_edge, %land.lhs.true93.i.do.end101.i_crit_edge, %do.body91.i.do.end101.i_crit_edge
  %29 = getelementptr inbounds %struct.ip_mc_list, ptr %im.0129.i, i32 0, i32 6
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %im.0.i = load ptr, ptr %29, align 4
  %cmp.not.i = icmp eq ptr %im.0.i, null
  br i1 %cmp.not.i, label %do.end101.i.sw.epilog_crit_edge, label %do.end101.i.for.body.i_crit_edge

do.end101.i.for.body.i_crit_edge:                 ; preds = %do.end101.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

do.end101.i.sw.epilog_crit_edge:                  ; preds = %do.end101.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end101.i.sw.epilog_crit_edge, %do.end47.i.sw.epilog_crit_edge, %__in_dev_get_rtnl.exit.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind readonly }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind readnone }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nobuiltin }
attributes #18 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !12, !13, !15, !17, !19, !20, !22, !24, !25, !27, !29, !30, !32, !34, !35, !37, !38, !40, !41, !43, !45, !46, !48, !50, !52, !54, !56, !58, !60, !62, !63, !65, !67, !69, !70, !72, !74, !76, !77, !79, !81, !83, !84, !86, !88, !89, !90, !92, !94, !96, !98, !100, !102, !103, !105, !106, !108, !109, !111, !113, !114, !116, !118, !119, !121, !122, !124, !125, !127, !128, !130, !131, !133, !135, !136, !138, !140, !142, !143, !145, !146, !148, !149, !151, !153, !154, !156, !158, !160, !161, !163, !164, !166, !167, !169, !171, !173, !174, !175, !177, !178, !180, !182, !184, !186, !187, !188, !189, !191, !193, !194, !196, !198, !200, !202, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233}
!llvm.named.register.sp = !{!234}
!llvm.module.flags = !{!235, !236, !237, !238, !239, !240, !241, !242}
!llvm.ident = !{!243}

!0 = !{ptr @__ksymtab___ip_mc_inc_group, !1, !"__ksymtab___ip_mc_inc_group", i1 false, i1 false}
!1 = !{!"../net/ipv4/igmp.c", i32 1479, i32 1}
!2 = !{ptr @__ksymtab_ip_mc_inc_group, !3, !"__ksymtab_ip_mc_inc_group", i1 false, i1 false}
!3 = !{!"../net/ipv4/igmp.c", i32 1485, i32 1}
!4 = !{ptr @__ksymtab_ip_mc_check_igmp, !5, !"__ksymtab_ip_mc_check_igmp", i1 false, i1 false}
!5 = !{!"../net/ipv4/igmp.c", i32 1627, i32 1}
!6 = distinct !{null, !7, !"__already_done", i1 false, i1 false}
!7 = !{!"../net/ipv4/igmp.c", i32 1671, i32 2}
!8 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../net/ipv4/igmp.c", i32 1674, i32 12}
!12 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @__ksymtab___ip_mc_dec_group, !14, !"__ksymtab___ip_mc_dec_group", i1 false, i1 false}
!14 = !{!"../net/ipv4/igmp.c", i32 1694, i32 1}
!15 = distinct !{null, !16, !"__already_done", i1 false, i1 false}
!16 = !{!"../net/ipv4/igmp.c", i32 1702, i32 2}
!17 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!18 = !{!"../net/ipv4/igmp.c", i32 1704, i32 2}
!19 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!20 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!21 = !{!"../net/ipv4/igmp.c", i32 1712, i32 2}
!22 = distinct !{null, !23, !"__warned", i1 false, i1 false}
!23 = !{!"../net/ipv4/igmp.c", i32 1714, i32 2}
!24 = distinct !{null, !23, !"__warned", i1 false, i1 false}
!25 = distinct !{null, !26, !"__already_done", i1 false, i1 false}
!26 = !{!"../net/ipv4/igmp.c", i32 1728, i32 2}
!27 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!28 = !{!"../net/ipv4/igmp.c", i32 1730, i32 2}
!29 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!30 = distinct !{null, !31, !"__already_done", i1 false, i1 false}
!31 = !{!"../net/ipv4/igmp.c", i32 1762, i32 2}
!32 = !{ptr @ip_mc_init_dev.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../net/ipv4/igmp.c", i32 1765, i32 2}
!34 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @ip_mc_init_dev.__key.7, !36, !"__key", i1 false, i1 false}
!36 = !{!"../net/ipv4/igmp.c", i32 1766, i32 2}
!37 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @ip_mc_init_dev.__key.9, !39, !"__key", i1 false, i1 false}
!39 = !{!"../net/ipv4/igmp.c", i32 1770, i32 2}
!40 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!41 = distinct !{null, !42, !"__already_done", i1 false, i1 false}
!42 = !{!"../net/ipv4/igmp.c", i32 1779, i32 2}
!43 = distinct !{null, !44, !"__warned", i1 false, i1 false}
!44 = !{!"../net/ipv4/igmp.c", i32 1784, i32 2}
!45 = distinct !{null, !44, !"__warned", i1 false, i1 false}
!46 = distinct !{null, !47, !"__already_done", i1 false, i1 false}
!47 = !{!"../net/ipv4/igmp.c", i32 1800, i32 2}
!48 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!49 = !{!"../net/ipv4/igmp.c", i32 1808, i32 14}
!50 = !{ptr @__ksymtab_ip_mc_join_group, !51, !"__ksymtab_ip_mc_join_group", i1 false, i1 false}
!51 = !{!"../net/ipv4/igmp.c", i32 2218, i32 1}
!52 = distinct !{null, !53, !"__already_done", i1 false, i1 false}
!53 = !{!"../net/ipv4/igmp.c", i32 2259, i32 2}
!54 = distinct !{null, !55, !"__warned", i1 false, i1 false}
!55 = !{!"../net/ipv4/igmp.c", i32 2268, i32 14}
!56 = !{ptr @__ksymtab_ip_mc_leave_group, !57, !"__ksymtab_ip_mc_leave_group", i1 false, i1 false}
!57 = !{!"../net/ipv4/igmp.c", i32 2294, i32 1}
!58 = distinct !{null, !59, !"__already_done", i1 false, i1 false}
!59 = !{!"../net/ipv4/igmp.c", i32 2313, i32 2}
!60 = distinct !{null, !61, !"__warned", i1 false, i1 false}
!61 = !{!"../net/ipv4/igmp.c", i32 2326, i32 2}
!62 = distinct !{null, !61, !"__warned", i1 false, i1 false}
!63 = distinct !{null, !64, !"__warned", i1 false, i1 false}
!64 = !{!"../net/ipv4/igmp.c", i32 2350, i32 8}
!65 = distinct !{null, !66, !"__already_done", i1 false, i1 false}
!66 = !{!"../net/ipv4/igmp.c", i32 2452, i32 2}
!67 = distinct !{null, !68, !"__warned", i1 false, i1 false}
!68 = !{!"../net/ipv4/igmp.c", i32 2470, i32 2}
!69 = distinct !{null, !68, !"__warned", i1 false, i1 false}
!70 = distinct !{null, !71, !"__warned", i1 false, i1 false}
!71 = !{!"../net/ipv4/igmp.c", i32 2503, i32 8}
!72 = distinct !{null, !73, !"__already_done", i1 false, i1 false}
!73 = !{!"../net/ipv4/igmp.c", i32 2535, i32 2}
!74 = distinct !{null, !75, !"__warned", i1 false, i1 false}
!75 = !{!"../net/ipv4/igmp.c", i32 2551, i32 2}
!76 = distinct !{null, !75, !"__warned", i1 false, i1 false}
!77 = distinct !{null, !78, !"__warned", i1 false, i1 false}
!78 = !{!"../net/ipv4/igmp.c", i32 2559, i32 8}
!79 = distinct !{null, !80, !"__already_done", i1 false, i1 false}
!80 = !{!"../net/ipv4/igmp.c", i32 2590, i32 2}
!81 = distinct !{null, !82, !"__warned", i1 false, i1 false}
!82 = !{!"../net/ipv4/igmp.c", i32 2599, i32 2}
!83 = distinct !{null, !82, !"__warned", i1 false, i1 false}
!84 = distinct !{null, !85, !"__warned", i1 false, i1 false}
!85 = !{!"../net/ipv4/igmp.c", i32 2607, i32 8}
!86 = distinct !{null, !87, !"__warned", i1 false, i1 false}
!87 = !{!"../net/ipv4/igmp.c", i32 2641, i32 2}
!88 = !{ptr @.str.20, !87, !"<string literal>", i1 false, i1 false}
!89 = distinct !{null, !87, !"__warned", i1 false, i1 false}
!90 = distinct !{null, !91, !"__warned", i1 false, i1 false}
!91 = !{!"../net/ipv4/igmp.c", i32 2650, i32 8}
!92 = distinct !{null, !93, !"__warned", i1 false, i1 false}
!93 = !{!"../net/ipv4/igmp.c", i32 2685, i32 16}
!94 = distinct !{null, !95, !"__warned", i1 false, i1 false}
!95 = !{!"../net/ipv4/igmp.c", i32 2708, i32 12}
!96 = distinct !{null, !97, !"__warned", i1 false, i1 false}
!97 = !{!"../net/ipv4/igmp.c", i32 2712, i32 13}
!98 = distinct !{null, !99, !"__warned", i1 false, i1 false}
!99 = !{!"../net/ipv4/igmp.c", i32 2714, i32 13}
!100 = distinct !{null, !101, !"__warned", i1 false, i1 false}
!101 = !{!"../net/ipv4/igmp.c", i32 2719, i32 3}
!102 = distinct !{null, !101, !"__warned", i1 false, i1 false}
!103 = distinct !{null, !104, !"__warned", i1 false, i1 false}
!104 = !{!"../include/linux/inetdevice.h", i32 232, i32 9}
!105 = !{ptr @.str.27, !104, !"<string literal>", i1 false, i1 false}
!106 = distinct !{null, !107, !"__warned", i1 false, i1 false}
!107 = !{!"../net/ipv4/igmp.c", i32 1040, i32 2}
!108 = distinct !{null, !107, !"__warned", i1 false, i1 false}
!109 = !{ptr @.str.29, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!111 = distinct !{null, !112, !"__warned", i1 false, i1 false}
!112 = !{!"../net/ipv4/igmp.c", i32 927, i32 2}
!113 = distinct !{null, !112, !"__warned", i1 false, i1 false}
!114 = distinct !{null, !115, !"__already_done", i1 false, i1 false}
!115 = !{!"../net/ipv4/igmp.c", i32 1432, i32 2}
!116 = distinct !{null, !117, !"__warned", i1 false, i1 false}
!117 = !{!"../net/ipv4/igmp.c", i32 1434, i32 2}
!118 = distinct !{null, !117, !"__warned", i1 false, i1 false}
!119 = !{ptr @____ip_mc_inc_group.__key, !120, !"__key", i1 false, i1 false}
!120 = !{!"../net/ipv4/igmp.c", i32 1454, i32 2}
!121 = !{ptr @.str.32, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @____ip_mc_inc_group.__key.33, !123, !"__key", i1 false, i1 false}
!123 = !{!"../net/ipv4/igmp.c", i32 1456, i32 2}
!124 = !{ptr @.str.34, !123, !"<string literal>", i1 false, i1 false}
!125 = distinct !{null, !126, !"__warned", i1 false, i1 false}
!126 = !{!"../net/ipv4/igmp.c", i32 592, i32 3}
!127 = distinct !{null, !126, !"__warned", i1 false, i1 false}
!128 = distinct !{null, !129, !"__warned", i1 false, i1 false}
!129 = !{!"../net/ipv4/igmp.c", i32 338, i32 2}
!130 = distinct !{null, !129, !"__warned", i1 false, i1 false}
!131 = distinct !{null, !132, !"__warned", i1 false, i1 false}
!132 = !{!"../net/ipv4/igmp.c", i32 1383, i32 12}
!133 = distinct !{null, !134, !"__warned", i1 false, i1 false}
!134 = !{!"../net/ipv4/igmp.c", i32 1400, i32 2}
!135 = distinct !{null, !134, !"__warned", i1 false, i1 false}
!136 = distinct !{null, !137, !"__warned", i1 false, i1 false}
!137 = !{!"../net/ipv4/igmp.c", i32 1412, i32 38}
!138 = distinct !{null, !139, !"__warned", i1 false, i1 false}
!139 = !{!"../net/ipv4/igmp.c", i32 1418, i32 16}
!140 = !{ptr @igmpv3_add_delrec.__key, !141, !"__key", i1 false, i1 false}
!141 = !{!"../net/ipv4/igmp.c", i32 1184, i32 2}
!142 = !{ptr @.str.40, !141, !"<string literal>", i1 false, i1 false}
!143 = distinct !{null, !144, !"__warned", i1 false, i1 false}
!144 = !{!"../net/ipv4/igmp.c", i32 692, i32 2}
!145 = distinct !{null, !144, !"__warned", i1 false, i1 false}
!146 = distinct !{null, !147, !"__warned", i1 false, i1 false}
!147 = !{!"../net/ipv4/igmp.c", i32 1270, i32 2}
!148 = distinct !{null, !147, !"__warned", i1 false, i1 false}
!149 = distinct !{null, !150, !"__already_done", i1 false, i1 false}
!150 = !{!"../net/ipv4/igmp.c", i32 2174, i32 2}
!151 = distinct !{null, !152, !"__warned", i1 false, i1 false}
!152 = !{!"../net/ipv4/igmp.c", i32 2188, i32 2}
!153 = distinct !{null, !152, !"__warned", i1 false, i1 false}
!154 = distinct !{null, !155, !"__warned", i1 false, i1 false}
!155 = !{!"../include/linux/inetdevice.h", i32 249, i32 9}
!156 = distinct !{null, !157, !"__warned", i1 false, i1 false}
!157 = !{!"../net/ipv4/igmp.c", i32 2231, i32 31}
!158 = distinct !{null, !159, !"__warned", i1 false, i1 false}
!159 = !{!"../net/ipv4/igmp.c", i32 2083, i32 2}
!160 = distinct !{null, !159, !"__warned", i1 false, i1 false}
!161 = distinct !{null, !162, !"__warned", i1 false, i1 false}
!162 = !{!"../net/ipv4/igmp.c", i32 1911, i32 2}
!163 = distinct !{null, !162, !"__warned", i1 false, i1 false}
!164 = distinct !{null, !165, !"__already_done", i1 false, i1 false}
!165 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!166 = !{ptr @.str.46, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @.str.47, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!169 = !{ptr @.str.48, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!171 = distinct !{null, !172, !"__warned", i1 false, i1 false}
!172 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!173 = !{ptr @.str.49, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @.str.50, !172, !"<string literal>", i1 false, i1 false}
!175 = distinct !{null, !176, !"__warned", i1 false, i1 false}
!176 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!177 = !{ptr @.str.51, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @igmp_net_ops, !179, !"igmp_net_ops", i1 false, i1 false}
!179 = !{!"../net/ipv4/igmp.c", i32 3046, i32 33}
!180 = !{ptr @.str.52, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../net/ipv4/igmp.c", i32 3013, i32 8}
!182 = !{ptr @.str.53, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../net/ipv4/igmp.c", i32 3017, i32 8}
!184 = !{ptr @.str.54, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../net/ipv4/igmp.c", i32 3024, i32 3}
!186 = !{ptr @.str.55, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @igmp_net_init._entry, !185, !"_entry", i1 false, i1 false}
!188 = !{ptr @igmp_net_init._entry_ptr, !185, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @igmp_mc_seq_ops, !190, !"igmp_mc_seq_ops", i1 false, i1 false}
!190 = !{!"../net/ipv4/igmp.c", i32 2868, i32 36}
!191 = distinct !{null, !192, !"__warned", i1 false, i1 false}
!192 = !{!"../net/ipv4/igmp.c", i32 2762, i32 2}
!193 = !{ptr @.str.56, !192, !"<string literal>", i1 false, i1 false}
!194 = distinct !{null, !195, !"__warned", i1 false, i1 false}
!195 = !{!"../net/ipv4/igmp.c", i32 2768, i32 8}
!196 = distinct !{null, !197, !"__warned", i1 false, i1 false}
!197 = !{!"../net/ipv4/igmp.c", i32 2781, i32 7}
!198 = distinct !{null, !199, !"__warned", i1 false, i1 false}
!199 = !{!"../net/ipv4/igmp.c", i32 2791, i32 8}
!200 = distinct !{null, !201, !"__warned", i1 false, i1 false}
!201 = !{!"../include/linux/netdevice.h", i32 2835, i32 7}
!202 = !{ptr @.str.59, !201, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @.str.60, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../net/ipv4/igmp.c", i32 2837, i32 5}
!205 = !{ptr @.str.61, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../net/ipv4/igmp.c", i32 2845, i32 43}
!207 = !{ptr @.str.62, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../net/ipv4/igmp.c", i32 2846, i32 36}
!209 = !{ptr @.str.63, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../net/ipv4/igmp.c", i32 2847, i32 6}
!211 = !{ptr @.str.64, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../net/ipv4/igmp.c", i32 2853, i32 20}
!213 = !{ptr @.str.65, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../net/ipv4/igmp.c", i32 2859, i32 7}
!215 = !{ptr @igmp_mcf_seq_ops, !216, !"igmp_mcf_seq_ops", i1 false, i1 false}
!216 = !{!"../net/ipv4/igmp.c", i32 3001, i32 36}
!217 = distinct !{null, !218, !"__warned", i1 false, i1 false}
!218 = !{!"../net/ipv4/igmp.c", i32 2893, i32 2}
!219 = distinct !{null, !220, !"__warned", i1 false, i1 false}
!220 = !{!"../net/ipv4/igmp.c", i32 2898, i32 8}
!221 = distinct !{null, !222, !"__warned", i1 false, i1 false}
!222 = !{!"../net/ipv4/igmp.c", i32 2930, i32 16}
!223 = !{ptr @.str.67, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../net/ipv4/igmp.c", i32 2987, i32 17}
!225 = !{ptr @.str.68, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../net/ipv4/igmp.c", i32 2990, i32 7}
!227 = !{ptr @igmp_notifier, !228, !"igmp_notifier", i1 false, i1 false}
!228 = !{!"../net/ipv4/igmp.c", i32 3070, i32 30}
!229 = distinct !{null, !230, !"__already_done", i1 false, i1 false}
!230 = !{!"../net/ipv4/igmp.c", i32 1639, i32 2}
!231 = distinct !{null, !232, !"__warned", i1 false, i1 false}
!232 = !{!"../net/ipv4/igmp.c", i32 1641, i32 2}
!233 = distinct !{null, !232, !"__warned", i1 false, i1 false}
!234 = !{!"sp"}
!235 = !{i32 1, !"wchar_size", i32 2}
!236 = !{i32 1, !"min_enum_size", i32 4}
!237 = !{i32 8, !"branch-target-enforcement", i32 0}
!238 = !{i32 8, !"sign-return-address", i32 0}
!239 = !{i32 8, !"sign-return-address-all", i32 0}
!240 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!241 = !{i32 7, !"uwtable", i32 1}
!242 = !{i32 7, !"frame-pointer", i32 2}
!243 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!244 = !{!"branch_weights", i32 1, i32 2000}
!245 = !{i64 6903933}
!246 = !{i64 2148502435}
!247 = !{i64 2148416875, i64 2148416907, i64 2148416936, i64 2148416970, i64 2148417001, i64 2148417024}
!248 = !{i64 2149429039}
!249 = !{i64 2148414410, i64 2148414442, i64 2148414471, i64 2148414505, i64 2148414536, i64 2148414559}
!250 = !{!"branch_weights", i32 2000, i32 1}
!251 = !{i64 2149429305}
!252 = !{i64 2157558532}
!253 = !{i64 2157533667}
!254 = !{i64 2157545637}
!255 = !{i64 6904316, i64 6904355, i64 6904381, i64 6904405, i64 6904430, i64 6904456, i64 6904481, i64 6904507, i64 6904534, i64 6904560, i64 6904599, i64 6904643, i64 6904674, i64 6904699}
!256 = !{i64 2149378549}
!257 = !{i64 2157482627}
!258 = !{i64 922372, i64 922393, i64 922416, i64 922435, i64 922454}
!259 = !{i64 2157483054}
!260 = !{i64 2157630993}
!261 = !{i64 2148415345, i64 2148415371, i64 2148415400, i64 2148415434, i64 2148415465, i64 2148415488}
!262 = !{i64 2157663306}
!263 = !{i64 2157679079}
!264 = !{i64 5031080}
!265 = !{i64 5031277}
!266 = !{i64 2152516510}
!267 = !{i64 2157691867, i64 2157692147, i64 2157692481, i64 2157692815}
!268 = !{i64 2152536206, i64 2152536231}
!269 = !{i64 2154836119, i64 2154836607, i64 2154836156, i64 2154836212, i64 2154836246, i64 2154836270, i64 2154836311, i64 2154836332, i64 2154836360, i64 2154836394}
