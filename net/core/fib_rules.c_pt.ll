; ModuleID = '/llk/IR_all_yes/net/core/fib_rules.c_pt.bc'
source_filename = "../net/core/fib_rules.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+fib_rule_matchall\22, \22a\22\09"
module asm "\09.weak\09__crc_fib_rule_matchall\09\09\09\09"
module asm "\09.long\09__crc_fib_rule_matchall\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fib_rule_matchall:\09\09\09\09\09"
module asm "\09.asciz \09\22fib_rule_matchall\22\09\09\09\09\09"
module asm "__kstrtabns_fib_rule_matchall:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fib_default_rule_add\22, \22a\22\09"
module asm "\09.weak\09__crc_fib_default_rule_add\09\09\09\09"
module asm "\09.long\09__crc_fib_default_rule_add\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fib_default_rule_add:\09\09\09\09\09"
module asm "\09.asciz \09\22fib_default_rule_add\22\09\09\09\09\09"
module asm "__kstrtabns_fib_default_rule_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fib_rules_register\22, \22a\22\09"
module asm "\09.weak\09__crc_fib_rules_register\09\09\09\09"
module asm "\09.long\09__crc_fib_rules_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fib_rules_register:\09\09\09\09\09"
module asm "\09.asciz \09\22fib_rules_register\22\09\09\09\09\09"
module asm "__kstrtabns_fib_rules_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fib_rules_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_fib_rules_unregister\09\09\09\09"
module asm "\09.long\09__crc_fib_rules_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fib_rules_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22fib_rules_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_fib_rules_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fib_rules_lookup\22, \22a\22\09"
module asm "\09.weak\09__crc_fib_rules_lookup\09\09\09\09"
module asm "\09.long\09__crc_fib_rules_lookup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fib_rules_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22fib_rules_lookup\22\09\09\09\09\09"
module asm "__kstrtabns_fib_rules_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fib_rules_dump\22, \22a\22\09"
module asm "\09.weak\09__crc_fib_rules_dump\09\09\09\09"
module asm "\09.long\09__crc_fib_rules_dump\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fib_rules_dump:\09\09\09\09\09"
module asm "\09.asciz \09\22fib_rules_dump\22\09\09\09\09\09"
module asm "__kstrtabns_fib_rules_dump:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fib_rules_seq_read\22, \22a\22\09"
module asm "\09.weak\09__crc_fib_rules_seq_read\09\09\09\09"
module asm "\09.long\09__crc_fib_rules_seq_read\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fib_rules_seq_read:\09\09\09\09\09"
module asm "\09.asciz \09\22fib_rules_seq_read\22\09\09\09\09\09"
module asm "__kstrtabns_fib_rules_seq_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fib_nl_newrule\22, \22a\22\09"
module asm "\09.weak\09__crc_fib_nl_newrule\09\09\09\09"
module asm "\09.long\09__crc_fib_nl_newrule\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fib_nl_newrule:\09\09\09\09\09"
module asm "\09.asciz \09\22fib_nl_newrule\22\09\09\09\09\09"
module asm "__kstrtabns_fib_nl_newrule:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fib_nl_delrule\22, \22a\22\09"
module asm "\09.weak\09__crc_fib_nl_delrule\09\09\09\09"
module asm "\09.long\09__crc_fib_nl_delrule\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fib_nl_delrule:\09\09\09\09\09"
module asm "\09.asciz \09\22fib_nl_delrule\22\09\09\09\09\09"
module asm "__kstrtabns_fib_nl_delrule:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nla_policy = type { i8, i8, i16, %union.anon.91 }
%union.anon.91 = type { i32 }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.fib_rule = type { %struct.list_head, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i64, ptr, ptr, %struct.refcount_struct, i32, i32, i32, [16 x i8], [16 x i8], %struct.fib_kuid_range, %struct.fib_rule_port_range, %struct.fib_rule_port_range, %struct.callback_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.fib_kuid_range = type { %struct.kuid_t, %struct.kuid_t }
%struct.kuid_t = type { i32 }
%struct.fib_rule_port_range = type { i16, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.fib_rules_ops = type { i32, %struct.list_head, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.list_head, ptr, ptr, %struct.callback_head }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.12, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.147, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.147 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%struct.fib_lookup_arg = type { ptr, ptr, ptr, ptr, i32, i32 }
%struct.fib_rule_notifier_info = type { %struct.fib_notifier_info, ptr }
%struct.fib_notifier_info = type { i32, ptr }
%struct.sk_buff = type { %union.anon.82, %union.anon.117, %union.anon.118, [48 x i8], %union.anon.119, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.121, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { ptr, ptr, %union.anon.84 }
%union.anon.84 = type { ptr }
%union.anon.117 = type { ptr }
%union.anon.118 = type { i64 }
%union.anon.119 = type { %struct.anon.120 }
%struct.anon.120 = type { i32, ptr }
%union.anon.121 = type { %struct.anon.122 }
%struct.anon.122 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.123, i32, i32, i32, i16, i16, %union.anon.125, i32, %union.anon.126, %union.anon.127, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.123 = type { i32 }
%union.anon.125 = type { i32 }
%union.anon.126 = type { i32 }
%union.anon.127 = type { i16 }
%struct.sock_common = type { %union.anon.14, %union.anon.16, %union.anon.17, i16, i8, i8, i32, %union.anon.19, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.135, [0 x i32], %union.anon.136, i16, i16, %union.anon.137, %struct.refcount_struct, [0 x i32], %union.anon.138 }
%union.anon.14 = type { i64 }
%union.anon.16 = type { i32 }
%union.anon.17 = type { i32 }
%union.anon.19 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.103 }
%union.anon.103 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.135 = type { i32 }
%union.anon.136 = type { %struct.hlist_node }
%union.anon.137 = type { i32 }
%union.anon.138 = type { i32 }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.85, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.116, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.85 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.116 = type { ptr }
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
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.53, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%union.anon.29 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.31 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.tlbflush_unmap_batch = type {}
%union.anon.53 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.36 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.36 = type { %struct.callback_head }
%struct.fib_rule_uid_range = type { i32, i32 }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.93 }
%union.anon.93 = type { [6 x i32], [24 x i8] }

@__kstrtab_fib_rule_matchall = external dso_local constant [0 x i8], align 1
@__kstrtabns_fib_rule_matchall = external dso_local constant [0 x i8], align 1
@__ksymtab_fib_rule_matchall = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fib_rule_matchall to i32), ptr @__kstrtab_fib_rule_matchall, ptr @__kstrtabns_fib_rule_matchall }, section "___ksymtab_gpl+fib_rule_matchall", align 4
@__kstrtab_fib_default_rule_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_fib_default_rule_add = external dso_local constant [0 x i8], align 1
@__ksymtab_fib_default_rule_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fib_default_rule_add to i32), ptr @__kstrtab_fib_default_rule_add, ptr @__kstrtabns_fib_default_rule_add }, section "___ksymtab+fib_default_rule_add", align 4
@__kstrtab_fib_rules_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_fib_rules_register = external dso_local constant [0 x i8], align 1
@__ksymtab_fib_rules_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fib_rules_register to i32), ptr @__kstrtab_fib_rules_register, ptr @__kstrtabns_fib_rules_register }, section "___ksymtab_gpl+fib_rules_register", align 4
@__kstrtab_fib_rules_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_fib_rules_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_fib_rules_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fib_rules_unregister to i32), ptr @__kstrtab_fib_rules_unregister, ptr @__kstrtabns_fib_rules_unregister }, section "___ksymtab_gpl+fib_rules_unregister", align 4
@fib_rules_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"net/core/fib_rules.c\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@fib_rules_lookup.__warned.2 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__kstrtab_fib_rules_lookup = external dso_local constant [0 x i8], align 1
@__kstrtabns_fib_rules_lookup = external dso_local constant [0 x i8], align 1
@__ksymtab_fib_rules_lookup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fib_rules_lookup to i32), ptr @__kstrtab_fib_rules_lookup, ptr @__kstrtabns_fib_rules_lookup }, section "___ksymtab_gpl+fib_rules_lookup", align 4
@fib_rules_dump.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__kstrtab_fib_rules_dump = external dso_local constant [0 x i8], align 1
@__kstrtabns_fib_rules_dump = external dso_local constant [0 x i8], align 1
@__ksymtab_fib_rules_dump = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fib_rules_dump to i32), ptr @__kstrtab_fib_rules_dump, ptr @__kstrtabns_fib_rules_dump }, section "___ksymtab_gpl+fib_rules_dump", align 4
@fib_rules_seq_read.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@__kstrtab_fib_rules_seq_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_fib_rules_seq_read = external dso_local constant [0 x i8], align 1
@__ksymtab_fib_rules_seq_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fib_rules_seq_read to i32), ptr @__kstrtab_fib_rules_seq_read, ptr @__kstrtabns_fib_rules_seq_read }, section "___ksymtab_gpl+fib_rules_seq_read", align 4
@fib_nl_newrule.__msg = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Invalid msg length\00", [45 x i8] zeroinitializer }, align 32
@fib_nl_newrule.__msg.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Rule family not supported\00", [38 x i8] zeroinitializer }, align 32
@fib_nl_newrule.__msg.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Error parsing msg\00", [46 x i8] zeroinitializer }, align 32
@fib_nl_newrule.__warned.7 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@__kstrtab_fib_nl_newrule = external dso_local constant [0 x i8], align 1
@__kstrtabns_fib_nl_newrule = external dso_local constant [0 x i8], align 1
@__ksymtab_fib_nl_newrule = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fib_nl_newrule to i32), ptr @__kstrtab_fib_nl_newrule, ptr @__kstrtabns_fib_nl_newrule }, section "___ksymtab_gpl+fib_nl_newrule", align 4
@fib_nl_delrule.__msg = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Invalid msg length\00", [45 x i8] zeroinitializer }, align 32
@fib_nl_delrule.__msg.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Rule family not supported\00", [38 x i8] zeroinitializer }, align 32
@fib_nl_delrule.__msg.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Error parsing msg\00", [46 x i8] zeroinitializer }, align 32
@fib_nl_delrule.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fib_nl_delrule.__warned.11 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__kstrtab_fib_nl_delrule = external dso_local constant [0 x i8], align 1
@__kstrtabns_fib_nl_delrule = external dso_local constant [0 x i8], align 1
@__ksymtab_fib_nl_delrule = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fib_nl_delrule to i32), ptr @__kstrtab_fib_nl_delrule, ptr @__kstrtabns_fib_nl_delrule }, section "___ksymtab_gpl+fib_nl_delrule", align 4
@__initcall__kmod_fib_rules__581_1319_fib_rules_init4 = internal global ptr @fib_rules_init, section ".initcall4.init", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@lookup_rules_ops.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__nlmsg_parse.__msg = internal constant [22 x i8] c"Invalid header length\00", align 1
@fib_rule_policy = internal constant { <{ { i8, i8, i16, { i16, [2 x i8] } }, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy }>, [56 x i8] } { <{ { i8, i8, i16, { i16, [2 x i8] } }, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy }> <{ { i8, i8, i16, { i16, [2 x i8] } } { i8 0, i8 0, i16 0, { i16, [2 x i8] } { i16 25, [2 x i8] undef } }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 5, i8 0, i16 15, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 5, i8 0, i16 15, %union.anon.91 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 8, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 4, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 4, %union.anon.91 zeroinitializer } }>, [56 x i8] zeroinitializer }, align 32
@fib_nl2rule.__msg = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Invalid source address\00", [41 x i8] zeroinitializer }, align 32
@fib_nl2rule.__msg.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Invalid dst address\00", [44 x i8] zeroinitializer }, align 32
@fib_nl2rule.__msg.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Unexpected goto\00", [16 x i8] zeroinitializer }, align 32
@fib_nl2rule.__msg.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Backward goto not supported\00", [36 x i8] zeroinitializer }, align 32
@fib_nl2rule.__msg.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Missing goto target for action goto\00", [60 x i8] zeroinitializer }, align 32
@fib_nl2rule.__msg.20 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"l3mdev and table are mutually exclusive\00", [56 x i8] zeroinitializer }, align 32
@fib_nl2rule.__msg.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"No permission to set uid\00", [39 x i8] zeroinitializer }, align 32
@fib_nl2rule.__msg.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Invalid uid range\00", [46 x i8] zeroinitializer }, align 32
@fib_nl2rule.__msg.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Invalid sport range\00", [44 x i8] zeroinitializer }, align 32
@fib_nl2rule.__msg.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Invalid dport range\00", [44 x i8] zeroinitializer }, align 32
@fib_nl2rule_l3mdev.__msg = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Invalid l3mdev attribute\00", [39 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@fib_rules_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @fib_rules_net_init, ptr null, ptr @fib_rules_net_exit, ptr null, ptr null, i32 0 }, [32 x i8] zeroinitializer }, align 32
@fib_rules_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @fib_rules_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@fib_nl_dumprule.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fib_valid_dumprule_req.__msg = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Invalid header for fib rule dump request\00", [55 x i8] zeroinitializer }, align 32
@fib_valid_dumprule_req.__msg.28 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Invalid values in header for fib rule dump request\00", [45 x i8] zeroinitializer }, align 32
@fib_valid_dumprule_req.__msg.29 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Invalid data after header in fib rule dump request\00", [45 x i8] zeroinitializer }, align 32
@dump_rules.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fib_rules_net_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&net->rules_mod_lock\00", [43 x i8] zeroinitializer }, align 32
@fib_rules_net_exit.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@fib_rules_event.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.34 = internal global [5 x i64] [i64 3, i64 32, i64 5, i64 6, i64 11]
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 300, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 308, i32 13 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 405, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 786, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 793, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 800, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 852, i32 8 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 894, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 901, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 908, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 695, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 723, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant [16 x i8] c"fib_rule_policy\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 753, i32 32 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 532, i32 4 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 540, i32 4 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 617, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 624, i32 4 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 628, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 633, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 640, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 648, i32 4 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 662, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 671, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 501, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 991, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant [18 x i8] c"fib_rules_net_ops\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 1288, i32 33 }
@___asan_gen_.119 = private unnamed_addr constant [19 x i8] c"fib_rules_notifier\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 1272, i32 30 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 1122, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 1129, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 1135, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.134 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.135 = private constant [24 x i8] c"../net/core/fib_rules.c\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 1279, i32 2 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @__initcall__kmod_fib_rules__581_1319_fib_rules_init4, ptr @__ksymtab_fib_default_rule_add, ptr @__ksymtab_fib_nl_delrule, ptr @__ksymtab_fib_nl_newrule, ptr @__ksymtab_fib_rule_matchall, ptr @__ksymtab_fib_rules_dump, ptr @__ksymtab_fib_rules_lookup, ptr @__ksymtab_fib_rules_register, ptr @__ksymtab_fib_rules_seq_read, ptr @__ksymtab_fib_rules_unregister, ptr @.str, ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @fib_nl_newrule.__msg, ptr @fib_nl_newrule.__msg.5, ptr @fib_nl_newrule.__msg.6, ptr @.str.8, ptr @fib_nl_delrule.__msg, ptr @fib_nl_delrule.__msg.9, ptr @fib_nl_delrule.__msg.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @fib_rule_policy, ptr @fib_nl2rule.__msg, ptr @fib_nl2rule.__msg.16, ptr @fib_nl2rule.__msg.17, ptr @fib_nl2rule.__msg.18, ptr @fib_nl2rule.__msg.19, ptr @fib_nl2rule.__msg.20, ptr @fib_nl2rule.__msg.21, ptr @fib_nl2rule.__msg.22, ptr @fib_nl2rule.__msg.23, ptr @fib_nl2rule.__msg.24, ptr @fib_nl2rule_l3mdev.__msg, ptr @.str.27, ptr @fib_rules_net_ops, ptr @fib_rules_notifier, ptr @fib_valid_dumprule_req.__msg, ptr @fib_valid_dumprule_req.__msg.28, ptr @fib_valid_dumprule_req.__msg.29, ptr @fib_rules_net_init.__key, ptr @.str.30], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib_nl_newrule.__msg to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib_nl_newrule.__msg.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib_nl_newrule.__msg.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib_nl_delrule.__msg to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib_nl_delrule.__msg.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib_nl_delrule.__msg.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib_rule_policy to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib_nl2rule.__msg to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib_nl2rule.__msg.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib_nl2rule.__msg.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib_nl2rule.__msg.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib_nl2rule.__msg.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib_nl2rule.__msg.20 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib_nl2rule.__msg.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib_nl2rule.__msg.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib_nl2rule.__msg.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib_nl2rule.__msg.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib_nl2rule_l3mdev.__msg to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib_rules_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib_rules_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib_valid_dumprule_req.__msg to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib_valid_dumprule_req.__msg.28 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib_valid_dumprule_req.__msg.29 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib_rules_net_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @fib_rule_matchall(ptr nocapture noundef readonly %rule) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %iifindex = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 1
  %0 = ptrtoint ptr %iifindex to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iifindex, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %oifindex = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 2
  %2 = ptrtoint ptr %oifindex to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %oifindex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %lor.lhs.false2, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %mark = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 3
  %4 = ptrtoint ptr %mark to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mark, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %lor.lhs.false4, label %lor.lhs.false2.return_crit_edge

lor.lhs.false2.return_crit_edge:                  ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %tun_id = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 12
  %6 = ptrtoint ptr %tun_id to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %tun_id, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %tobool5.not = icmp eq i64 %7, 0
  br i1 %tobool5.not, label %lor.lhs.false6, label %lor.lhs.false4.return_crit_edge

lor.lhs.false4.return_crit_edge:                  ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false6:                                   ; preds = %lor.lhs.false4
  %flags = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 5
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool7.not = icmp eq i32 %9, 0
  br i1 %tobool7.not, label %if.end, label %lor.lhs.false6.return_crit_edge

lor.lhs.false6.return_crit_edge:                  ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %lor.lhs.false6
  %suppress_ifgroup = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 17
  %10 = ptrtoint ptr %suppress_ifgroup to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %suppress_ifgroup, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp.not = icmp eq i32 %11, -1
  br i1 %cmp.not, label %lor.lhs.false8, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false8:                                   ; preds = %if.end
  %suppress_prefixlen = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 18
  %12 = ptrtoint ptr %suppress_prefixlen to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %suppress_prefixlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp9.not = icmp eq i32 %13, -1
  br i1 %cmp9.not, label %if.end11, label %lor.lhs.false8.return_crit_edge

lor.lhs.false8.return_crit_edge:                  ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end11:                                         ; preds = %lor.lhs.false8
  %uid_range = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 21
  %14 = ptrtoint ptr %uid_range to i32
  call void @__asan_load4_noabort(i32 %14)
  %.unpack = load i32, ptr %uid_range, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.unpack)
  %cmp.i = icmp eq i32 %.unpack, 0
  br i1 %cmp.i, label %lor.lhs.false12, label %if.end11.return_crit_edge

if.end11.return_crit_edge:                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false12:                                  ; preds = %if.end11
  %end = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 21, i32 1
  %15 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %15)
  %.unpack34 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.unpack34)
  %cmp.i36 = icmp eq i32 %.unpack34, -1
  br i1 %cmp.i36, label %if.end17, label %lor.lhs.false12.return_crit_edge

lor.lhs.false12.return_crit_edge:                 ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end17:                                         ; preds = %lor.lhs.false12
  %sport_range = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 22
  %16 = ptrtoint ptr %sport_range to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %sport_range, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cmp.not.i = icmp eq i16 %17, 0
  br i1 %cmp.not.i, label %if.end17.if.end20_crit_edge, label %fib_rule_port_range_set.exit

if.end17.if.end20_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

fib_rule_port_range_set.exit:                     ; preds = %if.end17
  %end.i = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 22, i32 1
  %18 = ptrtoint ptr %end.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %end.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %cmp3.i.not = icmp eq i16 %19, 0
  br i1 %cmp3.i.not, label %fib_rule_port_range_set.exit.if.end20_crit_edge, label %fib_rule_port_range_set.exit.return_crit_edge

fib_rule_port_range_set.exit.return_crit_edge:    ; preds = %fib_rule_port_range_set.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

fib_rule_port_range_set.exit.if.end20_crit_edge:  ; preds = %fib_rule_port_range_set.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.end20:                                         ; preds = %fib_rule_port_range_set.exit.if.end20_crit_edge, %if.end17.if.end20_crit_edge
  %dport_range = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 23
  %20 = ptrtoint ptr %dport_range to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %dport_range, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %cmp.not.i37 = icmp eq i16 %21, 0
  br i1 %cmp.not.i37, label %if.end20.return_crit_edge, label %fib_rule_port_range_set.exit41

if.end20.return_crit_edge:                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

fib_rule_port_range_set.exit41:                   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  %end.i38 = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 23, i32 1
  %22 = ptrtoint ptr %end.i38 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %end.i38, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %cmp3.i39.not = icmp eq i16 %23, 0
  br label %return

return:                                           ; preds = %fib_rule_port_range_set.exit41, %if.end20.return_crit_edge, %fib_rule_port_range_set.exit.return_crit_edge, %lor.lhs.false12.return_crit_edge, %if.end11.return_crit_edge, %lor.lhs.false8.return_crit_edge, %if.end.return_crit_edge, %lor.lhs.false6.return_crit_edge, %lor.lhs.false4.return_crit_edge, %lor.lhs.false2.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %lor.lhs.false6.return_crit_edge ], [ false, %lor.lhs.false4.return_crit_edge ], [ false, %lor.lhs.false2.return_crit_edge ], [ false, %lor.lhs.false.return_crit_edge ], [ false, %entry.return_crit_edge ], [ false, %lor.lhs.false8.return_crit_edge ], [ false, %if.end.return_crit_edge ], [ false, %lor.lhs.false12.return_crit_edge ], [ false, %if.end11.return_crit_edge ], [ false, %fib_rule_port_range_set.exit.return_crit_edge ], [ true, %if.end20.return_crit_edge ], [ %cmp3.i39.not, %fib_rule_port_range_set.exit41 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fib_default_rule_add(ptr noundef %ops, i32 noundef %pref, i32 noundef %table, i32 noundef %flags) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rule_size = getelementptr inbounds %struct.fib_rules_ops, ptr %ops, i32 0, i32 2
  %0 = ptrtoint ptr %rule_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rule_size, align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %1, i32 noundef 4197824) #14
  %cmp = icmp eq ptr %call9.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %refcnt = getelementptr inbounds %struct.fib_rule, ptr %call9.i.i, i32 0, i32 15
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #11
  %2 = ptrtoint ptr %refcnt to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 1, ptr %refcnt, align 8
  %action = getelementptr inbounds %struct.fib_rule, ptr %call9.i.i, i32 0, i32 7
  %3 = ptrtoint ptr %action to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %action, align 32
  %pref1 = getelementptr inbounds %struct.fib_rule, ptr %call9.i.i, i32 0, i32 16
  %4 = ptrtoint ptr %pref1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %pref, ptr %pref1, align 4
  %table2 = getelementptr inbounds %struct.fib_rule, ptr %call9.i.i, i32 0, i32 6
  %5 = ptrtoint ptr %table2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %table, ptr %table2, align 4
  %flags3 = getelementptr inbounds %struct.fib_rule, ptr %call9.i.i, i32 0, i32 5
  %6 = ptrtoint ptr %flags3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %flags, ptr %flags3, align 8
  %proto = getelementptr inbounds %struct.fib_rule, ptr %call9.i.i, i32 0, i32 9
  %7 = ptrtoint ptr %proto to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %proto, align 2
  %fro_net = getelementptr inbounds %struct.fib_rules_ops, ptr %ops, i32 0, i32 19
  %8 = ptrtoint ptr %fro_net to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fro_net, align 4
  %fr_net = getelementptr inbounds %struct.fib_rule, ptr %call9.i.i, i32 0, i32 14
  %10 = ptrtoint ptr %fr_net to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %fr_net, align 4
  %uid_range = getelementptr inbounds %struct.fib_rule, ptr %call9.i.i, i32 0, i32 21
  %11 = ptrtoint ptr %uid_range to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 4294967295, ptr %uid_range, align 8
  %suppress_prefixlen = getelementptr inbounds %struct.fib_rule, ptr %call9.i.i, i32 0, i32 18
  %12 = ptrtoint ptr %suppress_prefixlen to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %suppress_prefixlen, align 4
  %suppress_ifgroup = getelementptr inbounds %struct.fib_rule, ptr %call9.i.i, i32 0, i32 17
  %13 = ptrtoint ptr %suppress_ifgroup to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %suppress_ifgroup, align 64
  %rules_list = getelementptr inbounds %struct.fib_rules_ops, ptr %ops, i32 0, i32 17
  %prev.i = getelementptr inbounds %struct.fib_rules_ops, ptr %ops, i32 0, i32 17, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call9.i.i, ptr noundef %15, ptr noundef %rules_list) #11
  br i1 %call.i.i, label %if.end.i.i17, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.i17:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call9.i.i, ptr %prev.i, align 4
  %17 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %rules_list, ptr %call9.i.i, align 128
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call9.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev3.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %call9.i.i, ptr %15, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i17, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end.i.i17 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @fib_rules_register(ptr noundef %tmpl, ptr noundef %net) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmemdup(ptr noundef %tmpl, i32 noundef 96, i32 noundef 3264) #11
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %rules_list = getelementptr inbounds %struct.fib_rules_ops, ptr %call, i32 0, i32 17
  %0 = ptrtoint ptr %rules_list to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %rules_list, ptr %rules_list, align 4
  %prev.i = getelementptr inbounds %struct.fib_rules_ops, ptr %call, i32 0, i32 17, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %rules_list, ptr %prev.i, align 4
  %fro_net = getelementptr inbounds %struct.fib_rules_ops, ptr %call, i32 0, i32 19
  %2 = ptrtoint ptr %fro_net to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %net, ptr %fro_net, align 4
  %rule_size.i = getelementptr inbounds %struct.fib_rules_ops, ptr %call, i32 0, i32 2
  %3 = ptrtoint ptr %rule_size.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rule_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %4)
  %cmp.i = icmp ult i32 %4, 128
  br i1 %cmp.i, label %if.end.if.then3_crit_edge, label %if.end.i

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then3

if.end.i:                                         ; preds = %if.end
  %match.i = getelementptr inbounds %struct.fib_rules_ops, ptr %call, i32 0, i32 9
  %5 = ptrtoint ptr %match.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %match.i, align 4
  %cmp1.i = icmp eq ptr %6, null
  br i1 %cmp1.i, label %if.end.i.if.then3_crit_edge, label %lor.lhs.false.i

if.end.i.if.then3_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then3

lor.lhs.false.i:                                  ; preds = %if.end.i
  %configure.i = getelementptr inbounds %struct.fib_rules_ops, ptr %call, i32 0, i32 10
  %7 = ptrtoint ptr %configure.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %configure.i, align 4
  %cmp2.i = icmp eq ptr %8, null
  br i1 %cmp2.i, label %lor.lhs.false.i.if.then3_crit_edge, label %lor.lhs.false3.i

lor.lhs.false.i.if.then3_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then3

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i
  %compare.i = getelementptr inbounds %struct.fib_rules_ops, ptr %call, i32 0, i32 12
  %9 = ptrtoint ptr %compare.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %compare.i, align 4
  %cmp4.i = icmp eq ptr %10, null
  br i1 %cmp4.i, label %lor.lhs.false3.i.if.then3_crit_edge, label %lor.lhs.false5.i

lor.lhs.false3.i.if.then3_crit_edge:              ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then3

lor.lhs.false5.i:                                 ; preds = %lor.lhs.false3.i
  %fill.i = getelementptr inbounds %struct.fib_rules_ops, ptr %call, i32 0, i32 13
  %11 = ptrtoint ptr %fill.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fill.i, align 4
  %cmp6.i = icmp eq ptr %12, null
  br i1 %cmp6.i, label %lor.lhs.false5.i.if.then3_crit_edge, label %lor.lhs.false7.i

lor.lhs.false5.i.if.then3_crit_edge:              ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then3

lor.lhs.false7.i:                                 ; preds = %lor.lhs.false5.i
  %action.i = getelementptr inbounds %struct.fib_rules_ops, ptr %call, i32 0, i32 7
  %13 = ptrtoint ptr %action.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %action.i, align 4
  %cmp8.i = icmp eq ptr %14, null
  br i1 %cmp8.i, label %lor.lhs.false7.i.if.then3_crit_edge, label %if.end10.i

lor.lhs.false7.i.if.then3_crit_edge:              ; preds = %lor.lhs.false7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then3

if.end10.i:                                       ; preds = %lor.lhs.false7.i
  %rules_mod_lock.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %rules_mod_lock.i) #11
  %rules_ops.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 28
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end10.i
  %.pn.in.i = phi ptr [ %rules_ops.i, %if.end10.i ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %15 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp12.not.i = icmp eq ptr %.pn.i, %rules_ops.i
  br i1 %cmp12.not.i, label %for.end.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %o.0.i = getelementptr i8, ptr %.pn.i, i32 -4
  %16 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %call, align 4
  %18 = ptrtoint ptr %o.0.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %o.0.i, align 4
  %cmp14.i = icmp eq i32 %17, %19
  br i1 %cmp14.i, label %__fib_rules_register.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

for.end.i:                                        ; preds = %for.cond.i
  %list22.i = getelementptr inbounds %struct.fib_rules_ops, ptr %call, i32 0, i32 1
  %prev.i.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 28, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list22.i, ptr noundef %21, ptr noundef %rules_ops.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.end.i.__fib_rules_register.exit.thread17_crit_edge

for.end.i.__fib_rules_register.exit.thread17_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__fib_rules_register.exit.thread17

if.end.i.i.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %list22.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %rules_ops.i, ptr %list22.i, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.fib_rules_ops, ptr %call, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %21, ptr %prev2.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !133
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %list22.i, ptr %21, align 4
  %25 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %list22.i, ptr %prev.i.i, align 4
  br label %__fib_rules_register.exit.thread17

__fib_rules_register.exit.thread17:               ; preds = %if.end.i.i.i, %for.end.i.__fib_rules_register.exit.thread17_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %rules_mod_lock.i) #11
  br label %cleanup

__fib_rules_register.exit:                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock(ptr noundef %rules_mod_lock.i) #11
  br label %if.then3

if.then3:                                         ; preds = %__fib_rules_register.exit, %lor.lhs.false7.i.if.then3_crit_edge, %lor.lhs.false5.i.if.then3_crit_edge, %lor.lhs.false3.i.if.then3_crit_edge, %lor.lhs.false.i.if.then3_crit_edge, %if.end.i.if.then3_crit_edge, %if.end.if.then3_crit_edge
  %retval.0.i15 = phi ptr [ inttoptr (i32 -17 to ptr), %__fib_rules_register.exit ], [ inttoptr (i32 -22 to ptr), %if.end.if.then3_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false7.i.if.then3_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false5.i.if.then3_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false3.i.if.then3_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false.i.if.then3_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.i.if.then3_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %__fib_rules_register.exit.thread17, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %retval.0.i15, %if.then3 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ], [ %call, %__fib_rules_register.exit.thread17 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fib_rules_unregister(ptr noundef %ops) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %fro_net = getelementptr inbounds %struct.fib_rules_ops, ptr %ops, i32 0, i32 19
  %0 = ptrtoint ptr %fro_net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fro_net, align 4
  %rules_mod_lock = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %rules_mod_lock) #11
  %list = getelementptr inbounds %struct.fib_rules_ops, ptr %ops, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #11
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_rcu.exit_crit_edge

entry.list_del_rcu.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.fib_rules_ops, ptr %ops, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %entry.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.fib_rules_ops, ptr %ops, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %rules_mod_lock) #11
  %rules_list.i = getelementptr inbounds %struct.fib_rules_ops, ptr %ops, i32 0, i32 17
  %9 = ptrtoint ptr %rules_list.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rules_list.i, align 4
  %cmp.not24.i = icmp eq ptr %10, %rules_list.i
  br i1 %cmp.not24.i, label %list_del_rcu.exit.fib_rules_cleanup_ops.exit_crit_edge, label %for.body.lr.ph.i

list_del_rcu.exit.fib_rules_cleanup_ops.exit_crit_edge: ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %fib_rules_cleanup_ops.exit

for.body.lr.ph.i:                                 ; preds = %list_del_rcu.exit
  %delete.i = getelementptr inbounds %struct.fib_rules_ops, ptr %ops, i32 0, i32 11
  br label %for.body.i

for.body.i:                                       ; preds = %fib_rule_put.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %rule.025.i = phi ptr [ %10, %for.body.lr.ph.i ], [ %tmp.026.i, %fib_rule_put.exit.i.for.body.i_crit_edge ]
  %11 = ptrtoint ptr %rule.025.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %tmp.026.i = load ptr, ptr %rule.025.i, align 8
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %rule.025.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del_rcu.exit.i_crit_edge

for.body.i.list_del_rcu.exit.i_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_rcu.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %rule.025.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i.i, align 4
  %14 = ptrtoint ptr %rule.025.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rule.025.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del_rcu.exit.i

list_del_rcu.exit.i:                              ; preds = %if.end.i.i.i, %for.body.i.list_del_rcu.exit.i_crit_edge
  %prev.i.i10 = getelementptr inbounds %struct.list_head, ptr %rule.025.i, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i10 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i10, align 4
  %19 = ptrtoint ptr %delete.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %delete.i, align 4
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %list_del_rcu.exit.i.if.end.i_crit_edge, label %if.then.i

list_del_rcu.exit.i.if.end.i_crit_edge:           ; preds = %list_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %list_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 %20(ptr noundef %rule.025.i) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %list_del_rcu.exit.i.if.end.i_crit_edge
  %refcnt.i.i = getelementptr inbounds %struct.fib_rule, ptr %rule.025.i, i32 0, i32 15
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !134
  tail call void @llvm.prefetch.p0(ptr %refcnt.i.i, i32 1, i32 3, i32 1) #11
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i, ptr %refcnt.i.i, i32 1, ptr elementtype(i32) %refcnt.i.i) #11, !srcloc !135
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %refcount_dec_and_test.exit.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.fib_rule_put.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !136

if.end5.i.i.i.i.i.fib_rule_put.exit.i_crit_edge:  ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fib_rule_put.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i.i, i32 noundef 3) #11
  br label %fib_rule_put.exit.i

refcount_dec_and_test.exit.i.i:                   ; preds = %if.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !137
  %tobool.not.not.i.i = icmp eq ptr %rule.025.i, null
  br i1 %tobool.not.not.i.i, label %refcount_dec_and_test.exit.i.i.fib_rule_put.exit.i_crit_edge, label %do.end.i.i

refcount_dec_and_test.exit.i.i.fib_rule_put.exit.i_crit_edge: ; preds = %refcount_dec_and_test.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fib_rule_put.exit.i

