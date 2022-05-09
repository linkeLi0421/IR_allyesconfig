; ModuleID = '/llk/IR_all_yes/net/ipv6/netfilter/ip6_tables.c_pt.bc'
source_filename = "../net/ipv6/netfilter/ip6_tables.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+ip6t_alloc_initial_table\22, \22a\22\09"
module asm "\09.weak\09__crc_ip6t_alloc_initial_table\09\09\09\09"
module asm "\09.long\09__crc_ip6t_alloc_initial_table\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip6t_alloc_initial_table:\09\09\09\09\09"
module asm "\09.asciz \09\22ip6t_alloc_initial_table\22\09\09\09\09\09"
module asm "__kstrtabns_ip6t_alloc_initial_table:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ip6t_register_table\22, \22a\22\09"
module asm "\09.weak\09__crc_ip6t_register_table\09\09\09\09"
module asm "\09.long\09__crc_ip6t_register_table\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip6t_register_table:\09\09\09\09\09"
module asm "\09.asciz \09\22ip6t_register_table\22\09\09\09\09\09"
module asm "__kstrtabns_ip6t_register_table:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ip6t_unregister_table_pre_exit\22, \22a\22\09"
module asm "\09.weak\09__crc_ip6t_unregister_table_pre_exit\09\09\09\09"
module asm "\09.long\09__crc_ip6t_unregister_table_pre_exit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip6t_unregister_table_pre_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22ip6t_unregister_table_pre_exit\22\09\09\09\09\09"
module asm "__kstrtabns_ip6t_unregister_table_pre_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ip6t_unregister_table_exit\22, \22a\22\09"
module asm "\09.weak\09__crc_ip6t_unregister_table_exit\09\09\09\09"
module asm "\09.long\09__crc_ip6t_unregister_table_exit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip6t_unregister_table_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22ip6t_unregister_table_exit\22\09\09\09\09\09"
module asm "__kstrtabns_ip6t_unregister_table_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ip6t_do_table\22, \22a\22\09"
module asm "\09.weak\09__crc_ip6t_do_table\09\09\09\09"
module asm "\09.long\09__crc_ip6t_do_table\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip6t_do_table:\09\09\09\09\09"
module asm "\09.asciz \09\22ip6t_do_table\22\09\09\09\09\09"
module asm "__kstrtabns_ip6t_do_table:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.94 }
%struct.atomic_t = type { i32 }
%union.anon.94 = type { i32 }
%struct.nf_sockopt_ops = type { %struct.list_head, i8, i32, i32, ptr, i32, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.xt_match = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.xt_target = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ip6t_ip6 = type { %struct.in6_addr, %struct.in6_addr, %struct.in6_addr, %struct.in6_addr, [16 x i8], [16 x i8], [16 x i8], [16 x i8], i16, i8, i8, i8 }
%struct.in6_addr = type { %union.anon.28 }
%union.anon.28 = type { [4 x i32] }
%struct.anon.101 = type { i8, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.xt_table = type { %struct.list_head, i32, ptr, ptr, ptr, i8, i32, [32 x i8] }
%struct.ip6t_replace = type { [32 x i8], i32, i32, i32, [5 x i32], [5 x i32], i32, ptr, [0 x %struct.ip6t_entry] }
%struct.ip6t_entry = type { %struct.ip6t_ip6, i32, i16, i16, i32, %struct.xt_counters, [0 x i8] }
%struct.xt_counters = type { i64, i64 }
%struct.anon.192 = type { %struct.ip6t_replace, [0 x %struct.ip6t_standard] }
%struct.ip6t_standard = type { %struct.ip6t_entry, %struct.xt_standard_target }
%struct.xt_standard_target = type { %struct.xt_entry_target, i32 }
%struct.xt_entry_target = type { %union.anon.193, [0 x i8] }
%union.anon.193 = type { %struct.anon.195, [24 x i8] }
%struct.anon.195 = type { i16, ptr }
%struct.xt_action_param = type { %union.anon.196, %union.anon.197, ptr, i32, i16, i8 }
%union.anon.196 = type { ptr }
%union.anon.197 = type { ptr }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.xt_table_info = type { i32, i32, i32, [5 x i32], [5 x i32], i32, ptr, [4 x i8], [0 x i8] }
%struct.sk_buff = type { %union.anon, %union.anon.171, %union.anon.172, [48 x i8], %union.anon.173, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.175, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.171 = type { ptr }
%union.anon.172 = type { i64 }
%union.anon.173 = type { %struct.anon.174 }
%struct.anon.174 = type { i32, ptr }
%union.anon.175 = type { %struct.anon.176 }
%struct.anon.176 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.177, i32, i32, i32, i16, i16, %union.anon.179, i32, %union.anon.180, %union.anon.181, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.177 = type { i32 }
%union.anon.179 = type { i32 }
%union.anon.180 = type { i32 }
%union.anon.181 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.anon.200 = type { i16, ptr }
%struct.xt_entry_match = type { %union.anon.198, [0 x i8] }
%union.anon.198 = type { %struct.anon.200, [24 x i8] }
%struct.nf_hook_ops = type { ptr, ptr, ptr, i8, i8, i32, i32 }
%struct.xt_mtdtor_param = type { ptr, ptr, ptr, i8 }
%struct.xt_tgchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.xt_mtchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.xt_percpu_counter_alloc_state = type { i32, ptr }
%struct.anon.194 = type { i16, [29 x i8], i8 }
%struct.anon.199 = type { i16, [29 x i8], i8 }
%struct.xt_tgdtor_param = type { ptr, ptr, ptr, i8 }
%struct.xt_counters_info = type { [32 x i8], i32, [0 x %struct.xt_counters] }
%struct.sock_common = type { %union.anon.140, %union.anon.142, %union.anon.143, i16, i8, i8, i32, %union.anon.145, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.148, [0 x i32], %union.anon.149, i16, i16, %union.anon.150, %struct.refcount_struct, [0 x i32], %union.anon.151 }
%union.anon.140 = type { i64 }
%union.anon.142 = type { i32 }
%union.anon.143 = type { i32 }
%union.anon.145 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.atomic64_t = type { i64 }
%union.anon.148 = type { i32 }
%union.anon.149 = type { %struct.hlist_node }
%union.anon.150 = type { i32 }
%union.anon.151 = type { i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.19, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { ptr, i32, i32, i32 }
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
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.98, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.98 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.ip6t_get_entries = type { [32 x i8], i32, [0 x %struct.ip6t_entry] }
%struct.ip6t_getinfo = type { [32 x i8], i32, [5 x i32], [5 x i32], i32, i32 }
%struct.xt_get_revision = type { [29 x i8], i8 }
%struct.icmp6hdr = type { i8, i8, i16, %union.anon.202 }
%union.anon.202 = type { [1 x i32] }
%struct.ip6t_icmp = type { i8, [2 x i8], i8 }

@__UNIQUE_ID_file618 = internal constant [46 x i8] c"ip6_tables.file=net/ipv6/netfilter/ip6_tables\00", section ".modinfo", align 1
@__UNIQUE_ID_license619 = internal constant [23 x i8] c"ip6_tables.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author620 = internal constant [63 x i8] c"ip6_tables.author=Netfilter Core Team <coreteam@netfilter.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description621 = internal constant [42 x i8] c"ip6_tables.description=IPv6 packet filter\00", section ".modinfo", align 1
@__UNIQUE_ID_alias622 = internal constant [28 x i8] c"ip6_tables.alias=ip6t_icmp6\00", section ".modinfo", align 1
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ERROR\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ERROR\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [34 x i8] zeroinitializer }, align 32
@__kstrtab_ip6t_alloc_initial_table = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip6t_alloc_initial_table = external dso_local constant [0 x i8], align 1
@__ksymtab_ip6t_alloc_initial_table = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip6t_alloc_initial_table to i32), ptr @__kstrtab_ip6t_alloc_initial_table, ptr @__kstrtabns_ip6t_alloc_initial_table }, section "___ksymtab_gpl+ip6t_alloc_initial_table", align 4
@ip6t_do_table.nulldevname = internal constant { [16 x i8], [16 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"net/ipv6/netfilter/ip6_tables.c\00", [32 x i8] zeroinitializer }, align 32
@xt_tee_enabled = external dso_local global %struct.static_key, align 4
@nf_skb_duplicated = external dso_local global i8, section ".data..percpu", align 1
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@ip6t_sockopts = internal global { %struct.nf_sockopt_ops, [56 x i8] } { %struct.nf_sockopt_ops { %struct.list_head zeroinitializer, i8 10, i32 64, i32 66, ptr @do_ip6t_set_ctl, i32 64, i32 70, ptr @do_ip6t_get_ctl, ptr null }, [56 x i8] zeroinitializer }, align 32
@ip6t_builtin_mt = internal global [1 x %struct.xt_match] [%struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"icmp6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @icmp6_match, ptr @icmp6_checkentry, ptr null, ptr null, ptr null, i32 4, i32 0, i32 0, i16 58, i16 10 }], section ".data..read_mostly", align 4
@ip6t_builtin_tg = internal global [2 x %struct.xt_target] [%struct.xt_target { %struct.list_head zeroinitializer, [29 x i8] zeroinitializer, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 4, i32 0, i32 0, i16 0, i16 10 }, %struct.xt_target { %struct.list_head zeroinitializer, [29 x i8] c"ERROR\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @ip6t_error, ptr null, ptr null, ptr null, ptr null, i32 30, i32 0, i32 0, i16 0, i16 10 }], section ".data..read_mostly", align 4
@ip6_tables_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @ip6_tables_net_init, ptr null, ptr @ip6_tables_net_exit, ptr null, ptr null, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__kstrtab_ip6t_register_table = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip6t_register_table = external dso_local constant [0 x i8], align 1
@__ksymtab_ip6t_register_table = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip6t_register_table to i32), ptr @__kstrtab_ip6t_register_table, ptr @__kstrtabns_ip6t_register_table }, section "___ksymtab+ip6t_register_table", align 4
@__kstrtab_ip6t_unregister_table_pre_exit = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip6t_unregister_table_pre_exit = external dso_local constant [0 x i8], align 1
@__ksymtab_ip6t_unregister_table_pre_exit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip6t_unregister_table_pre_exit to i32), ptr @__kstrtab_ip6t_unregister_table_pre_exit, ptr @__kstrtabns_ip6t_unregister_table_pre_exit }, section "___ksymtab+ip6t_unregister_table_pre_exit", align 4
@__kstrtab_ip6t_unregister_table_exit = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip6t_unregister_table_exit = external dso_local constant [0 x i8], align 1
@__ksymtab_ip6t_unregister_table_exit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip6t_unregister_table_exit to i32), ptr @__kstrtab_ip6t_unregister_table_exit, ptr @__kstrtabns_ip6t_unregister_table_exit }, section "___ksymtab+ip6t_unregister_table_exit", align 4
@__kstrtab_ip6t_do_table = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip6t_do_table = external dso_local constant [0 x i8], align 1
@__ksymtab_ip6t_do_table = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip6t_do_table to i32), ptr @__kstrtab_ip6t_do_table, ptr @__kstrtabns_ip6t_do_table }, section "___ksymtab+ip6t_do_table", align 4
@__initcall__kmod_ip6_tables__624_1956_ip6_tables_init6 = internal global ptr @ip6_tables_init, section ".initcall6.init", align 4
@__exitcall_ip6_tables_fini = internal global ptr @ip6_tables_fini, section ".exitcall.exit", align 4
@xt_recseq = external dso_local global %struct.seqcount, section ".data..percpu", align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@hooknames = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"TRACE: %s:%s:%s:%u \00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PREROUTING\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"INPUT\00", [26 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"FORWARD\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"OUTPUT\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"POSTROUTING\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rule\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"return\00", [25 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"policy\00", [25 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ERROR\00", [26 x i8] zeroinitializer }, align 32
@unconditional.uncond = internal constant { %struct.ip6t_ip6, [56 x i8] } zeroinitializer, align 32
@trace_loginfo = internal constant { { i8, [3 x i8], { %struct.anon.101, [10 x i8] } }, [16 x i8] } { { i8, [3 x i8], { %struct.anon.101, [10 x i8] } } { i8 0, [3 x i8] undef, { %struct.anon.101, [10 x i8] } { %struct.anon.101 { i8 4, i8 15 }, [10 x i8] undef } }, [16 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@__do_replace._entry = internal constant %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 1108, ptr null, ptr null }, align 1
@.str.21 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\014ip6_tables: ip6tables: counters copy to user failed while replacing table\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"__do_replace\00", [19 x i8] zeroinitializer }, align 32
@__do_replace._entry_ptr = internal global ptr @__do_replace._entry, section ".printk_index", align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ip6t_%s\00", [24 x i8] zeroinitializer }, align 32
@ip6t_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 122, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016ip6_tables: error: `%s'\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ip6t_error\00", [21 x i8] zeroinitializer }, align 32
@ip6t_error._entry_ptr = internal global ptr @ip6t_error._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 64, i64 65]
@__sancov_gen_cov_switch_values.26 = internal global [6 x i64] [i64 4, i64 32, i64 64, i64 65, i64 68, i64 69]
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 42, i32 9 }
@___asan_gen_.33 = private unnamed_addr constant [12 x i8] c"nulldevname\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 255, i32 20 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 280, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant [14 x i8] c"ip6t_sockopts\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 1871, i32 30 }
@___asan_gen_.42 = private unnamed_addr constant [19 x i8] c"ip6_tables_net_ops\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 1904, i32 33 }
@___asan_gen_.45 = private unnamed_addr constant [10 x i8] c"hooknames\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 151, i32 26 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 237, i32 8 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 152, i32 27 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 153, i32 24 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 154, i32 23 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 155, i32 25 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 156, i32 28 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 166, i32 32 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 167, i32 34 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 168, i32 34 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 189, i32 46 }
@___asan_gen_.78 = private unnamed_addr constant [7 x i8] c"uncond\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 137, i32 31 }
@___asan_gen_.81 = private unnamed_addr constant [14 x i8] c"trace_loginfo\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 171, i32 32 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 230, i32 6 }
@___asan_gen_.88 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 214, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 156, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 1108, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 1695, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.108 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.109 = private constant [35 x i8] c"../net/ipv6/netfilter/ip6_tables.c\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 122, i32 2 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @__UNIQUE_ID_alias622, ptr @__UNIQUE_ID_author620, ptr @__UNIQUE_ID_description621, ptr @__UNIQUE_ID_file618, ptr @__UNIQUE_ID_license619, ptr @__do_replace._entry, ptr @__do_replace._entry_ptr, ptr @__exitcall_ip6_tables_fini, ptr @__initcall__kmod_ip6_tables__624_1956_ip6_tables_init6, ptr @__ksymtab_ip6t_alloc_initial_table, ptr @__ksymtab_ip6t_do_table, ptr @__ksymtab_ip6t_register_table, ptr @__ksymtab_ip6t_unregister_table_exit, ptr @__ksymtab_ip6t_unregister_table_pre_exit, ptr @ip6_tables_fini, ptr @ip6t_error._entry, ptr @ip6t_error._entry_ptr, ptr @.str, ptr @.str.1, ptr @ip6t_do_table.nulldevname, ptr @.str.3, ptr @ip6t_sockopts, ptr @ip6_tables_net_ops, ptr @hooknames, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @unconditional.uncond, ptr @trace_loginfo, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip6t_do_table.nulldevname to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip6t_sockopts to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip6_tables_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hooknames to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unconditional.uncond to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_loginfo to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip6t_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ip6t_alloc_initial_table(ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %valid_hooks = getelementptr inbounds %struct.xt_table, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %valid_hooks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %valid_hooks, align 4
  %call.i = tail call i32 @__sw_hweight32(i32 noundef %1) #14
  %2 = mul i32 %call.i, 208
  %sub = add i32 %2, 103
  %and281 = and i32 %sub, -16
  %add282 = add i32 %and281, 232
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add282, i32 noundef 3520) #17
  %cmp = icmp eq ptr %call9.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr i8, ptr %call9.i.i, i32 %and281
  %name285 = getelementptr inbounds %struct.xt_table, ptr %info, i32 0, i32 7
  %call287 = tail call ptr @strncpy(ptr noundef nonnull %call9.i.i, ptr noundef %name285, i32 noundef 32)
  %3 = call ptr @memset(ptr %arrayidx, i32 0, i32 140)
  %.compoundliteral.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 140
  %4 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 168, ptr %.compoundliteral.sroa.2.0..sroa_idx, align 4
  %.compoundliteral.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 142
  %5 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 232, ptr %.compoundliteral.sroa.3.0..sroa_idx, align 2
  %.compoundliteral.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 144
  %6 = call ptr @memset(ptr %.compoundliteral.sroa.4.0..sroa_idx, i32 0, i32 24)
  %.compoundliteral.sroa.4330.0..sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 168
  %7 = ptrtoint ptr %.compoundliteral.sroa.4330.0..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 64, ptr %.compoundliteral.sroa.4330.0..sroa_idx, align 8
  %.compoundliteral.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 170
  %8 = call ptr @memcpy(ptr %.compoundliteral.sroa.5.0..sroa_idx, ptr @.str, i32 29)
  %.compoundliteral.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 199
  %9 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %.compoundliteral.sroa.6.0..sroa_idx, align 1
  %.compoundliteral.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 200
  %10 = call ptr @memcpy(ptr %.compoundliteral.sroa.7.0..sroa_idx, ptr @.str.1, i32 30)
  %valid_hooks292 = getelementptr inbounds %struct.ip6t_replace, ptr %call9.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %valid_hooks292 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %1, ptr %valid_hooks292, align 32
  %add293 = add i32 %call.i, 1
  %num_entries = getelementptr inbounds %struct.ip6t_replace, ptr %call9.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %num_entries to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add293, ptr %num_entries, align 4
  %add295 = add i32 %2, 232
  %size = getelementptr inbounds %struct.ip6t_replace, ptr %call9.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add295, ptr %size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp297.not388 = icmp eq i32 %1, 0
  br i1 %cmp297.not388, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %hook_mask.0393 = phi i32 [ %shr319, %for.inc.for.body_crit_edge ], [ %1, %if.end.for.body_crit_edge ]
  %bytes.0392 = phi i32 [ %bytes.1, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %i.0391 = phi i32 [ %i.1, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %hooknum.0389 = phi i32 [ %inc320, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %and299 = and i32 %hook_mask.0393, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and299)
  %tobool300.not = icmp eq i32 %and299, 0
  br i1 %tobool300.not, label %for.body.for.inc_crit_edge, label %if.end302

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end302:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx304 = getelementptr %struct.ip6t_replace, ptr %call9.i.i, i32 0, i32 4, i32 %hooknum.0389
  %14 = ptrtoint ptr %arrayidx304 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %bytes.0392, ptr %arrayidx304, align 4
  %arrayidx306 = getelementptr %struct.ip6t_replace, ptr %call9.i.i, i32 0, i32 5, i32 %hooknum.0389
  %15 = ptrtoint ptr %arrayidx306 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %bytes.0392, ptr %arrayidx306, align 4
  %inc = add i32 %i.0391, 1
  %arrayidx307 = getelementptr %struct.anon.192, ptr %call9.i.i, i32 0, i32 1, i32 %i.0391
  %16 = call ptr @memset(ptr %arrayidx307, i32 0, i32 140)
  %.compoundliteral308.sroa.2.0.arrayidx307.sroa_idx = getelementptr inbounds i8, ptr %arrayidx307, i32 140
  %17 = ptrtoint ptr %.compoundliteral308.sroa.2.0.arrayidx307.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 168, ptr %.compoundliteral308.sroa.2.0.arrayidx307.sroa_idx, align 4
  %.compoundliteral308.sroa.3.0.arrayidx307.sroa_idx = getelementptr inbounds i8, ptr %arrayidx307, i32 142
  %18 = ptrtoint ptr %.compoundliteral308.sroa.3.0.arrayidx307.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 208, ptr %.compoundliteral308.sroa.3.0.arrayidx307.sroa_idx, align 2
  %.compoundliteral308.sroa.4.0.arrayidx307.sroa_idx = getelementptr inbounds i8, ptr %arrayidx307, i32 144
  %19 = call ptr @memset(ptr %.compoundliteral308.sroa.4.0.arrayidx307.sroa_idx, i32 0, i32 24)
  %.compoundliteral308.sroa.4328.0.arrayidx307.sroa_idx = getelementptr inbounds i8, ptr %arrayidx307, i32 168
  %20 = ptrtoint ptr %.compoundliteral308.sroa.4328.0.arrayidx307.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 40, ptr %.compoundliteral308.sroa.4328.0.arrayidx307.sroa_idx, align 8
  %.compoundliteral308.sroa.5.0.arrayidx307.sroa_idx = getelementptr inbounds i8, ptr %arrayidx307, i32 170
  %.compoundliteral308.sroa.6329.0.arrayidx307.sroa_idx = getelementptr inbounds i8, ptr %arrayidx307, i32 200
  %21 = call ptr @memset(ptr %.compoundliteral308.sroa.5.0.arrayidx307.sroa_idx, i32 0, i32 30)
  %22 = ptrtoint ptr %.compoundliteral308.sroa.6329.0.arrayidx307.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -2, ptr %.compoundliteral308.sroa.6329.0.arrayidx307.sroa_idx, align 8
  %.compoundliteral308.sroa.7.0.arrayidx307.sroa_idx = getelementptr inbounds i8, ptr %arrayidx307, i32 204
  %23 = ptrtoint ptr %.compoundliteral308.sroa.7.0.arrayidx307.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %.compoundliteral308.sroa.7.0.arrayidx307.sroa_idx, align 4
  %add318 = add i32 %bytes.0392, 208
  br label %for.inc

for.inc:                                          ; preds = %if.end302, %for.body.for.inc_crit_edge
  %i.1 = phi i32 [ %inc, %if.end302 ], [ %i.0391, %for.body.for.inc_crit_edge ]
  %bytes.1 = phi i32 [ %add318, %if.end302 ], [ %bytes.0392, %for.body.for.inc_crit_edge ]
  %shr319 = lshr i32 %hook_mask.0393, 1
  %inc320 = add nuw nsw i32 %hooknum.0389, 1
  %cmp297.not = icmp ult i32 %hook_mask.0393, 2
  br i1 %cmp297.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret ptr %call9.i.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip6t_do_table(ptr noundef %priv, ptr noundef %skb, ptr noundef %state) #0 align 64 {
entry:
  %_frag_off.i = alloca i16, align 2
  %acpar = alloca %struct.xt_action_param, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %state, align 4
  %conv = zext i8 %1 to i32
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %acpar) #14
  %2 = call ptr @memset(ptr %acpar, i32 255, i32 20)
  %in = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 2
  %3 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %in, align 4
  %tobool.not = icmp eq ptr %4, null
  %spec.select = select i1 %tobool.not, ptr @ip6t_do_table.nulldevname, ptr %4
  %out = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 3
  %5 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %out, align 4
  %tobool3.not = icmp eq ptr %6, null
  %cond10 = select i1 %tobool3.not, ptr @ip6t_do_table.nulldevname, ptr %6
  %fragoff = getelementptr inbounds %struct.xt_action_param, ptr %acpar, i32 0, i32 4
  %7 = ptrtoint ptr %fragoff to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %fragoff, align 4
  %hotdrop = getelementptr inbounds %struct.xt_action_param, ptr %acpar, i32 0, i32 5
  %8 = ptrtoint ptr %hotdrop to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %hotdrop, align 2
  %state11 = getelementptr inbounds %struct.xt_action_param, ptr %acpar, i32 0, i32 2
  %9 = ptrtoint ptr %state11 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %state, ptr %state11, align 4
  %valid_hooks = getelementptr inbounds %struct.xt_table, ptr %priv, i32 0, i32 1
  %10 = ptrtoint ptr %valid_hooks to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %valid_hooks, align 4
  %shl = shl nuw i32 1, %conv
  %and = and i32 %11, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %do.end, label %entry.if.end_crit_edge, !prof !102

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 280, i32 noundef 9, ptr noundef null) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call fastcc void @local_bh_disable()
  %12 = tail call i32 @llvm.read_register.i32(metadata !92) #14
  %and.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %17, ptrtoint (ptr @xt_recseq to i32)
  %18 = inttoptr i32 %add.i to ptr
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %21 = and i32 %20, 1
  %and.i = xor i32 %21, 1
  %add27.i = or i32 %and.i, %20
  store i32 %add27.i, ptr %18, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !103
  %private37 = getelementptr inbounds %struct.xt_table, ptr %priv, i32 0, i32 2
  %22 = ptrtoint ptr %private37 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %private37, align 4
  %24 = tail call i32 @llvm.read_register.i32(metadata !92) #14
  %and.i331 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i331 to ptr
  %cpu39 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu39 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu39, align 4
  %entries = getelementptr inbounds %struct.xt_table_info, ptr %23, i32 0, i32 8
  %jumpstack41 = getelementptr inbounds %struct.xt_table_info, ptr %23, i32 0, i32 6
  %28 = ptrtoint ptr %jumpstack41 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %jumpstack41, align 8
  %arrayidx = getelementptr ptr, ptr %29, i32 %27
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @xt_tee_enabled, ptr blockaddress(@ip6t_do_table, %if.then43)) #14
          to label %if.end68 [label %if.then43], !srcloc !104

if.then43:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %stacksize = getelementptr inbounds %struct.xt_table_info, ptr %23, i32 0, i32 5
  %32 = ptrtoint ptr %stacksize to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %stacksize, align 4
  %34 = ptrtoint ptr %cpu39 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cpu39, align 4
  %arrayidx57 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %35
  %36 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx57, align 4
  %add = add i32 %37, ptrtoint (ptr @nf_skb_duplicated to i32)
  %38 = inttoptr i32 %add to ptr
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %38, align 1, !range !105
  %41 = zext i8 %40 to i32
  %mul = mul nuw nsw i32 %33, %41
  %add.ptr = getelementptr ptr, ptr %31, i32 %mul
  br label %if.end68

if.end68:                                         ; preds = %if.then43, %if.end
  %jumpstack.0 = phi ptr [ %add.ptr, %if.then43 ], [ %31, %if.end ]
  %arrayidx69 = getelementptr %struct.xt_table_info, ptr %23, i32 0, i32 3, i32 %conv
  %42 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx69, align 4
  %add.ptr.i = getelementptr i8, ptr %entries, i32 %43
  %thoff = getelementptr inbounds %struct.xt_action_param, ptr %acpar, i32 0, i32 3
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %arrayidx3.i.i = getelementptr i32, ptr %spec.select, i32 1
  %arrayidx8.i133.i = getelementptr i32, ptr %spec.select, i32 2
  %arrayidx14.i136.i = getelementptr i32, ptr %spec.select, i32 3
  %arrayidx3.i139.i = getelementptr i32, ptr %cond10, i32 1
  %arrayidx8.i145.i = getelementptr i32, ptr %cond10, i32 2
  %arrayidx14.i151.i = getelementptr i32, ptr %cond10, i32 3
  %44 = getelementptr inbounds %struct.xt_action_param, ptr %acpar, i32 0, i32 1
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %nf_trace = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %net = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 5
  %name176 = getelementptr inbounds %struct.xt_table, ptr %priv, i32 0, i32 7
  %stacksize211 = getelementptr inbounds %struct.xt_table_info, ptr %23, i32 0, i32 5
  %arrayidx196 = getelementptr %struct.xt_table_info, ptr %23, i32 0, i32 4, i32 %conv
  br label %do.body71

do.body71:                                        ; preds = %do.cond243.do.body71_crit_edge, %if.end68
  %stackidx.0 = phi i32 [ 0, %if.end68 ], [ %stackidx.4.ph, %do.cond243.do.body71_crit_edge ]
  %e.0 = phi ptr [ %add.ptr.i, %if.end68 ], [ %e.3.ph, %do.cond243.do.body71_crit_edge ]
  %verdict.0 = phi i32 [ 0, %if.end68 ], [ %verdict.2.ph, %do.cond243.do.body71_crit_edge ]
  %tobool73.not = icmp eq ptr %e.0, null
  br i1 %tobool73.not, label %do.end91, label %do.body71.if.end97_crit_edge, !prof !102

do.body71.if.end97_crit_edge:                     ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end97

do.end91:                                         ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 306, i32 noundef 9, ptr noundef null) #14
  br label %if.end97

if.end97:                                         ; preds = %do.end91, %do.body71.if.end97_crit_edge
  %45 = ptrtoint ptr %thoff to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %thoff, align 4
  %46 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %head.i.i.i, align 8
  %48 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %49 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %47, i32 %conv.i.i.i
  %saddr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i, i32 0, i32 5
  %smsk.i = getelementptr inbounds %struct.ip6t_ip6, ptr %e.0, i32 0, i32 2
  %50 = ptrtoint ptr %saddr.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %saddr.i, align 4
  %52 = ptrtoint ptr %e.0 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %e.0, align 4
  %xor.i.i = xor i32 %53, %51
  %54 = ptrtoint ptr %smsk.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %smsk.i, align 4
  %and.i.i332 = and i32 %xor.i.i, %55
  %arrayidx6.i.i = getelementptr [4 x i32], ptr %saddr.i, i32 0, i32 1
  %56 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx6.i.i, align 4
  %arrayidx8.i.i = getelementptr [4 x i32], ptr %e.0, i32 0, i32 1
  %58 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx8.i.i, align 4
  %xor9.i.i = xor i32 %59, %57
  %arrayidx11.i.i = getelementptr %struct.ip6t_ip6, ptr %e.0, i32 0, i32 2, i32 0, i32 0, i32 1
  %60 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx11.i.i, align 4
  %and12.i.i = and i32 %xor9.i.i, %61
  %or.i.i = or i32 %and12.i.i, %and.i.i332
  %arrayidx14.i.i = getelementptr [4 x i32], ptr %saddr.i, i32 0, i32 2
  %62 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx14.i.i, align 4
  %arrayidx16.i.i = getelementptr [4 x i32], ptr %e.0, i32 0, i32 2
  %64 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx16.i.i, align 4
  %xor17.i.i = xor i32 %65, %63
  %arrayidx19.i.i = getelementptr %struct.ip6t_ip6, ptr %e.0, i32 0, i32 2, i32 0, i32 0, i32 2
  %66 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx19.i.i, align 4
  %and20.i.i = and i32 %xor17.i.i, %67
  %or21.i.i = or i32 %or.i.i, %and20.i.i
  %arrayidx23.i.i = getelementptr [4 x i32], ptr %saddr.i, i32 0, i32 3
  %68 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx23.i.i, align 4
  %arrayidx25.i.i = getelementptr [4 x i32], ptr %e.0, i32 0, i32 3
  %70 = ptrtoint ptr %arrayidx25.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx25.i.i, align 4
  %xor26.i.i = xor i32 %71, %69
  %arrayidx28.i.i = getelementptr %struct.ip6t_ip6, ptr %e.0, i32 0, i32 2, i32 0, i32 0, i32 3
  %72 = ptrtoint ptr %arrayidx28.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx28.i.i, align 4
  %and29.i.i = and i32 %xor26.i.i, %73
  %or30.i.i = or i32 %or21.i.i, %and29.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or30.i.i)
  %tobool.i.i = icmp ne i32 %or30.i.i, 0
  %invflags.i = getelementptr inbounds %struct.ip6t_ip6, ptr %e.0, i32 0, i32 11
  %74 = ptrtoint ptr %invflags.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %invflags.i, align 4
  %76 = and i8 %75, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %77 = icmp eq i8 %76, 0
  %tobool4.not.i = xor i1 %77, %tobool.i.i
  br i1 %tobool4.not.i, label %lor.lhs.false.i, label %if.end97.no_match_crit_edge

if.end97.no_match_crit_edge:                      ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #16
  br label %no_match

lor.lhs.false.i:                                  ; preds = %if.end97
  %daddr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i, i32 0, i32 6
  %dmsk.i = getelementptr inbounds %struct.ip6t_ip6, ptr %e.0, i32 0, i32 3
  %dst.i = getelementptr inbounds %struct.ip6t_ip6, ptr %e.0, i32 0, i32 1
  %78 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %daddr.i, align 4
  %80 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %dst.i, align 4
  %xor.i108.i = xor i32 %81, %79
  %82 = ptrtoint ptr %dmsk.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %dmsk.i, align 4
  %and.i109.i = and i32 %xor.i108.i, %83
  %arrayidx6.i110.i = getelementptr [4 x i32], ptr %daddr.i, i32 0, i32 1
  %84 = ptrtoint ptr %arrayidx6.i110.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx6.i110.i, align 4
  %arrayidx8.i111.i = getelementptr %struct.ip6t_ip6, ptr %e.0, i32 0, i32 1, i32 0, i32 0, i32 1
  %86 = ptrtoint ptr %arrayidx8.i111.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx8.i111.i, align 4
  %xor9.i112.i = xor i32 %87, %85
  %arrayidx11.i113.i = getelementptr %struct.ip6t_ip6, ptr %e.0, i32 0, i32 3, i32 0, i32 0, i32 1
  %88 = ptrtoint ptr %arrayidx11.i113.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx11.i113.i, align 4
  %and12.i114.i = and i32 %xor9.i112.i, %89
  %or.i115.i = or i32 %and12.i114.i, %and.i109.i
  %arrayidx14.i116.i = getelementptr [4 x i32], ptr %daddr.i, i32 0, i32 2
  %90 = ptrtoint ptr %arrayidx14.i116.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx14.i116.i, align 4
  %arrayidx16.i117.i = getelementptr %struct.ip6t_ip6, ptr %e.0, i32 0, i32 1, i32 0, i32 0, i32 2
  %92 = ptrtoint ptr %arrayidx16.i117.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx16.i117.i, align 4
  %xor17.i118.i = xor i32 %93, %91
  %arrayidx19.i119.i = getelementptr %struct.ip6t_ip6, ptr %e.0, i32 0, i32 3, i32 0, i32 0, i32 2
  %94 = ptrtoint ptr %arrayidx19.i119.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx19.i119.i, align 4
  %and20.i120.i = and i32 %xor17.i118.i, %95
  %or21.i121.i = or i32 %or.i115.i, %and20.i120.i
  %arrayidx23.i122.i = getelementptr [4 x i32], ptr %daddr.i, i32 0, i32 3
  %96 = ptrtoint ptr %arrayidx23.i122.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx23.i122.i, align 4
  %arrayidx25.i123.i = getelementptr %struct.ip6t_ip6, ptr %e.0, i32 0, i32 1, i32 0, i32 0, i32 3
  %98 = ptrtoint ptr %arrayidx25.i123.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx25.i123.i, align 4
  %xor26.i124.i = xor i32 %99, %97
  %arrayidx28.i125.i = getelementptr %struct.ip6t_ip6, ptr %e.0, i32 0, i32 3, i32 0, i32 0, i32 3
  %100 = ptrtoint ptr %arrayidx28.i125.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx28.i125.i, align 4
  %and29.i126.i = and i32 %xor26.i124.i, %101
  %or30.i127.i = or i32 %or21.i121.i, %and29.i126.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or30.i127.i)
  %tobool.i128.i = icmp ne i32 %or30.i127.i, 0
  %102 = and i8 %75, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %103 = icmp eq i8 %102, 0
  %tobool16.not.i = xor i1 %103, %tobool.i128.i
  br i1 %tobool16.not.i, label %if.end.i, label %lor.lhs.false.i.no_match_crit_edge

lor.lhs.false.i.no_match_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %no_match

if.end.i:                                         ; preds = %lor.lhs.false.i
  %iniface.i = getelementptr inbounds %struct.ip6t_ip6, ptr %e.0, i32 0, i32 4
  %iniface_mask.i = getelementptr inbounds %struct.ip6t_ip6, ptr %e.0, i32 0, i32 6
  %104 = ptrtoint ptr %spec.select to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %spec.select, align 4
  %106 = ptrtoint ptr %iniface.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %iniface.i, align 4
  %xor.i129.i = xor i32 %107, %105
  %108 = ptrtoint ptr %iniface_mask.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %iniface_mask.i, align 4
  %and.i130.i = and i32 %xor.i129.i, %109
  %110 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx3.i.i, align 4
  %arrayidx4.i.i = getelementptr %struct.ip6t_ip6, ptr %e.0, i32 0, i32 4, i32 4
  %112 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx4.i.i, align 4
  %xor5.i.i = xor i32 %113, %111
  %arrayidx6.i131.i = getelementptr %struct.ip6t_ip6, ptr %e.0, i32 0, i32 6, i32 4
  %114 = ptrtoint ptr %arrayidx6.i131.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx6.i131.i, align 4
  %and7.i.i = and i32 %xor5.i.i, %115
  %or.i132.i = or i32 %and7.i.i, %and.i130.i
  %116 = ptrtoint ptr %arrayidx8.i133.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx8.i133.i, align 4
  %arrayidx9.i.i = getelementptr %struct.ip6t_ip6, ptr %e.0, i32 0, i32 4, i32 8
  %118 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx9.i.i, align 4
  %xor10.i.i = xor i32 %119, %117
  %arrayidx11.i134.i = getelementptr %struct.ip6t_ip6, ptr %e.0, i32 0, i32 6, i32 8
  %120 = ptrtoint ptr %arrayidx11.i134.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx11.i134.i, align 4
  %and12.i135.i = and i32 %xor10.i.i, %121
  %or13.i.i = or i32 %or.i132.i, %and12.i135.i
  %122 = ptrtoint ptr %arrayidx14.i136.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %arrayidx14.i136.i, align 4
  %arrayidx15.i.i = getelementptr %struct.ip6t_ip6, ptr %e.0, i32 0, i32 4, i32 12
  %124 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx15.i.i, align 4
  %xor16.i.i = xor i32 %125, %123
  %arrayidx17.i.i = getelementptr %struct.ip6t_ip6, ptr %e.0, i32 0, i32 6, i32 12
  %126 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx17.i.i, align 4
  %and18.i.i = and i32 %xor16.i.i, %127
  %or19.i.i = or i32 %or13.i.i, %and18.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i.i)
  %cmp.i = icmp eq i32 %or19.i.i, 0
  %128 = and i8 %75, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %128)
  %129 = icmp ne i8 %128, 0
  %tobool29.not.i = xor i1 %129, %cmp.i
  br i1 %tobool29.not.i, label %if.end31.i, label %if.end.i.no_match_crit_edge

if.end.i.no_match_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %no_match

if.end31.i:                                       ; preds = %if.end.i
  %outiface.i = getelementptr inbounds %struct.ip6t_ip6, ptr %e.0, i32 0, i32 5
  %outiface_mask.i = getelementptr inbounds %struct.ip6t_ip6, ptr %e.0, i32 0, i32 7
  %130 = ptrtoint ptr %cond10 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %cond10, align 4
  %132 = ptrtoint ptr %outiface.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %outiface.i, align 4
  %xor.i137.i = xor i32 %133, %131
  %134 = ptrtoint ptr %outiface_mask.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %outiface_mask.i, align 4
  %and.i138.i = and i32 %xor.i137.i, %135
  %136 = ptrtoint ptr %arrayidx3.i139.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %arrayidx3.i139.i, align 4
  %arrayidx4.i140.i = getelementptr %struct.ip6t_ip6, ptr %e.0, i32 0, i32 5, i32 4
  %138 = ptrtoint ptr %arrayidx4.i140.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %arrayidx4.i140.i, align 4
  %xor5.i141.i = xor i32 %139, %137
  %arrayidx6.i142.i = getelementptr %struct.ip6t_ip6, ptr %e.0, i32 0, i32 7, i32 4
  %140 = ptrtoint ptr %arrayidx6.i142.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx6.i142.i, align 4
  %and7.i143.i = and i32 %xor5.i141.i, %141
  %or.i144.i = or i32 %and7.i143.i, %and.i138.i
  %142 = ptrtoint ptr %arrayidx8.i145.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %arrayidx8.i145.i, align 4
  %arrayidx9.i146.i = getelementptr %struct.ip6t_ip6, ptr %e.0, i32 0, i32 5, i32 8
  %144 = ptrtoint ptr %arrayidx9.i146.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %arrayidx9.i146.i, align 4
  %xor10.i147.i = xor i32 %145, %143
  %arrayidx11.i148.i = getelementptr %struct.ip6t_ip6, ptr %e.0, i32 0, i32 7, i32 8
  %146 = ptrtoint ptr %arrayidx11.i148.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %arrayidx11.i148.i, align 4
  %and12.i149.i = and i32 %xor10.i147.i, %147
  %or13.i150.i = or i32 %or.i144.i, %and12.i149.i
  %148 = ptrtoint ptr %arrayidx14.i151.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %arrayidx14.i151.i, align 4
  %arrayidx15.i152.i = getelementptr %struct.ip6t_ip6, ptr %e.0, i32 0, i32 5, i32 12
  %150 = ptrtoint ptr %arrayidx15.i152.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %arrayidx15.i152.i, align 4
  %xor16.i153.i = xor i32 %151, %149
  %arrayidx17.i154.i = getelementptr %struct.ip6t_ip6, ptr %e.0, i32 0, i32 7, i32 12
  %152 = ptrtoint ptr %arrayidx17.i154.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %arrayidx17.i154.i, align 4
  %and18.i155.i = and i32 %xor16.i153.i, %153
  %or19.i156.i = or i32 %or13.i150.i, %and18.i155.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i156.i)
  %cmp35.i = icmp eq i32 %or19.i156.i, 0
  %154 = and i8 %75, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %154)
  %155 = icmp ne i8 %154, 0
  %tobool46.not.i = xor i1 %155, %cmp35.i
  br i1 %tobool46.not.i, label %if.end48.i, label %if.end31.i.no_match_crit_edge

if.end31.i.no_match_crit_edge:                    ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %no_match

if.end48.i:                                       ; preds = %if.end31.i
  %flags.i = getelementptr inbounds %struct.ip6t_ip6, ptr %e.0, i32 0, i32 10
  %156 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %flags.i, align 1
  %158 = and i8 %157, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %158)
  %tobool51.not.i = icmp eq i8 %158, 0
  br i1 %tobool51.not.i, label %if.end48.i.if.end111_crit_edge, label %if.then52.i

if.end48.i.if.end111_crit_edge:                   ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end111

if.then52.i:                                      ; preds = %if.end48.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %_frag_off.i) #14
  %159 = ptrtoint ptr %_frag_off.i to i32
  call void @__asan_store2_noabort(i32 %159)
  store i16 -1, ptr %_frag_off.i, align 2, !annotation !106
  %call53.i = call i32 @ipv6_find_hdr(ptr noundef %skb, ptr noundef %thoff, i32 noundef -1, ptr noundef nonnull %_frag_off.i, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %cmp54.i = icmp slt i32 %call53.i, 0
  %160 = ptrtoint ptr %_frag_off.i to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %_frag_off.i, align 2
  br i1 %cmp54.i, label %if.then56.i, label %if.end62.i

if.then56.i:                                      ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %161)
  %cmp58.i = icmp eq i16 %161, 0
  br i1 %cmp58.i, label %if.then60.i, label %if.then56.i.ip6_packet_match.exit.thread361_crit_edge

if.then56.i.ip6_packet_match.exit.thread361_crit_edge: ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ip6_packet_match.exit.thread361

if.then60.i:                                      ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #16
  %162 = ptrtoint ptr %hotdrop to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 1, ptr %hotdrop, align 2
  br label %ip6_packet_match.exit.thread361

if.end62.i:                                       ; preds = %if.then52.i
  %163 = ptrtoint ptr %fragoff to i32
  call void @__asan_store2_noabort(i32 %163)
  store i16 %161, ptr %fragoff, align 4
  %proto.i = getelementptr inbounds %struct.ip6t_ip6, ptr %e.0, i32 0, i32 8
  %164 = ptrtoint ptr %proto.i to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %proto.i, align 4
  %conv63.i = zext i16 %165 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call53.i, i32 %conv63.i)
  %cmp64.i = icmp eq i32 %call53.i, %conv63.i
  br i1 %cmp64.i, label %ip6_packet_match.exit, label %if.end73.i

if.end73.i:                                       ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %165)
  %cmp76.not.i = icmp eq i16 %165, 0
  br i1 %cmp76.not.i, label %if.end73.i.cleanup.i_crit_edge, label %land.lhs.true.i

if.end73.i.cleanup.i_crit_edge:                   ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.i

land.lhs.true.i:                                  ; preds = %if.end73.i
  %166 = ptrtoint ptr %invflags.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %invflags.i, align 4
  %168 = and i8 %167, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %168)
  %tobool81.not.i = icmp eq i8 %168, 0
  br i1 %tobool81.not.i, label %land.lhs.true.i.ip6_packet_match.exit.thread361_crit_edge, label %land.lhs.true.i.cleanup.i_crit_edge

land.lhs.true.i.cleanup.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.i

land.lhs.true.i.ip6_packet_match.exit.thread361_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ip6_packet_match.exit.thread361

cleanup.i:                                        ; preds = %land.lhs.true.i.cleanup.i_crit_edge, %if.end73.i.cleanup.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %_frag_off.i) #14
  br label %if.end111

ip6_packet_match.exit.thread361:                  ; preds = %land.lhs.true.i.ip6_packet_match.exit.thread361_crit_edge, %if.then60.i, %if.then56.i.ip6_packet_match.exit.thread361_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %_frag_off.i) #14
  br label %no_match

ip6_packet_match.exit:                            ; preds = %if.end62.i
  %169 = ptrtoint ptr %invflags.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %invflags.i, align 4
  %171 = and i8 %170, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %171)
  %tobool70.not.i = icmp eq i8 %171, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %_frag_off.i) #14
  br i1 %tobool70.not.i, label %ip6_packet_match.exit.if.end111_crit_edge, label %ip6_packet_match.exit.no_match_crit_edge

ip6_packet_match.exit.no_match_crit_edge:         ; preds = %ip6_packet_match.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %no_match

ip6_packet_match.exit.if.end111_crit_edge:        ; preds = %ip6_packet_match.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end111

no_match:                                         ; preds = %for.body.no_match_crit_edge, %ip6_packet_match.exit.no_match_crit_edge, %ip6_packet_match.exit.thread361, %if.end31.i.no_match_crit_edge, %if.end.i.no_match_crit_edge, %lor.lhs.false.i.no_match_crit_edge, %if.end97.no_match_crit_edge
  %next_offset.i = getelementptr inbounds %struct.ip6t_entry, ptr %e.0, i32 0, i32 3
  %172 = ptrtoint ptr %next_offset.i to i32
  call void @__asan_load2_noabort(i32 %172)
  %173 = load i16, ptr %next_offset.i, align 2
  %conv.i = zext i16 %173 to i32
  %add.ptr.i333 = getelementptr i8, ptr %e.0, i32 %conv.i
  br label %do.cond243

if.end111:                                        ; preds = %ip6_packet_match.exit.if.end111_crit_edge, %cleanup.i, %if.end48.i.if.end111_crit_edge
  %elems = getelementptr inbounds %struct.ip6t_entry, ptr %e.0, i32 0, i32 6
  %target_offset = getelementptr inbounds %struct.ip6t_entry, ptr %e.0, i32 0, i32 2
  %174 = ptrtoint ptr %target_offset to i32
  call void @__asan_load2_noabort(i32 %174)
  %175 = load i16, ptr %target_offset, align 4
  %conv113374 = zext i16 %175 to i32
  %add.ptr114375 = getelementptr i8, ptr %e.0, i32 %conv113374
  %cmp376 = icmp ult ptr %elems, %add.ptr114375
  br i1 %cmp376, label %if.end111.for.body_crit_edge, label %if.end111.for.end_crit_edge

if.end111.for.end_crit_edge:                      ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end111.for.body_crit_edge:                     ; preds = %if.end111
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end111.for.body_crit_edge
  %ematch.0377 = phi ptr [ %add.ptr123, %for.inc.for.body_crit_edge ], [ %elems, %if.end111.for.body_crit_edge ]
  %match = getelementptr inbounds %struct.anon.200, ptr %ematch.0377, i32 0, i32 1
  %176 = ptrtoint ptr %match to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %match, align 4
  %178 = ptrtoint ptr %acpar to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr %177, ptr %acpar, align 4
  %data = getelementptr inbounds %struct.xt_entry_match, ptr %ematch.0377, i32 0, i32 1
  %179 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr %data, ptr %44, align 4
  %match117 = getelementptr inbounds %struct.xt_match, ptr %177, i32 0, i32 3
  %180 = ptrtoint ptr %match117 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %match117, align 4
  %call118 = call zeroext i1 %181(ptr noundef %skb, ptr noundef nonnull %acpar) #14
  br i1 %call118, label %for.inc, label %for.body.no_match_crit_edge

for.body.no_match_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %no_match

for.inc:                                          ; preds = %for.body
  %182 = ptrtoint ptr %ematch.0377 to i32
  call void @__asan_load2_noabort(i32 %182)
  %183 = load i16, ptr %ematch.0377, align 4
  %conv122 = zext i16 %183 to i32
  %add.ptr123 = getelementptr i8, ptr %ematch.0377, i32 %conv122
  %184 = ptrtoint ptr %target_offset to i32
  call void @__asan_load2_noabort(i32 %184)
  %185 = load i16, ptr %target_offset, align 4
  %conv113 = zext i16 %185 to i32
  %add.ptr114 = getelementptr i8, ptr %e.0, i32 %conv113
  %cmp = icmp ult ptr %add.ptr123, %add.ptr114
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end111.for.end_crit_edge
  %counters = getelementptr inbounds %struct.ip6t_entry, ptr %e.0, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %186 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %186)
  %cmp.i334 = icmp ugt i32 %186, 1
  br i1 %cmp.i334, label %do.body.i, label %for.end.xt_get_this_cpu_counter.exit_crit_edge

for.end.xt_get_this_cpu_counter.exit_crit_edge:   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %xt_get_this_cpu_counter.exit

do.body.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  %187 = ptrtoint ptr %counters to i32
  call void @__asan_load8_noabort(i32 %187)
  %188 = load i64, ptr %counters, align 8
  %conv.i335 = trunc i64 %188 to i32
  %189 = call i32 @llvm.read_register.i32(metadata !92) #14
  %and.i.i336 = and i32 %189, -16384
  %190 = inttoptr i32 %and.i.i336 to ptr
  %cpu.i337 = getelementptr inbounds %struct.thread_info, ptr %190, i32 0, i32 3
  %191 = ptrtoint ptr %cpu.i337 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %cpu.i337, align 4
  %arrayidx.i338 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %192
  %193 = ptrtoint ptr %arrayidx.i338 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %arrayidx.i338, align 4
  %add.i339 = add i32 %194, %conv.i335
  %195 = inttoptr i32 %add.i339 to ptr
  br label %xt_get_this_cpu_counter.exit

xt_get_this_cpu_counter.exit:                     ; preds = %do.body.i, %for.end.xt_get_this_cpu_counter.exit_crit_edge
  %retval.0.i = phi ptr [ %195, %do.body.i ], [ %counters, %for.end.xt_get_this_cpu_counter.exit_crit_edge ]
  %196 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %len, align 4
  %conv126 = zext i32 %197 to i64
  %bcnt = getelementptr inbounds %struct.xt_counters, ptr %retval.0.i, i32 0, i32 1
  %198 = ptrtoint ptr %bcnt to i32
  call void @__asan_load8_noabort(i32 %198)
  %199 = load i64, ptr %bcnt, align 8
  %add127 = add i64 %199, %conv126
  store i64 %add127, ptr %bcnt, align 8
  %200 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load8_noabort(i32 %200)
  %201 = load i64, ptr %retval.0.i, align 8
  %add128 = add i64 %201, 1
  store i64 %add128, ptr %retval.0.i, align 8
  %202 = ptrtoint ptr %target_offset to i32
  call void @__asan_load2_noabort(i32 %202)
  %203 = load i16, ptr %target_offset, align 4
  %conv.i.i = zext i16 %203 to i32
  %add.ptr.i.i = getelementptr i8, ptr %e.0, i32 %conv.i.i
  %target = getelementptr inbounds %struct.anon.195, ptr %add.ptr.i.i, i32 0, i32 1
  %204 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %target, align 4
  %tobool134.not = icmp eq ptr %205, null
  br i1 %tobool134.not, label %do.end152, label %xt_get_this_cpu_counter.exit.if.end158_crit_edge, !prof !102

xt_get_this_cpu_counter.exit.if.end158_crit_edge: ; preds = %xt_get_this_cpu_counter.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end158

do.end152:                                        ; preds = %xt_get_this_cpu_counter.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 326, i32 noundef 9, ptr noundef null) #14
  br label %if.end158

if.end158:                                        ; preds = %do.end152, %xt_get_this_cpu_counter.exit.if.end158_crit_edge
  %206 = ptrtoint ptr %nf_trace to i32
  call void @__asan_load2_noabort(i32 %206)
  %bf.load = load i16, ptr %nf_trace, align 8
  %207 = and i16 %bf.load, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %207)
  %tobool166.not = icmp eq i16 %207, 0
  br i1 %tobool166.not, label %if.end158.if.end178_crit_edge, label %if.then173, !prof !107

if.end158.if.end178_crit_edge:                    ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end178

if.then173:                                       ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #16
  %208 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %net, align 4
  %210 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %in, align 4
  %212 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %out, align 4
  call fastcc void @trace_packet(ptr noundef %209, ptr noundef %skb, i32 noundef %conv, ptr noundef %211, ptr noundef %213, ptr noundef %name176, ptr noundef %23, ptr noundef %e.0)
  br label %if.end178

if.end178:                                        ; preds = %if.then173, %if.end158.if.end178_crit_edge
  %214 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %target, align 4
  %target181 = getelementptr inbounds %struct.xt_target, ptr %215, i32 0, i32 3
  %216 = ptrtoint ptr %target181 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %target181, align 4
  %tobool182.not = icmp eq ptr %217, null
  br i1 %tobool182.not, label %if.then183, label %if.end225

if.then183:                                       ; preds = %if.end178
  %verdict184 = getelementptr inbounds %struct.xt_standard_target, ptr %add.ptr.i.i, i32 0, i32 1
  %218 = ptrtoint ptr %verdict184 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %verdict184, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %219)
  %cmp185 = icmp slt i32 %219, 0
  br i1 %cmp185, label %if.then187, label %if.end201

if.then187:                                       ; preds = %if.then183
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %219)
  %cmp188.not = icmp eq i32 %219, -5
  br i1 %cmp188.not, label %if.end192, label %if.then190

if.then190:                                       ; preds = %if.then187
  call void @__sanitizer_cov_trace_pc() #16
  %sub191 = xor i32 %219, -1
  br label %do.end248

if.end192:                                        ; preds = %if.then187
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stackidx.0)
  %cmp193 = icmp eq i32 %stackidx.0, 0
  br i1 %cmp193, label %if.then195, label %if.else

if.then195:                                       ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #16
  %220 = ptrtoint ptr %arrayidx196 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %arrayidx196, align 4
  %add.ptr.i340 = getelementptr i8, ptr %entries, i32 %221
  br label %do.cond243

if.else:                                          ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #16
  %dec = add i32 %stackidx.0, -1
  %arrayidx198 = getelementptr ptr, ptr %jumpstack.0, i32 %dec
  %222 = ptrtoint ptr %arrayidx198 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %arrayidx198, align 4
  %next_offset.i341 = getelementptr inbounds %struct.ip6t_entry, ptr %223, i32 0, i32 3
  %224 = ptrtoint ptr %next_offset.i341 to i32
  call void @__asan_load2_noabort(i32 %224)
  %225 = load i16, ptr %next_offset.i341, align 2
  %conv.i342 = zext i16 %225 to i32
  %add.ptr.i343 = getelementptr i8, ptr %223, i32 %conv.i342
  br label %do.cond243

if.end201:                                        ; preds = %if.then183
  %add.ptr202 = getelementptr i8, ptr %entries, i32 %219
  %next_offset.i344 = getelementptr inbounds %struct.ip6t_entry, ptr %e.0, i32 0, i32 3
  %226 = ptrtoint ptr %next_offset.i344 to i32
  call void @__asan_load2_noabort(i32 %226)
  %227 = load i16, ptr %next_offset.i344, align 2
  %conv.i345 = zext i16 %227 to i32
  %add.ptr.i346 = getelementptr i8, ptr %e.0, i32 %conv.i345
  %cmp204.not = icmp eq ptr %add.ptr202, %add.ptr.i346
  br i1 %cmp204.not, label %if.end201.do.cond243_crit_edge, label %land.lhs.true

if.end201.do.cond243_crit_edge:                   ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.cond243

land.lhs.true:                                    ; preds = %if.end201
  %228 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %flags.i, align 1
  %230 = and i8 %229, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %230)
  %tobool209.not = icmp eq i8 %230, 0
  br i1 %tobool209.not, label %if.then210, label %land.lhs.true.do.cond243_crit_edge

land.lhs.true.do.cond243_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.cond243

if.then210:                                       ; preds = %land.lhs.true
  %231 = ptrtoint ptr %stacksize211 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %stacksize211, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %stackidx.0, i32 %232)
  %cmp212.not = icmp ult i32 %stackidx.0, %232
  br i1 %cmp212.not, label %if.end221, label %if.then210.do.end248_crit_edge, !prof !107

if.then210.do.end248_crit_edge:                   ; preds = %if.then210
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end248

if.end221:                                        ; preds = %if.then210
  call void @__sanitizer_cov_trace_pc() #16
  %inc = add nuw i32 %stackidx.0, 1
  %arrayidx222 = getelementptr ptr, ptr %jumpstack.0, i32 %stackidx.0
  %233 = ptrtoint ptr %arrayidx222 to i32
  call void @__asan_store4_noabort(i32 %233)
  store ptr %e.0, ptr %arrayidx222, align 4
  br label %do.cond243

if.end225:                                        ; preds = %if.end178
  %234 = ptrtoint ptr %acpar to i32
  call void @__asan_store4_noabort(i32 %234)
  store ptr %215, ptr %acpar, align 4
  %data228 = getelementptr inbounds %struct.xt_entry_target, ptr %add.ptr.i.i, i32 0, i32 1
  %235 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %235)
  store ptr %data228, ptr %44, align 4
  %236 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %target, align 4
  %target232 = getelementptr inbounds %struct.xt_target, ptr %237, i32 0, i32 3
  %238 = ptrtoint ptr %target232 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %target232, align 4
  %call233 = call i32 %239(ptr noundef %skb, ptr noundef nonnull %acpar) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call233)
  %cmp234 = icmp eq i32 %call233, -1
  br i1 %cmp234, label %if.then236, label %if.end225.do.end248_crit_edge

if.end225.do.end248_crit_edge:                    ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end248

if.then236:                                       ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #16
  %next_offset.i348 = getelementptr inbounds %struct.ip6t_entry, ptr %e.0, i32 0, i32 3
  %240 = ptrtoint ptr %next_offset.i348 to i32
  call void @__asan_load2_noabort(i32 %240)
  %241 = load i16, ptr %next_offset.i348, align 2
  %conv.i349 = zext i16 %241 to i32
  %add.ptr.i350 = getelementptr i8, ptr %e.0, i32 %conv.i349
  br label %do.cond243

do.cond243:                                       ; preds = %if.then236, %if.end221, %land.lhs.true.do.cond243_crit_edge, %if.end201.do.cond243_crit_edge, %if.else, %if.then195, %no_match
  %stackidx.4.ph = phi i32 [ %stackidx.0, %if.end201.do.cond243_crit_edge ], [ %inc, %if.end221 ], [ %stackidx.0, %land.lhs.true.do.cond243_crit_edge ], [ %dec, %if.else ], [ 0, %if.then195 ], [ %stackidx.0, %if.then236 ], [ %stackidx.0, %no_match ]
  %e.3.ph = phi ptr [ %add.ptr202, %if.end201.do.cond243_crit_edge ], [ %add.ptr202, %if.end221 ], [ %add.ptr202, %land.lhs.true.do.cond243_crit_edge ], [ %add.ptr.i343, %if.else ], [ %add.ptr.i340, %if.then195 ], [ %add.ptr.i350, %if.then236 ], [ %add.ptr.i333, %no_match ]
  %verdict.2.ph = phi i32 [ %verdict.0, %if.end201.do.cond243_crit_edge ], [ %verdict.0, %if.end221 ], [ %verdict.0, %land.lhs.true.do.cond243_crit_edge ], [ %verdict.0, %if.else ], [ %verdict.0, %if.then195 ], [ -1, %if.then236 ], [ %verdict.0, %no_match ]
  %242 = ptrtoint ptr %hotdrop to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %hotdrop, align 2, !range !105
  %tobool245.not = icmp eq i8 %243, 0
  br i1 %tobool245.not, label %do.cond243.do.body71_crit_edge, label %do.cond243.do.end248_crit_edge

do.cond243.do.end248_crit_edge:                   ; preds = %do.cond243
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end248

do.cond243.do.body71_crit_edge:                   ; preds = %do.cond243
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body71

do.end248:                                        ; preds = %do.cond243.do.end248_crit_edge, %if.end225.do.end248_crit_edge, %if.then210.do.end248_crit_edge, %if.then190
  %verdict.2372 = phi i32 [ %sub191, %if.then190 ], [ %call233, %if.end225.do.end248_crit_edge ], [ 0, %if.then210.do.end248_crit_edge ], [ %verdict.2.ph, %do.cond243.do.end248_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !108
  %244 = call i32 @llvm.read_register.i32(metadata !92) #14
  %and.i.i351 = and i32 %244, -16384
  %245 = inttoptr i32 %and.i.i351 to ptr
  %cpu.i352 = getelementptr inbounds %struct.thread_info, ptr %245, i32 0, i32 3
  %246 = ptrtoint ptr %cpu.i352 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %cpu.i352, align 4
  %arrayidx.i353 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %247
  %248 = ptrtoint ptr %arrayidx.i353 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %arrayidx.i353, align 4
  %add.i354 = add i32 %249, ptrtoint (ptr @xt_recseq to i32)
  %250 = inttoptr i32 %add.i354 to ptr
  %251 = ptrtoint ptr %250 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %250, align 4
  %add11.i = add i32 %252, %and.i
  store i32 %add11.i, ptr %250, align 4
  call fastcc void @local_bh_enable()
  %253 = ptrtoint ptr %hotdrop to i32
  call void @__asan_load1_noabort(i32 %253)
  %254 = load i8, ptr %hotdrop, align 2, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %254)
  %tobool250.not = icmp eq i8 %254, 0
  %verdict.2. = select i1 %tobool250.not, i32 %verdict.2372, i32 0
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %acpar) #14
  ret i32 %verdict.2.
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_packet(ptr noundef %net, ptr noundef %skb, i32 noundef %hook, ptr noundef %in, ptr noundef %out, ptr noundef %tablename, ptr noundef %private, ptr noundef readnone %e) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %entries = getelementptr inbounds %struct.xt_table_info, ptr %private, i32 0, i32 8
  %arrayidx = getelementptr %struct.xt_table_info, ptr %private, i32 0, i32 3, i32 %hook
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add.ptr.i = getelementptr i8, ptr %entries, i32 %1
  %arrayidx1 = getelementptr [5 x ptr], ptr @hooknames, i32 0, i32 %hook
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx1, align 4
  %4 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %private, align 8
  %add.ptr = getelementptr i8, ptr %entries, i32 %5
  %cmp28 = icmp ult ptr %add.ptr.i, %add.ptr
  br i1 %cmp28, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %iter.031 = phi ptr [ %add.ptr6, %for.inc.for.body_crit_edge ], [ %add.ptr.i, %entry.for.body_crit_edge ]
  %rulenum.030 = phi i32 [ %rulenum.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %chainname.029 = phi ptr [ %chainname.2, %for.inc.for.body_crit_edge ], [ %3, %entry.for.body_crit_edge ]
  %target_offset.i.i.i = getelementptr inbounds %struct.ip6t_entry, ptr %iter.031, i32 0, i32 2
  %6 = ptrtoint ptr %target_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %target_offset.i.i.i, align 4
  %conv.i.i.i = zext i16 %7 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %iter.031, i32 %conv.i.i.i
  %target1.i = getelementptr inbounds %struct.anon.195, ptr %add.ptr.i.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %target1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %target1.i, align 4
  %name.i = getelementptr inbounds %struct.xt_target, ptr %9, i32 0, i32 1
  %call2.i = tail call i32 @strcmp(ptr noundef %name.i, ptr noundef nonnull dereferenceable(6) @.str.15) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp eq i32 %call2.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %data.i = getelementptr inbounds %struct.xt_entry_target, ptr %add.ptr.i.i.i, i32 0, i32 1
  br label %for.inc

if.else.i:                                        ; preds = %for.body
  %cmp5.i = icmp eq ptr %iter.031, %e
  %inc.i = add i32 %rulenum.030, 1
  br i1 %cmp5.i, label %if.then6.i, label %if.else.i.for.inc_crit_edge

if.else.i.for.inc_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 168, i16 %7)
  %cmp.i.i = icmp eq i16 %7, 168
  br i1 %cmp.i.i, label %unconditional.exit.i, label %if.then6.i.for.end_crit_edge

if.then6.i.for.end_crit_edge:                     ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

unconditional.exit.i:                             ; preds = %if.then6.i
  %bcmp.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(136) %e, ptr noundef nonnull dereferenceable(136) @unconditional.uncond, i32 136) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %cmp2.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %cmp2.i.i, label %land.lhs.true.i, label %unconditional.exit.i.for.end_crit_edge

unconditional.exit.i.for.end_crit_edge:           ; preds = %unconditional.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

land.lhs.true.i:                                  ; preds = %unconditional.exit.i
  %10 = ptrtoint ptr %name.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %strcmpload.i = load i8, ptr %name.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %strcmpload.i)
  %cmp14.i = icmp eq i8 %strcmpload.i, 0
  br i1 %cmp14.i, label %land.lhs.true15.i, label %land.lhs.true.i.for.end_crit_edge

land.lhs.true.i.for.end_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

land.lhs.true15.i:                                ; preds = %land.lhs.true.i
  %verdict.i = getelementptr inbounds %struct.xt_standard_target, ptr %add.ptr.i.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %verdict.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %verdict.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp16.i = icmp slt i32 %12, 0
  br i1 %cmp16.i, label %if.then17.i, label %land.lhs.true15.i.for.end_crit_edge

land.lhs.true15.i.for.end_crit_edge:              ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.then17.i:                                      ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #16
  %cmp18.i = icmp eq ptr %chainname.029, %3
  %.str.14..str.13.i = select i1 %cmp18.i, ptr @.str.14, ptr @.str.13
  br label %for.end

for.inc:                                          ; preds = %if.else.i.for.inc_crit_edge, %if.then.i
  %chainname.2 = phi ptr [ %data.i, %if.then.i ], [ %chainname.029, %if.else.i.for.inc_crit_edge ]
  %rulenum.1 = phi i32 [ 0, %if.then.i ], [ %inc.i, %if.else.i.for.inc_crit_edge ]
  %next_offset = getelementptr inbounds %struct.ip6t_entry, ptr %iter.031, i32 0, i32 3
  %13 = ptrtoint ptr %next_offset to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %next_offset, align 2
  %conv = zext i16 %14 to i32
  %add.ptr6 = getelementptr i8, ptr %iter.031, i32 %conv
  %cmp = icmp ult ptr %add.ptr6, %add.ptr
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then17.i, %land.lhs.true15.i.for.end_crit_edge, %land.lhs.true.i.for.end_crit_edge, %unconditional.exit.i.for.end_crit_edge, %if.then6.i.for.end_crit_edge, %entry.for.end_crit_edge
  %chainname.027 = phi ptr [ %chainname.029, %if.then6.i.for.end_crit_edge ], [ %chainname.029, %unconditional.exit.i.for.end_crit_edge ], [ %chainname.029, %land.lhs.true.i.for.end_crit_edge ], [ %chainname.029, %land.lhs.true15.i.for.end_crit_edge ], [ %chainname.029, %if.then17.i ], [ %3, %entry.for.end_crit_edge ], [ %chainname.2, %for.inc.for.end_crit_edge ]
  %comment.2 = phi ptr [ @.str.12, %if.then6.i.for.end_crit_edge ], [ @.str.12, %unconditional.exit.i.for.end_crit_edge ], [ @.str.12, %land.lhs.true.i.for.end_crit_edge ], [ @.str.12, %land.lhs.true15.i.for.end_crit_edge ], [ %.str.14..str.13.i, %if.then17.i ], [ @.str.12, %entry.for.end_crit_edge ], [ @.str.12, %for.inc.for.end_crit_edge ]
  %rulenum.2 = phi i32 [ %inc.i, %if.then6.i.for.end_crit_edge ], [ %inc.i, %unconditional.exit.i.for.end_crit_edge ], [ %inc.i, %land.lhs.true.i.for.end_crit_edge ], [ %inc.i, %land.lhs.true15.i.for.end_crit_edge ], [ %inc.i, %if.then17.i ], [ 0, %entry.for.end_crit_edge ], [ %rulenum.1, %for.inc.for.end_crit_edge ]
  tail call void (ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ...) @nf_log_trace(ptr noundef %net, i8 noundef zeroext 10, i32 noundef %hook, ptr noundef %skb, ptr noundef %in, ptr noundef %out, ptr noundef nonnull @trace_loginfo, ptr noundef nonnull @.str.6, ptr noundef %tablename, ptr noundef %chainname.027, ptr noundef nonnull %comment.2, i32 noundef %rulenum.2) #14
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip6t_register_table(ptr noundef %net, ptr noundef %table, ptr noundef %repl, ptr noundef %template_ops) #0 align 64 {
entry:
  %bootstrap = alloca %struct.xt_table_info, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %bootstrap) #14
  %0 = call ptr @memset(ptr %bootstrap, i32 0, i32 64)
  %1 = getelementptr inbounds %struct.xt_table_info, ptr %bootstrap, i32 0, i32 7
  %size = getelementptr inbounds %struct.ip6t_replace, ptr %repl, i32 0, i32 3
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4
  %3 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %size, align 8
  %call = tail call ptr @xt_alloc_table_info(i32 noundef %4) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %entries = getelementptr inbounds %struct.xt_table_info, ptr %call, i32 0, i32 8
  %entries1 = getelementptr inbounds %struct.ip6t_replace, ptr %repl, i32 0, i32 8
  %5 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size, align 8
  %7 = call ptr @memcpy(ptr %entries, ptr %entries1, i32 %6)
  %call4 = tail call fastcc i32 @translate_table(ptr noundef %net, ptr noundef nonnull %call, ptr noundef %entries, ptr noundef %repl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp.not = icmp eq i32 %call4, 0
  br i1 %cmp.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @xt_free_table_info(ptr noundef nonnull %call) #14
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = call ptr @xt_register_table(ptr noundef %net, ptr noundef %table, ptr noundef nonnull %bootstrap, ptr noundef nonnull %call) #14
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  call void @xt_free_table_info(ptr noundef nonnull %call) #14
  %8 = ptrtoint ptr %call7 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %tobool12.not = icmp eq ptr %template_ops, null
  br i1 %tobool12.not, label %if.end11.cleanup_crit_edge, label %cond.false

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cond.false:                                       ; preds = %if.end11
  %valid_hooks = getelementptr inbounds %struct.xt_table, ptr %table, i32 0, i32 1
  %9 = ptrtoint ptr %valid_hooks to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %valid_hooks, align 4
  %call.i = call i32 @__sw_hweight32(i32 noundef %10) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp329 = icmp eq i32 %call.i, 0
  br i1 %cmp329, label %cond.false.out_free_crit_edge, label %if.end332

cond.false.out_free_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free

if.end332:                                        ; preds = %cond.false
  %mul = mul i32 %call.i, 24
  %call333 = call ptr @kmemdup(ptr noundef nonnull %template_ops, i32 noundef %mul, i32 noundef 3264) #14
  %tobool334.not = icmp eq ptr %call333, null
  br i1 %tobool334.not, label %if.end332.out_free_crit_edge, label %if.end332.for.body_crit_edge

if.end332.for.body_crit_edge:                     ; preds = %if.end332
  br label %for.body

if.end332.out_free_crit_edge:                     ; preds = %if.end332
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end332.for.body_crit_edge
  %i.0421 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end332.for.body_crit_edge ]
  %priv = getelementptr %struct.nf_hook_ops, ptr %call333, i32 %i.0421, i32 2
  %11 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7, ptr %priv, align 4
  %inc = add nuw i32 %i.0421, 1
  %exitcond.not = icmp eq i32 %inc, %call.i
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.body
  %ops339 = getelementptr inbounds %struct.xt_table, ptr %call7, i32 0, i32 3
  %12 = ptrtoint ptr %ops339 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call333, ptr %ops339, align 4
  %call340 = call i32 @nf_register_net_hooks(ptr noundef %net, ptr noundef nonnull %call333, i32 noundef %call.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call340)
  %cmp341.not = icmp eq i32 %call340, 0
  br i1 %cmp341.not, label %for.end.cleanup_crit_edge, label %for.end.out_free_crit_edge

for.end.out_free_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

out_free:                                         ; preds = %for.end.out_free_crit_edge, %if.end332.out_free_crit_edge, %cond.false.out_free_crit_edge
  %ret.0 = phi i32 [ %call340, %for.end.out_free_crit_edge ], [ -22, %cond.false.out_free_crit_edge ], [ -12, %if.end332.out_free_crit_edge ]
  %me.i = getelementptr inbounds %struct.xt_table, ptr %call7, i32 0, i32 4
  %13 = ptrtoint ptr %me.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %me.i, align 4
  %call.i418 = call ptr @xt_unregister_table(ptr noundef %call7) #14
  %entries.i = getelementptr inbounds %struct.xt_table_info, ptr %call.i418, i32 0, i32 8
  %15 = ptrtoint ptr %call.i418 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %call.i418, align 8
  %add.ptr13.i = getelementptr i8, ptr %entries.i, i32 %16
  %cmp14.i = icmp ult ptr %entries.i, %add.ptr13.i
  br i1 %cmp14.i, label %out_free.for.body.i_crit_edge, label %out_free.for.end.i_crit_edge

out_free.for.end.i_crit_edge:                     ; preds = %out_free
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

out_free.for.body.i_crit_edge:                    ; preds = %out_free
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %out_free.for.body.i_crit_edge
  %iter.015.i = phi ptr [ %add.ptr1.i, %for.body.i.for.body.i_crit_edge ], [ %entries.i, %out_free.for.body.i_crit_edge ]
  call fastcc void @cleanup_entry(ptr noundef %iter.015.i, ptr noundef %net) #14
  %next_offset.i = getelementptr inbounds %struct.ip6t_entry, ptr %iter.015.i, i32 0, i32 3
  %17 = ptrtoint ptr %next_offset.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %next_offset.i, align 2
  %conv.i = zext i16 %18 to i32
  %add.ptr1.i = getelementptr i8, ptr %iter.015.i, i32 %conv.i
  %19 = ptrtoint ptr %call.i418 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %call.i418, align 8
  %add.ptr.i = getelementptr i8, ptr %entries.i, i32 %20
  %cmp.i419 = icmp ult ptr %add.ptr1.i, %add.ptr.i
  br i1 %cmp.i419, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %out_free.for.end.i_crit_edge
  %number.i = getelementptr inbounds %struct.xt_table_info, ptr %call.i418, i32 0, i32 1
  %21 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %number.i, align 4
  %initial_entries.i = getelementptr inbounds %struct.xt_table_info, ptr %call.i418, i32 0, i32 2
  %23 = ptrtoint ptr %initial_entries.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %initial_entries.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp2.i = icmp ugt i32 %22, %24
  br i1 %cmp2.i, label %if.then.i, label %for.end.i.__ip6t_unregister_table.exit_crit_edge

for.end.i.__ip6t_unregister_table.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__ip6t_unregister_table.exit

if.then.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @module_put(ptr noundef %14) #14
  br label %__ip6t_unregister_table.exit

__ip6t_unregister_table.exit:                     ; preds = %if.then.i, %for.end.i.__ip6t_unregister_table.exit_crit_edge
  call void @xt_free_table_info(ptr noundef %call.i418) #14
  br label %cleanup

cleanup:                                          ; preds = %__ip6t_unregister_table.exit, %for.end.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.then9, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.then5 ], [ %8, %if.then9 ], [ %ret.0, %__ip6t_unregister_table.exit ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end11.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %bootstrap) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xt_alloc_table_info(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @translate_table(ptr noundef %net, ptr noundef %newinfo, ptr noundef %entry0, ptr noundef %repl) unnamed_addr #0 align 64 {
entry:
  %par.i3.i = alloca %struct.xt_mtdtor_param, align 4
  %par.i.i = alloca %struct.xt_tgchk_param, align 4
  %mtpar.i = alloca %struct.xt_mtchk_param, align 4
  %alloc_state = alloca %struct.xt_percpu_counter_alloc_state, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %alloc_state) #14
  %0 = ptrtoint ptr %alloc_state to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %alloc_state, align 8
  %size = getelementptr inbounds %struct.ip6t_replace, ptr %repl, i32 0, i32 3
  %1 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %size, align 8
  %3 = ptrtoint ptr %newinfo to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %newinfo, align 8
  %num_entries = getelementptr inbounds %struct.ip6t_replace, ptr %repl, i32 0, i32 2
  %4 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_entries, align 4
  %number = getelementptr inbounds %struct.xt_table_info, ptr %newinfo, i32 0, i32 1
  %6 = ptrtoint ptr %number to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %number, align 4
  %arrayidx = getelementptr %struct.xt_table_info, ptr %newinfo, i32 0, i32 3, i32 0
  %7 = call ptr @memset(ptr %arrayidx, i32 255, i32 40)
  %call = tail call ptr @xt_alloc_entry_offsets(i32 noundef %5) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond4.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond4.preheader:                              ; preds = %entry
  %8 = ptrtoint ptr %newinfo to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %newinfo, align 8
  %add.ptr248 = getelementptr i8, ptr %entry0, i32 %9
  %cmp6249 = icmp ugt ptr %add.ptr248, %entry0
  br i1 %cmp6249, label %for.body7.lr.ph, label %for.cond4.preheader.for.end32_crit_edge

for.cond4.preheader.for.end32_crit_edge:          ; preds = %for.cond4.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end32

for.body7.lr.ph:                                  ; preds = %for.cond4.preheader
  %hook_entry10 = getelementptr inbounds %struct.ip6t_replace, ptr %repl, i32 0, i32 4
  %underflow11 = getelementptr inbounds %struct.ip6t_replace, ptr %repl, i32 0, i32 5
  %valid_hooks = getelementptr inbounds %struct.ip6t_replace, ptr %repl, i32 0, i32 1
  %sub.ptr.rhs.cast.i = ptrtoint ptr %entry0 to i32
  %stacksize = getelementptr inbounds %struct.xt_table_info, ptr %newinfo, i32 0, i32 5
  br label %for.body7

for.body7:                                        ; preds = %for.inc30.for.body7_crit_edge, %for.body7.lr.ph
  %i.1251 = phi i32 [ 0, %for.body7.lr.ph ], [ %inc22, %for.inc30.for.body7_crit_edge ]
  %iter.0250 = phi ptr [ %entry0, %for.body7.lr.ph ], [ %add.ptr31, %for.inc30.for.body7_crit_edge ]
  %10 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size, align 8
  %add.ptr9 = getelementptr i8, ptr %entry0, i32 %11
  %12 = ptrtoint ptr %valid_hooks to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %valid_hooks, align 8
  %14 = ptrtoint ptr %iter.0250 to i32
  %rem.i = and i32 %14, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp.not.i = icmp eq i32 %rem.i, 0
  %add.ptr.i = getelementptr i8, ptr %iter.0250, i32 168
  %cmp1.not.i = icmp ult ptr %add.ptr.i, %add.ptr9
  %or.cond.i = and i1 %cmp.not.i, %cmp1.not.i
  br i1 %or.cond.i, label %lor.lhs.false2.i, label %for.body7.out_free_crit_edge

for.body7.out_free_crit_edge:                     ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free

lor.lhs.false2.i:                                 ; preds = %for.body7
  %next_offset.i = getelementptr inbounds %struct.ip6t_entry, ptr %iter.0250, i32 0, i32 3
  %15 = ptrtoint ptr %next_offset.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %next_offset.i, align 2
  %conv.i = zext i16 %16 to i32
  %add.ptr3.i = getelementptr i8, ptr %iter.0250, i32 %conv.i
  %cmp4.i = icmp ugt ptr %add.ptr3.i, %add.ptr9
  call void @__sanitizer_cov_trace_const_cmp2(i16 200, i16 %16)
  %cmp8.i = icmp ult i16 %16, 200
  %or.cond73.i = select i1 %cmp4.i, i1 true, i1 %cmp8.i
  br i1 %or.cond73.i, label %lor.lhs.false2.i.out_free_crit_edge, label %if.end11.i

lor.lhs.false2.i.out_free_crit_edge:              ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free

if.end11.i:                                       ; preds = %lor.lhs.false2.i
  %flags.i.i = getelementptr inbounds %struct.ip6t_ip6, ptr %iter.0250, i32 0, i32 10
  %17 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %flags.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %18)
  %tobool.not.i.i = icmp ult i8 %18, 8
  br i1 %tobool.not.i.i, label %ip6_checkentry.exit.i, label %if.end11.i.out_free_crit_edge

if.end11.i.out_free_crit_edge:                    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free

ip6_checkentry.exit.i:                            ; preds = %if.end11.i
  %invflags.i.i = getelementptr inbounds %struct.ip6t_ip6, ptr %iter.0250, i32 0, i32 11
  %19 = ptrtoint ptr %invflags.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %invflags.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %20)
  %tobool3.not.i.i = icmp sgt i8 %20, -1
  br i1 %tobool3.not.i.i, label %if.end13.i, label %ip6_checkentry.exit.i.out_free_crit_edge

ip6_checkentry.exit.i.out_free_crit_edge:         ; preds = %ip6_checkentry.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free

if.end13.i:                                       ; preds = %ip6_checkentry.exit.i
  %target_offset.i = getelementptr inbounds %struct.ip6t_entry, ptr %iter.0250, i32 0, i32 2
  %21 = ptrtoint ptr %target_offset.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %target_offset.i, align 4
  %conv14.i = zext i16 %22 to i32
  %call17.i = tail call i32 @xt_check_entry_offsets(ptr noundef %iter.0250, ptr noundef %add.ptr.i, i32 noundef %conv14.i, i32 noundef %conv.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool.not.i, label %for.cond.preheader.i, label %if.end13.i.out_free_crit_edge

if.end13.i.out_free_crit_edge:                    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free

for.cond.preheader.i:                             ; preds = %if.end13.i
  %sub.ptr.sub.i = sub i32 %14, %sub.ptr.rhs.cast.i
  %name.i.i = getelementptr i8, ptr %iter.0250, i32 170
  %verdict5.i.i = getelementptr i8, ptr %iter.0250, i32 200
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i
  %h.078.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %shl.i = shl nuw nsw i32 1, %h.078.i
  %and.i = and i32 %shl.i, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool22.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool22.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end24.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.end24.i:                                       ; preds = %for.body.i
  %arrayidx.i = getelementptr i32, ptr %hook_entry10, i32 %h.078.i
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %24)
  %cmp25.i = icmp eq i32 %sub.ptr.sub.i, %24
  br i1 %cmp25.i, label %if.then27.i, label %if.end24.i.if.end30.i_crit_edge

if.end24.i.if.end30.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30.i

if.then27.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx29.i = getelementptr %struct.xt_table_info, ptr %newinfo, i32 0, i32 3, i32 %h.078.i
  %25 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %sub.ptr.sub.i, ptr %arrayidx29.i, align 4
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then27.i, %if.end24.i.if.end30.i_crit_edge
  %arrayidx34.i = getelementptr i32, ptr %underflow11, i32 %h.078.i
  %26 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx34.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %27)
  %cmp35.i = icmp eq i32 %sub.ptr.sub.i, %27
  br i1 %cmp35.i, label %if.then37.i, label %if.end30.i.for.inc.i_crit_edge

if.end30.i.for.inc.i_crit_edge:                   ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.then37.i:                                      ; preds = %if.end30.i
  %28 = ptrtoint ptr %target_offset.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %target_offset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 168, i16 %29)
  %cmp.i.i.i = icmp eq i16 %29, 168
  br i1 %cmp.i.i.i, label %unconditional.exit.i.i, label %if.then37.i.out_free_crit_edge

if.then37.i.out_free_crit_edge:                   ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free

unconditional.exit.i.i:                           ; preds = %if.then37.i
  %bcmp.i.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(136) %iter.0250, ptr noundef nonnull dereferenceable(136) @unconditional.uncond, i32 136) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i.i)
  %cmp2.i.i.i = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %cmp2.i.i.i, label %if.end.i74.i, label %unconditional.exit.i.i.out_free_crit_edge

unconditional.exit.i.i.out_free_crit_edge:        ; preds = %unconditional.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free

if.end.i74.i:                                     ; preds = %unconditional.exit.i.i
  %30 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %strcmpload.i.i = load i8, ptr %name.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %strcmpload.i.i)
  %cmp.not.i.i = icmp eq i8 %strcmpload.i.i, 0
  br i1 %cmp.not.i.i, label %check_underflow.exit.i, label %if.end.i74.i.out_free_crit_edge

if.end.i74.i.out_free_crit_edge:                  ; preds = %if.end.i74.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free

check_underflow.exit.i:                           ; preds = %if.end.i74.i
  %31 = ptrtoint ptr %verdict5.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %verdict5.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %32)
  %33 = icmp ugt i32 %32, -3
  br i1 %33, label %if.end40.i, label %check_underflow.exit.i.out_free_crit_edge

check_underflow.exit.i.out_free_crit_edge:        ; preds = %check_underflow.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free

if.end40.i:                                       ; preds = %check_underflow.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx42.i = getelementptr %struct.xt_table_info, ptr %newinfo, i32 0, i32 4, i32 %h.078.i
  %34 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %sub.ptr.sub.i, ptr %arrayidx42.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end40.i, %if.end30.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %h.078.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 5
  br i1 %exitcond.not.i, label %if.end16, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

if.end16:                                         ; preds = %for.inc.i
  %counters.i = getelementptr inbounds %struct.ip6t_entry, ptr %iter.0250, i32 0, i32 5
  %comefrom.i = getelementptr inbounds %struct.ip6t_entry, ptr %iter.0250, i32 0, i32 4
  %35 = ptrtoint ptr %comefrom.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %comefrom.i, align 8
  %36 = call ptr @memset(ptr %counters.i, i32 0, i32 16)
  %37 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num_entries, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1251, i32 %38)
  %cmp18 = icmp ult i32 %i.1251, %38
  br i1 %cmp18, label %if.then19, label %if.end16.if.end21_crit_edge

if.end16.if.end21_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx20 = getelementptr i32, ptr %call, i32 %i.1251
  %39 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %sub.ptr.sub.i, ptr %arrayidx20, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end16.if.end21_crit_edge
  %inc22 = add i32 %i.1251, 1
  %40 = ptrtoint ptr %target_offset.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %target_offset.i, align 4
  %conv.i156 = zext i16 %41 to i32
  %add.ptr.i157 = getelementptr i8, ptr %iter.0250, i32 %conv.i156
  %name = getelementptr inbounds %struct.anon.194, ptr %add.ptr.i157, i32 0, i32 1
  %call25 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(6) @.str.15) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp eq i32 %call25, 0
  br i1 %cmp26, label %if.then27, label %if.end21.for.inc30_crit_edge

if.end21.for.inc30_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc30

if.then27:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  %42 = ptrtoint ptr %stacksize to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %stacksize, align 4
  %inc28 = add i32 %43, 1
  store i32 %inc28, ptr %stacksize, align 4
  br label %for.inc30

for.inc30:                                        ; preds = %if.then27, %if.end21.for.inc30_crit_edge
  %44 = ptrtoint ptr %next_offset.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %next_offset.i, align 2
  %conv = zext i16 %45 to i32
  %add.ptr31 = getelementptr i8, ptr %iter.0250, i32 %conv
  %46 = ptrtoint ptr %newinfo to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %newinfo, align 8
  %add.ptr = getelementptr i8, ptr %entry0, i32 %47
  %cmp6 = icmp ult ptr %add.ptr31, %add.ptr
  br i1 %cmp6, label %for.inc30.for.body7_crit_edge, label %for.inc30.for.end32_crit_edge

for.inc30.for.end32_crit_edge:                    ; preds = %for.inc30
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end32

for.inc30.for.body7_crit_edge:                    ; preds = %for.inc30
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body7

for.end32:                                        ; preds = %for.inc30.for.end32_crit_edge, %for.cond4.preheader.for.end32_crit_edge
  %i.1.lcssa = phi i32 [ 0, %for.cond4.preheader.for.end32_crit_edge ], [ %inc22, %for.inc30.for.end32_crit_edge ]
  %48 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %num_entries, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1.lcssa, i32 %49)
  %cmp34.not = icmp eq i32 %i.1.lcssa, %49
  br i1 %cmp34.not, label %if.end37, label %for.end32.out_free_crit_edge

for.end32.out_free_crit_edge:                     ; preds = %for.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free

if.end37:                                         ; preds = %for.end32
  %valid_hooks38 = getelementptr inbounds %struct.ip6t_replace, ptr %repl, i32 0, i32 1
  %50 = ptrtoint ptr %valid_hooks38 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %valid_hooks38, align 8
  %call39 = tail call i32 @xt_check_table_hooks(ptr noundef %newinfo, i32 noundef %51) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.end37.out_free_crit_edge

if.end37.out_free_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free

if.end42:                                         ; preds = %if.end37
  %52 = ptrtoint ptr %valid_hooks38 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %valid_hooks38, align 8
  br label %for.body.i161

for.body.i161:                                    ; preds = %for.inc.i171.for.body.i161_crit_edge, %if.end42
  %hook.0187.i = phi i32 [ 0, %if.end42 ], [ %inc.i169, %for.inc.i171.for.body.i161_crit_edge ]
  %shl.i158 = shl nuw nsw i32 1, %hook.0187.i
  %and.i159 = and i32 %shl.i158, %53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i159)
  %tobool.not.i160 = icmp eq i32 %and.i159, 0
  br i1 %tobool.not.i160, label %for.body.i161.for.inc.i171_crit_edge, label %if.end.i

for.body.i161.for.inc.i171_crit_edge:             ; preds = %for.body.i161
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i171

if.end.i:                                         ; preds = %for.body.i161
  %arrayidx.i162 = getelementptr %struct.xt_table_info, ptr %newinfo, i32 0, i32 3, i32 %hook.0187.i
  %54 = ptrtoint ptr %arrayidx.i162 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx.i162, align 4
  %add.ptr.i163 = getelementptr i8, ptr %entry0, i32 %55
  %conv.i164 = zext i32 %55 to i64
  %counters.i165 = getelementptr inbounds %struct.ip6t_entry, ptr %add.ptr.i163, i32 0, i32 5
  %56 = ptrtoint ptr %counters.i165 to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %conv.i164, ptr %counters.i165, align 8
  %comefrom170.i = getelementptr inbounds %struct.ip6t_entry, ptr %add.ptr.i163, i32 0, i32 4
  %57 = ptrtoint ptr %comefrom170.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %comefrom170.i, align 8
  %and5172.i = and i32 %58, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5172.i)
  %tobool6.not173.i = icmp eq i32 %and5172.i, 0
  br i1 %tobool6.not173.i, label %if.end8.lr.ph.i, label %if.end.i.out_free_crit_edge

if.end.i.out_free_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free

if.end8.lr.ph.i:                                  ; preds = %if.end.i
  %target_offset.i.i167.i = getelementptr inbounds %struct.ip6t_entry, ptr %add.ptr.i163, i32 0, i32 2
  %59 = ptrtoint ptr %target_offset.i.i167.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %target_offset.i.i167.i, align 4
  %conv.i.i168.i = zext i16 %60 to i32
  %add.ptr.i.i169.i = getelementptr i8, ptr %add.ptr.i163, i32 %conv.i.i168.i
  br label %if.end8.i

if.end8.i:                                        ; preds = %cleanup84.i.if.end8.i_crit_edge, %if.end8.lr.ph.i
  %61 = phi i32 [ %58, %if.end8.lr.ph.i ], [ %88, %cleanup84.i.if.end8.i_crit_edge ]
  %comefrom184.i = phi ptr [ %comefrom170.i, %if.end8.lr.ph.i ], [ %comefrom.i168, %cleanup84.i.if.end8.i_crit_edge ]
  %add.ptr.i.i181.i = phi ptr [ %add.ptr.i.i169.i, %if.end8.lr.ph.i ], [ %add.ptr.i.i.i, %cleanup84.i.if.end8.i_crit_edge ]
  %62 = phi i16 [ %60, %if.end8.lr.ph.i ], [ %86, %cleanup84.i.if.end8.i_crit_edge ]
  %e.0177.i = phi ptr [ %add.ptr.i163, %if.end8.lr.ph.i ], [ %add.ptr39.sink.i, %cleanup84.i.if.end8.i_crit_edge ]
  %pos.0174.i = phi i32 [ %55, %if.end8.lr.ph.i ], [ %pos.5.i, %cleanup84.i.if.end8.i_crit_edge ]
  %and3185.i = and i32 %61, %shl.i158
  %or.i = or i32 %shl.i158, %61
  %or11.i = or i32 %or.i, 32
  %63 = ptrtoint ptr %comefrom184.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %or11.i, ptr %comefrom184.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 168, i16 %62)
  %cmp.i.i = icmp eq i16 %62, 168
  br i1 %cmp.i.i, label %unconditional.exit.i, label %if.end8.i.lor.lhs.false.i_crit_edge

if.end8.i.lor.lhs.false.i_crit_edge:              ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false.i

unconditional.exit.i:                             ; preds = %if.end8.i
  %bcmp.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(136) %e.0177.i, ptr noundef nonnull dereferenceable(136) @unconditional.uncond, i32 136) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %cmp2.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %cmp2.i.i, label %land.lhs.true.i, label %unconditional.exit.i.lor.lhs.false.i_crit_edge

unconditional.exit.i.lor.lhs.false.i_crit_edge:   ; preds = %unconditional.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false.i

land.lhs.true.i:                                  ; preds = %unconditional.exit.i
  %name.i = getelementptr inbounds %struct.anon.194, ptr %add.ptr.i.i181.i, i32 0, i32 1
  %64 = ptrtoint ptr %name.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %strcmpload142.i = load i8, ptr %name.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %strcmpload142.i)
  %cmp15.i = icmp eq i8 %strcmpload142.i, 0
  br i1 %cmp15.i, label %land.lhs.true17.i, label %land.lhs.true.i.lor.lhs.false.i_crit_edge

land.lhs.true.i.lor.lhs.false.i_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false.i

land.lhs.true17.i:                                ; preds = %land.lhs.true.i
  %verdict.i = getelementptr inbounds %struct.xt_standard_target, ptr %add.ptr.i.i181.i, i32 0, i32 1
  %65 = ptrtoint ptr %verdict.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %verdict.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %66)
  %cmp18.i = icmp sgt i32 %66, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3185.i)
  %tobool20.not.i = icmp eq i32 %and3185.i, 0
  %or.cond.i166 = select i1 %cmp18.i, i1 %tobool20.not.i, i1 false
  br i1 %or.cond.i166, label %land.lhs.true17.i.if.else.i_crit_edge, label %land.lhs.true17.i.do.body.i.preheader_crit_edge

land.lhs.true17.i.do.body.i.preheader_crit_edge:  ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.preheader

land.lhs.true17.i.if.else.i_crit_edge:            ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i.lor.lhs.false.i_crit_edge, %unconditional.exit.i.lor.lhs.false.i_crit_edge, %if.end8.i.lor.lhs.false.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3185.i)
  %tobool20.not.old.i = icmp eq i32 %and3185.i, 0
  br i1 %tobool20.not.old.i, label %lor.lhs.false.i.if.else.i_crit_edge, label %lor.lhs.false.i.do.body.i.preheader_crit_edge

lor.lhs.false.i.do.body.i.preheader_crit_edge:    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.preheader

lor.lhs.false.i.if.else.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i

do.body.i.preheader:                              ; preds = %lor.lhs.false.i.do.body.i.preheader_crit_edge, %land.lhs.true17.i.do.body.i.preheader_crit_edge
  br label %do.body.i

do.body.i:                                        ; preds = %if.end31.i.do.body.i_crit_edge, %do.body.i.preheader
  %pos.1.i = phi i32 [ %conv25.i, %if.end31.i.do.body.i_crit_edge ], [ %pos.0174.i, %do.body.i.preheader ]
  %e.1.i = phi ptr [ %add.ptr32.i, %if.end31.i.do.body.i_crit_edge ], [ %e.0177.i, %do.body.i.preheader ]
  %comefrom22.i = getelementptr inbounds %struct.ip6t_entry, ptr %e.1.i, i32 0, i32 4
  %67 = ptrtoint ptr %comefrom22.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %comefrom22.i, align 8
  %xor.i = xor i32 %68, 32
  store i32 %xor.i, ptr %comefrom22.i, align 8
  %counters23.i = getelementptr inbounds %struct.ip6t_entry, ptr %e.1.i, i32 0, i32 5
  %69 = ptrtoint ptr %counters23.i to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %counters23.i, align 8
  %conv25.i = trunc i64 %70 to i32
  store i64 0, ptr %counters23.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %pos.1.i, i32 %conv25.i)
  %cmp28.i = icmp eq i32 %pos.1.i, %conv25.i
  br i1 %cmp28.i, label %do.body.i.for.inc.i171_crit_edge, label %if.end31.i

do.body.i.for.inc.i171_crit_edge:                 ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i171

if.end31.i:                                       ; preds = %do.body.i
  %add.ptr32.i = getelementptr i8, ptr %entry0, i32 %conv25.i
  %next_offset.i167 = getelementptr inbounds %struct.ip6t_entry, ptr %add.ptr32.i, i32 0, i32 3
  %71 = ptrtoint ptr %next_offset.i167 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %next_offset.i167, align 2
  %conv33.i = zext i16 %72 to i32
  %add.i = add i32 %conv33.i, %conv25.i
  %cmp34.i = icmp eq i32 %pos.1.i, %add.i
  br i1 %cmp34.i, label %if.end31.i.do.body.i_crit_edge, label %do.end.i

if.end31.i.do.body.i_crit_edge:                   ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i

do.end.i:                                         ; preds = %if.end31.i
  %73 = ptrtoint ptr %newinfo to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %newinfo, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %74)
  %cmp42.not.i = icmp ult i32 %add.i, %74
  br i1 %cmp42.not.i, label %cleanup.i, label %do.end.i.out_free_crit_edge

do.end.i.out_free_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free

cleanup.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv33.i.le = zext i16 %72 to i32
  %add.ptr39.i = getelementptr i8, ptr %add.ptr32.i, i32 %conv33.i.le
  %conv46.i = and i64 %70, 4294967295
  br label %cleanup84.i

if.else.i:                                        ; preds = %lor.lhs.false.i.if.else.i_crit_edge, %land.lhs.true17.i.if.else.i_crit_edge
  %verdict51.i = getelementptr inbounds %struct.xt_standard_target, ptr %add.ptr.i.i181.i, i32 0, i32 1
  %75 = ptrtoint ptr %verdict51.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %verdict51.i, align 4
  %name54.i = getelementptr inbounds %struct.anon.194, ptr %add.ptr.i.i181.i, i32 0, i32 1
  %77 = ptrtoint ptr %name54.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %strcmpload.i = load i8, ptr %name54.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %strcmpload.i)
  %cmp57.i = icmp eq i8 %strcmpload.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %76)
  %cmp60.i = icmp sgt i32 %76, -1
  %or.cond143.i = select i1 %cmp57.i, i1 %cmp60.i, i1 false
  br i1 %or.cond143.i, label %if.then62.i, label %if.else66.i

if.then62.i:                                      ; preds = %if.else.i
  %78 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %number, align 4
  %call63.i = tail call zeroext i1 @xt_find_jump_offset(ptr noundef nonnull %call, i32 noundef %76, i32 noundef %79) #14
  br i1 %call63.i, label %if.then62.i.cleanup80.i_crit_edge, label %if.then62.i.out_free_crit_edge

if.then62.i.out_free_crit_edge:                   ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free

if.then62.i.cleanup80.i_crit_edge:                ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup80.i

if.else66.i:                                      ; preds = %if.else.i
  %next_offset67.i = getelementptr inbounds %struct.ip6t_entry, ptr %e.0177.i, i32 0, i32 3
  %80 = ptrtoint ptr %next_offset67.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %next_offset67.i, align 2
  %conv68.i = zext i16 %81 to i32
  %add69.i = add i32 %pos.0174.i, %conv68.i
  %82 = ptrtoint ptr %newinfo to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %newinfo, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add69.i, i32 %83)
  %cmp71.not.i = icmp ult i32 %add69.i, %83
  br i1 %cmp71.not.i, label %if.else66.i.cleanup80.i_crit_edge, label %if.else66.i.out_free_crit_edge

if.else66.i.out_free_crit_edge:                   ; preds = %if.else66.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free

if.else66.i.cleanup80.i_crit_edge:                ; preds = %if.else66.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup80.i

cleanup80.i:                                      ; preds = %if.else66.i.cleanup80.i_crit_edge, %if.then62.i.cleanup80.i_crit_edge
  %newpos.0.i = phi i32 [ %76, %if.then62.i.cleanup80.i_crit_edge ], [ %add69.i, %if.else66.i.cleanup80.i_crit_edge ]
  %add.ptr76.i = getelementptr i8, ptr %entry0, i32 %newpos.0.i
  %conv77.i = zext i32 %pos.0174.i to i64
  br label %cleanup84.i

cleanup84.i:                                      ; preds = %cleanup80.i, %cleanup.i
  %add.ptr39.sink.i = phi ptr [ %add.ptr39.i, %cleanup.i ], [ %add.ptr76.i, %cleanup80.i ]
  %conv46.sink.i = phi i64 [ %conv46.i, %cleanup.i ], [ %conv77.i, %cleanup80.i ]
  %pos.5.i = phi i32 [ %add.i, %cleanup.i ], [ %newpos.0.i, %cleanup80.i ]
  %counters47.i = getelementptr inbounds %struct.ip6t_entry, ptr %add.ptr39.sink.i, i32 0, i32 5
  %84 = ptrtoint ptr %counters47.i to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 %conv46.sink.i, ptr %counters47.i, align 8
  %target_offset.i.i.i = getelementptr inbounds %struct.ip6t_entry, ptr %add.ptr39.sink.i, i32 0, i32 2
  %85 = ptrtoint ptr %target_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %target_offset.i.i.i, align 4
  %conv.i.i.i = zext i16 %86 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr39.sink.i, i32 %conv.i.i.i
  %comefrom.i168 = getelementptr inbounds %struct.ip6t_entry, ptr %add.ptr39.sink.i, i32 0, i32 4
  %87 = ptrtoint ptr %comefrom.i168 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %comefrom.i168, align 8
  %and5.i = and i32 %88, 32
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %cleanup84.i.if.end8.i_crit_edge, label %cleanup84.i.out_free_crit_edge

cleanup84.i.out_free_crit_edge:                   ; preds = %cleanup84.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free

cleanup84.i.if.end8.i_crit_edge:                  ; preds = %cleanup84.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8.i

for.inc.i171:                                     ; preds = %do.body.i.for.inc.i171_crit_edge, %for.body.i161.for.inc.i171_crit_edge
  %inc.i169 = add nuw nsw i32 %hook.0187.i, 1
  %exitcond.not.i170 = icmp eq i32 %inc.i169, 5
  br i1 %exitcond.not.i170, label %if.end47, label %for.inc.i171.for.body.i161_crit_edge

for.inc.i171.for.body.i161_crit_edge:             ; preds = %for.inc.i171
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i161

if.end47:                                         ; preds = %for.inc.i171
  tail call void @kvfree(ptr noundef nonnull %call) #14
  %89 = ptrtoint ptr %newinfo to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %newinfo, align 8
  %add.ptr50253 = getelementptr i8, ptr %entry0, i32 %90
  %cmp51254 = icmp ugt ptr %add.ptr50253, %entry0
  br i1 %cmp51254, label %for.body53.lr.ph, label %if.end47.cleanup_crit_edge

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body53.lr.ph:                                 ; preds = %if.end47
  %91 = getelementptr inbounds i8, ptr %mtpar.i, i32 12
  %table.i = getelementptr inbounds %struct.xt_mtchk_param, ptr %mtpar.i, i32 0, i32 1
  %entryinfo.i = getelementptr inbounds %struct.xt_mtchk_param, ptr %mtpar.i, i32 0, i32 2
  %hook_mask.i = getelementptr inbounds %struct.xt_mtchk_param, ptr %mtpar.i, i32 0, i32 5
  %family.i = getelementptr inbounds %struct.xt_mtchk_param, ptr %mtpar.i, i32 0, i32 6
  %matchinfo.i.i.i = getelementptr inbounds %struct.xt_mtchk_param, ptr %mtpar.i, i32 0, i32 4
  %92 = getelementptr inbounds i8, ptr %par.i.i, i32 24
  %table.i.i = getelementptr inbounds %struct.xt_tgchk_param, ptr %par.i.i, i32 0, i32 1
  %entryinfo.i.i = getelementptr inbounds %struct.xt_tgchk_param, ptr %par.i.i, i32 0, i32 2
  %target.i.i = getelementptr inbounds %struct.xt_tgchk_param, ptr %par.i.i, i32 0, i32 3
  %targinfo.i.i = getelementptr inbounds %struct.xt_tgchk_param, ptr %par.i.i, i32 0, i32 4
  %hook_mask.i.i = getelementptr inbounds %struct.xt_tgchk_param, ptr %par.i.i, i32 0, i32 5
  br label %for.body53

for.body53:                                       ; preds = %find_check_entry.exit.thread.for.body53_crit_edge, %for.body53.lr.ph
  %i.2256 = phi i32 [ 0, %for.body53.lr.ph ], [ %inc62, %find_check_entry.exit.thread.for.body53_crit_edge ]
  %iter.1255 = phi ptr [ %entry0, %for.body53.lr.ph ], [ %add.ptr66, %find_check_entry.exit.thread.for.body53_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %mtpar.i) #14
  %counters.i172 = getelementptr inbounds %struct.ip6t_entry, ptr %iter.1255, i32 0, i32 5
  %call.i = call zeroext i1 @xt_percpu_counter_alloc(ptr noundef nonnull %alloc_state, ptr noundef %counters.i172) #14
  br i1 %call.i, label %if.end.i176, label %find_check_entry.exit.thread201

find_check_entry.exit.thread201:                  ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %mtpar.i) #14
  br label %for.end67

if.end.i176:                                      ; preds = %for.body53
  %93 = call ptr @memset(ptr %91, i32 0, i32 16)
  %94 = ptrtoint ptr %mtpar.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %net, ptr %mtpar.i, align 4
  %95 = ptrtoint ptr %table.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %repl, ptr %table.i, align 4
  %96 = ptrtoint ptr %entryinfo.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %iter.1255, ptr %entryinfo.i, align 4
  %comefrom.i173 = getelementptr inbounds %struct.ip6t_entry, ptr %iter.1255, i32 0, i32 4
  %97 = ptrtoint ptr %comefrom.i173 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %comefrom.i173, align 8
  %99 = ptrtoint ptr %hook_mask.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %hook_mask.i, align 4
  %100 = ptrtoint ptr %family.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 10, ptr %family.i, align 4
  %elems.i = getelementptr inbounds %struct.ip6t_entry, ptr %iter.1255, i32 0, i32 6
  %target_offset.i174 = getelementptr inbounds %struct.ip6t_entry, ptr %iter.1255, i32 0, i32 2
  %101 = ptrtoint ptr %target_offset.i174 to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %target_offset.i174, align 4
  %conv25.i175 = zext i16 %102 to i32
  %add.ptr26.i = getelementptr i8, ptr %iter.1255, i32 %conv25.i175
  %cmp27.i = icmp ult ptr %elems.i, %add.ptr26.i
  br i1 %cmp27.i, label %if.end.i176.for.body.i179_crit_edge, label %if.end.i176.for.end.i186_crit_edge

if.end.i176.for.end.i186_crit_edge:               ; preds = %if.end.i176
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i186

if.end.i176.for.body.i179_crit_edge:              ; preds = %if.end.i176
  br label %for.body.i179

for.body.i179:                                    ; preds = %if.end7.i.for.body.i179_crit_edge, %if.end.i176.for.body.i179_crit_edge
  %ematch.029.i = phi ptr [ %add.ptr9.i, %if.end7.i.for.body.i179_crit_edge ], [ %elems.i, %if.end.i176.for.body.i179_crit_edge ]
  %j.028.i = phi i32 [ %inc.i182, %if.end7.i.for.body.i179_crit_edge ], [ 0, %if.end.i176.for.body.i179_crit_edge ]
  %name.i.i177 = getelementptr inbounds %struct.anon.199, ptr %ematch.029.i, i32 0, i32 1
  %revision.i.i = getelementptr inbounds %struct.anon.199, ptr %ematch.029.i, i32 0, i32 2
  %103 = ptrtoint ptr %revision.i.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %revision.i.i, align 1
  %call.i.i = call ptr @xt_request_find_match(i8 noundef zeroext 10, ptr noundef %name.i.i177, i8 noundef zeroext %104) #14
  %cmp.i.i.i178 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i178, label %find_check_match.exit.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %for.body.i179
  %match5.i.i = getelementptr inbounds %struct.anon.200, ptr %ematch.029.i, i32 0, i32 1
  %105 = ptrtoint ptr %match5.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %call.i.i, ptr %match5.i.i, align 4
  %106 = ptrtoint ptr %entryinfo.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %entryinfo.i, align 4
  %108 = ptrtoint ptr %91 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %call.i.i, ptr %91, align 4
  %data.i.i.i = getelementptr inbounds %struct.xt_entry_match, ptr %ematch.029.i, i32 0, i32 1
  %109 = ptrtoint ptr %matchinfo.i.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %data.i.i.i, ptr %matchinfo.i.i.i, align 4
  %110 = ptrtoint ptr %ematch.029.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %ematch.029.i, align 4
  %conv.i.i.i180 = zext i16 %111 to i32
  %sub.i.i.i = add nsw i32 %conv.i.i.i180, -32
  %proto.i.i.i = getelementptr inbounds %struct.ip6t_ip6, ptr %107, i32 0, i32 8
  %112 = ptrtoint ptr %proto.i.i.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %proto.i.i.i, align 4
  %invflags.i.i.i = getelementptr inbounds %struct.ip6t_ip6, ptr %107, i32 0, i32 11
  %114 = ptrtoint ptr %invflags.i.i.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %invflags.i.i.i, align 4
  %116 = and i8 %115, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool.i.i.i = icmp ne i8 %116, 0
  %call.i.i.i = call i32 @xt_check_match(ptr noundef nonnull %mtpar.i, i32 noundef %sub.i.i.i, i16 noundef zeroext %113, i1 noundef zeroext %tobool.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i181 = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i181, label %if.end7.i, label %find_check_match.exit.thread11.i

find_check_match.exit.thread11.i:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %match5.i.i.le = getelementptr inbounds %struct.anon.200, ptr %ematch.029.i, i32 0, i32 1
  %117 = ptrtoint ptr %match5.i.i.le to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %match5.i.i.le, align 4
  %me.i.i = getelementptr inbounds %struct.xt_match, ptr %118, i32 0, i32 6
  %119 = ptrtoint ptr %me.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %me.i.i, align 4
  call void @module_put(ptr noundef %120) #14
  br label %cleanup_matches.i

find_check_match.exit.i:                          ; preds = %for.body.i179
  call void @__sanitizer_cov_trace_pc() #16
  %121 = ptrtoint ptr %call.i.i to i32
  br label %cleanup_matches.i

if.end7.i:                                        ; preds = %if.end.i.i
  %inc.i182 = add i32 %j.028.i, 1
  %122 = ptrtoint ptr %ematch.029.i to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %ematch.029.i, align 4
  %conv8.i = zext i16 %123 to i32
  %add.ptr9.i = getelementptr i8, ptr %ematch.029.i, i32 %conv8.i
  %124 = ptrtoint ptr %target_offset.i174 to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %target_offset.i174, align 4
  %conv.i183 = zext i16 %125 to i32
  %add.ptr.i184 = getelementptr i8, ptr %iter.1255, i32 %conv.i183
  %cmp.i = icmp ult ptr %add.ptr9.i, %add.ptr.i184
  br i1 %cmp.i, label %if.end7.i.for.body.i179_crit_edge, label %if.end7.i.for.end.i186_crit_edge

if.end7.i.for.end.i186_crit_edge:                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i186

if.end7.i.for.body.i179_crit_edge:                ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i179

for.end.i186:                                     ; preds = %if.end7.i.for.end.i186_crit_edge, %if.end.i176.for.end.i186_crit_edge
  %j.0.lcssa.i = phi i32 [ 0, %if.end.i176.for.end.i186_crit_edge ], [ %inc.i182, %if.end7.i.for.end.i186_crit_edge ]
  %add.ptr.lcssa.i = phi ptr [ %add.ptr26.i, %if.end.i176.for.end.i186_crit_edge ], [ %add.ptr.i184, %if.end7.i.for.end.i186_crit_edge ]
  %name12.i = getelementptr inbounds %struct.anon.194, ptr %add.ptr.lcssa.i, i32 0, i32 1
  %revision.i = getelementptr inbounds %struct.anon.194, ptr %add.ptr.lcssa.i, i32 0, i32 2
  %126 = ptrtoint ptr %revision.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %revision.i, align 1
  %call15.i = call ptr @xt_request_find_target(i8 noundef zeroext 10, ptr noundef %name12.i, i8 noundef zeroext %127) #14
  %cmp.i.i185 = icmp ugt ptr %call15.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i185, label %if.then17.i, label %if.end19.i

if.then17.i:                                      ; preds = %for.end.i186
  call void @__sanitizer_cov_trace_pc() #16
  %128 = ptrtoint ptr %call15.i to i32
  br label %cleanup_matches.i

if.end19.i:                                       ; preds = %for.end.i186
  %target21.i = getelementptr inbounds %struct.anon.195, ptr %add.ptr.lcssa.i, i32 0, i32 1
  %129 = ptrtoint ptr %target21.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %call15.i, ptr %target21.i, align 4
  %130 = ptrtoint ptr %target_offset.i174 to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %target_offset.i174, align 4
  %conv.i.i1.i = zext i16 %131 to i32
  %add.ptr.i.i.i187 = getelementptr i8, ptr %iter.1255, i32 %conv.i.i1.i
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %par.i.i) #14
  %132 = ptrtoint ptr %92 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 167837695, ptr %92, align 4
  %133 = ptrtoint ptr %par.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %net, ptr %par.i.i, align 4
  %134 = ptrtoint ptr %table.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %repl, ptr %table.i.i, align 4
  %135 = ptrtoint ptr %entryinfo.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %iter.1255, ptr %entryinfo.i.i, align 4
  %target2.i.i = getelementptr inbounds %struct.anon.195, ptr %add.ptr.i.i.i187, i32 0, i32 1
  %136 = ptrtoint ptr %target2.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %target2.i.i, align 4
  %138 = ptrtoint ptr %target.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %137, ptr %target.i.i, align 4
  %data.i.i = getelementptr inbounds %struct.xt_entry_target, ptr %add.ptr.i.i.i187, i32 0, i32 1
  %139 = ptrtoint ptr %targinfo.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %data.i.i, ptr %targinfo.i.i, align 4
  %140 = ptrtoint ptr %comefrom.i173 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %comefrom.i173, align 8
  %142 = ptrtoint ptr %hook_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %141, ptr %hook_mask.i.i, align 4
  %143 = ptrtoint ptr %add.ptr.i.i.i187 to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %add.ptr.i.i.i187, align 4
  %conv.i2.i = zext i16 %144 to i32
  %sub.i.i = add nsw i32 %conv.i2.i, -32
  %proto.i.i = getelementptr inbounds %struct.ip6t_ip6, ptr %iter.1255, i32 0, i32 8
  %145 = ptrtoint ptr %proto.i.i to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %proto.i.i, align 8
  %invflags.i.i188 = getelementptr inbounds %struct.ip6t_ip6, ptr %iter.1255, i32 0, i32 11
  %147 = ptrtoint ptr %invflags.i.i188 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %invflags.i.i188, align 4
  %149 = and i8 %148, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %149)
  %tobool.i.i = icmp ne i8 %149, 0
  %call6.i.i = call i32 @xt_check_target(ptr noundef nonnull %par.i.i, i32 noundef %sub.i.i, i16 noundef zeroext %146, i1 noundef zeroext %tobool.i.i) #14
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %par.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool.not.i189 = icmp eq i32 %call6.i.i, 0
  br i1 %tobool.not.i189, label %find_check_entry.exit.thread, label %err.i

find_check_entry.exit.thread:                     ; preds = %if.end19.i
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %mtpar.i) #14
  %inc62 = add i32 %i.2256, 1
  %next_offset64 = getelementptr inbounds %struct.ip6t_entry, ptr %iter.1255, i32 0, i32 3
  %150 = ptrtoint ptr %next_offset64 to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %next_offset64, align 2
  %conv65 = zext i16 %151 to i32
  %add.ptr66 = getelementptr i8, ptr %iter.1255, i32 %conv65
  %152 = ptrtoint ptr %newinfo to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %newinfo, align 8
  %add.ptr50 = getelementptr i8, ptr %entry0, i32 %153
  %cmp51 = icmp ult ptr %add.ptr66, %add.ptr50
  br i1 %cmp51, label %find_check_entry.exit.thread.for.body53_crit_edge, label %find_check_entry.exit.thread.cleanup_crit_edge

find_check_entry.exit.thread.cleanup_crit_edge:   ; preds = %find_check_entry.exit.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

find_check_entry.exit.thread.for.body53_crit_edge: ; preds = %find_check_entry.exit.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body53

err.i:                                            ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #16
  %target21.i.le = getelementptr inbounds %struct.anon.195, ptr %add.ptr.lcssa.i, i32 0, i32 1
  %154 = ptrtoint ptr %target21.i.le to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %target21.i.le, align 4
  %me.i = getelementptr inbounds %struct.xt_target, ptr %155, i32 0, i32 6
  %156 = ptrtoint ptr %me.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %me.i, align 4
  call void @module_put(ptr noundef %157) #14
  br label %cleanup_matches.i

cleanup_matches.i:                                ; preds = %err.i, %if.then17.i, %find_check_match.exit.i, %find_check_match.exit.thread11.i
  %j.021.i = phi i32 [ %j.028.i, %find_check_match.exit.i ], [ %j.0.lcssa.i, %if.then17.i ], [ %j.0.lcssa.i, %err.i ], [ %j.028.i, %find_check_match.exit.thread11.i ]
  %ret.0.i = phi i32 [ %121, %find_check_match.exit.i ], [ %128, %if.then17.i ], [ %call6.i.i, %err.i ], [ %call.i.i.i, %find_check_match.exit.thread11.i ]
  %158 = ptrtoint ptr %target_offset.i174 to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %target_offset.i174, align 4
  %conv3131.i = zext i16 %159 to i32
  %add.ptr3232.i = getelementptr i8, ptr %iter.1255, i32 %conv3131.i
  %cmp3333.i = icmp uge ptr %elems.i, %add.ptr3232.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %j.021.i)
  %cmp3634.i = icmp eq i32 %j.021.i, 0
  %or.cond35.i = select i1 %cmp3333.i, i1 true, i1 %cmp3634.i
  br i1 %or.cond35.i, label %cleanup_matches.i.find_check_entry.exit_crit_edge, label %if.end39.lr.ph.i

cleanup_matches.i.find_check_entry.exit_crit_edge: ; preds = %cleanup_matches.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %find_check_entry.exit

if.end39.lr.ph.i:                                 ; preds = %cleanup_matches.i
  %160 = getelementptr inbounds i8, ptr %par.i3.i, i32 12
  %match2.i.i = getelementptr inbounds %struct.xt_mtdtor_param, ptr %par.i3.i, i32 0, i32 1
  %matchinfo.i.i = getelementptr inbounds %struct.xt_mtdtor_param, ptr %par.i3.i, i32 0, i32 2
  br label %if.end39.i

if.end39.i:                                       ; preds = %cleanup_match.exit.i.if.end39.i_crit_edge, %if.end39.lr.ph.i
  %ematch.137.i = phi ptr [ %elems.i, %if.end39.lr.ph.i ], [ %add.ptr43.i, %cleanup_match.exit.i.if.end39.i_crit_edge ]
  %j.136.i = phi i32 [ %j.021.i, %if.end39.lr.ph.i ], [ %dec.i, %cleanup_match.exit.i.if.end39.i_crit_edge ]
  %dec.i = add i32 %j.136.i, -1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %par.i3.i) #14
  %161 = ptrtoint ptr %160 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 184549375, ptr %160, align 4
  %162 = ptrtoint ptr %par.i3.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %net, ptr %par.i3.i, align 4
  %match.i.i = getelementptr inbounds %struct.anon.200, ptr %ematch.137.i, i32 0, i32 1
  %163 = ptrtoint ptr %match.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %match.i.i, align 4
  %165 = ptrtoint ptr %match2.i.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr %164, ptr %match2.i.i, align 4
  %data.i4.i = getelementptr inbounds %struct.xt_entry_match, ptr %ematch.137.i, i32 0, i32 1
  %166 = ptrtoint ptr %matchinfo.i.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %data.i4.i, ptr %matchinfo.i.i, align 4
  %destroy.i.i = getelementptr inbounds %struct.xt_match, ptr %164, i32 0, i32 5
  %167 = ptrtoint ptr %destroy.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %destroy.i.i, align 4
  %cmp.not.i.i190 = icmp eq ptr %168, null
  br i1 %cmp.not.i.i190, label %if.end39.i.cleanup_match.exit.i_crit_edge, label %if.then.i6.i

if.end39.i.cleanup_match.exit.i_crit_edge:        ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup_match.exit.i

if.then.i6.i:                                     ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #16
  call void %168(ptr noundef nonnull %par.i3.i) #14
  br label %cleanup_match.exit.i

cleanup_match.exit.i:                             ; preds = %if.then.i6.i, %if.end39.i.cleanup_match.exit.i_crit_edge
  %169 = ptrtoint ptr %match2.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %match2.i.i, align 4
  %me.i7.i = getelementptr inbounds %struct.xt_match, ptr %170, i32 0, i32 6
  %171 = ptrtoint ptr %me.i7.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %me.i7.i, align 4
  call void @module_put(ptr noundef %172) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %par.i3.i) #14
  %173 = ptrtoint ptr %ematch.137.i to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %ematch.137.i, align 4
  %conv42.i = zext i16 %174 to i32
  %add.ptr43.i = getelementptr i8, ptr %ematch.137.i, i32 %conv42.i
  %175 = ptrtoint ptr %target_offset.i174 to i32
  call void @__asan_load2_noabort(i32 %175)
  %176 = load i16, ptr %target_offset.i174, align 4
  %conv31.i = zext i16 %176 to i32
  %add.ptr32.i191 = getelementptr i8, ptr %iter.1255, i32 %conv31.i
  %cmp33.i = icmp uge ptr %add.ptr43.i, %add.ptr32.i191
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp36.i = icmp eq i32 %dec.i, 0
  %or.cond.i192 = select i1 %cmp33.i, i1 true, i1 %cmp36.i
  br i1 %or.cond.i192, label %cleanup_match.exit.i.find_check_entry.exit_crit_edge, label %cleanup_match.exit.i.if.end39.i_crit_edge

cleanup_match.exit.i.if.end39.i_crit_edge:        ; preds = %cleanup_match.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39.i

cleanup_match.exit.i.find_check_entry.exit_crit_edge: ; preds = %cleanup_match.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %find_check_entry.exit

find_check_entry.exit:                            ; preds = %cleanup_match.exit.i.find_check_entry.exit_crit_edge, %cleanup_matches.i.find_check_entry.exit_crit_edge
  call void @xt_percpu_counter_free(ptr noundef %counters.i172) #14
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %mtpar.i) #14
  br label %for.end67

for.end67:                                        ; preds = %find_check_entry.exit, %find_check_entry.exit.thread201
  %ret.1 = phi i32 [ %ret.0.i, %find_check_entry.exit ], [ -12, %find_check_entry.exit.thread201 ]
  %177 = ptrtoint ptr %newinfo to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %newinfo, align 8
  %add.ptr73257 = getelementptr i8, ptr %entry0, i32 %178
  %cmp74258 = icmp ule ptr %add.ptr73257, %entry0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.2256)
  %cmp77259 = icmp eq i32 %i.2256, 0
  %or.cond260 = select i1 %cmp74258, i1 true, i1 %cmp77259
  br i1 %or.cond260, label %for.end67.cleanup_crit_edge, label %for.end67.if.end80_crit_edge

for.end67.if.end80_crit_edge:                     ; preds = %for.end67
  br label %if.end80

for.end67.cleanup_crit_edge:                      ; preds = %for.end67
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end80:                                         ; preds = %if.end80.if.end80_crit_edge, %for.end67.if.end80_crit_edge
  %i.3262 = phi i32 [ %dec, %if.end80.if.end80_crit_edge ], [ %i.2256, %for.end67.if.end80_crit_edge ]
  %iter.2261 = phi ptr [ %add.ptr84, %if.end80.if.end80_crit_edge ], [ %entry0, %for.end67.if.end80_crit_edge ]
  %dec = add i32 %i.3262, -1
  call fastcc void @cleanup_entry(ptr noundef %iter.2261, ptr noundef %net)
  %next_offset82 = getelementptr inbounds %struct.ip6t_entry, ptr %iter.2261, i32 0, i32 3
  %179 = ptrtoint ptr %next_offset82 to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %next_offset82, align 2
  %conv83 = zext i16 %180 to i32
  %add.ptr84 = getelementptr i8, ptr %iter.2261, i32 %conv83
  %181 = ptrtoint ptr %newinfo to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %newinfo, align 8
  %add.ptr73 = getelementptr i8, ptr %entry0, i32 %182
  %cmp74 = icmp uge ptr %add.ptr84, %add.ptr73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp77 = icmp eq i32 %dec, 0
  %or.cond = select i1 %cmp74, i1 true, i1 %cmp77
  br i1 %or.cond, label %if.end80.cleanup_crit_edge, label %if.end80.if.end80_crit_edge

if.end80.if.end80_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end80

if.end80.cleanup_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

out_free:                                         ; preds = %cleanup84.i.out_free_crit_edge, %if.else66.i.out_free_crit_edge, %if.then62.i.out_free_crit_edge, %do.end.i.out_free_crit_edge, %if.end.i.out_free_crit_edge, %if.end37.out_free_crit_edge, %for.end32.out_free_crit_edge, %check_underflow.exit.i.out_free_crit_edge, %if.end.i74.i.out_free_crit_edge, %unconditional.exit.i.i.out_free_crit_edge, %if.then37.i.out_free_crit_edge, %if.end13.i.out_free_crit_edge, %ip6_checkentry.exit.i.out_free_crit_edge, %if.end11.i.out_free_crit_edge, %lor.lhs.false2.i.out_free_crit_edge, %for.body7.out_free_crit_edge
  %ret.2 = phi i32 [ -22, %for.end32.out_free_crit_edge ], [ %call39, %if.end37.out_free_crit_edge ], [ -40, %do.end.i.out_free_crit_edge ], [ -40, %cleanup84.i.out_free_crit_edge ], [ -40, %if.then62.i.out_free_crit_edge ], [ -40, %if.else66.i.out_free_crit_edge ], [ -40, %if.end.i.out_free_crit_edge ], [ -22, %check_underflow.exit.i.out_free_crit_edge ], [ -22, %unconditional.exit.i.i.out_free_crit_edge ], [ -22, %if.end.i74.i.out_free_crit_edge ], [ -22, %if.then37.i.out_free_crit_edge ], [ -22, %lor.lhs.false2.i.out_free_crit_edge ], [ -22, %for.body7.out_free_crit_edge ], [ -22, %ip6_checkentry.exit.i.out_free_crit_edge ], [ %call17.i, %if.end13.i.out_free_crit_edge ], [ -22, %if.end11.i.out_free_crit_edge ]
  tail call void @kvfree(ptr noundef nonnull %call) #14
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.end80.cleanup_crit_edge, %for.end67.cleanup_crit_edge, %find_check_entry.exit.thread.cleanup_crit_edge, %if.end47.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %out_free ], [ -12, %entry.cleanup_crit_edge ], [ %ret.1, %for.end67.cleanup_crit_edge ], [ 0, %if.end47.cleanup_crit_edge ], [ %ret.1, %if.end80.cleanup_crit_edge ], [ 0, %find_check_entry.exit.thread.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %alloc_state) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_free_table_info(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xt_register_table(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_register_net_hooks(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ip6t_unregister_table_pre_exit(ptr noundef %net, ptr noundef %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @xt_find_table(ptr noundef %net, i8 noundef zeroext 10, ptr noundef %name) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %ops = getelementptr inbounds %struct.xt_table, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %valid_hooks = getelementptr inbounds %struct.xt_table, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %valid_hooks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %valid_hooks, align 4
  %call.i = tail call i32 @__sw_hweight32(i32 noundef %3) #14
  tail call void @nf_unregister_net_hooks(ptr noundef %net, ptr noundef %1, i32 noundef %call.i) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xt_find_table(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_unregister_net_hooks(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ip6t_unregister_table_exit(ptr noundef %net, ptr noundef %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @xt_find_table(ptr noundef %net, i8 noundef zeroext 10, ptr noundef %name) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  %me.i = getelementptr inbounds %struct.xt_table, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %me.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %me.i, align 4
  %call.i = tail call ptr @xt_unregister_table(ptr noundef nonnull %call) #14
  %entries.i = getelementptr inbounds %struct.xt_table_info, ptr %call.i, i32 0, i32 8
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call.i, align 8
  %add.ptr13.i = getelementptr i8, ptr %entries.i, i32 %3
  %cmp14.i = icmp ult ptr %entries.i, %add.ptr13.i
  br i1 %cmp14.i, label %if.then.for.body.i_crit_edge, label %if.then.for.end.i_crit_edge

if.then.for.end.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %iter.015.i = phi ptr [ %add.ptr1.i, %for.body.i.for.body.i_crit_edge ], [ %entries.i, %if.then.for.body.i_crit_edge ]
  tail call fastcc void @cleanup_entry(ptr noundef %iter.015.i, ptr noundef %net) #14
  %next_offset.i = getelementptr inbounds %struct.ip6t_entry, ptr %iter.015.i, i32 0, i32 3
  %4 = ptrtoint ptr %next_offset.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %next_offset.i, align 2
  %conv.i = zext i16 %5 to i32
  %add.ptr1.i = getelementptr i8, ptr %iter.015.i, i32 %conv.i
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call.i, align 8
  %add.ptr.i = getelementptr i8, ptr %entries.i, i32 %7
  %cmp.i = icmp ult ptr %add.ptr1.i, %add.ptr.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.then.for.end.i_crit_edge
  %number.i = getelementptr inbounds %struct.xt_table_info, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %number.i, align 4
  %initial_entries.i = getelementptr inbounds %struct.xt_table_info, ptr %call.i, i32 0, i32 2
  %10 = ptrtoint ptr %initial_entries.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %initial_entries.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp2.i = icmp ugt i32 %9, %11
  br i1 %cmp2.i, label %if.then.i, label %for.end.i.__ip6t_unregister_table.exit_crit_edge

for.end.i.__ip6t_unregister_table.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__ip6t_unregister_table.exit

if.then.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @module_put(ptr noundef %1) #14
  br label %__ip6t_unregister_table.exit

__ip6t_unregister_table.exit:                     ; preds = %if.then.i, %for.end.i.__ip6t_unregister_table.exit_crit_edge
  tail call void @xt_free_table_info(ptr noundef %call.i) #14
  br label %if.end

if.end:                                           ; preds = %__ip6t_unregister_table.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ip6_tables_fini() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @nf_unregister_sockopt(ptr noundef nonnull @ip6t_sockopts) #14
  tail call void @xt_unregister_matches(ptr noundef nonnull @ip6t_builtin_mt, i32 noundef 1) #14
  tail call void @xt_unregister_targets(ptr noundef nonnull @ip6t_builtin_tg, i32 noundef 2) #14
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @ip6_tables_net_ops) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_unregister_sockopt(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_matches(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_targets(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ip6_tables_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_pernet_subsys(ptr noundef nonnull @ip6_tables_net_ops) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @xt_register_targets(ptr noundef nonnull @ip6t_builtin_tg, i32 noundef 2) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.err2_crit_edge, label %if.end4

if.end.err2_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %err2

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @xt_register_matches(ptr noundef nonnull @ip6t_builtin_mt, i32 noundef 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end4.err4_crit_edge, label %if.end8

if.end4.err4_crit_edge:                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %err4

if.end8:                                          ; preds = %if.end4
  %call9 = tail call i32 @nf_register_sockopt(ptr noundef nonnull @ip6t_sockopts) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %err5, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

err5:                                             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @xt_unregister_matches(ptr noundef nonnull @ip6t_builtin_mt, i32 noundef 1) #14
  br label %err4

err4:                                             ; preds = %err5, %if.end4.err4_crit_edge
  %ret.0 = phi i32 [ %call5, %if.end4.err4_crit_edge ], [ %call9, %err5 ]
  tail call void @xt_unregister_targets(ptr noundef nonnull @ip6t_builtin_tg, i32 noundef 2) #14
  br label %err2

err2:                                             ; preds = %err4, %if.end.err2_crit_edge
  %ret.1 = phi i32 [ %call1, %if.end.err2_crit_edge ], [ %ret.0, %err4 ]
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @ip6_tables_net_ops) #14
  br label %cleanup

cleanup:                                          ; preds = %err2, %if.end8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8.cleanup_crit_edge ], [ %call, %entry.cleanup_crit_edge ], [ %ret.1, %err2 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_find_hdr(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_log_trace(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xt_alloc_entry_offsets(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_check_table_hooks(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cleanup_entry(ptr noundef %e, ptr noundef %net) unnamed_addr #0 align 64 {
entry:
  %par.i = alloca %struct.xt_mtdtor_param, align 4
  %par = alloca %struct.xt_tgdtor_param, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %par) #14
  %0 = getelementptr inbounds i8, ptr %par, i32 12
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %elems = getelementptr inbounds %struct.ip6t_entry, ptr %e, i32 0, i32 6
  %target_offset = getelementptr inbounds %struct.ip6t_entry, ptr %e, i32 0, i32 2
  %2 = ptrtoint ptr %target_offset to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %target_offset, align 4
  %conv23 = zext i16 %3 to i32
  %add.ptr24 = getelementptr i8, ptr %e, i32 %conv23
  %cmp25 = icmp ult ptr %elems, %add.ptr24
  br i1 %cmp25, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %4 = getelementptr inbounds i8, ptr %par.i, i32 12
  %match2.i = getelementptr inbounds %struct.xt_mtdtor_param, ptr %par.i, i32 0, i32 1
  %matchinfo.i = getelementptr inbounds %struct.xt_mtdtor_param, ptr %par.i, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %cleanup_match.exit.for.body_crit_edge, %for.body.lr.ph
  %ematch.026 = phi ptr [ %elems, %for.body.lr.ph ], [ %add.ptr3, %cleanup_match.exit.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %par.i) #14
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 184549375, ptr %4, align 4
  %6 = ptrtoint ptr %par.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %net, ptr %par.i, align 4
  %match.i = getelementptr inbounds %struct.anon.200, ptr %ematch.026, i32 0, i32 1
  %7 = ptrtoint ptr %match.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %match.i, align 4
  %9 = ptrtoint ptr %match2.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %match2.i, align 4
  %data.i = getelementptr inbounds %struct.xt_entry_match, ptr %ematch.026, i32 0, i32 1
  %10 = ptrtoint ptr %matchinfo.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %data.i, ptr %matchinfo.i, align 4
  %destroy.i = getelementptr inbounds %struct.xt_match, ptr %8, i32 0, i32 5
  %11 = ptrtoint ptr %destroy.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %destroy.i, align 4
  %cmp.not.i = icmp eq ptr %12, null
  br i1 %cmp.not.i, label %for.body.cleanup_match.exit_crit_edge, label %if.then.i

for.body.cleanup_match.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup_match.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  call void %12(ptr noundef nonnull %par.i) #14
  br label %cleanup_match.exit

cleanup_match.exit:                               ; preds = %if.then.i, %for.body.cleanup_match.exit_crit_edge
  %13 = ptrtoint ptr %match2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %match2.i, align 4
  %me.i = getelementptr inbounds %struct.xt_match, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %me.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %me.i, align 4
  call void @module_put(ptr noundef %16) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %par.i) #14
  %17 = ptrtoint ptr %ematch.026 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %ematch.026, align 4
  %conv2 = zext i16 %18 to i32
  %add.ptr3 = getelementptr i8, ptr %ematch.026, i32 %conv2
  %19 = ptrtoint ptr %target_offset to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %target_offset, align 4
  %conv = zext i16 %20 to i32
  %add.ptr = getelementptr i8, ptr %e, i32 %conv
  %cmp = icmp ult ptr %add.ptr3, %add.ptr
  br i1 %cmp, label %cleanup_match.exit.for.body_crit_edge, label %cleanup_match.exit.for.end_crit_edge

cleanup_match.exit.for.end_crit_edge:             ; preds = %cleanup_match.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

cleanup_match.exit.for.body_crit_edge:            ; preds = %cleanup_match.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %cleanup_match.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %add.ptr.lcssa = phi ptr [ %add.ptr24, %entry.for.end_crit_edge ], [ %add.ptr, %cleanup_match.exit.for.end_crit_edge ]
  %21 = ptrtoint ptr %par to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %net, ptr %par, align 4
  %target = getelementptr inbounds %struct.anon.195, ptr %add.ptr.lcssa, i32 0, i32 1
  %22 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %target, align 4
  %target6 = getelementptr inbounds %struct.xt_tgdtor_param, ptr %par, i32 0, i32 1
  %24 = ptrtoint ptr %target6 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %target6, align 4
  %data = getelementptr inbounds %struct.xt_entry_target, ptr %add.ptr.lcssa, i32 0, i32 1
  %targinfo = getelementptr inbounds %struct.xt_tgdtor_param, ptr %par, i32 0, i32 2
  %25 = ptrtoint ptr %targinfo to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %data, ptr %targinfo, align 4
  %family = getelementptr inbounds %struct.xt_tgdtor_param, ptr %par, i32 0, i32 3
  %26 = ptrtoint ptr %family to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 10, ptr %family, align 4
  %destroy = getelementptr inbounds %struct.xt_target, ptr %23, i32 0, i32 5
  %27 = ptrtoint ptr %destroy to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %destroy, align 4
  %cmp9.not = icmp eq ptr %28, null
  br i1 %cmp9.not, label %for.end.if.end_crit_edge, label %if.then

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  call void %28(ptr noundef nonnull %par) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge
  %29 = ptrtoint ptr %target6 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %target6, align 4
  %me = getelementptr inbounds %struct.xt_target, ptr %30, i32 0, i32 6
  %31 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %me, align 4
  call void @module_put(ptr noundef %32) #14
  %counters = getelementptr inbounds %struct.ip6t_entry, ptr %e, i32 0, i32 5
  call void @xt_percpu_counter_free(ptr noundef %counters) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %par) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_check_entry_offsets(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xt_find_jump_offset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xt_percpu_counter_alloc(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xt_request_find_target(i8 noundef zeroext, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_percpu_counter_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xt_request_find_match(i8 noundef zeroext, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_check_match(ptr noundef, i32 noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_check_target(ptr noundef, i32 noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xt_unregister_table(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @do_ip6t_set_ctl(ptr nocapture noundef readonly %sk, i32 noundef %cmd, [2 x i32] %arg.coerce, i32 noundef %len) #0 align 64 {
entry:
  %ret.i = alloca i32, align 4
  %tmp.i20 = alloca %struct.xt_counters_info, align 8
  %tmp.i = alloca %struct.ip6t_replace, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i, align 4
  %user_ns = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %user_ns, align 4
  %call1 = tail call zeroext i1 @ns_capable(ptr noundef %3, i32 noundef 12) #14
  br i1 %call1, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %if.end.cleanup_crit_edge [
    i32 64, label %sw.bb
    i32 65, label %sw.bb4
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %5 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %skc_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %tmp.i) #14
  %7 = call ptr @memset(ptr %tmp.i, i32 255, i32 96)
  %src.coerce.fca.0.extract.i.i.i = extractvalue [2 x i32] %arg.coerce, 0
  %8 = inttoptr i32 %src.coerce.fca.0.extract.i.i.i to ptr
  %sockptr.coerce.fca.1.extract.i.i.i.i = extractvalue [2 x i32] %arg.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i.i.i)
  %bf.cast.i.i.i.i = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i.i.i, 0
  br i1 %bf.cast.i.i.i.i, label %if.end.i.i.i, label %if.end8.i.i.i.i.i

if.end8.i.i.i.i.i:                                ; preds = %sw.bb
  tail call void @__might_fault(ptr noundef nonnull @.str.20, i32 noundef 156) #14
  %call.i.i.i.i.i = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i.i.i.i, label %if.end8.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i.i

if.end8.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge:  ; preds = %if.end8.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %if.end8.i.i.i.i.i
  %9 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %8, i32 96, i32 -1226833920) #20, !srcloc !109
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i6.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i.i, label %if.end.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge, !prof !107

land.lhs.true.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i.i
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %tmp.i, i32 noundef 96) #14
  %10 = call i32 @llvm.read_register.i32(metadata !92) #14
  %and.i.i.i.i.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 4
  %12 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i.i) #7, !srcloc !110
  %and.i.i.i.i.i.i.i = and i32 %12, -13
  %or.i.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i.i) #14, !srcloc !111
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !112
  %call1.i.i.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %tmp.i, ptr noundef %8, i32 noundef 96) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #14, !srcloc !111
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i.i)
  %tobool4.not.i.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i.i, label %if.end.i.i.i.i.i.if.end.i_crit_edge, label %if.end.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge, !prof !107

if.end.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge:   ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i.i.i

if.end.i.i.i.i.i.if.end.i_crit_edge:              ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then11.i.i.i.i.i:                              ; preds = %if.end.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge, %if.end8.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge
  %res.0.i.i.i3.i.i = phi i32 [ %call1.i.i.i.i.i.i, %if.end.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge ], [ 96, %if.end8.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge ], [ 96, %land.lhs.true.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge ]
  %sub.i.i.i.i.i = sub i32 96, %res.0.i.i.i3.i.i
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %tmp.i, i32 %sub.i.i.i.i.i
  %13 = call ptr @memset(ptr %add.ptr.i.i.i.i.i, i32 0, i32 %res.0.i.i.i3.i.i)
  br label %do_replace.exit

if.end.i.i.i:                                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  %14 = call ptr @memcpy(ptr %tmp.i, ptr %8, i32 96)
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.i.i.i, %if.end.i.i.i.i.i.if.end.i_crit_edge
  %num_counters.i = getelementptr inbounds %struct.ip6t_replace, ptr %tmp.i, i32 0, i32 6
  %15 = ptrtoint ptr %num_counters.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_counters.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217726, i32 %16)
  %cmp1.i = icmp ugt i32 %16, 134217726
  br i1 %cmp1.i, label %if.end.i.do_replace.exit_crit_edge, label %if.end3.i

if.end.i.do_replace.exit_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do_replace.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp5.i = icmp eq i32 %16, 0
  br i1 %cmp5.i, label %if.end3.i.do_replace.exit_crit_edge, label %if.end7.i

if.end3.i.do_replace.exit_crit_edge:              ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do_replace.exit

if.end7.i:                                        ; preds = %if.end3.i
  %arrayidx.i = getelementptr inbounds [32 x i8], ptr %tmp.i, i32 0, i32 31
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %arrayidx.i, align 1
  %size.i = getelementptr inbounds %struct.ip6t_replace, ptr %tmp.i, i32 0, i32 3
  %18 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size.i, align 8
  %call8.i = call ptr @xt_alloc_table_info(i32 noundef %19) #14
  %tobool.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool.not.i, label %if.end7.i.do_replace.exit_crit_edge, label %if.end10.i

if.end7.i.do_replace.exit_crit_edge:              ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do_replace.exit

if.end10.i:                                       ; preds = %if.end7.i
  %entries.i = getelementptr inbounds %struct.xt_table_info, ptr %call8.i, i32 0, i32 8
  %20 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %size.i, align 8
  %add.ptr2.i.i = getelementptr i8, ptr %8, i32 96
  br i1 %bf.cast.i.i.i.i, label %if.end.i.i, label %if.end8.i.i.i.i

if.end8.i.i.i.i:                                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp9.i.i.i.i = icmp slt i32 %21, 0
  br i1 %cmp9.i.i.i.i, label %land.rhs16.i.i.i.i, label %if.then.i.i.i.i1.i

land.rhs16.i.i.i.i:                               ; preds = %if.end8.i.i.i.i
  %.b71.i.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i.i, label %land.rhs16.i.i.i.i.free_newinfo.i_crit_edge, label %if.then27.i.i.i.i, !prof !107

land.rhs16.i.i.i.i.free_newinfo.i_crit_edge:      ; preds = %land.rhs16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_newinfo.i

if.then27.i.i.i.i:                                ; preds = %land.rhs16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 230, i32 noundef 9, ptr noundef null) #14
  br label %free_newinfo.i

if.then.i.i.i.i1.i:                               ; preds = %if.end8.i.i.i.i
  call void @__check_object_size(ptr noundef %entries.i, i32 noundef %21, i1 noundef zeroext false) #14
  call void @__might_fault(ptr noundef nonnull @.str.20, i32 noundef 156) #14
  %call.i.i.i.i = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i.i.i, label %if.then.i.i.i.i1.i.if.end.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.then.i.i.i.i1.i.if.end.i.i.i.i_crit_edge:      ; preds = %if.then.i.i.i.i1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.then.i.i.i.i1.i
  %22 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr2.i.i, i32 %21, i32 -1226833920) #20, !srcloc !109
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i6.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i, label %if.then.i7.i.i.i, label %land.lhs.true.i.i.i.i.if.end.i.i.i.i_crit_edge, !prof !107

land.lhs.true.i.i.i.i.if.end.i.i.i.i_crit_edge:   ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i.i.i

if.then.i7.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i.i3.i = call zeroext i1 @__kasan_check_write(ptr noundef %entries.i, i32 noundef %21) #14
  %23 = call i32 @llvm.read_register.i32(metadata !92) #14
  %and.i.i.i.i.i.i.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 4
  %25 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i) #7, !srcloc !110
  %and.i.i.i.i.i.i = and i32 %25, -13
  %or.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i) #14, !srcloc !111
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !112
  %call1.i.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef %entries.i, ptr noundef %add.ptr2.i.i, i32 noundef %21) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %25) #14, !srcloc !111
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !112
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i7.i.i.i, %land.lhs.true.i.i.i.i.if.end.i.i.i.i_crit_edge, %if.then.i.i.i.i1.i.if.end.i.i.i.i_crit_edge
  %res.0.i.i.i.i = phi i32 [ %21, %if.then.i.i.i.i1.i.if.end.i.i.i.i_crit_edge ], [ %call1.i.i.i.i.i, %if.then.i7.i.i.i ], [ %21, %land.lhs.true.i.i.i.i.if.end.i.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %res.0.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i, label %if.end.i.i.i.i.if.end15.i_crit_edge, label %if.then11.i.i.i.i, !prof !107

if.end.i.i.i.i.if.end15.i_crit_edge:              ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.i

if.then11.i.i.i.i:                                ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i.i.i = sub i32 %21, %res.0.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %entries.i, i32 %sub.i.i.i.i
  %26 = call ptr @memset(ptr %add.ptr.i.i.i.i, i32 0, i32 %res.0.i.i.i.i)
  br label %free_newinfo.i

if.end.i.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #16
  %27 = call ptr @memcpy(ptr %entries.i, ptr %add.ptr2.i.i, i32 %21)
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.end.i.i, %if.end.i.i.i.i.if.end15.i_crit_edge
  %call16.i = call fastcc i32 @translate_table(ptr noundef %6, ptr noundef nonnull %call8.i, ptr noundef %entries.i, ptr noundef nonnull %tmp.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp17.not.i = icmp eq i32 %call16.i, 0
  br i1 %cmp17.not.i, label %if.end19.i, label %if.end15.i.free_newinfo.i_crit_edge

if.end15.i.free_newinfo.i_crit_edge:              ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_newinfo.i

if.end19.i:                                       ; preds = %if.end15.i
  %valid_hooks.i = getelementptr inbounds %struct.ip6t_replace, ptr %tmp.i, i32 0, i32 1
  %28 = ptrtoint ptr %valid_hooks.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %valid_hooks.i, align 8
  %30 = ptrtoint ptr %num_counters.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_counters.i, align 4
  %counters.i = getelementptr inbounds %struct.ip6t_replace, ptr %tmp.i, i32 0, i32 7
  %32 = ptrtoint ptr %counters.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %counters.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i) #14
  %34 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %ret.i, align 4
  %call.i34 = call ptr @xt_counters_alloc(i32 noundef %31) #14
  %tobool.not.i35 = icmp eq ptr %call.i34, null
  br i1 %tobool.not.i35, label %__do_replace.exit.thread, label %if.end.i38

__do_replace.exit.thread:                         ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i) #14
  br label %for.cond.preheader.i

if.end.i38:                                       ; preds = %if.end19.i
  %call1.i = call ptr @xt_request_find_table_lock(ptr noundef %6, i8 noundef zeroext 10, ptr noundef nonnull %tmp.i) #14
  %cmp.i.i37 = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i37, label %if.then3.i, label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #16
  %35 = ptrtoint ptr %call1.i to i32
  %36 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %ret.i, align 4
  br label %__do_replace.exit

if.end5.i:                                        ; preds = %if.end.i38
  %valid_hooks6.i = getelementptr inbounds %struct.xt_table, ptr %call1.i, i32 0, i32 1
  %37 = ptrtoint ptr %valid_hooks6.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %valid_hooks6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %29)
  %cmp.not.i39 = icmp eq i32 %38, %29
  br i1 %cmp.not.i39, label %if.end8.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #16
  %39 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -22, ptr %ret.i, align 4
  br label %put_module.i

if.end8.i:                                        ; preds = %if.end5.i
  %call9.i = call ptr @xt_replace_table(ptr noundef %call1.i, i32 noundef %31, ptr noundef nonnull %call8.i, ptr noundef nonnull %ret.i) #14
  %tobool10.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool10.not.i, label %if.end8.i.put_module.i_crit_edge, label %if.end12.i

if.end8.i.put_module.i_crit_edge:                 ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %put_module.i

if.end12.i:                                       ; preds = %if.end8.i
  %number.i40 = getelementptr inbounds %struct.xt_table_info, ptr %call9.i, i32 0, i32 1
  %40 = ptrtoint ptr %number.i40 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %number.i40, align 4
  %initial_entries.i = getelementptr inbounds %struct.xt_table_info, ptr %call9.i, i32 0, i32 2
  %42 = ptrtoint ptr %initial_entries.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %initial_entries.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %43)
  %cmp13.i = icmp ugt i32 %41, %43
  br i1 %cmp13.i, label %if.end12.i.if.then17.i_crit_edge, label %lor.lhs.false.i

if.end12.i.if.then17.i_crit_edge:                 ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then17.i

lor.lhs.false.i:                                  ; preds = %if.end12.i
  %number14.i = getelementptr inbounds %struct.xt_table_info, ptr %call8.i, i32 0, i32 1
  %44 = ptrtoint ptr %number14.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %number14.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %43)
  %cmp16.not.i = icmp ugt i32 %45, %43
  br i1 %cmp16.not.i, label %lor.lhs.false.i.if.end18.i_crit_edge, label %lor.lhs.false.i.if.then17.i_crit_edge

lor.lhs.false.i.if.then17.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then17.i

lor.lhs.false.i.if.end18.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18.i

if.then17.i:                                      ; preds = %lor.lhs.false.i.if.then17.i_crit_edge, %if.end12.i.if.then17.i_crit_edge
  %me.i41 = getelementptr inbounds %struct.xt_table, ptr %call1.i, i32 0, i32 4
  %46 = ptrtoint ptr %me.i41 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %me.i41, align 4
  call void @module_put(ptr noundef %47) #14
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then17.i, %lor.lhs.false.i.if.end18.i_crit_edge
  %48 = ptrtoint ptr %number.i40 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %number.i40, align 4
  %50 = ptrtoint ptr %initial_entries.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %initial_entries.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %51)
  %cmp21.i = icmp ugt i32 %49, %51
  br i1 %cmp21.i, label %land.lhs.true.i, label %if.end18.i.if.end27.i_crit_edge

if.end18.i.if.end27.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27.i

land.lhs.true.i:                                  ; preds = %if.end18.i
  %number22.i = getelementptr inbounds %struct.xt_table_info, ptr %call8.i, i32 0, i32 1
  %52 = ptrtoint ptr %number22.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %number22.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %51)
  %cmp24.not.i = icmp ugt i32 %53, %51
  br i1 %cmp24.not.i, label %land.lhs.true.i.if.end27.i_crit_edge, label %if.then25.i

land.lhs.true.i.if.end27.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27.i

if.then25.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  %me26.i = getelementptr inbounds %struct.xt_table, ptr %call1.i, i32 0, i32 4
  %54 = ptrtoint ptr %me26.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %me26.i, align 4
  call void @module_put(ptr noundef %55) #14
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then25.i, %land.lhs.true.i.if.end27.i_crit_edge, %if.end18.i.if.end27.i_crit_edge
  call void @xt_table_unlock(ptr noundef %call1.i) #14
  %call31.i.i = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %56 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call31.i.i, i32 %56)
  %cmp32.i.i = icmp ult i32 %call31.i.i, %56
  br i1 %cmp32.i.i, label %for.body.lr.ph.i.i, label %if.end27.i.get_old_counters.exit.i_crit_edge

if.end27.i.get_old_counters.exit.i_crit_edge:     ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_old_counters.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.end27.i
  %entries.i.i = getelementptr inbounds %struct.xt_table_info, ptr %call9.i, i32 0, i32 8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.end.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %call33.i.i = phi i32 [ %call31.i.i, %for.body.lr.ph.i.i ], [ %call.i.i, %for.end.i.i.for.body.i.i_crit_edge ]
  %57 = ptrtoint ptr %call9.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %call9.i, align 8
  %add.ptr27.i.i = getelementptr i8, ptr %entries.i.i, i32 %58
  %cmp428.i.i = icmp ult ptr %entries.i.i, %add.ptr27.i.i
  br i1 %cmp428.i.i, label %for.body5.lr.ph.i.i, label %for.body.i.i.for.end.i.i_crit_edge

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i

for.body5.lr.ph.i.i:                              ; preds = %for.body.i.i
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call33.i.i
  br label %for.body5.i.i

for.body5.i.i:                                    ; preds = %xt_get_per_cpu_counter.exit.i.i.for.body5.i.i_crit_edge, %for.body5.lr.ph.i.i
  %iter.030.i.i = phi ptr [ %entries.i.i, %for.body5.lr.ph.i.i ], [ %add.ptr12.i.i, %xt_get_per_cpu_counter.exit.i.i.for.body5.i.i_crit_edge ]
  %i.029.i.i = phi i32 [ 0, %for.body5.lr.ph.i.i ], [ %inc.i.i, %xt_get_per_cpu_counter.exit.i.i.for.body5.i.i_crit_edge ]
  %counters6.i.i = getelementptr inbounds %struct.ip6t_entry, ptr %iter.030.i.i, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %59 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %59)
  %cmp.i.i82.i = icmp ugt i32 %59, 1
  br i1 %cmp.i.i82.i, label %do.body.i.i.i, label %for.body5.i.i.xt_get_per_cpu_counter.exit.i.i_crit_edge

for.body5.i.i.xt_get_per_cpu_counter.exit.i.i_crit_edge: ; preds = %for.body5.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %xt_get_per_cpu_counter.exit.i.i

do.body.i.i.i:                                    ; preds = %for.body5.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %60 = ptrtoint ptr %counters6.i.i to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %counters6.i.i, align 8
  %conv.i.i.i = trunc i64 %61 to i32
  %62 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %63, %conv.i.i.i
  %64 = inttoptr i32 %add.i.i.i to ptr
  br label %xt_get_per_cpu_counter.exit.i.i

xt_get_per_cpu_counter.exit.i.i:                  ; preds = %do.body.i.i.i, %for.body5.i.i.xt_get_per_cpu_counter.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %64, %do.body.i.i.i ], [ %counters6.i.i, %for.body5.i.i.xt_get_per_cpu_counter.exit.i.i_crit_edge ]
  %bcnt.i.i = getelementptr inbounds %struct.xt_counters, ptr %retval.0.i.i.i, i32 0, i32 1
  %65 = ptrtoint ptr %bcnt.i.i to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %bcnt.i.i, align 8
  %arrayidx.i.i42 = getelementptr %struct.xt_counters, ptr %call.i34, i32 %i.029.i.i
  %bcnt8.i.i = getelementptr %struct.xt_counters, ptr %call.i34, i32 %i.029.i.i, i32 1
  %67 = ptrtoint ptr %bcnt8.i.i to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %bcnt8.i.i, align 8
  %add.i.i43 = add i64 %68, %66
  store i64 %add.i.i43, ptr %bcnt8.i.i, align 8
  %69 = ptrtoint ptr %retval.0.i.i.i to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %retval.0.i.i.i, align 8
  %71 = ptrtoint ptr %arrayidx.i.i42 to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %arrayidx.i.i42, align 8
  %add11.i.i44 = add i64 %72, %70
  store i64 %add11.i.i44, ptr %arrayidx.i.i42, align 8
  %inc.i.i = add i32 %i.029.i.i, 1
  %next_offset.i.i = getelementptr inbounds %struct.ip6t_entry, ptr %iter.030.i.i, i32 0, i32 3
  %73 = ptrtoint ptr %next_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %next_offset.i.i, align 2
  %conv.i.i45 = zext i16 %74 to i32
  %add.ptr12.i.i = getelementptr i8, ptr %iter.030.i.i, i32 %conv.i.i45
  %75 = ptrtoint ptr %call9.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %call9.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %entries.i.i, i32 %76
  %cmp4.i.i = icmp ult ptr %add.ptr12.i.i, %add.ptr.i.i
  br i1 %cmp4.i.i, label %xt_get_per_cpu_counter.exit.i.i.for.body5.i.i_crit_edge, label %xt_get_per_cpu_counter.exit.i.i.for.end.i.i_crit_edge

xt_get_per_cpu_counter.exit.i.i.for.end.i.i_crit_edge: ; preds = %xt_get_per_cpu_counter.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i

xt_get_per_cpu_counter.exit.i.i.for.body5.i.i_crit_edge: ; preds = %xt_get_per_cpu_counter.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body5.i.i

for.end.i.i:                                      ; preds = %xt_get_per_cpu_counter.exit.i.i.for.end.i.i_crit_edge, %for.body.i.i.for.end.i.i_crit_edge
  call void @__might_resched(ptr noundef nonnull @.str.3, i32 noundef 803, i32 noundef 0) #14
  %call.i.i83.i = call i32 @__cond_resched() #14
  %call.i.i = call i32 @cpumask_next(i32 noundef %call33.i.i, ptr noundef nonnull @__cpu_possible_mask) #21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %77 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i84.i = icmp ult i32 %call.i.i, %77
  br i1 %cmp.i84.i, label %for.end.i.i.for.body.i.i_crit_edge, label %for.end.i.i.get_old_counters.exit.i_crit_edge

for.end.i.i.get_old_counters.exit.i_crit_edge:    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_old_counters.exit.i

for.end.i.i.for.body.i.i_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

get_old_counters.exit.i:                          ; preds = %for.end.i.i.get_old_counters.exit.i_crit_edge, %if.end27.i.get_old_counters.exit.i_crit_edge
  %entries.i46 = getelementptr inbounds %struct.xt_table_info, ptr %call9.i, i32 0, i32 8
  %78 = ptrtoint ptr %call9.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %call9.i, align 8
  %add.ptr87.i = getelementptr i8, ptr %entries.i46, i32 %79
  %cmp3088.i = icmp ult ptr %entries.i46, %add.ptr87.i
  br i1 %cmp3088.i, label %get_old_counters.exit.i.for.body.i50_crit_edge, label %get_old_counters.exit.i.for.end.i51_crit_edge

get_old_counters.exit.i.for.end.i51_crit_edge:    ; preds = %get_old_counters.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i51

get_old_counters.exit.i.for.body.i50_crit_edge:   ; preds = %get_old_counters.exit.i
  br label %for.body.i50

for.body.i50:                                     ; preds = %for.body.i50.for.body.i50_crit_edge, %get_old_counters.exit.i.for.body.i50_crit_edge
  %iter.089.i = phi ptr [ %add.ptr31.i, %for.body.i50.for.body.i50_crit_edge ], [ %entries.i46, %get_old_counters.exit.i.for.body.i50_crit_edge ]
  call fastcc void @cleanup_entry(ptr noundef %iter.089.i, ptr noundef %6) #14
  %next_offset.i47 = getelementptr inbounds %struct.ip6t_entry, ptr %iter.089.i, i32 0, i32 3
  %80 = ptrtoint ptr %next_offset.i47 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %next_offset.i47, align 2
  %conv.i48 = zext i16 %81 to i32
  %add.ptr31.i = getelementptr i8, ptr %iter.089.i, i32 %conv.i48
  %82 = ptrtoint ptr %call9.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %call9.i, align 8
  %add.ptr.i49 = getelementptr i8, ptr %entries.i46, i32 %83
  %cmp30.i = icmp ult ptr %add.ptr31.i, %add.ptr.i49
  br i1 %cmp30.i, label %for.body.i50.for.body.i50_crit_edge, label %for.body.i50.for.end.i51_crit_edge

for.body.i50.for.end.i51_crit_edge:               ; preds = %for.body.i50
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i51

for.body.i50.for.body.i50_crit_edge:              ; preds = %for.body.i50
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i50

for.end.i51:                                      ; preds = %for.body.i50.for.end.i51_crit_edge, %get_old_counters.exit.i.for.end.i51_crit_edge
  call void @xt_free_table_info(ptr noundef nonnull %call9.i) #14
  %mul.i = shl i32 %31, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %cmp9.i.i.i = icmp slt i32 %mul.i, 0
  br i1 %cmp9.i.i.i, label %land.rhs16.i.i.i, label %if.then.i.i.i.i52

land.rhs16.i.i.i:                                 ; preds = %for.end.i51
  %.b71.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i, label %land.rhs16.i.i.i.do.body.i_crit_edge, label %if.then27.i.i.i, !prof !107

land.rhs16.i.i.i.do.body.i_crit_edge:             ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 230, i32 noundef 9, ptr noundef null) #14
  br label %do.body.i

if.then.i.i.i.i52:                                ; preds = %for.end.i51
  call void @__check_object_size(ptr noundef nonnull %call.i34, i32 noundef %mul.i, i1 noundef zeroext true) #14
  call void @__might_fault(ptr noundef nonnull @.str.20, i32 noundef 174) #14
  %call.i.i.i = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i.i, label %if.then.i.i.i.i52.copy_to_user.exit.i_crit_edge, label %if.end.i.i.i54

if.then.i.i.i.i52.copy_to_user.exit.i_crit_edge:  ; preds = %if.then.i.i.i.i52
  call void @__sanitizer_cov_trace_pc() #16
  br label %copy_to_user.exit.i

if.end.i.i.i54:                                   ; preds = %if.then.i.i.i.i52
  %84 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %33, i32 %mul.i, i32 -1226833920) #20, !srcloc !113
  %asmresult.i.i.i = extractvalue { i32, i32 } %84, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then2.i.i.i, label %if.end.i.i.i54.copy_to_user.exit.i_crit_edge

if.end.i.i.i54.copy_to_user.exit.i_crit_edge:     ; preds = %if.end.i.i.i54
  call void @__sanitizer_cov_trace_pc() #16
  br label %copy_to_user.exit.i

if.then2.i.i.i:                                   ; preds = %if.end.i.i.i54
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i.i55 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call.i34, i32 noundef %mul.i) #14
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %33, ptr noundef nonnull %call.i34, i32 noundef %mul.i) #14
  br label %copy_to_user.exit.i

copy_to_user.exit.i:                              ; preds = %if.then2.i.i.i, %if.end.i.i.i54.copy_to_user.exit.i_crit_edge, %if.then.i.i.i.i52.copy_to_user.exit.i_crit_edge
  %n.addr.0.i.i = phi i32 [ %mul.i, %if.then.i.i.i.i52.copy_to_user.exit.i_crit_edge ], [ %call.i12.i.i.i, %if.then2.i.i.i ], [ %mul.i, %if.end.i.i.i54.copy_to_user.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i.i)
  %cmp33.not.i = icmp eq i32 %n.addr.0.i.i, 0
  br i1 %cmp33.not.i, label %copy_to_user.exit.i.__do_replace.exit_crit_edge, label %copy_to_user.exit.i.do.body.i_crit_edge

copy_to_user.exit.i.do.body.i_crit_edge:          ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i

copy_to_user.exit.i.__do_replace.exit_crit_edge:  ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__do_replace.exit

do.body.i:                                        ; preds = %copy_to_user.exit.i.do.body.i_crit_edge, %if.then27.i.i.i, %land.rhs16.i.i.i.do.body.i_crit_edge
  %call36.i = call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool37.not.i = icmp eq i32 %call36.i, 0
  br i1 %tobool37.not.i, label %do.body.i.__do_replace.exit_crit_edge, label %do.end.i

do.body.i.__do_replace.exit_crit_edge:            ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__do_replace.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %call40.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #22
  br label %__do_replace.exit

put_module.i:                                     ; preds = %if.end8.i.put_module.i_crit_edge, %if.then7.i
  %me45.i = getelementptr inbounds %struct.xt_table, ptr %call1.i, i32 0, i32 4
  %85 = ptrtoint ptr %me45.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %me45.i, align 4
  call void @module_put(ptr noundef %86) #14
  call void @xt_table_unlock(ptr noundef %call1.i) #14
  br label %__do_replace.exit

__do_replace.exit:                                ; preds = %put_module.i, %do.end.i, %do.body.i.__do_replace.exit_crit_edge, %copy_to_user.exit.i.__do_replace.exit_crit_edge, %if.then3.i
  call void @vfree(ptr noundef nonnull %call.i34) #14
  %87 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %retval.0.i56.pr = load i32, ptr %ret.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i56.pr)
  %tobool24.not.i = icmp eq i32 %retval.0.i56.pr, 0
  br i1 %tobool24.not.i, label %__do_replace.exit.do_replace.exit_crit_edge, label %__do_replace.exit.for.cond.preheader.i_crit_edge

__do_replace.exit.for.cond.preheader.i_crit_edge: ; preds = %__do_replace.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.preheader.i

__do_replace.exit.do_replace.exit_crit_edge:      ; preds = %__do_replace.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do_replace.exit

for.cond.preheader.i:                             ; preds = %__do_replace.exit.for.cond.preheader.i_crit_edge, %__do_replace.exit.thread
  %retval.0.i5659 = phi i32 [ -12, %__do_replace.exit.thread ], [ %retval.0.i56.pr, %__do_replace.exit.for.cond.preheader.i_crit_edge ]
  %88 = ptrtoint ptr %call8.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %call8.i, align 8
  %add.ptr8.i = getelementptr i8, ptr %entries.i, i32 %89
  %cmp289.i = icmp ult ptr %entries.i, %add.ptr8.i
  br i1 %cmp289.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.free_newinfo.i_crit_edge

for.cond.preheader.i.free_newinfo.i_crit_edge:    ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_newinfo.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %iter.010.i = phi ptr [ %add.ptr29.i, %for.body.i.for.body.i_crit_edge ], [ %entries.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  call fastcc void @cleanup_entry(ptr noundef %iter.010.i, ptr noundef %6) #14
  %next_offset.i = getelementptr inbounds %struct.ip6t_entry, ptr %iter.010.i, i32 0, i32 3
  %90 = ptrtoint ptr %next_offset.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %next_offset.i, align 2
  %conv.i = zext i16 %91 to i32
  %add.ptr29.i = getelementptr i8, ptr %iter.010.i, i32 %conv.i
  %92 = ptrtoint ptr %call8.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %call8.i, align 8
  %add.ptr.i = getelementptr i8, ptr %entries.i, i32 %93
  %cmp28.i = icmp ult ptr %add.ptr29.i, %add.ptr.i
  br i1 %cmp28.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.free_newinfo.i_crit_edge

for.body.i.free_newinfo.i_crit_edge:              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_newinfo.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

free_newinfo.i:                                   ; preds = %for.body.i.free_newinfo.i_crit_edge, %for.cond.preheader.i.free_newinfo.i_crit_edge, %if.end15.i.free_newinfo.i_crit_edge, %if.then11.i.i.i.i, %if.then27.i.i.i.i, %land.rhs16.i.i.i.i.free_newinfo.i_crit_edge
  %ret.0.i = phi i32 [ %call16.i, %if.end15.i.free_newinfo.i_crit_edge ], [ -14, %if.then11.i.i.i.i ], [ -14, %if.then27.i.i.i.i ], [ -14, %land.rhs16.i.i.i.i.free_newinfo.i_crit_edge ], [ %retval.0.i5659, %for.cond.preheader.i.free_newinfo.i_crit_edge ], [ %retval.0.i5659, %for.body.i.free_newinfo.i_crit_edge ]
  call void @xt_free_table_info(ptr noundef nonnull %call8.i) #14
  br label %do_replace.exit

do_replace.exit:                                  ; preds = %free_newinfo.i, %__do_replace.exit.do_replace.exit_crit_edge, %if.end7.i.do_replace.exit_crit_edge, %if.end3.i.do_replace.exit_crit_edge, %if.end.i.do_replace.exit_crit_edge, %if.then11.i.i.i.i.i
  %retval.0.i = phi i32 [ %ret.0.i, %free_newinfo.i ], [ -12, %if.end.i.do_replace.exit_crit_edge ], [ -22, %if.end3.i.do_replace.exit_crit_edge ], [ -12, %if.end7.i.do_replace.exit_crit_edge ], [ 0, %__do_replace.exit.do_replace.exit_crit_edge ], [ -14, %if.then11.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %tmp.i) #14
  br label %cleanup

sw.bb4:                                           ; preds = %if.end
  %94 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %skc_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %tmp.i20) #14
  %96 = call ptr @memset(ptr %tmp.i20, i32 255, i32 40)
  %call.i = call ptr @xt_copy_counters([2 x i32] %arg.coerce, i32 noundef %len, ptr noundef nonnull %tmp.i20) #14
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i21

if.then.i:                                        ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #16
  %97 = ptrtoint ptr %call.i to i32
  br label %do_add_counters.exit

if.end.i21:                                       ; preds = %sw.bb4
  %call3.i = call ptr @xt_find_table_lock(ptr noundef %95, i8 noundef zeroext 10, ptr noundef nonnull %tmp.i20) #14
  %cmp.i47.i = icmp ugt ptr %call3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i47.i, label %if.then5.i, label %if.end7.i23

if.then5.i:                                       ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #16
  %98 = ptrtoint ptr %call3.i to i32
  br label %free.i

if.end7.i23:                                      ; preds = %if.end.i21
  call fastcc void @local_bh_disable() #14
  %private8.i = getelementptr inbounds %struct.xt_table, ptr %call3.i, i32 0, i32 2
  %99 = ptrtoint ptr %private8.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %private8.i, align 4
  %number.i = getelementptr inbounds %struct.xt_table_info, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %number.i, align 4
  %num_counters.i22 = getelementptr inbounds %struct.xt_counters_info, ptr %tmp.i20, i32 0, i32 1
  %103 = ptrtoint ptr %num_counters.i22 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %num_counters.i22, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %102, i32 %104)
  %cmp.not.i = icmp eq i32 %102, %104
  br i1 %cmp.not.i, label %if.end10.i25, label %if.end7.i23.unlock_up_free.i_crit_edge

if.end7.i23.unlock_up_free.i_crit_edge:           ; preds = %if.end7.i23
  call void @__sanitizer_cov_trace_pc() #16
  br label %unlock_up_free.i

if.end10.i25:                                     ; preds = %if.end7.i23
  %105 = call i32 @llvm.read_register.i32(metadata !92) #14
  %and.i.i.i = and i32 %105, -16384
  %106 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %106, i32 0, i32 3
  %107 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %108
  %109 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %110, ptrtoint (ptr @xt_recseq to i32)
  %111 = inttoptr i32 %add.i.i to ptr
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %111, align 4
  %114 = and i32 %113, 1
  %and.i.i = xor i32 %114, 1
  %add27.i.i = or i32 %and.i.i, %113
  store i32 %add27.i.i, ptr %111, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !103
  %entries.i24 = getelementptr inbounds %struct.xt_table_info, ptr %100, i32 0, i32 8
  %115 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %100, align 8
  %add.ptr57.i = getelementptr i8, ptr %entries.i24, i32 %116
  %cmp1558.i = icmp ult ptr %entries.i24, %add.ptr57.i
  br i1 %cmp1558.i, label %if.end10.i25.for.body.i27_crit_edge, label %if.end10.i25.for.end.i_crit_edge

if.end10.i25.for.end.i_crit_edge:                 ; preds = %if.end10.i25
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

if.end10.i25.for.body.i27_crit_edge:              ; preds = %if.end10.i25
  br label %for.body.i27

for.body.i27:                                     ; preds = %xt_get_this_cpu_counter.exit.i.for.body.i27_crit_edge, %if.end10.i25.for.body.i27_crit_edge
  %iter.060.i = phi ptr [ %add.ptr22.i, %xt_get_this_cpu_counter.exit.i.for.body.i27_crit_edge ], [ %entries.i24, %if.end10.i25.for.body.i27_crit_edge ]
  %i.059.i = phi i32 [ %inc.i, %xt_get_this_cpu_counter.exit.i.for.body.i27_crit_edge ], [ 0, %if.end10.i25.for.body.i27_crit_edge ]
  %counters.i26 = getelementptr inbounds %struct.ip6t_entry, ptr %iter.060.i, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %117 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %117)
  %cmp.i48.i = icmp ugt i32 %117, 1
  br i1 %cmp.i48.i, label %do.body.i.i, label %for.body.i27.xt_get_this_cpu_counter.exit.i_crit_edge

for.body.i27.xt_get_this_cpu_counter.exit.i_crit_edge: ; preds = %for.body.i27
  call void @__sanitizer_cov_trace_pc() #16
  br label %xt_get_this_cpu_counter.exit.i

do.body.i.i:                                      ; preds = %for.body.i27
  call void @__sanitizer_cov_trace_pc() #16
  %118 = ptrtoint ptr %counters.i26 to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %counters.i26, align 8
  %conv.i.i = trunc i64 %119 to i32
  %120 = call i32 @llvm.read_register.i32(metadata !92) #14
  %and.i.i49.i = and i32 %120, -16384
  %121 = inttoptr i32 %and.i.i49.i to ptr
  %cpu.i50.i = getelementptr inbounds %struct.thread_info, ptr %121, i32 0, i32 3
  %122 = ptrtoint ptr %cpu.i50.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %cpu.i50.i, align 4
  %arrayidx.i51.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %123
  %124 = ptrtoint ptr %arrayidx.i51.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx.i51.i, align 4
  %add.i52.i = add i32 %125, %conv.i.i
  %126 = inttoptr i32 %add.i52.i to ptr
  br label %xt_get_this_cpu_counter.exit.i

xt_get_this_cpu_counter.exit.i:                   ; preds = %do.body.i.i, %for.body.i27.xt_get_this_cpu_counter.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %126, %do.body.i.i ], [ %counters.i26, %for.body.i27.xt_get_this_cpu_counter.exit.i_crit_edge ]
  %arrayidx.i28 = getelementptr %struct.xt_counters, ptr %call.i, i32 %i.059.i
  %bcnt.i = getelementptr %struct.xt_counters, ptr %call.i, i32 %i.059.i, i32 1
  %127 = ptrtoint ptr %bcnt.i to i32
  call void @__asan_load8_noabort(i32 %127)
  %128 = load i64, ptr %bcnt.i, align 8
  %bcnt18.i = getelementptr inbounds %struct.xt_counters, ptr %retval.0.i.i, i32 0, i32 1
  %129 = ptrtoint ptr %bcnt18.i to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %bcnt18.i, align 8
  %add.i = add i64 %130, %128
  store i64 %add.i, ptr %bcnt18.i, align 8
  %131 = ptrtoint ptr %arrayidx.i28 to i32
  call void @__asan_load8_noabort(i32 %131)
  %132 = load i64, ptr %arrayidx.i28, align 8
  %133 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load8_noabort(i32 %133)
  %134 = load i64, ptr %retval.0.i.i, align 8
  %add21.i = add i64 %134, %132
  store i64 %add21.i, ptr %retval.0.i.i, align 8
  %inc.i = add i32 %i.059.i, 1
  %next_offset.i29 = getelementptr inbounds %struct.ip6t_entry, ptr %iter.060.i, i32 0, i32 3
  %135 = ptrtoint ptr %next_offset.i29 to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %next_offset.i29, align 2
  %conv.i30 = zext i16 %136 to i32
  %add.ptr22.i = getelementptr i8, ptr %iter.060.i, i32 %conv.i30
  %137 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %100, align 8
  %add.ptr.i31 = getelementptr i8, ptr %entries.i24, i32 %138
  %cmp15.i = icmp ult ptr %add.ptr22.i, %add.ptr.i31
  br i1 %cmp15.i, label %xt_get_this_cpu_counter.exit.i.for.body.i27_crit_edge, label %xt_get_this_cpu_counter.exit.i.for.end.i_crit_edge

xt_get_this_cpu_counter.exit.i.for.end.i_crit_edge: ; preds = %xt_get_this_cpu_counter.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

xt_get_this_cpu_counter.exit.i.for.body.i27_crit_edge: ; preds = %xt_get_this_cpu_counter.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i27

for.end.i:                                        ; preds = %xt_get_this_cpu_counter.exit.i.for.end.i_crit_edge, %if.end10.i25.for.end.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !108
  %139 = call i32 @llvm.read_register.i32(metadata !92) #14
  %and.i.i53.i = and i32 %139, -16384
  %140 = inttoptr i32 %and.i.i53.i to ptr
  %cpu.i54.i = getelementptr inbounds %struct.thread_info, ptr %140, i32 0, i32 3
  %141 = ptrtoint ptr %cpu.i54.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %cpu.i54.i, align 4
  %arrayidx.i55.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %142
  %143 = ptrtoint ptr %arrayidx.i55.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %arrayidx.i55.i, align 4
  %add.i56.i = add i32 %144, ptrtoint (ptr @xt_recseq to i32)
  %145 = inttoptr i32 %add.i56.i to ptr
  %146 = ptrtoint ptr %145 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %145, align 4
  %add11.i.i = add i32 %147, %and.i.i
  store i32 %add11.i.i, ptr %145, align 4
  br label %unlock_up_free.i

unlock_up_free.i:                                 ; preds = %for.end.i, %if.end7.i23.unlock_up_free.i_crit_edge
  %ret.0.i32 = phi i32 [ 0, %for.end.i ], [ -22, %if.end7.i23.unlock_up_free.i_crit_edge ]
  call fastcc void @local_bh_enable() #14
  call void @xt_table_unlock(ptr noundef %call3.i) #14
  %me.i = getelementptr inbounds %struct.xt_table, ptr %call3.i, i32 0, i32 4
  %148 = ptrtoint ptr %me.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %me.i, align 4
  call void @module_put(ptr noundef %149) #14
  br label %free.i

free.i:                                           ; preds = %unlock_up_free.i, %if.then5.i
  %ret.1.i = phi i32 [ %98, %if.then5.i ], [ %ret.0.i32, %unlock_up_free.i ]
  call void @vfree(ptr noundef %call.i) #14
  br label %do_add_counters.exit

do_add_counters.exit:                             ; preds = %free.i, %if.then.i
  %retval.0.i33 = phi i32 [ %97, %if.then.i ], [ %ret.1.i, %free.i ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %tmp.i20) #14
  br label %cleanup

cleanup:                                          ; preds = %do_add_counters.exit, %do_replace.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ %retval.0.i33, %do_add_counters.exit ], [ %retval.0.i, %do_replace.exit ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @do_ip6t_get_ctl(ptr nocapture noundef readonly %sk, i32 noundef %cmd, ptr noundef %user, ptr nocapture noundef readonly %len) #0 align 64 {
entry:
  %get.i = alloca %struct.ip6t_get_entries, align 8
  %name.i = alloca [32 x i8], align 1
  %info.i = alloca %struct.ip6t_getinfo, align 4
  %ret = alloca i32, align 4
  %rev = alloca %struct.xt_get_revision, align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret) #14
  %0 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ret, align 4, !annotation !106
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %1 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %skc_net.i, align 4
  %user_ns = getelementptr inbounds %struct.net, ptr %2, i32 0, i32 11
  %3 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %user_ns, align 4
  %call1 = tail call zeroext i1 @ns_capable(ptr noundef %4, i32 noundef 12) #14
  br i1 %call1, label %if.end, label %entry.cleanup27_crit_edge

entry.cleanup27_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup27

if.end:                                           ; preds = %entry
  %5 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %cmd, label %sw.default [
    i32 64, label %sw.bb
    i32 65, label %sw.bb4
    i32 68, label %if.end.sw.bb7_crit_edge
    i32 69, label %if.end.sw.bb7_crit_edge94
  ]

if.end.sw.bb7_crit_edge94:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb7

if.end.sw.bb7_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb7

sw.bb:                                            ; preds = %if.end
  %6 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %skc_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %name.i) #14
  %8 = getelementptr inbounds [32 x i8], ptr %name.i, i32 0, i32 31
  %9 = call ptr @memset(ptr %name.i, i32 255, i32 32)
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 84, i32 %11)
  %cmp.not.i = icmp eq i32 %11, 84
  br i1 %cmp.not.i, label %if.end8.i.i.i, label %sw.bb.get_info.exit_crit_edge

sw.bb.get_info.exit_crit_edge:                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_info.exit

if.end8.i.i.i:                                    ; preds = %sw.bb
  tail call void @__might_fault(ptr noundef nonnull @.str.20, i32 noundef 156) #14
  %call.i.i.i37 = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i.i37, label %if.end8.i.i.i.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end8.i.i.i.if.then11.i.i.i_crit_edge:          ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end8.i.i.i
  %12 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user, i32 32, i32 -1226833920) #20, !srcloc !109
  %asmresult.i.i.i = extractvalue { i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !107

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %name.i, i32 noundef 32) #14
  %13 = call i32 @llvm.read_register.i32(metadata !92) #14
  %and.i.i.i.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 4
  %15 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #7, !srcloc !110
  %and.i.i.i.i.i = and i32 %15, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #14, !srcloc !111
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !112
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %name.i, ptr noundef %user, i32 noundef 32) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #14, !srcloc !111
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end3.i, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !107

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.end8.i.i.i.if.then11.i.i.i_crit_edge
  %res.0.i.i52.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 32, %if.end8.i.i.i.if.then11.i.i.i_crit_edge ], [ 32, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 32, %res.0.i.i52.i
  %add.ptr.i.i.i = getelementptr i8, ptr %name.i, i32 %sub.i.i.i
  %16 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i52.i)
  br label %get_info.exit

if.end3.i:                                        ; preds = %if.end.i.i.i
  %17 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %8, align 1
  %call5.i = call ptr @xt_request_find_table_lock(ptr noundef %7, i8 noundef zeroext 10, ptr noundef nonnull %name.i) #14
  %cmp.i.i38 = icmp ugt ptr %call5.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i38, label %if.else25.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.end3.i
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %info.i) #14
  %private8.i = getelementptr inbounds %struct.xt_table, ptr %call5.i, i32 0, i32 2
  %18 = ptrtoint ptr %private8.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %private8.i, align 4
  %20 = call ptr @memset(ptr %info.i, i32 0, i32 32)
  %valid_hooks.i = getelementptr inbounds %struct.xt_table, ptr %call5.i, i32 0, i32 1
  %21 = ptrtoint ptr %valid_hooks.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %valid_hooks.i, align 4
  %valid_hooks9.i = getelementptr inbounds %struct.ip6t_getinfo, ptr %info.i, i32 0, i32 1
  %23 = ptrtoint ptr %valid_hooks9.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %valid_hooks9.i, align 4
  %hook_entry.i = getelementptr inbounds %struct.ip6t_getinfo, ptr %info.i, i32 0, i32 2
  %hook_entry11.i = getelementptr inbounds %struct.xt_table_info, ptr %19, i32 0, i32 3
  %24 = call ptr @memcpy(ptr %hook_entry.i, ptr %hook_entry11.i, i32 20)
  %underflow.i = getelementptr inbounds %struct.ip6t_getinfo, ptr %info.i, i32 0, i32 3
  %underflow14.i = getelementptr inbounds %struct.xt_table_info, ptr %19, i32 0, i32 4
  %25 = call ptr @memcpy(ptr %underflow.i, ptr %underflow14.i, i32 20)
  %number.i = getelementptr inbounds %struct.xt_table_info, ptr %19, i32 0, i32 1
  %26 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %number.i, align 4
  %num_entries.i = getelementptr inbounds %struct.ip6t_getinfo, ptr %info.i, i32 0, i32 4
  %28 = ptrtoint ptr %num_entries.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %num_entries.i, align 4
  %29 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %19, align 8
  %size16.i = getelementptr inbounds %struct.ip6t_getinfo, ptr %info.i, i32 0, i32 5
  %31 = ptrtoint ptr %size16.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %size16.i, align 4
  %call20.i = call ptr @strcpy(ptr noundef nonnull %info.i, ptr noundef nonnull %name.i) #18
  %32 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 84, i32 %33)
  %cmp1.i.i41.i = icmp ugt i32 %33, 84
  br i1 %cmp1.i.i41.i, label %if.then3.i.i.i, label %if.then.i.i.i.i, !prof !102

if.then3.i.i.i:                                   ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.19, i32 noundef 84, i32 noundef %33) #14
  br label %copy_to_user.exit.thread.i

if.then.i.i.i.i:                                  ; preds = %if.then7.i
  call void @__check_object_size(ptr noundef nonnull %info.i, i32 noundef %33, i1 noundef zeroext true) #14
  call void @__might_fault(ptr noundef nonnull @.str.20, i32 noundef 174) #14
  %call.i.i44.i = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i44.i, label %if.then.i.i.i.i.copy_to_user.exit.i_crit_edge, label %if.end.i.i47.i

if.then.i.i.i.i.copy_to_user.exit.i_crit_edge:    ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %copy_to_user.exit.i

if.end.i.i47.i:                                   ; preds = %if.then.i.i.i.i
  %34 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user, i32 %33, i32 -1226833920) #20, !srcloc !113
  %asmresult.i.i45.i = extractvalue { i32, i32 } %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i45.i)
  %cmp.i6.i46.i = icmp eq i32 %asmresult.i.i45.i, 0
  br i1 %cmp.i6.i46.i, label %if.then2.i.i.i, label %if.end.i.i47.i.copy_to_user.exit.i_crit_edge

if.end.i.i47.i.copy_to_user.exit.i_crit_edge:     ; preds = %if.end.i.i47.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %copy_to_user.exit.i

if.then2.i.i.i:                                   ; preds = %if.end.i.i47.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i48.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %info.i, i32 noundef %33) #14
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %user, ptr noundef nonnull %info.i, i32 noundef %33) #14
  br label %copy_to_user.exit.i

copy_to_user.exit.i:                              ; preds = %if.then2.i.i.i, %if.end.i.i47.i.copy_to_user.exit.i_crit_edge, %if.then.i.i.i.i.copy_to_user.exit.i_crit_edge
  %n.addr.0.i49.i = phi i32 [ %33, %if.then.i.i.i.i.copy_to_user.exit.i_crit_edge ], [ %call.i12.i.i.i, %if.then2.i.i.i ], [ %33, %if.end.i.i47.i.copy_to_user.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i49.i)
  %cmp22.not.i = icmp eq i32 %n.addr.0.i49.i, 0
  %spec.select.i = select i1 %cmp22.not.i, i32 0, i32 -14
  br label %copy_to_user.exit.thread.i

copy_to_user.exit.thread.i:                       ; preds = %copy_to_user.exit.i, %if.then3.i.i.i
  %35 = phi i32 [ -14, %if.then3.i.i.i ], [ %spec.select.i, %copy_to_user.exit.i ]
  call void @xt_table_unlock(ptr noundef %call5.i) #14
  %me.i = getelementptr inbounds %struct.xt_table, ptr %call5.i, i32 0, i32 4
  %36 = ptrtoint ptr %me.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %me.i, align 4
  call void @module_put(ptr noundef %37) #14
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %info.i) #14
  br label %get_info.exit

if.else25.i:                                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  %38 = ptrtoint ptr %call5.i to i32
  br label %get_info.exit

get_info.exit:                                    ; preds = %if.else25.i, %copy_to_user.exit.thread.i, %if.then11.i.i.i, %sw.bb.get_info.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %sw.bb.get_info.exit_crit_edge ], [ %38, %if.else25.i ], [ %35, %copy_to_user.exit.thread.i ], [ -14, %if.then11.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name.i) #14
  %39 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %retval.0.i, ptr %ret, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  %40 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %skc_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %get.i) #14
  %42 = call ptr @memset(ptr %get.i, i32 255, i32 40)
  %43 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %44)
  %cmp.i = icmp ult i32 %44, 40
  br i1 %cmp.i, label %sw.bb4.get_entries.exit_crit_edge, label %if.end8.i.i.i42

sw.bb4.get_entries.exit_crit_edge:                ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_entries.exit

if.end8.i.i.i42:                                  ; preds = %sw.bb4
  tail call void @__might_fault(ptr noundef nonnull @.str.20, i32 noundef 156) #14
  %call.i.i.i41 = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i.i41, label %if.end8.i.i.i42.if.then11.i.i.i56_crit_edge, label %land.lhs.true.i.i.i45

if.end8.i.i.i42.if.then11.i.i.i56_crit_edge:      ; preds = %if.end8.i.i.i42
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i56

land.lhs.true.i.i.i45:                            ; preds = %if.end8.i.i.i42
  %45 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user, i32 40, i32 -1226833920) #20, !srcloc !109
  %asmresult.i.i.i43 = extractvalue { i32, i32 } %45, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i43)
  %cmp.i6.i.i44 = icmp eq i32 %asmresult.i.i.i43, 0
  br i1 %cmp.i6.i.i44, label %if.end.i.i.i53, label %land.lhs.true.i.i.i45.if.then11.i.i.i56_crit_edge, !prof !107

land.lhs.true.i.i.i45.if.then11.i.i.i56_crit_edge: ; preds = %land.lhs.true.i.i.i45
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i56

if.end.i.i.i53:                                   ; preds = %land.lhs.true.i.i.i45
  %call.i.i.i.i46 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %get.i, i32 noundef 40) #14
  %46 = call i32 @llvm.read_register.i32(metadata !92) #14
  %and.i.i.i.i.i.i.i47 = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i.i.i.i.i47 to ptr
  %cpu_domain.i.i.i.i.i.i48 = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 4
  %48 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i48) #7, !srcloc !110
  %and.i.i.i.i.i49 = and i32 %48, -13
  %or.i.i.i.i.i50 = or i32 %and.i.i.i.i.i49, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i50) #14, !srcloc !111
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !112
  %call1.i.i.i.i51 = call i32 @arm_copy_from_user(ptr noundef nonnull %get.i, ptr noundef %user, i32 noundef 40) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %48) #14, !srcloc !111
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i51)
  %tobool4.not.i.i.i52 = icmp eq i32 %call1.i.i.i.i51, 0
  br i1 %tobool4.not.i.i.i52, label %if.end3.i57, label %if.end.i.i.i53.if.then11.i.i.i56_crit_edge, !prof !107

if.end.i.i.i53.if.then11.i.i.i56_crit_edge:       ; preds = %if.end.i.i.i53
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i56

if.then11.i.i.i56:                                ; preds = %if.end.i.i.i53.if.then11.i.i.i56_crit_edge, %land.lhs.true.i.i.i45.if.then11.i.i.i56_crit_edge, %if.end8.i.i.i42.if.then11.i.i.i56_crit_edge
  %res.0.i.i41.i = phi i32 [ %call1.i.i.i.i51, %if.end.i.i.i53.if.then11.i.i.i56_crit_edge ], [ 40, %if.end8.i.i.i42.if.then11.i.i.i56_crit_edge ], [ 40, %land.lhs.true.i.i.i45.if.then11.i.i.i56_crit_edge ]
  %sub.i.i.i54 = sub i32 40, %res.0.i.i41.i
  %add.ptr.i.i.i55 = getelementptr i8, ptr %get.i, i32 %sub.i.i.i54
  %49 = call ptr @memset(ptr %add.ptr.i.i.i55, i32 0, i32 %res.0.i.i41.i)
  br label %get_entries.exit

if.end3.i57:                                      ; preds = %if.end.i.i.i53
  %50 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %len, align 4
  %size.i = getelementptr inbounds %struct.ip6t_get_entries, ptr %get.i, i32 0, i32 1
  %52 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %size.i, align 8
  %add.i = add i32 %53, 40
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %add.i)
  %cmp4.not.i = icmp eq i32 %51, %add.i
  br i1 %cmp4.not.i, label %if.end6.i, label %if.end3.i57.get_entries.exit_crit_edge

if.end3.i57.get_entries.exit_crit_edge:           ; preds = %if.end3.i57
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_entries.exit

if.end6.i:                                        ; preds = %if.end3.i57
  %arrayidx.i = getelementptr inbounds [32 x i8], ptr %get.i, i32 0, i32 31
  %54 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %arrayidx.i, align 1
  %call8.i = call ptr @xt_find_table_lock(ptr noundef %41, i8 noundef zeroext 10, ptr noundef nonnull %get.i) #14
  %cmp.i.i58 = icmp ugt ptr %call8.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i58, label %if.else20.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.end6.i
  %private11.i = getelementptr inbounds %struct.xt_table, ptr %call8.i, i32 0, i32 2
  %55 = ptrtoint ptr %private11.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %private11.i, align 4
  %57 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %size.i, align 8
  %59 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %56, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %60)
  %cmp14.i = icmp eq i32 %58, %60
  br i1 %cmp14.i, label %if.then15.i, label %if.then10.i.if.end19.i_crit_edge

if.then10.i.if.end19.i_crit_edge:                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19.i

if.then15.i:                                      ; preds = %if.then10.i
  %entrytable.i = getelementptr inbounds %struct.ip6t_get_entries, ptr %user, i32 0, i32 2
  %number.i.i.i = getelementptr inbounds %struct.xt_table_info, ptr %56, i32 0, i32 1
  %61 = ptrtoint ptr %number.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %number.i.i.i, align 4
  %mul.i.i.i = shl i32 %62, 4
  %call.i.i33.i = call noalias ptr @vzalloc(i32 noundef %mul.i.i.i) #17
  %cmp.i.i34.i = icmp eq ptr %call.i.i33.i, null
  br i1 %cmp.i.i34.i, label %if.then15.i.if.then.i.i61_crit_edge, label %if.end.i.i35.i

if.then15.i.if.then.i.i61_crit_edge:              ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i61

if.end.i.i35.i:                                   ; preds = %if.then15.i
  %call73.i.i.i.i = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %63 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call73.i.i.i.i, i32 %63)
  %cmp74.i.i.i.i = icmp ult i32 %call73.i.i.i.i, %63
  br i1 %cmp74.i.i.i.i, label %for.body.lr.ph.i.i.i.i, label %if.end.i.i35.i.alloc_counters.exit.i.i_crit_edge

if.end.i.i35.i.alloc_counters.exit.i.i_crit_edge: ; preds = %if.end.i.i35.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %alloc_counters.exit.i.i

for.body.lr.ph.i.i.i.i:                           ; preds = %if.end.i.i35.i
  %entries.i.i.i.i = getelementptr inbounds %struct.xt_table_info, ptr %56, i32 0, i32 8
  br label %for.body.i.i.i.i

for.cond.loopexit.i.i.i.i:                        ; preds = %do.body38.i.i.i.i.for.cond.loopexit.i.i.i.i_crit_edge, %for.body.i.i.i.i.for.cond.loopexit.i.i.i.i_crit_edge
  %call.i.i84.i.i = call i32 @cpumask_next(i32 noundef %call75.i.i.i.i, ptr noundef nonnull @__cpu_possible_mask) #21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %64 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i.i85.i.i = icmp ult i32 %call.i.i84.i.i, %64
  br i1 %cmp.i.i85.i.i, label %for.cond.loopexit.i.i.i.i.for.body.i.i.i.i_crit_edge, label %for.cond.loopexit.i.i.i.i.alloc_counters.exit.i.i_crit_edge

for.cond.loopexit.i.i.i.i.alloc_counters.exit.i.i_crit_edge: ; preds = %for.cond.loopexit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %alloc_counters.exit.i.i

for.cond.loopexit.i.i.i.i.for.body.i.i.i.i_crit_edge: ; preds = %for.cond.loopexit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.cond.loopexit.i.i.i.i.for.body.i.i.i.i_crit_edge, %for.body.lr.ph.i.i.i.i
  %call75.i.i.i.i = phi i32 [ %call73.i.i.i.i, %for.body.lr.ph.i.i.i.i ], [ %call.i.i84.i.i, %for.cond.loopexit.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %arrayidx.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call75.i.i.i.i
  %65 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %66, ptrtoint (ptr @xt_recseq to i32)
  %67 = inttoptr i32 %add.i.i.i.i to ptr
  %68 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %56, align 8
  %add.ptr69.i.i.i.i = getelementptr i8, ptr %entries.i.i.i.i, i32 %69
  %cmp570.i.i.i.i = icmp ult ptr %entries.i.i.i.i, %add.ptr69.i.i.i.i
  br i1 %cmp570.i.i.i.i, label %for.body6.lr.ph.i.i.i.i, label %for.body.i.i.i.i.for.cond.loopexit.i.i.i.i_crit_edge

for.body.i.i.i.i.for.cond.loopexit.i.i.i.i_crit_edge: ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.loopexit.i.i.i.i

for.body6.lr.ph.i.i.i.i:                          ; preds = %for.body.i.i.i.i
  %dep_map.c48.i.i.i.i.i = getelementptr inbounds %struct.seqcount, ptr %67, i32 0, i32 1
  br label %for.body6.i.i.i.i

for.body6.i.i.i.i:                                ; preds = %do.body38.i.i.i.i.for.body6.i.i.i.i_crit_edge, %for.body6.lr.ph.i.i.i.i
  %iter.072.i.i.i.i = phi ptr [ %entries.i.i.i.i, %for.body6.lr.ph.i.i.i.i ], [ %add.ptr49.i.i.i.i, %do.body38.i.i.i.i.for.body6.i.i.i.i_crit_edge ]
  %i.071.i.i.i.i = phi i32 [ 0, %for.body6.lr.ph.i.i.i.i ], [ %inc.i.i.i.i, %do.body38.i.i.i.i.for.body6.i.i.i.i_crit_edge ]
  %counters8.i.i.i.i = getelementptr inbounds %struct.ip6t_entry, ptr %iter.072.i.i.i.i, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %70 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %70)
  %cmp.i.i.i.i.i = icmp ugt i32 %70, 1
  br i1 %cmp.i.i.i.i.i, label %do.body.i.i.i.i.i, label %for.body6.i.i.i.i.xt_get_per_cpu_counter.exit.i.i.i.i_crit_edge

for.body6.i.i.i.i.xt_get_per_cpu_counter.exit.i.i.i.i_crit_edge: ; preds = %for.body6.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %xt_get_per_cpu_counter.exit.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %for.body6.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %71 = ptrtoint ptr %counters8.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %counters8.i.i.i.i, align 8
  %conv.i.i.i.i.i = trunc i64 %72 to i32
  %73 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %74, %conv.i.i.i.i.i
  %75 = inttoptr i32 %add.i.i.i.i.i to ptr
  br label %xt_get_per_cpu_counter.exit.i.i.i.i

xt_get_per_cpu_counter.exit.i.i.i.i:              ; preds = %do.body.i.i.i.i.i, %for.body6.i.i.i.i.xt_get_per_cpu_counter.exit.i.i.i.i_crit_edge
  %retval.0.i.i.i.i.i = phi ptr [ %75, %do.body.i.i.i.i.i ], [ %counters8.i.i.i.i, %for.body6.i.i.i.i.xt_get_per_cpu_counter.exit.i.i.i.i_crit_edge ]
  %bcnt31.i.i.i.i = getelementptr inbounds %struct.xt_counters, ptr %retval.0.i.i.i.i.i, i32 0, i32 1
  br label %do.body10.i.i.i.i

do.body10.i.i.i.i:                                ; preds = %while.end.i.i.i.i.do.body10.i.i.i.i_crit_edge, %xt_get_per_cpu_counter.exit.i.i.i.i
  %76 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !114
  %and.i.i.i.i.i.i59 = and i32 %76, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i59)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i59, 0
  br i1 %tobool.not.i.i.i.i.i, label %if.then.i.i.i.i.i, label %do.body24.critedge.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %do.body10.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @trace_hardirqs_off() #14
  %77 = call ptr @llvm.returnaddress(i32 0) #14
  %78 = ptrtoint ptr %77 to i32
  call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %78) #14
  call void @lock_release(ptr noundef %dep_map.c48.i.i.i.i.i, i32 noundef %78) #14
  call void @trace_hardirqs_on() #14
  br label %do.body24.i.i.i.i.i

do.body24.critedge.i.i.i.i.i:                     ; preds = %do.body10.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %79 = call ptr @llvm.returnaddress(i32 0) #14
  %80 = ptrtoint ptr %79 to i32
  call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %80) #14
  call void @lock_release(ptr noundef %dep_map.c48.i.i.i.i.i, i32 noundef %80) #14
  br label %do.body24.i.i.i.i.i

do.body24.i.i.i.i.i:                              ; preds = %do.body24.critedge.i.i.i.i.i, %if.then.i.i.i.i.i
  %81 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !115
  %and.i.i.i.i.i.i36.i = and i32 %81, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i36.i)
  %tobool32.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i36.i, 0
  br i1 %tobool32.not.i.i.i.i.i, label %if.then36.i.i.i.i.i, label %do.body24.i.i.i.i.i.seqcount_lockdep_reader_access.exit.i.i.i.i_crit_edge, !prof !102

do.body24.i.i.i.i.i.seqcount_lockdep_reader_access.exit.i.i.i.i_crit_edge: ; preds = %do.body24.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %seqcount_lockdep_reader_access.exit.i.i.i.i

if.then36.i.i.i.i.i:                              ; preds = %do.body24.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @warn_bogus_irq_restore() #14
  br label %seqcount_lockdep_reader_access.exit.i.i.i.i

seqcount_lockdep_reader_access.exit.i.i.i.i:      ; preds = %if.then36.i.i.i.i.i, %do.body24.i.i.i.i.i.seqcount_lockdep_reader_access.exit.i.i.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %76) #14, !srcloc !116
  %82 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %67, align 4
  %and67.i.i.i.i = and i32 %83, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67.i.i.i.i)
  %tobool.not68.i.i.i.i = icmp eq i32 %and67.i.i.i.i, 0
  br i1 %tobool.not68.i.i.i.i, label %seqcount_lockdep_reader_access.exit.i.i.i.i.while.end.i.i.i.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.i.i.i.do.end18.i.i.i.i_crit_edge

seqcount_lockdep_reader_access.exit.i.i.i.i.do.end18.i.i.i.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i.i.i
  br label %do.end18.i.i.i.i

seqcount_lockdep_reader_access.exit.i.i.i.i.while.end.i.i.i.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i.i.i.i

do.end18.i.i.i.i:                                 ; preds = %do.end18.i.i.i.i.do.end18.i.i.i.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.i.i.do.end18.i.i.i.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !117
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !118
  %84 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %67, align 4
  %and.i.i.i.i60 = and i32 %85, 1
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i60, 0
  br i1 %tobool.not.i.i.i.i, label %do.end18.i.i.i.i.while.end.i.i.i.i_crit_edge, label %do.end18.i.i.i.i.do.end18.i.i.i.i_crit_edge

do.end18.i.i.i.i.do.end18.i.i.i.i_crit_edge:      ; preds = %do.end18.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end18.i.i.i.i

do.end18.i.i.i.i.while.end.i.i.i.i_crit_edge:     ; preds = %do.end18.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i.i.i.i

while.end.i.i.i.i:                                ; preds = %do.end18.i.i.i.i.while.end.i.i.i.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.i.i.while.end.i.i.i.i_crit_edge
  %.lcssa.i.i.i.i = phi i32 [ %83, %seqcount_lockdep_reader_access.exit.i.i.i.i.while.end.i.i.i.i_crit_edge ], [ %85, %do.end18.i.i.i.i.while.end.i.i.i.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !119
  %86 = ptrtoint ptr %bcnt31.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %bcnt31.i.i.i.i, align 8
  %88 = ptrtoint ptr %retval.0.i.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %retval.0.i.i.i.i.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !120
  %90 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %67, align 4
  %cmp.i.i.not.i.i.i.i = icmp eq i32 %91, %.lcssa.i.i.i.i
  br i1 %cmp.i.i.not.i.i.i.i, label %do.body38.i.i.i.i, label %while.end.i.i.i.i.do.body10.i.i.i.i_crit_edge

while.end.i.i.i.i.do.body10.i.i.i.i_crit_edge:    ; preds = %while.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body10.i.i.i.i

do.body38.i.i.i.i:                                ; preds = %while.end.i.i.i.i
  %arrayidx39.i.i.i.i = getelementptr %struct.xt_counters, ptr %call.i.i33.i, i32 %i.071.i.i.i.i
  %bcnt40.i.i.i.i = getelementptr %struct.xt_counters, ptr %call.i.i33.i, i32 %i.071.i.i.i.i, i32 1
  %92 = ptrtoint ptr %bcnt40.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %bcnt40.i.i.i.i, align 8
  %add41.i.i.i.i = add i64 %93, %87
  store i64 %add41.i.i.i.i, ptr %bcnt40.i.i.i.i, align 8
  %94 = ptrtoint ptr %arrayidx39.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %arrayidx39.i.i.i.i, align 8
  %add44.i.i.i.i = add i64 %95, %89
  store i64 %add44.i.i.i.i, ptr %arrayidx39.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %i.071.i.i.i.i, 1
  call void @__might_resched(ptr noundef nonnull @.str.3, i32 noundef 783, i32 noundef 0) #14
  %call.i.i.i86.i.i = call i32 @__cond_resched() #14
  %next_offset.i.i.i.i = getelementptr inbounds %struct.ip6t_entry, ptr %iter.072.i.i.i.i, i32 0, i32 3
  %96 = ptrtoint ptr %next_offset.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %next_offset.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %97 to i32
  %add.ptr49.i.i.i.i = getelementptr i8, ptr %iter.072.i.i.i.i, i32 %conv.i.i.i.i
  %98 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %56, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %entries.i.i.i.i, i32 %99
  %cmp5.i.i.i.i = icmp ult ptr %add.ptr49.i.i.i.i, %add.ptr.i.i.i.i
  br i1 %cmp5.i.i.i.i, label %do.body38.i.i.i.i.for.body6.i.i.i.i_crit_edge, label %do.body38.i.i.i.i.for.cond.loopexit.i.i.i.i_crit_edge

do.body38.i.i.i.i.for.cond.loopexit.i.i.i.i_crit_edge: ; preds = %do.body38.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.loopexit.i.i.i.i

do.body38.i.i.i.i.for.body6.i.i.i.i_crit_edge:    ; preds = %do.body38.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body6.i.i.i.i

alloc_counters.exit.i.i:                          ; preds = %for.cond.loopexit.i.i.i.i.alloc_counters.exit.i.i_crit_edge, %if.end.i.i35.i.alloc_counters.exit.i.i_crit_edge
  %cmp.i87.i.i = icmp ugt ptr %call.i.i33.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i87.i.i, label %alloc_counters.exit.i.i.if.then.i.i61_crit_edge, label %if.end.i.i62

alloc_counters.exit.i.i.if.then.i.i61_crit_edge:  ; preds = %alloc_counters.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i61

if.then.i.i61:                                    ; preds = %alloc_counters.exit.i.i.if.then.i.i61_crit_edge, %if.then15.i.if.then.i.i61_crit_edge
  %retval.0.i93.i.i = phi ptr [ %call.i.i33.i, %alloc_counters.exit.i.i.if.then.i.i61_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then15.i.if.then.i.i61_crit_edge ]
  %100 = ptrtoint ptr %retval.0.i93.i.i to i32
  br label %if.end19.i

if.end.i.i62:                                     ; preds = %alloc_counters.exit.i.i
  %entries.i.i = getelementptr inbounds %struct.xt_table_info, ptr %56, i32 0, i32 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp108.not.i.i = icmp eq i32 %58, 0
  br i1 %cmp108.not.i.i, label %if.end.i.i62.free_counters.i.i_crit_edge, label %if.end.i.i62.for.body.i.i_crit_edge

if.end.i.i62.for.body.i.i_crit_edge:              ; preds = %if.end.i.i62
  br label %for.body.i.i

if.end.i.i62.free_counters.i.i_crit_edge:         ; preds = %if.end.i.i62
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_counters.i.i

for.body.i.i:                                     ; preds = %for.inc37.i.i.for.body.i.i_crit_edge, %if.end.i.i62.for.body.i.i_crit_edge
  %num.0110.i.i = phi i32 [ %inc.i.i, %for.inc37.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i.i62.for.body.i.i_crit_edge ]
  %off.0109.i.i = phi i32 [ %add39.i.i, %for.inc37.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i.i62.for.body.i.i_crit_edge ]
  %add.ptr.i.i63 = getelementptr i8, ptr %entries.i.i, i32 %off.0109.i.i
  %add.ptr4.i.i = getelementptr i8, ptr %entrytable.i, i32 %off.0109.i.i
  call void @__might_fault(ptr noundef nonnull @.str.20, i32 noundef 174) #14
  %call.i.i.i37.i = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i.i37.i, label %for.body.i.i.free_counters.i.i_crit_edge, label %if.end.i.i.i.i

for.body.i.i.free_counters.i.i_crit_edge:         ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_counters.i.i

if.end.i.i.i.i:                                   ; preds = %for.body.i.i
  %101 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr4.i.i, i32 168, i32 -1226833920) #20, !srcloc !113
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %101, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i6.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i, label %copy_to_user.exit.i.i, label %if.end.i.i.i.i.free_counters.i.i_crit_edge

if.end.i.i.i.i.free_counters.i.i_crit_edge:       ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_counters.i.i

copy_to_user.exit.i.i:                            ; preds = %if.end.i.i.i.i
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr.i.i63, i32 noundef 168) #14
  %call.i12.i.i.i.i = call i32 @arm_copy_to_user(ptr noundef %add.ptr4.i.i, ptr noundef %add.ptr.i.i63, i32 noundef 168) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i12.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end7.i.i, label %copy_to_user.exit.i.i.free_counters.i.i_crit_edge

copy_to_user.exit.i.i.free_counters.i.i_crit_edge: ; preds = %copy_to_user.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_counters.i.i

if.end7.i.i:                                      ; preds = %copy_to_user.exit.i.i
  %add.ptr9.i.i = getelementptr i8, ptr %add.ptr4.i.i, i32 152
  %arrayidx.i.i = getelementptr %struct.xt_counters, ptr %call.i.i33.i, i32 %num.0110.i.i
  call void @__might_fault(ptr noundef nonnull @.str.20, i32 noundef 174) #14
  %call.i.i75.i.i = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i75.i.i, label %if.end7.i.i.free_counters.i.i_crit_edge, label %if.end.i.i78.i.i

if.end7.i.i.free_counters.i.i_crit_edge:          ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_counters.i.i

if.end.i.i78.i.i:                                 ; preds = %if.end7.i.i
  %102 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr9.i.i, i32 16, i32 -1226833920) #20, !srcloc !113
  %asmresult.i.i76.i.i = extractvalue { i32, i32 } %102, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i76.i.i)
  %cmp.i6.i77.i.i = icmp eq i32 %asmresult.i.i76.i.i, 0
  br i1 %cmp.i6.i77.i.i, label %copy_to_user.exit83.i.i, label %if.end.i.i78.i.i.free_counters.i.i_crit_edge

if.end.i.i78.i.i.free_counters.i.i_crit_edge:     ; preds = %if.end.i.i78.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_counters.i.i

copy_to_user.exit83.i.i:                          ; preds = %if.end.i.i78.i.i
  %call.i.i.i79.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i.i, i32 noundef 16) #14
  %call.i12.i.i80.i.i = call i32 @arm_copy_to_user(ptr noundef %add.ptr9.i.i, ptr noundef %arrayidx.i.i, i32 noundef 16) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i80.i.i)
  %cmp11.not.i.i = icmp eq i32 %call.i12.i.i80.i.i, 0
  br i1 %cmp11.not.i.i, label %for.cond14.preheader.i.i, label %copy_to_user.exit83.i.i.free_counters.i.i_crit_edge

copy_to_user.exit83.i.i.free_counters.i.i_crit_edge: ; preds = %copy_to_user.exit83.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_counters.i.i

for.cond14.preheader.i.i:                         ; preds = %copy_to_user.exit83.i.i
  %target_offset.i.i = getelementptr inbounds %struct.ip6t_entry, ptr %add.ptr.i.i63, i32 0, i32 2
  %103 = ptrtoint ptr %target_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %target_offset.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 168, i16 %104)
  %cmp15106.i.i = icmp ugt i16 %104, 168
  br i1 %cmp15106.i.i, label %for.cond14.preheader.i.i.for.body17.i.i_crit_edge, label %for.cond14.preheader.i.i.for.end.i.i_crit_edge

for.cond14.preheader.i.i.for.end.i.i_crit_edge:   ; preds = %for.cond14.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i

for.cond14.preheader.i.i.for.body17.i.i_crit_edge: ; preds = %for.cond14.preheader.i.i
  br label %for.body17.i.i

for.body17.i.i:                                   ; preds = %for.inc.i.i.for.body17.i.i_crit_edge, %for.cond14.preheader.i.i.for.body17.i.i_crit_edge
  %i.0107.i.i = phi i32 [ %add.i.i, %for.inc.i.i.for.body17.i.i_crit_edge ], [ 168, %for.cond14.preheader.i.i.for.body17.i.i_crit_edge ]
  %add.ptr18.i.i = getelementptr i8, ptr %add.ptr.i.i63, i32 %i.0107.i.i
  %add.ptr20.i.i = getelementptr i8, ptr %add.ptr4.i.i, i32 %i.0107.i.i
  %call21.i.i = call i32 @xt_match_to_user(ptr noundef %add.ptr18.i.i, ptr noundef %add.ptr20.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i.i)
  %tobool22.not.i.i = icmp eq i32 %call21.i.i, 0
  br i1 %tobool22.not.i.i, label %for.inc.i.i, label %for.body17.i.i.free_counters.i.i_crit_edge

for.body17.i.i.free_counters.i.i_crit_edge:       ; preds = %for.body17.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_counters.i.i

for.inc.i.i:                                      ; preds = %for.body17.i.i
  %105 = ptrtoint ptr %add.ptr18.i.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %add.ptr18.i.i, align 4
  %conv25.i.i = zext i16 %106 to i32
  %add.i.i = add i32 %i.0107.i.i, %conv25.i.i
  %107 = ptrtoint ptr %target_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %target_offset.i.i, align 4
  %conv.i.i = zext i16 %108 to i32
  %cmp15.i.i = icmp ult i32 %add.i.i, %conv.i.i
  br i1 %cmp15.i.i, label %for.inc.i.i.for.body17.i.i_crit_edge, label %for.inc.i.i.for.end.i.i_crit_edge

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i

for.inc.i.i.for.body17.i.i_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body17.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %for.cond14.preheader.i.i.for.end.i.i_crit_edge
  %.lcssa82.sink = phi i16 [ %104, %for.cond14.preheader.i.i.for.end.i.i_crit_edge ], [ %108, %for.inc.i.i.for.end.i.i_crit_edge ]
  %conv.i.i.le = zext i16 %.lcssa82.sink to i32
  %add.ptr.i.i89.i.i = getelementptr i8, ptr %add.ptr.i.i63, i32 %conv.i.i.le
  %add.ptr30.i.i = getelementptr i8, ptr %add.ptr4.i.i, i32 %conv.i.i.le
  %call31.i.i = call i32 @xt_target_to_user(ptr noundef %add.ptr.i.i89.i.i, ptr noundef %add.ptr30.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i.i)
  %tobool32.not.i.i = icmp eq i32 %call31.i.i, 0
  br i1 %tobool32.not.i.i, label %for.inc37.i.i, label %for.end.i.i.free_counters.i.i_crit_edge

for.end.i.i.free_counters.i.i_crit_edge:          ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_counters.i.i

for.inc37.i.i:                                    ; preds = %for.end.i.i
  %next_offset.i.i = getelementptr inbounds %struct.ip6t_entry, ptr %add.ptr.i.i63, i32 0, i32 3
  %109 = ptrtoint ptr %next_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %next_offset.i.i, align 2
  %conv38.i.i = zext i16 %110 to i32
  %add39.i.i = add i32 %off.0109.i.i, %conv38.i.i
  %inc.i.i = add i32 %num.0110.i.i, 1
  %cmp.i38.i = icmp ult i32 %add39.i.i, %58
  br i1 %cmp.i38.i, label %for.inc37.i.i.for.body.i.i_crit_edge, label %for.inc37.i.i.free_counters.i.i_crit_edge

for.inc37.i.i.free_counters.i.i_crit_edge:        ; preds = %for.inc37.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_counters.i.i

for.inc37.i.i.for.body.i.i_crit_edge:             ; preds = %for.inc37.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

free_counters.i.i:                                ; preds = %for.inc37.i.i.free_counters.i.i_crit_edge, %for.end.i.i.free_counters.i.i_crit_edge, %for.body17.i.i.free_counters.i.i_crit_edge, %copy_to_user.exit83.i.i.free_counters.i.i_crit_edge, %if.end.i.i78.i.i.free_counters.i.i_crit_edge, %if.end7.i.i.free_counters.i.i_crit_edge, %copy_to_user.exit.i.i.free_counters.i.i_crit_edge, %if.end.i.i.i.i.free_counters.i.i_crit_edge, %for.body.i.i.free_counters.i.i_crit_edge, %if.end.i.i62.free_counters.i.i_crit_edge
  %ret.2.i.i = phi i32 [ 0, %if.end.i.i62.free_counters.i.i_crit_edge ], [ -14, %for.body17.i.i.free_counters.i.i_crit_edge ], [ 0, %for.inc37.i.i.free_counters.i.i_crit_edge ], [ -14, %copy_to_user.exit.i.i.free_counters.i.i_crit_edge ], [ -14, %copy_to_user.exit83.i.i.free_counters.i.i_crit_edge ], [ -14, %for.end.i.i.free_counters.i.i_crit_edge ], [ -14, %for.body.i.i.free_counters.i.i_crit_edge ], [ -14, %if.end.i.i.i.i.free_counters.i.i_crit_edge ], [ -14, %if.end7.i.i.free_counters.i.i_crit_edge ], [ -14, %if.end.i.i78.i.i.free_counters.i.i_crit_edge ]
  call void @vfree(ptr noundef nonnull %call.i.i33.i) #14
  br label %if.end19.i

if.end19.i:                                       ; preds = %free_counters.i.i, %if.then.i.i61, %if.then10.i.if.end19.i_crit_edge
  %ret.0.i = phi i32 [ -11, %if.then10.i.if.end19.i_crit_edge ], [ %100, %if.then.i.i61 ], [ %ret.2.i.i, %free_counters.i.i ]
  %me.i64 = getelementptr inbounds %struct.xt_table, ptr %call8.i, i32 0, i32 4
  %111 = ptrtoint ptr %me.i64 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %me.i64, align 4
  call void @module_put(ptr noundef %112) #14
  call void @xt_table_unlock(ptr noundef %call8.i) #14
  br label %get_entries.exit

if.else20.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  %113 = ptrtoint ptr %call8.i to i32
  br label %get_entries.exit

get_entries.exit:                                 ; preds = %if.else20.i, %if.end19.i, %if.end3.i57.get_entries.exit_crit_edge, %if.then11.i.i.i56, %sw.bb4.get_entries.exit_crit_edge
  %retval.0.i65 = phi i32 [ -22, %sw.bb4.get_entries.exit_crit_edge ], [ -22, %if.end3.i57.get_entries.exit_crit_edge ], [ %113, %if.else20.i ], [ %ret.0.i, %if.end19.i ], [ -14, %if.then11.i.i.i56 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %get.i) #14
  %114 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %retval.0.i65, ptr %ret, align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end.sw.bb7_crit_edge, %if.end.sw.bb7_crit_edge94
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %rev) #14
  %115 = getelementptr inbounds [29 x i8], ptr %rev, i32 0, i32 28
  %116 = getelementptr inbounds %struct.xt_get_revision, ptr %rev, i32 0, i32 1
  %117 = call ptr @memset(ptr %rev, i32 255, i32 30)
  %118 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %119)
  %cmp.not = icmp eq i32 %119, 30
  br i1 %cmp.not, label %if.end8.i.i, label %if.then8

if.then8:                                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #16
  %120 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 -22, ptr %ret, align 4
  br label %cleanup

if.end8.i.i:                                      ; preds = %sw.bb7
  tail call void @__might_fault(ptr noundef nonnull @.str.20, i32 noundef 156) #14
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i, label %if.end8.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end8.i.i.if.then11.i.i_crit_edge:              ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end8.i.i
  %121 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user, i32 30, i32 -1226833920) #20, !srcloc !109
  %asmresult.i.i = extractvalue { i32, i32 } %121, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !107

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %rev, i32 noundef 30) #14
  %122 = call i32 @llvm.read_register.i32(metadata !92) #14
  %and.i.i.i.i.i.i = and i32 %122, -16384
  %123 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %123, i32 0, i32 4
  %124 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !110
  %and.i.i.i.i = and i32 %124, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #14, !srcloc !111
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !112
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %rev, ptr noundef %user, i32 noundef 30) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %124) #14, !srcloc !111
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end13, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !107

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end8.i.i.if.then11.i.i_crit_edge
  %res.0.i.i68 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 30, %if.end8.i.i.if.then11.i.i_crit_edge ], [ 30, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 30, %res.0.i.i68
  %add.ptr.i.i = getelementptr i8, ptr %rev, i32 %sub.i.i
  %125 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i68)
  %126 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 -14, ptr %ret, align 4
  br label %cleanup

if.end13:                                         ; preds = %if.end.i.i
  %127 = ptrtoint ptr %115 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 0, ptr %115, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 69, i32 %cmd)
  %cmp14 = icmp eq i32 %cmd, 69
  %. = zext i1 %cmp14 to i32
  %128 = ptrtoint ptr %116 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %116, align 1
  %call18 = call i32 @xt_find_revision(i8 noundef zeroext 10, ptr noundef nonnull %rev, i8 noundef zeroext %129, i32 noundef %., ptr noundef nonnull %ret) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool.not = icmp eq i32 %call18, 0
  br i1 %tobool.not, label %cond.false, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cond.false:                                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  %call21 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.23, ptr noundef nonnull %rev) #14
  %130 = ptrtoint ptr %116 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %116, align 1
  %call25 = call i32 @xt_find_revision(i8 noundef zeroext 10, ptr noundef nonnull %rev, i8 noundef zeroext %131, i32 noundef %., ptr noundef nonnull %ret) #14
  br label %cleanup

cleanup:                                          ; preds = %cond.false, %if.end13.cleanup_crit_edge, %if.then11.i.i, %if.then8
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %rev) #14
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %132 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 -22, ptr %ret, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %cleanup, %get_entries.exit, %get_info.exit
  %133 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %ret, align 4
  br label %cleanup27

cleanup27:                                        ; preds = %sw.epilog, %entry.cleanup27_crit_edge
  %retval.0 = phi i32 [ %134, %sw.epilog ], [ -1, %entry.cleanup27_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xt_counters_alloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xt_request_find_table_lock(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xt_replace_table(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_table_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xt_copy_counters([2 x i32], i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xt_find_table_lock(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_find_revision(i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_match_to_user(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_target_to_user(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @icmp6_match(ptr noundef %skb, ptr nocapture noundef %par) #0 align 64 {
entry:
  %_icmph = alloca %struct.icmp6hdr, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_icmph) #14
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %_icmph to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %_icmph, align 8
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %0, align 4
  %fragoff = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 4
  %4 = ptrtoint ptr %fragoff to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %fragoff, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp.not = icmp eq i16 %5, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %thoff = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 3
  %6 = ptrtoint ptr %thoff to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %thoff, align 4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %8 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %10 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_len.i.i, align 8
  %12 = add i32 %7, %11
  %sub.i1.i = sub i32 %9, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %sub.i1.i)
  %cmp.i.i = icmp sgt i32 %sub.i1.i, 7
  br i1 %cmp.i.i, label %skb_header_pointer.exit, label %if.end.i.i, !prof !107

if.end.i.i:                                       ; preds = %if.end
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.then4_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.if.then4_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then4

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %7, ptr noundef nonnull %_icmph, i32 noundef 8) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.if.then4_crit_edge, label %lor.lhs.false.i.i.if.end5_crit_edge

lor.lhs.false.i.i.if.end5_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

lor.lhs.false.i.i.if.then4_crit_edge:             ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then4

skb_header_pointer.exit:                          ; preds = %if.end
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %13 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 %7
  %cmp2 = icmp eq ptr %add.ptr.i.i, null
  br i1 %cmp2, label %skb_header_pointer.exit.if.then4_crit_edge, label %skb_header_pointer.exit.if.end5_crit_edge

skb_header_pointer.exit.if.end5_crit_edge:        ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

skb_header_pointer.exit.if.then4_crit_edge:       ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then4

if.then4:                                         ; preds = %skb_header_pointer.exit.if.then4_crit_edge, %lor.lhs.false.i.i.if.then4_crit_edge, %if.end.i.i.if.then4_crit_edge
  %hotdrop = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 5
  %15 = ptrtoint ptr %hotdrop to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %hotdrop, align 2
  br label %cleanup

if.end5:                                          ; preds = %skb_header_pointer.exit.if.end5_crit_edge, %lor.lhs.false.i.i.if.end5_crit_edge
  %retval.0.i.i26 = phi ptr [ %add.ptr.i.i, %skb_header_pointer.exit.if.end5_crit_edge ], [ %_icmph, %lor.lhs.false.i.i.if.end5_crit_edge ]
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %3, align 1
  %code = getelementptr inbounds %struct.ip6t_icmp, ptr %3, i32 0, i32 1
  %18 = ptrtoint ptr %code to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %code, align 1
  %arrayidx7 = getelementptr %struct.ip6t_icmp, ptr %3, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx7, align 1
  %22 = ptrtoint ptr %retval.0.i.i26 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %retval.0.i.i26, align 4
  %icmp6_code = getelementptr inbounds %struct.icmp6hdr, ptr %retval.0.i.i26, i32 0, i32 1
  %24 = ptrtoint ptr %icmp6_code to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %icmp6_code, align 1
  %invflags = getelementptr inbounds %struct.ip6t_icmp, ptr %3, i32 0, i32 2
  %26 = ptrtoint ptr %invflags to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %invflags, align 1
  %28 = and i8 %27, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool = icmp ne i8 %28, 0
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %17)
  %cmp.i = icmp eq i8 %23, %17
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %19)
  %cmp5.not.i = icmp uge i8 %25, %19
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %21)
  %cmp9.i = icmp ule i8 %25, %21
  %not.or.cond.i = and i1 %cmp.i, %cmp5.not.i
  %narrow.i = and i1 %cmp9.i, %not.or.cond.i
  %tobool12.i = xor i1 %narrow.i, %tobool
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.then4 ], [ %tobool12.i, %if.end5 ], [ false, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_icmph) #14
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @icmp6_checkentry(ptr nocapture noundef readonly %par) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %matchinfo = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %matchinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %matchinfo, align 4
  %invflags = getelementptr inbounds %struct.ip6t_icmp, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %invflags to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %invflags, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %tobool.not = icmp ult i8 %3, 2
  %cond = select i1 %tobool.not, i32 0, i32 -22
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip6t_error(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %par) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %2) #22
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip6_tables_net_init(ptr noundef %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_proto_init(ptr noundef %net, i8 noundef zeroext 10) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ip6_tables_net_exit(ptr noundef %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @xt_proto_fini(ptr noundef %net, i8 noundef zeroext 10) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_proto_init(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_proto_fini(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_targets(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_matches(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_register_sockopt(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #12 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly nofree nounwind readonly willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nobuiltin nounwind }
attributes #19 = { nobuiltin }
attributes #20 = { nounwind readnone }
attributes #21 = { nounwind readonly willreturn }
attributes #22 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !70, !72, !74, !76, !77, !78, !79, !81, !83, !85, !87, !88, !89, !90}
!llvm.named.register.sp = !{!92}
!llvm.module.flags = !{!93, !94, !95, !96, !97, !98, !99, !100}
!llvm.ident = !{!101}

!0 = !{ptr @__UNIQUE_ID_file618, !1, !"__UNIQUE_ID_file618", i1 false, i1 false}
!1 = !{!"../net/ipv6/netfilter/ip6_tables.c", i32 35, i32 1}
!2 = !{ptr @__UNIQUE_ID_license619, !1, !"__UNIQUE_ID_license619", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author620, !4, !"__UNIQUE_ID_author620", i1 false, i1 false}
!4 = !{!"../net/ipv6/netfilter/ip6_tables.c", i32 36, i32 1}
!5 = !{ptr @__UNIQUE_ID_description621, !6, !"__UNIQUE_ID_description621", i1 false, i1 false}
!6 = !{!"../net/ipv6/netfilter/ip6_tables.c", i32 37, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias622, !8, !"__UNIQUE_ID_alias622", i1 false, i1 false}
!8 = !{!"../net/ipv6/netfilter/ip6_tables.c", i32 38, i32 1}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../net/ipv6/netfilter/ip6_tables.c", i32 42, i32 9}
!11 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!12 = distinct !{null, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @__ksymtab_ip6t_alloc_initial_table, !14, !"__ksymtab_ip6t_alloc_initial_table", i1 false, i1 false}
!14 = !{!"../net/ipv6/netfilter/ip6_tables.c", i32 44, i32 1}
!15 = !{ptr @ip6t_do_table.nulldevname, !16, !"nulldevname", i1 false, i1 false}
!16 = !{!"../net/ipv6/netfilter/ip6_tables.c", i32 255, i32 20}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/ipv6/netfilter/ip6_tables.c", i32 280, i32 2}
!19 = distinct !{null, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/ipv6/netfilter/ip6_tables.c", i32 297, i32 37}
!21 = !{ptr @__ksymtab_ip6t_register_table, !22, !"__ksymtab_ip6t_register_table", i1 false, i1 false}
!22 = !{!"../net/ipv6/netfilter/ip6_tables.c", i32 1951, i32 1}
!23 = !{ptr @__ksymtab_ip6t_unregister_table_pre_exit, !24, !"__ksymtab_ip6t_unregister_table_pre_exit", i1 false, i1 false}
!24 = !{!"../net/ipv6/netfilter/ip6_tables.c", i32 1952, i32 1}
!25 = !{ptr @__ksymtab_ip6t_unregister_table_exit, !26, !"__ksymtab_ip6t_unregister_table_exit", i1 false, i1 false}
!26 = !{!"../net/ipv6/netfilter/ip6_tables.c", i32 1953, i32 1}
!27 = !{ptr @__ksymtab_ip6t_do_table, !28, !"__ksymtab_ip6t_do_table", i1 false, i1 false}
!28 = !{!"../net/ipv6/netfilter/ip6_tables.c", i32 1954, i32 1}
!29 = !{ptr @__initcall__kmod_ip6_tables__624_1956_ip6_tables_init6, !30, !"__initcall__kmod_ip6_tables__624_1956_ip6_tables_init6", i1 false, i1 false}
!30 = !{!"../net/ipv6/netfilter/ip6_tables.c", i32 1956, i32 1}
!31 = !{ptr @__exitcall_ip6_tables_fini, !32, !"__exitcall_ip6_tables_fini", i1 false, i1 false}
!32 = !{!"../net/ipv6/netfilter/ip6_tables.c", i32 1957, i32 1}
!33 = distinct !{null, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../include/linux/netfilter/x_tables.h", i32 379, i32 2}
!35 = !{ptr @.str.6, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../net/ipv6/netfilter/ip6_tables.c", i32 237, i32 8}
!37 = !{ptr @.str.7, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../net/ipv6/netfilter/ip6_tables.c", i32 152, i32 27}
!39 = !{ptr @.str.8, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../net/ipv6/netfilter/ip6_tables.c", i32 153, i32 24}
!41 = !{ptr @.str.9, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../net/ipv6/netfilter/ip6_tables.c", i32 154, i32 23}
!43 = !{ptr @.str.10, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../net/ipv6/netfilter/ip6_tables.c", i32 155, i32 25}
!45 = !{ptr @.str.11, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../net/ipv6/netfilter/ip6_tables.c", i32 156, i32 28}
!47 = !{ptr @hooknames, !48, !"hooknames", i1 false, i1 false}
!48 = !{!"../net/ipv6/netfilter/ip6_tables.c", i32 151, i32 26}
!49 = !{ptr @.str.12, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../net/ipv6/netfilter/ip6_tables.c", i32 166, i32 32}
!51 = !{ptr @.str.13, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../net/ipv6/netfilter/ip6_tables.c", i32 167, i32 34}
!53 = !{ptr @.str.14, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../net/ipv6/netfilter/ip6_tables.c", i32 168, i32 34}
!55 = distinct !{null, !56, !"comments", i1 false, i1 false}
!56 = !{!"../net/ipv6/netfilter/ip6_tables.c", i32 165, i32 26}
!57 = !{ptr @.str.15, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../net/ipv6/netfilter/ip6_tables.c", i32 189, i32 46}
!59 = distinct !{null, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../net/ipv6/netfilter/ip6_tables.c", i32 198, i32 7}
!61 = !{ptr @unconditional.uncond, !62, !"uncond", i1 false, i1 false}
!62 = !{!"../net/ipv6/netfilter/ip6_tables.c", i32 137, i32 31}
!63 = !{ptr @trace_loginfo, !64, !"trace_loginfo", i1 false, i1 false}
!64 = !{!"../net/ipv6/netfilter/ip6_tables.c", i32 171, i32 32}
!65 = !{ptr @ip6t_sockopts, !66, !"ip6t_sockopts", i1 false, i1 false}
!66 = !{!"../net/ipv6/netfilter/ip6_tables.c", i32 1871, i32 30}
!67 = distinct !{null, !68, !"__already_done", i1 false, i1 false}
!68 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!69 = !{ptr @.str.18, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.19, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!72 = !{ptr @.str.20, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!74 = !{ptr @.str.21, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../net/ipv6/netfilter/ip6_tables.c", i32 1108, i32 3}
!76 = !{ptr @.str.22, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @__do_replace._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @__do_replace._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.23, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../net/ipv6/netfilter/ip6_tables.c", i32 1695, i32 3}
!81 = !{ptr @ip6t_builtin_mt, !82, !"ip6t_builtin_mt", i1 false, i1 false}
!82 = !{!"../net/ipv6/netfilter/ip6_tables.c", i32 1882, i32 24}
!83 = !{ptr @ip6t_builtin_tg, !84, !"ip6t_builtin_tg", i1 false, i1 false}
!84 = !{!"../net/ipv6/netfilter/ip6_tables.c", i32 1852, i32 25}
!85 = !{ptr @.str.24, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../net/ipv6/netfilter/ip6_tables.c", i32 122, i32 2}
!87 = !{ptr @.str.25, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @ip6t_error._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @ip6t_error._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @ip6_tables_net_ops, !91, !"ip6_tables_net_ops", i1 false, i1 false}
!91 = !{!"../net/ipv6/netfilter/ip6_tables.c", i32 1904, i32 33}
!92 = !{!"sp"}
!93 = !{i32 1, !"wchar_size", i32 2}
!94 = !{i32 1, !"min_enum_size", i32 4}
!95 = !{i32 8, !"branch-target-enforcement", i32 0}
!96 = !{i32 8, !"sign-return-address", i32 0}
!97 = !{i32 8, !"sign-return-address-all", i32 0}
!98 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!99 = !{i32 7, !"uwtable", i32 1}
!100 = !{i32 7, !"frame-pointer", i32 2}
!101 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!102 = !{!"branch_weights", i32 1, i32 2000}
!103 = !{i64 2158788543}
!104 = !{i64 2148737354, i64 2148737359, i64 2148737372, i64 2148737416, i64 2148737450, i64 2148737471}
!105 = !{i8 0, i8 2}
!106 = !{!"auto-init"}
!107 = !{!"branch_weights", i32 2000, i32 1}
!108 = !{i64 2158788868}
!109 = !{i64 2152437750, i64 2152437775}
!110 = !{i64 4933305}
!111 = !{i64 4933502}
!112 = !{i64 2152418735}
!113 = !{i64 2152438431, i64 2152438456}
!114 = !{i64 648020, i64 648081}
!115 = !{i64 650752}
!116 = !{i64 651037}
!117 = !{i64 2158839532}
!118 = !{i64 2158839374}
!119 = !{i64 2158839702}
!120 = !{i64 2150068304}