do.end.i.i:                                       ; preds = %refcount_dec_and_test.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %rcu.i.i = getelementptr inbounds %struct.fib_rule, ptr %rule.025.i, i32 0, i32 24
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i.i, ptr noundef nonnull inttoptr (i32 120 to ptr)) #11
  br label %fib_rule_put.exit.i

fib_rule_put.exit.i:                              ; preds = %do.end.i.i, %refcount_dec_and_test.exit.i.i.fib_rule_put.exit.i_crit_edge, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.fib_rule_put.exit.i_crit_edge
  %cmp.not.i = icmp eq ptr %tmp.026.i, %rules_list.i
  br i1 %cmp.not.i, label %fib_rule_put.exit.i.fib_rules_cleanup_ops.exit_crit_edge, label %fib_rule_put.exit.i.for.body.i_crit_edge

fib_rule_put.exit.i.for.body.i_crit_edge:         ; preds = %fib_rule_put.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

fib_rule_put.exit.i.fib_rules_cleanup_ops.exit_crit_edge: ; preds = %fib_rule_put.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fib_rules_cleanup_ops.exit

fib_rules_cleanup_ops.exit:                       ; preds = %fib_rule_put.exit.i.fib_rules_cleanup_ops.exit_crit_edge, %list_del_rcu.exit.fib_rules_cleanup_ops.exit_crit_edge
  %tobool.not = icmp eq ptr %ops, null
  br i1 %tobool.not, label %fib_rules_cleanup_ops.exit.if.end_crit_edge, label %do.end

fib_rules_cleanup_ops.exit.if.end_crit_edge:      ; preds = %fib_rules_cleanup_ops.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %fib_rules_cleanup_ops.exit
  call void @__sanitizer_cov_trace_pc() #13
  %rcu = getelementptr inbounds %struct.fib_rules_ops, ptr %ops, i32 0, i32 20
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 88 to ptr)) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %fib_rules_cleanup_ops.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fib_rules_lookup(ptr noundef %ops, ptr noundef %fl, i32 noundef %flags, ptr noundef %arg) #1 align 64 {
entry:
  %old.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !138
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 696, ptr noundef nonnull @.str.13) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b107 = load i1, ptr @fib_rules_lookup.__warned, align 1
  br i1 %.b107, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @fib_rules_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 300, ptr noundef nonnull @.str.1) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %rules_list = getelementptr inbounds %struct.fib_rules_ops, ptr %ops, i32 0, i32 17
  %4 = ptrtoint ptr %rules_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %rule.0125 = load volatile ptr, ptr %rules_list, align 4
  %cmp.not126 = icmp eq ptr %rule.0125, %rules_list
  br i1 %cmp.not126, label %do.end.out_crit_edge, label %jumped.preheader.lr.ph

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

jumped.preheader.lr.ph:                           ; preds = %do.end
  %flowic_iif.i = getelementptr inbounds %struct.flowi_common, ptr %fl, i32 0, i32 1
  %flowic_mark.i = getelementptr inbounds %struct.flowi_common, ptr %fl, i32 0, i32 2
  %flowic_tun_key.i = getelementptr inbounds %struct.flowi_common, ptr %fl, i32 0, i32 9
  %flowic_uid.i = getelementptr inbounds %struct.flowi_common, ptr %fl, i32 0, i32 8
  %match.i = getelementptr inbounds %struct.fib_rules_ops, ptr %ops, i32 0, i32 9
  %action44 = getelementptr inbounds %struct.fib_rules_ops, ptr %ops, i32 0, i32 7
  %suppress = getelementptr inbounds %struct.fib_rules_ops, ptr %ops, i32 0, i32 8
  br label %jumped

jumped:                                           ; preds = %jumped.backedge, %jumped.preheader.lr.ph
  %rule.1 = phi ptr [ %rule.0125, %jumped.preheader.lr.ph ], [ %rule.1.be, %jumped.backedge ]
  %iifindex.i = getelementptr inbounds %struct.fib_rule, ptr %rule.1, i32 0, i32 1
  %5 = ptrtoint ptr %iifindex.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %iifindex.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i108 = icmp eq i32 %6, 0
  br i1 %tobool.not.i108, label %jumped.if.end.i_crit_edge, label %land.lhs.true.i109

jumped.if.end.i_crit_edge:                        ; preds = %jumped
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.lhs.true.i109:                               ; preds = %jumped
  %7 = ptrtoint ptr %flowic_iif.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flowic_iif.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp.not.i = icmp eq i32 %6, %8
  br i1 %cmp.not.i, label %land.lhs.true.i109.if.end.i_crit_edge, label %land.lhs.true.i109.fib_rule_match.exit_crit_edge

land.lhs.true.i109.fib_rule_match.exit_crit_edge: ; preds = %land.lhs.true.i109
  call void @__sanitizer_cov_trace_pc() #13
  br label %fib_rule_match.exit

land.lhs.true.i109.if.end.i_crit_edge:            ; preds = %land.lhs.true.i109
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i109.if.end.i_crit_edge, %jumped.if.end.i_crit_edge
  %oifindex.i = getelementptr inbounds %struct.fib_rule, ptr %rule.1, i32 0, i32 2
  %9 = ptrtoint ptr %oifindex.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %oifindex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool2.not.i = icmp eq i32 %10, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end8.i_crit_edge, label %land.lhs.true3.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i

land.lhs.true3.i:                                 ; preds = %if.end.i
  %11 = ptrtoint ptr %fl to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fl, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp6.not.i = icmp eq i32 %10, %12
  br i1 %cmp6.not.i, label %land.lhs.true3.i.if.end8.i_crit_edge, label %land.lhs.true3.i.fib_rule_match.exit_crit_edge

land.lhs.true3.i.fib_rule_match.exit_crit_edge:   ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fib_rule_match.exit

land.lhs.true3.i.if.end8.i_crit_edge:             ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i

if.end8.i:                                        ; preds = %land.lhs.true3.i.if.end8.i_crit_edge, %if.end.i.if.end8.i_crit_edge
  %mark.i = getelementptr inbounds %struct.fib_rule, ptr %rule.1, i32 0, i32 3
  %13 = ptrtoint ptr %mark.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mark.i, align 8
  %15 = ptrtoint ptr %flowic_mark.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flowic_mark.i, align 8
  %xor.i = xor i32 %16, %14
  %mark_mask.i = getelementptr inbounds %struct.fib_rule, ptr %rule.1, i32 0, i32 4
  %17 = ptrtoint ptr %mark_mask.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mark_mask.i, align 4
  %and.i = and i32 %xor.i, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool10.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.end8.i.fib_rule_match.exit_crit_edge

if.end8.i.fib_rule_match.exit_crit_edge:          ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fib_rule_match.exit

if.end12.i:                                       ; preds = %if.end8.i
  %tun_id.i = getelementptr inbounds %struct.fib_rule, ptr %rule.1, i32 0, i32 12
  %19 = ptrtoint ptr %tun_id.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %tun_id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %20)
  %tobool13.not.i = icmp eq i64 %20, 0
  br i1 %tobool13.not.i, label %if.end12.i.if.end20.i_crit_edge, label %land.lhs.true14.i

if.end12.i.if.end20.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20.i

land.lhs.true14.i:                                ; preds = %if.end12.i
  %21 = ptrtoint ptr %flowic_tun_key.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %flowic_tun_key.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %20, i64 %22)
  %cmp18.not.i = icmp eq i64 %20, %22
  br i1 %cmp18.not.i, label %land.lhs.true14.i.if.end20.i_crit_edge, label %land.lhs.true14.i.fib_rule_match.exit_crit_edge

land.lhs.true14.i.fib_rule_match.exit_crit_edge:  ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fib_rule_match.exit

land.lhs.true14.i.if.end20.i_crit_edge:           ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20.i

if.end20.i:                                       ; preds = %land.lhs.true14.i.if.end20.i_crit_edge, %if.end12.i.if.end20.i_crit_edge
  %l3mdev.i = getelementptr inbounds %struct.fib_rule, ptr %rule.1, i32 0, i32 8
  %23 = ptrtoint ptr %l3mdev.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %l3mdev.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool21.not.i = icmp eq i8 %24, 0
  br i1 %tobool21.not.i, label %if.end20.i.if.end25.i_crit_edge, label %land.lhs.true22.i

if.end20.i.if.end25.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25.i

land.lhs.true22.i:                                ; preds = %if.end20.i
  %fr_net.i = getelementptr inbounds %struct.fib_rule, ptr %rule.1, i32 0, i32 14
  %25 = ptrtoint ptr %fr_net.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fr_net.i, align 4
  %call.i110 = tail call i32 @l3mdev_fib_rule_match(ptr noundef %26, ptr noundef %fl, ptr noundef %arg) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i110)
  %tobool23.not.i = icmp eq i32 %call.i110, 0
  br i1 %tobool23.not.i, label %land.lhs.true22.i.fib_rule_match.exit_crit_edge, label %land.lhs.true22.i.if.end25.i_crit_edge

land.lhs.true22.i.if.end25.i_crit_edge:           ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25.i

land.lhs.true22.i.fib_rule_match.exit_crit_edge:  ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fib_rule_match.exit

if.end25.i:                                       ; preds = %land.lhs.true22.i.if.end25.i_crit_edge, %if.end20.i.if.end25.i_crit_edge
  %uid_range.i = getelementptr inbounds %struct.fib_rule, ptr %rule.1, i32 0, i32 21
  %27 = ptrtoint ptr %flowic_uid.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %.unpack.i = load i32, ptr %flowic_uid.i, align 4
  %28 = ptrtoint ptr %uid_range.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %.unpack67.i = load i32, ptr %uid_range.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack.i, i32 %.unpack67.i)
  %cmp.i.i = icmp ult i32 %.unpack.i, %.unpack67.i
  br i1 %cmp.i.i, label %if.end25.i.fib_rule_match.exit_crit_edge, label %lor.lhs.false.i

if.end25.i.fib_rule_match.exit_crit_edge:         ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fib_rule_match.exit

lor.lhs.false.i:                                  ; preds = %if.end25.i
  %end.i = getelementptr inbounds %struct.fib_rule, ptr %rule.1, i32 0, i32 21, i32 1
  %29 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %.unpack69.i = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack.i, i32 %.unpack69.i)
  %cmp.i70.i = icmp ugt i32 %.unpack.i, %.unpack69.i
  br i1 %cmp.i70.i, label %lor.lhs.false.i.fib_rule_match.exit_crit_edge, label %if.end38.i

lor.lhs.false.i.fib_rule_match.exit_crit_edge:    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fib_rule_match.exit

if.end38.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %match.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %match.i, align 4
  %call39.i = tail call i32 %31(ptr noundef %rule.1, ptr noundef %fl, i32 noundef %flags) #11
  br label %fib_rule_match.exit

fib_rule_match.exit:                              ; preds = %if.end38.i, %lor.lhs.false.i.fib_rule_match.exit_crit_edge, %if.end25.i.fib_rule_match.exit_crit_edge, %land.lhs.true22.i.fib_rule_match.exit_crit_edge, %land.lhs.true14.i.fib_rule_match.exit_crit_edge, %if.end8.i.fib_rule_match.exit_crit_edge, %land.lhs.true3.i.fib_rule_match.exit_crit_edge, %land.lhs.true.i109.fib_rule_match.exit_crit_edge
  %ret.0.i = phi i32 [ 0, %land.lhs.true.i109.fib_rule_match.exit_crit_edge ], [ 0, %land.lhs.true3.i.fib_rule_match.exit_crit_edge ], [ 0, %if.end8.i.fib_rule_match.exit_crit_edge ], [ 0, %land.lhs.true14.i.fib_rule_match.exit_crit_edge ], [ 0, %if.end25.i.fib_rule_match.exit_crit_edge ], [ 0, %lor.lhs.false.i.fib_rule_match.exit_crit_edge ], [ %call39.i, %if.end38.i ], [ 0, %land.lhs.true22.i.fib_rule_match.exit_crit_edge ]
  %flags40.i = getelementptr inbounds %struct.fib_rule, ptr %rule.1, i32 0, i32 5
  %32 = ptrtoint ptr %flags40.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags40.i, align 8
  %and41.i = and i32 %33, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.i)
  %tobool42.not.i = icmp eq i32 %and41.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool43.not.i = icmp eq i32 %ret.0.i, 0
  %lnot.ext.i = zext i1 %tobool43.not.i to i32
  %cond.i = select i1 %tobool42.not.i, i32 %ret.0.i, i32 %lnot.ext.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %tobool11.not = icmp eq i32 %cond.i, 0
  br i1 %tobool11.not, label %fib_rule_match.exit.for.inc_crit_edge, label %if.end13

fib_rule_match.exit.for.inc_crit_edge:            ; preds = %fib_rule_match.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end13:                                         ; preds = %fib_rule_match.exit
  %action = getelementptr inbounds %struct.fib_rule, ptr %rule.1, i32 0, i32 7
  %34 = ptrtoint ptr %action to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %action, align 8
  %36 = zext i8 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values)
  switch i8 %35, label %if.else43 [
    i8 2, label %if.then16
    i8 3, label %if.end13.for.inc_crit_edge
  ]

if.end13.for.inc_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then16:                                        ; preds = %if.end13
  %ctarget = getelementptr inbounds %struct.fib_rule, ptr %rule.1, i32 0, i32 13
  %37 = ptrtoint ptr %ctarget to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile ptr, ptr %ctarget, align 8
  %call22 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %land.lhs.true24, label %if.then16.do.end32_crit_edge

if.then16.do.end32_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end32

land.lhs.true24:                                  ; preds = %if.then16
  %call25 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %land.lhs.true24.do.end32_crit_edge, label %land.lhs.true27

land.lhs.true24.do.end32_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end32

land.lhs.true27:                                  ; preds = %land.lhs.true24
  %.b105106 = load i1, ptr @fib_rules_lookup.__warned.2, align 1
  br i1 %.b105106, label %land.lhs.true27.do.end32_crit_edge, label %if.then29

land.lhs.true27.do.end32_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end32

if.then29:                                        ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @fib_rules_lookup.__warned.2, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 308, ptr noundef nonnull @.str.3) #11
  br label %do.end32

do.end32:                                         ; preds = %if.then29, %land.lhs.true27.do.end32_crit_edge, %land.lhs.true24.do.end32_crit_edge, %if.then16.do.end32_crit_edge
  %cmp34 = icmp eq ptr %38, null
  br i1 %cmp34, label %do.end32.for.inc_crit_edge, label %do.end32.jumped.backedge_crit_edge

do.end32.jumped.backedge_crit_edge:               ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %jumped.backedge

do.end32.for.inc_crit_edge:                       ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

jumped.backedge:                                  ; preds = %for.inc.jumped.backedge_crit_edge, %do.end32.jumped.backedge_crit_edge
  %rule.1.be = phi ptr [ %38, %do.end32.jumped.backedge_crit_edge ], [ %rule.0, %for.inc.jumped.backedge_crit_edge ]
  br label %jumped

if.else43:                                        ; preds = %if.end13
  %39 = ptrtoint ptr %action44 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %action44, align 4
  %call45 = tail call i32 %40(ptr noundef %rule.1, ptr noundef %fl, i32 noundef %flags, ptr noundef %arg) #11
  %41 = zext i32 %call45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %call45, label %if.else43.if.then59_crit_edge [
    i32 0, label %land.lhs.true49
    i32 -11, label %if.else43.for.inc_crit_edge
  ]

if.else43.for.inc_crit_edge:                      ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.else43.if.then59_crit_edge:                    ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then59

land.lhs.true49:                                  ; preds = %if.else43
  %42 = ptrtoint ptr %suppress to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %suppress, align 4
  %tobool50.not = icmp eq ptr %43, null
  br i1 %tobool50.not, label %land.lhs.true49.if.then59_crit_edge, label %land.lhs.true51

land.lhs.true49.if.then59_crit_edge:              ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then59

land.lhs.true51:                                  ; preds = %land.lhs.true49
  %call53 = tail call zeroext i1 %43(ptr noundef %rule.1, i32 noundef %flags, ptr noundef %arg) #11
  br i1 %call53, label %land.lhs.true51.for.inc_crit_edge, label %land.lhs.true51.if.then59_crit_edge

land.lhs.true51.if.then59_crit_edge:              ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then59

land.lhs.true51.for.inc_crit_edge:                ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then59:                                        ; preds = %land.lhs.true51.if.then59_crit_edge, %land.lhs.true49.if.then59_crit_edge, %if.else43.if.then59_crit_edge
  %flags60 = getelementptr inbounds %struct.fib_lookup_arg, ptr %arg, i32 0, i32 5
  %44 = ptrtoint ptr %flags60 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flags60, align 4
  %and = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool61.not = icmp eq i32 %and, 0
  br i1 %tobool61.not, label %lor.lhs.false, label %if.then59.if.then65_crit_edge

if.then59.if.then65_crit_edge:                    ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then65

lor.lhs.false:                                    ; preds = %if.then59
  %refcnt = getelementptr inbounds %struct.fib_rule, ptr %rule.1, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #11
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt, i32 noundef 4) #11
  %46 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %refcnt, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %lor.lhs.false
  %48 = phi i32 [ %47, %lor.lhs.false ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %49 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.i.i.i = icmp eq i32 %48, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i111 = add i32 %48, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #11
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #11
  %50 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #11
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %52 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 %51, i32 %add.i.i.i111, ptr elementtype(i32) %refcnt) #11, !srcloc !139
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %52, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %52, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %51
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !136

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %53 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %54, 1
  %55 = or i32 %add5.i.i.i, %54
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %55)
  %.not.i.i.i = icmp sgt i32 %55, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !136

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 0) #11
  %56 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %.pr = load i32, ptr %old.i.i.i, align 4
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %57 = phi i32 [ %54, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool12.i.i.i.not = icmp eq i32 %57, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #11
  br i1 %tobool12.i.i.i.not, label %refcount_inc_not_zero.exit.out_crit_edge, label %refcount_inc_not_zero.exit.if.then65_crit_edge, !prof !140

refcount_inc_not_zero.exit.if.then65_crit_edge:   ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then65

refcount_inc_not_zero.exit.out_crit_edge:         ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then65:                                        ; preds = %refcount_inc_not_zero.exit.if.then65_crit_edge, %if.then59.if.then65_crit_edge
  %rule66 = getelementptr inbounds %struct.fib_lookup_arg, ptr %arg, i32 0, i32 3
  %58 = ptrtoint ptr %rule66 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %rule.1, ptr %rule66, align 4
  br label %out

for.inc:                                          ; preds = %land.lhs.true51.for.inc_crit_edge, %if.else43.for.inc_crit_edge, %do.end32.for.inc_crit_edge, %if.end13.for.inc_crit_edge, %fib_rule_match.exit.for.inc_crit_edge
  %59 = ptrtoint ptr %rule.1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %rule.0 = load volatile ptr, ptr %rule.1, align 4
  %cmp.not = icmp eq ptr %rule.0, %rules_list
  br i1 %cmp.not, label %for.inc.out_crit_edge, label %for.inc.jumped.backedge_crit_edge

for.inc.jumped.backedge_crit_edge:                ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %jumped.backedge

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

out:                                              ; preds = %for.inc.out_crit_edge, %if.then65, %refcount_inc_not_zero.exit.out_crit_edge, %do.end.out_crit_edge
  %err.0 = phi i32 [ %call45, %if.then65 ], [ -3, %refcount_inc_not_zero.exit.out_crit_edge ], [ -3, %do.end.out_crit_edge ], [ -3, %for.inc.out_crit_edge ]
  %call.i112 = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i112, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i115

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i115:                               ; preds = %out
  %call1.i113 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i113)
  %tobool.not.i114 = icmp eq i32 %call1.i113, 0
  br i1 %tobool.not.i114, label %land.lhs.true.i115.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i117

land.lhs.true.i115.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i115
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i117:                              ; preds = %land.lhs.true.i115
  %.b4.i116 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i116, label %land.lhs.true2.i117.rcu_read_unlock.exit_crit_edge, label %if.then.i118

land.lhs.true2.i117.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i117
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i118:                                     ; preds = %land.lhs.true2.i117
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.14) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i118, %land.lhs.true2.i117.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i115.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !141
  %60 = call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i.i.i.i.i119 = and i32 %60, -16384
  %61 = inttoptr i32 %and.i.i.i.i.i119 to ptr
  %preempt_count.i.i.i.i120 = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %preempt_count.i.i.i.i120 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %preempt_count.i.i.i.i120, align 4
  %sub.i.i.i = add i32 %63, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i120, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fib_rules_dump(ptr noundef %net, ptr noundef %nb, i32 noundef %family, ptr noundef %extack) #1 align 64 {
entry:
  %info.i = alloca %struct.fib_rule_notifier_info, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @lookup_rules_ops(ptr noundef %net, i32 noundef %family)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %entry
  %call1 = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true:                                    ; preds = %do.body
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true5

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b36 = load i1, ptr @fib_rules_dump.__warned, align 1
  br i1 %.b36, label %land.lhs.true5.do.end_crit_edge, label %if.then7

land.lhs.true5.do.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then7:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @fib_rules_dump.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 388, ptr noundef nonnull @.str.1) #11
  br label %do.end

do.end:                                           ; preds = %if.then7, %land.lhs.true5.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %do.body.do.end_crit_edge
  %rules_list = getelementptr inbounds %struct.fib_rules_ops, ptr %call, i32 0, i32 17
  %0 = getelementptr inbounds %struct.fib_notifier_info, ptr %info.i, i32 0, i32 1
  %1 = getelementptr inbounds %struct.fib_rule_notifier_info, ptr %info.i, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %do.end
  %rule.0.in = phi ptr [ %rules_list, %do.end ], [ %rule.0, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %rule.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %rule.0 = load volatile ptr, ptr %rule.0.in, align 4
  %cmp.not = icmp eq ptr %rule.0, %rules_list
  br i1 %cmp.not, label %for.cond.rules_ops_put.exit_crit_edge, label %for.body

for.cond.rules_ops_put.exit_crit_edge:            ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %rules_ops_put.exit

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %info.i) #11
  %3 = ptrtoint ptr %info.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %family, ptr %info.i, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %extack, ptr %0, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %rule.0, ptr %1, align 4
  %call.i = call i32 @call_fib_notifier(ptr noundef %nb, i32 noundef 4, ptr noundef nonnull %info.i) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %info.i) #11
  %tobool15.not = icmp eq i32 %call.i, 0
  br i1 %tobool15.not, label %for.body.for.cond_crit_edge, label %for.body.rules_ops_put.exit_crit_edge

for.body.rules_ops_put.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %rules_ops_put.exit

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

rules_ops_put.exit:                               ; preds = %for.body.rules_ops_put.exit_crit_edge, %for.cond.rules_ops_put.exit_crit_edge
  %err.1 = phi i32 [ %call.i, %for.body.rules_ops_put.exit_crit_edge ], [ 0, %for.cond.rules_ops_put.exit_crit_edge ]
  %owner.i = getelementptr inbounds %struct.fib_rules_ops, ptr %call, i32 0, i32 18
  %6 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %owner.i, align 4
  call void @module_put(ptr noundef %7) #11
  br label %cleanup

cleanup:                                          ; preds = %rules_ops_put.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %rules_ops_put.exit ], [ -97, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @lookup_rules_ops(ptr noundef %net, i32 noundef %family) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !138
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 696, ptr noundef nonnull @.str.13) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b31 = load i1, ptr @lookup_rules_ops.__warned, align 1
  br i1 %.b31, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @lookup_rules_ops.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 109, ptr noundef nonnull @.str.1) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %rules_ops = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 28
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %do.end
  %.pn.in = phi ptr [ %rules_ops, %do.end ], [ %.pn, %for.body.for.cond_crit_edge ]
  %4 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load volatile ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %rules_ops
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %ops.0 = getelementptr i8, ptr %.pn, i32 -4
  %5 = ptrtoint ptr %ops.0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ops.0, align 4
  %cmp11 = icmp eq i32 %6, %family
  br i1 %cmp11, label %if.then12, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

if.then12:                                        ; preds = %for.body
  %ops.0.le = getelementptr i8, ptr %.pn, i32 -4
  %owner = getelementptr i8, ptr %.pn, i32 76
  %7 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %owner, align 4
  %call13 = tail call zeroext i1 @try_module_get(ptr noundef %8) #11
  %spec.select = select i1 %call13, ptr %ops.0.le, ptr null
  %call.i32 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i32, label %if.then12.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i35

if.then12.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i35:                                ; preds = %if.then12
  %call1.i33 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i33)
  %tobool.not.i34 = icmp eq i32 %call1.i33, 0
  br i1 %tobool.not.i34, label %land.lhs.true.i35.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i37

land.lhs.true.i35.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i35
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i37:                               ; preds = %land.lhs.true.i35
  %.b4.i36 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i36, label %land.lhs.true2.i37.rcu_read_unlock.exit_crit_edge, label %if.then.i38

land.lhs.true2.i37.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i37
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i38:                                      ; preds = %land.lhs.true2.i37
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.14) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i38, %land.lhs.true2.i37.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i35.rcu_read_unlock.exit_crit_edge, %if.then12.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !141
  br label %cleanup

for.end:                                          ; preds = %for.cond
  %call.i41 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i41, label %for.end.rcu_read_unlock.exit51_crit_edge, label %land.lhs.true.i44

for.end.rcu_read_unlock.exit51_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit51

land.lhs.true.i44:                                ; preds = %for.end
  %call1.i42 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i42)
  %tobool.not.i43 = icmp eq i32 %call1.i42, 0
  br i1 %tobool.not.i43, label %land.lhs.true.i44.rcu_read_unlock.exit51_crit_edge, label %land.lhs.true2.i46

land.lhs.true.i44.rcu_read_unlock.exit51_crit_edge: ; preds = %land.lhs.true.i44
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit51

land.lhs.true2.i46:                               ; preds = %land.lhs.true.i44
  %.b4.i45 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i45, label %land.lhs.true2.i46.rcu_read_unlock.exit51_crit_edge, label %if.then.i47

land.lhs.true2.i46.rcu_read_unlock.exit51_crit_edge: ; preds = %land.lhs.true2.i46
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit51

if.then.i47:                                      ; preds = %land.lhs.true2.i46
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.14) #11
  br label %rcu_read_unlock.exit51

rcu_read_unlock.exit51:                           ; preds = %if.then.i47, %land.lhs.true2.i46.rcu_read_unlock.exit51_crit_edge, %land.lhs.true.i44.rcu_read_unlock.exit51_crit_edge, %for.end.rcu_read_unlock.exit51_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !141
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit51, %rcu_read_unlock.exit
  %retval.0 = phi ptr [ %spec.select, %rcu_read_unlock.exit ], [ null, %rcu_read_unlock.exit51 ]
  %9 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i.i.i.i.i48 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i48 to ptr
  %preempt_count.i.i.i.i49 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i49 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i49, align 4
  %sub.i.i.i50 = add i32 %12, -1
  store volatile i32 %sub.i.i.i50, ptr %preempt_count.i.i.i.i49, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fib_rules_seq_read(ptr noundef %net, i32 noundef %family) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_is_locked() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b47 = load i1, ptr @fib_rules_seq_read.__already_done, align 1
  br i1 %.b47, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !136

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @fib_rules_seq_read.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 405, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str, i32 noundef 405) #11
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %call37 = tail call fastcc ptr @lookup_rules_ops(ptr noundef %net, i32 noundef %family)
  %tobool38.not = icmp eq ptr %call37, null
  br i1 %tobool38.not, label %if.end29.cleanup_crit_edge, label %rules_ops_put.exit

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

rules_ops_put.exit:                               ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  %fib_rules_seq41 = getelementptr inbounds %struct.fib_rules_ops, ptr %call37, i32 0, i32 6
  %0 = ptrtoint ptr %fib_rules_seq41 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fib_rules_seq41, align 4
  %owner.i = getelementptr inbounds %struct.fib_rules_ops, ptr %call37, i32 0, i32 18
  %2 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %owner.i, align 4
  tail call void @module_put(ptr noundef %3) #11
  br label %cleanup

cleanup:                                          ; preds = %rules_ops_put.exit, %if.end29.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %rules_ops_put.exit ], [ 0, %if.end29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fib_nl_newrule(ptr noundef %skb, ptr noundef %nlh, ptr noundef %extack) #1 align 64 {
entry:
  %info.i = alloca %struct.fib_rule_notifier_info, align 4
  %rule = alloca ptr, align 4
  %tb = alloca [25 x ptr], align 4
  %user_priority = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  %add.ptr.i = getelementptr i8, ptr %nlh, i32 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rule) #11
  %5 = ptrtoint ptr %rule to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %rule, align 4
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %tb) #11
  %6 = call ptr @memset(ptr %tb, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %user_priority) #11
  %7 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nlh, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %8)
  %cmp = icmp ult i32 %8, 28
  br i1 %cmp, label %do.body, label %if.end4

do.body:                                          ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib_nl_newrule.__msg) #11
  %tobool.not = icmp eq ptr %extack, null
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %if.then3

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @fib_nl_newrule.__msg, ptr %extack, align 4
  br label %cleanup

if.end4:                                          ; preds = %entry
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %add.ptr.i, align 4
  %conv = zext i8 %11 to i32
  %call5 = tail call fastcc ptr @lookup_rules_ops(ptr noundef %4, i32 noundef %conv)
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.then7, label %if.end16

if.then7:                                         ; preds = %if.end4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib_nl_newrule.__msg.5) #11
  %tobool10.not = icmp eq ptr %extack, null
  br i1 %tobool10.not, label %if.then7.cleanup_crit_edge, label %if.then11

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then11:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @fib_nl_newrule.__msg.5, ptr %extack, align 4
  br label %cleanup

if.end16:                                         ; preds = %if.end4
  %13 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nlh, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %14)
  %cmp.i.i = icmp ult i32 %14, 28
  br i1 %cmp.i.i, label %do.body.i.i, label %nlmsg_parse_deprecated.exit

do.body.i.i:                                      ; preds = %if.end16
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nlmsg_parse.__msg) #11
  %tobool.not.i.i = icmp eq ptr %extack, null
  br i1 %tobool.not.i.i, label %do.body21.thread, label %do.body21.thread323

do.body21.thread:                                 ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib_nl_newrule.__msg.6) #11
  br label %if.then.i301

do.body21.thread323:                              ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @__nlmsg_parse.__msg, ptr %extack, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib_nl_newrule.__msg.6) #11
  br label %if.then24

nlmsg_parse_deprecated.exit:                      ; preds = %if.end16
  %add.ptr.i.i.i = getelementptr i8, ptr %nlh, i32 28
  %sub1.i.i.i = add i32 %14, -28
  %call5.i.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 24, ptr noundef %add.ptr.i.i.i, i32 noundef %sub1.i.i.i, ptr noundef nonnull @fib_rule_policy, i32 noundef 0, ptr noundef %extack) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %cmp18 = icmp slt i32 %call5.i.i, 0
  br i1 %cmp18, label %do.body21, label %if.end29

do.body21:                                        ; preds = %nlmsg_parse_deprecated.exit
  call void @do_trace_netlink_extack(ptr noundef nonnull @fib_nl_newrule.__msg.6) #11
  %tobool23.not = icmp eq ptr %extack, null
  br i1 %tobool23.not, label %do.body21.if.then.i301_crit_edge, label %do.body21.if.then24_crit_edge

do.body21.if.then24_crit_edge:                    ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then24

do.body21.if.then.i301_crit_edge:                 ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i301

if.then24:                                        ; preds = %do.body21.if.then24_crit_edge, %do.body21.thread323
  %retval.0.i.i306326 = phi i32 [ -22, %do.body21.thread323 ], [ %call5.i.i, %do.body21.if.then24_crit_edge ]
  %16 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @fib_nl_newrule.__msg.6, ptr %extack, align 4
  br label %if.then.i301

if.end29:                                         ; preds = %nlmsg_parse_deprecated.exit
  %call31 = call fastcc i32 @fib_nl2rule(ptr noundef %skb, ptr noundef %nlh, ptr noundef %extack, ptr noundef nonnull %call5, ptr noundef nonnull %tb, ptr noundef nonnull %rule, ptr noundef nonnull %user_priority)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.end29.if.then.i301_crit_edge

if.end29.if.then.i301_crit_edge:                  ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i301

if.end34:                                         ; preds = %if.end29
  %nlmsg_flags = getelementptr inbounds %struct.nlmsghdr, ptr %nlh, i32 0, i32 2
  %17 = ptrtoint ptr %nlmsg_flags to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %nlmsg_flags, align 2
  %19 = and i16 %18, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool36.not = icmp eq i16 %19, 0
  br i1 %tobool36.not, label %if.end34.if.end41_crit_edge, label %land.lhs.true

if.end34.if.end41_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

land.lhs.true:                                    ; preds = %if.end34
  %rules_list.i = getelementptr inbounds %struct.fib_rules_ops, ptr %call5, i32 0, i32 17
  %compare.i = getelementptr inbounds %struct.fib_rules_ops, ptr %call5, i32 0, i32 12
  %20 = ptrtoint ptr %rules_list.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %r.0158.i = load ptr, ptr %rules_list.i, align 4
  %cmp.not159.i = icmp eq ptr %r.0158.i, %rules_list.i
  br i1 %cmp.not159.i, label %land.lhs.true.if.end41_crit_edge, label %for.body.lr.ph.i

land.lhs.true.if.end41_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

for.body.lr.ph.i:                                 ; preds = %land.lhs.true
  %21 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rule, align 4
  %action2.i = getelementptr inbounds %struct.fib_rule, ptr %22, i32 0, i32 7
  %table6.i = getelementptr inbounds %struct.fib_rule, ptr %22, i32 0, i32 6
  %pref11.i = getelementptr inbounds %struct.fib_rule, ptr %22, i32 0, i32 16
  %iifname16.i = getelementptr inbounds %struct.fib_rule, ptr %22, i32 0, i32 19
  %oifname21.i = getelementptr inbounds %struct.fib_rule, ptr %22, i32 0, i32 20
  %mark27.i = getelementptr inbounds %struct.fib_rule, ptr %22, i32 0, i32 3
  %suppress_ifgroup32.i = getelementptr inbounds %struct.fib_rule, ptr %22, i32 0, i32 17
  %suppress_prefixlen37.i = getelementptr inbounds %struct.fib_rule, ptr %22, i32 0, i32 18
  %mark_mask42.i = getelementptr inbounds %struct.fib_rule, ptr %22, i32 0, i32 4
  %tun_id47.i = getelementptr inbounds %struct.fib_rule, ptr %22, i32 0, i32 12
  %fr_net52.i = getelementptr inbounds %struct.fib_rule, ptr %22, i32 0, i32 14
  %l3mdev58.i = getelementptr inbounds %struct.fib_rule, ptr %22, i32 0, i32 8
  %uid_range64.i = getelementptr inbounds %struct.fib_rule, ptr %22, i32 0, i32 21
  %end70.i = getelementptr inbounds %struct.fib_rule, ptr %22, i32 0, i32 21, i32 1
  %ip_proto77.i = getelementptr inbounds %struct.fib_rule, ptr %22, i32 0, i32 10
  %proto84.i = getelementptr inbounds %struct.fib_rule, ptr %22, i32 0, i32 9
  %sport_range90.i = getelementptr inbounds %struct.fib_rule, ptr %22, i32 0, i32 22
  %end5.i.i = getelementptr inbounds %struct.fib_rule, ptr %22, i32 0, i32 22, i32 1
  %dport_range94.i = getelementptr inbounds %struct.fib_rule, ptr %22, i32 0, i32 23
  %end5.i154.i = getelementptr inbounds %struct.fib_rule, ptr %22, i32 0, i32 23, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %r.0160.i = phi ptr [ %r.0158.i, %for.body.lr.ph.i ], [ %r.0.i, %for.inc.i.for.body.i_crit_edge ]
  %action.i = getelementptr inbounds %struct.fib_rule, ptr %r.0160.i, i32 0, i32 7
  %23 = ptrtoint ptr %action.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %action.i, align 8
  %25 = ptrtoint ptr %action2.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %action2.i, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %24, i8 %26)
  %cmp4.not.i = icmp eq i8 %24, %26
  br i1 %cmp4.not.i, label %if.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %table.i = getelementptr inbounds %struct.fib_rule, ptr %r.0160.i, i32 0, i32 6
  %27 = ptrtoint ptr %table.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %table.i, align 4
  %29 = ptrtoint ptr %table6.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %table6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp7.not.i = icmp eq i32 %28, %30
  br i1 %cmp7.not.i, label %if.end10.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end10.i:                                       ; preds = %if.end.i
  %pref.i = getelementptr inbounds %struct.fib_rule, ptr %r.0160.i, i32 0, i32 16
  %31 = ptrtoint ptr %pref.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pref.i, align 4
  %33 = ptrtoint ptr %pref11.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pref11.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp12.not.i = icmp eq i32 %32, %34
  br i1 %cmp12.not.i, label %if.end15.i, label %if.end10.i.for.inc.i_crit_edge

if.end10.i.for.inc.i_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end15.i:                                       ; preds = %if.end10.i
  %iifname.i = getelementptr inbounds %struct.fib_rule, ptr %r.0160.i, i32 0, i32 19
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(16) %iifname.i, ptr noundef dereferenceable(16) %iifname16.i, i32 16) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %if.end19.i, label %if.end15.i.for.inc.i_crit_edge

if.end15.i.for.inc.i_crit_edge:                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end19.i:                                       ; preds = %if.end15.i
  %oifname.i = getelementptr inbounds %struct.fib_rule, ptr %r.0160.i, i32 0, i32 20
  %bcmp146.i = call i32 @bcmp(ptr noundef dereferenceable(16) %oifname.i, ptr noundef dereferenceable(16) %oifname21.i, i32 16) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp146.i)
  %tobool24.not.i = icmp eq i32 %bcmp146.i, 0
  br i1 %tobool24.not.i, label %if.end26.i, label %if.end19.i.for.inc.i_crit_edge

if.end19.i.for.inc.i_crit_edge:                   ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end26.i:                                       ; preds = %if.end19.i
  %mark.i = getelementptr inbounds %struct.fib_rule, ptr %r.0160.i, i32 0, i32 3
  %35 = ptrtoint ptr %mark.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mark.i, align 8
  %37 = ptrtoint ptr %mark27.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mark27.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %38)
  %cmp28.not.i = icmp eq i32 %36, %38
  br i1 %cmp28.not.i, label %if.end31.i, label %if.end26.i.for.inc.i_crit_edge

if.end26.i.for.inc.i_crit_edge:                   ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end31.i:                                       ; preds = %if.end26.i
  %suppress_ifgroup.i = getelementptr inbounds %struct.fib_rule, ptr %r.0160.i, i32 0, i32 17
  %39 = ptrtoint ptr %suppress_ifgroup.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %suppress_ifgroup.i, align 8
  %41 = ptrtoint ptr %suppress_ifgroup32.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %suppress_ifgroup32.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %42)
  %cmp33.not.i = icmp eq i32 %40, %42
  br i1 %cmp33.not.i, label %if.end36.i, label %if.end31.i.for.inc.i_crit_edge

if.end31.i.for.inc.i_crit_edge:                   ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end36.i:                                       ; preds = %if.end31.i
  %suppress_prefixlen.i = getelementptr inbounds %struct.fib_rule, ptr %r.0160.i, i32 0, i32 18
  %43 = ptrtoint ptr %suppress_prefixlen.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %suppress_prefixlen.i, align 4
  %45 = ptrtoint ptr %suppress_prefixlen37.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %suppress_prefixlen37.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %46)
  %cmp38.not.i = icmp eq i32 %44, %46
  br i1 %cmp38.not.i, label %if.end41.i, label %if.end36.i.for.inc.i_crit_edge

if.end36.i.for.inc.i_crit_edge:                   ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end41.i:                                       ; preds = %if.end36.i
  %mark_mask.i = getelementptr inbounds %struct.fib_rule, ptr %r.0160.i, i32 0, i32 4
  %47 = ptrtoint ptr %mark_mask.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %mark_mask.i, align 4
  %49 = ptrtoint ptr %mark_mask42.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %mark_mask42.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %50)
  %cmp43.not.i = icmp eq i32 %48, %50
  br i1 %cmp43.not.i, label %if.end46.i, label %if.end41.i.for.inc.i_crit_edge

if.end41.i.for.inc.i_crit_edge:                   ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end46.i:                                       ; preds = %if.end41.i
  %tun_id.i = getelementptr inbounds %struct.fib_rule, ptr %r.0160.i, i32 0, i32 12
  %51 = ptrtoint ptr %tun_id.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %tun_id.i, align 8
  %53 = ptrtoint ptr %tun_id47.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %tun_id47.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %52, i64 %54)
  %cmp48.not.i = icmp eq i64 %52, %54
  br i1 %cmp48.not.i, label %if.end51.i, label %if.end46.i.for.inc.i_crit_edge

if.end46.i.for.inc.i_crit_edge:                   ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end51.i:                                       ; preds = %if.end46.i
  %fr_net.i = getelementptr inbounds %struct.fib_rule, ptr %r.0160.i, i32 0, i32 14
  %55 = ptrtoint ptr %fr_net.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %fr_net.i, align 4
  %57 = ptrtoint ptr %fr_net52.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %fr_net52.i, align 4
  %cmp53.not.i = icmp eq ptr %56, %58
  br i1 %cmp53.not.i, label %if.end56.i, label %if.end51.i.for.inc.i_crit_edge

if.end51.i.for.inc.i_crit_edge:                   ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end56.i:                                       ; preds = %if.end51.i
  %l3mdev.i = getelementptr inbounds %struct.fib_rule, ptr %r.0160.i, i32 0, i32 8
  %59 = ptrtoint ptr %l3mdev.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %l3mdev.i, align 1
  %61 = ptrtoint ptr %l3mdev58.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %l3mdev58.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %60, i8 %62)
  %cmp60.not.i = icmp eq i8 %60, %62
  br i1 %cmp60.not.i, label %if.end63.i, label %if.end56.i.for.inc.i_crit_edge

if.end56.i.for.inc.i_crit_edge:                   ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end63.i:                                       ; preds = %if.end56.i
  %uid_range.i = getelementptr inbounds %struct.fib_rule, ptr %r.0160.i, i32 0, i32 21
  %63 = ptrtoint ptr %uid_range.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %.unpack.i = load i32, ptr %uid_range.i, align 8
  %64 = ptrtoint ptr %uid_range64.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %.unpack147.i = load i32, ptr %uid_range64.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack.i, i32 %.unpack147.i)
  %cmp.i.i293 = icmp eq i32 %.unpack.i, %.unpack147.i
  br i1 %cmp.i.i293, label %lor.lhs.false.i, label %if.end63.i.for.inc.i_crit_edge

if.end63.i.for.inc.i_crit_edge:                   ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %if.end63.i
  %end.i = getelementptr inbounds %struct.fib_rule, ptr %r.0160.i, i32 0, i32 21, i32 1
  %65 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %.unpack148.i = load i32, ptr %end.i, align 4
  %66 = ptrtoint ptr %end70.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %.unpack149.i = load i32, ptr %end70.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack148.i, i32 %.unpack149.i)
  %cmp.i150.i = icmp eq i32 %.unpack148.i, %.unpack149.i
  br i1 %cmp.i150.i, label %if.end75.i, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end75.i:                                       ; preds = %lor.lhs.false.i
  %ip_proto.i = getelementptr inbounds %struct.fib_rule, ptr %r.0160.i, i32 0, i32 10
  %67 = ptrtoint ptr %ip_proto.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %ip_proto.i, align 1
  %69 = ptrtoint ptr %ip_proto77.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %ip_proto77.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %68, i8 %70)
  %cmp79.not.i = icmp eq i8 %68, %70
  br i1 %cmp79.not.i, label %if.end82.i, label %if.end75.i.for.inc.i_crit_edge

if.end75.i.for.inc.i_crit_edge:                   ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end82.i:                                       ; preds = %if.end75.i
  %proto.i = getelementptr inbounds %struct.fib_rule, ptr %r.0160.i, i32 0, i32 9
  %71 = ptrtoint ptr %proto.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %proto.i, align 2
  %73 = ptrtoint ptr %proto84.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %proto84.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %72, i8 %74)
  %cmp86.not.i = icmp eq i8 %72, %74
  br i1 %cmp86.not.i, label %if.end89.i, label %if.end82.i.for.inc.i_crit_edge

if.end82.i.for.inc.i_crit_edge:                   ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end89.i:                                       ; preds = %if.end82.i
  %sport_range.i = getelementptr inbounds %struct.fib_rule, ptr %r.0160.i, i32 0, i32 22
  %75 = ptrtoint ptr %sport_range.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %sport_range.i, align 2
  %77 = ptrtoint ptr %sport_range90.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %sport_range90.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %76, i16 %78)
  %cmp.i151.i = icmp eq i16 %76, %78
  br i1 %cmp.i151.i, label %fib_rule_port_range_compare.exit.i, label %if.end89.i.for.inc.i_crit_edge

if.end89.i.for.inc.i_crit_edge:                   ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

fib_rule_port_range_compare.exit.i:               ; preds = %if.end89.i
  %end.i.i = getelementptr inbounds %struct.fib_rule, ptr %r.0160.i, i32 0, i32 22, i32 1
  %79 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %end.i.i, align 2
  %81 = ptrtoint ptr %end5.i.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %end5.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %80, i16 %82)
  %cmp7.i.i = icmp eq i16 %80, %82
  br i1 %cmp7.i.i, label %if.end93.i, label %fib_rule_port_range_compare.exit.i.for.inc.i_crit_edge

fib_rule_port_range_compare.exit.i.for.inc.i_crit_edge: ; preds = %fib_rule_port_range_compare.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end93.i:                                       ; preds = %fib_rule_port_range_compare.exit.i
  %dport_range.i = getelementptr inbounds %struct.fib_rule, ptr %r.0160.i, i32 0, i32 23
  %83 = ptrtoint ptr %dport_range.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %dport_range.i, align 2
  %85 = ptrtoint ptr %dport_range94.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %dport_range94.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %84, i16 %86)
  %cmp.i152.i = icmp eq i16 %84, %86
  br i1 %cmp.i152.i, label %fib_rule_port_range_compare.exit157.i, label %if.end93.i.for.inc.i_crit_edge

if.end93.i.for.inc.i_crit_edge:                   ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

fib_rule_port_range_compare.exit157.i:            ; preds = %if.end93.i
  %end.i153.i = getelementptr inbounds %struct.fib_rule, ptr %r.0160.i, i32 0, i32 23, i32 1
  %87 = ptrtoint ptr %end.i153.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %end.i153.i, align 2
  %89 = ptrtoint ptr %end5.i154.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %end5.i154.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %88, i16 %90)
  %cmp7.i155.i = icmp eq i16 %88, %90
  br i1 %cmp7.i155.i, label %if.end97.i, label %fib_rule_port_range_compare.exit157.i.for.inc.i_crit_edge

fib_rule_port_range_compare.exit157.i.for.inc.i_crit_edge: ; preds = %fib_rule_port_range_compare.exit157.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end97.i:                                       ; preds = %fib_rule_port_range_compare.exit157.i
  %91 = ptrtoint ptr %compare.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %compare.i, align 4
  %call98.i = call i32 %92(ptr noundef %r.0160.i, ptr noundef %add.ptr.i, ptr noundef nonnull %tb) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98.i)
  %tobool99.not.i = icmp eq i32 %call98.i, 0
  br i1 %tobool99.not.i, label %if.end97.i.for.inc.i_crit_edge, label %if.end97.i.errout_crit_edge

if.end97.i.errout_crit_edge:                      ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %errout

if.end97.i.for.inc.i_crit_edge:                   ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end97.i.for.inc.i_crit_edge, %fib_rule_port_range_compare.exit157.i.for.inc.i_crit_edge, %if.end93.i.for.inc.i_crit_edge, %fib_rule_port_range_compare.exit.i.for.inc.i_crit_edge, %if.end89.i.for.inc.i_crit_edge, %if.end82.i.for.inc.i_crit_edge, %if.end75.i.for.inc.i_crit_edge, %lor.lhs.false.i.for.inc.i_crit_edge, %if.end63.i.for.inc.i_crit_edge, %if.end56.i.for.inc.i_crit_edge, %if.end51.i.for.inc.i_crit_edge, %if.end46.i.for.inc.i_crit_edge, %if.end41.i.for.inc.i_crit_edge, %if.end36.i.for.inc.i_crit_edge, %if.end31.i.for.inc.i_crit_edge, %if.end26.i.for.inc.i_crit_edge, %if.end19.i.for.inc.i_crit_edge, %if.end15.i.for.inc.i_crit_edge, %if.end10.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %93 = ptrtoint ptr %r.0160.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %r.0.i = load ptr, ptr %r.0160.i, align 4
  %cmp.not.i = icmp eq ptr %r.0.i, %rules_list.i
  br i1 %cmp.not.i, label %for.inc.i.if.end41_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.if.end41_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

if.end41:                                         ; preds = %for.inc.i.if.end41_crit_edge, %land.lhs.true.if.end41_crit_edge, %if.end34.if.end41_crit_edge
  %configure = getelementptr inbounds %struct.fib_rules_ops, ptr %call5, i32 0, i32 10
  %94 = ptrtoint ptr %configure to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %configure, align 4
  %96 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %rule, align 4
  %call43 = call i32 %95(ptr noundef %97, ptr noundef %skb, ptr noundef %add.ptr.i, ptr noundef nonnull %tb, ptr noundef %extack) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %if.end41.errout_crit_edge, label %if.end47

if.end41.errout_crit_edge:                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %errout

if.end47:                                         ; preds = %if.end41
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %info.i) #11
  %98 = getelementptr inbounds %struct.fib_notifier_info, ptr %info.i, i32 0, i32 1
  %99 = getelementptr inbounds %struct.fib_rule_notifier_info, ptr %info.i, i32 0, i32 1
  %100 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %call5, align 4
  %102 = ptrtoint ptr %info.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %info.i, align 4
  %103 = ptrtoint ptr %98 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %extack, ptr %98, align 4
  %104 = ptrtoint ptr %99 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %97, ptr %99, align 4
  %fib_rules_seq.i = getelementptr inbounds %struct.fib_rules_ops, ptr %call5, i32 0, i32 6
  %105 = ptrtoint ptr %fib_rules_seq.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %fib_rules_seq.i, align 4
  %inc.i = add i32 %106, 1
  store i32 %inc.i, ptr %fib_rules_seq.i, align 4
  %call.i = call i32 @call_fib_notifiers(ptr noundef %4, i32 noundef 4, ptr noundef nonnull %info.i) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %info.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp49 = icmp slt i32 %call.i, 0
  br i1 %cmp49, label %if.end47.errout_crit_edge, label %if.end52

if.end47.errout_crit_edge:                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  br label %errout

if.end52:                                         ; preds = %if.end47
  %rules_list = getelementptr inbounds %struct.fib_rules_ops, ptr %call5, i32 0, i32 17
  %target = getelementptr inbounds %struct.fib_rule, ptr %97, i32 0, i32 11
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end52
  %r.0.in = phi ptr [ %rules_list, %if.end52 ], [ %r.0, %for.body.for.cond_crit_edge ]
  %107 = ptrtoint ptr %r.0.in to i32
  call void @__asan_load4_noabort(i32 %107)
  %r.0 = load ptr, ptr %r.0.in, align 4
  %cmp54.not = icmp eq ptr %r.0, %rules_list
  br i1 %cmp54.not, label %for.cond.do.end79_crit_edge, label %for.body

for.cond.do.end79_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end79

for.body:                                         ; preds = %for.cond
  %pref = getelementptr inbounds %struct.fib_rule, ptr %r.0, i32 0, i32 16
  %108 = ptrtoint ptr %pref to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %pref, align 4
  %110 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %target, align 4
  %cmp56 = icmp eq i32 %109, %111
  br i1 %cmp56, label %do.body64, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

do.body64:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %ctarget = getelementptr inbounds %struct.fib_rule, ptr %97, i32 0, i32 13
  %112 = ptrtoint ptr %ctarget to i32
  call void @__asan_store4_noabort(i32 %112)
  store volatile ptr %r.0, ptr %ctarget, align 8
  br label %do.end79

do.end79:                                         ; preds = %do.body64, %for.cond.do.end79_crit_edge
  %ctarget81 = getelementptr inbounds %struct.fib_rule, ptr %97, i32 0, i32 13
  %113 = ptrtoint ptr %ctarget81 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %ctarget81, align 8
  %cmp82 = icmp eq ptr %114, null
  %115 = ptrtoint ptr %rules_list to i32
  call void @__asan_load4_noabort(i32 %115)
  %r.1328 = load ptr, ptr %rules_list, align 4
  %cmp94.not329 = icmp eq ptr %r.1328, %rules_list
  br i1 %cmp94.not329, label %do.end79.if.else_crit_edge, label %for.body97.lr.ph

do.end79.if.else_crit_edge:                       ; preds = %do.end79
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

for.body97.lr.ph:                                 ; preds = %do.end79
  %pref99 = getelementptr inbounds %struct.fib_rule, ptr %97, i32 0, i32 16
  %116 = ptrtoint ptr %pref99 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %pref99, align 4
  %pref98341 = getelementptr inbounds %struct.fib_rule, ptr %r.1328, i32 0, i32 16
  %118 = ptrtoint ptr %pref98341 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %pref98341, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %119, i32 %117)
  %cmp100342 = icmp ugt i32 %119, %117
  br i1 %cmp100342, label %for.body97.lr.ph.for.end110_crit_edge, label %for.body97.lr.ph.for.cond91_crit_edge

for.body97.lr.ph.for.cond91_crit_edge:            ; preds = %for.body97.lr.ph
  br label %for.cond91

for.body97.lr.ph.for.end110_crit_edge:            ; preds = %for.body97.lr.ph
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end110

for.cond91:                                       ; preds = %for.body97.for.cond91_crit_edge, %for.body97.lr.ph.for.cond91_crit_edge
  %r.1331343 = phi ptr [ %r.1, %for.body97.for.cond91_crit_edge ], [ %r.1328, %for.body97.lr.ph.for.cond91_crit_edge ]
  %120 = ptrtoint ptr %r.1331343 to i32
  call void @__asan_load4_noabort(i32 %120)
  %r.1 = load ptr, ptr %r.1331343, align 4
  %cmp94.not = icmp eq ptr %r.1, %rules_list
  br i1 %cmp94.not, label %for.cond91.for.end110_crit_edge, label %for.body97

for.cond91.for.end110_crit_edge:                  ; preds = %for.cond91
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end110

for.body97:                                       ; preds = %for.cond91
  %pref98 = getelementptr inbounds %struct.fib_rule, ptr %r.1, i32 0, i32 16
  %121 = ptrtoint ptr %pref98 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %pref98, align 4
  %cmp100 = icmp ugt i32 %122, %117
  br i1 %cmp100, label %for.body97.for.end110_crit_edge, label %for.body97.for.cond91_crit_edge

for.body97.for.cond91_crit_edge:                  ; preds = %for.body97
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond91

for.body97.for.end110_crit_edge:                  ; preds = %for.body97
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end110

for.end110:                                       ; preds = %for.body97.for.end110_crit_edge, %for.cond91.for.end110_crit_edge, %for.body97.lr.ph.for.end110_crit_edge
  %last.0.lcssa = phi ptr [ null, %for.body97.lr.ph.for.end110_crit_edge ], [ %r.1331343, %for.cond91.for.end110_crit_edge ], [ %r.1331343, %for.body97.for.end110_crit_edge ]
  %tobool111.not = icmp eq ptr %last.0.lcssa, null
  br i1 %tobool111.not, label %for.end110.if.else_crit_edge, label %if.then112

for.end110.if.else_crit_edge:                     ; preds = %for.end110
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then112:                                       ; preds = %for.end110
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @list_add_rcu(ptr noundef %97, ptr noundef nonnull %last.0.lcssa)
  br label %if.end117

if.else:                                          ; preds = %for.end110.if.else_crit_edge, %do.end79.if.else_crit_edge
  call fastcc void @list_add_rcu(ptr noundef %97, ptr noundef %rules_list)
  br label %if.end117

if.end117:                                        ; preds = %if.else, %if.then112
  %unresolved_rules = getelementptr inbounds %struct.fib_rules_ops, ptr %call5, i32 0, i32 4
  %123 = ptrtoint ptr %unresolved_rules to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %unresolved_rules, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool118.not = icmp eq i32 %124, 0
  br i1 %tobool118.not, label %if.end117.if.end211_crit_edge, label %for.cond125.preheader

if.end117.if.end211_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end211

for.cond125.preheader:                            ; preds = %if.end117
  %125 = ptrtoint ptr %rules_list to i32
  call void @__asan_load4_noabort(i32 %125)
  %r.2333 = load ptr, ptr %rules_list, align 4
  %cmp128.not334 = icmp eq ptr %r.2333, %rules_list
  br i1 %cmp128.not334, label %for.cond125.preheader.if.end211_crit_edge, label %for.body131.lr.ph

for.cond125.preheader.if.end211_crit_edge:        ; preds = %for.cond125.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end211

for.body131.lr.ph:                                ; preds = %for.cond125.preheader
  %pref137 = getelementptr inbounds %struct.fib_rule, ptr %97, i32 0, i32 16
  br label %for.body131

for.body131:                                      ; preds = %for.inc204.for.body131_crit_edge, %for.body131.lr.ph
  %r.2335 = phi ptr [ %r.2333, %for.body131.lr.ph ], [ %r.2, %for.inc204.for.body131_crit_edge ]
  %action = getelementptr inbounds %struct.fib_rule, ptr %r.2335, i32 0, i32 7
  %126 = ptrtoint ptr %action to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %action, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %127)
  %cmp133 = icmp eq i8 %127, 2
  br i1 %cmp133, label %land.lhs.true135, label %for.body131.for.inc204_crit_edge

for.body131.for.inc204_crit_edge:                 ; preds = %for.body131
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc204

land.lhs.true135:                                 ; preds = %for.body131
  %target136 = getelementptr inbounds %struct.fib_rule, ptr %r.2335, i32 0, i32 11
  %128 = ptrtoint ptr %target136 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %target136, align 4
  %130 = ptrtoint ptr %pref137 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %pref137, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %129, i32 %131)
  %cmp138 = icmp eq i32 %129, %131
  br i1 %cmp138, label %do.body141, label %land.lhs.true135.for.inc204_crit_edge

land.lhs.true135.for.inc204_crit_edge:            ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc204

do.body141:                                       ; preds = %land.lhs.true135
  %call142 = call zeroext i1 @lockdep_rtnl_is_held() #11
  br i1 %call142, label %do.body141.do.end151_crit_edge, label %land.lhs.true143

do.body141.do.end151_crit_edge:                   ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end151

land.lhs.true143:                                 ; preds = %do.body141
  %call144 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %tobool145.not = icmp eq i32 %call144, 0
  br i1 %tobool145.not, label %land.lhs.true143.do.end151_crit_edge, label %land.lhs.true146

land.lhs.true143.do.end151_crit_edge:             ; preds = %land.lhs.true143
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end151

land.lhs.true146:                                 ; preds = %land.lhs.true143
  %.b292 = load i1, ptr @fib_nl_newrule.__warned.7, align 1
  br i1 %.b292, label %land.lhs.true146.do.end151_crit_edge, label %if.then148

land.lhs.true146.do.end151_crit_edge:             ; preds = %land.lhs.true146
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end151

if.then148:                                       ; preds = %land.lhs.true146
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @fib_nl_newrule.__warned.7, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 852, ptr noundef nonnull @.str.8) #11
  br label %do.end151

do.end151:                                        ; preds = %if.then148, %land.lhs.true146.do.end151_crit_edge, %land.lhs.true143.do.end151_crit_edge, %do.body141.do.end151_crit_edge
  %ctarget153 = getelementptr inbounds %struct.fib_rule, ptr %r.2335, i32 0, i32 13
  %132 = ptrtoint ptr %ctarget153 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %ctarget153, align 8
  %cmp154 = icmp eq ptr %133, null
  br i1 %cmp154, label %do.body157, label %do.end151.for.inc204_crit_edge

do.end151.for.inc204_crit_edge:                   ; preds = %do.end151
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc204

do.body157:                                       ; preds = %do.end151
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !142
  %134 = ptrtoint ptr %ctarget153 to i32
  call void @__asan_store4_noabort(i32 %134)
  store volatile ptr %97, ptr %ctarget153, align 8
  %135 = ptrtoint ptr %unresolved_rules to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %unresolved_rules, align 4
  %dec = add i32 %136, -1
  store i32 %dec, ptr %unresolved_rules, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp199 = icmp eq i32 %dec, 0
  br i1 %cmp199, label %do.body157.if.end211_crit_edge, label %do.body157.for.inc204_crit_edge

do.body157.for.inc204_crit_edge:                  ; preds = %do.body157
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc204

do.body157.if.end211_crit_edge:                   ; preds = %do.body157
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end211

for.inc204:                                       ; preds = %do.body157.for.inc204_crit_edge, %do.end151.for.inc204_crit_edge, %land.lhs.true135.for.inc204_crit_edge, %for.body131.for.inc204_crit_edge
  %137 = ptrtoint ptr %r.2335 to i32
  call void @__asan_load4_noabort(i32 %137)
  %r.2 = load ptr, ptr %r.2335, align 4
  %cmp128.not = icmp eq ptr %r.2, %rules_list
  br i1 %cmp128.not, label %for.inc204.if.end211_crit_edge, label %for.inc204.for.body131_crit_edge

for.inc204.for.body131_crit_edge:                 ; preds = %for.inc204
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body131

for.inc204.if.end211_crit_edge:                   ; preds = %for.inc204
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end211

if.end211:                                        ; preds = %for.inc204.if.end211_crit_edge, %do.body157.if.end211_crit_edge, %for.cond125.preheader.if.end211_crit_edge, %if.end117.if.end211_crit_edge
  %action212 = getelementptr inbounds %struct.fib_rule, ptr %97, i32 0, i32 7
  %138 = ptrtoint ptr %action212 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %action212, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %139)
  %cmp214 = icmp eq i8 %139, 2
  br i1 %cmp214, label %if.then216, label %if.end211.if.end217_crit_edge

if.end211.if.end217_crit_edge:                    ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end217

if.then216:                                       ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #13
  %nr_goto_rules = getelementptr inbounds %struct.fib_rules_ops, ptr %call5, i32 0, i32 5
  %140 = ptrtoint ptr %nr_goto_rules to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %nr_goto_rules, align 4
  %inc = add i32 %141, 1
  store i32 %inc, ptr %nr_goto_rules, align 4
  br label %if.end217

if.end217:                                        ; preds = %if.then216, %if.end211.if.end217_crit_edge
  br i1 %cmp82, label %if.then219, label %if.end217.if.end222_crit_edge

if.end217.if.end222_crit_edge:                    ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end222

if.then219:                                       ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #13
  %142 = ptrtoint ptr %unresolved_rules to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %unresolved_rules, align 4
  %inc221 = add i32 %143, 1
  store i32 %inc221, ptr %unresolved_rules, align 4
  br label %if.end222

if.end222:                                        ; preds = %if.then219, %if.end217.if.end222_crit_edge
  %tun_id = getelementptr inbounds %struct.fib_rule, ptr %97, i32 0, i32 12
  %144 = ptrtoint ptr %tun_id to i32
  call void @__asan_load8_noabort(i32 %144)
  %145 = load i64, ptr %tun_id, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %145)
  %tobool223.not = icmp eq i64 %145, 0
  br i1 %tobool223.not, label %if.end222.if.end225_crit_edge, label %if.then224

if.end222.if.end225_crit_edge:                    ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end225

if.then224:                                       ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #13
  call void @ip_tunnel_need_metadata() #11
  br label %if.end225

if.end225:                                        ; preds = %if.then224, %if.end222.if.end225_crit_edge
  %portid = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %146 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %portid, align 4
  call fastcc void @notify_rule_change(i32 noundef 32, ptr noundef %97, ptr noundef nonnull %call5, ptr noundef %nlh, i32 noundef %147)
  %flush_cache.i = getelementptr inbounds %struct.fib_rules_ops, ptr %call5, i32 0, i32 15
  %148 = ptrtoint ptr %flush_cache.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %flush_cache.i, align 4
  %tobool.not.i294 = icmp eq ptr %149, null
  br i1 %tobool.not.i294, label %if.end225.rules_ops_put.exit_crit_edge, label %if.then.i

if.end225.rules_ops_put.exit_crit_edge:           ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #13
  br label %rules_ops_put.exit

if.then.i:                                        ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #13
  call void %149(ptr noundef nonnull %call5) #11
  br label %rules_ops_put.exit

rules_ops_put.exit:                               ; preds = %if.then.i, %if.end225.rules_ops_put.exit_crit_edge
  %owner.i = getelementptr inbounds %struct.fib_rules_ops, ptr %call5, i32 0, i32 18
  %150 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %owner.i, align 4
  call void @module_put(ptr noundef %151) #11
  br label %cleanup

errout:                                           ; preds = %if.end47.errout_crit_edge, %if.end41.errout_crit_edge, %if.end97.i.errout_crit_edge
  %err.0 = phi i32 [ %call43, %if.end41.errout_crit_edge ], [ %call.i, %if.end47.errout_crit_edge ], [ -17, %if.end97.i.errout_crit_edge ]
  %152 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %rule, align 4
  call void @kfree(ptr noundef %153) #11
  br label %if.then.i301

if.then.i301:                                     ; preds = %errout, %if.end29.if.then.i301_crit_edge, %if.then24, %do.body21.if.then.i301_crit_edge, %do.body21.thread
  %err.1319 = phi i32 [ %err.0, %errout ], [ %call5.i.i, %do.body21.if.then.i301_crit_edge ], [ %retval.0.i.i306326, %if.then24 ], [ %call31, %if.end29.if.then.i301_crit_edge ], [ -22, %do.body21.thread ]
  %owner.i300 = getelementptr inbounds %struct.fib_rules_ops, ptr %call5, i32 0, i32 18
  %154 = ptrtoint ptr %owner.i300 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %owner.i300, align 4
  call void @module_put(ptr noundef %155) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i301, %rules_ops_put.exit, %if.then11, %if.then7.cleanup_crit_edge, %if.then3, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %rules_ops_put.exit ], [ %err.1319, %if.then.i301 ], [ -97, %if.then7.cleanup_crit_edge ], [ -97, %if.then11 ], [ -22, %do.body.cleanup_crit_edge ], [ -22, %if.then3 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %user_priority) #11
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %tb) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rule) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fib_nl2rule(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %nlh, ptr noundef writeonly %extack, ptr noundef %ops, ptr nocapture noundef readonly %tb, ptr nocapture noundef writeonly %rule, ptr nocapture noundef writeonly %user_priority) unnamed_addr #1 align 64 {
entry:
  %tmp.i = alloca i64, align 8
  %tmp226 = alloca %struct.fib_kuid_range, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  %src_len = getelementptr i8, ptr %nlh, i32 18
  %5 = ptrtoint ptr %src_len to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %src_len, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %entry.if.end15_crit_edge, label %if.then

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr ptr, ptr %tb, i32 2
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %tobool2.not = icmp eq ptr %8, null
  br i1 %tobool2.not, label %if.then.do.body_crit_edge, label %lor.lhs.false

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

lor.lhs.false:                                    ; preds = %if.then
  %conv = zext i8 %6 to i32
  %addr_size = getelementptr inbounds %struct.fib_rules_ops, ptr %ops, i32 0, i32 3
  %9 = ptrtoint ptr %addr_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %addr_size, align 4
  %mul = shl i32 %10, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %conv)
  %cmp = icmp slt i32 %mul, %conv
  br i1 %cmp, label %lor.lhs.false.do.body_crit_edge, label %lor.lhs.false5

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %8, align 2
  %conv.i = zext i16 %12 to i32
  %sub.i = add nsw i32 %conv.i, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %10)
  %cmp9.not = icmp eq i32 %sub.i, %10
  br i1 %cmp9.not, label %lor.lhs.false5.if.end15_crit_edge, label %lor.lhs.false5.do.body_crit_edge

lor.lhs.false5.do.body_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

lor.lhs.false5.if.end15_crit_edge:                ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

do.body:                                          ; preds = %lor.lhs.false5.do.body_crit_edge, %lor.lhs.false.do.body_crit_edge, %if.then.do.body_crit_edge
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib_nl2rule.__msg) #11
  %tobool12.not = icmp eq ptr %extack, null
  br i1 %tobool12.not, label %do.body.cleanup_crit_edge, label %if.then13

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @fib_nl2rule.__msg, ptr %extack, align 4
  br label %cleanup

if.end15:                                         ; preds = %lor.lhs.false5.if.end15_crit_edge, %entry.if.end15_crit_edge
  %dst_len = getelementptr i8, ptr %nlh, i32 17
  %14 = ptrtoint ptr %dst_len to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %dst_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool16.not = icmp eq i8 %15, 0
  br i1 %tobool16.not, label %if.end15.if.end8.i.i_crit_edge, label %if.then17

if.end15.if.end8.i.i_crit_edge:                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i.i

if.then17:                                        ; preds = %if.end15
  %arrayidx18 = getelementptr ptr, ptr %tb, i32 1
  %16 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx18, align 4
  %tobool19.not = icmp eq ptr %17, null
  br i1 %tobool19.not, label %if.then17.do.body34_crit_edge, label %lor.lhs.false20

if.then17.do.body34_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body34

lor.lhs.false20:                                  ; preds = %if.then17
  %conv22 = zext i8 %15 to i32
  %addr_size23 = getelementptr inbounds %struct.fib_rules_ops, ptr %ops, i32 0, i32 3
  %18 = ptrtoint ptr %addr_size23 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %addr_size23, align 4
  %mul24 = shl i32 %19, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %mul24, i32 %conv22)
  %cmp25 = icmp slt i32 %mul24, %conv22
  br i1 %cmp25, label %lor.lhs.false20.do.body34_crit_edge, label %lor.lhs.false27

lor.lhs.false20.do.body34_crit_edge:              ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body34

lor.lhs.false27:                                  ; preds = %lor.lhs.false20
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %17, align 2
  %conv.i422 = zext i16 %21 to i32
  %sub.i423 = add nsw i32 %conv.i422, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i423, i32 %19)
  %cmp31.not = icmp eq i32 %sub.i423, %19
  br i1 %cmp31.not, label %lor.lhs.false27.if.end8.i.i_crit_edge, label %lor.lhs.false27.do.body34_crit_edge

lor.lhs.false27.do.body34_crit_edge:              ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body34

lor.lhs.false27.if.end8.i.i_crit_edge:            ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i.i

do.body34:                                        ; preds = %lor.lhs.false27.do.body34_crit_edge, %lor.lhs.false20.do.body34_crit_edge, %if.then17.do.body34_crit_edge
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib_nl2rule.__msg.16) #11
  %tobool36.not = icmp eq ptr %extack, null
  br i1 %tobool36.not, label %do.body34.cleanup_crit_edge, label %if.then37

do.body34.cleanup_crit_edge:                      ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then37:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @fib_nl2rule.__msg.16, ptr %extack, align 4
  br label %cleanup

if.end8.i.i:                                      ; preds = %lor.lhs.false27.if.end8.i.i_crit_edge, %if.end15.if.end8.i.i_crit_edge
  %rule_size = getelementptr inbounds %struct.fib_rules_ops, ptr %ops, i32 0, i32 2
  %23 = ptrtoint ptr %rule_size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rule_size, align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %24, i32 noundef 4197824) #14
  %tobool45.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool45.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end47

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end47:                                         ; preds = %if.end8.i.i
  %refcnt = getelementptr inbounds %struct.fib_rule, ptr %call9.i.i, i32 0, i32 15
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #11
  %25 = ptrtoint ptr %refcnt to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile i32 1, ptr %refcnt, align 8
  %fr_net = getelementptr inbounds %struct.fib_rule, ptr %call9.i.i, i32 0, i32 14
  %26 = ptrtoint ptr %fr_net to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %4, ptr %fr_net, align 4
  %arrayidx48 = getelementptr ptr, ptr %tb, i32 6
  %27 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx48, align 4
  %tobool49.not = icmp eq ptr %28, null
  br i1 %tobool49.not, label %if.else, label %if.then50

if.then50:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i = getelementptr i8, ptr %28, i32 4
  %29 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr.i.i, align 4
  %pref = getelementptr inbounds %struct.fib_rule, ptr %call9.i.i, i32 0, i32 16
  %31 = ptrtoint ptr %pref to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %pref, align 4
  %32 = ptrtoint ptr %user_priority to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %user_priority, align 1
  br label %if.end55

if.else:                                          ; preds = %if.end47
  %rules_list.i = getelementptr inbounds %struct.fib_rules_ops, ptr %ops, i32 0, i32 17
  %33 = ptrtoint ptr %rules_list.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %rules_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %34, %rules_list.i
  br i1 %cmp.i.not.i, label %if.else.fib_default_rule_pref.exit_crit_edge, label %if.then.i

if.else.fib_default_rule_pref.exit_crit_edge:     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %fib_default_rule_pref.exit

if.then.i:                                        ; preds = %if.else
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %cmp.not.i = icmp eq ptr %36, %rules_list.i
  br i1 %cmp.not.i, label %if.then.i.fib_default_rule_pref.exit_crit_edge, label %if.then4.i

if.then.i.fib_default_rule_pref.exit_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fib_default_rule_pref.exit

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %pref.i = getelementptr inbounds %struct.fib_rule, ptr %36, i32 0, i32 16
  %37 = ptrtoint ptr %pref.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pref.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool6.not.i = icmp eq i32 %38, 0
  %sub.i424 = add i32 %38, -1
  %spec.select.i = select i1 %tobool6.not.i, i32 0, i32 %sub.i424
  br label %fib_default_rule_pref.exit

fib_default_rule_pref.exit:                       ; preds = %if.then4.i, %if.then.i.fib_default_rule_pref.exit_crit_edge, %if.else.fib_default_rule_pref.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.then.i.fib_default_rule_pref.exit_crit_edge ], [ 0, %if.else.fib_default_rule_pref.exit_crit_edge ], [ %spec.select.i, %if.then4.i ]
  %pref54 = getelementptr inbounds %struct.fib_rule, ptr %call9.i.i, i32 0, i32 16
  %39 = ptrtoint ptr %pref54 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %retval.0.i, ptr %pref54, align 4
  br label %if.end55

if.end55:                                         ; preds = %fib_default_rule_pref.exit, %if.then50
  %arrayidx56 = getelementptr ptr, ptr %tb, i32 21
  %40 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx56, align 4
  %tobool57.not = icmp eq ptr %41, null
  br i1 %tobool57.not, label %if.end55.cond.end_crit_edge, label %cond.true

if.end55.cond.end_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i425 = getelementptr i8, ptr %41, i32 4
  %42 = ptrtoint ptr %add.ptr.i.i425 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %add.ptr.i.i425, align 1
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end55.cond.end_crit_edge
  %cond = phi i8 [ %43, %cond.true ], [ 0, %if.end55.cond.end_crit_edge ]
  %proto = getelementptr inbounds %struct.fib_rule, ptr %call9.i.i, i32 0, i32 9
  %44 = ptrtoint ptr %proto to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %cond, ptr %proto, align 2
  %arrayidx62 = getelementptr ptr, ptr %tb, i32 3
  %45 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx62, align 4
  %tobool63.not = icmp eq ptr %46, null
  br i1 %tobool63.not, label %cond.end.if.end74_crit_edge, label %if.then64

cond.end.if.end74_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end74

if.then64:                                        ; preds = %cond.end
  %iifindex = getelementptr inbounds %struct.fib_rule, ptr %call9.i.i, i32 0, i32 1
  %47 = ptrtoint ptr %iifindex to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -1, ptr %iifindex, align 8
  %iifname = getelementptr inbounds %struct.fib_rule, ptr %call9.i.i, i32 0, i32 19
  %48 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx62, align 4
  %call66 = tail call i32 @nla_strscpy(ptr noundef %iifname, ptr noundef %49, i32 noundef 16) #11
  %call69 = tail call ptr @__dev_get_by_name(ptr noundef %4, ptr noundef %iifname) #11
  %tobool70.not = icmp eq ptr %call69, null
  br i1 %tobool70.not, label %if.then64.if.end74_crit_edge, label %if.then71

if.then64.if.end74_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end74

if.then71:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #13
  %ifindex = getelementptr inbounds %struct.net_device, ptr %call69, i32 0, i32 17
  %50 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ifindex, align 4
  %52 = ptrtoint ptr %iifindex to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %iifindex, align 8
  br label %if.end74

if.end74:                                         ; preds = %if.then71, %if.then64.if.end74_crit_edge, %cond.end.if.end74_crit_edge
  %arrayidx75 = getelementptr ptr, ptr %tb, i32 17
  %53 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx75, align 4
  %tobool76.not = icmp eq ptr %54, null
  br i1 %tobool76.not, label %if.end74.if.end90_crit_edge, label %if.then77

if.end74.if.end90_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end90

if.then77:                                        ; preds = %if.end74
  %oifindex = getelementptr inbounds %struct.fib_rule, ptr %call9.i.i, i32 0, i32 2
  %55 = ptrtoint ptr %oifindex to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 -1, ptr %oifindex, align 4
  %oifname = getelementptr inbounds %struct.fib_rule, ptr %call9.i.i, i32 0, i32 20
  %56 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx75, align 4
  %call81 = tail call i32 @nla_strscpy(ptr noundef %oifname, ptr noundef %57, i32 noundef 16) #11
  %call84 = tail call ptr @__dev_get_by_name(ptr noundef %4, ptr noundef %oifname) #11
  %tobool85.not = icmp eq ptr %call84, null
  br i1 %tobool85.not, label %if.then77.if.end90_crit_edge, label %if.then86

if.then77.if.end90_crit_edge:                     ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end90

if.then86:                                        ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #13
  %ifindex87 = getelementptr inbounds %struct.net_device, ptr %call84, i32 0, i32 17
  %58 = ptrtoint ptr %ifindex87 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %ifindex87, align 4
  %60 = ptrtoint ptr %oifindex to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %oifindex, align 4
  br label %if.end90

if.end90:                                         ; preds = %if.then86, %if.then77.if.end90_crit_edge, %if.end74.if.end90_crit_edge
  %arrayidx91 = getelementptr ptr, ptr %tb, i32 10
  %61 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx91, align 4
  %tobool92.not = icmp eq ptr %62, null
  br i1 %tobool92.not, label %if.end90.if.end100_crit_edge, label %if.then93

if.end90.if.end100_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end100

if.then93:                                        ; preds = %if.end90
  %add.ptr.i.i426 = getelementptr i8, ptr %62, i32 4
  %63 = ptrtoint ptr %add.ptr.i.i426 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %add.ptr.i.i426, align 4
  %mark = getelementptr inbounds %struct.fib_rule, ptr %call9.i.i, i32 0, i32 3
  %65 = ptrtoint ptr %mark to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %mark, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool97.not = icmp eq i32 %64, 0
  br i1 %tobool97.not, label %if.then93.if.end100_crit_edge, label %if.then98

if.then93.if.end100_crit_edge:                    ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end100

if.then98:                                        ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #13
  %mark_mask = getelementptr inbounds %struct.fib_rule, ptr %call9.i.i, i32 0, i32 4
  %66 = ptrtoint ptr %mark_mask to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 -1, ptr %mark_mask, align 4
  br label %if.end100

if.end100:                                        ; preds = %if.then98, %if.then93.if.end100_crit_edge, %if.end90.if.end100_crit_edge
  %arrayidx101 = getelementptr ptr, ptr %tb, i32 16
  %67 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx101, align 4
  %tobool102.not = icmp eq ptr %68, null
  br i1 %tobool102.not, label %if.end100.if.end107_crit_edge, label %if.then103

if.end100.if.end107_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end107

if.then103:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i427 = getelementptr i8, ptr %68, i32 4
  %69 = ptrtoint ptr %add.ptr.i.i427 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %add.ptr.i.i427, align 4
  %mark_mask106 = getelementptr inbounds %struct.fib_rule, ptr %call9.i.i, i32 0, i32 4
  %71 = ptrtoint ptr %mark_mask106 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %mark_mask106, align 4
  br label %if.end107

if.end107:                                        ; preds = %if.then103, %if.end100.if.end107_crit_edge
  %arrayidx108 = getelementptr ptr, ptr %tb, i32 12
  %72 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx108, align 4
  %tobool109.not = icmp eq ptr %73, null
  br i1 %tobool109.not, label %if.end107.if.end113_crit_edge, label %if.then110

if.end107.if.end113_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end113

if.then110:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i) #11
  %74 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 -1, ptr %tmp.i, align 8, !annotation !143
  %call.i = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i, ptr noundef nonnull %73, i32 noundef 8) #11
  %75 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %tmp.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i) #11
  %tun_id = getelementptr inbounds %struct.fib_rule, ptr %call9.i.i, i32 0, i32 12
  %77 = ptrtoint ptr %tun_id to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %76, ptr %tun_id, align 8
  br label %if.end113

if.end113:                                        ; preds = %if.then110, %if.end107.if.end113_crit_edge
  %arrayidx114 = getelementptr ptr, ptr %tb, i32 19
  %78 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx114, align 4
  %tobool115.not = icmp eq ptr %79, null
  br i1 %tobool115.not, label %if.end113.if.end121_crit_edge, label %land.lhs.true

if.end113.if.end121_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end121

land.lhs.true:                                    ; preds = %if.end113
  %add.ptr.i.i.i = getelementptr i8, ptr %79, i32 4
  %80 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %add.ptr.i.i.i, align 1
  %l3mdev.i = getelementptr inbounds %struct.fib_rule, ptr %call9.i.i, i32 0, i32 8
  %82 = ptrtoint ptr %l3mdev.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %81, ptr %l3mdev.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %81)
  %cmp.not.i428 = icmp eq i8 %81, 1
  br i1 %cmp.not.i428, label %land.lhs.true.if.end121_crit_edge, label %do.body.i

land.lhs.true.if.end121_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end121

do.body.i:                                        ; preds = %land.lhs.true
  call void @do_trace_netlink_extack(ptr noundef nonnull @fib_nl2rule_l3mdev.__msg) #11
  %tobool.not.i = icmp eq ptr %extack, null
  br i1 %tobool.not.i, label %do.body.i.errout_free_crit_edge, label %do.body.i.errout_free.sink.split_crit_edge

do.body.i.errout_free.sink.split_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %errout_free.sink.split

do.body.i.errout_free_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %errout_free

if.end121:                                        ; preds = %land.lhs.true.if.end121_crit_edge, %if.end113.if.end121_crit_edge
  %action = getelementptr i8, ptr %nlh, i32 23
  %83 = ptrtoint ptr %action to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %action, align 1
  %action122 = getelementptr inbounds %struct.fib_rule, ptr %call9.i.i, i32 0, i32 7
  %85 = ptrtoint ptr %action122 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %84, ptr %action122, align 32
  %flags = getelementptr i8, ptr %nlh, i32 24
  %86 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %flags, align 4
  %flags123 = getelementptr inbounds %struct.fib_rule, ptr %call9.i.i, i32 0, i32 5
  %88 = ptrtoint ptr %flags123 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %flags123, align 8
  %arrayidx.i = getelementptr ptr, ptr %tb, i32 15
  %89 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i430 = icmp eq ptr %90, null
  br i1 %tobool.not.i430, label %if.end.i, label %if.then.i432

if.then.i432:                                     ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i.i431 = getelementptr i8, ptr %90, i32 4
  %91 = ptrtoint ptr %add.ptr.i.i.i431 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %add.ptr.i.i.i431, align 4
  br label %frh_get_table.exit

if.end.i:                                         ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #13
  %table.i = getelementptr i8, ptr %nlh, i32 20
  %93 = ptrtoint ptr %table.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %table.i, align 4
  %conv.i433 = zext i8 %94 to i32
  br label %frh_get_table.exit

frh_get_table.exit:                               ; preds = %if.end.i, %if.then.i432
  %retval.0.i434 = phi i32 [ %92, %if.then.i432 ], [ %conv.i433, %if.end.i ]
  %table = getelementptr inbounds %struct.fib_rule, ptr %call9.i.i, i32 0, i32 6
  %95 = ptrtoint ptr %table to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %retval.0.i434, ptr %table, align 4
  %arrayidx125 = getelementptr ptr, ptr %tb, i32 14
  %96 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx125, align 4
  %tobool126.not = icmp eq ptr %97, null
  br i1 %tobool126.not, label %frh_get_table.exit.if.end132_crit_edge, label %if.then127

frh_get_table.exit.if.end132_crit_edge:           ; preds = %frh_get_table.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end132

if.then127:                                       ; preds = %frh_get_table.exit
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i435 = getelementptr i8, ptr %97, i32 4
  %98 = ptrtoint ptr %add.ptr.i.i435 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %add.ptr.i.i435, align 4
  br label %if.end132

if.end132:                                        ; preds = %if.then127, %frh_get_table.exit.if.end132_crit_edge
  %.sink = phi i32 [ %99, %if.then127 ], [ -1, %frh_get_table.exit.if.end132_crit_edge ]
  %100 = getelementptr inbounds %struct.fib_rule, ptr %call9.i.i, i32 0, i32 18
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %.sink, ptr %100, align 4
  %arrayidx133 = getelementptr ptr, ptr %tb, i32 13
  %102 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %arrayidx133, align 4
  %tobool134.not = icmp eq ptr %103, null
  br i1 %tobool134.not, label %if.end132.if.end140_crit_edge, label %if.then135

if.end132.if.end140_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end140

if.then135:                                       ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i436 = getelementptr i8, ptr %103, i32 4
  %104 = ptrtoint ptr %add.ptr.i.i436 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %add.ptr.i.i436, align 4
  br label %if.end140

if.end140:                                        ; preds = %if.then135, %if.end132.if.end140_crit_edge
  %.sink468 = phi i32 [ %105, %if.then135 ], [ -1, %if.end132.if.end140_crit_edge ]
  %106 = getelementptr inbounds %struct.fib_rule, ptr %call9.i.i, i32 0, i32 17
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %.sink468, ptr %106, align 64
  %arrayidx141 = getelementptr ptr, ptr %tb, i32 4
  %108 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %arrayidx141, align 4
  %tobool142.not = icmp eq ptr %109, null
  %110 = ptrtoint ptr %action122 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %action122, align 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %111)
  %cmp177 = icmp eq i8 %111, 2
  br i1 %tobool142.not, label %if.else174, label %if.then143

if.then143:                                       ; preds = %if.end140
  br i1 %cmp177, label %if.end157, label %do.body149

do.body149:                                       ; preds = %if.then143
  call void @do_trace_netlink_extack(ptr noundef nonnull @fib_nl2rule.__msg.17) #11
  %tobool151.not = icmp eq ptr %extack, null
  br i1 %tobool151.not, label %do.body149.errout_free_crit_edge, label %do.body149.errout_free.sink.split_crit_edge

do.body149.errout_free.sink.split_crit_edge:      ; preds = %do.body149
  call void @__sanitizer_cov_trace_pc() #13
  br label %errout_free.sink.split

do.body149.errout_free_crit_edge:                 ; preds = %do.body149
  call void @__sanitizer_cov_trace_pc() #13
  br label %errout_free

if.end157:                                        ; preds = %if.then143
  %add.ptr.i.i437 = getelementptr i8, ptr %109, i32 4
  %112 = ptrtoint ptr %add.ptr.i.i437 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %add.ptr.i.i437, align 4
  %target = getelementptr inbounds %struct.fib_rule, ptr %call9.i.i, i32 0, i32 11
  %114 = ptrtoint ptr %target to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %target, align 4
  %pref161 = getelementptr inbounds %struct.fib_rule, ptr %call9.i.i, i32 0, i32 16
  %115 = ptrtoint ptr %pref161 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %pref161, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %113, i32 %116)
  %cmp162.not = icmp ugt i32 %113, %116
  br i1 %cmp162.not, label %if.end157.if.end189_crit_edge, label %do.body165

if.end157.if.end189_crit_edge:                    ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end189

do.body165:                                       ; preds = %if.end157
  call void @do_trace_netlink_extack(ptr noundef nonnull @fib_nl2rule.__msg.18) #11
  %tobool167.not = icmp eq ptr %extack, null
  br i1 %tobool167.not, label %do.body165.errout_free_crit_edge, label %do.body165.errout_free.sink.split_crit_edge

do.body165.errout_free.sink.split_crit_edge:      ; preds = %do.body165
  call void @__sanitizer_cov_trace_pc() #13
  br label %errout_free.sink.split

do.body165.errout_free_crit_edge:                 ; preds = %do.body165
  call void @__sanitizer_cov_trace_pc() #13
  br label %errout_free

if.else174:                                       ; preds = %if.end140
  br i1 %cmp177, label %do.body180, label %if.else174.if.end189_crit_edge

if.else174.if.end189_crit_edge:                   ; preds = %if.else174
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end189

do.body180:                                       ; preds = %if.else174
  call void @do_trace_netlink_extack(ptr noundef nonnull @fib_nl2rule.__msg.19) #11
  %tobool182.not = icmp eq ptr %extack, null
  br i1 %tobool182.not, label %do.body180.errout_free_crit_edge, label %do.body180.errout_free.sink.split_crit_edge

do.body180.errout_free.sink.split_crit_edge:      ; preds = %do.body180
  call void @__sanitizer_cov_trace_pc() #13
  br label %errout_free.sink.split

do.body180.errout_free_crit_edge:                 ; preds = %do.body180
  call void @__sanitizer_cov_trace_pc() #13
  br label %errout_free

if.end189:                                        ; preds = %if.else174.if.end189_crit_edge, %if.end157.if.end189_crit_edge
  %l3mdev = getelementptr inbounds %struct.fib_rule, ptr %call9.i.i, i32 0, i32 8
  %117 = ptrtoint ptr %l3mdev to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %l3mdev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %tobool191.not = icmp eq i8 %118, 0
  br i1 %tobool191.not, label %if.end189.if.end204_crit_edge, label %land.lhs.true192

if.end189.if.end204_crit_edge:                    ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end204

land.lhs.true192:                                 ; preds = %if.end189
  %119 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool194.not = icmp eq i32 %120, 0
  br i1 %tobool194.not, label %land.lhs.true192.if.end204_crit_edge, label %do.body196

land.lhs.true192.if.end204_crit_edge:             ; preds = %land.lhs.true192
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end204

do.body196:                                       ; preds = %land.lhs.true192
  call void @do_trace_netlink_extack(ptr noundef nonnull @fib_nl2rule.__msg.20) #11
  %tobool198.not = icmp eq ptr %extack, null
  br i1 %tobool198.not, label %do.body196.errout_free_crit_edge, label %do.body196.errout_free.sink.split_crit_edge

do.body196.errout_free.sink.split_crit_edge:      ; preds = %do.body196
  call void @__sanitizer_cov_trace_pc() #13
  br label %errout_free.sink.split

do.body196.errout_free_crit_edge:                 ; preds = %do.body196
  call void @__sanitizer_cov_trace_pc() #13
  br label %errout_free

if.end204:                                        ; preds = %land.lhs.true192.if.end204_crit_edge, %if.end189.if.end204_crit_edge
  %arrayidx205 = getelementptr ptr, ptr %tb, i32 20
  %121 = ptrtoint ptr %arrayidx205 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %arrayidx205, align 4
  %tobool206.not = icmp eq ptr %122, null
  br i1 %tobool206.not, label %if.else245, label %do.end210

do.end210:                                        ; preds = %if.end204
  %123 = call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i = and i32 %123, -16384
  %124 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %124, i32 0, i32 2
  %125 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %126, i32 0, i32 99
  %127 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %cred, align 16
  %user_ns = getelementptr inbounds %struct.cred, ptr %128, i32 0, i32 25
  %129 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %user_ns, align 4
  %user_ns213 = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 11
  %131 = ptrtoint ptr %user_ns213 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %user_ns213, align 4
  %cmp214.not = icmp eq ptr %130, %132
  br i1 %cmp214.not, label %if.end225, label %if.then216

if.then216:                                       ; preds = %do.end210
  call void @do_trace_netlink_extack(ptr noundef nonnull @fib_nl2rule.__msg.21) #11
  %tobool219.not = icmp eq ptr %extack, null
  br i1 %tobool219.not, label %if.then216.errout_free_crit_edge, label %if.then216.errout_free.sink.split_crit_edge

if.then216.errout_free.sink.split_crit_edge:      ; preds = %if.then216
  call void @__sanitizer_cov_trace_pc() #13
  br label %errout_free.sink.split

if.then216.errout_free_crit_edge:                 ; preds = %if.then216
  call void @__sanitizer_cov_trace_pc() #13
  br label %errout_free

if.end225:                                        ; preds = %do.end210
  %uid_range = getelementptr inbounds %struct.fib_rule, ptr %call9.i.i, i32 0, i32 21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp226) #11
  call fastcc void @nla_get_kuid_range(ptr nonnull sret(%struct.fib_kuid_range) align 4 %tmp226, ptr noundef %tb)
  %133 = ptrtoint ptr %tmp226 to i32
  call void @__asan_load8_noabort(i32 %133)
  %134 = load i64, ptr %tmp226, align 8
  %135 = ptrtoint ptr %uid_range to i32
  call void @__asan_store8_noabort(i32 %135)
  store i64 %134, ptr %uid_range, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp226) #11
  %136 = lshr i64 %134, 32
  %137 = trunc i64 %136 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %137)
  %cmp.i.not.i438 = icmp eq i32 %137, -1
  br i1 %cmp.i.not.i438, label %if.end225.do.body236_crit_edge, label %uid_range_set.exit

if.end225.do.body236_crit_edge:                   ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body236

uid_range_set.exit:                               ; preds = %if.end225
  %end.i = getelementptr inbounds %struct.fib_rule, ptr %call9.i.i, i32 0, i32 21, i32 1
  %138 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %.unpack4.i = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.unpack4.i)
  %cmp.i5.i.not = icmp eq i32 %.unpack4.i, -1
  br i1 %cmp.i5.i.not, label %uid_range_set.exit.do.body236_crit_edge, label %lor.lhs.false230

uid_range_set.exit.do.body236_crit_edge:          ; preds = %uid_range_set.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body236

lor.lhs.false230:                                 ; preds = %uid_range_set.exit
  %139 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %.unpack421 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack421, i32 %137)
  %cmp.i.not = icmp ult i32 %.unpack421, %137
  br i1 %cmp.i.not, label %lor.lhs.false230.do.body236_crit_edge, label %lor.lhs.false230.if.end247_crit_edge

lor.lhs.false230.if.end247_crit_edge:             ; preds = %lor.lhs.false230
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end247

lor.lhs.false230.do.body236_crit_edge:            ; preds = %lor.lhs.false230
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body236

do.body236:                                       ; preds = %lor.lhs.false230.do.body236_crit_edge, %uid_range_set.exit.do.body236_crit_edge, %if.end225.do.body236_crit_edge
  call void @do_trace_netlink_extack(ptr noundef nonnull @fib_nl2rule.__msg.22) #11
  %tobool238.not = icmp eq ptr %extack, null
  br i1 %tobool238.not, label %do.body236.errout_free_crit_edge, label %do.body236.errout_free.sink.split_crit_edge

do.body236.errout_free.sink.split_crit_edge:      ; preds = %do.body236
  call void @__sanitizer_cov_trace_pc() #13
  br label %errout_free.sink.split

do.body236.errout_free_crit_edge:                 ; preds = %do.body236
  call void @__sanitizer_cov_trace_pc() #13
  br label %errout_free

if.else245:                                       ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #13
  %uid_range246 = getelementptr inbounds %struct.fib_rule, ptr %call9.i.i, i32 0, i32 21
  %140 = ptrtoint ptr %uid_range246 to i32
  call void @__asan_store8_noabort(i32 %140)
  store i64 4294967295, ptr %uid_range246, align 8
  br label %if.end247

if.end247:                                        ; preds = %if.else245, %lor.lhs.false230.if.end247_crit_edge
  %arrayidx248 = getelementptr ptr, ptr %tb, i32 22
  %141 = ptrtoint ptr %arrayidx248 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %arrayidx248, align 4
  %tobool249.not = icmp eq ptr %142, null
  br i1 %tobool249.not, label %if.end247.if.end253_crit_edge, label %if.then250

if.end247.if.end253_crit_edge:                    ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end253

if.then250:                                       ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i439 = getelementptr i8, ptr %142, i32 4
  %143 = ptrtoint ptr %add.ptr.i.i439 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %add.ptr.i.i439, align 1
  %ip_proto = getelementptr inbounds %struct.fib_rule, ptr %call9.i.i, i32 0, i32 10
  %145 = ptrtoint ptr %ip_proto to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %144, ptr %ip_proto, align 1
  br label %if.end253

if.end253:                                        ; preds = %if.then250, %if.end247.if.end253_crit_edge
  %arrayidx254 = getelementptr ptr, ptr %tb, i32 23
  %146 = ptrtoint ptr %arrayidx254 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %arrayidx254, align 4
  %tobool255.not = icmp eq ptr %147, null
  br i1 %tobool255.not, label %if.end253.if.end270_crit_edge, label %if.then256

if.end253.if.end270_crit_edge:                    ; preds = %if.end253
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end270

if.then256:                                       ; preds = %if.end253
  %sport_range = getelementptr inbounds %struct.fib_rule, ptr %call9.i.i, i32 0, i32 22
  %add.ptr.i.i440 = getelementptr i8, ptr %147, i32 4
  %148 = ptrtoint ptr %add.ptr.i.i440 to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %add.ptr.i.i440, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %149)
  %cmp.not.i.i = icmp eq i16 %149, 0
  br i1 %cmp.not.i.i, label %if.then256.do.body261_crit_edge, label %land.lhs.true.i.i

if.then256.do.body261_crit_edge:                  ; preds = %if.then256
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body261

land.lhs.true.i.i:                                ; preds = %if.then256
  %end.i.i = getelementptr i8, ptr %147, i32 6
  %150 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %end.i.i, align 2
  %152 = zext i16 %151 to i64
  call void @__sanitizer_cov_trace_switch(i64 %152, ptr @__sancov_gen_cov_switch_values.32)
  switch i16 %151, label %fib_rule_port_range_valid.exit.i [
    i16 0, label %land.lhs.true.i.i.do.body261_crit_edge
    i16 -1, label %land.lhs.true.i.i.do.body261_crit_edge469
  ]

land.lhs.true.i.i.do.body261_crit_edge469:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body261

land.lhs.true.i.i.do.body261_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body261

fib_rule_port_range_valid.exit.i:                 ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_cmp2(i16 %149, i16 %151)
  %cmp14.i.not.i = icmp ugt i16 %149, %151
  br i1 %cmp14.i.not.i, label %fib_rule_port_range_valid.exit.i.do.body261_crit_edge, label %nla_get_port_range.exit

fib_rule_port_range_valid.exit.i.do.body261_crit_edge: ; preds = %fib_rule_port_range_valid.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body261

nla_get_port_range.exit:                          ; preds = %fib_rule_port_range_valid.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %153 = ptrtoint ptr %sport_range to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 %149, ptr %sport_range, align 16
  %154 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %end.i.i, align 2
  %end3.i = getelementptr inbounds %struct.fib_rule, ptr %call9.i.i, i32 0, i32 22, i32 1
  %156 = ptrtoint ptr %end3.i to i32
  call void @__asan_store2_noabort(i32 %156)
  store i16 %155, ptr %end3.i, align 2
  br label %if.end270

do.body261:                                       ; preds = %fib_rule_port_range_valid.exit.i.do.body261_crit_edge, %land.lhs.true.i.i.do.body261_crit_edge, %land.lhs.true.i.i.do.body261_crit_edge469, %if.then256.do.body261_crit_edge
  call void @do_trace_netlink_extack(ptr noundef nonnull @fib_nl2rule.__msg.23) #11
  %tobool263.not = icmp eq ptr %extack, null
  br i1 %tobool263.not, label %do.body261.errout_free_crit_edge, label %do.body261.errout_free.sink.split_crit_edge

do.body261.errout_free.sink.split_crit_edge:      ; preds = %do.body261
  call void @__sanitizer_cov_trace_pc() #13
  br label %errout_free.sink.split

do.body261.errout_free_crit_edge:                 ; preds = %do.body261
  call void @__sanitizer_cov_trace_pc() #13
  br label %errout_free

if.end270:                                        ; preds = %nla_get_port_range.exit, %if.end253.if.end270_crit_edge
  %arrayidx271 = getelementptr ptr, ptr %tb, i32 24
  %157 = ptrtoint ptr %arrayidx271 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %arrayidx271, align 4
  %tobool272.not = icmp eq ptr %158, null
  br i1 %tobool272.not, label %if.end270.if.end287_crit_edge, label %if.then273

if.end270.if.end287_crit_edge:                    ; preds = %if.end270
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end287

if.then273:                                       ; preds = %if.end270
  %dport_range = getelementptr inbounds %struct.fib_rule, ptr %call9.i.i, i32 0, i32 23
  %add.ptr.i.i443 = getelementptr i8, ptr %158, i32 4
  %159 = ptrtoint ptr %add.ptr.i.i443 to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %add.ptr.i.i443, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %160)
  %cmp.not.i.i444 = icmp eq i16 %160, 0
  br i1 %cmp.not.i.i444, label %if.then273.do.body278_crit_edge, label %land.lhs.true.i.i446

if.then273.do.body278_crit_edge:                  ; preds = %if.then273
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body278

land.lhs.true.i.i446:                             ; preds = %if.then273
  %end.i.i445 = getelementptr i8, ptr %158, i32 6
  %161 = ptrtoint ptr %end.i.i445 to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %end.i.i445, align 2
  %163 = zext i16 %162 to i64
  call void @__sanitizer_cov_trace_switch(i64 %163, ptr @__sancov_gen_cov_switch_values.33)
  switch i16 %162, label %fib_rule_port_range_valid.exit.i448 [
    i16 0, label %land.lhs.true.i.i446.do.body278_crit_edge
    i16 -1, label %land.lhs.true.i.i446.do.body278_crit_edge470
  ]

land.lhs.true.i.i446.do.body278_crit_edge470:     ; preds = %land.lhs.true.i.i446
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body278

land.lhs.true.i.i446.do.body278_crit_edge:        ; preds = %land.lhs.true.i.i446
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body278

fib_rule_port_range_valid.exit.i448:              ; preds = %land.lhs.true.i.i446
  call void @__sanitizer_cov_trace_cmp2(i16 %160, i16 %162)
  %cmp14.i.not.i447 = icmp ugt i16 %160, %162
  br i1 %cmp14.i.not.i447, label %fib_rule_port_range_valid.exit.i448.do.body278_crit_edge, label %nla_get_port_range.exit452

fib_rule_port_range_valid.exit.i448.do.body278_crit_edge: ; preds = %fib_rule_port_range_valid.exit.i448
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body278

nla_get_port_range.exit452:                       ; preds = %fib_rule_port_range_valid.exit.i448
  call void @__sanitizer_cov_trace_pc() #13
  %164 = ptrtoint ptr %dport_range to i32
  call void @__asan_store2_noabort(i32 %164)
  store i16 %160, ptr %dport_range, align 4
  %165 = ptrtoint ptr %end.i.i445 to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %end.i.i445, align 2
  %end3.i449 = getelementptr inbounds %struct.fib_rule, ptr %call9.i.i, i32 0, i32 23, i32 1
  %167 = ptrtoint ptr %end3.i449 to i32
  call void @__asan_store2_noabort(i32 %167)
  store i16 %166, ptr %end3.i449, align 2
  br label %if.end287

do.body278:                                       ; preds = %fib_rule_port_range_valid.exit.i448.do.body278_crit_edge, %land.lhs.true.i.i446.do.body278_crit_edge, %land.lhs.true.i.i446.do.body278_crit_edge470, %if.then273.do.body278_crit_edge
  call void @do_trace_netlink_extack(ptr noundef nonnull @fib_nl2rule.__msg.24) #11
  %tobool280.not = icmp eq ptr %extack, null
  br i1 %tobool280.not, label %do.body278.errout_free_crit_edge, label %do.body278.errout_free.sink.split_crit_edge

do.body278.errout_free.sink.split_crit_edge:      ; preds = %do.body278
  call void @__sanitizer_cov_trace_pc() #13
  br label %errout_free.sink.split

do.body278.errout_free_crit_edge:                 ; preds = %do.body278
  call void @__sanitizer_cov_trace_pc() #13
  br label %errout_free

if.end287:                                        ; preds = %nla_get_port_range.exit452, %if.end270.if.end287_crit_edge
  %168 = ptrtoint ptr %rule to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %call9.i.i, ptr %rule, align 4
  br label %cleanup

errout_free.sink.split:                           ; preds = %do.body278.errout_free.sink.split_crit_edge, %do.body261.errout_free.sink.split_crit_edge, %do.body236.errout_free.sink.split_crit_edge, %if.then216.errout_free.sink.split_crit_edge, %do.body196.errout_free.sink.split_crit_edge, %do.body180.errout_free.sink.split_crit_edge, %do.body165.errout_free.sink.split_crit_edge, %do.body149.errout_free.sink.split_crit_edge, %do.body.i.errout_free.sink.split_crit_edge
  %fib_nl2rule_l3mdev.__msg.sink = phi ptr [ @fib_nl2rule_l3mdev.__msg, %do.body.i.errout_free.sink.split_crit_edge ], [ @fib_nl2rule.__msg.17, %do.body149.errout_free.sink.split_crit_edge ], [ @fib_nl2rule.__msg.18, %do.body165.errout_free.sink.split_crit_edge ], [ @fib_nl2rule.__msg.19, %do.body180.errout_free.sink.split_crit_edge ], [ @fib_nl2rule.__msg.20, %do.body196.errout_free.sink.split_crit_edge ], [ @fib_nl2rule.__msg.21, %if.then216.errout_free.sink.split_crit_edge ], [ @fib_nl2rule.__msg.22, %do.body236.errout_free.sink.split_crit_edge ], [ @fib_nl2rule.__msg.23, %do.body261.errout_free.sink.split_crit_edge ], [ @fib_nl2rule.__msg.24, %do.body278.errout_free.sink.split_crit_edge ]
  %err.0.ph = phi i32 [ -22, %do.body.i.errout_free.sink.split_crit_edge ], [ -22, %do.body149.errout_free.sink.split_crit_edge ], [ -22, %do.body165.errout_free.sink.split_crit_edge ], [ -22, %do.body180.errout_free.sink.split_crit_edge ], [ -22, %do.body196.errout_free.sink.split_crit_edge ], [ -1, %if.then216.errout_free.sink.split_crit_edge ], [ -22, %do.body236.errout_free.sink.split_crit_edge ], [ -22, %do.body261.errout_free.sink.split_crit_edge ], [ -22, %do.body278.errout_free.sink.split_crit_edge ]
  %169 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %fib_nl2rule_l3mdev.__msg.sink, ptr %extack, align 4
  br label %errout_free

errout_free:                                      ; preds = %errout_free.sink.split, %do.body278.errout_free_crit_edge, %do.body261.errout_free_crit_edge, %do.body236.errout_free_crit_edge, %if.then216.errout_free_crit_edge, %do.body196.errout_free_crit_edge, %do.body180.errout_free_crit_edge, %do.body165.errout_free_crit_edge, %do.body149.errout_free_crit_edge, %do.body.i.errout_free_crit_edge
  %err.0 = phi i32 [ -22, %do.body149.errout_free_crit_edge ], [ -22, %do.body165.errout_free_crit_edge ], [ -22, %do.body180.errout_free_crit_edge ], [ -22, %do.body196.errout_free_crit_edge ], [ -1, %if.then216.errout_free_crit_edge ], [ -22, %do.body236.errout_free_crit_edge ], [ -22, %do.body261.errout_free_crit_edge ], [ -22, %do.body278.errout_free_crit_edge ], [ -22, %do.body.i.errout_free_crit_edge ], [ %err.0.ph, %errout_free.sink.split ]
  call void @kfree(ptr noundef nonnull %call9.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %errout_free, %if.end287, %if.end8.i.i.cleanup_crit_edge, %if.then37, %do.body34.cleanup_crit_edge, %if.then13, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end287 ], [ %err.0, %errout_free ], [ -22, %if.then13 ], [ -22, %do.body.cleanup_crit_edge ], [ -22, %if.then37 ], [ -22, %do.body34.cleanup_crit_edge ], [ -12, %if.end8.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @list_add_rcu(ptr noundef %new, ptr noundef %head) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head, align 4
  %call.i = tail call zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %head, ptr noundef %1) #11
  br i1 %call.i, label %if.end.i, label %entry.__list_add_rcu.exit_crit_edge

entry.__list_add_rcu.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %__list_add_rcu.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %new to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %new, align 4
  %prev2.i = getelementptr inbounds %struct.list_head, ptr %new, i32 0, i32 1
  %3 = ptrtoint ptr %prev2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %head, ptr %prev2.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !133
  %4 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %new, ptr %head, align 4
  %prev37.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %prev37.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %new, ptr %prev37.i, align 4
  br label %__list_add_rcu.exit

__list_add_rcu.exit:                              ; preds = %if.end.i, %entry.__list_add_rcu.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_tunnel_need_metadata() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @notify_rule_change(i32 noundef %event, ptr noundef %rule, ptr nocapture noundef readonly %ops, ptr noundef %nlh, i32 noundef %pid) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %fro_net = getelementptr inbounds %struct.fib_rules_ops, ptr %ops, i32 0, i32 19
  %0 = ptrtoint ptr %fro_net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fro_net, align 4
  %nlmsg_payload.i = getelementptr inbounds %struct.fib_rules_ops, ptr %ops, i32 0, i32 14
  %2 = ptrtoint ptr %nlmsg_payload.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nlmsg_payload.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.fib_rule_nlmsg_size.exit_crit_edge, label %if.then.i

entry.fib_rule_nlmsg_size.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %fib_rule_nlmsg_size.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call28.i = tail call i32 %3(ptr noundef %rule) #11
  %phi.bo = add i32 %call28.i, 175
  %phi.bo48 = and i32 %phi.bo, -4
  br label %fib_rule_nlmsg_size.exit

fib_rule_nlmsg_size.exit:                         ; preds = %if.then.i, %entry.fib_rule_nlmsg_size.exit_crit_edge
  %payload.0.i = phi i32 [ %phi.bo48, %if.then.i ], [ 172, %entry.fib_rule_nlmsg_size.exit_crit_edge ]
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef %payload.0.i, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #11
  %cmp = icmp eq ptr %call.i.i, null
  br i1 %cmp, label %fib_rule_nlmsg_size.exit.if.then28_crit_edge, label %if.end

fib_rule_nlmsg_size.exit.if.then28_crit_edge:     ; preds = %fib_rule_nlmsg_size.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then28

if.end:                                           ; preds = %fib_rule_nlmsg_size.exit
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %nlh, i32 0, i32 3
  %4 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nlmsg_seq, align 4
  %call2 = tail call fastcc i32 @fib_nl_fill_rule(ptr noundef nonnull %call.i.i, ptr noundef %rule, i32 noundef %pid, i32 noundef %5, i32 noundef %event, i32 noundef 0, ptr noundef %ops)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end26

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -90, i32 %call2)
  %cmp5 = icmp eq i32 %call2, -90
  br i1 %cmp5, label %do.end, label %if.then4.if.end19_crit_edge, !prof !140

if.then4.if.end19_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

do.end:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1202, i32 noundef 9, ptr noundef null) #11
  br label %if.end19

if.end19:                                         ; preds = %do.end, %if.then4.if.end19_crit_edge
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #11
  br label %if.then28

if.end26:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %nlgroup = getelementptr inbounds %struct.fib_rules_ops, ptr %ops, i32 0, i32 16
  %6 = ptrtoint ptr %nlgroup to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nlgroup, align 4
  tail call void @rtnl_notify(ptr noundef nonnull %call.i.i, ptr noundef %1, i32 noundef %pid, i32 noundef %7, ptr noundef %nlh, i32 noundef 3264) #11
  br label %cleanup

if.then28:                                        ; preds = %if.end19, %fib_rule_nlmsg_size.exit.if.then28_crit_edge
  %err.0 = phi i32 [ -12, %fib_rule_nlmsg_size.exit.if.then28_crit_edge ], [ %call2, %if.end19 ]
  %nlgroup29 = getelementptr inbounds %struct.fib_rules_ops, ptr %ops, i32 0, i32 16
  %8 = ptrtoint ptr %nlgroup29 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nlgroup29, align 4
  tail call void @rtnl_set_sk_err(ptr noundef %1, i32 noundef %9, i32 noundef %err.0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %if.end26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fib_nl_delrule(ptr nocapture noundef readonly %skb, ptr noundef %nlh, ptr noundef %extack) #1 align 64 {
entry:
  %info.i = alloca %struct.fib_rule_notifier_info, align 4
  %nlrule = alloca ptr, align 4
  %tb = alloca [25 x ptr], align 4
  %user_priority = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  %add.ptr.i = getelementptr i8, ptr %nlh, i32 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nlrule) #11
  %5 = ptrtoint ptr %nlrule to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %nlrule, align 4
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %tb) #11
  %6 = call ptr @memset(ptr %tb, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %user_priority) #11
  %7 = ptrtoint ptr %user_priority to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %user_priority, align 1
  %8 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nlh, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %9)
  %cmp = icmp ult i32 %9, 28
  br i1 %cmp, label %do.body, label %if.end4

do.body:                                          ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib_nl_delrule.__msg) #11
  %tobool.not = icmp eq ptr %extack, null
  br i1 %tobool.not, label %do.body.errout.thread_crit_edge, label %do.body.errout.thread.sink.split_crit_edge

do.body.errout.thread.sink.split_crit_edge:       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %errout.thread.sink.split

do.body.errout.thread_crit_edge:                  ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %errout.thread

if.end4:                                          ; preds = %entry
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %add.ptr.i, align 4
  %conv = zext i8 %11 to i32
  %call5 = tail call fastcc ptr @lookup_rules_ops(ptr noundef %4, i32 noundef %conv)
  %cmp6 = icmp eq ptr %call5, null
  br i1 %cmp6, label %if.then8, label %if.end17

if.then8:                                         ; preds = %if.end4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib_nl_delrule.__msg.9) #11
  %tobool11.not = icmp eq ptr %extack, null
  br i1 %tobool11.not, label %if.then8.errout.thread_crit_edge, label %if.then8.errout.thread.sink.split_crit_edge

if.then8.errout.thread.sink.split_crit_edge:      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %errout.thread.sink.split

if.then8.errout.thread_crit_edge:                 ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %errout.thread

if.end17:                                         ; preds = %if.end4
  %12 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nlh, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %13)
  %cmp.i.i = icmp ult i32 %13, 28
  br i1 %cmp.i.i, label %do.body.i.i, label %nlmsg_parse_deprecated.exit

do.body.i.i:                                      ; preds = %if.end17
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nlmsg_parse.__msg) #11
  %tobool.not.i.i = icmp eq ptr %extack, null
  br i1 %tobool.not.i.i, label %do.body22.thread, label %do.body22.thread264

do.body22.thread:                                 ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib_nl_delrule.__msg.10) #11
  br label %if.then.i239

do.body22.thread264:                              ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @__nlmsg_parse.__msg, ptr %extack, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib_nl_delrule.__msg.10) #11
  br label %if.then25

nlmsg_parse_deprecated.exit:                      ; preds = %if.end17
  %add.ptr.i.i.i = getelementptr i8, ptr %nlh, i32 28
  %sub1.i.i.i = add i32 %13, -28
  %call5.i.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 24, ptr noundef %add.ptr.i.i.i, i32 noundef %sub1.i.i.i, ptr noundef nonnull @fib_rule_policy, i32 noundef 0, ptr noundef %extack) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %cmp19 = icmp slt i32 %call5.i.i, 0
  br i1 %cmp19, label %do.body22, label %if.end30

do.body22:                                        ; preds = %nlmsg_parse_deprecated.exit
  call void @do_trace_netlink_extack(ptr noundef nonnull @fib_nl_delrule.__msg.10) #11
  %tobool24.not = icmp eq ptr %extack, null
  br i1 %tobool24.not, label %do.body22.if.then.i239_crit_edge, label %do.body22.if.then25_crit_edge

do.body22.if.then25_crit_edge:                    ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then25

do.body22.if.then.i239_crit_edge:                 ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i239

if.then25:                                        ; preds = %do.body22.if.then25_crit_edge, %do.body22.thread264
  %retval.0.i.i244267 = phi i32 [ -22, %do.body22.thread264 ], [ %call5.i.i, %do.body22.if.then25_crit_edge ]
  %15 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @fib_nl_delrule.__msg.10, ptr %extack, align 4
  br label %if.then.i239

if.end30:                                         ; preds = %nlmsg_parse_deprecated.exit
  %call32 = call fastcc i32 @fib_nl2rule(ptr noundef %skb, ptr noundef %nlh, ptr noundef %extack, ptr noundef nonnull %call5, ptr noundef nonnull %tb, ptr noundef nonnull %nlrule, ptr noundef nonnull %user_priority)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.end30.if.then.i239_crit_edge

if.end30.if.then.i239_crit_edge:                  ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i239

if.end35:                                         ; preds = %if.end30
  %16 = ptrtoint ptr %nlrule to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %nlrule, align 4
  %18 = ptrtoint ptr %user_priority to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %user_priority, align 1, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool37.not = icmp eq i8 %19, 0
  %rules_list.i = getelementptr inbounds %struct.fib_rules_ops, ptr %call5, i32 0, i32 17
  %20 = ptrtoint ptr %rules_list.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %r.0248.i = load ptr, ptr %rules_list.i, align 4
  %cmp.not249.i = icmp eq ptr %r.0248.i, %rules_list.i
  br i1 %cmp.not249.i, label %if.end35.if.then.i239_crit_edge, label %for.body.lr.ph.i

if.end35.if.then.i239_crit_edge:                  ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i239

for.body.lr.ph.i:                                 ; preds = %if.end35
  %action.i = getelementptr inbounds %struct.fib_rule, ptr %17, i32 0, i32 7
  %table.i = getelementptr inbounds %struct.fib_rule, ptr %17, i32 0, i32 6
  %pref19.i = getelementptr inbounds %struct.fib_rule, ptr %17, i32 0, i32 16
  %iifname.i = getelementptr inbounds %struct.fib_rule, ptr %17, i32 0, i32 19
  %oifname.i = getelementptr inbounds %struct.fib_rule, ptr %17, i32 0, i32 20
  %mark.i = getelementptr inbounds %struct.fib_rule, ptr %17, i32 0, i32 3
  %suppress_ifgroup.i = getelementptr inbounds %struct.fib_rule, ptr %17, i32 0, i32 17
  %suppress_prefixlen.i = getelementptr inbounds %struct.fib_rule, ptr %17, i32 0, i32 18
  %mark_mask.i = getelementptr inbounds %struct.fib_rule, ptr %17, i32 0, i32 4
  %tun_id.i = getelementptr inbounds %struct.fib_rule, ptr %17, i32 0, i32 12
  %fr_net87.i = getelementptr inbounds %struct.fib_rule, ptr %17, i32 0, i32 14
  %l3mdev.i = getelementptr inbounds %struct.fib_rule, ptr %17, i32 0, i32 8
  %uid_range.i = getelementptr inbounds %struct.fib_rule, ptr %17, i32 0, i32 21
  %end.i.i = getelementptr inbounds %struct.fib_rule, ptr %17, i32 0, i32 21, i32 1
  %ip_proto.i = getelementptr inbounds %struct.fib_rule, ptr %17, i32 0, i32 10
  %proto.i = getelementptr inbounds %struct.fib_rule, ptr %17, i32 0, i32 9
  %sport_range.i = getelementptr inbounds %struct.fib_rule, ptr %17, i32 0, i32 22
  %end.i231.i = getelementptr inbounds %struct.fib_rule, ptr %17, i32 0, i32 22, i32 1
  %dport_range.i = getelementptr inbounds %struct.fib_rule, ptr %17, i32 0, i32 23
  %end.i237.i = getelementptr inbounds %struct.fib_rule, ptr %17, i32 0, i32 23, i32 1
  %compare.i = getelementptr inbounds %struct.fib_rules_ops, ptr %call5, i32 0, i32 12
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %r.0250.i = phi ptr [ %r.0248.i, %for.body.lr.ph.i ], [ %r.0.i, %for.inc.i.for.body.i_crit_edge ]
  %21 = ptrtoint ptr %action.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %action.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i = icmp eq i8 %22, 0
  br i1 %tobool.not.i, label %for.body.i.if.end.i_crit_edge, label %land.lhs.true.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %action2.i = getelementptr inbounds %struct.fib_rule, ptr %r.0250.i, i32 0, i32 7
  %23 = ptrtoint ptr %action2.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %action2.i, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %24, i8 %22)
  %cmp6.not.i = icmp eq i8 %24, %22
  br i1 %cmp6.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %for.body.i.if.end.i_crit_edge
  %25 = ptrtoint ptr %table.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %table.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool8.not.i = icmp eq i32 %26, 0
  br i1 %tobool8.not.i, label %if.end.i.if.end15.i_crit_edge, label %land.lhs.true9.i

if.end.i.if.end15.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.i

land.lhs.true9.i:                                 ; preds = %if.end.i
  %table10.i = getelementptr inbounds %struct.fib_rule, ptr %r.0250.i, i32 0, i32 6
  %27 = ptrtoint ptr %table10.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %table10.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %26)
  %cmp12.not.i = icmp eq i32 %28, %26
  br i1 %cmp12.not.i, label %land.lhs.true9.i.if.end15.i_crit_edge, label %land.lhs.true9.i.for.inc.i_crit_edge

land.lhs.true9.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true9.i.if.end15.i_crit_edge:            ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.i

if.end15.i:                                       ; preds = %land.lhs.true9.i.if.end15.i_crit_edge, %if.end.i.if.end15.i_crit_edge
  br i1 %tobool37.not, label %if.end15.i.if.end23.i_crit_edge, label %land.lhs.true18.i

if.end15.i.if.end23.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23.i

land.lhs.true18.i:                                ; preds = %if.end15.i
  %pref.i = getelementptr inbounds %struct.fib_rule, ptr %r.0250.i, i32 0, i32 16
  %29 = ptrtoint ptr %pref.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pref.i, align 4
  %31 = ptrtoint ptr %pref19.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pref19.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %32)
  %cmp20.not.i = icmp eq i32 %30, %32
  br i1 %cmp20.not.i, label %land.lhs.true18.i.if.end23.i_crit_edge, label %land.lhs.true18.i.for.inc.i_crit_edge

land.lhs.true18.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true18.i.if.end23.i_crit_edge:           ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23.i

if.end23.i:                                       ; preds = %land.lhs.true18.i.if.end23.i_crit_edge, %if.end15.i.if.end23.i_crit_edge
  %33 = ptrtoint ptr %iifname.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %iifname.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool25.not.i = icmp eq i8 %34, 0
  br i1 %tobool25.not.i, label %if.end23.i.if.end32.i_crit_edge, label %land.lhs.true26.i

if.end23.i.if.end32.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32.i

land.lhs.true26.i:                                ; preds = %if.end23.i
  %iifname27.i = getelementptr inbounds %struct.fib_rule, ptr %r.0250.i, i32 0, i32 19
  %bcmp229.i = call i32 @bcmp(ptr noundef dereferenceable(16) %iifname27.i, ptr noundef dereferenceable(16) %iifname.i, i32 16) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp229.i)
  %tobool30.not.i = icmp eq i32 %bcmp229.i, 0
  br i1 %tobool30.not.i, label %land.lhs.true26.i.if.end32.i_crit_edge, label %land.lhs.true26.i.for.inc.i_crit_edge

land.lhs.true26.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true26.i.if.end32.i_crit_edge:           ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32.i

if.end32.i:                                       ; preds = %land.lhs.true26.i.if.end32.i_crit_edge, %if.end23.i.if.end32.i_crit_edge
  %35 = ptrtoint ptr %oifname.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %oifname.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool35.not.i = icmp eq i8 %36, 0
  br i1 %tobool35.not.i, label %if.end32.i.if.end44.i_crit_edge, label %land.lhs.true36.i

if.end32.i.if.end44.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44.i

land.lhs.true36.i:                                ; preds = %if.end32.i
  %oifname37.i = getelementptr inbounds %struct.fib_rule, ptr %r.0250.i, i32 0, i32 20
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(16) %oifname37.i, ptr noundef dereferenceable(16) %oifname.i, i32 16) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool42.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool42.not.i, label %land.lhs.true36.i.if.end44.i_crit_edge, label %land.lhs.true36.i.for.inc.i_crit_edge

land.lhs.true36.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true36.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true36.i.if.end44.i_crit_edge:           ; preds = %land.lhs.true36.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44.i

if.end44.i:                                       ; preds = %land.lhs.true36.i.if.end44.i_crit_edge, %if.end32.i.if.end44.i_crit_edge
  %37 = ptrtoint ptr %mark.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mark.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool45.not.i = icmp eq i32 %38, 0
  br i1 %tobool45.not.i, label %if.end44.i.if.end52.i_crit_edge, label %land.lhs.true46.i

if.end44.i.if.end52.i_crit_edge:                  ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52.i

land.lhs.true46.i:                                ; preds = %if.end44.i
  %mark47.i = getelementptr inbounds %struct.fib_rule, ptr %r.0250.i, i32 0, i32 3
  %39 = ptrtoint ptr %mark47.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mark47.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %38)
  %cmp49.not.i = icmp eq i32 %40, %38
  br i1 %cmp49.not.i, label %land.lhs.true46.i.if.end52.i_crit_edge, label %land.lhs.true46.i.for.inc.i_crit_edge

land.lhs.true46.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true46.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true46.i.if.end52.i_crit_edge:           ; preds = %land.lhs.true46.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52.i

if.end52.i:                                       ; preds = %land.lhs.true46.i.if.end52.i_crit_edge, %if.end44.i.if.end52.i_crit_edge
  %41 = ptrtoint ptr %suppress_ifgroup.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %suppress_ifgroup.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %42)
  %cmp53.not.i = icmp eq i32 %42, -1
  br i1 %cmp53.not.i, label %if.end52.i.if.end61.i_crit_edge, label %land.lhs.true55.i

if.end52.i.if.end61.i_crit_edge:                  ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61.i

land.lhs.true55.i:                                ; preds = %if.end52.i
  %suppress_ifgroup56.i = getelementptr inbounds %struct.fib_rule, ptr %r.0250.i, i32 0, i32 17
  %43 = ptrtoint ptr %suppress_ifgroup56.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %suppress_ifgroup56.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %42)
  %cmp58.not.i = icmp eq i32 %44, %42
  br i1 %cmp58.not.i, label %land.lhs.true55.i.if.end61.i_crit_edge, label %land.lhs.true55.i.for.inc.i_crit_edge

land.lhs.true55.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true55.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true55.i.if.end61.i_crit_edge:           ; preds = %land.lhs.true55.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61.i

if.end61.i:                                       ; preds = %land.lhs.true55.i.if.end61.i_crit_edge, %if.end52.i.if.end61.i_crit_edge
  %45 = ptrtoint ptr %suppress_prefixlen.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %suppress_prefixlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %46)
  %cmp62.not.i = icmp eq i32 %46, -1
  br i1 %cmp62.not.i, label %if.end61.i.if.end70.i_crit_edge, label %land.lhs.true64.i

if.end61.i.if.end70.i_crit_edge:                  ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70.i

land.lhs.true64.i:                                ; preds = %if.end61.i
  %suppress_prefixlen65.i = getelementptr inbounds %struct.fib_rule, ptr %r.0250.i, i32 0, i32 18
  %47 = ptrtoint ptr %suppress_prefixlen65.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %suppress_prefixlen65.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %46)
  %cmp67.not.i = icmp eq i32 %48, %46
  br i1 %cmp67.not.i, label %land.lhs.true64.i.if.end70.i_crit_edge, label %land.lhs.true64.i.for.inc.i_crit_edge

land.lhs.true64.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true64.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true64.i.if.end70.i_crit_edge:           ; preds = %land.lhs.true64.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70.i

if.end70.i:                                       ; preds = %land.lhs.true64.i.if.end70.i_crit_edge, %if.end61.i.if.end70.i_crit_edge
  %49 = ptrtoint ptr %mark_mask.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %mark_mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool71.not.i = icmp eq i32 %50, 0
  br i1 %tobool71.not.i, label %if.end70.i.if.end78.i_crit_edge, label %land.lhs.true72.i

if.end70.i.if.end78.i_crit_edge:                  ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end78.i

land.lhs.true72.i:                                ; preds = %if.end70.i
  %mark_mask73.i = getelementptr inbounds %struct.fib_rule, ptr %r.0250.i, i32 0, i32 4
  %51 = ptrtoint ptr %mark_mask73.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %mark_mask73.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %50)
  %cmp75.not.i = icmp eq i32 %52, %50
  br i1 %cmp75.not.i, label %land.lhs.true72.i.if.end78.i_crit_edge, label %land.lhs.true72.i.for.inc.i_crit_edge

land.lhs.true72.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true72.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true72.i.if.end78.i_crit_edge:           ; preds = %land.lhs.true72.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end78.i

if.end78.i:                                       ; preds = %land.lhs.true72.i.if.end78.i_crit_edge, %if.end70.i.if.end78.i_crit_edge
  %53 = ptrtoint ptr %tun_id.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %tun_id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %54)
  %tobool79.not.i = icmp eq i64 %54, 0
  br i1 %tobool79.not.i, label %if.end78.i.if.end86.i_crit_edge, label %land.lhs.true80.i

if.end78.i.if.end86.i_crit_edge:                  ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end86.i

land.lhs.true80.i:                                ; preds = %if.end78.i
  %tun_id81.i = getelementptr inbounds %struct.fib_rule, ptr %r.0250.i, i32 0, i32 12
  %55 = ptrtoint ptr %tun_id81.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %tun_id81.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %56, i64 %54)
  %cmp83.not.i = icmp eq i64 %56, %54
  br i1 %cmp83.not.i, label %land.lhs.true80.i.if.end86.i_crit_edge, label %land.lhs.true80.i.for.inc.i_crit_edge

land.lhs.true80.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true80.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true80.i.if.end86.i_crit_edge:           ; preds = %land.lhs.true80.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end86.i

if.end86.i:                                       ; preds = %land.lhs.true80.i.if.end86.i_crit_edge, %if.end78.i.if.end86.i_crit_edge
  %fr_net.i = getelementptr inbounds %struct.fib_rule, ptr %r.0250.i, i32 0, i32 14
  %57 = ptrtoint ptr %fr_net.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %fr_net.i, align 4
  %59 = ptrtoint ptr %fr_net87.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %fr_net87.i, align 4
  %cmp88.not.i = icmp eq ptr %58, %60
  br i1 %cmp88.not.i, label %if.end91.i, label %if.end86.i.for.inc.i_crit_edge

if.end86.i.for.inc.i_crit_edge:                   ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end91.i:                                       ; preds = %if.end86.i
  %61 = ptrtoint ptr %l3mdev.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %l3mdev.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool93.not.i = icmp eq i8 %62, 0
  br i1 %tobool93.not.i, label %if.end91.i.if.end102.i_crit_edge, label %land.lhs.true94.i

if.end91.i.if.end102.i_crit_edge:                 ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end102.i

land.lhs.true94.i:                                ; preds = %if.end91.i
  %l3mdev95.i = getelementptr inbounds %struct.fib_rule, ptr %r.0250.i, i32 0, i32 8
  %63 = ptrtoint ptr %l3mdev95.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %l3mdev95.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %64, i8 %62)
  %cmp99.not.i = icmp eq i8 %64, %62
  br i1 %cmp99.not.i, label %land.lhs.true94.i.if.end102.i_crit_edge, label %land.lhs.true94.i.for.inc.i_crit_edge

land.lhs.true94.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true94.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true94.i.if.end102.i_crit_edge:          ; preds = %land.lhs.true94.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end102.i

if.end102.i:                                      ; preds = %land.lhs.true94.i.if.end102.i_crit_edge, %if.end91.i.if.end102.i_crit_edge
  %65 = ptrtoint ptr %uid_range.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %.unpack.i.i = load i32, ptr %uid_range.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.unpack.i.i)
  %cmp.i.not.i.i = icmp eq i32 %.unpack.i.i, -1
  br i1 %cmp.i.not.i.i, label %if.end102.i.if.end118.i_crit_edge, label %uid_range_set.exit.i

if.end102.i.if.end118.i_crit_edge:                ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end118.i

uid_range_set.exit.i:                             ; preds = %if.end102.i
  %66 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %.unpack4.i.i = load i32, ptr %end.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.unpack4.i.i)
  %cmp.i5.i.not.i = icmp eq i32 %.unpack4.i.i, -1
  br i1 %cmp.i5.i.not.i, label %uid_range_set.exit.i.if.end118.i_crit_edge, label %land.lhs.true105.i

uid_range_set.exit.i.if.end118.i_crit_edge:       ; preds = %uid_range_set.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end118.i

land.lhs.true105.i:                               ; preds = %uid_range_set.exit.i
  %uid_range106.i = getelementptr inbounds %struct.fib_rule, ptr %r.0250.i, i32 0, i32 21
  %67 = ptrtoint ptr %uid_range106.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %.unpack.i = load i32, ptr %uid_range106.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack.i, i32 %.unpack.i.i)
  %cmp.i.i231 = icmp eq i32 %.unpack.i, %.unpack.i.i
  br i1 %cmp.i.i231, label %lor.lhs.false.i, label %land.lhs.true105.i.for.inc.i_crit_edge

land.lhs.true105.i.for.inc.i_crit_edge:           ; preds = %land.lhs.true105.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true105.i
  %end.i = getelementptr inbounds %struct.fib_rule, ptr %r.0250.i, i32 0, i32 21, i32 1
  %68 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %.unpack227.i = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack227.i, i32 %.unpack4.i.i)
  %cmp.i230.i = icmp eq i32 %.unpack227.i, %.unpack4.i.i
  br i1 %cmp.i230.i, label %lor.lhs.false.i.if.end118.i_crit_edge, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

lor.lhs.false.i.if.end118.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end118.i

if.end118.i:                                      ; preds = %lor.lhs.false.i.if.end118.i_crit_edge, %uid_range_set.exit.i.if.end118.i_crit_edge, %if.end102.i.if.end118.i_crit_edge
  %69 = ptrtoint ptr %ip_proto.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %ip_proto.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool120.not.i = icmp eq i8 %70, 0
  br i1 %tobool120.not.i, label %if.end118.i.if.end129.i_crit_edge, label %land.lhs.true121.i

if.end118.i.if.end129.i_crit_edge:                ; preds = %if.end118.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end129.i

land.lhs.true121.i:                               ; preds = %if.end118.i
  %ip_proto122.i = getelementptr inbounds %struct.fib_rule, ptr %r.0250.i, i32 0, i32 10
  %71 = ptrtoint ptr %ip_proto122.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %ip_proto122.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %72, i8 %70)
  %cmp126.not.i = icmp eq i8 %72, %70
  br i1 %cmp126.not.i, label %land.lhs.true121.i.if.end129.i_crit_edge, label %land.lhs.true121.i.for.inc.i_crit_edge

land.lhs.true121.i.for.inc.i_crit_edge:           ; preds = %land.lhs.true121.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true121.i.if.end129.i_crit_edge:         ; preds = %land.lhs.true121.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end129.i

if.end129.i:                                      ; preds = %land.lhs.true121.i.if.end129.i_crit_edge, %if.end118.i.if.end129.i_crit_edge
  %73 = ptrtoint ptr %proto.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %proto.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool131.not.i = icmp eq i8 %74, 0
  br i1 %tobool131.not.i, label %if.end129.i.if.end140.i_crit_edge, label %land.lhs.true132.i

if.end129.i.if.end140.i_crit_edge:                ; preds = %if.end129.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end140.i

land.lhs.true132.i:                               ; preds = %if.end129.i
  %proto133.i = getelementptr inbounds %struct.fib_rule, ptr %r.0250.i, i32 0, i32 9
  %75 = ptrtoint ptr %proto133.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %proto133.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %76, i8 %74)
  %cmp137.not.i = icmp eq i8 %76, %74
  br i1 %cmp137.not.i, label %land.lhs.true132.i.if.end140.i_crit_edge, label %land.lhs.true132.i.for.inc.i_crit_edge

land.lhs.true132.i.for.inc.i_crit_edge:           ; preds = %land.lhs.true132.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true132.i.if.end140.i_crit_edge:         ; preds = %land.lhs.true132.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end140.i

if.end140.i:                                      ; preds = %land.lhs.true132.i.if.end140.i_crit_edge, %if.end129.i.if.end140.i_crit_edge
  %77 = ptrtoint ptr %sport_range.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %sport_range.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %78)
  %cmp.not.i.i = icmp eq i16 %78, 0
  br i1 %cmp.not.i.i, label %if.end140.i.if.end148.i_crit_edge, label %fib_rule_port_range_set.exit.i

if.end140.i.if.end148.i_crit_edge:                ; preds = %if.end140.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end148.i

fib_rule_port_range_set.exit.i:                   ; preds = %if.end140.i
  %79 = ptrtoint ptr %end.i231.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %end.i231.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %80)
  %cmp3.i.not.i = icmp eq i16 %80, 0
  br i1 %cmp3.i.not.i, label %fib_rule_port_range_set.exit.i.if.end148.i_crit_edge, label %land.lhs.true143.i

fib_rule_port_range_set.exit.i.if.end148.i_crit_edge: ; preds = %fib_rule_port_range_set.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end148.i

land.lhs.true143.i:                               ; preds = %fib_rule_port_range_set.exit.i
  %sport_range144.i = getelementptr inbounds %struct.fib_rule, ptr %r.0250.i, i32 0, i32 22
  %81 = ptrtoint ptr %sport_range144.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %sport_range144.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %82, i16 %78)
  %cmp.i233.i = icmp eq i16 %82, %78
  br i1 %cmp.i233.i, label %fib_rule_port_range_compare.exit.i, label %land.lhs.true143.i.for.inc.i_crit_edge

land.lhs.true143.i.for.inc.i_crit_edge:           ; preds = %land.lhs.true143.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

fib_rule_port_range_compare.exit.i:               ; preds = %land.lhs.true143.i
  %end.i234.i = getelementptr inbounds %struct.fib_rule, ptr %r.0250.i, i32 0, i32 22, i32 1
  %83 = ptrtoint ptr %end.i234.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %end.i234.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %84, i16 %80)
  %cmp7.i.i = icmp eq i16 %84, %80
  br i1 %cmp7.i.i, label %fib_rule_port_range_compare.exit.i.if.end148.i_crit_edge, label %fib_rule_port_range_compare.exit.i.for.inc.i_crit_edge

fib_rule_port_range_compare.exit.i.for.inc.i_crit_edge: ; preds = %fib_rule_port_range_compare.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

fib_rule_port_range_compare.exit.i.if.end148.i_crit_edge: ; preds = %fib_rule_port_range_compare.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end148.i

if.end148.i:                                      ; preds = %fib_rule_port_range_compare.exit.i.if.end148.i_crit_edge, %fib_rule_port_range_set.exit.i.if.end148.i_crit_edge, %if.end140.i.if.end148.i_crit_edge
  %85 = ptrtoint ptr %dport_range.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %dport_range.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %86)
  %cmp.not.i236.i = icmp eq i16 %86, 0
  br i1 %cmp.not.i236.i, label %if.end148.i.if.end156.i_crit_edge, label %fib_rule_port_range_set.exit240.i

if.end148.i.if.end156.i_crit_edge:                ; preds = %if.end148.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end156.i

fib_rule_port_range_set.exit240.i:                ; preds = %if.end148.i
  %87 = ptrtoint ptr %end.i237.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %end.i237.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %88)
  %cmp3.i238.not.i = icmp eq i16 %88, 0
  br i1 %cmp3.i238.not.i, label %fib_rule_port_range_set.exit240.i.if.end156.i_crit_edge, label %land.lhs.true151.i

fib_rule_port_range_set.exit240.i.if.end156.i_crit_edge: ; preds = %fib_rule_port_range_set.exit240.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end156.i

land.lhs.true151.i:                               ; preds = %fib_rule_port_range_set.exit240.i
  %dport_range152.i = getelementptr inbounds %struct.fib_rule, ptr %r.0250.i, i32 0, i32 23
  %89 = ptrtoint ptr %dport_range152.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %dport_range152.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %90, i16 %86)
  %cmp.i241.i = icmp eq i16 %90, %86
  br i1 %cmp.i241.i, label %fib_rule_port_range_compare.exit246.i, label %land.lhs.true151.i.for.inc.i_crit_edge

land.lhs.true151.i.for.inc.i_crit_edge:           ; preds = %land.lhs.true151.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

fib_rule_port_range_compare.exit246.i:            ; preds = %land.lhs.true151.i
  %end.i242.i = getelementptr inbounds %struct.fib_rule, ptr %r.0250.i, i32 0, i32 23, i32 1
  %91 = ptrtoint ptr %end.i242.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %end.i242.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %92, i16 %88)
  %cmp7.i244.i = icmp eq i16 %92, %88
  br i1 %cmp7.i244.i, label %fib_rule_port_range_compare.exit246.i.if.end156.i_crit_edge, label %fib_rule_port_range_compare.exit246.i.for.inc.i_crit_edge

fib_rule_port_range_compare.exit246.i.for.inc.i_crit_edge: ; preds = %fib_rule_port_range_compare.exit246.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

fib_rule_port_range_compare.exit246.i.if.end156.i_crit_edge: ; preds = %fib_rule_port_range_compare.exit246.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end156.i

if.end156.i:                                      ; preds = %fib_rule_port_range_compare.exit246.i.if.end156.i_crit_edge, %fib_rule_port_range_set.exit240.i.if.end156.i_crit_edge, %if.end148.i.if.end156.i_crit_edge
  %93 = ptrtoint ptr %compare.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %compare.i, align 4
  %call157.i = call i32 %94(ptr noundef %r.0250.i, ptr noundef %add.ptr.i, ptr noundef nonnull %tb) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call157.i)
  %tobool158.not.i = icmp eq i32 %call157.i, 0
  br i1 %tobool158.not.i, label %if.end156.i.for.inc.i_crit_edge, label %rule_find.exit

if.end156.i.for.inc.i_crit_edge:                  ; preds = %if.end156.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end156.i.for.inc.i_crit_edge, %fib_rule_port_range_compare.exit246.i.for.inc.i_crit_edge, %land.lhs.true151.i.for.inc.i_crit_edge, %fib_rule_port_range_compare.exit.i.for.inc.i_crit_edge, %land.lhs.true143.i.for.inc.i_crit_edge, %land.lhs.true132.i.for.inc.i_crit_edge, %land.lhs.true121.i.for.inc.i_crit_edge, %lor.lhs.false.i.for.inc.i_crit_edge, %land.lhs.true105.i.for.inc.i_crit_edge, %land.lhs.true94.i.for.inc.i_crit_edge, %if.end86.i.for.inc.i_crit_edge, %land.lhs.true80.i.for.inc.i_crit_edge, %land.lhs.true72.i.for.inc.i_crit_edge, %land.lhs.true64.i.for.inc.i_crit_edge, %land.lhs.true55.i.for.inc.i_crit_edge, %land.lhs.true46.i.for.inc.i_crit_edge, %land.lhs.true36.i.for.inc.i_crit_edge, %land.lhs.true26.i.for.inc.i_crit_edge, %land.lhs.true18.i.for.inc.i_crit_edge, %land.lhs.true9.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge
  %95 = ptrtoint ptr %r.0250.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %r.0.i = load ptr, ptr %r.0250.i, align 4
  %cmp.not.i = icmp eq ptr %r.0.i, %rules_list.i
  br i1 %cmp.not.i, label %for.inc.i.if.then.i239_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.if.then.i239_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i239

rule_find.exit:                                   ; preds = %if.end156.i
  %tobool39.not = icmp eq ptr %r.0250.i, null
  br i1 %tobool39.not, label %rule_find.exit.if.then.i239_crit_edge, label %if.end41

rule_find.exit.if.then.i239_crit_edge:            ; preds = %rule_find.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i239

if.end41:                                         ; preds = %rule_find.exit
  %flags = getelementptr inbounds %struct.fib_rule, ptr %r.0250.i, i32 0, i32 5
  %96 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %flags, align 8
  %and = and i32 %97, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool42.not = icmp eq i32 %and, 0
  br i1 %tobool42.not, label %if.end44, label %if.end41.if.then.i239_crit_edge

if.end41.if.then.i239_crit_edge:                  ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i239

if.end44:                                         ; preds = %if.end41
  %delete = getelementptr inbounds %struct.fib_rules_ops, ptr %call5, i32 0, i32 11
  %98 = ptrtoint ptr %delete to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %delete, align 4
  %tobool45.not = icmp eq ptr %99, null
  br i1 %tobool45.not, label %if.end44.if.end52_crit_edge, label %if.then46

if.end44.if.end52_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

if.then46:                                        ; preds = %if.end44
  %call48 = call i32 %99(ptr noundef nonnull %r.0250.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.then46.if.end52_crit_edge, label %if.then46.if.then.i239_crit_edge

if.then46.if.then.i239_crit_edge:                 ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i239

if.then46.if.end52_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

if.end52:                                         ; preds = %if.then46.if.end52_crit_edge, %if.end44.if.end52_crit_edge
  %tun_id = getelementptr inbounds %struct.fib_rule, ptr %r.0250.i, i32 0, i32 12
  %100 = ptrtoint ptr %tun_id to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %tun_id, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %101)
  %tobool53.not = icmp eq i64 %101, 0
  br i1 %tobool53.not, label %if.end52.if.end55_crit_edge, label %if.then54

if.end52.if.end55_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end55

if.then54:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  call void @ip_tunnel_unneed_metadata() #11
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %if.end52.if.end55_crit_edge
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %r.0250.i) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end55.list_del_rcu.exit_crit_edge

if.end55.list_del_rcu.exit_crit_edge:             ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %r.0250.i, i32 0, i32 1
  %102 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %prev.i.i, align 4
  %104 = ptrtoint ptr %r.0250.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %r.0250.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %105, i32 0, i32 1
  %106 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %103, ptr %prev1.i.i.i, align 4
  %107 = ptrtoint ptr %103 to i32
  call void @__asan_store4_noabort(i32 %107)
  store volatile ptr %105, ptr %103, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %if.end55.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.list_head, ptr %r.0250.i, i32 0, i32 1
  %108 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %action = getelementptr inbounds %struct.fib_rule, ptr %r.0250.i, i32 0, i32 7
  %109 = ptrtoint ptr %action to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %action, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %110)
  %cmp57 = icmp eq i8 %110, 2
  br i1 %cmp57, label %if.then59, label %list_del_rcu.exit.if.end75_crit_edge

list_del_rcu.exit.if.end75_crit_edge:             ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75

if.then59:                                        ; preds = %list_del_rcu.exit
  %nr_goto_rules = getelementptr inbounds %struct.fib_rules_ops, ptr %call5, i32 0, i32 5
  %111 = ptrtoint ptr %nr_goto_rules to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %nr_goto_rules, align 4
  %dec = add i32 %112, -1
  store i32 %dec, ptr %nr_goto_rules, align 4
  %call61 = call zeroext i1 @lockdep_rtnl_is_held() #11
  br i1 %call61, label %if.then59.do.end69_crit_edge, label %land.lhs.true

if.then59.do.end69_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end69

land.lhs.true:                                    ; preds = %if.then59
  %call62 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %land.lhs.true.do.end69_crit_edge, label %land.lhs.true64

land.lhs.true.do.end69_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end69

land.lhs.true64:                                  ; preds = %land.lhs.true
  %.b230 = load i1, ptr @fib_nl_delrule.__warned, align 1
  br i1 %.b230, label %land.lhs.true64.do.end69_crit_edge, label %if.then66

land.lhs.true64.do.end69_crit_edge:               ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end69

if.then66:                                        ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @fib_nl_delrule.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 940, ptr noundef nonnull @.str.8) #11
  br label %do.end69

do.end69:                                         ; preds = %if.then66, %land.lhs.true64.do.end69_crit_edge, %land.lhs.true.do.end69_crit_edge, %if.then59.do.end69_crit_edge
  %ctarget = getelementptr inbounds %struct.fib_rule, ptr %r.0250.i, i32 0, i32 13
  %113 = ptrtoint ptr %ctarget to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %ctarget, align 8
  %cmp70 = icmp eq ptr %114, null
  br i1 %cmp70, label %if.then72, label %do.end69.if.end75_crit_edge

do.end69.if.end75_crit_edge:                      ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75

if.then72:                                        ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #13
  %unresolved_rules = getelementptr inbounds %struct.fib_rules_ops, ptr %call5, i32 0, i32 4
  %115 = ptrtoint ptr %unresolved_rules to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %unresolved_rules, align 4
  %dec73 = add i32 %116, -1
  store i32 %dec73, ptr %unresolved_rules, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.then72, %do.end69.if.end75_crit_edge, %list_del_rcu.exit.if.end75_crit_edge
  %nr_goto_rules76 = getelementptr inbounds %struct.fib_rules_ops, ptr %call5, i32 0, i32 5
  %117 = ptrtoint ptr %nr_goto_rules76 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %nr_goto_rules76, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %cmp77 = icmp sgt i32 %118, 0
  br i1 %cmp77, label %if.then79, label %if.end75.if.end165_crit_edge

if.end75.if.end165_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end165

if.then79:                                        ; preds = %if.end75
  %119 = ptrtoint ptr %r.0250.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %r.0250.i, align 8
  %cmp83 = icmp eq ptr %120, %rules_list.i
  br i1 %cmp83, label %if.then79.if.then88_crit_edge, label %lor.lhs.false

if.then79.if.then88_crit_edge:                    ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then88

lor.lhs.false:                                    ; preds = %if.then79
  %pref = getelementptr inbounds %struct.fib_rule, ptr %120, i32 0, i32 16
  %121 = ptrtoint ptr %pref to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %pref, align 4
  %pref85 = getelementptr inbounds %struct.fib_rule, ptr %r.0250.i, i32 0, i32 16
  %123 = ptrtoint ptr %pref85 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %pref85, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %122, i32 %124)
  %cmp86.not = icmp eq i32 %122, %124
  br i1 %cmp86.not, label %lor.lhs.false.if.end89_crit_edge, label %lor.lhs.false.if.then88_crit_edge

lor.lhs.false.if.then88_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then88

lor.lhs.false.if.end89_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end89

if.then88:                                        ; preds = %lor.lhs.false.if.then88_crit_edge, %if.then79.if.then88_crit_edge
  br label %if.end89

if.end89:                                         ; preds = %if.then88, %lor.lhs.false.if.end89_crit_edge
  %n.0 = phi ptr [ null, %if.then88 ], [ %120, %lor.lhs.false.if.end89_crit_edge ]
  %125 = ptrtoint ptr %rules_list.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %r.0273 = load ptr, ptr %rules_list.i, align 4
  %cmp97.not274 = icmp eq ptr %r.0273, %rules_list.i
  br i1 %cmp97.not274, label %if.end89.if.end165_crit_edge, label %do.body99.lr.ph

if.end89.if.end165_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end165

do.body99.lr.ph:                                  ; preds = %if.end89
  %tobool156.not = icmp eq ptr %n.0, null
  %unresolved_rules158 = getelementptr inbounds %struct.fib_rules_ops, ptr %call5, i32 0, i32 4
  br label %do.body99

do.body99:                                        ; preds = %for.inc.do.body99_crit_edge, %do.body99.lr.ph
  %r.0275 = phi ptr [ %r.0273, %do.body99.lr.ph ], [ %r.0, %for.inc.do.body99_crit_edge ]
  %call100 = call zeroext i1 @lockdep_rtnl_is_held() #11
  br i1 %call100, label %do.body99.do.end109_crit_edge, label %land.lhs.true101

do.body99.do.end109_crit_edge:                    ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end109

land.lhs.true101:                                 ; preds = %do.body99
  %call102 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %land.lhs.true101.do.end109_crit_edge, label %land.lhs.true104

land.lhs.true101.do.end109_crit_edge:             ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end109

land.lhs.true104:                                 ; preds = %land.lhs.true101
  %.b228229 = load i1, ptr @fib_nl_delrule.__warned.11, align 1
  br i1 %.b228229, label %land.lhs.true104.do.end109_crit_edge, label %if.then106

land.lhs.true104.do.end109_crit_edge:             ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end109

if.then106:                                       ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @fib_nl_delrule.__warned.11, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 958, ptr noundef nonnull @.str.8) #11
  br label %do.end109

do.end109:                                        ; preds = %if.then106, %land.lhs.true104.do.end109_crit_edge, %land.lhs.true101.do.end109_crit_edge, %do.body99.do.end109_crit_edge
  %ctarget111 = getelementptr inbounds %struct.fib_rule, ptr %r.0275, i32 0, i32 13
  %126 = ptrtoint ptr %ctarget111 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %ctarget111, align 8
  %cmp112.not = icmp eq ptr %127, %r.0250.i
  br i1 %cmp112.not, label %do.body116, label %do.end109.for.inc_crit_edge

do.end109.for.inc_crit_edge:                      ; preds = %do.end109
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

do.body116:                                       ; preds = %do.end109
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !145
  %128 = ptrtoint ptr %ctarget111 to i32
  call void @__asan_store4_noabort(i32 %128)
  store volatile ptr %n.0, ptr %ctarget111, align 8
  br i1 %tobool156.not, label %if.then157, label %do.body116.for.inc_crit_edge

do.body116.for.inc_crit_edge:                     ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then157:                                       ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #13
  %129 = ptrtoint ptr %unresolved_rules158 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %unresolved_rules158, align 4
  %inc = add i32 %130, 1
  store i32 %inc, ptr %unresolved_rules158, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then157, %do.body116.for.inc_crit_edge, %do.end109.for.inc_crit_edge
  %131 = ptrtoint ptr %r.0275 to i32
  call void @__asan_load4_noabort(i32 %131)
  %r.0 = load ptr, ptr %r.0275, align 4
  %cmp97.not = icmp eq ptr %r.0, %rules_list.i
  br i1 %cmp97.not, label %for.inc.if.end165_crit_edge, label %for.inc.do.body99_crit_edge

for.inc.do.body99_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body99

for.inc.if.end165_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end165

if.end165:                                        ; preds = %for.inc.if.end165_crit_edge, %if.end89.if.end165_crit_edge, %if.end75.if.end165_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %info.i) #11
  %132 = getelementptr inbounds %struct.fib_notifier_info, ptr %info.i, i32 0, i32 1
  %133 = getelementptr inbounds %struct.fib_rule_notifier_info, ptr %info.i, i32 0, i32 1
  %134 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %call5, align 4
  %136 = ptrtoint ptr %info.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %135, ptr %info.i, align 4
  %137 = ptrtoint ptr %132 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr null, ptr %132, align 4
  %138 = ptrtoint ptr %133 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %r.0250.i, ptr %133, align 4
  %fib_rules_seq.i = getelementptr inbounds %struct.fib_rules_ops, ptr %call5, i32 0, i32 6
  %139 = ptrtoint ptr %fib_rules_seq.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %fib_rules_seq.i, align 4
  %inc.i = add i32 %140, 1
  store i32 %inc.i, ptr %fib_rules_seq.i, align 4
  %call.i = call i32 @call_fib_notifiers(ptr noundef %4, i32 noundef 5, ptr noundef nonnull %info.i) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %info.i) #11
  %portid = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %141 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %portid, align 4
  call fastcc void @notify_rule_change(i32 noundef 33, ptr noundef nonnull %r.0250.i, ptr noundef nonnull %call5, ptr noundef %nlh, i32 noundef %142)
  call fastcc void @fib_rule_put(ptr noundef nonnull %r.0250.i)
  %flush_cache.i = getelementptr inbounds %struct.fib_rules_ops, ptr %call5, i32 0, i32 15
  %143 = ptrtoint ptr %flush_cache.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %flush_cache.i, align 4
  %tobool.not.i232 = icmp eq ptr %144, null
  br i1 %tobool.not.i232, label %if.end165.rules_ops_put.exit_crit_edge, label %if.then.i

if.end165.rules_ops_put.exit_crit_edge:           ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #13
  br label %rules_ops_put.exit

if.then.i:                                        ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #13
  call void %144(ptr noundef nonnull %call5) #11
  br label %rules_ops_put.exit

rules_ops_put.exit:                               ; preds = %if.then.i, %if.end165.rules_ops_put.exit_crit_edge
  %owner.i = getelementptr inbounds %struct.fib_rules_ops, ptr %call5, i32 0, i32 18
  %145 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %owner.i, align 4
  call void @module_put(ptr noundef %146) #11
  call void @kfree(ptr noundef %17) #11
  br label %cleanup

errout.thread.sink.split:                         ; preds = %if.then8.errout.thread.sink.split_crit_edge, %do.body.errout.thread.sink.split_crit_edge
  %fib_nl_delrule.__msg.sink = phi ptr [ @fib_nl_delrule.__msg, %do.body.errout.thread.sink.split_crit_edge ], [ @fib_nl_delrule.__msg.9, %if.then8.errout.thread.sink.split_crit_edge ]
  %err.0.ph.ph = phi i32 [ -22, %do.body.errout.thread.sink.split_crit_edge ], [ -97, %if.then8.errout.thread.sink.split_crit_edge ]
  %147 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %fib_nl_delrule.__msg.sink, ptr %extack, align 4
  br label %errout.thread

errout.thread:                                    ; preds = %errout.thread.sink.split, %if.then8.errout.thread_crit_edge, %do.body.errout.thread_crit_edge
  %err.0.ph = phi i32 [ -97, %if.then8.errout.thread_crit_edge ], [ -22, %do.body.errout.thread_crit_edge ], [ %err.0.ph.ph, %errout.thread.sink.split ]
  %148 = ptrtoint ptr %nlrule to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %nlrule, align 4
  tail call void @kfree(ptr noundef %149) #11
  br label %cleanup

if.then.i239:                                     ; preds = %if.then46.if.then.i239_crit_edge, %if.end41.if.then.i239_crit_edge, %rule_find.exit.if.then.i239_crit_edge, %for.inc.i.if.then.i239_crit_edge, %if.end35.if.then.i239_crit_edge, %if.end30.if.then.i239_crit_edge, %if.then25, %do.body22.if.then.i239_crit_edge, %do.body22.thread
  %err.0260 = phi i32 [ -2, %if.end35.if.then.i239_crit_edge ], [ %call5.i.i, %do.body22.if.then.i239_crit_edge ], [ %retval.0.i.i244267, %if.then25 ], [ %call32, %if.end30.if.then.i239_crit_edge ], [ -22, %do.body22.thread ], [ %call48, %if.then46.if.then.i239_crit_edge ], [ -2, %rule_find.exit.if.then.i239_crit_edge ], [ -1, %if.end41.if.then.i239_crit_edge ], [ -2, %for.inc.i.if.then.i239_crit_edge ]
  %150 = ptrtoint ptr %nlrule to i32
  call void @__asan_load4_noabort(i32 %150)
  %.sink = load ptr, ptr %nlrule, align 4
  call void @kfree(ptr noundef %.sink) #11
  %owner.i238 = getelementptr inbounds %struct.fib_rules_ops, ptr %call5, i32 0, i32 18
  %151 = ptrtoint ptr %owner.i238 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %owner.i238, align 4
  call void @module_put(ptr noundef %152) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i239, %errout.thread, %rules_ops_put.exit
  %retval.0 = phi i32 [ 0, %rules_ops_put.exit ], [ %err.0.ph, %errout.thread ], [ %err.0260, %if.then.i239 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %user_priority) #11
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %tb) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nlrule) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_tunnel_unneed_metadata() local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fib_rule_put(ptr noundef %rule) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %refcnt = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 15
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !134
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #11, !srcloc !135
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %refcount_dec_and_test.exit, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end5_crit_edge, label %if.then10.i.i.i, !prof !136

if.end5.i.i.i.if.end5_crit_edge:                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 3) #11
  br label %if.end5

refcount_dec_and_test.exit:                       ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !137
  %tobool.not.not = icmp eq ptr %rule, null
  br i1 %tobool.not.not, label %refcount_dec_and_test.exit.if.end5_crit_edge, label %do.end

refcount_dec_and_test.exit.if.end5_crit_edge:     ; preds = %refcount_dec_and_test.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

do.end:                                           ; preds = %refcount_dec_and_test.exit
  call void @__sanitizer_cov_trace_pc() #13
  %rcu = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 24
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 120 to ptr)) #11
  br label %if.end5

if.end5:                                          ; preds = %do.end, %refcount_dec_and_test.exit.if.end5_crit_edge, %if.then10.i.i.i, %if.end5.i.i.i.if.end5_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fib_rules_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtnl_register(i32 noundef 0, i32 noundef 32, ptr noundef nonnull @fib_nl_newrule, ptr noundef null, i32 noundef 0) #11
  tail call void @rtnl_register(i32 noundef 0, i32 noundef 33, ptr noundef nonnull @fib_nl_delrule, ptr noundef null, i32 noundef 0) #11
  tail call void @rtnl_register(i32 noundef 0, i32 noundef 34, ptr noundef null, ptr noundef nonnull @fib_nl_dumprule, i32 noundef 0) #11
  %call = tail call i32 @register_pernet_subsys(ptr noundef nonnull @fib_rules_net_ops) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.fail_crit_edge, label %if.end

entry.fail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @fib_rules_notifier) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %fail_unregister, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

fail_unregister:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @fib_rules_net_ops) #11
  br label %fail

fail:                                             ; preds = %fail_unregister, %entry.fail_crit_edge
  %err.0 = phi i32 [ %call, %entry.fail_crit_edge ], [ %call1, %fail_unregister ]
  %call5 = tail call i32 @rtnl_unregister(i32 noundef 0, i32 noundef 32) #11
  %call6 = tail call i32 @rtnl_unregister(i32 noundef 0, i32 noundef 33) #11
  %call7 = tail call i32 @rtnl_unregister(i32 noundef 0, i32 noundef 34) #11
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %fail ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @l3mdev_fib_rule_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_fib_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nla_get_kuid_range(ptr noalias nocapture writeonly sret(%struct.fib_kuid_range) align 4 %agg.result, ptr nocapture noundef readonly %tb) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.fib_kuid_range, ptr %agg.result, i32 0, i32 1
  %arrayidx = getelementptr ptr, ptr %tb, i32 20
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 4
  %3 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 99
  %7 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cred, align 16
  %user_ns = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 25
  %9 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %user_ns, align 4
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr.i, align 4
  %call5 = tail call i32 @make_kuid(ptr noundef %10, i32 noundef %12) #11
  %13 = ptrtoint ptr %agg.result to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call5, ptr %agg.result, align 4
  %14 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task, align 8
  %cred14 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 99
  %16 = ptrtoint ptr %cred14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cred14, align 16
  %user_ns15 = getelementptr inbounds %struct.cred, ptr %17, i32 0, i32 25
  %18 = ptrtoint ptr %user_ns15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %user_ns15, align 4
  %end16 = getelementptr i8, ptr %2, i32 8
  %20 = ptrtoint ptr %end16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %end16, align 4
  %call17 = tail call i32 @make_kuid(ptr noundef %19, i32 noundef %21) #11
  %22 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call17, ptr %0, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_fib_notifiers(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fib_nl_fill_rule(ptr noundef %skb, ptr noundef %rule, i32 noundef %pid, i32 noundef %seq, i32 noundef %type, i32 noundef %flags, ptr nocapture noundef readonly %ops) unnamed_addr #1 align 64 {
entry:
  %tmp.i249 = alloca i32, align 4
  %tmp.i247 = alloca i8, align 1
  %tmp.i236 = alloca i8, align 1
  %tmp.i234 = alloca i64, align 8
  %tmp.i232 = alloca i32, align 4
  %tmp.i230 = alloca i32, align 4
  %tmp.i228 = alloca i32, align 4
  %tmp.i226 = alloca i32, align 4
  %tmp.i223 = alloca i8, align 1
  %tmp.i221 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %0 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.i.not.i.i = icmp eq i32 %1, 0
  br i1 %tobool.i.not.i.i, label %skb_tailroom.exit.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %sub.ptr.sub.i.i)
  %cmp.i = icmp slt i32 %sub.ptr.sub.i.i, 28
  br i1 %cmp.i, label %skb_tailroom.exit.i.cleanup_crit_edge, label %nlmsg_put.exit, !prof !140

skb_tailroom.exit.i.cleanup_crit_edge:            ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

nlmsg_put.exit:                                   ; preds = %skb_tailroom.exit.i
  %call3.i = tail call ptr @__nlmsg_put(ptr noundef %skb, i32 noundef %pid, i32 noundef %seq, i32 noundef %type, i32 noundef 12, i32 noundef %flags) #11
  %cmp = icmp eq ptr %call3.i, null
  br i1 %cmp, label %nlmsg_put.exit.cleanup_crit_edge, label %if.end

nlmsg_put.exit.cleanup_crit_edge:                 ; preds = %nlmsg_put.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %nlmsg_put.exit
  %add.ptr.i = getelementptr i8, ptr %call3.i, i32 16
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ops, align 4
  %conv = trunc i32 %7 to i8
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %add.ptr.i, align 4
  %table = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 6
  %9 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %10)
  %cmp3 = icmp ult i32 %10, 256
  %11 = trunc i32 %10 to i8
  %conv6 = select i1 %cmp3, i8 %11, i8 -4
  %table7 = getelementptr i8, ptr %call3.i, i32 20
  %12 = ptrtoint ptr %table7 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv6, ptr %table7, align 4
  %13 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %table, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #11
  %15 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 15, i32 noundef 4, ptr noundef nonnull %tmp.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end11, label %if.end.if.then.i.i_crit_edge

if.end.if.then.i.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.end11:                                         ; preds = %if.end
  %suppress_prefixlen = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 18
  %16 = ptrtoint ptr %suppress_prefixlen to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %suppress_prefixlen, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i221) #11
  %18 = ptrtoint ptr %tmp.i221 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %tmp.i221, align 4
  %call.i222 = call i32 @nla_put(ptr noundef %skb, i32 noundef 14, i32 noundef 4, ptr noundef nonnull %tmp.i221) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i221) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i222)
  %tobool13.not = icmp eq i32 %call.i222, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.if.then.i.i_crit_edge

if.end11.if.then.i.i_crit_edge:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.end15:                                         ; preds = %if.end11
  %res1 = getelementptr i8, ptr %call3.i, i32 21
  %19 = ptrtoint ptr %res1 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %res1, align 1
  %res2 = getelementptr i8, ptr %call3.i, i32 22
  %20 = ptrtoint ptr %res2 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %res2, align 2
  %action = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 7
  %21 = ptrtoint ptr %action to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %action, align 8
  %action16 = getelementptr i8, ptr %call3.i, i32 23
  %23 = ptrtoint ptr %action16 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %action16, align 1
  %flags17 = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 5
  %24 = ptrtoint ptr %flags17 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags17, align 8
  %flags18 = getelementptr i8, ptr %call3.i, i32 24
  %26 = ptrtoint ptr %flags18 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %flags18, align 4
  %proto = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 9
  %27 = ptrtoint ptr %proto to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %proto, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i223) #11
  %29 = ptrtoint ptr %tmp.i223 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %tmp.i223, align 1
  %call.i224 = call i32 @nla_put(ptr noundef %skb, i32 noundef 21, i32 noundef 1, ptr noundef nonnull %tmp.i223) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i223) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i224)
  %tobool20.not = icmp eq i32 %call.i224, 0
  br i1 %tobool20.not, label %if.end22, label %if.end15.if.then.i.i_crit_edge

if.end15.if.then.i.i_crit_edge:                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.end22:                                         ; preds = %if.end15
  %30 = ptrtoint ptr %action to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %action, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %31)
  %cmp25 = icmp eq i8 %31, 2
  br i1 %cmp25, label %land.lhs.true, label %if.end22.if.end32_crit_edge

if.end22.if.end32_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

land.lhs.true:                                    ; preds = %if.end22
  %ctarget = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 13
  %32 = ptrtoint ptr %ctarget to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %ctarget, align 8
  %cmp28 = icmp eq ptr %33, null
  br i1 %cmp28, label %if.then30, label %land.lhs.true.if.end32_crit_edge

land.lhs.true.if.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

if.then30:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %flags18 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags18, align 4
  %or = or i32 %35, 4
  store i32 %or, ptr %flags18, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %land.lhs.true.if.end32_crit_edge, %if.end22.if.end32_crit_edge
  %iifname = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 19
  %36 = ptrtoint ptr %iifname to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %iifname, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool33.not = icmp eq i8 %37, 0
  br i1 %tobool33.not, label %if.end32.if.end46_crit_edge, label %if.then34

if.end32.if.end46_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

if.then34:                                        ; preds = %if.end32
  %call.i225 = call i32 @strlen(ptr noundef %iifname) #15
  %add.i = add i32 %call.i225, 1
  %call1.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef %add.i, ptr noundef %iifname) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool37.not = icmp eq i32 %call1.i, 0
  br i1 %tobool37.not, label %if.end39, label %if.then34.if.then.i.i_crit_edge

if.then34.if.then.i.i_crit_edge:                  ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.end39:                                         ; preds = %if.then34
  %iifindex = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 1
  %38 = ptrtoint ptr %iifindex to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %iifindex, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %39)
  %cmp40 = icmp eq i32 %39, -1
  br i1 %cmp40, label %if.then42, label %if.end39.if.end46_crit_edge

if.end39.if.end46_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

if.then42:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  %40 = ptrtoint ptr %flags18 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags18, align 4
  %or44 = or i32 %41, 8
  store i32 %or44, ptr %flags18, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then42, %if.end39.if.end46_crit_edge, %if.end32.if.end46_crit_edge
  %oifname = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 20
  %42 = ptrtoint ptr %oifname to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %oifname, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool48.not = icmp eq i8 %43, 0
  br i1 %tobool48.not, label %if.end46.if.end62_crit_edge, label %if.then49

if.end46.if.end62_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62

if.then49:                                        ; preds = %if.end46
  %call52 = call fastcc i32 @nla_put_string(ptr noundef %skb, i32 noundef 17, ptr noundef %oifname)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end55, label %if.then49.if.then.i.i_crit_edge

if.then49.if.then.i.i_crit_edge:                  ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.end55:                                         ; preds = %if.then49
  %oifindex = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 2
  %44 = ptrtoint ptr %oifindex to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %oifindex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %45)
  %cmp56 = icmp eq i32 %45, -1
  br i1 %cmp56, label %if.then58, label %if.end55.if.end62_crit_edge

if.end55.if.end62_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62

if.then58:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  %46 = ptrtoint ptr %flags18 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flags18, align 4
  %or60 = or i32 %47, 16
  store i32 %or60, ptr %flags18, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.then58, %if.end55.if.end62_crit_edge, %if.end46.if.end62_crit_edge
  %pref = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 16
  %48 = ptrtoint ptr %pref to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pref, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool63.not = icmp eq i32 %49, 0
  br i1 %tobool63.not, label %if.end62.lor.lhs.false_crit_edge, label %land.lhs.true64

if.end62.lor.lhs.false_crit_edge:                 ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false

land.lhs.true64:                                  ; preds = %if.end62
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i226) #11
  %50 = ptrtoint ptr %tmp.i226 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %tmp.i226, align 4
  %call.i227 = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %tmp.i226) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i226) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i227)
  %tobool67.not = icmp eq i32 %call.i227, 0
  br i1 %tobool67.not, label %land.lhs.true64.lor.lhs.false_crit_edge, label %land.lhs.true64.if.then.i.i_crit_edge

land.lhs.true64.if.then.i.i_crit_edge:            ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

land.lhs.true64.lor.lhs.false_crit_edge:          ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true64.lor.lhs.false_crit_edge, %if.end62.lor.lhs.false_crit_edge
  %mark = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 3
  %51 = ptrtoint ptr %mark to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %mark, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool68.not = icmp eq i32 %52, 0
  br i1 %tobool68.not, label %lor.lhs.false.lor.lhs.false73_crit_edge, label %land.lhs.true69

lor.lhs.false.lor.lhs.false73_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false73

land.lhs.true69:                                  ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i228) #11
  %53 = ptrtoint ptr %tmp.i228 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %tmp.i228, align 4
  %call.i229 = call i32 @nla_put(ptr noundef %skb, i32 noundef 10, i32 noundef 4, ptr noundef nonnull %tmp.i228) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i228) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i229)
  %tobool72.not = icmp eq i32 %call.i229, 0
  br i1 %tobool72.not, label %land.lhs.true69.lor.lhs.false73_crit_edge, label %land.lhs.true69.if.then.i.i_crit_edge

land.lhs.true69.if.then.i.i_crit_edge:            ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

land.lhs.true69.lor.lhs.false73_crit_edge:        ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false73

lor.lhs.false73:                                  ; preds = %land.lhs.true69.lor.lhs.false73_crit_edge, %lor.lhs.false.lor.lhs.false73_crit_edge
  %mark_mask = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 4
  %54 = ptrtoint ptr %mark_mask to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %mark_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool74.not = icmp eq i32 %55, 0
  br i1 %tobool74.not, label %lor.lhs.false75, label %lor.lhs.false73.land.lhs.true78_crit_edge

lor.lhs.false73.land.lhs.true78_crit_edge:        ; preds = %lor.lhs.false73
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true78

lor.lhs.false75:                                  ; preds = %lor.lhs.false73
  %56 = ptrtoint ptr %mark to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %mark, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool77.not = icmp eq i32 %57, 0
  br i1 %tobool77.not, label %lor.lhs.false75.lor.lhs.false82_crit_edge, label %lor.lhs.false75.land.lhs.true78_crit_edge

lor.lhs.false75.land.lhs.true78_crit_edge:        ; preds = %lor.lhs.false75
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true78

lor.lhs.false75.lor.lhs.false82_crit_edge:        ; preds = %lor.lhs.false75
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false82

land.lhs.true78:                                  ; preds = %lor.lhs.false75.land.lhs.true78_crit_edge, %lor.lhs.false73.land.lhs.true78_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i230) #11
  %58 = ptrtoint ptr %tmp.i230 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %55, ptr %tmp.i230, align 4
  %call.i231 = call i32 @nla_put(ptr noundef %skb, i32 noundef 16, i32 noundef 4, ptr noundef nonnull %tmp.i230) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i230) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i231)
  %tobool81.not = icmp eq i32 %call.i231, 0
  br i1 %tobool81.not, label %land.lhs.true78.lor.lhs.false82_crit_edge, label %land.lhs.true78.if.then.i.i_crit_edge

land.lhs.true78.if.then.i.i_crit_edge:            ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

land.lhs.true78.lor.lhs.false82_crit_edge:        ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false82

lor.lhs.false82:                                  ; preds = %land.lhs.true78.lor.lhs.false82_crit_edge, %lor.lhs.false75.lor.lhs.false82_crit_edge
  %target = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 11
  %59 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %target, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool83.not = icmp eq i32 %60, 0
  br i1 %tobool83.not, label %lor.lhs.false82.lor.lhs.false88_crit_edge, label %land.lhs.true84

lor.lhs.false82.lor.lhs.false88_crit_edge:        ; preds = %lor.lhs.false82
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false88

land.lhs.true84:                                  ; preds = %lor.lhs.false82
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i232) #11
  %61 = ptrtoint ptr %tmp.i232 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %tmp.i232, align 4
  %call.i233 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i232) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i232) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i233)
  %tobool87.not = icmp eq i32 %call.i233, 0
  br i1 %tobool87.not, label %land.lhs.true84.lor.lhs.false88_crit_edge, label %land.lhs.true84.if.then.i.i_crit_edge

land.lhs.true84.if.then.i.i_crit_edge:            ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

land.lhs.true84.lor.lhs.false88_crit_edge:        ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false88

lor.lhs.false88:                                  ; preds = %land.lhs.true84.lor.lhs.false88_crit_edge, %lor.lhs.false82.lor.lhs.false88_crit_edge
  %tun_id = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 12
  %62 = ptrtoint ptr %tun_id to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %tun_id, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %63)
  %tobool89.not = icmp eq i64 %63, 0
  br i1 %tobool89.not, label %lor.lhs.false88.lor.lhs.false94_crit_edge, label %land.lhs.true90

lor.lhs.false88.lor.lhs.false94_crit_edge:        ; preds = %lor.lhs.false88
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false94

land.lhs.true90:                                  ; preds = %lor.lhs.false88
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i234) #11
  %64 = ptrtoint ptr %tmp.i234 to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %63, ptr %tmp.i234, align 8
  %call.i235 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 12, i32 noundef 8, ptr noundef nonnull %tmp.i234, i32 noundef 18) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i234) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i235)
  %tobool93.not = icmp eq i32 %call.i235, 0
  br i1 %tobool93.not, label %land.lhs.true90.lor.lhs.false94_crit_edge, label %land.lhs.true90.if.then.i.i_crit_edge

land.lhs.true90.if.then.i.i_crit_edge:            ; preds = %land.lhs.true90
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

land.lhs.true90.lor.lhs.false94_crit_edge:        ; preds = %land.lhs.true90
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false94

lor.lhs.false94:                                  ; preds = %land.lhs.true90.lor.lhs.false94_crit_edge, %lor.lhs.false88.lor.lhs.false94_crit_edge
  %l3mdev = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 8
  %65 = ptrtoint ptr %l3mdev to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %l3mdev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool96.not = icmp eq i8 %66, 0
  br i1 %tobool96.not, label %lor.lhs.false94.lor.lhs.false101_crit_edge, label %land.lhs.true97

lor.lhs.false94.lor.lhs.false101_crit_edge:       ; preds = %lor.lhs.false94
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false101

land.lhs.true97:                                  ; preds = %lor.lhs.false94
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i236) #11
  %67 = ptrtoint ptr %tmp.i236 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %tmp.i236, align 1
  %call.i237 = call i32 @nla_put(ptr noundef %skb, i32 noundef 19, i32 noundef 1, ptr noundef nonnull %tmp.i236) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i236) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i237)
  %tobool100.not = icmp eq i32 %call.i237, 0
  br i1 %tobool100.not, label %land.lhs.true97.lor.lhs.false101_crit_edge, label %land.lhs.true97.if.then.i.i_crit_edge

land.lhs.true97.if.then.i.i_crit_edge:            ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

land.lhs.true97.lor.lhs.false101_crit_edge:       ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false101

lor.lhs.false101:                                 ; preds = %land.lhs.true97.lor.lhs.false101_crit_edge, %lor.lhs.false94.lor.lhs.false101_crit_edge
  %uid_range = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 21
  %68 = ptrtoint ptr %uid_range to i32
  call void @__asan_load4_noabort(i32 %68)
  %.unpack.i = load i32, ptr %uid_range, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.unpack.i)
  %cmp.i.not.i = icmp eq i32 %.unpack.i, -1
  br i1 %cmp.i.not.i, label %lor.lhs.false101.lor.lhs.false108_crit_edge, label %uid_range_set.exit

lor.lhs.false101.lor.lhs.false108_crit_edge:      ; preds = %lor.lhs.false101
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false108

uid_range_set.exit:                               ; preds = %lor.lhs.false101
  %end.i = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 21, i32 1
  %69 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %.unpack4.i = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.unpack4.i)
  %cmp.i5.i.not = icmp eq i32 %.unpack4.i, -1
  br i1 %cmp.i5.i.not, label %uid_range_set.exit.lor.lhs.false108_crit_edge, label %land.lhs.true104

uid_range_set.exit.lor.lhs.false108_crit_edge:    ; preds = %uid_range_set.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false108

land.lhs.true104:                                 ; preds = %uid_range_set.exit
  %call106 = call fastcc i32 @nla_put_uid_range(ptr noundef %skb, ptr noundef %uid_range)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %land.lhs.true104.lor.lhs.false108_crit_edge, label %land.lhs.true104.if.then.i.i_crit_edge

land.lhs.true104.if.then.i.i_crit_edge:           ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

land.lhs.true104.lor.lhs.false108_crit_edge:      ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false108

lor.lhs.false108:                                 ; preds = %land.lhs.true104.lor.lhs.false108_crit_edge, %uid_range_set.exit.lor.lhs.false108_crit_edge, %lor.lhs.false101.lor.lhs.false108_crit_edge
  %sport_range = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 22
  %70 = ptrtoint ptr %sport_range to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %sport_range, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %71)
  %cmp.not.i = icmp eq i16 %71, 0
  br i1 %cmp.not.i, label %lor.lhs.false108.lor.lhs.false115_crit_edge, label %fib_rule_port_range_set.exit

lor.lhs.false108.lor.lhs.false115_crit_edge:      ; preds = %lor.lhs.false108
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false115

fib_rule_port_range_set.exit:                     ; preds = %lor.lhs.false108
  %end.i238 = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 22, i32 1
  %72 = ptrtoint ptr %end.i238 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %end.i238, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %73)
  %cmp3.i.not = icmp eq i16 %73, 0
  br i1 %cmp3.i.not, label %fib_rule_port_range_set.exit.lor.lhs.false115_crit_edge, label %land.lhs.true111

fib_rule_port_range_set.exit.lor.lhs.false115_crit_edge: ; preds = %fib_rule_port_range_set.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false115

land.lhs.true111:                                 ; preds = %fib_rule_port_range_set.exit
  %call.i240 = call i32 @nla_put(ptr noundef %skb, i32 noundef 23, i32 noundef 4, ptr noundef %sport_range) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i240)
  %tobool114.not = icmp eq i32 %call.i240, 0
  br i1 %tobool114.not, label %land.lhs.true111.lor.lhs.false115_crit_edge, label %land.lhs.true111.if.then.i.i_crit_edge

land.lhs.true111.if.then.i.i_crit_edge:           ; preds = %land.lhs.true111
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

land.lhs.true111.lor.lhs.false115_crit_edge:      ; preds = %land.lhs.true111
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false115

lor.lhs.false115:                                 ; preds = %land.lhs.true111.lor.lhs.false115_crit_edge, %fib_rule_port_range_set.exit.lor.lhs.false115_crit_edge, %lor.lhs.false108.lor.lhs.false115_crit_edge
  %dport_range = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 23
  %74 = ptrtoint ptr %dport_range to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %dport_range, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %75)
  %cmp.not.i241 = icmp eq i16 %75, 0
  br i1 %cmp.not.i241, label %lor.lhs.false115.lor.lhs.false122_crit_edge, label %fib_rule_port_range_set.exit245

lor.lhs.false115.lor.lhs.false122_crit_edge:      ; preds = %lor.lhs.false115
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false122

fib_rule_port_range_set.exit245:                  ; preds = %lor.lhs.false115
  %end.i242 = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 23, i32 1
  %76 = ptrtoint ptr %end.i242 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %end.i242, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %77)
  %cmp3.i243.not = icmp eq i16 %77, 0
  br i1 %cmp3.i243.not, label %fib_rule_port_range_set.exit245.lor.lhs.false122_crit_edge, label %land.lhs.true118

fib_rule_port_range_set.exit245.lor.lhs.false122_crit_edge: ; preds = %fib_rule_port_range_set.exit245
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false122

land.lhs.true118:                                 ; preds = %fib_rule_port_range_set.exit245
  %call.i246 = call i32 @nla_put(ptr noundef %skb, i32 noundef 24, i32 noundef 4, ptr noundef %dport_range) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i246)
  %tobool121.not = icmp eq i32 %call.i246, 0
  br i1 %tobool121.not, label %land.lhs.true118.lor.lhs.false122_crit_edge, label %land.lhs.true118.if.then.i.i_crit_edge

land.lhs.true118.if.then.i.i_crit_edge:           ; preds = %land.lhs.true118
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

land.lhs.true118.lor.lhs.false122_crit_edge:      ; preds = %land.lhs.true118
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false122

lor.lhs.false122:                                 ; preds = %land.lhs.true118.lor.lhs.false122_crit_edge, %fib_rule_port_range_set.exit245.lor.lhs.false122_crit_edge, %lor.lhs.false115.lor.lhs.false122_crit_edge
  %ip_proto = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 10
  %78 = ptrtoint ptr %ip_proto to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %ip_proto, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool124.not = icmp eq i8 %79, 0
  br i1 %tobool124.not, label %lor.lhs.false122.if.end130_crit_edge, label %land.lhs.true125

lor.lhs.false122.if.end130_crit_edge:             ; preds = %lor.lhs.false122
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end130

land.lhs.true125:                                 ; preds = %lor.lhs.false122
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i247) #11
  %80 = ptrtoint ptr %tmp.i247 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %tmp.i247, align 1
  %call.i248 = call i32 @nla_put(ptr noundef %skb, i32 noundef 22, i32 noundef 1, ptr noundef nonnull %tmp.i247) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i247) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i248)
  %tobool128.not = icmp eq i32 %call.i248, 0
  br i1 %tobool128.not, label %land.lhs.true125.if.end130_crit_edge, label %land.lhs.true125.if.then.i.i_crit_edge

land.lhs.true125.if.then.i.i_crit_edge:           ; preds = %land.lhs.true125
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

land.lhs.true125.if.end130_crit_edge:             ; preds = %land.lhs.true125
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end130

if.end130:                                        ; preds = %land.lhs.true125.if.end130_crit_edge, %lor.lhs.false122.if.end130_crit_edge
  %suppress_ifgroup = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 17
  %81 = ptrtoint ptr %suppress_ifgroup to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %suppress_ifgroup, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %82)
  %cmp131.not = icmp eq i32 %82, -1
  br i1 %cmp131.not, label %if.end130.if.end139_crit_edge, label %if.then133

if.end130.if.end139_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end139

if.then133:                                       ; preds = %if.end130
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i249) #11
  %83 = ptrtoint ptr %tmp.i249 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %tmp.i249, align 4
  %call.i250 = call i32 @nla_put(ptr noundef %skb, i32 noundef 13, i32 noundef 4, ptr noundef nonnull %tmp.i249) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i249) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i250)
  %tobool136.not = icmp eq i32 %call.i250, 0
  br i1 %tobool136.not, label %if.then133.if.end139_crit_edge, label %if.then133.if.then.i.i_crit_edge

if.then133.if.then.i.i_crit_edge:                 ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.then133.if.end139_crit_edge:                   ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end139

if.end139:                                        ; preds = %if.then133.if.end139_crit_edge, %if.end130.if.end139_crit_edge
  %fill = getelementptr inbounds %struct.fib_rules_ops, ptr %ops, i32 0, i32 13
  %84 = ptrtoint ptr %fill to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %fill, align 4
  %call140 = call i32 %85(ptr noundef %rule, ptr noundef %skb, ptr noundef %add.ptr.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140)
  %cmp141 = icmp slt i32 %call140, 0
  br i1 %cmp141, label %if.end139.if.then.i.i_crit_edge, label %if.end144

if.end139.if.then.i.i_crit_edge:                  ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.end144:                                        ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #13
  %86 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %87 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %call3.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %88 = ptrtoint ptr %call3.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %sub.ptr.sub.i, ptr %call3.i, align 4
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end139.if.then.i.i_crit_edge, %if.then133.if.then.i.i_crit_edge, %land.lhs.true125.if.then.i.i_crit_edge, %land.lhs.true118.if.then.i.i_crit_edge, %land.lhs.true111.if.then.i.i_crit_edge, %land.lhs.true104.if.then.i.i_crit_edge, %land.lhs.true97.if.then.i.i_crit_edge, %land.lhs.true90.if.then.i.i_crit_edge, %land.lhs.true84.if.then.i.i_crit_edge, %land.lhs.true78.if.then.i.i_crit_edge, %land.lhs.true69.if.then.i.i_crit_edge, %land.lhs.true64.if.then.i.i_crit_edge, %if.then49.if.then.i.i_crit_edge, %if.then34.if.then.i.i_crit_edge, %if.end15.if.then.i.i_crit_edge, %if.end11.if.then.i.i_crit_edge, %if.end.if.then.i.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %89 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp ugt ptr %90, %call3.i
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.nlmsg_cancel.exit_crit_edge, !prof !140

if.then.i.i.nlmsg_cancel.exit_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nlmsg_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 991, i32 noundef 9, ptr noundef null) #11
  br label %nlmsg_cancel.exit

nlmsg_cancel.exit:                                ; preds = %do.end.i.i, %if.then.i.i.nlmsg_cancel.exit_crit_edge
  %91 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i252 = ptrtoint ptr %call3.i to i32
  %sub.ptr.rhs.cast.i.i253 = ptrtoint ptr %92 to i32
  %sub.ptr.sub.i.i254 = sub i32 %sub.ptr.lhs.cast.i.i252, %sub.ptr.rhs.cast.i.i253
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i254) #11
  br label %cleanup

cleanup:                                          ; preds = %nlmsg_cancel.exit, %if.end144, %nlmsg_put.exit.cleanup_crit_edge, %skb_tailroom.exit.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %nlmsg_cancel.exit ], [ 0, %if.end144 ], [ -90, %nlmsg_put.exit.cleanup_crit_edge ], [ -90, %skb_tailroom.exit.i.cleanup_crit_edge ], [ -90, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_notify(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_set_sk_err(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nla_put_string(ptr noundef %skb, i32 noundef %attrtype, ptr noundef %str) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @strlen(ptr noundef %str) #16
  %add = add i32 %call, 1
  %call1 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef %attrtype, i32 noundef %add, ptr noundef %str) #11
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nla_put_uid_range(ptr noundef %skb, ptr nocapture noundef readonly %range) unnamed_addr #1 align 64 {
entry:
  %out = alloca %struct.fib_rule_uid_range, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out) #11
  %0 = getelementptr inbounds %struct.fib_rule_uid_range, ptr %out, i32 0, i32 1
  %1 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 99
  %5 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cred, align 16
  %user_ns = getelementptr inbounds %struct.cred, ptr %6, i32 0, i32 25
  %7 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %user_ns, align 4
  %9 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %9)
  %.unpack = load i32, ptr %range, align 4
  %10 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call3 = tail call i32 @from_kuid_munged(ptr noundef %8, [1 x i32] %10) #11
  %11 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call3, ptr %out, align 4
  %12 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task, align 8
  %cred11 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 99
  %14 = ptrtoint ptr %cred11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cred11, align 16
  %user_ns12 = getelementptr inbounds %struct.cred, ptr %15, i32 0, i32 25
  %16 = ptrtoint ptr %user_ns12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %user_ns12, align 4
  %end13 = getelementptr inbounds %struct.fib_kuid_range, ptr %range, i32 0, i32 1
  %18 = ptrtoint ptr %end13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.unpack18 = load i32, ptr %end13, align 4
  %19 = insertvalue [1 x i32] undef, i32 %.unpack18, 0
  %call15 = tail call i32 @from_kuid_munged(ptr noundef %17, [1 x i32] %19) #11
  %20 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call15, ptr %0, align 4
  %call16 = call i32 @nla_put(ptr noundef %skb, i32 noundef 20, i32 noundef 8, ptr noundef nonnull %out) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out) #11
  ret i32 %call16
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__nlmsg_put(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put_64bit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_register(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fib_nl_dumprule(ptr noundef %skb, ptr nocapture noundef %cb) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %8 = load i8, ptr %strict_check, align 4, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then:                                          ; preds = %entry
  %extack = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 6
  %9 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %extack, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %12)
  %cmp.i = icmp ult i32 %12, 28
  br i1 %cmp.i, label %do.body.i, label %if.end2.i

do.body.i:                                        ; preds = %if.then
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib_valid_dumprule_req.__msg) #11
  %tobool.not.i77 = icmp eq ptr %10, null
  br i1 %tobool.not.i77, label %do.body.i.cleanup48_crit_edge, label %do.body.i.cleanup.sink.split.i_crit_edge

do.body.i.cleanup.sink.split.i_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i

do.body.i.cleanup48_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup48

if.end2.i:                                        ; preds = %if.then
  %dst_len.i = getelementptr i8, ptr %1, i32 17
  %13 = ptrtoint ptr %dst_len.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %dst_len.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool4.not.i = icmp eq i8 %14, 0
  br i1 %tobool4.not.i, label %lor.lhs.false.i, label %if.end2.i.do.body25.i_crit_edge

if.end2.i.do.body25.i_crit_edge:                  ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body25.i

lor.lhs.false.i:                                  ; preds = %if.end2.i
  %src_len.i = getelementptr i8, ptr %1, i32 18
  %15 = ptrtoint ptr %src_len.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %src_len.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool6.not.i = icmp eq i8 %16, 0
  br i1 %tobool6.not.i, label %lor.lhs.false7.i, label %lor.lhs.false.i.do.body25.i_crit_edge

lor.lhs.false.i.do.body25.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body25.i

lor.lhs.false7.i:                                 ; preds = %lor.lhs.false.i
  %tos.i = getelementptr i8, ptr %1, i32 19
  %17 = ptrtoint ptr %tos.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %tos.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool9.not.i = icmp eq i8 %18, 0
  br i1 %tobool9.not.i, label %lor.lhs.false10.i, label %lor.lhs.false7.i.do.body25.i_crit_edge

lor.lhs.false7.i.do.body25.i_crit_edge:           ; preds = %lor.lhs.false7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body25.i

lor.lhs.false10.i:                                ; preds = %lor.lhs.false7.i
  %table.i = getelementptr i8, ptr %1, i32 20
  %19 = ptrtoint ptr %table.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %table.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool12.not.i = icmp eq i8 %20, 0
  br i1 %tobool12.not.i, label %lor.lhs.false13.i, label %lor.lhs.false10.i.do.body25.i_crit_edge

lor.lhs.false10.i.do.body25.i_crit_edge:          ; preds = %lor.lhs.false10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body25.i

lor.lhs.false13.i:                                ; preds = %lor.lhs.false10.i
  %res1.i = getelementptr i8, ptr %1, i32 21
  %21 = ptrtoint ptr %res1.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %res1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool15.not.i = icmp eq i8 %22, 0
  br i1 %tobool15.not.i, label %lor.lhs.false16.i, label %lor.lhs.false13.i.do.body25.i_crit_edge

lor.lhs.false13.i.do.body25.i_crit_edge:          ; preds = %lor.lhs.false13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body25.i

lor.lhs.false16.i:                                ; preds = %lor.lhs.false13.i
  %res2.i = getelementptr i8, ptr %1, i32 22
  %23 = ptrtoint ptr %res2.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %res2.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool18.not.i = icmp eq i8 %24, 0
  br i1 %tobool18.not.i, label %lor.lhs.false19.i, label %lor.lhs.false16.i.do.body25.i_crit_edge

lor.lhs.false16.i.do.body25.i_crit_edge:          ; preds = %lor.lhs.false16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body25.i

lor.lhs.false19.i:                                ; preds = %lor.lhs.false16.i
  %action.i = getelementptr i8, ptr %1, i32 23
  %25 = ptrtoint ptr %action.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %action.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool21.not.i = icmp eq i8 %26, 0
  br i1 %tobool21.not.i, label %lor.lhs.false22.i, label %lor.lhs.false19.i.do.body25.i_crit_edge

lor.lhs.false19.i.do.body25.i_crit_edge:          ; preds = %lor.lhs.false19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body25.i

lor.lhs.false22.i:                                ; preds = %lor.lhs.false19.i
  %flags.i = getelementptr i8, ptr %1, i32 24
  %27 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool23.not.i = icmp eq i32 %28, 0
  br i1 %tobool23.not.i, label %if.end33.i, label %lor.lhs.false22.i.do.body25.i_crit_edge

lor.lhs.false22.i.do.body25.i_crit_edge:          ; preds = %lor.lhs.false22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body25.i

do.body25.i:                                      ; preds = %lor.lhs.false22.i.do.body25.i_crit_edge, %lor.lhs.false19.i.do.body25.i_crit_edge, %lor.lhs.false16.i.do.body25.i_crit_edge, %lor.lhs.false13.i.do.body25.i_crit_edge, %lor.lhs.false10.i.do.body25.i_crit_edge, %lor.lhs.false7.i.do.body25.i_crit_edge, %lor.lhs.false.i.do.body25.i_crit_edge, %if.end2.i.do.body25.i_crit_edge
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib_valid_dumprule_req.__msg.28) #11
  %tobool27.not.i = icmp eq ptr %10, null
  br i1 %tobool27.not.i, label %do.body25.i.cleanup48_crit_edge, label %do.body25.i.cleanup.sink.split.i_crit_edge

do.body25.i.cleanup.sink.split.i_crit_edge:       ; preds = %do.body25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i

do.body25.i.cleanup48_crit_edge:                  ; preds = %do.body25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup48

if.end33.i:                                       ; preds = %lor.lhs.false22.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %12)
  %tobool35.not.i = icmp eq i32 %12, 28
  br i1 %tobool35.not.i, label %if.end33.i.if.end4_crit_edge, label %do.body37.i

if.end33.i.if.end4_crit_edge:                     ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

do.body37.i:                                      ; preds = %if.end33.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib_valid_dumprule_req.__msg.29) #11
  %tobool39.not.i = icmp eq ptr %10, null
  br i1 %tobool39.not.i, label %do.body37.i.cleanup48_crit_edge, label %do.body37.i.cleanup.sink.split.i_crit_edge

do.body37.i.cleanup.sink.split.i_crit_edge:       ; preds = %do.body37.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i

do.body37.i.cleanup48_crit_edge:                  ; preds = %do.body37.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup48

cleanup.sink.split.i:                             ; preds = %do.body37.i.cleanup.sink.split.i_crit_edge, %do.body25.i.cleanup.sink.split.i_crit_edge, %do.body.i.cleanup.sink.split.i_crit_edge
  %fib_valid_dumprule_req.__msg.29.sink.i = phi ptr [ @fib_valid_dumprule_req.__msg, %do.body.i.cleanup.sink.split.i_crit_edge ], [ @fib_valid_dumprule_req.__msg.28, %do.body25.i.cleanup.sink.split.i_crit_edge ], [ @fib_valid_dumprule_req.__msg.29, %do.body37.i.cleanup.sink.split.i_crit_edge ]
  %29 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %fib_valid_dumprule_req.__msg.29.sink.i, ptr %10, align 4
  br label %cleanup48

if.end4:                                          ; preds = %if.end33.i.if.end4_crit_edge, %entry.if.end4_crit_edge
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %31)
  %cmp.not.i = icmp eq i32 %31, 16
  br i1 %cmp.not.i, label %if.end4.if.end13_crit_edge, label %rtnl_msg_family.exit

if.end4.if.end13_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

rtnl_msg_family.exit:                             ; preds = %if.end4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 16
  %32 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %add.ptr.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp6.not = icmp eq i8 %33, 0
  br i1 %cmp6.not, label %rtnl_msg_family.exit.if.end13_crit_edge, label %if.then7

rtnl_msg_family.exit.if.end13_crit_edge:          ; preds = %rtnl_msg_family.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then7:                                         ; preds = %rtnl_msg_family.exit
  %conv.i = zext i8 %33 to i32
  %call8 = tail call fastcc ptr @lookup_rules_ops(ptr noundef %6, i32 noundef %conv.i)
  %cmp9 = icmp eq ptr %call8, null
  br i1 %cmp9, label %if.then7.cleanup48_crit_edge, label %if.end11

if.then7.cleanup48_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup48

if.end11:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  %call12 = tail call fastcc i32 @dump_rules(ptr noundef %skb, ptr noundef %cb, ptr noundef nonnull %call8)
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %34 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len, align 4
  br label %cleanup48

if.end13:                                         ; preds = %rtnl_msg_family.exit.if.end13_crit_edge, %if.end4.if.end13_crit_edge
  %36 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i.i.i.i.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %39, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !138
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %if.end13.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end13.rcu_read_lock.exit_crit_edge:            ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end13
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 696, ptr noundef nonnull @.str.13) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end13.rcu_read_lock.exit_crit_edge
  %call14 = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call16 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true18

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true18:                                  ; preds = %land.lhs.true
  %.b76 = load i1, ptr @fib_nl_dumprule.__warned, align 1
  br i1 %.b76, label %land.lhs.true18.do.end_crit_edge, label %if.then20

land.lhs.true18.do.end_crit_edge:                 ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then20:                                        ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @fib_nl_dumprule.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1169, ptr noundef nonnull @.str.1) #11
  br label %do.end

do.end:                                           ; preds = %if.then20, %land.lhs.true18.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %rules_ops = getelementptr inbounds %struct.net, ptr %6, i32 0, i32 28
  %40 = ptrtoint ptr %rules_ops to i32
  call void @__asan_load4_noabort(i32 %40)
  %.pn93 = load volatile ptr, ptr %rules_ops, align 4
  %cmp27.not95 = icmp eq ptr %.pn93, %rules_ops
  br i1 %cmp27.not95, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %41 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %arrayidx36 = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %skip.for.body_crit_edge, %for.body.lr.ph
  %.pn98 = phi ptr [ %.pn93, %for.body.lr.ph ], [ %.pn, %skip.for.body_crit_edge ]
  %idx.096 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %skip.for.body_crit_edge ]
  %ops.099 = getelementptr i8, ptr %.pn98, i32 -4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.096, i32 %43)
  %cmp28 = icmp slt i32 %idx.096, %43
  br i1 %cmp28, label %for.body.skip_crit_edge, label %lor.lhs.false

for.body.skip_crit_edge:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %skip

lor.lhs.false:                                    ; preds = %for.body
  %owner = getelementptr i8, ptr %.pn98, i32 76
  %44 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %owner, align 4
  %call29 = tail call zeroext i1 @try_module_get(ptr noundef %45) #11
  br i1 %call29, label %if.end31, label %lor.lhs.false.skip_crit_edge

lor.lhs.false.skip_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %skip

if.end31:                                         ; preds = %lor.lhs.false
  %call32 = tail call fastcc i32 @dump_rules(ptr noundef %skb, ptr noundef %cb, ptr noundef %ops.099)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.end31.for.end_crit_edge, label %if.end35

if.end31.for.end_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end35:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  %46 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %arrayidx36, align 4
  br label %skip

skip:                                             ; preds = %if.end35, %lor.lhs.false.skip_crit_edge, %for.body.skip_crit_edge
  %inc = add i32 %idx.096, 1
  %47 = ptrtoint ptr %.pn98 to i32
  call void @__asan_load4_noabort(i32 %47)
  %.pn = load volatile ptr, ptr %.pn98, align 4
  %cmp27.not = icmp eq ptr %.pn, %rules_ops
  br i1 %cmp27.not, label %skip.for.end_crit_edge, label %skip.for.body_crit_edge

skip.for.body_crit_edge:                          ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

skip.for.end_crit_edge:                           ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %skip.for.end_crit_edge, %if.end31.for.end_crit_edge, %do.end.for.end_crit_edge
  %idx.0.lcssa = phi i32 [ 0, %do.end.for.end_crit_edge ], [ %idx.096, %if.end31.for.end_crit_edge ], [ %inc, %skip.for.end_crit_edge ]
  %call.i80 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i80, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i83

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i83:                                ; preds = %for.end
  %call1.i81 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i81)
  %tobool.not.i82 = icmp eq i32 %call1.i81, 0
  br i1 %tobool.not.i82, label %land.lhs.true.i83.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i85

land.lhs.true.i83.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i83
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i85:                               ; preds = %land.lhs.true.i83
  %.b4.i84 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i84, label %land.lhs.true2.i85.rcu_read_unlock.exit_crit_edge, label %if.then.i86

land.lhs.true2.i85.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i85
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i86:                                      ; preds = %land.lhs.true2.i85
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.14) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i86, %land.lhs.true2.i85.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i83.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !141
  %48 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i.i.i.i.i87 = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i.i.i87 to ptr
  %preempt_count.i.i.i.i88 = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %preempt_count.i.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %preempt_count.i.i.i.i88, align 4
  %sub.i.i.i = add i32 %51, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i88, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %52 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %idx.0.lcssa, ptr %52, align 4
  %len47 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %54 = ptrtoint ptr %len47 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %len47, align 4
  br label %cleanup48

cleanup48:                                        ; preds = %rcu_read_unlock.exit, %if.end11, %if.then7.cleanup48_crit_edge, %cleanup.sink.split.i, %do.body37.i.cleanup48_crit_edge, %do.body25.i.cleanup48_crit_edge, %do.body.i.cleanup48_crit_edge
  %retval.1 = phi i32 [ %35, %if.end11 ], [ %55, %rcu_read_unlock.exit ], [ -97, %if.then7.cleanup48_crit_edge ], [ -22, %do.body.i.cleanup48_crit_edge ], [ -22, %do.body25.i.cleanup48_crit_edge ], [ -22, %do.body37.i.cleanup48_crit_edge ], [ -22, %cleanup.sink.split.i ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_unregister(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dump_rules(ptr noundef %skb, ptr nocapture noundef %cb, ptr noundef %ops) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !138
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 696, ptr noundef nonnull @.str.13) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b40 = load i1, ptr @dump_rules.__warned, align 1
  br i1 %.b40, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @dump_rules.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1097, ptr noundef nonnull @.str.1) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %rules_list = getelementptr inbounds %struct.fib_rules_ops, ptr %ops, i32 0, i32 17
  %4 = ptrtoint ptr %rules_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %rule.052 = load volatile ptr, ptr %rules_list, align 4
  %cmp.not53 = icmp eq ptr %rule.052, %rules_list
  br i1 %cmp.not53, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %arrayidx = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 1
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %skip.for.body_crit_edge, %for.body.lr.ph
  %rule.056 = phi ptr [ %rule.052, %for.body.lr.ph ], [ %rule.0, %skip.for.body_crit_edge ]
  %idx.054 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %skip.for.body_crit_edge ]
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.054, i32 %6)
  %cmp10 = icmp slt i32 %idx.054, %6
  br i1 %cmp10, label %for.body.skip_crit_edge, label %if.end12

for.body.skip_crit_edge:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %skip

if.end12:                                         ; preds = %for.body
  %7 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cb, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 3, i32 12
  %9 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %portid, align 4
  %11 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nlmsg_seq, align 4
  %call15 = tail call fastcc i32 @fib_nl_fill_rule(ptr noundef %skb, ptr noundef %rule.056, i32 noundef %10, i32 noundef %14, i32 noundef 32, i32 noundef 2, ptr noundef %ops)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end12.skip_crit_edge, label %if.end12.for.end_crit_edge

if.end12.for.end_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end12.skip_crit_edge:                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %skip

skip:                                             ; preds = %if.end12.skip_crit_edge, %for.body.skip_crit_edge
  %inc = add i32 %idx.054, 1
  %15 = ptrtoint ptr %rule.056 to i32
  call void @__asan_load4_noabort(i32 %15)
  %rule.0 = load volatile ptr, ptr %rule.056, align 4
  %cmp.not = icmp eq ptr %rule.0, %rules_list
  br i1 %cmp.not, label %skip.for.end_crit_edge, label %skip.for.body_crit_edge

skip.for.body_crit_edge:                          ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

skip.for.end_crit_edge:                           ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %skip.for.end_crit_edge, %if.end12.for.end_crit_edge, %do.end.for.end_crit_edge
  %idx.0.lcssa = phi i32 [ 0, %do.end.for.end_crit_edge ], [ %idx.054, %if.end12.for.end_crit_edge ], [ %inc, %skip.for.end_crit_edge ]
  %err.2 = phi i32 [ 0, %do.end.for.end_crit_edge ], [ %call15, %if.end12.for.end_crit_edge ], [ 0, %skip.for.end_crit_edge ]
  %call.i41 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i41, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i44

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i44:                                ; preds = %for.end
  %call1.i42 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i42)
  %tobool.not.i43 = icmp eq i32 %call1.i42, 0
  br i1 %tobool.not.i43, label %land.lhs.true.i44.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i46

land.lhs.true.i44.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i44
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i46:                               ; preds = %land.lhs.true.i44
  %.b4.i45 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i45, label %land.lhs.true2.i46.rcu_read_unlock.exit_crit_edge, label %if.then.i47

land.lhs.true2.i46.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i46
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i47:                                      ; preds = %land.lhs.true2.i46
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.14) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i47, %land.lhs.true2.i46.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i44.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !141
  %16 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i.i.i.i.i48 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i48 to ptr
  %preempt_count.i.i.i.i49 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i49 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i49, align 4
  %sub.i.i.i = add i32 %19, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i49, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %arrayidx28 = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 1
  %20 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %idx.0.lcssa, ptr %arrayidx28, align 4
  %tobool.not.i50 = icmp eq ptr %ops, null
  br i1 %tobool.not.i50, label %rcu_read_unlock.exit.rules_ops_put.exit_crit_edge, label %if.then.i51

rcu_read_unlock.exit.rules_ops_put.exit_crit_edge: ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %rules_ops_put.exit

if.then.i51:                                      ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #13
  %owner.i = getelementptr inbounds %struct.fib_rules_ops, ptr %ops, i32 0, i32 18
  %21 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %owner.i, align 4
  tail call void @module_put(ptr noundef %22) #11
  br label %rules_ops_put.exit

rules_ops_put.exit:                               ; preds = %if.then.i51, %rcu_read_unlock.exit.rules_ops_put.exit_crit_edge
  ret i32 %err.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fib_rules_net_init(ptr noundef %net) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rules_ops = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 28
  %0 = ptrtoint ptr %rules_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %rules_ops, ptr %rules_ops, align 4
  %prev.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 28, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %rules_ops, ptr %prev.i, align 4
  %rules_mod_lock = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %rules_mod_lock, ptr noundef nonnull @.str.30, ptr noundef nonnull @fib_rules_net_init.__key, i16 noundef signext 3) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fib_rules_net_exit(ptr noundef %net) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rules_ops = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 28
  %0 = ptrtoint ptr %rules_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %rules_ops, align 4
  %cmp.i.not = icmp eq ptr %1, %rules_ops
  br i1 %cmp.i.not, label %entry.if.end29_crit_edge, label %land.rhs

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b39 = load i1, ptr @fib_rules_net_exit.__already_done, align 1
  br i1 %.b39, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !136

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @fib_rules_net_exit.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1285, i32 noundef 9, ptr noundef null) #11
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fib_rules_event(ptr nocapture noundef readnone %this, i32 noundef %event, ptr nocapture noundef readonly %ptr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 127
  %2 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nd_net.i, align 4
  %call2 = tail call i32 @rtnl_is_locked() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end31_crit_edge

entry.if.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

land.rhs:                                         ; preds = %entry
  %.b113 = load i1, ptr @fib_rules_event.__already_done, align 1
  br i1 %.b113, label %land.rhs.if.end31_crit_edge, label %if.then, !prof !136

land.rhs.if.end31_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @fib_rules_event.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1248, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str, i32 noundef 1248) #11
  br label %if.end31

if.end31:                                         ; preds = %if.then, %land.rhs.if.end31_crit_edge, %entry.if.end31_crit_edge
  %4 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %event, label %if.end31.sw.epilog_crit_edge [
    i32 5, label %sw.bb
    i32 11, label %sw.bb48
    i32 6, label %sw.bb70
  ]

if.end31.sw.epilog_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end31
  %rules_ops = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 28
  %5 = ptrtoint ptr %rules_ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn112175 = load ptr, ptr %rules_ops, align 4
  %cmp.not176 = icmp eq ptr %.pn112175, %rules_ops
  br i1 %cmp.not176, label %sw.bb.sw.epilog_crit_edge, label %for.body.lr.ph

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

for.body.lr.ph:                                   ; preds = %sw.bb
  %ifindex.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 17
  br label %for.body

for.body:                                         ; preds = %attach_rules.exit.for.body_crit_edge, %for.body.lr.ph
  %.pn112177 = phi ptr [ %.pn112175, %for.body.lr.ph ], [ %.pn112, %attach_rules.exit.for.body_crit_edge ]
  %rules_list = getelementptr i8, ptr %.pn112177, i32 68
  %6 = ptrtoint ptr %rules_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %rule.032.i = load ptr, ptr %rules_list, align 4
  %cmp.not33.i = icmp eq ptr %rule.032.i, %rules_list
  br i1 %cmp.not33.i, label %for.body.attach_rules.exit_crit_edge, label %for.body.for.body.i_crit_edge

for.body.for.body.i_crit_edge:                    ; preds = %for.body
  br label %for.body.i

for.body.attach_rules.exit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %attach_rules.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.for.body.i_crit_edge
  %rule.034.i = phi ptr [ %rule.0.i, %for.inc.i.for.body.i_crit_edge ], [ %rule.032.i, %for.body.for.body.i_crit_edge ]
  %iifindex.i = getelementptr inbounds %struct.fib_rule, ptr %rule.034.i, i32 0, i32 1
  %7 = ptrtoint ptr %iifindex.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %iifindex.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp1.i = icmp eq i32 %8, -1
  br i1 %cmp1.i, label %land.lhs.true.i, label %for.body.i.if.end.i_crit_edge

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %iifname.i = getelementptr inbounds %struct.fib_rule, ptr %rule.034.i, i32 0, i32 19
  %call.i = tail call i32 @strcmp(ptr noundef %1, ptr noundef %iifname.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.i = icmp eq i32 %call.i, 0
  br i1 %cmp3.i, label %if.then.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ifindex.i, align 4
  %11 = ptrtoint ptr %iifindex.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %iifindex.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end.i_crit_edge, %for.body.i.if.end.i_crit_edge
  %oifindex.i = getelementptr inbounds %struct.fib_rule, ptr %rule.034.i, i32 0, i32 2
  %12 = ptrtoint ptr %oifindex.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %oifindex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp5.i = icmp eq i32 %13, -1
  br i1 %cmp5.i, label %land.lhs.true6.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true6.i:                                 ; preds = %if.end.i
  %oifname.i = getelementptr inbounds %struct.fib_rule, ptr %rule.034.i, i32 0, i32 20
  %call10.i = tail call i32 @strcmp(ptr noundef %1, ptr noundef %oifname.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp eq i32 %call10.i, 0
  br i1 %cmp11.i, label %if.then12.i, label %land.lhs.true6.i.for.inc.i_crit_edge

land.lhs.true6.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then12.i:                                      ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ifindex.i, align 4
  %16 = ptrtoint ptr %oifindex.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %oifindex.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then12.i, %land.lhs.true6.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge
  %17 = ptrtoint ptr %rule.034.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %rule.0.i = load ptr, ptr %rule.034.i, align 4
  %cmp.not.i = icmp eq ptr %rule.0.i, %rules_list
  br i1 %cmp.not.i, label %for.inc.i.attach_rules.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.attach_rules.exit_crit_edge:            ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %attach_rules.exit

attach_rules.exit:                                ; preds = %for.inc.i.attach_rules.exit_crit_edge, %for.body.attach_rules.exit_crit_edge
  %18 = ptrtoint ptr %.pn112177 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn112 = load ptr, ptr %.pn112177, align 4
  %cmp.not = icmp eq ptr %.pn112, %rules_ops
  br i1 %cmp.not, label %attach_rules.exit.sw.epilog_crit_edge, label %attach_rules.exit.for.body_crit_edge

attach_rules.exit.for.body_crit_edge:             ; preds = %attach_rules.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

attach_rules.exit.sw.epilog_crit_edge:            ; preds = %attach_rules.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb48:                                          ; preds = %if.end31
  %rules_ops50 = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 28
  %19 = ptrtoint ptr %rules_ops50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn111172 = load ptr, ptr %rules_ops50, align 4
  %cmp57.not173 = icmp eq ptr %.pn111172, %rules_ops50
  br i1 %cmp57.not173, label %sw.bb48.sw.epilog_crit_edge, label %for.body60.lr.ph

sw.bb48.sw.epilog_crit_edge:                      ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

for.body60.lr.ph:                                 ; preds = %sw.bb48
  %ifindex.i114 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 17
  br label %for.body60

for.body60:                                       ; preds = %attach_rules.exit149.for.body60_crit_edge, %for.body60.lr.ph
  %.pn111174 = phi ptr [ %.pn111172, %for.body60.lr.ph ], [ %.pn111, %attach_rules.exit149.for.body60_crit_edge ]
  %rules_list61 = getelementptr i8, ptr %.pn111174, i32 68
  %20 = ptrtoint ptr %rules_list61 to i32
  call void @__asan_load4_noabort(i32 %20)
  %rule.020.i = load ptr, ptr %rules_list61, align 4
  %cmp.not21.i = icmp eq ptr %rule.020.i, %rules_list61
  br i1 %cmp.not21.i, label %for.body60.detach_rules.exit_crit_edge, label %for.body60.for.body.i118_crit_edge

for.body60.for.body.i118_crit_edge:               ; preds = %for.body60
  br label %for.body.i118

for.body60.detach_rules.exit_crit_edge:           ; preds = %for.body60
  call void @__sanitizer_cov_trace_pc() #13
  br label %detach_rules.exit

for.body.i118:                                    ; preds = %for.inc.i124.for.body.i118_crit_edge, %for.body60.for.body.i118_crit_edge
  %rule.022.i = phi ptr [ %rule.0.i122, %for.inc.i124.for.body.i118_crit_edge ], [ %rule.020.i, %for.body60.for.body.i118_crit_edge ]
  %iifindex.i116 = getelementptr inbounds %struct.fib_rule, ptr %rule.022.i, i32 0, i32 1
  %21 = ptrtoint ptr %iifindex.i116 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %iifindex.i116, align 8
  %23 = ptrtoint ptr %ifindex.i114 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ifindex.i114, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp1.i117 = icmp eq i32 %22, %24
  br i1 %cmp1.i117, label %if.then.i119, label %for.body.i118.if.end.i121_crit_edge

for.body.i118.if.end.i121_crit_edge:              ; preds = %for.body.i118
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i121

if.then.i119:                                     ; preds = %for.body.i118
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %iifindex.i116 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %iifindex.i116, align 8
  br label %if.end.i121

if.end.i121:                                      ; preds = %if.then.i119, %for.body.i118.if.end.i121_crit_edge
  %oifindex.i120 = getelementptr inbounds %struct.fib_rule, ptr %rule.022.i, i32 0, i32 2
  %26 = ptrtoint ptr %oifindex.i120 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %oifindex.i120, align 4
  %28 = ptrtoint ptr %ifindex.i114 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ifindex.i114, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp4.i = icmp eq i32 %27, %29
  br i1 %cmp4.i, label %if.then5.i, label %if.end.i121.for.inc.i124_crit_edge

if.end.i121.for.inc.i124_crit_edge:               ; preds = %if.end.i121
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i124

if.then5.i:                                       ; preds = %if.end.i121
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %oifindex.i120 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %oifindex.i120, align 4
  br label %for.inc.i124

for.inc.i124:                                     ; preds = %if.then5.i, %if.end.i121.for.inc.i124_crit_edge
  %31 = ptrtoint ptr %rule.022.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %rule.0.i122 = load ptr, ptr %rule.022.i, align 4
  %cmp.not.i123 = icmp eq ptr %rule.0.i122, %rules_list61
  br i1 %cmp.not.i123, label %for.inc.i124.detach_rules.exit_crit_edge, label %for.inc.i124.for.body.i118_crit_edge

for.inc.i124.for.body.i118_crit_edge:             ; preds = %for.inc.i124
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i118

for.inc.i124.detach_rules.exit_crit_edge:         ; preds = %for.inc.i124
  call void @__sanitizer_cov_trace_pc() #13
  br label %detach_rules.exit

detach_rules.exit:                                ; preds = %for.inc.i124.detach_rules.exit_crit_edge, %for.body60.detach_rules.exit_crit_edge
  %32 = ptrtoint ptr %rules_list61 to i32
  call void @__asan_load4_noabort(i32 %32)
  %rule.032.i125 = load ptr, ptr %rules_list61, align 4
  %cmp.not33.i126 = icmp eq ptr %rule.032.i125, %rules_list61
  br i1 %cmp.not33.i126, label %detach_rules.exit.attach_rules.exit149_crit_edge, label %detach_rules.exit.for.body.i132_crit_edge

detach_rules.exit.for.body.i132_crit_edge:        ; preds = %detach_rules.exit
  br label %for.body.i132

detach_rules.exit.attach_rules.exit149_crit_edge: ; preds = %detach_rules.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %attach_rules.exit149

for.body.i132:                                    ; preds = %for.inc.i148.for.body.i132_crit_edge, %detach_rules.exit.for.body.i132_crit_edge
  %rule.034.i129 = phi ptr [ %rule.0.i146, %for.inc.i148.for.body.i132_crit_edge ], [ %rule.032.i125, %detach_rules.exit.for.body.i132_crit_edge ]
  %iifindex.i130 = getelementptr inbounds %struct.fib_rule, ptr %rule.034.i129, i32 0, i32 1
  %33 = ptrtoint ptr %iifindex.i130 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %iifindex.i130, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %34)
  %cmp1.i131 = icmp eq i32 %34, -1
  br i1 %cmp1.i131, label %land.lhs.true.i136, label %for.body.i132.if.end.i140_crit_edge

for.body.i132.if.end.i140_crit_edge:              ; preds = %for.body.i132
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i140

land.lhs.true.i136:                               ; preds = %for.body.i132
  %iifname.i133 = getelementptr inbounds %struct.fib_rule, ptr %rule.034.i129, i32 0, i32 19
  %call.i134 = tail call i32 @strcmp(ptr noundef %1, ptr noundef %iifname.i133) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i134)
  %cmp3.i135 = icmp eq i32 %call.i134, 0
  br i1 %cmp3.i135, label %if.then.i137, label %land.lhs.true.i136.if.end.i140_crit_edge

land.lhs.true.i136.if.end.i140_crit_edge:         ; preds = %land.lhs.true.i136
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i140

if.then.i137:                                     ; preds = %land.lhs.true.i136
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %ifindex.i114 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ifindex.i114, align 4
  %37 = ptrtoint ptr %iifindex.i130 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %iifindex.i130, align 8
  br label %if.end.i140

if.end.i140:                                      ; preds = %if.then.i137, %land.lhs.true.i136.if.end.i140_crit_edge, %for.body.i132.if.end.i140_crit_edge
  %oifindex.i138 = getelementptr inbounds %struct.fib_rule, ptr %rule.034.i129, i32 0, i32 2
  %38 = ptrtoint ptr %oifindex.i138 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %oifindex.i138, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %39)
  %cmp5.i139 = icmp eq i32 %39, -1
  br i1 %cmp5.i139, label %land.lhs.true6.i144, label %if.end.i140.for.inc.i148_crit_edge

if.end.i140.for.inc.i148_crit_edge:               ; preds = %if.end.i140
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i148

land.lhs.true6.i144:                              ; preds = %if.end.i140
  %oifname.i141 = getelementptr inbounds %struct.fib_rule, ptr %rule.034.i129, i32 0, i32 20
  %call10.i142 = tail call i32 @strcmp(ptr noundef %1, ptr noundef %oifname.i141) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i142)
  %cmp11.i143 = icmp eq i32 %call10.i142, 0
  br i1 %cmp11.i143, label %if.then12.i145, label %land.lhs.true6.i144.for.inc.i148_crit_edge

land.lhs.true6.i144.for.inc.i148_crit_edge:       ; preds = %land.lhs.true6.i144
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i148

if.then12.i145:                                   ; preds = %land.lhs.true6.i144
  call void @__sanitizer_cov_trace_pc() #13
  %40 = ptrtoint ptr %ifindex.i114 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ifindex.i114, align 4
  %42 = ptrtoint ptr %oifindex.i138 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %oifindex.i138, align 4
  br label %for.inc.i148

for.inc.i148:                                     ; preds = %if.then12.i145, %land.lhs.true6.i144.for.inc.i148_crit_edge, %if.end.i140.for.inc.i148_crit_edge
  %43 = ptrtoint ptr %rule.034.i129 to i32
  call void @__asan_load4_noabort(i32 %43)
  %rule.0.i146 = load ptr, ptr %rule.034.i129, align 4
  %cmp.not.i147 = icmp eq ptr %rule.0.i146, %rules_list61
  br i1 %cmp.not.i147, label %for.inc.i148.attach_rules.exit149_crit_edge, label %for.inc.i148.for.body.i132_crit_edge

for.inc.i148.for.body.i132_crit_edge:             ; preds = %for.inc.i148
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i132

for.inc.i148.attach_rules.exit149_crit_edge:      ; preds = %for.inc.i148
  call void @__sanitizer_cov_trace_pc() #13
  br label %attach_rules.exit149

attach_rules.exit149:                             ; preds = %for.inc.i148.attach_rules.exit149_crit_edge, %detach_rules.exit.attach_rules.exit149_crit_edge
  %44 = ptrtoint ptr %.pn111174 to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pn111 = load ptr, ptr %.pn111174, align 4
  %cmp57.not = icmp eq ptr %.pn111, %rules_ops50
  br i1 %cmp57.not, label %attach_rules.exit149.sw.epilog_crit_edge, label %attach_rules.exit149.for.body60_crit_edge

attach_rules.exit149.for.body60_crit_edge:        ; preds = %attach_rules.exit149
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body60

attach_rules.exit149.sw.epilog_crit_edge:         ; preds = %attach_rules.exit149
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb70:                                          ; preds = %if.end31
  %rules_ops72 = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 28
  %45 = ptrtoint ptr %rules_ops72 to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pn169 = load ptr, ptr %rules_ops72, align 4
  %cmp79.not170 = icmp eq ptr %.pn169, %rules_ops72
  br i1 %cmp79.not170, label %sw.bb70.sw.epilog_crit_edge, label %for.body82.lr.ph

sw.bb70.sw.epilog_crit_edge:                      ; preds = %sw.bb70
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

for.body82.lr.ph:                                 ; preds = %sw.bb70
  %ifindex.i152 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 17
  br label %for.body82

for.body82:                                       ; preds = %detach_rules.exit166.for.body82_crit_edge, %for.body82.lr.ph
  %.pn171 = phi ptr [ %.pn169, %for.body82.lr.ph ], [ %.pn, %detach_rules.exit166.for.body82_crit_edge ]
  %rules_list83 = getelementptr i8, ptr %.pn171, i32 68
  %46 = ptrtoint ptr %rules_list83 to i32
  call void @__asan_load4_noabort(i32 %46)
  %rule.020.i150 = load ptr, ptr %rules_list83, align 4
  %cmp.not21.i151 = icmp eq ptr %rule.020.i150, %rules_list83
  br i1 %cmp.not21.i151, label %for.body82.detach_rules.exit166_crit_edge, label %for.body82.for.body.i157_crit_edge

for.body82.for.body.i157_crit_edge:               ; preds = %for.body82
  br label %for.body.i157

for.body82.detach_rules.exit166_crit_edge:        ; preds = %for.body82
  call void @__sanitizer_cov_trace_pc() #13
  br label %detach_rules.exit166

for.body.i157:                                    ; preds = %for.inc.i165.for.body.i157_crit_edge, %for.body82.for.body.i157_crit_edge
  %rule.022.i154 = phi ptr [ %rule.0.i163, %for.inc.i165.for.body.i157_crit_edge ], [ %rule.020.i150, %for.body82.for.body.i157_crit_edge ]
  %iifindex.i155 = getelementptr inbounds %struct.fib_rule, ptr %rule.022.i154, i32 0, i32 1
  %47 = ptrtoint ptr %iifindex.i155 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %iifindex.i155, align 8
  %49 = ptrtoint ptr %ifindex.i152 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ifindex.i152, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %50)
  %cmp1.i156 = icmp eq i32 %48, %50
  br i1 %cmp1.i156, label %if.then.i158, label %for.body.i157.if.end.i161_crit_edge

for.body.i157.if.end.i161_crit_edge:              ; preds = %for.body.i157
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i161

if.then.i158:                                     ; preds = %for.body.i157
  call void @__sanitizer_cov_trace_pc() #13
  %51 = ptrtoint ptr %iifindex.i155 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -1, ptr %iifindex.i155, align 8
  br label %if.end.i161

if.end.i161:                                      ; preds = %if.then.i158, %for.body.i157.if.end.i161_crit_edge
  %oifindex.i159 = getelementptr inbounds %struct.fib_rule, ptr %rule.022.i154, i32 0, i32 2
  %52 = ptrtoint ptr %oifindex.i159 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %oifindex.i159, align 4
  %54 = ptrtoint ptr %ifindex.i152 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %ifindex.i152, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %55)
  %cmp4.i160 = icmp eq i32 %53, %55
  br i1 %cmp4.i160, label %if.then5.i162, label %if.end.i161.for.inc.i165_crit_edge

if.end.i161.for.inc.i165_crit_edge:               ; preds = %if.end.i161
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i165

if.then5.i162:                                    ; preds = %if.end.i161
  call void @__sanitizer_cov_trace_pc() #13
  %56 = ptrtoint ptr %oifindex.i159 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -1, ptr %oifindex.i159, align 4
  br label %for.inc.i165

for.inc.i165:                                     ; preds = %if.then5.i162, %if.end.i161.for.inc.i165_crit_edge
  %57 = ptrtoint ptr %rule.022.i154 to i32
  call void @__asan_load4_noabort(i32 %57)
  %rule.0.i163 = load ptr, ptr %rule.022.i154, align 4
  %cmp.not.i164 = icmp eq ptr %rule.0.i163, %rules_list83
  br i1 %cmp.not.i164, label %for.inc.i165.detach_rules.exit166_crit_edge, label %for.inc.i165.for.body.i157_crit_edge

for.inc.i165.for.body.i157_crit_edge:             ; preds = %for.inc.i165
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i157

for.inc.i165.detach_rules.exit166_crit_edge:      ; preds = %for.inc.i165
  call void @__sanitizer_cov_trace_pc() #13
  br label %detach_rules.exit166

detach_rules.exit166:                             ; preds = %for.inc.i165.detach_rules.exit166_crit_edge, %for.body82.detach_rules.exit166_crit_edge
  %58 = ptrtoint ptr %.pn171 to i32
  call void @__asan_load4_noabort(i32 %58)
  %.pn = load ptr, ptr %.pn171, align 4
  %cmp79.not = icmp eq ptr %.pn, %rules_ops72
  br i1 %cmp79.not, label %detach_rules.exit166.sw.epilog_crit_edge, label %detach_rules.exit166.for.body82_crit_edge

detach_rules.exit166.for.body82_crit_edge:        ; preds = %detach_rules.exit166
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body82

detach_rules.exit166.sw.epilog_crit_edge:         ; preds = %detach_rules.exit166
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %detach_rules.exit166.sw.epilog_crit_edge, %sw.bb70.sw.epilog_crit_edge, %attach_rules.exit149.sw.epilog_crit_edge, %sw.bb48.sw.epilog_crit_edge, %attach_rules.exit.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %if.end31.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nobuiltin nounwind }
attributes #16 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !14, !15, !17, !19, !21, !23, !24, !26, !28, !30, !32, !34, !36, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !58, !59, !61, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !117, !119, !121}
!llvm.named.register.sp = !{!123}
!llvm.module.flags = !{!124, !125, !126, !127, !128, !129, !130, !131}
!llvm.ident = !{!132}

!0 = !{ptr @__ksymtab_fib_rule_matchall, !1, !"__ksymtab_fib_rule_matchall", i1 false, i1 false}
!1 = !{!"../net/core/fib_rules.c", i32 53, i32 1}
!2 = !{ptr @__ksymtab_fib_default_rule_add, !3, !"__ksymtab_fib_default_rule_add", i1 false, i1 false}
!3 = !{!"../net/core/fib_rules.c", i32 81, i32 1}
!4 = !{ptr @__ksymtab_fib_rules_register, !5, !"__ksymtab_fib_rules_register", i1 false, i1 false}
!5 = !{!"../net/core/fib_rules.c", i32 184, i32 1}
!6 = !{ptr @__ksymtab_fib_rules_unregister, !7, !"__ksymtab_fib_rules_unregister", i1 false, i1 false}
!7 = !{!"../net/core/fib_rules.c", i32 209, i32 1}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../net/core/fib_rules.c", i32 300, i32 2}
!10 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!12 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!13 = !{!"../net/core/fib_rules.c", i32 308, i32 13}
!14 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @__ksymtab_fib_rules_lookup, !16, !"__ksymtab_fib_rules_lookup", i1 false, i1 false}
!16 = !{!"../net/core/fib_rules.c", i32 345, i32 1}
!17 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!18 = !{!"../net/core/fib_rules.c", i32 388, i32 2}
!19 = !{ptr @__ksymtab_fib_rules_dump, !20, !"__ksymtab_fib_rules_dump", i1 false, i1 false}
!20 = !{!"../net/core/fib_rules.c", i32 398, i32 1}
!21 = distinct !{null, !22, !"__already_done", i1 false, i1 false}
!22 = !{!"../net/core/fib_rules.c", i32 405, i32 2}
!23 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @__ksymtab_fib_rules_seq_read, !25, !"__ksymtab_fib_rules_seq_read", i1 false, i1 false}
!25 = !{!"../net/core/fib_rules.c", i32 415, i32 1}
!26 = !{ptr @fib_nl_newrule.__msg, !27, !"__msg", i1 false, i1 false}
!27 = !{!"../net/core/fib_rules.c", i32 786, i32 3}
!28 = !{ptr @fib_nl_newrule.__msg.5, !29, !"__msg", i1 false, i1 false}
!29 = !{!"../net/core/fib_rules.c", i32 793, i32 3}
!30 = !{ptr @fib_nl_newrule.__msg.6, !31, !"__msg", i1 false, i1 false}
!31 = !{!"../net/core/fib_rules.c", i32 800, i32 3}
!32 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!33 = !{!"../net/core/fib_rules.c", i32 830, i32 6}
!34 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!35 = !{!"../net/core/fib_rules.c", i32 852, i32 8}
!36 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @__ksymtab_fib_nl_newrule, !38, !"__ksymtab_fib_nl_newrule", i1 false, i1 false}
!38 = !{!"../net/core/fib_rules.c", i32 880, i32 1}
!39 = !{ptr @fib_nl_delrule.__msg, !40, !"__msg", i1 false, i1 false}
!40 = !{!"../net/core/fib_rules.c", i32 894, i32 3}
!41 = !{ptr @fib_nl_delrule.__msg.9, !42, !"__msg", i1 false, i1 false}
!42 = !{!"../net/core/fib_rules.c", i32 901, i32 3}
!43 = !{ptr @fib_nl_delrule.__msg.10, !44, !"__msg", i1 false, i1 false}
!44 = !{!"../net/core/fib_rules.c", i32 908, i32 3}
!45 = distinct !{null, !46, !"__warned", i1 false, i1 false}
!46 = !{!"../net/core/fib_rules.c", i32 940, i32 7}
!47 = distinct !{null, !48, !"__warned", i1 false, i1 false}
!48 = !{!"../net/core/fib_rules.c", i32 958, i32 8}
!49 = !{ptr @__ksymtab_fib_nl_delrule, !50, !"__ksymtab_fib_nl_delrule", i1 false, i1 false}
!50 = !{!"../net/core/fib_rules.c", i32 981, i32 1}
!51 = !{ptr @__initcall__kmod_fib_rules__581_1319_fib_rules_init4, !52, !"__initcall__kmod_fib_rules__581_1319_fib_rules_init4", i1 false, i1 false}
!52 = !{!"../net/core/fib_rules.c", i32 1319, i32 1}
!53 = distinct !{null, !54, !"fib_kuid_range_unset", i1 false, i1 false}
!54 = !{!"../net/core/fib_rules.c", i32 32, i32 36}
!55 = distinct !{null, !56, !"__warned", i1 false, i1 false}
!56 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!57 = !{ptr @.str.12, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.13, !56, !"<string literal>", i1 false, i1 false}
!59 = distinct !{null, !60, !"__warned", i1 false, i1 false}
!60 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!61 = !{ptr @.str.14, !60, !"<string literal>", i1 false, i1 false}
!62 = distinct !{null, !63, !"__warned", i1 false, i1 false}
!63 = !{!"../net/core/fib_rules.c", i32 109, i32 2}
!64 = !{ptr @__nlmsg_parse.__msg, !65, !"__msg", i1 false, i1 false}
!65 = !{!"../include/net/netlink.h", i32 729, i32 3}
!66 = !{ptr @fib_rule_policy, !67, !"fib_rule_policy", i1 false, i1 false}
!67 = !{!"../net/core/fib_rules.c", i32 753, i32 32}
!68 = !{ptr @fib_nl2rule.__msg, !69, !"__msg", i1 false, i1 false}
!69 = !{!"../net/core/fib_rules.c", i32 532, i32 4}
!70 = !{ptr @fib_nl2rule.__msg.16, !71, !"__msg", i1 false, i1 false}
!71 = !{!"../net/core/fib_rules.c", i32 540, i32 4}
!72 = !{ptr @fib_nl2rule.__msg.17, !73, !"__msg", i1 false, i1 false}
!73 = !{!"../net/core/fib_rules.c", i32 617, i32 4}
!74 = !{ptr @fib_nl2rule.__msg.18, !75, !"__msg", i1 false, i1 false}
!75 = !{!"../net/core/fib_rules.c", i32 624, i32 4}
!76 = !{ptr @fib_nl2rule.__msg.19, !77, !"__msg", i1 false, i1 false}
!77 = !{!"../net/core/fib_rules.c", i32 628, i32 3}
!78 = !{ptr @fib_nl2rule.__msg.20, !79, !"__msg", i1 false, i1 false}
!79 = !{!"../net/core/fib_rules.c", i32 633, i32 3}
!80 = distinct !{null, !81, !"__warned", i1 false, i1 false}
!81 = !{!"../net/core/fib_rules.c", i32 638, i32 7}
!82 = !{ptr @fib_nl2rule.__msg.21, !83, !"__msg", i1 false, i1 false}
!83 = !{!"../net/core/fib_rules.c", i32 640, i32 4}
!84 = !{ptr @fib_nl2rule.__msg.22, !85, !"__msg", i1 false, i1 false}
!85 = !{!"../net/core/fib_rules.c", i32 648, i32 4}
!86 = !{ptr @fib_nl2rule.__msg.23, !87, !"__msg", i1 false, i1 false}
!87 = !{!"../net/core/fib_rules.c", i32 662, i32 4}
!88 = !{ptr @fib_nl2rule.__msg.24, !89, !"__msg", i1 false, i1 false}
!89 = !{!"../net/core/fib_rules.c", i32 671, i32 4}
!90 = !{ptr @fib_nl2rule_l3mdev.__msg, !91, !"__msg", i1 false, i1 false}
!91 = !{!"../net/core/fib_rules.c", i32 501, i32 3}
!92 = distinct !{null, !93, !"__warned", i1 false, i1 false}
!93 = !{!"../net/core/fib_rules.c", i32 223, i32 24}
!94 = distinct !{null, !95, !"__warned", i1 false, i1 false}
!95 = !{!"../net/core/fib_rules.c", i32 224, i32 22}
!96 = distinct !{null, !97, !"__warned", i1 false, i1 false}
!97 = !{!"../net/core/fib_rules.c", i32 232, i32 20}
!98 = distinct !{null, !99, !"__warned", i1 false, i1 false}
!99 = !{!"../net/core/fib_rules.c", i32 233, i32 20}
!100 = !{ptr @.str.27, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../include/net/netlink.h", i32 991, i32 3}
!102 = distinct !{null, !103, !"__warned", i1 false, i1 false}
!103 = !{!"../net/core/fib_rules.c", i32 1169, i32 2}
!104 = !{ptr @fib_valid_dumprule_req.__msg, !105, !"__msg", i1 false, i1 false}
!105 = !{!"../net/core/fib_rules.c", i32 1122, i32 3}
!106 = !{ptr @fib_valid_dumprule_req.__msg.28, !107, !"__msg", i1 false, i1 false}
!107 = !{!"../net/core/fib_rules.c", i32 1129, i32 3}
!108 = !{ptr @fib_valid_dumprule_req.__msg.29, !109, !"__msg", i1 false, i1 false}
!109 = !{!"../net/core/fib_rules.c", i32 1135, i32 3}
!110 = distinct !{null, !111, !"__warned", i1 false, i1 false}
!111 = !{!"../net/core/fib_rules.c", i32 1097, i32 2}
!112 = !{ptr @fib_rules_net_ops, !113, !"fib_rules_net_ops", i1 false, i1 false}
!113 = !{!"../net/core/fib_rules.c", i32 1288, i32 33}
!114 = !{ptr @fib_rules_net_init.__key, !115, !"__key", i1 false, i1 false}
!115 = !{!"../net/core/fib_rules.c", i32 1279, i32 2}
!116 = !{ptr @.str.30, !115, !"<string literal>", i1 false, i1 false}
!117 = distinct !{null, !118, !"__already_done", i1 false, i1 false}
!118 = !{!"../net/core/fib_rules.c", i32 1285, i32 2}
!119 = !{ptr @fib_rules_notifier, !120, !"fib_rules_notifier", i1 false, i1 false}
!120 = !{!"../net/core/fib_rules.c", i32 1272, i32 30}
!121 = distinct !{null, !122, !"__already_done", i1 false, i1 false}
!122 = !{!"../net/core/fib_rules.c", i32 1248, i32 2}
!123 = !{!"sp"}
!124 = !{i32 1, !"wchar_size", i32 2}
!125 = !{i32 1, !"min_enum_size", i32 4}
!126 = !{i32 8, !"branch-target-enforcement", i32 0}
!127 = !{i32 8, !"sign-return-address", i32 0}
!128 = !{i32 8, !"sign-return-address-all", i32 0}
!129 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!130 = !{i32 7, !"uwtable", i32 1}
!131 = !{i32 7, !"frame-pointer", i32 2}
!132 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!133 = !{i64 2151449761}
!134 = !{i64 2148329117}
!135 = !{i64 2148243581, i64 2148243613, i64 2148243642, i64 2148243676, i64 2148243707, i64 2148243730}
!136 = !{!"branch_weights", i32 2000, i32 1}
!137 = !{i64 2149897706}
!138 = !{i64 2149947249}
!139 = !{i64 723322, i64 723346, i64 723367, i64 723384, i64 723401}
!140 = !{!"branch_weights", i32 1, i32 2000}
!141 = !{i64 2149947515}
!142 = !{i64 2158018650}
!143 = !{!"auto-init"}
!144 = !{i8 0, i8 2}
!145 = !{i64 2158038570}
