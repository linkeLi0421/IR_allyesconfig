; ModuleID = '/llk/IR_all_yes/net/ipv6/ip6_fib.c_pt.bc'
source_filename = "../net/ipv6/ip6_fib.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+fib6_info_destroy_rcu\22, \22a\22\09"
module asm "\09.weak\09__crc_fib6_info_destroy_rcu\09\09\09\09"
module asm "\09.long\09__crc_fib6_info_destroy_rcu\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fib6_info_destroy_rcu:\09\09\09\09\09"
module asm "\09.asciz \09\22fib6_info_destroy_rcu\22\09\09\09\09\09"
module asm "__kstrtabns_fib6_info_destroy_rcu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fib6_new_table\22, \22a\22\09"
module asm "\09.weak\09__crc_fib6_new_table\09\09\09\09"
module asm "\09.long\09__crc_fib6_new_table\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fib6_new_table:\09\09\09\09\09"
module asm "\09.asciz \09\22fib6_new_table\22\09\09\09\09\09"
module asm "__kstrtabns_fib6_new_table:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fib6_get_table\22, \22a\22\09"
module asm "\09.weak\09__crc_fib6_get_table\09\09\09\09"
module asm "\09.long\09__crc_fib6_get_table\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fib6_get_table:\09\09\09\09\09"
module asm "\09.asciz \09\22fib6_get_table\22\09\09\09\09\09"
module asm "__kstrtabns_fib6_get_table:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dst_metrics = type { [17 x i32], %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.fib6_table = type { %struct.hlist_node, i32, %struct.spinlock, %struct.fib6_node, %struct.inet_peer_base, i32, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.fib6_node = type { ptr, ptr, ptr, ptr, ptr, i16, i16, i32, ptr, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.inet_peer_base = type { %struct.rb_root, %struct.seqlock_t, i32 }
%struct.rb_root = type { ptr }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.fib6_info = type { ptr, ptr, ptr, %union.anon.141, i32, %struct.refcount_struct, i32, ptr, %struct.rt6key, i32, %struct.rt6key, %struct.rt6key, i32, i8, i8, i8, i8, i8, i8, %struct.callback_head, ptr, [0 x %struct.fib6_nh] }
%union.anon.141 = type { %struct.list_head }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.136 }
%union.anon.136 = type { [4 x i32] }
%struct.fib6_nh = type { %struct.fib_nh_common, i32, ptr, ptr }
%struct.fib_nh_common = type { ptr, ptr, i32, i8, i8, i8, i8, ptr, %union.anon.144, i32, %struct.atomic_t, ptr, ptr, ptr }
%union.anon.144 = type { %struct.in6_addr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
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
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.180, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.180 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.nexthop = type { %struct.rb_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, i8, i8, i8, %struct.refcount_struct, %struct.callback_head, %union.anon.142 }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.142 = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.fib6_entry_notifier_info = type { %struct.fib_notifier_info, ptr, i32 }
%struct.fib_notifier_info = type { i32, ptr }
%struct.fib6_dump_arg = type { ptr, ptr, ptr }
%struct.fib6_walker = type { %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.nl_info = type { ptr, ptr, i32, i8 }
%struct.rt6_statistics = type { i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t }
%struct.lookup_args = type { i32, ptr }
%struct.fib6_cleaner = type { %struct.fib6_walker, ptr, ptr, i32, ptr, i8 }
%struct.fib6_gc_args = type { i32, i32 }
%struct.rt6_rtnl_dump_arg = type { ptr, ptr, ptr, %struct.fib_dump_filter }
%struct.fib_dump_filter = type { i32, i8, i8, i8, i8, i8, i32, ptr }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.93 }
%union.anon.93 = type { [6 x i32], [24 x i8] }
%struct.sk_buff = type { %union.anon.82, %union.anon.150, %union.anon.151, [48 x i8], %union.anon.152, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.154, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { ptr, ptr, %union.anon.84 }
%union.anon.84 = type { ptr }
%union.anon.150 = type { ptr }
%union.anon.151 = type { i64 }
%union.anon.152 = type { %struct.anon.153 }
%struct.anon.153 = type { i32, ptr }
%union.anon.154 = type { %struct.anon.155 }
%struct.anon.155 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.156, i32, i32, i32, i16, i16, %union.anon.158, i32, %union.anon.159, %union.anon.160, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.156 = type { i32 }
%union.anon.158 = type { i32 }
%union.anon.159 = type { i32 }
%union.anon.160 = type { i16 }
%struct.sock_common = type { %union.anon.14, %union.anon.16, %union.anon.17, i16, i8, i8, i32, %union.anon.19, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.168, [0 x i32], %union.anon.169, i16, i16, %union.anon.170, %struct.refcount_struct, [0 x i32], %union.anon.171 }
%union.anon.14 = type { i64 }
%union.anon.16 = type { i32 }
%union.anon.17 = type { i32 }
%union.anon.19 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.atomic64_t = type { i64 }
%union.anon.168 = type { i32 }
%union.anon.169 = type { %struct.hlist_node }
%union.anon.170 = type { i32 }
%union.anon.171 = type { i32 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.ipv6_route_iter = type { %struct.seq_net_private, %struct.fib6_walker, i64, ptr, i32 }
%struct.seq_net_private = type { ptr, ptr }
%struct.bpf_iter__ipv6_route = type { %union.anon.188, %union.anon.189 }
%union.anon.188 = type { i64 }
%union.anon.189 = type { i64 }
%struct.bpf_iter_meta = type { %union.anon.187, i64, i64 }
%union.anon.187 = type { i64 }
%struct.nh_group = type { ptr, i16, i8, i8, i8, i8, i8, ptr, [0 x %struct.nh_grp_entry] }
%struct.nh_grp_entry = type { ptr, i8, %union.anon.146, %struct.list_head, ptr }
%union.anon.146 = type { %struct.anon.148 }
%struct.anon.148 = type { %struct.list_head, i16, i16 }
%struct.nh_info = type { %struct.hlist_node, ptr, i8, i8, i8, %union.anon.143 }
%union.anon.143 = type { %struct.fib_nh }
%struct.fib_nh = type { %struct.fib_nh_common, %struct.hlist_node, ptr, i32, i32, i32 }
%struct.fib6_nh_pcpu_arg = type { ptr, ptr }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }

@fib6_update_sernum.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"net/ipv6/ip6_fib.c\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@__kstrtab_fib6_info_destroy_rcu = external dso_local constant [0 x i8], align 1
@__kstrtabns_fib6_info_destroy_rcu = external dso_local constant [0 x i8], align 1
@__ksymtab_fib6_info_destroy_rcu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fib6_info_destroy_rcu to i32), ptr @__kstrtab_fib6_info_destroy_rcu, ptr @__kstrtabns_fib6_info_destroy_rcu }, section "___ksymtab_gpl+fib6_info_destroy_rcu", align 4
@__kstrtab_fib6_new_table = external dso_local constant [0 x i8], align 1
@__kstrtabns_fib6_new_table = external dso_local constant [0 x i8], align 1
@__ksymtab_fib6_new_table = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fib6_new_table to i32), ptr @__kstrtab_fib6_new_table, ptr @__kstrtabns_fib6_new_table }, section "___ksymtab_gpl+fib6_new_table", align 4
@fib6_get_table.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@__kstrtab_fib6_get_table = external dso_local constant [0 x i8], align 1
@__kstrtabns_fib6_get_table = external dso_local constant [0 x i8], align 1
@__ksymtab_fib6_get_table = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fib6_get_table to i32), ptr @__kstrtab_fib6_get_table, ptr @__kstrtabns_fib6_get_table }, section "___ksymtab_gpl+fib6_get_table", align 4
@fib6_tables_seq_read.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fib6_tables_dump.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@dst_default_metrics = external dso_local constant %struct.dst_metrics, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@fib6_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str, i32 1391, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\014IPv6: RTM_NEWROUTE with no NLM_F_CREATE or NLM_F_REPLACE\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fib6_add\00", [23 x i8] zeroinitializer }, align 32
@fib6_add._entry_ptr = internal global ptr @fib6_add._entry, section ".printk_index", align 4
@fib6_add.__warned.5 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fib6_del.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fib6_del.__warned.6 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fib6_nodes\00", [21 x i8] zeroinitializer }, align 32
@fib6_node_kmem = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@fib6_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @fib6_net_init, ptr null, ptr @fib6_net_exit, ptr null, ptr null, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__fib6_flush_trees = external dso_local local_unnamed_addr global ptr, align 4
@ipv6_route_seq_ops = dso_local constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @ipv6_route_seq_start, ptr @ipv6_route_seq_stop, ptr @ipv6_route_seq_next, ptr @ipv6_route_seq_show }, [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@fib6_link_table.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&tb->tb6_lock\00", [18 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@fib6_walk_continue.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__fib6_update_sernum_upto_root.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__fib6_update_sernum_upto_root.__warned.21 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fib6_add_1.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fib6_add_1.__msg = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Can not replace route - no match found\00", [57 x i8] zeroinitializer }, align 32
@fib6_add_1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str, i32 775, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014IPv6: Can't replace route, no match found\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fib6_add_1\00", [21 x i8] zeroinitializer }, align 32
@fib6_add_1._entry_ptr = internal global ptr @fib6_add_1._entry, section ".printk_index", align 4
@fib6_add_1._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str, i32 778, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\014IPv6: NLM_F_CREATE should be set when creating new route\0A\00", [36 x i8] zeroinitializer }, align 32
@fib6_add_1._entry_ptr.26 = internal global ptr @fib6_add_1._entry.24, section ".printk_index", align 4
@fib6_add_1.__warned.27 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fib6_add_1.__warned.28 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fib6_add_1.__msg.29 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Can not replace route - no match found\00", [57 x i8] zeroinitializer }, align 32
@fib6_add_1._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str, i32 829, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fib6_add_1._entry_ptr.31 = internal global ptr @fib6_add_1._entry.30, section ".printk_index", align 4
@fib6_add_1._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str, i32 832, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fib6_add_1._entry_ptr.33 = internal global ptr @fib6_add_1._entry.32, section ".printk_index", align 4
@fib6_add_1.__warned.34 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fib6_add_1.__warned.35 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fib6_add_rt2node.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fib6_add_rt2node.__warned.36 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fib6_add_rt2node.__warned.37 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fib6_add_rt2node.__warned.38 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fib6_add_rt2node._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.39, ptr @.str, i32 1207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fib6_add_rt2node\00", [47 x i8] zeroinitializer }, align 32
@fib6_add_rt2node._entry_ptr = internal global ptr @fib6_add_rt2node._entry, section ".printk_index", align 4
@fib6_add_rt2node._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str, i32 1266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014IPv6: NLM_F_REPLACE set, but no existing node found!\0A\00", [40 x i8] zeroinitializer }, align 32
@fib6_add_rt2node._entry_ptr.42 = internal global ptr @fib6_add_rt2node._entry.40, section ".printk_index", align 4
@fib6_add_rt2node.__warned.43 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fib6_add_rt2node.__warned.44 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fib6_purge_rt.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fib6_purge_rt.__warned.45 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@fib6_node_lookup_1.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.46 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@fib6_node_lookup_1.__warned.47 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fib6_node_lookup_1.__warned.49 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fib6_node_lookup_1.__warned.50 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fib6_locate_1.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fib6_locate_1.__warned.51 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fib6_locate_1.__warned.52 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fib6_find_prefix.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fib6_find_prefix.__warned.53 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fib6_find_prefix.__warned.54 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fib6_find_prefix.__warned.55 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fib6_repair_tree.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fib6_repair_tree.__warned.57 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fib6_repair_tree.__warned.58 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fib6_repair_tree.__warned.59 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fib6_repair_tree.__warned.60 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fib6_repair_tree.__warned.61 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fib6_repair_tree.__warned.62 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fib6_del_route.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fib6_del_route.__warned.66 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fib6_del_route.__warned.67 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fib6_del_route.__warned.68 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__fib6_clean_all.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fib6_clean_node.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@fib6_clean_node.__UNIQUE_ID_ddebug733 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.69, ptr @.str.70, ptr @.str, ptr @.str.71, i8 2, i8 37, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ipv6\00", [27 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fib6_clean_node\00", [16 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: del failed: rt=%p@%p err=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"IPv6: %s: del failed: rt=%p@%p err=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@fib6_net_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.73 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&net->ipv6.fib6_gc_lock\00", [40 x i8] zeroinitializer }, align 32
@fib6_net_init.__key.74 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.75 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&net->ipv6.fib6_walker_lock\00", [36 x i8] zeroinitializer }, align 32
@fib6_net_init.__key.76 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.77 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"(&net->ipv6.ip6_fib_timer)\00", [37 x i8] zeroinitializer }, align 32
@__const.inet6_dump_fib.arg = private unnamed_addr constant { ptr, ptr, ptr, { i32, i8, i8, i8, i8, i8, [3 x i8], i32, ptr } } { ptr null, ptr null, ptr null, { i32, i8, i8, i8, i8, i8, [3 x i8], i32, ptr } { i32 0, i8 0, i8 1, i8 1, i8 0, i8 0, [3 x i8] zeroinitializer, i32 0, ptr null } }, align 4
@inet6_dump_fib.__msg = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ipv6: FIB table does not exist\00", [33 x i8] zeroinitializer }, align 32
@inet6_dump_fib.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_bh_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock_bh.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.78 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"rcu_read_lock_bh() used illegally while idle\00", [51 x i8] zeroinitializer }, align 32
@ipv6_route_seq_next_table.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ipv6_route_seq_next_table.__warned.79 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ipv6_route_yield.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_read_unlock_bh.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.80 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"rcu_read_unlock_bh() used illegally while idle\00", [49 x i8] zeroinitializer }, align 32
@ipv6_route_seq_next.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.81 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%pi6 %02x \00", [21 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pi6\00", [27 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"00000000000000000000000000000000\00", [63 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c" %08x %08x %08x %08x %8s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@nexthop_fib6_nh_bh.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.86 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/nexthop.h\00", [42 x i8] zeroinitializer }, align 32
@nexthop_fib6_nh_bh.__warned.87 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.88 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967294, i64 4294967295]
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 112, i32 7 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 284, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 1391, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 2452, i32 37 }
@___asan_gen_.110 = private unnamed_addr constant [13 x i8] c"fib6_net_ops\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 2443, i32 33 }
@___asan_gen_.113 = private unnamed_addr constant [19 x i8] c"ipv6_route_seq_ops\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 2716, i32 29 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 227, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 695, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 723, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 773, i32 6 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 775, i32 6 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 778, i32 5 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 827, i32 4 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 829, i32 4 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 832, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 1207, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 1266, i32 4 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 1569, i32 16 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 2194, i32 5 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 2364, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 2365, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 2367, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 675, i32 4 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 749, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 760, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 2497, i32 18 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 2506, i32 19 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 2508, i32 17 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 2512, i32 18 }
@___asan_gen_.225 = private constant [22 x i8] c"../net/ipv6/ip6_fib.c\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 2514, i32 31 }
@___asan_gen_.227 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.228 = private unnamed_addr constant [25 x i8] c"../include/net/nexthop.h\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 510, i32 12 }
@llvm.compiler.used = appending global [57 x ptr] [ptr @__ksymtab_fib6_get_table, ptr @__ksymtab_fib6_info_destroy_rcu, ptr @__ksymtab_fib6_new_table, ptr @fib6_add._entry, ptr @fib6_add._entry_ptr, ptr @fib6_add_1._entry, ptr @fib6_add_1._entry.24, ptr @fib6_add_1._entry.30, ptr @fib6_add_1._entry.32, ptr @fib6_add_1._entry_ptr, ptr @fib6_add_1._entry_ptr.26, ptr @fib6_add_1._entry_ptr.31, ptr @fib6_add_1._entry_ptr.33, ptr @fib6_add_rt2node._entry, ptr @fib6_add_rt2node._entry.40, ptr @fib6_add_rt2node._entry_ptr, ptr @fib6_add_rt2node._entry_ptr.42, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.7, ptr @fib6_net_ops, ptr @ipv6_route_seq_ops, ptr @fib6_link_table.__key, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @fib6_add_1.__msg, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @fib6_add_1.__msg.29, ptr @.str.39, ptr @.str.41, ptr @.str.46, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @fib6_net_init.__key, ptr @.str.73, ptr @fib6_net_init.__key.74, ptr @.str.75, ptr @fib6_net_init.__key.76, ptr @.str.77, ptr @inet6_dump_fib.__msg, ptr @.str.78, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib6_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib6_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipv6_route_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib6_link_table.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib6_add_1.__msg to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib6_add_1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib6_add_1._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib6_add_1.__msg.29 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib6_add_1._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib6_add_1._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib6_add_rt2node._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib6_add_rt2node._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib6_net_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib6_net_init.__key.74 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib6_net_init.__key.76 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inet6_dump_fib.__msg to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fib6_update_sernum(ptr noundef %net, ptr nocapture noundef readonly %f6i) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f6i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f6i, align 4
  %dep_map = getelementptr inbounds %struct.fib6_table, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b20 = load i1, ptr @fib6_update_sernum.__warned, align 1
  br i1 %.b20, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @fib6_update_sernum.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 113, ptr noundef nonnull @.str.1) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %fib6_node = getelementptr inbounds %struct.fib6_info, ptr %f6i, i32 0, i32 2
  %2 = ptrtoint ptr %fib6_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fib6_node, align 4
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %do.end.if.end17_crit_edge, label %do.body11

do.end.if.end17_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

do.body11:                                        ; preds = %do.end
  %fib6_sernum.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 33
  br label %do.body.i

do.body.i:                                        ; preds = %atomic_cmpxchg.exit.i.do.body.i_crit_edge, %do.body11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %fib6_sernum.i, i32 noundef 4) #13
  %4 = ptrtoint ptr %fib6_sernum.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %fib6_sernum.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %5)
  %cmp.not.i = icmp eq i32 %5, 2147483647
  %add.i = add i32 %5, 1
  %spec.select.i = select i1 %cmp.not.i, i32 1, i32 %add.i
  %call.i.i10.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fib6_sernum.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !250
  tail call void @llvm.prefetch.p0(ptr %fib6_sernum.i, i32 1, i32 3, i32 1) #13
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge, %do.body.i
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %fib6_sernum.i, ptr %fib6_sernum.i, i32 %5, i32 %spec.select.i, ptr elementtype(i32) %fib6_sernum.i) #13, !srcloc !251
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %6, 0
  %tobool.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %atomic_cmpxchg.exit.i, label %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge

do.body.i.i.i.i.do.body.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i.i.i

atomic_cmpxchg.exit.i:                            ; preds = %do.body.i.i.i.i
  %asmresult3.i.i.i.i = extractvalue { i32, i32 } %6, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !252
  %cmp4.not.i = icmp eq i32 %asmresult3.i.i.i.i, %5
  br i1 %cmp4.not.i, label %fib6_new_sernum.exit, label %atomic_cmpxchg.exit.i.do.body.i_crit_edge

atomic_cmpxchg.exit.i.do.body.i_crit_edge:        ; preds = %atomic_cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

fib6_new_sernum.exit:                             ; preds = %atomic_cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %fn_sernum = getelementptr inbounds %struct.fib6_node, ptr %3, i32 0, i32 7
  %7 = ptrtoint ptr %fn_sernum to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 %spec.select.i, ptr %fn_sernum, align 4
  br label %if.end17

if.end17:                                         ; preds = %fib6_new_sernum.exit, %do.end.if.end17_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @fib6_info_alloc(i32 noundef %gfp_flags, i1 noundef zeroext %with_fib6_nh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %or.i = or i32 %gfp_flags, 256
  %spec.select = select i1 %with_fib6_nh, i32 192, i32 124
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select, i32 noundef %or.i) #16
  %tobool1.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool1.not, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %0 = getelementptr inbounds %struct.fib6_info, ptr %call9.i.i, i32 0, i32 3
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %0, ptr %0, align 4
  %prev.i = getelementptr inbounds %struct.fib6_info, ptr %call9.i.i, i32 0, i32 3, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %0, ptr %prev.i, align 16
  %fib6_ref = getelementptr inbounds %struct.fib6_info, ptr %call9.i.i, i32 0, i32 5
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fib6_ref, i32 noundef 4) #13
  %3 = ptrtoint ptr %fib6_ref to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 1, ptr %fib6_ref, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry.cleanup_crit_edge
  ret ptr %call9.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fib6_info_destroy_rcu(ptr noundef %head) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %fib6_node = getelementptr i8, ptr %head, i32 -104
  %0 = ptrtoint ptr %fib6_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fib6_node, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !253

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 171, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %nh = getelementptr i8, ptr %head, i32 8
  %2 = ptrtoint ptr %nh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nh, align 4
  %tobool21.not = icmp eq ptr %3, null
  br i1 %tobool21.not, label %if.else, label %if.then22

if.then22:                                        ; preds = %if.end
  %refcnt.i = getelementptr inbounds %struct.nexthop, ptr %3, i32 0, i32 10
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !254
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #13
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #13, !srcloc !255
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end24_crit_edge, label %if.then10.i.i.i.i, !prof !253

if.end5.i.i.i.i.if.end24_crit_edge:               ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #13
  br label %if.end24

if.then.i:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !256
  %rcu.i = getelementptr inbounds %struct.nexthop, ptr %3, i32 0, i32 11
  tail call void @call_rcu(ptr noundef %rcu.i, ptr noundef nonnull @nexthop_free_rcu) #13
  br label %if.end24

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %fib6_nh = getelementptr i8, ptr %head, i32 12
  tail call void @fib6_nh_release(ptr noundef %fib6_nh) #13
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end24_crit_edge
  %fib6_metrics = getelementptr i8, ptr %head, i32 -80
  %5 = ptrtoint ptr %fib6_metrics to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fib6_metrics, align 4
  %cmp.not.i = icmp eq ptr %6, @dst_default_metrics
  br i1 %cmp.not.i, label %if.end24.ip_fib_metrics_put.exit_crit_edge, label %land.lhs.true.i

if.end24.ip_fib_metrics_put.exit_crit_edge:       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %ip_fib_metrics_put.exit

land.lhs.true.i:                                  ; preds = %if.end24
  %refcnt.i31 = getelementptr inbounds %struct.dst_metrics, ptr %6, i32 0, i32 1
  %call.i.i.i.i.i.i32 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i31, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !254
  tail call void @llvm.prefetch.p0(ptr %refcnt.i31, i32 1, i32 3, i32 1) #13
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i31, ptr %refcnt.i31, i32 1, ptr elementtype(i32) %refcnt.i31) #13, !srcloc !255
  %asmresult.i.i.i.i.i.i.i33 = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i33)
  %cmp.i.i.i.i34 = icmp eq i32 %asmresult.i.i.i.i.i.i.i33, 1
  br i1 %cmp.i.i.i.i34, label %if.then.i38, label %if.end5.i.i.i.i36

if.end5.i.i.i.i36:                                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i33)
  %.not.i.i.i.i35 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i33, 0
  br i1 %.not.i.i.i.i35, label %if.end5.i.i.i.i36.ip_fib_metrics_put.exit_crit_edge, label %if.then10.i.i.i.i37, !prof !253

if.end5.i.i.i.i36.ip_fib_metrics_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i36
  call void @__sanitizer_cov_trace_pc() #15
  br label %ip_fib_metrics_put.exit

if.then10.i.i.i.i37:                              ; preds = %if.end5.i.i.i.i36
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i31, i32 noundef 3) #13
  br label %ip_fib_metrics_put.exit

if.then.i38:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !256
  tail call void @kfree(ptr noundef %6) #13
  br label %ip_fib_metrics_put.exit

ip_fib_metrics_put.exit:                          ; preds = %if.then.i38, %if.then10.i.i.i.i37, %if.end5.i.i.i.i36.ip_fib_metrics_put.exit_crit_edge, %if.end24.ip_fib_metrics_put.exit_crit_edge
  %add.ptr = getelementptr i8, ptr %head, i32 -112
  tail call void @kfree(ptr noundef %add.ptr) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fib6_nh_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @fib6_new_table(ptr nocapture noundef readonly %net, i32 noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %id)
  %cmp = icmp eq i32 %id, 0
  %spec.store.select = select i1 %cmp, i32 254, i32 %id
  %call = tail call ptr @fib6_get_table(ptr noundef %net, i32 noundef %spec.store.select)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end2, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end2:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 192) #17
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end2.cleanup_crit_edge, label %if.then5

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then5:                                         ; preds = %if.end2
  %tb6_id.i = getelementptr inbounds %struct.fib6_table, ptr %call7.i.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %tb6_id.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %spec.store.select, ptr %tb6_id.i, align 8
  %fib6_null_entry.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 6
  %2 = ptrtoint ptr %fib6_null_entry.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fib6_null_entry.i, align 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !257
  %leaf23.i = getelementptr inbounds %struct.fib6_table, ptr %call7.i.i.i, i32 0, i32 3, i32 4
  %4 = ptrtoint ptr %leaf23.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %3, ptr %leaf23.i, align 8
  %fn_flags.i = getelementptr inbounds %struct.fib6_table, ptr %call7.i.i.i, i32 0, i32 3, i32 6
  %5 = ptrtoint ptr %fn_flags.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 7, ptr %fn_flags.i, align 2
  %tb6_peers.i = getelementptr inbounds %struct.fib6_table, ptr %call7.i.i.i, i32 0, i32 4
  tail call void @inet_peer_base_init(ptr noundef %tb6_peers.i) #13
  %tb6_lock.i = getelementptr inbounds %struct.fib6_table, ptr %call7.i.i.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %tb6_lock.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @fib6_link_table.__key, i16 noundef signext 3) #13
  %6 = ptrtoint ptr %tb6_id.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tb6_id.i, align 8
  %and.i = and i32 %7, 255
  %fib_table_hash.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 10
  %8 = ptrtoint ptr %fib_table_hash.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fib_table_hash.i, align 4
  %arrayidx.i = getelementptr %struct.hlist_head, ptr %9, i32 %and.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %12 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %call7.i.i.i, align 8
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %call7.i.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %arrayidx.i, ptr %pprev.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !258
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %call7.i.i.i, ptr %arrayidx.i, align 4
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.then5.cleanup_crit_edge, label %do.body49.i.i

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body49.i.i:                                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  %pprev51.i.i = getelementptr inbounds %struct.hlist_node, ptr %11, i32 0, i32 1
  %15 = ptrtoint ptr %pprev51.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %call7.i.i.i, ptr %pprev51.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body49.i.i, %if.then5.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call, %entry.cleanup_crit_edge ], [ %call7.i.i.i, %if.then5.cleanup_crit_edge ], [ %call7.i.i.i, %do.body49.i.i ], [ null, %if.end2.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @fib6_get_table(ptr nocapture noundef readonly %net, i32 noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %id)
  %cmp = icmp eq i32 %id, 0
  %spec.store.select = select i1 %cmp, i32 254, i32 %id
  %and = and i32 %spec.store.select, 255
  %0 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !259
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %fib_table_hash = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 10
  %4 = ptrtoint ptr %fib_table_hash to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fib_table_hash, align 4
  %arrayidx = getelementptr %struct.hlist_head, ptr %5, i32 %and
  %call = tail call i32 @rcu_read_lock_any_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.for.cond.preheader_crit_edge

rcu_read_lock.exit.for.cond.preheader_crit_edge:  ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.preheader

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.for.cond.preheader_crit_edge, label %land.lhs.true3

land.lhs.true.for.cond.preheader_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.preheader

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b43 = load i1, ptr @fib6_get_table.__warned, align 1
  br i1 %.b43, label %land.lhs.true3.for.cond.preheader_crit_edge, label %if.then5

land.lhs.true3.for.cond.preheader_crit_edge:      ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.preheader

if.then5:                                         ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @fib6_get_table.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 284, ptr noundef nonnull @.str.2) #13
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then5, %land.lhs.true3.for.cond.preheader_crit_edge, %land.lhs.true.for.cond.preheader_crit_edge, %rcu_read_lock.exit.for.cond.preheader_crit_edge
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %for.cond.preheader
  %tb.0.in = phi ptr [ %tb.0, %for.body.for.cond_crit_edge ], [ %arrayidx, %for.cond.preheader ]
  %6 = ptrtoint ptr %tb.0.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %tb.0 = load volatile ptr, ptr %tb.0.in, align 4
  %tobool14.not = icmp eq ptr %tb.0, null
  br i1 %tobool14.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %tb6_id = getelementptr inbounds %struct.fib6_table, ptr %tb.0, i32 0, i32 1
  %7 = ptrtoint ptr %tb6_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tb6_id, align 4
  %cmp15 = icmp eq i32 %8, %spec.store.select
  br i1 %cmp15, label %if.then16, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

if.then16:                                        ; preds = %for.body
  %call.i45 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i45, label %if.then16.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i48

if.then16.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i48:                                ; preds = %if.then16
  %call1.i46 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i46)
  %tobool.not.i47 = icmp eq i32 %call1.i46, 0
  br i1 %tobool.not.i47, label %land.lhs.true.i48.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i50

land.lhs.true.i48.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i48
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i50:                               ; preds = %land.lhs.true.i48
  %.b4.i49 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i49, label %land.lhs.true2.i50.rcu_read_unlock.exit_crit_edge, label %if.then.i51

land.lhs.true2.i50.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i50
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i51:                                      ; preds = %land.lhs.true2.i50
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.11) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i51, %land.lhs.true2.i50.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i48.rcu_read_unlock.exit_crit_edge, %if.then16.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !260
  br label %cleanup

for.end:                                          ; preds = %for.cond
  %call.i54 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i54, label %for.end.rcu_read_unlock.exit64_crit_edge, label %land.lhs.true.i57

for.end.rcu_read_unlock.exit64_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit64

land.lhs.true.i57:                                ; preds = %for.end
  %call1.i55 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i55)
  %tobool.not.i56 = icmp eq i32 %call1.i55, 0
  br i1 %tobool.not.i56, label %land.lhs.true.i57.rcu_read_unlock.exit64_crit_edge, label %land.lhs.true2.i59

land.lhs.true.i57.rcu_read_unlock.exit64_crit_edge: ; preds = %land.lhs.true.i57
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit64

land.lhs.true2.i59:                               ; preds = %land.lhs.true.i57
  %.b4.i58 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i58, label %land.lhs.true2.i59.rcu_read_unlock.exit64_crit_edge, label %if.then.i60

land.lhs.true2.i59.rcu_read_unlock.exit64_crit_edge: ; preds = %land.lhs.true2.i59
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit64

if.then.i60:                                      ; preds = %land.lhs.true2.i59
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.11) #13
  br label %rcu_read_unlock.exit64

rcu_read_unlock.exit64:                           ; preds = %if.then.i60, %land.lhs.true2.i59.rcu_read_unlock.exit64_crit_edge, %land.lhs.true.i57.rcu_read_unlock.exit64_crit_edge, %for.end.rcu_read_unlock.exit64_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !260
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit64, %rcu_read_unlock.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i.i.i61 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i61 to ptr
  %preempt_count.i.i.i.i62 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i62 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i62, align 4
  %sub.i.i.i63 = add i32 %12, -1
  store volatile i32 %sub.i.i.i63, ptr %preempt_count.i.i.i.i62, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  ret ptr %tb.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fib6_tables_seq_read(ptr nocapture noundef readonly %net) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !259
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %fib_table_hash = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 10
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %rcu_read_lock.exit
  %h.057 = phi i32 [ 0, %rcu_read_lock.exit ], [ %inc, %for.end.for.body_crit_edge ]
  %fib_seq.056 = phi i32 [ 0, %rcu_read_lock.exit ], [ %fib_seq.1.lcssa, %for.end.for.body_crit_edge ]
  %4 = ptrtoint ptr %fib_table_hash to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fib_table_hash, align 4
  %arrayidx = getelementptr %struct.hlist_head, ptr %5, i32 %h.057
  %call = tail call i32 @rcu_read_lock_any_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %for.body.do.end_crit_edge

for.body.do.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true:                                    ; preds = %for.body
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b41 = load i1, ptr @fib6_tables_seq_read.__warned, align 1
  br i1 %.b41, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @fib6_tables_seq_read.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 355, ptr noundef nonnull @.str.2) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %for.body.do.end_crit_edge
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %tb.052 = load volatile ptr, ptr %arrayidx, align 4
  %tobool13.not53 = icmp eq ptr %tb.052, null
  br i1 %tobool13.not53, label %do.end.for.end_crit_edge, label %do.end.for.body14_crit_edge

do.end.for.body14_crit_edge:                      ; preds = %do.end
  br label %for.body14

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body14:                                       ; preds = %for.body14.for.body14_crit_edge, %do.end.for.body14_crit_edge
  %tb.055 = phi ptr [ %tb.0, %for.body14.for.body14_crit_edge ], [ %tb.052, %do.end.for.body14_crit_edge ]
  %fib_seq.154 = phi i32 [ %add, %for.body14.for.body14_crit_edge ], [ %fib_seq.056, %do.end.for.body14_crit_edge ]
  %fib_seq15 = getelementptr inbounds %struct.fib6_table, ptr %tb.055, i32 0, i32 6
  %7 = ptrtoint ptr %fib_seq15 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fib_seq15, align 4
  %add = add i32 %8, %fib_seq.154
  %9 = ptrtoint ptr %tb.055 to i32
  call void @__asan_load4_noabort(i32 %9)
  %tb.0 = load volatile ptr, ptr %tb.055, align 4
  %tobool13.not = icmp eq ptr %tb.0, null
  br i1 %tobool13.not, label %for.body14.for.end_crit_edge, label %for.body14.for.body14_crit_edge

for.body14.for.body14_crit_edge:                  ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body14

for.body14.for.end_crit_edge:                     ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body14.for.end_crit_edge, %do.end.for.end_crit_edge
  %fib_seq.1.lcssa = phi i32 [ %fib_seq.056, %do.end.for.end_crit_edge ], [ %add, %for.body14.for.end_crit_edge ]
  %inc = add nuw nsw i32 %h.057, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.end32, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end32:                                        ; preds = %for.end
  %call.i43 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i43, label %for.end32.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i46

for.end32.rcu_read_unlock.exit_crit_edge:         ; preds = %for.end32
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i46:                                ; preds = %for.end32
  %call1.i44 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i44)
  %tobool.not.i45 = icmp eq i32 %call1.i44, 0
  br i1 %tobool.not.i45, label %land.lhs.true.i46.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i48

land.lhs.true.i46.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i46
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i48:                               ; preds = %land.lhs.true.i46
  %.b4.i47 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i47, label %land.lhs.true2.i48.rcu_read_unlock.exit_crit_edge, label %if.then.i49

land.lhs.true2.i48.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i48
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i49:                                      ; preds = %land.lhs.true2.i48
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.11) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i49, %land.lhs.true2.i48.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i46.rcu_read_unlock.exit_crit_edge, %for.end32.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !260
  %10 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i.i.i50 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i50 to ptr
  %preempt_count.i.i.i.i51 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i51, align 4
  %sub.i.i.i = add i32 %13, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i51, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  ret i32 %fib_seq.1.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @call_fib6_entry_notifiers(ptr noundef %net, i32 noundef %event_type, ptr noundef %rt, ptr noundef %extack) local_unnamed_addr #0 align 64 {
entry:
  %info = alloca %struct.fib6_entry_notifier_info, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info) #13
  %0 = getelementptr inbounds %struct.fib_notifier_info, ptr %info, i32 0, i32 1
  %1 = getelementptr inbounds %struct.fib6_entry_notifier_info, ptr %info, i32 0, i32 1
  %2 = getelementptr inbounds %struct.fib6_entry_notifier_info, ptr %info, i32 0, i32 2
  %3 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %info, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %extack, ptr %0, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %rt, ptr %1, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %2, align 4
  %7 = ptrtoint ptr %rt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rt, align 4
  %fib_seq = getelementptr inbounds %struct.fib6_table, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %fib_seq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fib_seq, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %fib_seq, align 4
  %call = call i32 @call_fib6_notifiers(ptr noundef %net, i32 noundef %event_type, ptr noundef nonnull %info) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_fib6_notifiers(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @call_fib6_multipath_entry_notifiers(ptr noundef %net, i32 noundef %event_type, ptr noundef %rt, i32 noundef %nsiblings, ptr noundef %extack) local_unnamed_addr #0 align 64 {
entry:
  %info = alloca %struct.fib6_entry_notifier_info, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info) #13
  %0 = getelementptr inbounds %struct.fib_notifier_info, ptr %info, i32 0, i32 1
  %1 = getelementptr inbounds %struct.fib6_entry_notifier_info, ptr %info, i32 0, i32 1
  %2 = getelementptr inbounds %struct.fib6_entry_notifier_info, ptr %info, i32 0, i32 2
  %3 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %info, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %extack, ptr %0, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %rt, ptr %1, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %nsiblings, ptr %2, align 4
  %7 = ptrtoint ptr %rt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rt, align 4
  %fib_seq = getelementptr inbounds %struct.fib6_table, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %fib_seq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fib_seq, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %fib_seq, align 4
  %call = call i32 @call_fib6_notifiers(ptr noundef %net, i32 noundef %event_type, ptr noundef nonnull %info) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @call_fib6_entry_notifiers_replace(ptr noundef %net, ptr noundef %rt) local_unnamed_addr #0 align 64 {
entry:
  %info = alloca %struct.fib6_entry_notifier_info, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info) #13
  %0 = getelementptr inbounds %struct.fib6_entry_notifier_info, ptr %info, i32 0, i32 1
  %1 = getelementptr inbounds %struct.fib6_entry_notifier_info, ptr %info, i32 0, i32 2
  %2 = ptrtoint ptr %info to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %info, align 8
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %rt, ptr %0, align 8
  %fib6_nsiblings = getelementptr inbounds %struct.fib6_info, ptr %rt, i32 0, i32 4
  %4 = ptrtoint ptr %fib6_nsiblings to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fib6_nsiblings, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %1, align 4
  %7 = ptrtoint ptr %rt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rt, align 4
  %fib_seq = getelementptr inbounds %struct.fib6_table, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %fib_seq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fib_seq, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %fib_seq, align 4
  %call = call i32 @call_fib6_notifiers(ptr noundef %net, i32 noundef 0, ptr noundef nonnull %info) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fib6_tables_dump(ptr noundef %net, ptr noundef %nb, ptr noundef %extack) local_unnamed_addr #0 align 64 {
entry:
  %arg = alloca %struct.fib6_dump_arg, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %arg) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 44) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup49_crit_edge, label %if.end

entry.cleanup49_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup49

if.end:                                           ; preds = %entry
  %1 = getelementptr inbounds %struct.fib6_dump_arg, ptr %arg, i32 0, i32 2
  %2 = getelementptr inbounds %struct.fib6_dump_arg, ptr %arg, i32 0, i32 1
  %func = getelementptr inbounds %struct.fib6_walker, ptr %call7.i.i, i32 0, i32 8
  %3 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @fib6_node_dump, ptr %func, align 4
  %4 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %net, ptr %arg, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %nb, ptr %2, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %extack, ptr %1, align 4
  %args = getelementptr inbounds %struct.fib6_walker, ptr %call7.i.i, i32 0, i32 9
  %7 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %arg, ptr %args, align 8
  %fib_table_hash = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 10
  %root.i = getelementptr inbounds %struct.fib6_walker, ptr %call7.i.i, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc42.for.body_crit_edge, %if.end
  %h.075 = phi i32 [ 0, %if.end ], [ %inc, %for.inc42.for.body_crit_edge ]
  %8 = ptrtoint ptr %fib_table_hash to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fib_table_hash, align 4
  %arrayidx = getelementptr %struct.hlist_head, ptr %9, i32 %h.075
  %call4 = call i32 @rcu_read_lock_any_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true, label %for.body.for.cond19.preheader_crit_edge

for.body.for.cond19.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond19.preheader

land.lhs.true:                                    ; preds = %for.body
  %call6 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.for.cond19.preheader_crit_edge, label %land.lhs.true8

land.lhs.true.for.cond19.preheader_crit_edge:     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond19.preheader

land.lhs.true8:                                   ; preds = %land.lhs.true
  %.b68 = load i1, ptr @fib6_tables_dump.__warned, align 1
  br i1 %.b68, label %land.lhs.true8.for.cond19.preheader_crit_edge, label %if.then10

land.lhs.true8.for.cond19.preheader_crit_edge:    ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond19.preheader

if.then10:                                        ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @fib6_tables_dump.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 502, ptr noundef nonnull @.str.2) #13
  br label %for.cond19.preheader

for.cond19.preheader:                             ; preds = %if.then10, %land.lhs.true8.for.cond19.preheader_crit_edge, %land.lhs.true.for.cond19.preheader_crit_edge, %for.body.for.cond19.preheader_crit_edge
  br label %for.cond19

for.cond19:                                       ; preds = %for.body21.for.cond19_crit_edge, %for.cond19.preheader
  %tb.0.in = phi ptr [ %tb.0, %for.body21.for.cond19_crit_edge ], [ %arrayidx, %for.cond19.preheader ]
  %10 = ptrtoint ptr %tb.0.in to i32
  call void @__asan_load4_noabort(i32 %10)
  %tb.0 = load volatile ptr, ptr %tb.0.in, align 4
  %tobool20.not = icmp eq ptr %tb.0, null
  br i1 %tobool20.not, label %for.inc42, label %for.body21

for.body21:                                       ; preds = %for.cond19
  %tb6_root.i = getelementptr inbounds %struct.fib6_table, ptr %tb.0, i32 0, i32 3
  %11 = ptrtoint ptr %root.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %tb6_root.i, ptr %root.i, align 8
  %tb6_lock.i = getelementptr inbounds %struct.fib6_table, ptr %tb.0, i32 0, i32 2
  call void @_raw_spin_lock_bh(ptr noundef %tb6_lock.i) #13
  %call.i = call fastcc i32 @fib6_walk(ptr noundef %net, ptr noundef nonnull %call7.i.i) #13
  call void @_raw_spin_unlock_bh(ptr noundef %tb6_lock.i) #13
  %tobool23.not = icmp eq i32 %call.i, 0
  br i1 %tobool23.not, label %for.body21.for.cond19_crit_edge, label %out

for.body21.for.cond19_crit_edge:                  ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond19

for.inc42:                                        ; preds = %for.cond19
  %inc = add nuw nsw i32 %h.075, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %out.thread, label %for.inc42.for.body_crit_edge

for.inc42.for.body_crit_edge:                     ; preds = %for.inc42
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

out.thread:                                       ; preds = %for.inc42
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup49

out:                                              ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree(ptr noundef nonnull %call7.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp44 = icmp sgt i32 %call.i, 0
  %spec.select = select i1 %cmp44, i32 -22, i32 %call.i
  br label %cleanup49

cleanup49:                                        ; preds = %out, %out.thread, %entry.cleanup49_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup49_crit_edge ], [ 0, %out.thread ], [ %spec.select, %out ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %arg) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fib6_node_dump(ptr nocapture noundef %w) #0 align 64 {
entry:
  %info.i19.i = alloca %struct.fib6_entry_notifier_info, align 4
  %info.i.i = alloca %struct.fib6_entry_notifier_info, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %leaf = getelementptr inbounds %struct.fib6_walker, ptr %w, i32 0, i32 3
  %0 = ptrtoint ptr %leaf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %leaf, align 4
  %args = getelementptr inbounds %struct.fib6_walker, ptr %w, i32 0, i32 9
  %2 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %args, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.fib6_rt_dump.exit_crit_edge, label %lor.lhs.false.i

entry.fib6_rt_dump.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %fib6_rt_dump.exit

lor.lhs.false.i:                                  ; preds = %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %fib6_null_entry.i = getelementptr inbounds %struct.net, ptr %5, i32 0, i32 36, i32 6
  %6 = ptrtoint ptr %fib6_null_entry.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fib6_null_entry.i, align 16
  %cmp.i = icmp eq ptr %7, %1
  br i1 %cmp.i, label %lor.lhs.false.i.fib6_rt_dump.exit_crit_edge, label %if.end.i

lor.lhs.false.i.fib6_rt_dump.exit_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %fib6_rt_dump.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %fib6_nsiblings.i = getelementptr inbounds %struct.fib6_info, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %fib6_nsiblings.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fib6_nsiblings.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool1.not.i = icmp eq i32 %9, 0
  %nb4.i = getelementptr inbounds %struct.fib6_dump_arg, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %nb4.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %nb4.i, align 4
  %extack5.i = getelementptr inbounds %struct.fib6_dump_arg, ptr %3, i32 0, i32 2
  %12 = ptrtoint ptr %extack5.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %extack5.i, align 4
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info.i.i) #13
  %14 = getelementptr inbounds %struct.fib_notifier_info, ptr %info.i.i, i32 0, i32 1
  %15 = getelementptr inbounds %struct.fib6_entry_notifier_info, ptr %info.i.i, i32 0, i32 1
  %16 = getelementptr inbounds %struct.fib6_entry_notifier_info, ptr %info.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %info.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %info.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %13, ptr %14, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %1, ptr %15, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %9, ptr %16, align 4
  %call.i.i = call i32 @call_fib6_notifier(ptr noundef %11, i32 noundef 0, ptr noundef nonnull %info.i.i) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info.i.i) #13
  br label %fib6_rt_dump.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info.i19.i) #13
  %21 = getelementptr inbounds %struct.fib_notifier_info, ptr %info.i19.i, i32 0, i32 1
  %22 = getelementptr inbounds %struct.fib6_entry_notifier_info, ptr %info.i19.i, i32 0, i32 1
  %23 = getelementptr inbounds %struct.fib6_entry_notifier_info, ptr %info.i19.i, i32 0, i32 2
  %24 = ptrtoint ptr %info.i19.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %info.i19.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %13, ptr %21, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %1, ptr %22, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %23, align 4
  %call.i20.i = call i32 @call_fib6_notifier(ptr noundef %11, i32 noundef 0, ptr noundef nonnull %info.i19.i) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info.i19.i) #13
  br label %fib6_rt_dump.exit

fib6_rt_dump.exit:                                ; preds = %if.else.i, %if.then2.i, %lor.lhs.false.i.fib6_rt_dump.exit_crit_edge, %entry.fib6_rt_dump.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %lor.lhs.false.i.fib6_rt_dump.exit_crit_edge ], [ 0, %entry.fib6_rt_dump.exit_crit_edge ], [ %call.i.i, %if.then2.i ], [ %call.i20.i, %if.else.i ]
  %28 = ptrtoint ptr %leaf to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %leaf, align 4
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fib6_metric_set(ptr noundef %f6i, i32 noundef %metric, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %f6i, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  %fib6_metrics = getelementptr inbounds %struct.fib6_info, ptr %f6i, i32 0, i32 7
  %0 = ptrtoint ptr %fib6_metrics to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fib6_metrics, align 4
  %cmp = icmp eq ptr %1, @dst_default_metrics
  br i1 %cmp, label %if.then1, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.then1:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 2848, i32 noundef 72) #17
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.then1.return_crit_edge, label %cleanup.thread

if.then1.return_crit_edge:                        ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

cleanup.thread:                                   ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #15
  %refcnt = getelementptr inbounds %struct.dst_metrics, ptr %call7.i.i, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #13
  %3 = ptrtoint ptr %refcnt to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 1, ptr %refcnt, align 4
  %4 = ptrtoint ptr %fib6_metrics to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %fib6_metrics, align 4
  br label %if.end6

if.end6:                                          ; preds = %cleanup.thread, %if.end.if.end6_crit_edge
  %5 = ptrtoint ptr %fib6_metrics to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fib6_metrics, align 4
  %sub = add i32 %metric, -1
  %arrayidx = getelementptr [17 x i32], ptr %6, i32 0, i32 %sub
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %val, ptr %arrayidx, align 4
  br label %return

return:                                           ; preds = %if.end6, %if.then1.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fib6_force_start_gc(ptr noundef %net) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %pprev.i.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 9, i32 0, i32 1
  %0 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %ip6_fib_timer = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %ip6_rt_gc_interval = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 1, i32 9
  %3 = ptrtoint ptr %ip6_rt_gc_interval to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ip6_rt_gc_interval, align 4
  %add = add i32 %4, %2
  %call4 = tail call i32 @mod_timer(ptr noundef %ip6_fib_timer, i32 noundef %add) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fib6_update_sernum_upto_root(ptr noundef %net, ptr nocapture noundef readonly %rt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %fib6_sernum.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 33
  br label %do.body.i

do.body.i:                                        ; preds = %atomic_cmpxchg.exit.i.do.body.i_crit_edge, %entry
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %fib6_sernum.i, i32 noundef 4) #13
  %0 = ptrtoint ptr %fib6_sernum.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %fib6_sernum.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 2147483647
  %add.i = add i32 %1, 1
  %spec.select.i = select i1 %cmp.not.i, i32 1, i32 %add.i
  %call.i.i10.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fib6_sernum.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !250
  tail call void @llvm.prefetch.p0(ptr %fib6_sernum.i, i32 1, i32 3, i32 1) #13
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge, %do.body.i
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %fib6_sernum.i, ptr %fib6_sernum.i, i32 %1, i32 %spec.select.i, ptr elementtype(i32) %fib6_sernum.i) #13, !srcloc !251
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %2, 0
  %tobool.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %atomic_cmpxchg.exit.i, label %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge

do.body.i.i.i.i.do.body.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i.i.i

atomic_cmpxchg.exit.i:                            ; preds = %do.body.i.i.i.i
  %asmresult3.i.i.i.i = extractvalue { i32, i32 } %2, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !252
  %cmp4.not.i = icmp eq i32 %asmresult3.i.i.i.i, %1
  br i1 %cmp4.not.i, label %fib6_new_sernum.exit, label %atomic_cmpxchg.exit.i.do.body.i_crit_edge

atomic_cmpxchg.exit.i.do.body.i_crit_edge:        ; preds = %atomic_cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

fib6_new_sernum.exit:                             ; preds = %atomic_cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @__fib6_update_sernum_upto_root(ptr noundef %rt, i32 noundef %spec.select.i)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__fib6_update_sernum_upto_root(ptr nocapture noundef readonly %rt, i32 noundef %sernum) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rt, align 4
  %dep_map = getelementptr inbounds %struct.fib6_table, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b43 = load i1, ptr @__fib6_update_sernum_upto_root.__warned, align 1
  br i1 %.b43, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__fib6_update_sernum_upto_root.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1344, ptr noundef nonnull @.str.1) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %fib6_node = getelementptr inbounds %struct.fib6_info, ptr %rt, i32 0, i32 2
  %2 = ptrtoint ptr %fib6_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fib6_node, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !261
  %tobool11.not45 = icmp eq ptr %3, null
  br i1 %tobool11.not45, label %do.end.while.end_crit_edge, label %do.end.do.body16_crit_edge

do.end.do.body16_crit_edge:                       ; preds = %do.end
  br label %do.body16

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

do.body16:                                        ; preds = %do.end35.do.body16_crit_edge, %do.end.do.body16_crit_edge
  %fn.046 = phi ptr [ %8, %do.end35.do.body16_crit_edge ], [ %3, %do.end.do.body16_crit_edge ]
  %fn_sernum = getelementptr inbounds %struct.fib6_node, ptr %fn.046, i32 0, i32 7
  %4 = ptrtoint ptr %fn_sernum to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 %sernum, ptr %fn_sernum, align 4
  %5 = ptrtoint ptr %rt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rt, align 4
  %dep_map24 = getelementptr inbounds %struct.fib6_table, ptr %6, i32 0, i32 2, i32 0, i32 0, i32 4
  %call.i44 = tail call i32 @lock_is_held_type(ptr noundef %dep_map24, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44)
  %tobool26.not = icmp eq i32 %call.i44, 0
  br i1 %tobool26.not, label %land.lhs.true27, label %do.body16.do.end35_crit_edge

do.body16.do.end35_crit_edge:                     ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end35

land.lhs.true27:                                  ; preds = %do.body16
  %call28 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %land.lhs.true27.do.end35_crit_edge, label %land.lhs.true30

land.lhs.true27.do.end35_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end35

land.lhs.true30:                                  ; preds = %land.lhs.true27
  %.b4142 = load i1, ptr @__fib6_update_sernum_upto_root.__warned.21, align 1
  br i1 %.b4142, label %land.lhs.true30.do.end35_crit_edge, label %if.then32

land.lhs.true30.do.end35_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end35

if.then32:                                        ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__fib6_update_sernum_upto_root.__warned.21, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1351, ptr noundef nonnull @.str.1) #13
  br label %do.end35

do.end35:                                         ; preds = %if.then32, %land.lhs.true30.do.end35_crit_edge, %land.lhs.true27.do.end35_crit_edge, %do.body16.do.end35_crit_edge
  %7 = ptrtoint ptr %fn.046 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fn.046, align 4
  %tobool11.not = icmp eq ptr %8, null
  br i1 %tobool11.not, label %do.end35.while.end_crit_edge, label %do.end35.do.body16_crit_edge

do.end35.do.body16_crit_edge:                     ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body16

do.end35.while.end_crit_edge:                     ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %do.end35.while.end_crit_edge, %do.end.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fib6_update_sernum_stub(ptr noundef %net, ptr nocapture noundef readonly %f6i) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f6i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f6i, align 4
  %tb6_lock = getelementptr inbounds %struct.fib6_table, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %tb6_lock) #13
  %fib6_sernum.i.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 33
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %atomic_cmpxchg.exit.i.i.do.body.i.i_crit_edge, %entry
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %fib6_sernum.i.i, i32 noundef 4) #13
  %2 = ptrtoint ptr %fib6_sernum.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %fib6_sernum.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %3)
  %cmp.not.i.i = icmp eq i32 %3, 2147483647
  %add.i.i = add i32 %3, 1
  %spec.select.i.i = select i1 %cmp.not.i.i, i32 1, i32 %add.i.i
  %call.i.i10.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fib6_sernum.i.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !250
  tail call void @llvm.prefetch.p0(ptr %fib6_sernum.i.i, i32 1, i32 3, i32 1) #13
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %do.body.i.i
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %fib6_sernum.i.i, ptr %fib6_sernum.i.i, i32 %3, i32 %spec.select.i.i, ptr elementtype(i32) %fib6_sernum.i.i) #13, !srcloc !251
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %4, 0
  %tobool.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %atomic_cmpxchg.exit.i.i, label %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i.i.i.i

atomic_cmpxchg.exit.i.i:                          ; preds = %do.body.i.i.i.i.i
  %asmresult3.i.i.i.i.i = extractvalue { i32, i32 } %4, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !252
  %cmp4.not.i.i = icmp eq i32 %asmresult3.i.i.i.i.i, %3
  br i1 %cmp4.not.i.i, label %fib6_update_sernum_upto_root.exit, label %atomic_cmpxchg.exit.i.i.do.body.i.i_crit_edge

atomic_cmpxchg.exit.i.i.do.body.i.i_crit_edge:    ; preds = %atomic_cmpxchg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i

fib6_update_sernum_upto_root.exit:                ; preds = %atomic_cmpxchg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @__fib6_update_sernum_upto_root(ptr noundef %f6i, i32 noundef %spec.select.i.i) #13
  %5 = ptrtoint ptr %f6i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %f6i, align 4
  %tb6_lock2 = getelementptr inbounds %struct.fib6_table, ptr %6, i32 0, i32 2
  tail call void @_raw_spin_unlock_bh(ptr noundef %tb6_lock2) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fib6_add(ptr noundef %root, ptr noundef %rt, ptr noundef %info, ptr noundef %extack) local_unnamed_addr #0 align 64 {
entry:
  %info.i921.i = alloca %struct.fib6_entry_notifier_info, align 4
  %info.i.i = alloca %struct.fib6_entry_notifier_info, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rt, align 4
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end15_crit_edge, label %if.end11

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.end11:                                         ; preds = %entry
  %nlmsg_flags = getelementptr inbounds %struct.nlmsghdr, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %nlmsg_flags to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %nlmsg_flags, align 2
  %6 = lshr i16 %5, 10
  %.lobit = and i16 %6, 1
  %7 = and i16 %5, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool8.not = icmp ne i16 %7, 0
  %8 = or i16 %.lobit, %7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %do.end, label %if.end11.if.end15_crit_edge

if.end11.if.end15_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #18
  br label %if.end15

if.end15:                                         ; preds = %do.end, %if.end11.if.end15_crit_edge, %entry.if.end15_crit_edge
  %allow_create.1615.shrunk = phi i16 [ %.lobit, %if.end11.if.end15_crit_edge ], [ %.lobit, %do.end ], [ 1, %entry.if.end15_crit_edge ]
  %replace_required.0614.shrunk = phi i1 [ %tobool8.not, %if.end11.if.end15_crit_edge ], [ %tobool8.not, %do.end ], [ false, %entry.if.end15_crit_edge ]
  %replace_required.0614 = zext i1 %replace_required.0614.shrunk to i32
  %allow_create.1615 = zext i16 %allow_create.1615.shrunk to i32
  %nl_net = getelementptr inbounds %struct.nl_info, ptr %info, i32 0, i32 1
  %10 = ptrtoint ptr %nl_net to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %nl_net, align 4
  %fib6_dst = getelementptr inbounds %struct.fib6_info, ptr %rt, i32 0, i32 8
  %plen = getelementptr inbounds %struct.fib6_info, ptr %rt, i32 0, i32 8, i32 1
  %12 = ptrtoint ptr %plen to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %plen, align 4
  %call17 = tail call fastcc ptr @fib6_add_1(ptr noundef %11, ptr noundef %1, ptr noundef %root, ptr noundef %fib6_dst, i32 noundef %13, i32 noundef 36, i32 noundef %allow_create.1615, i32 noundef %replace_required.0614, ptr noundef %extack)
  %cmp.i = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %out, label %if.end21

if.end21:                                         ; preds = %if.end15
  %fib6_src = getelementptr inbounds %struct.fib6_info, ptr %rt, i32 0, i32 10
  %plen22 = getelementptr inbounds %struct.fib6_info, ptr %rt, i32 0, i32 10, i32 1
  %14 = ptrtoint ptr %plen22 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %plen22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool23.not = icmp eq i32 %15, 0
  br i1 %tobool23.not, label %if.end21.if.end296_crit_edge, label %if.then24

if.end21.if.end296_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end296

if.then24:                                        ; preds = %if.end21
  %subtree = getelementptr inbounds %struct.fib6_node, ptr %call17, i32 0, i32 3
  %16 = ptrtoint ptr %subtree to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %subtree, align 4
  %tobool30.not = icmp eq ptr %17, null
  %18 = ptrtoint ptr %nl_net to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %nl_net, align 4
  br i1 %tobool30.not, label %if.then31, label %if.else173

if.then31:                                        ; preds = %if.then24
  %20 = load ptr, ptr @fib6_node_kmem, align 4
  %call.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %20, i32 noundef 2848) #13
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then31.failure_crit_edge, label %if.end36

if.then31.failure_crit_edge:                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #15
  br label %failure

if.end36:                                         ; preds = %if.then31
  %rt6_stats.i = getelementptr inbounds %struct.net, ptr %19, i32 0, i32 36, i32 8
  %21 = ptrtoint ptr %rt6_stats.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rt6_stats.i, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %inc.i = add i32 %24, 1
  store i32 %inc.i, ptr %22, align 4
  %25 = ptrtoint ptr %nl_net to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %nl_net, align 4
  %fib6_null_entry = getelementptr inbounds %struct.net, ptr %26, i32 0, i32 36, i32 6
  %27 = ptrtoint ptr %fib6_null_entry to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fib6_null_entry, align 16
  %fib6_ref.i = getelementptr inbounds %struct.fib6_info, ptr %28, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fib6_ref.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %fib6_ref.i, i32 1, i32 3, i32 1) #13
  %29 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fib6_ref.i, ptr %fib6_ref.i, i32 1, ptr elementtype(i32) %fib6_ref.i) #13, !srcloc !262
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end36.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !263

if.end36.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end36
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %30 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %30)
  %.not.i.i.i.i = icmp sgt i32 %30, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.fib6_info_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !253

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.fib6_info_hold.exit_crit_edge:    ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %fib6_info_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end36.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end36.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %fib6_ref.i, i32 noundef %.sink.i.i.i.i) #13
  br label %fib6_info_hold.exit

fib6_info_hold.exit:                              ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.fib6_info_hold.exit_crit_edge
  %31 = ptrtoint ptr %nl_net to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %nl_net, align 4
  %fib6_null_entry41 = getelementptr inbounds %struct.net, ptr %32, i32 0, i32 36, i32 6
  %33 = ptrtoint ptr %fib6_null_entry41 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fib6_null_entry41, align 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !264
  %leaf67 = getelementptr inbounds %struct.fib6_node, ptr %call.i.i, i32 0, i32 4
  %35 = ptrtoint ptr %leaf67 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %34, ptr %leaf67, align 8
  %fn_flags = getelementptr inbounds %struct.fib6_node, ptr %call.i.i, i32 0, i32 6
  %36 = ptrtoint ptr %fn_flags to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 2, ptr %fn_flags, align 2
  %37 = ptrtoint ptr %nl_net to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %nl_net, align 4
  %39 = ptrtoint ptr %plen22 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %plen22, align 4
  %call84 = tail call fastcc ptr @fib6_add_1(ptr noundef %38, ptr noundef %1, ptr noundef nonnull %call.i.i, ptr noundef %fib6_src, i32 noundef %40, i32 noundef 60, i32 noundef %allow_create.1615, i32 noundef %replace_required.0614, ptr noundef %extack)
  %cmp.i561 = icmp ugt ptr %call84, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i561, label %if.then86, label %cleanup

if.then86:                                        ; preds = %fib6_info_hold.exit
  call void @__sanitizer_cov_trace_pc() #15
  %41 = ptrtoint ptr %nl_net to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %nl_net, align 4
  %43 = load ptr, ptr @fib6_node_kmem, align 4
  tail call void @kmem_cache_free(ptr noundef %43, ptr noundef nonnull %call.i.i) #13
  %rt6_stats.i562 = getelementptr inbounds %struct.net, ptr %42, i32 0, i32 36, i32 8
  %44 = ptrtoint ptr %rt6_stats.i562 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rt6_stats.i562, align 8
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 4
  %dec.i = add i32 %47, -1
  store i32 %dec.i, ptr %45, align 4
  %48 = ptrtoint ptr %call84 to i32
  br label %failure

cleanup:                                          ; preds = %fib6_info_hold.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !265
  %49 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %call17, ptr %call.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !266
  %50 = ptrtoint ptr %subtree to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %call.i.i, ptr %subtree, align 4
  br label %if.end189

if.else173:                                       ; preds = %if.then24
  %call184 = tail call fastcc ptr @fib6_add_1(ptr noundef %19, ptr noundef %1, ptr noundef nonnull %17, ptr noundef %fib6_src, i32 noundef %15, i32 noundef 60, i32 noundef %allow_create.1615, i32 noundef %replace_required.0614, ptr noundef %extack)
  %cmp.i563 = icmp ugt ptr %call184, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i563, label %if.then186, label %if.else173.if.end189_crit_edge

if.else173.if.end189_crit_edge:                   ; preds = %if.else173
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end189

if.then186:                                       ; preds = %if.else173
  call void @__sanitizer_cov_trace_pc() #15
  %51 = ptrtoint ptr %call184 to i32
  br label %failure

if.end189:                                        ; preds = %if.else173.if.end189_crit_edge, %cleanup
  %sn.1 = phi ptr [ %call184, %if.else173.if.end189_crit_edge ], [ %call84, %cleanup ]
  %leaf194 = getelementptr inbounds %struct.fib6_node, ptr %call17, i32 0, i32 4
  %52 = ptrtoint ptr %leaf194 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile ptr, ptr %leaf194, align 4
  %tobool196.not = icmp eq ptr %53, null
  br i1 %tobool196.not, label %if.then197, label %if.end189.if.end296_crit_edge

if.end189.if.end296_crit_edge:                    ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end296

if.then197:                                       ; preds = %if.end189
  %fn_flags198 = getelementptr inbounds %struct.fib6_node, ptr %call17, i32 0, i32 6
  %54 = ptrtoint ptr %fn_flags198 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %fn_flags198, align 2
  %56 = and i16 %55, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %tobool201.not = icmp eq i16 %56, 0
  br i1 %tobool201.not, label %if.else248, label %do.body203

do.body203:                                       ; preds = %if.then197
  call void @__sanitizer_cov_trace_pc() #15
  %57 = ptrtoint ptr %nl_net to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %nl_net, align 4
  %fib6_null_entry207 = getelementptr inbounds %struct.net, ptr %58, i32 0, i32 36, i32 6
  %59 = ptrtoint ptr %fib6_null_entry207 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %fib6_null_entry207, align 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !267
  br label %if.end296.sink.split

if.else248:                                       ; preds = %if.then197
  %fib6_ref.i564 = getelementptr inbounds %struct.fib6_info, ptr %rt, i32 0, i32 5
  %call.i.i.i.i.i.i565 = tail call zeroext i1 @__kasan_check_write(ptr noundef %fib6_ref.i564, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %fib6_ref.i564, i32 1, i32 3, i32 1) #13
  %61 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fib6_ref.i564, ptr %fib6_ref.i564, i32 1, ptr elementtype(i32) %fib6_ref.i564) #13, !srcloc !262
  %asmresult.i.i.i.i.i.i566 = extractvalue { i32, i32, i32 } %61, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i566)
  %tobool1.not.i.i.i.i567 = icmp eq i32 %asmresult.i.i.i.i.i.i566, 0
  br i1 %tobool1.not.i.i.i.i567, label %if.else248.if.end15.sink.split.i.i.i.i572_crit_edge, label %if.else.i.i.i.i570, !prof !263

if.else248.if.end15.sink.split.i.i.i.i572_crit_edge: ; preds = %if.else248
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i572

if.else.i.i.i.i570:                               ; preds = %if.else248
  %add.i.i.i.i568 = add i32 %asmresult.i.i.i.i.i.i566, 1
  %62 = or i32 %add.i.i.i.i568, %asmresult.i.i.i.i.i.i566
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %62)
  %.not.i.i.i.i569 = icmp sgt i32 %62, -1
  br i1 %.not.i.i.i.i569, label %if.else.i.i.i.i570.fib6_info_hold.exit573_crit_edge, label %if.else.i.i.i.i570.if.end15.sink.split.i.i.i.i572_crit_edge, !prof !253

if.else.i.i.i.i570.if.end15.sink.split.i.i.i.i572_crit_edge: ; preds = %if.else.i.i.i.i570
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i572

if.else.i.i.i.i570.fib6_info_hold.exit573_crit_edge: ; preds = %if.else.i.i.i.i570
  call void @__sanitizer_cov_trace_pc() #15
  br label %fib6_info_hold.exit573

if.end15.sink.split.i.i.i.i572:                   ; preds = %if.else.i.i.i.i570.if.end15.sink.split.i.i.i.i572_crit_edge, %if.else248.if.end15.sink.split.i.i.i.i572_crit_edge
  %.sink.i.i.i.i571 = phi i32 [ 2, %if.else248.if.end15.sink.split.i.i.i.i572_crit_edge ], [ 1, %if.else.i.i.i.i570.if.end15.sink.split.i.i.i.i572_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %fib6_ref.i564, i32 noundef %.sink.i.i.i.i571) #13
  br label %fib6_info_hold.exit573

fib6_info_hold.exit573:                           ; preds = %if.end15.sink.split.i.i.i.i572, %if.else.i.i.i.i570.fib6_info_hold.exit573_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !268
  br label %if.end296.sink.split

if.end296.sink.split:                             ; preds = %fib6_info_hold.exit573, %do.body203
  %rt.sink = phi ptr [ %rt, %fib6_info_hold.exit573 ], [ %60, %do.body203 ]
  %63 = ptrtoint ptr %leaf194 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %rt.sink, ptr %leaf194, align 4
  br label %if.end296

if.end296:                                        ; preds = %if.end296.sink.split, %if.end189.if.end296_crit_edge, %if.end21.if.end296_crit_edge
  %fn.1 = phi ptr [ %call17, %if.end21.if.end296_crit_edge ], [ %sn.1, %if.end189.if.end296_crit_edge ], [ %sn.1, %if.end296.sink.split ]
  %64 = ptrtoint ptr %rt to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %rt, align 4
  %dep_map.i = getelementptr inbounds %struct.fib6_table, ptr %65, i32 0, i32 2, i32 0, i32 0, i32 4
  %call.i.i574 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i574)
  %tobool.not.i575 = icmp eq i32 %call.i.i574, 0
  br i1 %tobool.not.i575, label %land.lhs.true.i, label %if.end296.do.end.i_crit_edge

if.end296.do.end.i_crit_edge:                     ; preds = %if.end296
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %if.end296
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b866.i = load i1, ptr @fib6_add_rt2node.__warned, align 1
  br i1 %.b866.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i576

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

if.then.i576:                                     ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @fib6_add_rt2node.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1072, ptr noundef nonnull @.str.1) #13
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i576, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %if.end296.do.end.i_crit_edge
  %leaf5.i = getelementptr inbounds %struct.fib6_node, ptr %fn.1, i32 0, i32 4
  %66 = ptrtoint ptr %leaf5.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %leaf5.i, align 4
  %68 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %info, align 4
  %tobool6.not.i = icmp eq ptr %69, null
  br i1 %tobool6.not.i, label %do.end.i.lor.end.i_crit_edge, label %lor.rhs.i

do.end.i.lor.end.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.end.i

lor.rhs.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %nlmsg_flags.i = getelementptr inbounds %struct.nlmsghdr, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %nlmsg_flags.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %nlmsg_flags.i, align 2
  %72 = and i16 %71, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %72)
  %tobool8.i = icmp ne i16 %72, 0
  %73 = and i16 %71, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %73)
  %tobool15.i = icmp ne i16 %73, 0
  br label %lor.end.i

lor.end.i:                                        ; preds = %lor.rhs.i, %do.end.i.lor.end.i_crit_edge
  %74 = phi i1 [ %tobool8.i, %lor.rhs.i ], [ false, %do.end.i.lor.end.i_crit_edge ]
  %75 = phi i1 [ %tobool15.i, %lor.rhs.i ], [ true, %do.end.i.lor.end.i_crit_edge ]
  %fib6_flags.i.i = getelementptr inbounds %struct.fib6_info, ptr %rt, i32 0, i32 9
  %76 = ptrtoint ptr %fib6_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %fib6_flags.i.i, align 4
  %and.i.i = and i32 %77, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %lor.end.i.rt6_qualify_for_ecmp.exit.i_crit_edge

lor.end.i.rt6_qualify_for_ecmp.exit.i_crit_edge:  ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt6_qualify_for_ecmp.exit.i

land.lhs.true.i.i:                                ; preds = %lor.end.i
  %nh.i.i = getelementptr inbounds %struct.fib6_info, ptr %rt, i32 0, i32 20
  %78 = ptrtoint ptr %nh.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %nh.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %79, null
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.rt6_qualify_for_ecmp.exit.i_crit_edge

land.lhs.true.i.i.rt6_qualify_for_ecmp.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt6_qualify_for_ecmp.exit.i

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %fib6_nh.i.i = getelementptr inbounds %struct.fib6_info, ptr %rt, i32 0, i32 21
  %nhc_gw_family.i.i = getelementptr inbounds %struct.fib_nh_common, ptr %fib6_nh.i.i, i32 0, i32 5
  %80 = ptrtoint ptr %nhc_gw_family.i.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %nhc_gw_family.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool2.i.i = icmp ne i8 %81, 0
  br label %rt6_qualify_for_ecmp.exit.i

rt6_qualify_for_ecmp.exit.i:                      ; preds = %land.rhs.i.i, %land.lhs.true.i.i.rt6_qualify_for_ecmp.exit.i_crit_edge, %lor.end.i.rt6_qualify_for_ecmp.exit.i_crit_edge
  %82 = phi i1 [ false, %land.lhs.true.i.i.rt6_qualify_for_ecmp.exit.i_crit_edge ], [ false, %lor.end.i.rt6_qualify_for_ecmp.exit.i_crit_edge ], [ %tobool2.i.i, %land.rhs.i.i ]
  br i1 %tobool6.not.i, label %rt6_qualify_for_ecmp.exit.i.if.end28.i_crit_edge, label %land.lhs.true19.i

rt6_qualify_for_ecmp.exit.i.if.end28.i_crit_edge: ; preds = %rt6_qualify_for_ecmp.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28.i

land.lhs.true19.i:                                ; preds = %rt6_qualify_for_ecmp.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %nlmsg_flags21.i = getelementptr inbounds %struct.nlmsghdr, ptr %69, i32 0, i32 2
  %83 = ptrtoint ptr %nlmsg_flags21.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %nlmsg_flags21.i, align 2
  %85 = and i16 %84, 2048
  %86 = or i16 %85, 512
  br label %if.end28.i

if.end28.i:                                       ; preds = %land.lhs.true19.i, %rt6_qualify_for_ecmp.exit.i.if.end28.i_crit_edge
  %nlflags.0.i = phi i16 [ 512, %rt6_qualify_for_ecmp.exit.i.if.end28.i_crit_edge ], [ %86, %land.lhs.true19.i ]
  %tobool30.not1005.i = icmp eq ptr %67, null
  br i1 %tobool30.not1005.i, label %if.end28.i.if.then139.i_crit_edge, label %for.body.lr.ph.i

if.end28.i.if.then139.i_crit_edge:                ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then139.i

for.body.lr.ph.i:                                 ; preds = %if.end28.i
  %fib6_metric31.i = getelementptr inbounds %struct.fib6_info, ptr %rt, i32 0, i32 12
  %nh1.i.i = getelementptr inbounds %struct.fib6_info, ptr %rt, i32 0, i32 20
  %fib6_nh5.i.i = getelementptr inbounds %struct.fib6_info, ptr %rt, i32 0, i32 21
  %nhc_gw11.i.i = getelementptr inbounds %struct.fib6_info, ptr %rt, i32 1, i32 4
  %arrayidx6.i.i.i = getelementptr %struct.fib6_info, ptr %rt, i32 1, i32 5
  %arrayidx11.i.i.i = getelementptr %struct.fib6_info, ptr %rt, i32 1, i32 6
  %arrayidx17.i.i.i = getelementptr %struct.fib6_info, ptr %rt, i32 1, i32 7
  %nhc_lwtstate15.i.i = getelementptr inbounds %struct.fib6_info, ptr %rt, i32 1, i32 3, i32 0, i32 1
  %fib6_nsiblings87.i = getelementptr inbounds %struct.fib6_info, ptr %rt, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %do.end111.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %iter.01010.i = phi ptr [ %67, %for.body.lr.ph.i ], [ %173, %do.end111.i.for.body.i_crit_edge ]
  %ins.01008.i = phi ptr [ %leaf5.i, %for.body.lr.ph.i ], [ %fib6_next.i, %do.end111.i.for.body.i_crit_edge ]
  %fallback_ins.01007.i = phi ptr [ null, %for.body.lr.ph.i ], [ %fallback_ins.1.i, %do.end111.i.for.body.i_crit_edge ]
  %nlflags.11006.i = phi i16 [ %nlflags.0.i, %for.body.lr.ph.i ], [ %nlflags.3.i, %do.end111.i.for.body.i_crit_edge ]
  %fib6_metric.i = getelementptr inbounds %struct.fib6_info, ptr %iter.01010.i, i32 0, i32 12
  %87 = ptrtoint ptr %fib6_metric.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %fib6_metric.i, align 4
  %89 = ptrtoint ptr %fib6_metric31.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %fib6_metric31.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %88, i32 %90)
  %cmp.i577 = icmp eq i32 %88, %90
  br i1 %cmp.i577, label %if.then33.i, label %for.body.i.if.end90.i_crit_edge

for.body.i.if.end90.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end90.i

if.then33.i:                                      ; preds = %for.body.i
  %91 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %info, align 4
  %tobool35.not.i = icmp eq ptr %92, null
  br i1 %tobool35.not.i, label %if.then33.i.if.end43.i_crit_edge, label %land.lhs.true36.i

if.then33.i.if.end43.i_crit_edge:                 ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end43.i

land.lhs.true36.i:                                ; preds = %if.then33.i
  %nlmsg_flags38.i = getelementptr inbounds %struct.nlmsghdr, ptr %92, i32 0, i32 2
  %93 = ptrtoint ptr %nlmsg_flags38.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %nlmsg_flags38.i, align 2
  %95 = and i16 %94, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %95)
  %tobool41.not.i = icmp eq i16 %95, 0
  br i1 %tobool41.not.i, label %land.lhs.true36.i.if.end43.i_crit_edge, label %land.lhs.true36.i.if.then309_crit_edge

land.lhs.true36.i.if.then309_crit_edge:           ; preds = %land.lhs.true36.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then309

land.lhs.true36.i.if.end43.i_crit_edge:           ; preds = %land.lhs.true36.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end43.i

if.end43.i:                                       ; preds = %land.lhs.true36.i.if.end43.i_crit_edge, %if.then33.i.if.end43.i_crit_edge
  %96 = and i16 %nlflags.11006.i, -513
  br i1 %74, label %if.then48.i, label %if.end58.i

if.then48.i:                                      ; preds = %if.end43.i
  %fib6_flags.i870.i = getelementptr inbounds %struct.fib6_info, ptr %iter.01010.i, i32 0, i32 9
  %97 = ptrtoint ptr %fib6_flags.i870.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %fib6_flags.i870.i, align 4
  %and.i871.i = and i32 %98, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i871.i)
  %tobool.not.i872.i = icmp eq i32 %and.i871.i, 0
  br i1 %tobool.not.i872.i, label %land.lhs.true.i875.i, label %if.then48.i.rt6_qualify_for_ecmp.exit880.thr_comm.i_crit_edge

if.then48.i.rt6_qualify_for_ecmp.exit880.thr_comm.i_crit_edge: ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt6_qualify_for_ecmp.exit880.thr_comm.i

land.lhs.true.i875.i:                             ; preds = %if.then48.i
  %nh.i873.i = getelementptr inbounds %struct.fib6_info, ptr %iter.01010.i, i32 0, i32 20
  %99 = ptrtoint ptr %nh.i873.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %nh.i873.i, align 4
  %tobool1.not.i874.i = icmp eq ptr %100, null
  br i1 %tobool1.not.i874.i, label %rt6_qualify_for_ecmp.exit880.i, label %land.lhs.true.i875.i.rt6_qualify_for_ecmp.exit880.thr_comm.i_crit_edge

land.lhs.true.i875.i.rt6_qualify_for_ecmp.exit880.thr_comm.i_crit_edge: ; preds = %land.lhs.true.i875.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt6_qualify_for_ecmp.exit880.thr_comm.i

rt6_qualify_for_ecmp.exit880.thr_comm.i:          ; preds = %land.lhs.true.i875.i.rt6_qualify_for_ecmp.exit880.thr_comm.i_crit_edge, %if.then48.i.rt6_qualify_for_ecmp.exit880.thr_comm.i_crit_edge
  br i1 %82, label %rt6_qualify_for_ecmp.exit880.thr_comm.i.if.end56.i_crit_edge, label %rt6_qualify_for_ecmp.exit880.thr_comm.i.if.end135.i_crit_edge

rt6_qualify_for_ecmp.exit880.thr_comm.i.if.end135.i_crit_edge: ; preds = %rt6_qualify_for_ecmp.exit880.thr_comm.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end135.i

rt6_qualify_for_ecmp.exit880.thr_comm.i.if.end56.i_crit_edge: ; preds = %rt6_qualify_for_ecmp.exit880.thr_comm.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end56.i

rt6_qualify_for_ecmp.exit880.i:                   ; preds = %land.lhs.true.i875.i
  %fib6_nh.i876.i = getelementptr inbounds %struct.fib6_info, ptr %iter.01010.i, i32 0, i32 21
  %nhc_gw_family.i877.i = getelementptr inbounds %struct.fib_nh_common, ptr %fib6_nh.i876.i, i32 0, i32 5
  %101 = ptrtoint ptr %nhc_gw_family.i877.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %nhc_gw_family.i877.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool2.i878.i = icmp ne i8 %102, 0
  %103 = xor i1 %82, %tobool2.i878.i
  br i1 %103, label %rt6_qualify_for_ecmp.exit880.i.if.end56.i_crit_edge, label %rt6_qualify_for_ecmp.exit880.i.if.end135.i_crit_edge

rt6_qualify_for_ecmp.exit880.i.if.end135.i_crit_edge: ; preds = %rt6_qualify_for_ecmp.exit880.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end135.i

rt6_qualify_for_ecmp.exit880.i.if.end56.i_crit_edge: ; preds = %rt6_qualify_for_ecmp.exit880.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end56.i

if.end56.i:                                       ; preds = %rt6_qualify_for_ecmp.exit880.i.if.end56.i_crit_edge, %rt6_qualify_for_ecmp.exit880.thr_comm.i.if.end56.i_crit_edge
  %tobool57.not.i = icmp eq ptr %fallback_ins.01007.i, null
  %spec.select867.i = select i1 %tobool57.not.i, ptr %ins.01008.i, ptr %fallback_ins.01007.i
  br label %next_iter.i

if.end58.i:                                       ; preds = %if.end43.i
  %nh.i881.i = getelementptr inbounds %struct.fib6_info, ptr %iter.01010.i, i32 0, i32 20
  %104 = ptrtoint ptr %nh.i881.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %nh.i881.i, align 4
  %tobool.not.i882.i = icmp eq ptr %105, null
  br i1 %tobool.not.i882.i, label %lor.lhs.false.i.i, label %if.end58.i.if.then.i.i_crit_edge

if.end58.i.if.then.i.i_crit_edge:                 ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i

lor.lhs.false.i.i:                                ; preds = %if.end58.i
  %106 = ptrtoint ptr %nh1.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %nh1.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %107, null
  br i1 %tobool2.not.i.i, label %if.end.i.i, label %lor.lhs.false.i.i.if.then.i.i_crit_edge

lor.lhs.false.i.i.if.then.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %lor.lhs.false.i.i.if.then.i.i_crit_edge, %if.end58.i.if.then.i.i_crit_edge
  %108 = ptrtoint ptr %nh1.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %nh1.i.i, align 4
  %cmp.i.i.i = icmp eq ptr %105, %109
  br i1 %cmp.i.i.i, label %if.then.i.i.if.then60.i_crit_edge, label %if.then.i.i.if.end80.i_crit_edge

if.then.i.i.if.end80.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end80.i

if.then.i.i.if.then60.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then60.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %fib6_nh.i883.i = getelementptr inbounds %struct.fib6_info, ptr %iter.01010.i, i32 0, i32 21
  %110 = ptrtoint ptr %fib6_nh.i883.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %fib6_nh.i883.i, align 4
  %112 = ptrtoint ptr %fib6_nh5.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %fib6_nh5.i.i, align 4
  %cmp.i.i = icmp eq ptr %111, %113
  br i1 %cmp.i.i, label %land.lhs.true.i884.i, label %if.end.i.i.if.end80.i_crit_edge

if.end.i.i.if.end80.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end80.i

land.lhs.true.i884.i:                             ; preds = %if.end.i.i
  %nhc_gw.i.i = getelementptr inbounds %struct.fib6_info, ptr %iter.01010.i, i32 1, i32 4
  %114 = ptrtoint ptr %nhc_gw.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %nhc_gw.i.i, align 4
  %116 = ptrtoint ptr %nhc_gw11.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %nhc_gw11.i.i, align 4
  %xor.i.i.i = xor i32 %117, %115
  %arrayidx4.i.i.i = getelementptr %struct.fib6_info, ptr %iter.01010.i, i32 1, i32 5
  %118 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx4.i.i.i, align 4
  %120 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx6.i.i.i, align 4
  %xor7.i.i.i = xor i32 %121, %119
  %or.i.i.i = or i32 %xor7.i.i.i, %xor.i.i.i
  %arrayidx9.i.i.i = getelementptr %struct.fib6_info, ptr %iter.01010.i, i32 1, i32 6
  %122 = ptrtoint ptr %arrayidx9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %arrayidx9.i.i.i, align 4
  %124 = ptrtoint ptr %arrayidx11.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx11.i.i.i, align 4
  %xor12.i.i.i = xor i32 %125, %123
  %or13.i.i.i = or i32 %or.i.i.i, %xor12.i.i.i
  %arrayidx15.i.i.i = getelementptr %struct.fib6_info, ptr %iter.01010.i, i32 1, i32 7
  %126 = ptrtoint ptr %arrayidx15.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx15.i.i.i, align 4
  %128 = ptrtoint ptr %arrayidx17.i.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx17.i.i.i, align 4
  %xor18.i.i.i = xor i32 %129, %127
  %or19.i.i.i = or i32 %or13.i.i.i, %xor18.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i.i.i)
  %cmp.i27.i.i = icmp eq i32 %or19.i.i.i, 0
  br i1 %cmp.i27.i.i, label %rt6_duplicate_nexthop.exit.i, label %land.lhs.true.i884.i.if.end80.i_crit_edge

land.lhs.true.i884.i.if.end80.i_crit_edge:        ; preds = %land.lhs.true.i884.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end80.i

rt6_duplicate_nexthop.exit.i:                     ; preds = %land.lhs.true.i884.i
  %nhc_lwtstate.i.i = getelementptr inbounds %struct.fib6_info, ptr %iter.01010.i, i32 1, i32 3, i32 0, i32 1
  %130 = ptrtoint ptr %nhc_lwtstate.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %nhc_lwtstate.i.i, align 4
  %132 = ptrtoint ptr %nhc_lwtstate15.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %nhc_lwtstate15.i.i, align 4
  %call16.i.i = tail call i32 @lwtunnel_cmp_encap(ptr noundef %131, ptr noundef %133) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.i)
  %tobool17.not.i.i = icmp eq i32 %call16.i.i, 0
  br i1 %tobool17.not.i.i, label %rt6_duplicate_nexthop.exit.i.if.then60.i_crit_edge, label %rt6_duplicate_nexthop.exit.i.if.end80.i_crit_edge

rt6_duplicate_nexthop.exit.i.if.end80.i_crit_edge: ; preds = %rt6_duplicate_nexthop.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end80.i

rt6_duplicate_nexthop.exit.i.if.then60.i_crit_edge: ; preds = %rt6_duplicate_nexthop.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then60.i

if.then60.i:                                      ; preds = %rt6_duplicate_nexthop.exit.i.if.then60.i_crit_edge, %if.then.i.i.if.then60.i_crit_edge
  %134 = ptrtoint ptr %fib6_nsiblings87.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %fib6_nsiblings87.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %tobool61.not.i = icmp eq i32 %135, 0
  br i1 %tobool61.not.i, label %if.then60.i.if.end64.i_crit_edge, label %if.then62.i

if.then60.i.if.end64.i_crit_edge:                 ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end64.i

if.then62.i:                                      ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #15
  %136 = ptrtoint ptr %fib6_nsiblings87.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 0, ptr %fib6_nsiblings87.i, align 4
  br label %if.end64.i

if.end64.i:                                       ; preds = %if.then62.i, %if.then60.i.if.end64.i_crit_edge
  %fib6_flags.i = getelementptr inbounds %struct.fib6_info, ptr %iter.01010.i, i32 0, i32 9
  %137 = ptrtoint ptr %fib6_flags.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %fib6_flags.i, align 4
  %and65.i = and i32 %138, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65.i)
  %tobool66.not.i = icmp eq i32 %and65.i, 0
  br i1 %tobool66.not.i, label %if.end64.i.if.then309_crit_edge, label %if.end68.i

if.end64.i.if.then309_crit_edge:                  ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then309

if.end68.i:                                       ; preds = %if.end64.i
  %139 = ptrtoint ptr %fib6_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %fib6_flags.i.i, align 4
  %and70.i = and i32 %140, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70.i)
  %tobool71.not.i = icmp eq i32 %and70.i, 0
  br i1 %tobool71.not.i, label %if.then72.i, label %if.else.i

if.then72.i:                                      ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #15
  %and.i887.i = and i32 %138, -4194305
  br label %if.end73.i

if.else.i:                                        ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #15
  %expires.i = getelementptr inbounds %struct.fib6_info, ptr %rt, i32 0, i32 6
  %141 = ptrtoint ptr %expires.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %expires.i, align 4
  %or.i.i = or i32 %138, 4194304
  br label %if.end73.i

if.end73.i:                                       ; preds = %if.else.i, %if.then72.i
  %storemerge.i = phi i32 [ %or.i.i, %if.else.i ], [ %and.i887.i, %if.then72.i ]
  %.sink.i = phi i32 [ %142, %if.else.i ], [ 0, %if.then72.i ]
  %143 = ptrtoint ptr %fib6_flags.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %storemerge.i, ptr %fib6_flags.i, align 4
  %144 = getelementptr inbounds %struct.fib6_info, ptr %iter.01010.i, i32 0, i32 6
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %.sink.i, ptr %144, align 4
  %fib6_metrics.i = getelementptr inbounds %struct.fib6_info, ptr %rt, i32 0, i32 7
  %146 = ptrtoint ptr %fib6_metrics.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %fib6_metrics.i, align 4
  %arrayidx.i = getelementptr [17 x i32], ptr %147, i32 0, i32 1
  %148 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %149)
  %tobool74.not.i = icmp eq i32 %149, 0
  br i1 %tobool74.not.i, label %if.end73.i.if.then309_crit_edge, label %if.end.i891.i

if.end73.i.if.then309_crit_edge:                  ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then309

if.end.i891.i:                                    ; preds = %if.end73.i
  %fib6_metrics.i.i = getelementptr inbounds %struct.fib6_info, ptr %iter.01010.i, i32 0, i32 7
  %150 = ptrtoint ptr %fib6_metrics.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %fib6_metrics.i.i, align 4
  %cmp.i890.i = icmp eq ptr %151, @dst_default_metrics
  br i1 %cmp.i890.i, label %if.then1.i.i, label %if.end.i891.i.if.end6.i.i_crit_edge

if.end.i891.i.if.end6.i.i_crit_edge:              ; preds = %if.end.i891.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6.i.i

if.then1.i.i:                                     ; preds = %if.end.i891.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %152 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %152, i32 noundef 2848, i32 noundef 72) #17
  %tobool2.not.i892.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool2.not.i892.i, label %if.then1.i.i.if.then309_crit_edge, label %cleanup.thread.i.i

if.then1.i.i.if.then309_crit_edge:                ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then309

cleanup.thread.i.i:                               ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %refcnt.i.i = getelementptr inbounds %struct.dst_metrics, ptr %call7.i.i.i.i, i32 0, i32 1
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i, i32 noundef 4) #13
  %153 = ptrtoint ptr %refcnt.i.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store volatile i32 1, ptr %refcnt.i.i, align 4
  %154 = ptrtoint ptr %fib6_metrics.i.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %call7.i.i.i.i, ptr %fib6_metrics.i.i, align 4
  br label %if.end6.i.i

if.end6.i.i:                                      ; preds = %cleanup.thread.i.i, %if.end.i891.i.if.end6.i.i_crit_edge
  %155 = ptrtoint ptr %fib6_metrics.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %fib6_metrics.i.i, align 4
  %arrayidx.i.i = getelementptr [17 x i32], ptr %156, i32 0, i32 1
  %157 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %149, ptr %arrayidx.i.i, align 4
  br label %if.then309

if.end80.i:                                       ; preds = %rt6_duplicate_nexthop.exit.i.if.end80.i_crit_edge, %land.lhs.true.i884.i.if.end80.i_crit_edge, %if.end.i.i.if.end80.i_crit_edge, %if.then.i.i.if.end80.i_crit_edge
  br i1 %82, label %land.lhs.true83.i, label %if.end80.i.if.end90.i_crit_edge

if.end80.i.if.end90.i_crit_edge:                  ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end90.i

land.lhs.true83.i:                                ; preds = %if.end80.i
  %fib6_flags.i893.i = getelementptr inbounds %struct.fib6_info, ptr %iter.01010.i, i32 0, i32 9
  %158 = ptrtoint ptr %fib6_flags.i893.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %fib6_flags.i893.i, align 4
  %and.i894.i = and i32 %159, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i894.i)
  %tobool.not.i895.i = icmp eq i32 %and.i894.i, 0
  br i1 %tobool.not.i895.i, label %land.lhs.true.i898.i, label %land.lhs.true83.i.if.end90.i_crit_edge

land.lhs.true83.i.if.end90.i_crit_edge:           ; preds = %land.lhs.true83.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end90.i

land.lhs.true.i898.i:                             ; preds = %land.lhs.true83.i
  %160 = ptrtoint ptr %nh.i881.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %nh.i881.i, align 4
  %tobool1.not.i897.i = icmp eq ptr %161, null
  br i1 %tobool1.not.i897.i, label %rt6_qualify_for_ecmp.exit903.i, label %land.lhs.true.i898.i.if.end90.i_crit_edge

land.lhs.true.i898.i.if.end90.i_crit_edge:        ; preds = %land.lhs.true.i898.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end90.i

rt6_qualify_for_ecmp.exit903.i:                   ; preds = %land.lhs.true.i898.i
  %fib6_nh.i899.i = getelementptr inbounds %struct.fib6_info, ptr %iter.01010.i, i32 0, i32 21
  %nhc_gw_family.i900.i = getelementptr inbounds %struct.fib_nh_common, ptr %fib6_nh.i899.i, i32 0, i32 5
  %162 = ptrtoint ptr %nhc_gw_family.i900.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %nhc_gw_family.i900.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %163)
  %tobool2.i901.not.i = icmp eq i8 %163, 0
  br i1 %tobool2.i901.not.i, label %rt6_qualify_for_ecmp.exit903.i.if.end90.i_crit_edge, label %if.then86.i

rt6_qualify_for_ecmp.exit903.i.if.end90.i_crit_edge: ; preds = %rt6_qualify_for_ecmp.exit903.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end90.i

if.then86.i:                                      ; preds = %rt6_qualify_for_ecmp.exit903.i
  call void @__sanitizer_cov_trace_pc() #15
  %164 = ptrtoint ptr %fib6_nsiblings87.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %fib6_nsiblings87.i, align 4
  %inc88.i = add i32 %165, 1
  store i32 %inc88.i, ptr %fib6_nsiblings87.i, align 4
  br label %if.end90.i

if.end90.i:                                       ; preds = %if.then86.i, %rt6_qualify_for_ecmp.exit903.i.if.end90.i_crit_edge, %land.lhs.true.i898.i.if.end90.i_crit_edge, %land.lhs.true83.i.if.end90.i_crit_edge, %if.end80.i.if.end90.i_crit_edge, %for.body.i.if.end90.i_crit_edge
  %nlflags.2.i = phi i16 [ %96, %if.then86.i ], [ %96, %rt6_qualify_for_ecmp.exit903.i.if.end90.i_crit_edge ], [ %96, %if.end80.i.if.end90.i_crit_edge ], [ %nlflags.11006.i, %for.body.i.if.end90.i_crit_edge ], [ %96, %land.lhs.true.i898.i.if.end90.i_crit_edge ], [ %96, %land.lhs.true83.i.if.end90.i_crit_edge ]
  %166 = ptrtoint ptr %fib6_metric.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %fib6_metric.i, align 4
  %168 = ptrtoint ptr %fib6_metric31.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %fib6_metric31.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %167, i32 %169)
  %cmp93.i = icmp ugt i32 %167, %169
  br i1 %cmp93.i, label %if.end90.i.for.end.i_crit_edge, label %if.end90.i.next_iter.i_crit_edge

if.end90.i.next_iter.i_crit_edge:                 ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %next_iter.i

if.end90.i.for.end.i_crit_edge:                   ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

next_iter.i:                                      ; preds = %if.end90.i.next_iter.i_crit_edge, %if.end56.i
  %nlflags.3.i = phi i16 [ %96, %if.end56.i ], [ %nlflags.2.i, %if.end90.i.next_iter.i_crit_edge ]
  %fallback_ins.1.i = phi ptr [ %spec.select867.i, %if.end56.i ], [ %fallback_ins.01007.i, %if.end90.i.next_iter.i_crit_edge ]
  %fib6_next.i = getelementptr inbounds %struct.fib6_info, ptr %iter.01010.i, i32 0, i32 1
  %170 = ptrtoint ptr %rt to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %rt, align 4
  %dep_map100.i = getelementptr inbounds %struct.fib6_table, ptr %171, i32 0, i32 2, i32 0, i32 0, i32 4
  %call.i904.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map100.i, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i904.i)
  %tobool102.not.i = icmp eq i32 %call.i904.i, 0
  br i1 %tobool102.not.i, label %land.lhs.true103.i, label %next_iter.i.do.end111.i_crit_edge

next_iter.i.do.end111.i_crit_edge:                ; preds = %next_iter.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end111.i

land.lhs.true103.i:                               ; preds = %next_iter.i
  %call104.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104.i)
  %tobool105.not.i = icmp eq i32 %call104.i, 0
  br i1 %tobool105.not.i, label %land.lhs.true103.i.do.end111.i_crit_edge, label %land.lhs.true106.i

land.lhs.true103.i.do.end111.i_crit_edge:         ; preds = %land.lhs.true103.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end111.i

land.lhs.true106.i:                               ; preds = %land.lhs.true103.i
  %.b855865.i = load i1, ptr @fib6_add_rt2node.__warned.36, align 1
  br i1 %.b855865.i, label %land.lhs.true106.i.do.end111.i_crit_edge, label %if.then108.i

land.lhs.true106.i.do.end111.i_crit_edge:         ; preds = %land.lhs.true106.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end111.i

if.then108.i:                                     ; preds = %land.lhs.true106.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @fib6_add_rt2node.__warned.36, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1093, ptr noundef nonnull @.str.1) #13
  br label %do.end111.i

do.end111.i:                                      ; preds = %if.then108.i, %land.lhs.true106.i.do.end111.i_crit_edge, %land.lhs.true103.i.do.end111.i_crit_edge, %next_iter.i.do.end111.i_crit_edge
  %172 = ptrtoint ptr %fib6_next.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %fib6_next.i, align 4
  %tobool30.not.i = icmp eq ptr %173, null
  br i1 %tobool30.not.i, label %do.end111.i.for.end.i_crit_edge, label %do.end111.i.for.body.i_crit_edge

do.end111.i.for.body.i_crit_edge:                 ; preds = %do.end111.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

do.end111.i.for.end.i_crit_edge:                  ; preds = %do.end111.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.end.i:                                        ; preds = %do.end111.i.for.end.i_crit_edge, %if.end90.i.for.end.i_crit_edge
  %fallback_ins.0.lcssa.i = phi ptr [ %fallback_ins.1.i, %do.end111.i.for.end.i_crit_edge ], [ %fallback_ins.01007.i, %if.end90.i.for.end.i_crit_edge ]
  %ins.0.lcssa.i = phi ptr [ %fib6_next.i, %do.end111.i.for.end.i_crit_edge ], [ %ins.01008.i, %if.end90.i.for.end.i_crit_edge ]
  %iter.0.lcssa.i = phi ptr [ null, %do.end111.i.for.end.i_crit_edge ], [ %iter.01010.i, %if.end90.i.for.end.i_crit_edge ]
  %nlflags.4.i = phi i16 [ %nlflags.3.i, %do.end111.i.for.end.i_crit_edge ], [ %nlflags.2.i, %if.end90.i.for.end.i_crit_edge ]
  %tobool114.not.i = icmp eq ptr %fallback_ins.0.lcssa.i, null
  %not.tobool114.not.i = xor i1 %tobool114.not.i, true
  %found.0.mux.i = zext i1 %not.tobool114.not.i to i32
  br i1 %tobool114.not.i, label %for.end.i.if.end135.i_crit_edge, label %if.then117.i

for.end.i.if.end135.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end135.i

if.then117.i:                                     ; preds = %for.end.i
  %174 = ptrtoint ptr %rt to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %rt, align 4
  %dep_map121.i = getelementptr inbounds %struct.fib6_table, ptr %175, i32 0, i32 2, i32 0, i32 0, i32 4
  %call.i905.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map121.i, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i905.i)
  %tobool123.not.i = icmp eq i32 %call.i905.i, 0
  br i1 %tobool123.not.i, label %land.lhs.true124.i, label %if.then117.i.do.end132.i_crit_edge

if.then117.i.do.end132.i_crit_edge:               ; preds = %if.then117.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end132.i

land.lhs.true124.i:                               ; preds = %if.then117.i
  %call125.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125.i)
  %tobool126.not.i = icmp eq i32 %call125.i, 0
  br i1 %tobool126.not.i, label %land.lhs.true124.i.do.end132.i_crit_edge, label %land.lhs.true127.i

land.lhs.true124.i.do.end132.i_crit_edge:         ; preds = %land.lhs.true124.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end132.i

land.lhs.true127.i:                               ; preds = %land.lhs.true124.i
  %.b856864.i = load i1, ptr @fib6_add_rt2node.__warned.37, align 1
  br i1 %.b856864.i, label %land.lhs.true127.i.do.end132.i_crit_edge, label %if.then129.i

land.lhs.true127.i.do.end132.i_crit_edge:         ; preds = %land.lhs.true127.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end132.i

if.then129.i:                                     ; preds = %land.lhs.true127.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @fib6_add_rt2node.__warned.37, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1160, ptr noundef nonnull @.str.1) #13
  br label %do.end132.i

do.end132.i:                                      ; preds = %if.then129.i, %land.lhs.true127.i.do.end132.i_crit_edge, %land.lhs.true124.i.do.end132.i_crit_edge, %if.then117.i.do.end132.i_crit_edge
  %176 = ptrtoint ptr %fallback_ins.0.lcssa.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %fallback_ins.0.lcssa.i, align 4
  br label %if.end135.i

if.end135.i:                                      ; preds = %do.end132.i, %for.end.i.if.end135.i_crit_edge, %rt6_qualify_for_ecmp.exit880.i.if.end135.i_crit_edge, %rt6_qualify_for_ecmp.exit880.thr_comm.i.if.end135.i_crit_edge
  %nlflags.4976.i = phi i16 [ %nlflags.4.i, %do.end132.i ], [ %nlflags.4.i, %for.end.i.if.end135.i_crit_edge ], [ %96, %rt6_qualify_for_ecmp.exit880.thr_comm.i.if.end135.i_crit_edge ], [ %96, %rt6_qualify_for_ecmp.exit880.i.if.end135.i_crit_edge ]
  %178 = phi i1 [ %74, %do.end132.i ], [ %74, %for.end.i.if.end135.i_crit_edge ], [ true, %rt6_qualify_for_ecmp.exit880.thr_comm.i.if.end135.i_crit_edge ], [ true, %rt6_qualify_for_ecmp.exit880.i.if.end135.i_crit_edge ]
  %found.1.i = phi i32 [ 1, %do.end132.i ], [ %found.0.mux.i, %for.end.i.if.end135.i_crit_edge ], [ 1, %rt6_qualify_for_ecmp.exit880.thr_comm.i.if.end135.i_crit_edge ], [ 1, %rt6_qualify_for_ecmp.exit880.i.if.end135.i_crit_edge ]
  %ins.1.i = phi ptr [ %fallback_ins.0.lcssa.i, %do.end132.i ], [ %ins.0.lcssa.i, %for.end.i.if.end135.i_crit_edge ], [ %ins.01008.i, %rt6_qualify_for_ecmp.exit880.thr_comm.i.if.end135.i_crit_edge ], [ %ins.01008.i, %rt6_qualify_for_ecmp.exit880.i.if.end135.i_crit_edge ]
  %iter.1.i = phi ptr [ %177, %do.end132.i ], [ %iter.0.lcssa.i, %for.end.i.if.end135.i_crit_edge ], [ %iter.01010.i, %rt6_qualify_for_ecmp.exit880.thr_comm.i.if.end135.i_crit_edge ], [ %iter.01010.i, %rt6_qualify_for_ecmp.exit880.i.if.end135.i_crit_edge ]
  %cmp137.i = icmp eq ptr %ins.1.i, %leaf5.i
  br i1 %cmp137.i, label %if.end135.i.if.then139.i_crit_edge, label %if.end135.i.if.end140.i_crit_edge

if.end135.i.if.end140.i_crit_edge:                ; preds = %if.end135.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end140.i

if.end135.i.if.then139.i_crit_edge:               ; preds = %if.end135.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then139.i

if.then139.i:                                     ; preds = %if.end135.i.if.then139.i_crit_edge, %if.end28.i.if.then139.i_crit_edge
  %iter.11080.i = phi ptr [ %iter.1.i, %if.end135.i.if.then139.i_crit_edge ], [ null, %if.end28.i.if.then139.i_crit_edge ]
  %found.11075.i = phi i32 [ %found.1.i, %if.end135.i.if.then139.i_crit_edge ], [ 0, %if.end28.i.if.then139.i_crit_edge ]
  %179 = phi i1 [ %178, %if.end135.i.if.then139.i_crit_edge ], [ %74, %if.end28.i.if.then139.i_crit_edge ]
  %nlflags.49761073.i = phi i16 [ %nlflags.4976.i, %if.end135.i.if.then139.i_crit_edge ], [ %nlflags.0.i, %if.end28.i.if.then139.i_crit_edge ]
  %rr_ptr.i = getelementptr inbounds %struct.fib6_node, ptr %fn.1, i32 0, i32 8
  %180 = ptrtoint ptr %rr_ptr.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr null, ptr %rr_ptr.i, align 4
  br label %if.end140.i

if.end140.i:                                      ; preds = %if.then139.i, %if.end135.i.if.end140.i_crit_edge
  %cmp1371082.i = phi i1 [ true, %if.then139.i ], [ false, %if.end135.i.if.end140.i_crit_edge ]
  %iter.11079.i = phi ptr [ %iter.11080.i, %if.then139.i ], [ %iter.1.i, %if.end135.i.if.end140.i_crit_edge ]
  %ins.11076.i = phi ptr [ %leaf5.i, %if.then139.i ], [ %ins.1.i, %if.end135.i.if.end140.i_crit_edge ]
  %found.11074.i = phi i32 [ %found.11075.i, %if.then139.i ], [ %found.1.i, %if.end135.i.if.end140.i_crit_edge ]
  %181 = phi i1 [ %179, %if.then139.i ], [ %178, %if.end135.i.if.end140.i_crit_edge ]
  %nlflags.49761072.i = phi i16 [ %nlflags.49761073.i, %if.then139.i ], [ %nlflags.4976.i, %if.end135.i.if.end140.i_crit_edge ]
  %fib6_nsiblings141.i = getelementptr inbounds %struct.fib6_info, ptr %rt, i32 0, i32 4
  %182 = ptrtoint ptr %fib6_nsiblings141.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %fib6_nsiblings141.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %183)
  %tobool142.not.i = icmp eq i32 %183, 0
  br i1 %tobool142.not.i, label %if.end140.i.if.end228.i_crit_edge, label %while.cond.preheader.i

if.end140.i.if.end228.i_crit_edge:                ; preds = %if.end140.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end228.i

while.cond.preheader.i:                           ; preds = %if.end140.i
  br i1 %tobool30.not1005.i, label %while.cond.preheader.i.while.end.i_crit_edge, label %while.body.lr.ph.i

while.cond.preheader.i.while.end.i_crit_edge:     ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %while.cond.preheader.i
  %fib6_metric147.i = getelementptr inbounds %struct.fib6_info, ptr %rt, i32 0, i32 12
  br label %while.body.i

while.body.i:                                     ; preds = %do.end169.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %notify_sibling_rt.01023.i = phi i1 [ true, %while.body.lr.ph.i ], [ false, %do.end169.i.while.body.i_crit_edge ]
  %sibling.01021.i = phi ptr [ %67, %while.body.lr.ph.i ], [ %205, %do.end169.i.while.body.i_crit_edge ]
  %fib6_metric146.i = getelementptr inbounds %struct.fib6_info, ptr %sibling.01021.i, i32 0, i32 12
  %184 = ptrtoint ptr %fib6_metric146.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %fib6_metric146.i, align 4
  %186 = ptrtoint ptr %fib6_metric147.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %fib6_metric147.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %185, i32 %187)
  %cmp148.i = icmp eq i32 %185, %187
  br i1 %cmp148.i, label %land.lhs.true150.i, label %while.body.i.do.body155.i_crit_edge

while.body.i.do.body155.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body155.i

land.lhs.true150.i:                               ; preds = %while.body.i
  %fib6_flags.i906.i = getelementptr inbounds %struct.fib6_info, ptr %sibling.01021.i, i32 0, i32 9
  %188 = ptrtoint ptr %fib6_flags.i906.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %fib6_flags.i906.i, align 4
  %and.i907.i = and i32 %189, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i907.i)
  %tobool.not.i908.i = icmp eq i32 %and.i907.i, 0
  br i1 %tobool.not.i908.i, label %land.lhs.true.i911.i, label %land.lhs.true150.i.do.body155.i_crit_edge

land.lhs.true150.i.do.body155.i_crit_edge:        ; preds = %land.lhs.true150.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body155.i

land.lhs.true.i911.i:                             ; preds = %land.lhs.true150.i
  %nh.i909.i = getelementptr inbounds %struct.fib6_info, ptr %sibling.01021.i, i32 0, i32 20
  %190 = ptrtoint ptr %nh.i909.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %nh.i909.i, align 4
  %tobool1.not.i910.i = icmp eq ptr %191, null
  br i1 %tobool1.not.i910.i, label %rt6_qualify_for_ecmp.exit916.i, label %land.lhs.true.i911.i.do.body155.i_crit_edge

land.lhs.true.i911.i.do.body155.i_crit_edge:      ; preds = %land.lhs.true.i911.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body155.i

rt6_qualify_for_ecmp.exit916.i:                   ; preds = %land.lhs.true.i911.i
  %fib6_nh.i912.i = getelementptr inbounds %struct.fib6_info, ptr %sibling.01021.i, i32 0, i32 21
  %nhc_gw_family.i913.i = getelementptr inbounds %struct.fib_nh_common, ptr %fib6_nh.i912.i, i32 0, i32 5
  %192 = ptrtoint ptr %nhc_gw_family.i913.i to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %nhc_gw_family.i913.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %193)
  %tobool2.i914.not.i = icmp eq i8 %193, 0
  br i1 %tobool2.i914.not.i, label %rt6_qualify_for_ecmp.exit916.i.do.body155.i_crit_edge, label %if.then153.i

rt6_qualify_for_ecmp.exit916.i.do.body155.i_crit_edge: ; preds = %rt6_qualify_for_ecmp.exit916.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body155.i

if.then153.i:                                     ; preds = %rt6_qualify_for_ecmp.exit916.i
  %194 = getelementptr inbounds %struct.fib6_info, ptr %rt, i32 0, i32 3
  %195 = getelementptr inbounds %struct.fib6_info, ptr %sibling.01021.i, i32 0, i32 3
  %prev.i.i = getelementptr inbounds %struct.fib6_info, ptr %sibling.01021.i, i32 0, i32 3, i32 0, i32 1
  %196 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %194, ptr noundef %197, ptr noundef %195) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then153.i.while.end.i_crit_edge

if.then153.i.while.end.i_crit_edge:               ; preds = %if.then153.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

if.end.i.i.i:                                     ; preds = %if.then153.i
  call void @__sanitizer_cov_trace_pc() #15
  %198 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store ptr %194, ptr %prev.i.i, align 4
  %199 = ptrtoint ptr %194 to i32
  call void @__asan_store4_noabort(i32 %199)
  store ptr %195, ptr %194, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.fib6_info, ptr %rt, i32 0, i32 3, i32 0, i32 1
  %200 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr %197, ptr %prev3.i.i.i, align 4
  %201 = ptrtoint ptr %197 to i32
  call void @__asan_store4_noabort(i32 %201)
  store volatile ptr %194, ptr %197, align 4
  br label %while.end.i

do.body155.i:                                     ; preds = %rt6_qualify_for_ecmp.exit916.i.do.body155.i_crit_edge, %land.lhs.true.i911.i.do.body155.i_crit_edge, %land.lhs.true150.i.do.body155.i_crit_edge, %while.body.i.do.body155.i_crit_edge
  %202 = ptrtoint ptr %rt to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %rt, align 4
  %dep_map158.i = getelementptr inbounds %struct.fib6_table, ptr %203, i32 0, i32 2, i32 0, i32 0, i32 4
  %call.i917.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map158.i, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i917.i)
  %tobool160.not.i = icmp eq i32 %call.i917.i, 0
  br i1 %tobool160.not.i, label %land.lhs.true161.i, label %do.body155.i.do.end169.i_crit_edge

do.body155.i.do.end169.i_crit_edge:               ; preds = %do.body155.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end169.i

land.lhs.true161.i:                               ; preds = %do.body155.i
  %call162.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call162.i)
  %tobool163.not.i = icmp eq i32 %call162.i, 0
  br i1 %tobool163.not.i, label %land.lhs.true161.i.do.end169.i_crit_edge, label %land.lhs.true164.i

land.lhs.true161.i.do.end169.i_crit_edge:         ; preds = %land.lhs.true161.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end169.i

land.lhs.true164.i:                               ; preds = %land.lhs.true161.i
  %.b857863.i = load i1, ptr @fib6_add_rt2node.__warned.38, align 1
  br i1 %.b857863.i, label %land.lhs.true164.i.do.end169.i_crit_edge, label %if.then166.i

land.lhs.true164.i.do.end169.i_crit_edge:         ; preds = %land.lhs.true164.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end169.i

if.then166.i:                                     ; preds = %land.lhs.true164.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @fib6_add_rt2node.__warned.38, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1184, ptr noundef nonnull @.str.1) #13
  br label %do.end169.i

do.end169.i:                                      ; preds = %if.then166.i, %land.lhs.true164.i.do.end169.i_crit_edge, %land.lhs.true161.i.do.end169.i_crit_edge, %do.body155.i.do.end169.i_crit_edge
  %fib6_next171.i = getelementptr inbounds %struct.fib6_info, ptr %sibling.01021.i, i32 0, i32 1
  %204 = ptrtoint ptr %fib6_next171.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %fib6_next171.i, align 4
  %tobool145.not.i = icmp eq ptr %205, null
  br i1 %tobool145.not.i, label %do.end169.i.while.end.i_crit_edge, label %do.end169.i.while.body.i_crit_edge

do.end169.i.while.body.i_crit_edge:               ; preds = %do.end169.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

do.end169.i.while.end.i_crit_edge:                ; preds = %do.end169.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

while.end.i:                                      ; preds = %do.end169.i.while.end.i_crit_edge, %if.end.i.i.i, %if.then153.i.while.end.i_crit_edge, %while.cond.preheader.i.while.end.i_crit_edge
  %notify_sibling_rt.0993.i = phi i1 [ %notify_sibling_rt.01023.i, %if.end.i.i.i ], [ %notify_sibling_rt.01023.i, %if.then153.i.while.end.i_crit_edge ], [ true, %while.cond.preheader.i.while.end.i_crit_edge ], [ false, %do.end169.i.while.end.i_crit_edge ]
  %206 = getelementptr inbounds %struct.fib6_info, ptr %rt, i32 0, i32 3
  %207 = ptrtoint ptr %206 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %206, align 4
  %add.ptr.i = getelementptr i8, ptr %208, i32 -12
  %209 = ptrtoint ptr %208 to i32
  call void @__asan_load4_noabort(i32 %209)
  %.pn8621025.i = load ptr, ptr %208, align 4
  %temp_sibling.01026.i = getelementptr i8, ptr %.pn8621025.i, i32 -12
  %cmp178.not1027.i = icmp eq ptr %add.ptr.i, %rt
  br i1 %cmp178.not1027.i, label %while.end.i.do.body208.i_crit_edge, label %while.end.i.for.body180.i_crit_edge

while.end.i.for.body180.i_crit_edge:              ; preds = %while.end.i
  br label %for.body180.i

while.end.i.do.body208.i_crit_edge:               ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body208.i

for.body180.i:                                    ; preds = %do.end200.i.for.body180.i_crit_edge, %while.end.i.for.body180.i_crit_edge
  %temp_sibling.01031.i = phi ptr [ %temp_sibling.0.i, %do.end200.i.for.body180.i_crit_edge ], [ %temp_sibling.01026.i, %while.end.i.for.body180.i_crit_edge ]
  %.pn8621030.i = phi ptr [ %.pn862.i, %do.end200.i.for.body180.i_crit_edge ], [ %.pn8621025.i, %while.end.i.for.body180.i_crit_edge ]
  %fib6_nsiblings144.01029.i = phi i32 [ %inc201.i, %do.end200.i.for.body180.i_crit_edge ], [ 0, %while.end.i.for.body180.i_crit_edge ]
  %sibling.11028.i = phi ptr [ %temp_sibling.01031.i, %do.end200.i.for.body180.i_crit_edge ], [ %add.ptr.i, %while.end.i.for.body180.i_crit_edge ]
  %fib6_nsiblings181.i = getelementptr inbounds %struct.fib6_info, ptr %sibling.11028.i, i32 0, i32 4
  %210 = ptrtoint ptr %fib6_nsiblings181.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %fib6_nsiblings181.i, align 4
  %inc182.i = add i32 %211, 1
  store i32 %inc182.i, ptr %fib6_nsiblings181.i, align 4
  %212 = ptrtoint ptr %fib6_nsiblings141.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %fib6_nsiblings141.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc182.i, i32 %213)
  %cmp186.not.i = icmp eq i32 %inc182.i, %213
  br i1 %cmp186.not.i, label %do.end200.i, label %do.body192.i, !prof !253

do.body192.i:                                     ; preds = %for.body180.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv6/ip6_fib.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1195, 0\0A.popsection", ""() #13, !srcloc !269
  unreachable

do.end200.i:                                      ; preds = %for.body180.i
  %inc201.i = add i32 %fib6_nsiblings144.01029.i, 1
  %214 = ptrtoint ptr %.pn8621030.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %.pn862.i = load ptr, ptr %.pn8621030.i, align 4
  %temp_sibling.0.i = getelementptr i8, ptr %.pn862.i, i32 -12
  %cmp178.not.i = icmp eq ptr %temp_sibling.01031.i, %rt
  br i1 %cmp178.not.i, label %do.end200.i.do.body208.i_crit_edge, label %do.end200.i.for.body180.i_crit_edge

do.end200.i.for.body180.i_crit_edge:              ; preds = %do.end200.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body180.i

do.end200.i.do.body208.i_crit_edge:               ; preds = %do.end200.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body208.i

do.body208.i:                                     ; preds = %do.end200.i.do.body208.i_crit_edge, %while.end.i.do.body208.i_crit_edge
  %fib6_nsiblings144.0.lcssa.i = phi i32 [ 0, %while.end.i.do.body208.i_crit_edge ], [ %inc201.i, %do.end200.i.do.body208.i_crit_edge ]
  %temp_sibling.0.lcssa.i = phi ptr [ %temp_sibling.01026.i, %while.end.i.do.body208.i_crit_edge ], [ %temp_sibling.0.i, %do.end200.i.do.body208.i_crit_edge ]
  %215 = ptrtoint ptr %fib6_nsiblings141.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %fib6_nsiblings141.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %fib6_nsiblings144.0.lcssa.i, i32 %216)
  %cmp210.not.i = icmp eq i32 %fib6_nsiblings144.0.lcssa.i, %216
  br i1 %cmp210.not.i, label %do.end227.i, label %do.body219.i, !prof !253

do.body219.i:                                     ; preds = %do.body208.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv6/ip6_fib.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1198, 0\0A.popsection", ""() #13, !srcloc !270
  unreachable

do.end227.i:                                      ; preds = %do.body208.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @rt6_multipath_rebalance(ptr noundef %temp_sibling.0.lcssa.i) #13
  br label %if.end228.i

if.end228.i:                                      ; preds = %do.end227.i, %if.end140.i.if.end228.i_crit_edge
  %notify_sibling_rt.1.off0.i = phi i1 [ %notify_sibling_rt.0993.i, %do.end227.i ], [ false, %if.end140.i.if.end228.i_crit_edge ]
  br i1 %181, label %if.else432.i, label %if.then230.i

if.then230.i:                                     ; preds = %if.end228.i
  br i1 %75, label %if.then230.i.add239.i_crit_edge, label %do.end235.i

if.then230.i.add239.i_crit_edge:                  ; preds = %if.then230.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %add239.i

do.end235.i:                                      ; preds = %if.then230.i
  call void @__sanitizer_cov_trace_pc() #15
  %call237.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #18
  br label %add239.i

add239.i:                                         ; preds = %if.then434.i.add239.i_crit_edge, %do.end235.i, %if.then230.i.add239.i_crit_edge
  %217 = or i16 %nlflags.49761072.i, 1024
  %skip_notify_kernel.i = getelementptr inbounds %struct.nl_info, ptr %info, i32 0, i32 3
  %218 = ptrtoint ptr %skip_notify_kernel.i to i32
  call void @__asan_load1_noabort(i32 %218)
  %bf.load.i = load i8, ptr %skip_notify_kernel.i, align 4
  %219 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %219)
  %tobool243.not.i = icmp eq i8 %219, 0
  %or.cond.i = or i1 %cmp1371082.i, %notify_sibling_rt.1.off0.i
  %or.cond869.i = and i1 %or.cond.i, %tobool243.not.i
  br i1 %or.cond869.i, label %if.then250.i, label %add239.i.do.body289.i_crit_edge

add239.i.do.body289.i_crit_edge:                  ; preds = %add239.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body289.i

if.then250.i:                                     ; preds = %add239.i
  %..i = zext i1 %notify_sibling_rt.1.off0.i to i32
  %220 = ptrtoint ptr %nl_net to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %nl_net, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info.i.i) #13
  %222 = getelementptr inbounds %struct.fib_notifier_info, ptr %info.i.i, i32 0, i32 1
  %223 = getelementptr inbounds %struct.fib6_entry_notifier_info, ptr %info.i.i, i32 0, i32 1
  %224 = getelementptr inbounds %struct.fib6_entry_notifier_info, ptr %info.i.i, i32 0, i32 2
  %225 = ptrtoint ptr %info.i.i to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 0, ptr %info.i.i, align 4
  %226 = ptrtoint ptr %222 to i32
  call void @__asan_store4_noabort(i32 %226)
  store ptr %extack, ptr %222, align 4
  %227 = ptrtoint ptr %223 to i32
  call void @__asan_store4_noabort(i32 %227)
  store ptr %rt, ptr %223, align 4
  %228 = ptrtoint ptr %224 to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 0, ptr %224, align 4
  %229 = ptrtoint ptr %rt to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %rt, align 4
  %fib_seq.i.i = getelementptr inbounds %struct.fib6_table, ptr %230, i32 0, i32 6
  %231 = ptrtoint ptr %fib_seq.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %fib_seq.i.i, align 4
  %inc.i.i = add i32 %232, 1
  store i32 %inc.i.i, ptr %fib_seq.i.i, align 4
  %call.i918.i = call i32 @call_fib6_notifiers(ptr noundef %221, i32 noundef %..i, ptr noundef nonnull %info.i.i) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i918.i)
  %tobool256.not.i = icmp eq i32 %call.i918.i, 0
  br i1 %tobool256.not.i, label %if.then250.i.do.body289.i_crit_edge, label %if.then257.i

if.then250.i.do.body289.i_crit_edge:              ; preds = %if.then250.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body289.i

if.then257.i:                                     ; preds = %if.then250.i
  %233 = ptrtoint ptr %fib6_nsiblings141.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %fib6_nsiblings141.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %234)
  %tobool260.not.i = icmp eq i32 %234, 0
  br i1 %tobool260.not.i, label %if.then257.i.if.then309_crit_edge, label %if.end262.i

if.then257.i.if.then309_crit_edge:                ; preds = %if.then257.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then309

if.end262.i:                                      ; preds = %if.then257.i
  %235 = getelementptr inbounds %struct.fib6_info, ptr %rt, i32 0, i32 3
  %236 = ptrtoint ptr %235 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %235, align 4
  %add.ptr266.i = getelementptr i8, ptr %237, i32 -12
  %238 = ptrtoint ptr %237 to i32
  call void @__asan_load4_noabort(i32 %238)
  %.pn1042.i = load ptr, ptr %237, align 4
  %next_sibling.01043.i = getelementptr i8, ptr %.pn1042.i, i32 -12
  %cmp272.not1044.i = icmp eq ptr %add.ptr266.i, %rt
  br i1 %cmp272.not1044.i, label %if.end262.i.for.end283.i_crit_edge, label %if.end262.i.for.body276.i_crit_edge

if.end262.i.for.body276.i_crit_edge:              ; preds = %if.end262.i
  br label %for.body276.i

if.end262.i.for.end283.i_crit_edge:               ; preds = %if.end262.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end283.i

for.body276.i:                                    ; preds = %for.body276.i.for.body276.i_crit_edge, %if.end262.i.for.body276.i_crit_edge
  %next_sibling.01047.i = phi ptr [ %next_sibling.0.i, %for.body276.i.for.body276.i_crit_edge ], [ %next_sibling.01043.i, %if.end262.i.for.body276.i_crit_edge ]
  %.pn1046.i = phi ptr [ %.pn.i, %for.body276.i.for.body276.i_crit_edge ], [ %.pn1042.i, %if.end262.i.for.body276.i_crit_edge ]
  %sibling258.01045.i = phi ptr [ %next_sibling.01047.i, %for.body276.i.for.body276.i_crit_edge ], [ %add.ptr266.i, %if.end262.i.for.body276.i_crit_edge ]
  %fib6_nsiblings277.i = getelementptr inbounds %struct.fib6_info, ptr %sibling258.01045.i, i32 0, i32 4
  %239 = ptrtoint ptr %fib6_nsiblings277.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %fib6_nsiblings277.i, align 4
  %dec.i578 = add i32 %240, -1
  store i32 %dec.i578, ptr %fib6_nsiblings277.i, align 4
  %241 = ptrtoint ptr %.pn1046.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %.pn.i = load ptr, ptr %.pn1046.i, align 4
  %next_sibling.0.i = getelementptr i8, ptr %.pn.i, i32 -12
  %cmp272.not.i = icmp eq ptr %next_sibling.01047.i, %rt
  br i1 %cmp272.not.i, label %for.body276.i.for.end283.i_crit_edge, label %for.body276.i.for.body276.i_crit_edge

for.body276.i.for.body276.i_crit_edge:            ; preds = %for.body276.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body276.i

for.body276.i.for.end283.i_crit_edge:             ; preds = %for.body276.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end283.i

for.end283.i:                                     ; preds = %for.body276.i.for.end283.i_crit_edge, %if.end262.i.for.end283.i_crit_edge
  %next_sibling.0.lcssa.i = phi ptr [ %next_sibling.01043.i, %if.end262.i.for.end283.i_crit_edge ], [ %next_sibling.0.i, %for.body276.i.for.end283.i_crit_edge ]
  %242 = ptrtoint ptr %fib6_nsiblings141.i to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 0, ptr %fib6_nsiblings141.i, align 4
  %call.i.i919.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %235) #13
  br i1 %call.i.i919.i, label %if.end.i.i920.i, label %for.end283.i.fib6_add_rt2node.exit_crit_edge

for.end283.i.fib6_add_rt2node.exit_crit_edge:     ; preds = %for.end283.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %fib6_add_rt2node.exit

if.end.i.i920.i:                                  ; preds = %for.end283.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.fib6_info, ptr %rt, i32 0, i32 3, i32 0, i32 1
  %243 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %prev.i.i.i, align 4
  %245 = ptrtoint ptr %235 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %235, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %246, i32 0, i32 1
  %247 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %247)
  store ptr %244, ptr %prev1.i.i.i.i, align 4
  %248 = ptrtoint ptr %244 to i32
  call void @__asan_store4_noabort(i32 %248)
  store volatile ptr %246, ptr %244, align 4
  br label %fib6_add_rt2node.exit

do.body289.i:                                     ; preds = %if.then250.i.do.body289.i_crit_edge, %add239.i.do.body289.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !271
  %fib6_next318.i = getelementptr inbounds %struct.fib6_info, ptr %rt, i32 0, i32 1
  %249 = ptrtoint ptr %fib6_next318.i to i32
  call void @__asan_store4_noabort(i32 %249)
  store volatile ptr %iter.11079.i, ptr %fib6_next318.i, align 4
  %fib6_ref.i.i = getelementptr inbounds %struct.fib6_info, ptr %rt, i32 0, i32 5
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %fib6_ref.i.i, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %fib6_ref.i.i, i32 1, i32 3, i32 1) #13
  %250 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fib6_ref.i.i, ptr %fib6_ref.i.i, i32 1, ptr elementtype(i32) %fib6_ref.i.i) #13, !srcloc !262
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %250, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %do.body289.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !263

do.body289.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %do.body289.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %do.body289.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %251 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %251)
  %.not.i.i.i.i.i = icmp sgt i32 %251, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.fib6_info_hold.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !253

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.fib6_info_hold.exit.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %fib6_info_hold.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %do.body289.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %do.body289.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %fib6_ref.i.i, i32 noundef %.sink.i.i.i.i.i) #13
  br label %fib6_info_hold.exit.i

fib6_info_hold.exit.i:                            ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.fib6_info_hold.exit.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !272
  %fib6_node359.i = getelementptr inbounds %struct.fib6_info, ptr %rt, i32 0, i32 2
  %252 = ptrtoint ptr %fib6_node359.i to i32
  call void @__asan_store4_noabort(i32 %252)
  store volatile ptr %fn.1, ptr %fib6_node359.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !273
  %253 = ptrtoint ptr %ins.11076.i to i32
  call void @__asan_store4_noabort(i32 %253)
  store volatile ptr %rt, ptr %ins.11076.i, align 4
  %254 = ptrtoint ptr %skip_notify_kernel.i to i32
  call void @__asan_load1_noabort(i32 %254)
  %bf.load411.i = load i8, ptr %skip_notify_kernel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load411.i)
  %tobool413.not.i = icmp sgt i8 %bf.load411.i, -1
  br i1 %tobool413.not.i, label %if.then414.i, label %fib6_info_hold.exit.i.if.end416.i_crit_edge

fib6_info_hold.exit.i.if.end416.i_crit_edge:      ; preds = %fib6_info_hold.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end416.i

if.then414.i:                                     ; preds = %fib6_info_hold.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv415.i = zext i16 %217 to i32
  call void @inet6_rt_notify(i32 noundef 24, ptr noundef %rt, ptr noundef %info, i32 noundef %conv415.i) #13
  br label %if.end416.i

if.end416.i:                                      ; preds = %if.then414.i, %fib6_info_hold.exit.i.if.end416.i_crit_edge
  %255 = ptrtoint ptr %nl_net to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %nl_net, align 4
  %rt6_stats.i579 = getelementptr inbounds %struct.net, ptr %256, i32 0, i32 36, i32 8
  %257 = ptrtoint ptr %rt6_stats.i579 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %rt6_stats.i579, align 8
  %fib_rt_entries.i = getelementptr inbounds %struct.rt6_statistics, ptr %258, i32 0, i32 2
  %259 = ptrtoint ptr %fib_rt_entries.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %fib_rt_entries.i, align 4
  %inc418.i = add i32 %260, 1
  store i32 %inc418.i, ptr %fib_rt_entries.i, align 4
  %fn_flags.i = getelementptr inbounds %struct.fib6_node, ptr %fn.1, i32 0, i32 6
  %261 = ptrtoint ptr %fn_flags.i to i32
  call void @__asan_load2_noabort(i32 %261)
  %262 = load i16, ptr %fn_flags.i, align 2
  %263 = and i16 %262, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %263)
  %tobool421.not.i = icmp eq i16 %263, 0
  br i1 %tobool421.not.i, label %if.then422.i, label %if.end416.i.if.then299_crit_edge

if.end416.i.if.then299_crit_edge:                 ; preds = %if.end416.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then299

if.then422.i:                                     ; preds = %if.end416.i
  call void @__sanitizer_cov_trace_pc() #15
  %264 = ptrtoint ptr %nl_net to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %nl_net, align 4
  %rt6_stats425.i = getelementptr inbounds %struct.net, ptr %265, i32 0, i32 36, i32 8
  %266 = ptrtoint ptr %rt6_stats425.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %rt6_stats425.i, align 8
  %fib_route_nodes.i = getelementptr inbounds %struct.rt6_statistics, ptr %267, i32 0, i32 1
  %268 = ptrtoint ptr %fib_route_nodes.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %fib_route_nodes.i, align 4
  %inc426.i = add i32 %269, 1
  store i32 %inc426.i, ptr %fib_route_nodes.i, align 4
  %270 = ptrtoint ptr %fn_flags.i to i32
  call void @__asan_load2_noabort(i32 %270)
  %271 = load i16, ptr %fn_flags.i, align 2
  %272 = or i16 %271, 4
  store i16 %272, ptr %fn_flags.i, align 2
  br label %if.then299

if.else432.i:                                     ; preds = %if.end228.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %found.11074.i)
  %tobool433.not.i = icmp eq i32 %found.11074.i, 0
  br i1 %tobool433.not.i, label %if.then434.i, label %if.end443.i

if.then434.i:                                     ; preds = %if.else432.i
  br i1 %75, label %if.then434.i.add239.i_crit_edge, label %do.end440.i

if.then434.i.add239.i_crit_edge:                  ; preds = %if.then434.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %add239.i

do.end440.i:                                      ; preds = %if.then434.i
  call void @__sanitizer_cov_trace_pc() #15
  %call442.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #18
  br label %if.then309

if.end443.i:                                      ; preds = %if.else432.i
  %skip_notify_kernel444.i = getelementptr inbounds %struct.nl_info, ptr %info, i32 0, i32 3
  %273 = ptrtoint ptr %skip_notify_kernel444.i to i32
  call void @__asan_load1_noabort(i32 %273)
  %bf.load445.i = load i8, ptr %skip_notify_kernel444.i, align 4
  %274 = and i8 %bf.load445.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %274)
  %tobool448.not.i = icmp eq i8 %274, 0
  %275 = and i1 %cmp1371082.i, %tobool448.not.i
  br i1 %275, label %if.then453.i, label %if.end443.i.if.end459.i_crit_edge

if.end443.i.if.end459.i_crit_edge:                ; preds = %if.end443.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end459.i

if.then453.i:                                     ; preds = %if.end443.i
  %276 = ptrtoint ptr %nl_net to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %nl_net, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info.i921.i) #13
  %278 = getelementptr inbounds %struct.fib_notifier_info, ptr %info.i921.i, i32 0, i32 1
  %279 = getelementptr inbounds %struct.fib6_entry_notifier_info, ptr %info.i921.i, i32 0, i32 1
  %280 = getelementptr inbounds %struct.fib6_entry_notifier_info, ptr %info.i921.i, i32 0, i32 2
  %281 = ptrtoint ptr %info.i921.i to i32
  call void @__asan_store4_noabort(i32 %281)
  store i32 0, ptr %info.i921.i, align 4
  %282 = ptrtoint ptr %278 to i32
  call void @__asan_store4_noabort(i32 %282)
  store ptr %extack, ptr %278, align 4
  %283 = ptrtoint ptr %279 to i32
  call void @__asan_store4_noabort(i32 %283)
  store ptr %rt, ptr %279, align 4
  %284 = ptrtoint ptr %280 to i32
  call void @__asan_store4_noabort(i32 %284)
  store i32 0, ptr %280, align 4
  %285 = ptrtoint ptr %rt to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %rt, align 4
  %fib_seq.i922.i = getelementptr inbounds %struct.fib6_table, ptr %286, i32 0, i32 6
  %287 = ptrtoint ptr %fib_seq.i922.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %fib_seq.i922.i, align 4
  %inc.i923.i = add i32 %288, 1
  store i32 %inc.i923.i, ptr %fib_seq.i922.i, align 4
  %call.i924.i = call i32 @call_fib6_notifiers(ptr noundef %277, i32 noundef 0, ptr noundef nonnull %info.i921.i) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info.i921.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i924.i)
  %tobool456.not.i = icmp eq i32 %call.i924.i, 0
  br i1 %tobool456.not.i, label %if.then453.i.if.end459.i_crit_edge, label %if.then453.i.if.then309_crit_edge

if.then453.i.if.then309_crit_edge:                ; preds = %if.then453.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then309

if.then453.i.if.end459.i_crit_edge:               ; preds = %if.then453.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end459.i

if.end459.i:                                      ; preds = %if.then453.i.if.end459.i_crit_edge, %if.end443.i.if.end459.i_crit_edge
  %fib6_ref.i925.i = getelementptr inbounds %struct.fib6_info, ptr %rt, i32 0, i32 5
  %call.i.i.i.i.i.i926.i = call zeroext i1 @__kasan_check_write(ptr noundef %fib6_ref.i925.i, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %fib6_ref.i925.i, i32 1, i32 3, i32 1) #13
  %289 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fib6_ref.i925.i, ptr %fib6_ref.i925.i, i32 1, ptr elementtype(i32) %fib6_ref.i925.i) #13, !srcloc !262
  %asmresult.i.i.i.i.i.i927.i = extractvalue { i32, i32, i32 } %289, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i927.i)
  %tobool1.not.i.i.i.i928.i = icmp eq i32 %asmresult.i.i.i.i.i.i927.i, 0
  br i1 %tobool1.not.i.i.i.i928.i, label %if.end459.i.if.end15.sink.split.i.i.i.i933.i_crit_edge, label %if.else.i.i.i.i931.i, !prof !263

if.end459.i.if.end15.sink.split.i.i.i.i933.i_crit_edge: ; preds = %if.end459.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i933.i

if.else.i.i.i.i931.i:                             ; preds = %if.end459.i
  %add.i.i.i.i929.i = add i32 %asmresult.i.i.i.i.i.i927.i, 1
  %290 = or i32 %add.i.i.i.i929.i, %asmresult.i.i.i.i.i.i927.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %290)
  %.not.i.i.i.i930.i = icmp sgt i32 %290, -1
  br i1 %.not.i.i.i.i930.i, label %if.else.i.i.i.i931.i.fib6_info_hold.exit934.i_crit_edge, label %if.else.i.i.i.i931.i.if.end15.sink.split.i.i.i.i933.i_crit_edge, !prof !253

if.else.i.i.i.i931.i.if.end15.sink.split.i.i.i.i933.i_crit_edge: ; preds = %if.else.i.i.i.i931.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i933.i

if.else.i.i.i.i931.i.fib6_info_hold.exit934.i_crit_edge: ; preds = %if.else.i.i.i.i931.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %fib6_info_hold.exit934.i

if.end15.sink.split.i.i.i.i933.i:                 ; preds = %if.else.i.i.i.i931.i.if.end15.sink.split.i.i.i.i933.i_crit_edge, %if.end459.i.if.end15.sink.split.i.i.i.i933.i_crit_edge
  %.sink.i.i.i.i932.i = phi i32 [ 2, %if.end459.i.if.end15.sink.split.i.i.i.i933.i_crit_edge ], [ 1, %if.else.i.i.i.i931.i.if.end15.sink.split.i.i.i.i933.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %fib6_ref.i925.i, i32 noundef %.sink.i.i.i.i932.i) #13
  br label %fib6_info_hold.exit934.i

fib6_info_hold.exit934.i:                         ; preds = %if.end15.sink.split.i.i.i.i933.i, %if.else.i.i.i.i931.i.fib6_info_hold.exit934.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !274
  %fib6_node490.i = getelementptr inbounds %struct.fib6_info, ptr %rt, i32 0, i32 2
  %291 = ptrtoint ptr %fib6_node490.i to i32
  call void @__asan_store4_noabort(i32 %291)
  store volatile ptr %fn.1, ptr %fib6_node490.i, align 4
  %fib6_next502.i = getelementptr inbounds %struct.fib6_info, ptr %iter.11079.i, i32 0, i32 1
  %292 = ptrtoint ptr %fib6_next502.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %fib6_next502.i, align 4
  %fib6_next503.i = getelementptr inbounds %struct.fib6_info, ptr %rt, i32 0, i32 1
  %294 = ptrtoint ptr %fib6_next503.i to i32
  call void @__asan_store4_noabort(i32 %294)
  store ptr %293, ptr %fib6_next503.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !275
  %295 = ptrtoint ptr %ins.11076.i to i32
  call void @__asan_store4_noabort(i32 %295)
  store volatile ptr %rt, ptr %ins.11076.i, align 4
  %296 = ptrtoint ptr %skip_notify_kernel444.i to i32
  call void @__asan_load1_noabort(i32 %296)
  %bf.load545.i = load i8, ptr %skip_notify_kernel444.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load545.i)
  %tobool547.not.i = icmp sgt i8 %bf.load545.i, -1
  br i1 %tobool547.not.i, label %if.then548.i, label %fib6_info_hold.exit934.i.if.end549.i_crit_edge

fib6_info_hold.exit934.i.if.end549.i_crit_edge:   ; preds = %fib6_info_hold.exit934.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end549.i

if.then548.i:                                     ; preds = %fib6_info_hold.exit934.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @inet6_rt_notify(i32 noundef 24, ptr noundef %rt, ptr noundef %info, i32 noundef 256) #13
  br label %if.end549.i

if.end549.i:                                      ; preds = %if.then548.i, %fib6_info_hold.exit934.i.if.end549.i_crit_edge
  %fn_flags550.i = getelementptr inbounds %struct.fib6_node, ptr %fn.1, i32 0, i32 6
  %297 = ptrtoint ptr %fn_flags550.i to i32
  call void @__asan_load2_noabort(i32 %297)
  %298 = load i16, ptr %fn_flags550.i, align 2
  %299 = and i16 %298, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %299)
  %tobool553.not.i = icmp eq i16 %299, 0
  br i1 %tobool553.not.i, label %if.then554.i, label %if.end549.i.if.end564.i_crit_edge

if.end549.i.if.end564.i_crit_edge:                ; preds = %if.end549.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end564.i

if.then554.i:                                     ; preds = %if.end549.i
  call void @__sanitizer_cov_trace_pc() #15
  %300 = ptrtoint ptr %nl_net to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %nl_net, align 4
  %rt6_stats557.i = getelementptr inbounds %struct.net, ptr %301, i32 0, i32 36, i32 8
  %302 = ptrtoint ptr %rt6_stats557.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %rt6_stats557.i, align 8
  %fib_route_nodes558.i = getelementptr inbounds %struct.rt6_statistics, ptr %303, i32 0, i32 1
  %304 = ptrtoint ptr %fib_route_nodes558.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %fib_route_nodes558.i, align 4
  %inc559.i = add i32 %305, 1
  store i32 %inc559.i, ptr %fib_route_nodes558.i, align 4
  %306 = ptrtoint ptr %fn_flags550.i to i32
  call void @__asan_load2_noabort(i32 %306)
  %307 = load i16, ptr %fn_flags550.i, align 2
  %308 = or i16 %307, 4
  store i16 %308, ptr %fn_flags550.i, align 2
  br label %if.end564.i

if.end564.i:                                      ; preds = %if.then554.i, %if.end549.i.if.end564.i_crit_edge
  %fib6_nsiblings565.i = getelementptr inbounds %struct.fib6_info, ptr %iter.11079.i, i32 0, i32 4
  %309 = ptrtoint ptr %fib6_nsiblings565.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %fib6_nsiblings565.i, align 4
  %fib6_node566.i = getelementptr inbounds %struct.fib6_info, ptr %iter.11079.i, i32 0, i32 2
  %311 = ptrtoint ptr %fib6_node566.i to i32
  call void @__asan_store4_noabort(i32 %311)
  store ptr null, ptr %fib6_node566.i, align 4
  %312 = ptrtoint ptr %nl_net to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %nl_net, align 4
  call fastcc void @fib6_purge_rt(ptr noundef %iter.11079.i, ptr noundef %fn.1, ptr noundef %313) #13
  %rr_ptr572.i = getelementptr inbounds %struct.fib6_node, ptr %fn.1, i32 0, i32 8
  %314 = ptrtoint ptr %rr_ptr572.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load volatile ptr, ptr %rr_ptr572.i, align 4
  %cmp574.i = icmp eq ptr %315, %iter.11079.i
  br i1 %cmp574.i, label %if.then576.i, label %if.end564.i.if.end578.i_crit_edge

if.end564.i.if.end578.i_crit_edge:                ; preds = %if.end564.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end578.i

if.then576.i:                                     ; preds = %if.end564.i
  call void @__sanitizer_cov_trace_pc() #15
  %316 = ptrtoint ptr %rr_ptr572.i to i32
  call void @__asan_store4_noabort(i32 %316)
  store ptr null, ptr %rr_ptr572.i, align 4
  br label %if.end578.i

if.end578.i:                                      ; preds = %if.then576.i, %if.end564.i.if.end578.i_crit_edge
  %tobool.not.i935.i = icmp eq ptr %iter.11079.i, null
  br i1 %tobool.not.i935.i, label %if.end578.i.fib6_info_release.exit.i_crit_edge, label %land.lhs.true.i938.i

if.end578.i.fib6_info_release.exit.i_crit_edge:   ; preds = %if.end578.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %fib6_info_release.exit.i

land.lhs.true.i938.i:                             ; preds = %if.end578.i
  %fib6_ref.i936.i = getelementptr inbounds %struct.fib6_info, ptr %iter.11079.i, i32 0, i32 5
  %call.i.i.i.i.i.i937.i = call zeroext i1 @__kasan_check_write(ptr noundef %fib6_ref.i936.i, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !254
  call void @llvm.prefetch.p0(ptr %fib6_ref.i936.i, i32 1, i32 3, i32 1) #13
  %317 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fib6_ref.i936.i, ptr %fib6_ref.i936.i, i32 1, ptr elementtype(i32) %fib6_ref.i936.i) #13, !srcloc !255
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %317, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i940.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %land.lhs.true.i938.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i939.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i939.i, label %if.end5.i.i.i.i.i.fib6_info_release.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !253

if.end5.i.i.i.i.i.fib6_info_release.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %fib6_info_release.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef %fib6_ref.i936.i, i32 noundef 3) #13
  br label %fib6_info_release.exit.i

if.then.i940.i:                                   ; preds = %land.lhs.true.i938.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !256
  %rcu.i.i = getelementptr inbounds %struct.fib6_info, ptr %iter.11079.i, i32 0, i32 19
  call void @call_rcu(ptr noundef %rcu.i.i, ptr noundef nonnull @fib6_info_destroy_rcu) #13
  br label %fib6_info_release.exit.i

fib6_info_release.exit.i:                         ; preds = %if.then.i940.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.fib6_info_release.exit.i_crit_edge, %if.end578.i.fib6_info_release.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %310)
  %tobool579.not.i = icmp eq i32 %310, 0
  br i1 %tobool579.not.i, label %fib6_info_release.exit.i.if.then299_crit_edge, label %if.then580.i

fib6_info_release.exit.i.if.then299_crit_edge:    ; preds = %fib6_info_release.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then299

if.then580.i:                                     ; preds = %fib6_info_release.exit.i
  %318 = ptrtoint ptr %rt to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %rt, align 4
  %dep_map585.i = getelementptr inbounds %struct.fib6_table, ptr %319, i32 0, i32 2, i32 0, i32 0, i32 4
  %call.i942.i = call i32 @lock_is_held_type(ptr noundef %dep_map585.i, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i942.i)
  %tobool587.not.i = icmp eq i32 %call.i942.i, 0
  br i1 %tobool587.not.i, label %land.lhs.true588.i, label %if.then580.i.do.end596.i_crit_edge

if.then580.i.do.end596.i_crit_edge:               ; preds = %if.then580.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end596.i

land.lhs.true588.i:                               ; preds = %if.then580.i
  %call589.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call589.i)
  %tobool590.not.i = icmp eq i32 %call589.i, 0
  br i1 %tobool590.not.i, label %land.lhs.true588.i.do.end596.i_crit_edge, label %land.lhs.true591.i

land.lhs.true588.i.do.end596.i_crit_edge:         ; preds = %land.lhs.true588.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end596.i

land.lhs.true591.i:                               ; preds = %land.lhs.true588.i
  %.b858861.i = load i1, ptr @fib6_add_rt2node.__warned.43, align 1
  br i1 %.b858861.i, label %land.lhs.true591.i.do.end596.i_crit_edge, label %if.then593.i

land.lhs.true591.i.do.end596.i_crit_edge:         ; preds = %land.lhs.true591.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end596.i

if.then593.i:                                     ; preds = %land.lhs.true591.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @fib6_add_rt2node.__warned.43, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1299, ptr noundef nonnull @.str.1) #13
  br label %do.end596.i

do.end596.i:                                      ; preds = %if.then593.i, %land.lhs.true591.i.do.end596.i_crit_edge, %land.lhs.true588.i.do.end596.i_crit_edge, %if.then580.i.do.end596.i_crit_edge
  %320 = ptrtoint ptr %fib6_next503.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %iter.31034.i = load ptr, ptr %fib6_next503.i, align 4
  %tobool599.not1035.i = icmp eq ptr %iter.31034.i, null
  br i1 %tobool599.not1035.i, label %do.end596.i.do.end666.i_crit_edge, label %while.body600.lr.ph.i

do.end596.i.do.end666.i_crit_edge:                ; preds = %do.end596.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end666.i

while.body600.lr.ph.i:                            ; preds = %do.end596.i
  %fib6_metric602.i = getelementptr inbounds %struct.fib6_info, ptr %rt, i32 0, i32 12
  br label %while.body600.i

while.body600.i:                                  ; preds = %do.end646.i.while.body600.i_crit_edge, %while.body600.lr.ph.i
  %iter.31038.i = phi ptr [ %iter.31034.i, %while.body600.lr.ph.i ], [ %iter.3.i, %do.end646.i.while.body600.i_crit_edge ]
  %ins.31037.i = phi ptr [ %fib6_next503.i, %while.body600.lr.ph.i ], [ %ins.4.i, %do.end646.i.while.body600.i_crit_edge ]
  %nsiblings.01036.i = phi i32 [ %310, %while.body600.lr.ph.i ], [ %nsiblings.1.i, %do.end646.i.while.body600.i_crit_edge ]
  %fib6_metric601.i = getelementptr inbounds %struct.fib6_info, ptr %iter.31038.i, i32 0, i32 12
  %321 = ptrtoint ptr %fib6_metric601.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %fib6_metric601.i, align 4
  %323 = ptrtoint ptr %fib6_metric602.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %fib6_metric602.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %322, i32 %324)
  %cmp603.i = icmp ugt i32 %322, %324
  br i1 %cmp603.i, label %while.body600.i.while.end648.i_crit_edge, label %if.end606.i

while.body600.i.while.end648.i_crit_edge:         ; preds = %while.body600.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end648.i

if.end606.i:                                      ; preds = %while.body600.i
  %fib6_flags.i943.i = getelementptr inbounds %struct.fib6_info, ptr %iter.31038.i, i32 0, i32 9
  %325 = ptrtoint ptr %fib6_flags.i943.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %fib6_flags.i943.i, align 4
  %and.i944.i = and i32 %326, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i944.i)
  %tobool.not.i945.i = icmp eq i32 %and.i944.i, 0
  br i1 %tobool.not.i945.i, label %land.lhs.true.i948.i, label %if.end606.i.if.else629.i_crit_edge

if.end606.i.if.else629.i_crit_edge:               ; preds = %if.end606.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else629.i

land.lhs.true.i948.i:                             ; preds = %if.end606.i
  %nh.i946.i = getelementptr inbounds %struct.fib6_info, ptr %iter.31038.i, i32 0, i32 20
  %327 = ptrtoint ptr %nh.i946.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %nh.i946.i, align 4
  %tobool1.not.i947.i = icmp eq ptr %328, null
  br i1 %tobool1.not.i947.i, label %rt6_qualify_for_ecmp.exit953.i, label %land.lhs.true.i948.i.if.else629.i_crit_edge

land.lhs.true.i948.i.if.else629.i_crit_edge:      ; preds = %land.lhs.true.i948.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else629.i

rt6_qualify_for_ecmp.exit953.i:                   ; preds = %land.lhs.true.i948.i
  %fib6_nh.i949.i = getelementptr inbounds %struct.fib6_info, ptr %iter.31038.i, i32 0, i32 21
  %nhc_gw_family.i950.i = getelementptr inbounds %struct.fib_nh_common, ptr %fib6_nh.i949.i, i32 0, i32 5
  %329 = ptrtoint ptr %nhc_gw_family.i950.i to i32
  call void @__asan_load1_noabort(i32 %329)
  %330 = load i8, ptr %nhc_gw_family.i950.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %330)
  %tobool2.i951.not.i = icmp eq i8 %330, 0
  br i1 %tobool2.i951.not.i, label %rt6_qualify_for_ecmp.exit953.i.if.else629.i_crit_edge, label %if.then608.i

rt6_qualify_for_ecmp.exit953.i.if.else629.i_crit_edge: ; preds = %rt6_qualify_for_ecmp.exit953.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else629.i

if.then608.i:                                     ; preds = %rt6_qualify_for_ecmp.exit953.i
  %fib6_next609.i = getelementptr inbounds %struct.fib6_info, ptr %iter.31038.i, i32 0, i32 1
  %331 = ptrtoint ptr %fib6_next609.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %fib6_next609.i, align 4
  %333 = ptrtoint ptr %ins.31037.i to i32
  call void @__asan_store4_noabort(i32 %333)
  store ptr %332, ptr %ins.31037.i, align 4
  %fib6_node610.i = getelementptr inbounds %struct.fib6_info, ptr %iter.31038.i, i32 0, i32 2
  %334 = ptrtoint ptr %fib6_node610.i to i32
  call void @__asan_store4_noabort(i32 %334)
  store ptr null, ptr %fib6_node610.i, align 4
  %335 = ptrtoint ptr %nl_net to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %nl_net, align 4
  call fastcc void @fib6_purge_rt(ptr noundef nonnull %iter.31038.i, ptr noundef %fn.1, ptr noundef %336) #13
  %337 = ptrtoint ptr %rr_ptr572.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load volatile ptr, ptr %rr_ptr572.i, align 4
  %cmp618.i = icmp eq ptr %338, %iter.31038.i
  br i1 %cmp618.i, label %if.then620.i, label %if.then608.i.land.lhs.true.i959.i_crit_edge

if.then608.i.land.lhs.true.i959.i_crit_edge:      ; preds = %if.then608.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.i959.i

if.then620.i:                                     ; preds = %if.then608.i
  call void @__sanitizer_cov_trace_pc() #15
  %339 = ptrtoint ptr %rr_ptr572.i to i32
  call void @__asan_store4_noabort(i32 %339)
  store ptr null, ptr %rr_ptr572.i, align 4
  br label %land.lhs.true.i959.i

land.lhs.true.i959.i:                             ; preds = %if.then620.i, %if.then608.i.land.lhs.true.i959.i_crit_edge
  %fib6_ref.i955.i = getelementptr inbounds %struct.fib6_info, ptr %iter.31038.i, i32 0, i32 5
  %call.i.i.i.i.i.i956.i = call zeroext i1 @__kasan_check_write(ptr noundef %fib6_ref.i955.i, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !254
  call void @llvm.prefetch.p0(ptr %fib6_ref.i955.i, i32 1, i32 3, i32 1) #13
  %340 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fib6_ref.i955.i, ptr %fib6_ref.i955.i, i32 1, ptr elementtype(i32) %fib6_ref.i955.i) #13, !srcloc !255
  %asmresult.i.i.i.i.i.i.i957.i = extractvalue { i32, i32, i32 } %340, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i957.i)
  %cmp.i.i.i.i958.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i957.i, 1
  br i1 %cmp.i.i.i.i958.i, label %if.then.i964.i, label %if.end5.i.i.i.i961.i

if.end5.i.i.i.i961.i:                             ; preds = %land.lhs.true.i959.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i957.i)
  %.not.i.i.i.i960.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i957.i, 0
  br i1 %.not.i.i.i.i960.i, label %if.end5.i.i.i.i961.i.fib6_info_release.exit966.i_crit_edge, label %if.then10.i.i.i.i962.i, !prof !253

if.end5.i.i.i.i961.i.fib6_info_release.exit966.i_crit_edge: ; preds = %if.end5.i.i.i.i961.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %fib6_info_release.exit966.i

if.then10.i.i.i.i962.i:                           ; preds = %if.end5.i.i.i.i961.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef %fib6_ref.i955.i, i32 noundef 3) #13
  br label %fib6_info_release.exit966.i

if.then.i964.i:                                   ; preds = %land.lhs.true.i959.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !256
  %rcu.i963.i = getelementptr inbounds %struct.fib6_info, ptr %iter.31038.i, i32 0, i32 19
  call void @call_rcu(ptr noundef %rcu.i963.i, ptr noundef nonnull @fib6_info_destroy_rcu) #13
  br label %fib6_info_release.exit966.i

fib6_info_release.exit966.i:                      ; preds = %if.then.i964.i, %if.then10.i.i.i.i962.i, %if.end5.i.i.i.i961.i.fib6_info_release.exit966.i_crit_edge
  %dec623.i = add i32 %nsiblings.01036.i, -1
  %341 = ptrtoint ptr %nl_net to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %nl_net, align 4
  %rt6_stats626.i = getelementptr inbounds %struct.net, ptr %342, i32 0, i32 36, i32 8
  %343 = ptrtoint ptr %rt6_stats626.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %rt6_stats626.i, align 8
  %fib_rt_entries627.i = getelementptr inbounds %struct.rt6_statistics, ptr %344, i32 0, i32 2
  %345 = ptrtoint ptr %fib_rt_entries627.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %fib_rt_entries627.i, align 4
  %dec628.i = add i32 %346, -1
  store i32 %dec628.i, ptr %fib_rt_entries627.i, align 4
  br label %do.body632.i

if.else629.i:                                     ; preds = %rt6_qualify_for_ecmp.exit953.i.if.else629.i_crit_edge, %land.lhs.true.i948.i.if.else629.i_crit_edge, %if.end606.i.if.else629.i_crit_edge
  %fib6_next630.i = getelementptr inbounds %struct.fib6_info, ptr %iter.31038.i, i32 0, i32 1
  br label %do.body632.i

do.body632.i:                                     ; preds = %if.else629.i, %fib6_info_release.exit966.i
  %nsiblings.1.i = phi i32 [ %dec623.i, %fib6_info_release.exit966.i ], [ %nsiblings.01036.i, %if.else629.i ]
  %ins.4.i = phi ptr [ %ins.31037.i, %fib6_info_release.exit966.i ], [ %fib6_next630.i, %if.else629.i ]
  %347 = ptrtoint ptr %rt to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %rt, align 4
  %dep_map635.i = getelementptr inbounds %struct.fib6_table, ptr %348, i32 0, i32 2, i32 0, i32 0, i32 4
  %call.i967.i = call i32 @lock_is_held_type(ptr noundef %dep_map635.i, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i967.i)
  %tobool637.not.i = icmp eq i32 %call.i967.i, 0
  br i1 %tobool637.not.i, label %land.lhs.true638.i, label %do.body632.i.do.end646.i_crit_edge

do.body632.i.do.end646.i_crit_edge:               ; preds = %do.body632.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end646.i

land.lhs.true638.i:                               ; preds = %do.body632.i
  %call639.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call639.i)
  %tobool640.not.i = icmp eq i32 %call639.i, 0
  br i1 %tobool640.not.i, label %land.lhs.true638.i.do.end646.i_crit_edge, label %land.lhs.true641.i

land.lhs.true638.i.do.end646.i_crit_edge:         ; preds = %land.lhs.true638.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end646.i

land.lhs.true641.i:                               ; preds = %land.lhs.true638.i
  %.b859860.i = load i1, ptr @fib6_add_rt2node.__warned.44, align 1
  br i1 %.b859860.i, label %land.lhs.true641.i.do.end646.i_crit_edge, label %if.then643.i

land.lhs.true641.i.do.end646.i_crit_edge:         ; preds = %land.lhs.true641.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end646.i

if.then643.i:                                     ; preds = %land.lhs.true641.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @fib6_add_rt2node.__warned.44, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1316, ptr noundef nonnull @.str.1) #13
  br label %do.end646.i

do.end646.i:                                      ; preds = %if.then643.i, %land.lhs.true641.i.do.end646.i_crit_edge, %land.lhs.true638.i.do.end646.i_crit_edge, %do.body632.i.do.end646.i_crit_edge
  %349 = ptrtoint ptr %ins.4.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %iter.3.i = load ptr, ptr %ins.4.i, align 4
  %tobool599.not.i = icmp eq ptr %iter.3.i, null
  br i1 %tobool599.not.i, label %do.end646.i.while.end648.i_crit_edge, label %do.end646.i.while.body600.i_crit_edge

do.end646.i.while.body600.i_crit_edge:            ; preds = %do.end646.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body600.i

do.end646.i.while.end648.i_crit_edge:             ; preds = %do.end646.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end648.i

while.end648.i:                                   ; preds = %do.end646.i.while.end648.i_crit_edge, %while.body600.i.while.end648.i_crit_edge
  %nsiblings.0.lcssa.i = phi i32 [ %nsiblings.1.i, %do.end646.i.while.end648.i_crit_edge ], [ %nsiblings.01036.i, %while.body600.i.while.end648.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nsiblings.0.lcssa.i)
  %cmp649.not.i = icmp eq i32 %nsiblings.0.lcssa.i, 0
  br i1 %cmp649.not.i, label %while.end648.i.if.then299_crit_edge, label %while.end648.i.do.end666.i_crit_edge, !prof !253

while.end648.i.do.end666.i_crit_edge:             ; preds = %while.end648.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end666.i

while.end648.i.if.then299_crit_edge:              ; preds = %while.end648.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then299

do.end666.i:                                      ; preds = %while.end648.i.do.end666.i_crit_edge, %do.end596.i.do.end666.i_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1318, i32 noundef 9, ptr noundef null) #13
  br label %if.then299

fib6_add_rt2node.exit:                            ; preds = %if.end.i.i920.i, %for.end283.i.fib6_add_rt2node.exit_crit_edge
  %350 = ptrtoint ptr %235 to i32
  call void @__asan_store4_noabort(i32 %350)
  store volatile ptr %235, ptr %235, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.fib6_info, ptr %rt, i32 0, i32 3, i32 0, i32 1
  %351 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %351)
  store ptr %235, ptr %prev.i3.i.i, align 4
  call void @rt6_multipath_rebalance(ptr noundef %next_sibling.0.lcssa.i) #13
  br label %if.then309

if.then299:                                       ; preds = %do.end666.i, %while.end648.i.if.then299_crit_edge, %fib6_info_release.exit.i.if.then299_crit_edge, %if.then422.i, %if.end416.i.if.then299_crit_edge
  %nh = getelementptr inbounds %struct.fib6_info, ptr %rt, i32 0, i32 20
  %352 = ptrtoint ptr %nh to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %nh, align 4
  %tobool300.not = icmp eq ptr %353, null
  br i1 %tobool300.not, label %if.then299.if.end303_crit_edge, label %if.then301

if.then299.if.end303_crit_edge:                   ; preds = %if.then299
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end303

if.then301:                                       ; preds = %if.then299
  %354 = getelementptr inbounds %struct.fib6_info, ptr %rt, i32 0, i32 3
  %f6i_list = getelementptr inbounds %struct.nexthop, ptr %353, i32 0, i32 2
  %355 = ptrtoint ptr %f6i_list to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %f6i_list, align 4
  %call.i.i580 = call zeroext i1 @__list_add_valid(ptr noundef %354, ptr noundef %f6i_list, ptr noundef %356) #13
  br i1 %call.i.i580, label %if.end.i.i581, label %if.then301.if.end303_crit_edge

if.then301.if.end303_crit_edge:                   ; preds = %if.then301
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end303

if.end.i.i581:                                    ; preds = %if.then301
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %356, i32 0, i32 1
  %357 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %357)
  store ptr %354, ptr %prev1.i.i, align 4
  %358 = ptrtoint ptr %354 to i32
  call void @__asan_store4_noabort(i32 %358)
  store ptr %356, ptr %354, align 4
  %prev3.i.i = getelementptr inbounds %struct.fib6_info, ptr %rt, i32 0, i32 3, i32 0, i32 1
  %359 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %359)
  store ptr %f6i_list, ptr %prev3.i.i, align 4
  %360 = ptrtoint ptr %f6i_list to i32
  call void @__asan_store4_noabort(i32 %360)
  store volatile ptr %354, ptr %f6i_list, align 4
  br label %if.end303

if.end303:                                        ; preds = %if.end.i.i581, %if.then301.if.end303_crit_edge, %if.then299.if.end303_crit_edge
  %361 = ptrtoint ptr %nl_net to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %nl_net, align 4
  %fib6_sernum.i = getelementptr inbounds %struct.net, ptr %362, i32 0, i32 36, i32 33
  br label %do.body.i

do.body.i:                                        ; preds = %atomic_cmpxchg.exit.i.do.body.i_crit_edge, %if.end303
  %call.i.i.i582 = call zeroext i1 @__kasan_check_read(ptr noundef %fib6_sernum.i, i32 noundef 4) #13
  %363 = ptrtoint ptr %fib6_sernum.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load volatile i32, ptr %fib6_sernum.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %364)
  %cmp.not.i = icmp eq i32 %364, 2147483647
  %add.i = add i32 %364, 1
  %spec.select.i = select i1 %cmp.not.i, i32 1, i32 %add.i
  %call.i.i10.i = call zeroext i1 @__kasan_check_write(ptr noundef %fib6_sernum.i, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !250
  call void @llvm.prefetch.p0(ptr %fib6_sernum.i, i32 1, i32 3, i32 1) #13
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge, %do.body.i
  %365 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %fib6_sernum.i, ptr %fib6_sernum.i, i32 %364, i32 %spec.select.i, ptr elementtype(i32) %fib6_sernum.i) #13, !srcloc !251
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %365, 0
  %tobool.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %atomic_cmpxchg.exit.i, label %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge

do.body.i.i.i.i.do.body.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i.i.i

atomic_cmpxchg.exit.i:                            ; preds = %do.body.i.i.i.i
  %asmresult3.i.i.i.i = extractvalue { i32, i32 } %365, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !252
  %cmp4.not.i = icmp eq i32 %asmresult3.i.i.i.i, %364
  br i1 %cmp4.not.i, label %fib6_new_sernum.exit, label %atomic_cmpxchg.exit.i.do.body.i_crit_edge

atomic_cmpxchg.exit.i.do.body.i_crit_edge:        ; preds = %atomic_cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

fib6_new_sernum.exit:                             ; preds = %atomic_cmpxchg.exit.i
  call fastcc void @__fib6_update_sernum_upto_root(ptr noundef %rt, i32 noundef %spec.select.i)
  %366 = ptrtoint ptr %nl_net to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %nl_net, align 4
  %ip6_fib_timer.i = getelementptr inbounds %struct.net, ptr %367, i32 0, i32 36, i32 9
  %pprev.i.i.i = getelementptr inbounds %struct.net, ptr %367, i32 0, i32 36, i32 9, i32 0, i32 1
  %368 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load volatile ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.i.not.i = icmp eq ptr %369, null
  br i1 %tobool.not.i.i.not.i, label %land.lhs.true.i585, label %fib6_new_sernum.exit.if.else430_crit_edge

fib6_new_sernum.exit.if.else430_crit_edge:        ; preds = %fib6_new_sernum.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else430

land.lhs.true.i585:                               ; preds = %fib6_new_sernum.exit
  %370 = ptrtoint ptr %fib6_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %fib6_flags.i.i, align 4
  %and.i = and i32 %371, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i585.if.else430_crit_edge, label %if.then.i587

land.lhs.true.i585.if.else430_crit_edge:          ; preds = %land.lhs.true.i585
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else430

if.then.i587:                                     ; preds = %land.lhs.true.i585
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %372 = load volatile i32, ptr @jiffies, align 128
  %ip6_rt_gc_interval.i = getelementptr inbounds %struct.net, ptr %367, i32 0, i32 36, i32 1, i32 9
  %373 = ptrtoint ptr %ip6_rt_gc_interval.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load i32, ptr %ip6_rt_gc_interval.i, align 4
  %add.i586 = add i32 %374, %372
  %call5.i = call i32 @mod_timer(ptr noundef %ip6_fib_timer.i, i32 noundef %add.i586) #13
  br label %if.else430

out:                                              ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  %375 = ptrtoint ptr %call17 to i32
  br label %cleanup458

if.then309:                                       ; preds = %fib6_add_rt2node.exit, %if.then453.i.if.then309_crit_edge, %do.end440.i, %if.then257.i.if.then309_crit_edge, %if.end6.i.i, %if.then1.i.i.if.then309_crit_edge, %if.end73.i.if.then309_crit_edge, %if.end64.i.if.then309_crit_edge, %land.lhs.true36.i.if.then309_crit_edge
  %err.3.ph = phi i32 [ %call.i918.i, %fib6_add_rt2node.exit ], [ -2, %do.end440.i ], [ %call.i924.i, %if.then453.i.if.then309_crit_edge ], [ %call.i918.i, %if.then257.i.if.then309_crit_edge ], [ -17, %if.end6.i.i ], [ -17, %if.then1.i.i.if.then309_crit_edge ], [ -17, %if.end73.i.if.then309_crit_edge ], [ -17, %if.end64.i.if.then309_crit_edge ], [ -17, %land.lhs.true36.i.if.then309_crit_edge ]
  %cmp310.not = icmp eq ptr %call17, %fn.1
  br i1 %cmp310.not, label %if.then309.failure_crit_edge, label %if.then312

if.then309.failure_crit_edge:                     ; preds = %if.then309
  call void @__sanitizer_cov_trace_pc() #15
  br label %failure

if.then312:                                       ; preds = %if.then309
  %dep_map = getelementptr inbounds %struct.fib6_table, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 4
  %call.i = call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool315.not = icmp eq i32 %call.i, 0
  br i1 %tobool315.not, label %land.lhs.true316, label %if.then312.do.end324_crit_edge

if.then312.do.end324_crit_edge:                   ; preds = %if.then312
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end324

land.lhs.true316:                                 ; preds = %if.then312
  %call317 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call317)
  %tobool318.not = icmp eq i32 %call317, 0
  br i1 %tobool318.not, label %land.lhs.true316.do.end324_crit_edge, label %land.lhs.true319

land.lhs.true316.do.end324_crit_edge:             ; preds = %land.lhs.true316
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end324

land.lhs.true319:                                 ; preds = %land.lhs.true316
  %.b558 = load i1, ptr @fib6_add.__warned.5, align 1
  br i1 %.b558, label %land.lhs.true319.do.end324_crit_edge, label %if.then321

land.lhs.true319.do.end324_crit_edge:             ; preds = %land.lhs.true319
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end324

if.then321:                                       ; preds = %land.lhs.true319
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @fib6_add.__warned.5, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1496, ptr noundef nonnull @.str.1) #13
  br label %do.end324

do.end324:                                        ; preds = %if.then321, %land.lhs.true319.do.end324_crit_edge, %land.lhs.true316.do.end324_crit_edge, %if.then312.do.end324_crit_edge
  %leaf326 = getelementptr inbounds %struct.fib6_node, ptr %call17, i32 0, i32 4
  %376 = ptrtoint ptr %leaf326 to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %leaf326, align 4
  %cmp327 = icmp eq ptr %377, %rt
  br i1 %cmp327, label %if.then329, label %if.end343

if.then329:                                       ; preds = %do.end324
  %378 = ptrtoint ptr %leaf326 to i32
  call void @__asan_store4_noabort(i32 %378)
  store volatile ptr null, ptr %leaf326, align 4
  %tobool.not.i588 = icmp eq ptr %rt, null
  br i1 %tobool.not.i588, label %if.then329.land.lhs.true345_crit_edge, label %land.lhs.true.i592

if.then329.land.lhs.true345_crit_edge:            ; preds = %if.then329
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true345

land.lhs.true.i592:                               ; preds = %if.then329
  %fib6_ref.i589 = getelementptr inbounds %struct.fib6_info, ptr %rt, i32 0, i32 5
  %call.i.i.i.i.i.i590 = call zeroext i1 @__kasan_check_write(ptr noundef %fib6_ref.i589, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !254
  call void @llvm.prefetch.p0(ptr %fib6_ref.i589, i32 1, i32 3, i32 1) #13
  %379 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fib6_ref.i589, ptr %fib6_ref.i589, i32 1, ptr elementtype(i32) %fib6_ref.i589) #13, !srcloc !255
  %asmresult.i.i.i.i.i.i.i591 = extractvalue { i32, i32, i32 } %379, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i591)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i591, 1
  br i1 %cmp.i.i.i.i, label %if.then.i594, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i592
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i591)
  %.not.i.i.i.i593 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i591, 0
  br i1 %.not.i.i.i.i593, label %if.end5.i.i.i.i.land.lhs.true345_crit_edge, label %if.then10.i.i.i.i, !prof !253

if.end5.i.i.i.i.land.lhs.true345_crit_edge:       ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true345

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef %fib6_ref.i589, i32 noundef 3) #13
  br label %land.lhs.true345

if.then.i594:                                     ; preds = %land.lhs.true.i592
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !256
  %rcu.i = getelementptr inbounds %struct.fib6_info, ptr %rt, i32 0, i32 19
  call void @call_rcu(ptr noundef %rcu.i, ptr noundef nonnull @fib6_info_destroy_rcu) #13
  br label %land.lhs.true345

if.end343:                                        ; preds = %do.end324
  %tobool344.not = icmp eq ptr %377, null
  br i1 %tobool344.not, label %if.end343.land.lhs.true345_crit_edge, label %if.end343.failure_crit_edge

if.end343.failure_crit_edge:                      ; preds = %if.end343
  call void @__sanitizer_cov_trace_pc() #15
  br label %failure

if.end343.land.lhs.true345_crit_edge:             ; preds = %if.end343
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true345

land.lhs.true345:                                 ; preds = %if.end343.land.lhs.true345_crit_edge, %if.then.i594, %if.then10.i.i.i.i, %if.end5.i.i.i.i.land.lhs.true345_crit_edge, %if.then329.land.lhs.true345_crit_edge
  %fn_flags346 = getelementptr inbounds %struct.fib6_node, ptr %call17, i32 0, i32 6
  %380 = ptrtoint ptr %fn_flags346 to i32
  call void @__asan_load2_noabort(i32 %380)
  %381 = load i16, ptr %fn_flags346, align 2
  %382 = and i16 %381, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %382)
  %tobool349.not = icmp eq i16 %382, 0
  br i1 %tobool349.not, label %if.then350, label %land.lhs.true345.failure_crit_edge

land.lhs.true345.failure_crit_edge:               ; preds = %land.lhs.true345
  call void @__sanitizer_cov_trace_pc() #15
  br label %failure

if.then350:                                       ; preds = %land.lhs.true345
  %383 = ptrtoint ptr %nl_net to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %nl_net, align 4
  %call352 = call fastcc ptr @fib6_find_prefix(ptr noundef %384, ptr noundef %1, ptr noundef %call17)
  %tobool353.not = icmp eq ptr %call352, null
  br i1 %tobool353.not, label %do.end368, label %if.then350.if.end385_crit_edge

if.then350.if.end385_crit_edge:                   ; preds = %if.then350
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end385

do.end368:                                        ; preds = %if.then350
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1507, i32 noundef 9, ptr noundef null) #13
  %385 = ptrtoint ptr %nl_net to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %nl_net, align 4
  %fib6_null_entry384 = getelementptr inbounds %struct.net, ptr %386, i32 0, i32 36, i32 6
  %387 = ptrtoint ptr %fib6_null_entry384 to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %fib6_null_entry384, align 16
  br label %if.end385

if.end385:                                        ; preds = %do.end368, %if.then350.if.end385_crit_edge
  %pn_leaf.1 = phi ptr [ %call352, %if.then350.if.end385_crit_edge ], [ %388, %do.end368 ]
  %fib6_ref.i595 = getelementptr inbounds %struct.fib6_info, ptr %pn_leaf.1, i32 0, i32 5
  %call.i.i.i.i.i.i596 = call zeroext i1 @__kasan_check_write(ptr noundef %fib6_ref.i595, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %fib6_ref.i595, i32 1, i32 3, i32 1) #13
  %389 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fib6_ref.i595, ptr %fib6_ref.i595, i32 1, ptr elementtype(i32) %fib6_ref.i595) #13, !srcloc !262
  %asmresult.i.i.i.i.i.i597 = extractvalue { i32, i32, i32 } %389, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i597)
  %tobool1.not.i.i.i.i598 = icmp eq i32 %asmresult.i.i.i.i.i.i597, 0
  br i1 %tobool1.not.i.i.i.i598, label %if.end385.if.end15.sink.split.i.i.i.i603_crit_edge, label %if.else.i.i.i.i601, !prof !263

if.end385.if.end15.sink.split.i.i.i.i603_crit_edge: ; preds = %if.end385
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i603

if.else.i.i.i.i601:                               ; preds = %if.end385
  %add.i.i.i.i599 = add i32 %asmresult.i.i.i.i.i.i597, 1
  %390 = or i32 %add.i.i.i.i599, %asmresult.i.i.i.i.i.i597
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %390)
  %.not.i.i.i.i600 = icmp sgt i32 %390, -1
  br i1 %.not.i.i.i.i600, label %if.else.i.i.i.i601.fib6_info_hold.exit604_crit_edge, label %if.else.i.i.i.i601.if.end15.sink.split.i.i.i.i603_crit_edge, !prof !253

if.else.i.i.i.i601.if.end15.sink.split.i.i.i.i603_crit_edge: ; preds = %if.else.i.i.i.i601
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i603

if.else.i.i.i.i601.fib6_info_hold.exit604_crit_edge: ; preds = %if.else.i.i.i.i601
  call void @__sanitizer_cov_trace_pc() #15
  br label %fib6_info_hold.exit604

if.end15.sink.split.i.i.i.i603:                   ; preds = %if.else.i.i.i.i601.if.end15.sink.split.i.i.i.i603_crit_edge, %if.end385.if.end15.sink.split.i.i.i.i603_crit_edge
  %.sink.i.i.i.i602 = phi i32 [ 2, %if.end385.if.end15.sink.split.i.i.i.i603_crit_edge ], [ 1, %if.else.i.i.i.i601.if.end15.sink.split.i.i.i.i603_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %fib6_ref.i595, i32 noundef %.sink.i.i.i.i602) #13
  br label %fib6_info_hold.exit604

fib6_info_hold.exit604:                           ; preds = %if.end15.sink.split.i.i.i.i603, %if.else.i.i.i.i601.fib6_info_hold.exit604_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !276
  %391 = ptrtoint ptr %leaf326 to i32
  call void @__asan_store4_noabort(i32 %391)
  store volatile ptr %pn_leaf.1, ptr %leaf326, align 4
  br label %failure

if.else430:                                       ; preds = %if.then.i587, %land.lhs.true.i585.if.else430_crit_edge, %fib6_new_sernum.exit.if.else430_crit_edge
  %392 = ptrtoint ptr %plen22 to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load i32, ptr %plen22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %393)
  %cmp.i605 = icmp sgt i32 %393, 0
  br i1 %cmp.i605, label %if.then432, label %if.else430.cleanup458_crit_edge

if.else430.cleanup458_crit_edge:                  ; preds = %if.else430
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup458

if.then432:                                       ; preds = %if.else430
  call void @__sanitizer_cov_trace_pc() #15
  %394 = ptrtoint ptr %nl_net to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %nl_net, align 4
  %fib6_routes_require_src.i = getelementptr inbounds %struct.net, ptr %395, i32 0, i32 36, i32 20
  %396 = ptrtoint ptr %fib6_routes_require_src.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load i32, ptr %fib6_routes_require_src.i, align 4
  %inc.i606 = add i32 %397, 1
  store i32 %inc.i606, ptr %fib6_routes_require_src.i, align 4
  br label %cleanup458

failure:                                          ; preds = %fib6_info_hold.exit604, %land.lhs.true345.failure_crit_edge, %if.end343.failure_crit_edge, %if.then309.failure_crit_edge, %if.then186, %if.then86, %if.then31.failure_crit_edge
  %err.4 = phi i32 [ %err.3.ph, %if.then309.failure_crit_edge ], [ %err.3.ph, %fib6_info_hold.exit604 ], [ %err.3.ph, %land.lhs.true345.failure_crit_edge ], [ %err.3.ph, %if.end343.failure_crit_edge ], [ %51, %if.then186 ], [ %48, %if.then86 ], [ -12, %if.then31.failure_crit_edge ]
  %fn.3 = phi ptr [ %call17, %if.then309.failure_crit_edge ], [ %fn.1, %fib6_info_hold.exit604 ], [ %fn.1, %land.lhs.true345.failure_crit_edge ], [ %fn.1, %if.end343.failure_crit_edge ], [ %call17, %if.then186 ], [ %call17, %if.then86 ], [ %call17, %if.then31.failure_crit_edge ]
  %tobool436.not = icmp eq ptr %fn.3, null
  br i1 %tobool436.not, label %failure.cleanup458_crit_edge, label %land.lhs.true437

failure.cleanup458_crit_edge:                     ; preds = %failure
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup458

land.lhs.true437:                                 ; preds = %failure
  %fn_flags438 = getelementptr inbounds %struct.fib6_node, ptr %fn.3, i32 0, i32 6
  %398 = ptrtoint ptr %fn_flags438 to i32
  call void @__asan_load2_noabort(i32 %398)
  %399 = load i16, ptr %fn_flags438, align 2
  %conv439 = zext i16 %399 to i32
  %and440 = and i32 %conv439, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and440)
  %tobool441.not = icmp eq i32 %and440, 0
  br i1 %tobool441.not, label %land.lhs.true437.if.then454_crit_edge, label %lor.lhs.false

land.lhs.true437.if.then454_crit_edge:            ; preds = %land.lhs.true437
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then454

lor.lhs.false:                                    ; preds = %land.lhs.true437
  %and444 = and i32 %conv439, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and444)
  %tobool445.not = icmp eq i32 %and444, 0
  br i1 %tobool445.not, label %lor.lhs.false.cleanup458_crit_edge, label %land.lhs.true446

lor.lhs.false.cleanup458_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup458

land.lhs.true446:                                 ; preds = %lor.lhs.false
  %leaf451 = getelementptr inbounds %struct.fib6_node, ptr %fn.3, i32 0, i32 4
  %400 = ptrtoint ptr %leaf451 to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load volatile ptr, ptr %leaf451, align 4
  %tobool453.not = icmp eq ptr %401, null
  br i1 %tobool453.not, label %land.lhs.true446.if.then454_crit_edge, label %land.lhs.true446.cleanup458_crit_edge

land.lhs.true446.cleanup458_crit_edge:            ; preds = %land.lhs.true446
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup458

land.lhs.true446.if.then454_crit_edge:            ; preds = %land.lhs.true446
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then454

if.then454:                                       ; preds = %land.lhs.true446.if.then454_crit_edge, %land.lhs.true437.if.then454_crit_edge
  %402 = ptrtoint ptr %nl_net to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %nl_net, align 4
  %call456 = call fastcc ptr @fib6_repair_tree(ptr noundef %403, ptr noundef %1, ptr noundef nonnull %fn.3)
  br label %cleanup458

cleanup458:                                       ; preds = %if.then454, %land.lhs.true446.cleanup458_crit_edge, %lor.lhs.false.cleanup458_crit_edge, %failure.cleanup458_crit_edge, %if.then432, %if.else430.cleanup458_crit_edge, %out
  %retval.0 = phi i32 [ 0, %if.else430.cleanup458_crit_edge ], [ 0, %if.then432 ], [ %err.4, %if.then454 ], [ %err.4, %land.lhs.true446.cleanup458_crit_edge ], [ %err.4, %lor.lhs.false.cleanup458_crit_edge ], [ %err.4, %failure.cleanup458_crit_edge ], [ %375, %out ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @fib6_add_1(ptr nocapture noundef readonly %net, ptr noundef %table, ptr noundef %root, ptr nocapture noundef readonly %addr, i32 noundef %plen, i32 noundef %offset, i32 noundef %allow_create, i32 noundef %replace_required, ptr noundef writeonly %extack) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dep_map = getelementptr inbounds %struct.fib6_table, ptr %table, i32 0, i32 2, i32 0, i32 0, i32 4
  br label %do.body1

do.body1:                                         ; preds = %do.cond125.do.body1_crit_edge, %entry
  %dir.0 = phi i32 [ 0, %entry ], [ %and1.i, %do.cond125.do.body1_crit_edge ]
  %fn.0 = phi ptr [ %root, %entry ], [ %cond, %do.cond125.do.body1_crit_edge ]
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %do.body1.do.end8_crit_edge

do.body1.do.end8_crit_edge:                       ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end8

land.lhs.true:                                    ; preds = %do.body1
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b941 = load i1, ptr @fib6_add_1.__warned, align 1
  br i1 %.b941, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @fib6_add_1.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 763, ptr noundef nonnull @.str.1) #13
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %do.body1.do.end8_crit_edge
  %leaf9 = getelementptr inbounds %struct.fib6_node, ptr %fn.0, i32 0, i32 4
  %0 = ptrtoint ptr %leaf9 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %leaf9, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %offset
  %fn_bit = getelementptr inbounds %struct.fib6_node, ptr %fn.0, i32 0, i32 5
  %2 = ptrtoint ptr %fn_bit to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %fn_bit, align 4
  %conv = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %plen)
  %cmp = icmp sgt i32 %conv, %plen
  br i1 %cmp, label %do.end8.if.then15_crit_edge, label %lor.lhs.false

do.end8.if.then15_crit_edge:                      ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then15

lor.lhs.false:                                    ; preds = %do.end8
  %shr.i = lshr i32 %conv, 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %3)
  %tobool.not.i = icmp ult i16 %3, 32
  br i1 %tobool.not.i, label %lor.lhs.false.if.end.i_crit_edge, label %land.lhs.true.i

lor.lhs.false.if.end.i_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false
  %shl.i = shl nuw nsw i32 %shr.i, 2
  %bcmp.i = tail call i32 @bcmp(ptr %add.ptr, ptr %addr, i32 %shl.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool3.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.if.then15_crit_edge

land.lhs.true.i.if.then15_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then15

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %lor.lhs.false.if.end.i_crit_edge
  %and.i = and i32 %conv, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool4.not.i, label %if.end.i.if.end39_crit_edge, label %land.lhs.true5.i

if.end.i.if.end39_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39

land.lhs.true5.i:                                 ; preds = %if.end.i
  %arrayidx.i = getelementptr i32, ptr %add.ptr, i32 %shr.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %arrayidx6.i = getelementptr i32, ptr %addr, i32 %shr.i
  %6 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx6.i, align 4
  %xor.i = xor i32 %7, %5
  %sub.i = sub nuw nsw i32 32, %and.i
  %shl7.i = shl nsw i32 -1, %sub.i
  %and8.i = and i32 %xor.i, %shl7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %land.lhs.true5.i.if.end39_crit_edge, label %land.lhs.true5.i.if.then15_crit_edge

land.lhs.true5.i.if.then15_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then15

land.lhs.true5.i.if.end39_crit_edge:              ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39

if.then15:                                        ; preds = %land.lhs.true5.i.if.then15_crit_edge, %land.lhs.true.i.if.then15_crit_edge, %do.end8.if.then15_crit_edge
  %leaf9.le1064 = getelementptr inbounds %struct.fib6_node, ptr %fn.0, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %allow_create)
  %tobool16.not = icmp eq i32 %allow_create, 0
  br i1 %tobool16.not, label %if.then17, label %if.then15.do.body259_crit_edge

if.then15.do.body259_crit_edge:                   ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body259

if.then17:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %replace_required)
  %tobool18.not = icmp eq i32 %replace_required, 0
  br i1 %tobool18.not, label %do.end35, label %do.body20

do.body20:                                        ; preds = %if.then17
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib6_add_1.__msg) #13
  %tobool21.not = icmp eq ptr %extack, null
  br i1 %tobool21.not, label %do.body20.if.end23_crit_edge, label %if.then22

do.body20.if.end23_crit_edge:                     ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

if.then22:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @fib6_add_1.__msg, ptr %extack, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %do.body20.if.end23_crit_edge
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #18
  br label %cleanup829

do.end35:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #15
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #18
  br label %do.body259

if.end39:                                         ; preds = %land.lhs.true5.i.if.end39_crit_edge, %if.end.i.if.end39_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %plen)
  %cmp42 = icmp eq i32 %conv, %plen
  br i1 %cmp42, label %if.then44, label %if.end90

if.then44:                                        ; preds = %if.end39
  %leaf9.le = getelementptr inbounds %struct.fib6_node, ptr %fn.0, i32 0, i32 4
  %fn_flags = getelementptr inbounds %struct.fib6_node, ptr %fn.0, i32 0, i32 6
  %9 = ptrtoint ptr %fn_flags to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %fn_flags, align 2
  %conv45 = zext i16 %10 to i32
  %and = and i32 %conv45, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool46.not = icmp eq i32 %and, 0
  br i1 %tobool46.not, label %do.body53, label %if.else

do.body53:                                        ; preds = %if.then44
  %11 = ptrtoint ptr %leaf9.le to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr null, ptr %leaf9.le, align 4
  %tobool.not.i942 = icmp eq ptr %1, null
  br i1 %tobool.not.i942, label %do.body53.cleanup829_crit_edge, label %land.lhs.true.i943

do.body53.cleanup829_crit_edge:                   ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup829

land.lhs.true.i943:                               ; preds = %do.body53
  %fib6_ref.i = getelementptr inbounds %struct.fib6_info, ptr %1, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fib6_ref.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !254
  tail call void @llvm.prefetch.p0(ptr %fib6_ref.i, i32 1, i32 3, i32 1) #13
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fib6_ref.i, ptr %fib6_ref.i, i32 1, ptr elementtype(i32) %fib6_ref.i) #13, !srcloc !255
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i943
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup829_crit_edge, label %if.then10.i.i.i.i, !prof !253

if.end5.i.i.i.i.cleanup829_crit_edge:             ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup829

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %fib6_ref.i, i32 noundef 3) #13
  br label %cleanup829

if.then.i:                                        ; preds = %land.lhs.true.i943
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !256
  %rcu.i = getelementptr inbounds %struct.fib6_info, ptr %1, i32 0, i32 19
  tail call void @call_rcu(ptr noundef %rcu.i, ptr noundef nonnull @fib6_info_destroy_rcu) #13
  br label %cleanup829

if.else:                                          ; preds = %if.then44
  %and63 = and i32 %conv45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %if.else.cleanup829_crit_edge, label %land.lhs.true65

if.else.cleanup829_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup829

land.lhs.true65:                                  ; preds = %if.else
  %13 = ptrtoint ptr %leaf9.le to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %leaf9.le, align 4
  %fib6_null_entry = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 6
  %15 = ptrtoint ptr %fib6_null_entry to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fib6_null_entry, align 16
  %cmp72 = icmp eq ptr %14, %16
  br i1 %cmp72, label %do.body80, label %land.lhs.true65.cleanup829_crit_edge

land.lhs.true65.cleanup829_crit_edge:             ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup829

do.body80:                                        ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %leaf9.le to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr null, ptr %leaf9.le, align 4
  br label %cleanup829

if.end90:                                         ; preds = %if.end39
  %and.i945 = xor i32 %and.i, 31
  %shl.i946 = shl nuw i32 1, %and.i945
  %arrayidx.i948 = getelementptr i32, ptr %addr, i32 %shr.i
  %18 = ptrtoint ptr %arrayidx.i948 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i948, align 4
  %and1.i = and i32 %19, %shl.i946
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool94.not = icmp eq i32 %and1.i, 0
  %call.i950 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i950)
  %tobool114.not = icmp eq i32 %call.i950, 0
  br i1 %tobool94.not, label %do.body110, label %do.body95

do.body95:                                        ; preds = %if.end90
  br i1 %tobool114.not, label %land.lhs.true100, label %do.body95.do.end108_crit_edge

do.body95.do.end108_crit_edge:                    ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end108

land.lhs.true100:                                 ; preds = %do.body95
  %call101 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %land.lhs.true100.do.end108_crit_edge, label %land.lhs.true103

land.lhs.true100.do.end108_crit_edge:             ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end108

land.lhs.true103:                                 ; preds = %land.lhs.true100
  %.b933940 = load i1, ptr @fib6_add_1.__warned.27, align 1
  br i1 %.b933940, label %land.lhs.true103.do.end108_crit_edge, label %if.then105

land.lhs.true103.do.end108_crit_edge:             ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end108

if.then105:                                       ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @fib6_add_1.__warned.27, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 811, ptr noundef nonnull @.str.1) #13
  br label %do.end108

do.end108:                                        ; preds = %if.then105, %land.lhs.true103.do.end108_crit_edge, %land.lhs.true100.do.end108_crit_edge, %do.body95.do.end108_crit_edge
  %right = getelementptr inbounds %struct.fib6_node, ptr %fn.0, i32 0, i32 2
  br label %do.cond125

do.body110:                                       ; preds = %if.end90
  br i1 %tobool114.not, label %land.lhs.true115, label %do.body110.do.end123_crit_edge

do.body110.do.end123_crit_edge:                   ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end123

land.lhs.true115:                                 ; preds = %do.body110
  %call116 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %land.lhs.true115.do.end123_crit_edge, label %land.lhs.true118

land.lhs.true115.do.end123_crit_edge:             ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end123

land.lhs.true118:                                 ; preds = %land.lhs.true115
  %.b934939 = load i1, ptr @fib6_add_1.__warned.28, align 1
  br i1 %.b934939, label %land.lhs.true118.do.end123_crit_edge, label %if.then120

land.lhs.true118.do.end123_crit_edge:             ; preds = %land.lhs.true118
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end123

if.then120:                                       ; preds = %land.lhs.true118
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @fib6_add_1.__warned.28, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 813, ptr noundef nonnull @.str.1) #13
  br label %do.end123

do.end123:                                        ; preds = %if.then120, %land.lhs.true118.do.end123_crit_edge, %land.lhs.true115.do.end123_crit_edge, %do.body110.do.end123_crit_edge
  %left = getelementptr inbounds %struct.fib6_node, ptr %fn.0, i32 0, i32 1
  br label %do.cond125

do.cond125:                                       ; preds = %do.end123, %do.end108
  %cond.in = phi ptr [ %right, %do.end108 ], [ %left, %do.end123 ]
  %20 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %20)
  %cond = load ptr, ptr %cond.in, align 4
  %tobool126.not = icmp eq ptr %cond, null
  br i1 %tobool126.not, label %do.end127, label %do.cond125.do.body1_crit_edge

do.cond125.do.body1_crit_edge:                    ; preds = %do.cond125
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body1

do.end127:                                        ; preds = %do.cond125
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %allow_create)
  %tobool128.not = icmp eq i32 %allow_create, 0
  br i1 %tobool128.not, label %if.then129, label %do.end127.if.end152_crit_edge

do.end127.if.end152_crit_edge:                    ; preds = %do.end127
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end152

if.then129:                                       ; preds = %do.end127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %replace_required)
  %tobool130.not = icmp eq i32 %replace_required, 0
  br i1 %tobool130.not, label %do.end149, label %do.body132

do.body132:                                       ; preds = %if.then129
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib6_add_1.__msg.29) #13
  %tobool134.not = icmp eq ptr %extack, null
  br i1 %tobool134.not, label %do.body132.if.end137_crit_edge, label %if.then135

do.body132.if.end137_crit_edge:                   ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end137

if.then135:                                       ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #15
  %21 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @fib6_add_1.__msg.29, ptr %extack, align 4
  br label %if.end137

if.end137:                                        ; preds = %if.then135, %do.body132.if.end137_crit_edge
  %call144 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #18
  br label %cleanup829

do.end149:                                        ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #15
  %call151 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #18
  br label %if.end152

if.end152:                                        ; preds = %do.end149, %do.end127.if.end152_crit_edge
  %22 = load ptr, ptr @fib6_node_kmem, align 4
  %call.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %22, i32 noundef 2848) #13
  %tobool.not.i951 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i951, label %if.end152.cleanup829_crit_edge, label %if.end157

if.end152.cleanup829_crit_edge:                   ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup829

if.end157:                                        ; preds = %if.end152
  %rt6_stats.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 8
  %23 = ptrtoint ptr %rt6_stats.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rt6_stats.i, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %inc.i = add i32 %26, 1
  store i32 %inc.i, ptr %24, align 4
  %conv158 = trunc i32 %plen to i16
  %fn_bit159 = getelementptr inbounds %struct.fib6_node, ptr %call.i.i, i32 0, i32 5
  %27 = ptrtoint ptr %fn_bit159 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv158, ptr %fn_bit159, align 4
  %28 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %fn.0, ptr %call.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13
  br i1 %tobool94.not, label %do.body216, label %do.body174

do.body174:                                       ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #15
  %right203 = getelementptr inbounds %struct.fib6_node, ptr %fn.0, i32 0, i32 2
  %29 = ptrtoint ptr %right203 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %call.i.i, ptr %right203, align 4
  br label %cleanup829

do.body216:                                       ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #15
  %left246 = getelementptr inbounds %struct.fib6_node, ptr %fn.0, i32 0, i32 1
  %30 = ptrtoint ptr %left246 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %call.i.i, ptr %left246, align 4
  br label %cleanup829

do.body259:                                       ; preds = %do.end35, %if.then15.do.body259_crit_edge
  %call.i954 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i954)
  %tobool263.not = icmp eq i32 %call.i954, 0
  br i1 %tobool263.not, label %land.lhs.true264, label %do.body259.do.end272_crit_edge

do.body259.do.end272_crit_edge:                   ; preds = %do.body259
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end272

land.lhs.true264:                                 ; preds = %do.body259
  %call265 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call265)
  %tobool266.not = icmp eq i32 %call265, 0
  br i1 %tobool266.not, label %land.lhs.true264.do.end272_crit_edge, label %land.lhs.true267

land.lhs.true264.do.end272_crit_edge:             ; preds = %land.lhs.true264
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end272

land.lhs.true267:                                 ; preds = %land.lhs.true264
  %.b935938 = load i1, ptr @fib6_add_1.__warned.34, align 1
  br i1 %.b935938, label %land.lhs.true267.do.end272_crit_edge, label %if.then269

land.lhs.true267.do.end272_crit_edge:             ; preds = %land.lhs.true267
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end272

if.then269:                                       ; preds = %land.lhs.true267
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @fib6_add_1.__warned.34, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 864, ptr noundef nonnull @.str.1) #13
  br label %do.end272

do.end272:                                        ; preds = %if.then269, %land.lhs.true267.do.end272_crit_edge, %land.lhs.true264.do.end272_crit_edge, %do.body259.do.end272_crit_edge
  %31 = ptrtoint ptr %fn.0 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fn.0, align 4
  %33 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %addr, align 4
  %35 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %add.ptr, align 4
  %xor.i.i = xor i32 %36, %34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor.i.i)
  %tobool.not.i.i = icmp eq i32 %xor.i.i, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %do.end272.cleanup.i.i_crit_edge

do.end272.cleanup.i.i_crit_edge:                  ; preds = %do.end272
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %for.inc.2.i.i.cleanup.i.i_crit_edge, %for.inc.1.i.i.cleanup.i.i_crit_edge, %for.inc.i.i.cleanup.i.i_crit_edge, %do.end272.cleanup.i.i_crit_edge
  %i.04.lcssa.i.i = phi i32 [ 0, %do.end272.cleanup.i.i_crit_edge ], [ 32, %for.inc.i.i.cleanup.i.i_crit_edge ], [ 64, %for.inc.1.i.i.cleanup.i.i_crit_edge ], [ 96, %for.inc.2.i.i.cleanup.i.i_crit_edge ]
  %xor.lcssa.i.i = phi i32 [ %xor.i.i, %do.end272.cleanup.i.i_crit_edge ], [ %xor.1.i.i, %for.inc.i.i.cleanup.i.i_crit_edge ], [ %xor.2.i.i, %for.inc.1.i.i.cleanup.i.i_crit_edge ], [ %xor.3.i.i, %for.inc.2.i.i.cleanup.i.i_crit_edge ]
  %37 = tail call i32 @llvm.ctlz.i32(i32 %xor.lcssa.i.i, i1 true) #13, !range !277
  %sub.i.i = or i32 %37, %i.04.lcssa.i.i
  br label %__ipv6_addr_diff.exit

for.inc.i.i:                                      ; preds = %do.end272
  %arrayidx.1.i.i = getelementptr i32, ptr %addr, i32 1
  %38 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.1.i.i, align 4
  %arrayidx1.1.i.i = getelementptr i32, ptr %add.ptr, i32 1
  %40 = ptrtoint ptr %arrayidx1.1.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx1.1.i.i, align 4
  %xor.1.i.i = xor i32 %41, %39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor.1.i.i)
  %tobool.not.1.i.i = icmp eq i32 %xor.1.i.i, 0
  br i1 %tobool.not.1.i.i, label %for.inc.1.i.i, label %for.inc.i.i.cleanup.i.i_crit_edge

for.inc.i.i.cleanup.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i.i

for.inc.1.i.i:                                    ; preds = %for.inc.i.i
  %arrayidx.2.i.i = getelementptr i32, ptr %addr, i32 2
  %42 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.2.i.i, align 4
  %arrayidx1.2.i.i = getelementptr i32, ptr %add.ptr, i32 2
  %44 = ptrtoint ptr %arrayidx1.2.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx1.2.i.i, align 4
  %xor.2.i.i = xor i32 %45, %43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor.2.i.i)
  %tobool.not.2.i.i = icmp eq i32 %xor.2.i.i, 0
  br i1 %tobool.not.2.i.i, label %for.inc.2.i.i, label %for.inc.1.i.i.cleanup.i.i_crit_edge

for.inc.1.i.i.cleanup.i.i_crit_edge:              ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i.i

for.inc.2.i.i:                                    ; preds = %for.inc.1.i.i
  %arrayidx.3.i.i = getelementptr i32, ptr %addr, i32 3
  %46 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.3.i.i, align 4
  %arrayidx1.3.i.i = getelementptr i32, ptr %add.ptr, i32 3
  %48 = ptrtoint ptr %arrayidx1.3.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx1.3.i.i, align 4
  %xor.3.i.i = xor i32 %49, %47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor.3.i.i)
  %tobool.not.3.i.i = icmp eq i32 %xor.3.i.i, 0
  br i1 %tobool.not.3.i.i, label %for.inc.2.i.i.__ipv6_addr_diff.exit_crit_edge, label %for.inc.2.i.i.cleanup.i.i_crit_edge

for.inc.2.i.i.cleanup.i.i_crit_edge:              ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i.i

for.inc.2.i.i.__ipv6_addr_diff.exit_crit_edge:    ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__ipv6_addr_diff.exit

__ipv6_addr_diff.exit:                            ; preds = %for.inc.2.i.i.__ipv6_addr_diff.exit_crit_edge, %cleanup.i.i
  %retval.2.i.i = phi i32 [ %sub.i.i, %cleanup.i.i ], [ 128, %for.inc.2.i.i.__ipv6_addr_diff.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.2.i.i, i32 %plen)
  %cmp277 = icmp slt i32 %retval.2.i.i, %plen
  %50 = load ptr, ptr @fib6_node_kmem, align 4
  %call.i.i955 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %50, i32 noundef 2848) #13
  %tobool.not.i956 = icmp eq ptr %call.i.i955, null
  br i1 %cmp277, label %if.then279, label %if.else645

if.then279:                                       ; preds = %__ipv6_addr_diff.exit
  br i1 %tobool.not.i956, label %node_alloc.exit961, label %node_alloc.exit961.thread

node_alloc.exit961:                               ; preds = %if.then279
  %51 = load ptr, ptr @fib6_node_kmem, align 4
  %call.i.i962 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %51, i32 noundef 2848) #13
  %tobool.not.i963 = icmp eq ptr %call.i.i962, null
  br i1 %tobool.not.i963, label %node_alloc.exit961.cleanup829_crit_edge, label %if.then290

node_alloc.exit961.cleanup829_crit_edge:          ; preds = %node_alloc.exit961
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup829

node_alloc.exit961.thread:                        ; preds = %if.then279
  %rt6_stats.i957 = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 8
  %52 = ptrtoint ptr %rt6_stats.i957 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rt6_stats.i957, align 8
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 4
  %inc.i958 = add i32 %55, 1
  store i32 %inc.i958, ptr %53, align 4
  %56 = load ptr, ptr @fib6_node_kmem, align 4
  %call.i.i9621034 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %56, i32 noundef 2848) #13
  %tobool.not.i9631035 = icmp eq ptr %call.i.i9621034, null
  br i1 %tobool.not.i9631035, label %if.then287, label %if.end293

if.then287:                                       ; preds = %node_alloc.exit961.thread
  call void @__sanitizer_cov_trace_pc() #15
  %57 = load ptr, ptr @fib6_node_kmem, align 4
  tail call void @kmem_cache_free(ptr noundef %57, ptr noundef nonnull %call.i.i955) #13
  %rt6_stats.i969 = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 8
  %58 = ptrtoint ptr %rt6_stats.i969 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %rt6_stats.i969, align 8
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %59, align 4
  %dec.i = add i32 %61, -1
  store i32 %dec.i, ptr %59, align 4
  br label %cleanup829

if.then290:                                       ; preds = %node_alloc.exit961
  call void @__sanitizer_cov_trace_pc() #15
  %rt6_stats.i964 = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 8
  %62 = ptrtoint ptr %rt6_stats.i964 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %rt6_stats.i964, align 8
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %63, align 4
  %inc.i965 = add i32 %65, 1
  store i32 %inc.i965, ptr %63, align 4
  %66 = load ptr, ptr @fib6_node_kmem, align 4
  tail call void @kmem_cache_free(ptr noundef %66, ptr noundef nonnull %call.i.i962) #13
  %rt6_stats.i970 = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 8
  %67 = ptrtoint ptr %rt6_stats.i970 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %rt6_stats.i970, align 8
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %68, align 4
  %dec.i971 = add i32 %70, -1
  store i32 %dec.i971, ptr %68, align 4
  br label %cleanup829

if.end293:                                        ; preds = %node_alloc.exit961.thread
  %rt6_stats.i9641050 = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 8
  %71 = ptrtoint ptr %rt6_stats.i9641050 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %rt6_stats.i9641050, align 8
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %72, align 4
  %inc.i9651051 = add i32 %74, 1
  store i32 %inc.i9651051, ptr %72, align 4
  %conv294 = trunc i32 %retval.2.i.i to i16
  %fn_bit295 = getelementptr inbounds %struct.fib6_node, ptr %call.i.i955, i32 0, i32 5
  %75 = ptrtoint ptr %fn_bit295 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %conv294, ptr %fn_bit295, align 4
  %76 = ptrtoint ptr %call.i.i955 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %32, ptr %call.i.i955, align 8
  %77 = ptrtoint ptr %leaf9.le1064 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %leaf9.le1064, align 4
  %leaf310 = getelementptr inbounds %struct.fib6_node, ptr %call.i.i955, i32 0, i32 4
  %79 = ptrtoint ptr %leaf310 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %78, ptr %leaf310, align 8
  %call.i972 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i972)
  %tobool315.not = icmp eq i32 %call.i972, 0
  br i1 %tobool315.not, label %land.lhs.true316, label %if.end293.do.end324_crit_edge

if.end293.do.end324_crit_edge:                    ; preds = %if.end293
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end324

land.lhs.true316:                                 ; preds = %if.end293
  %call317 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call317)
  %tobool318.not = icmp eq i32 %call317, 0
  br i1 %tobool318.not, label %land.lhs.true316.do.end324_crit_edge, label %land.lhs.true319

land.lhs.true316.do.end324_crit_edge:             ; preds = %land.lhs.true316
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end324

land.lhs.true319:                                 ; preds = %land.lhs.true316
  %.b936937 = load i1, ptr @fib6_add_1.__warned.35, align 1
  br i1 %.b936937, label %land.lhs.true319.do.end324_crit_edge, label %if.then321

land.lhs.true319.do.end324_crit_edge:             ; preds = %land.lhs.true319
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end324

if.then321:                                       ; preds = %land.lhs.true319
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @fib6_add_1.__warned.35, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 904, ptr noundef nonnull @.str.1) #13
  br label %do.end324

do.end324:                                        ; preds = %if.then321, %land.lhs.true319.do.end324_crit_edge, %land.lhs.true316.do.end324_crit_edge, %if.end293.do.end324_crit_edge
  %80 = ptrtoint ptr %leaf310 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %leaf310, align 8
  %fib6_ref.i973 = getelementptr inbounds %struct.fib6_info, ptr %81, i32 0, i32 5
  %call.i.i.i.i.i.i974 = tail call zeroext i1 @__kasan_check_write(ptr noundef %fib6_ref.i973, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %fib6_ref.i973, i32 1, i32 3, i32 1) #13
  %82 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fib6_ref.i973, ptr %fib6_ref.i973, i32 1, ptr elementtype(i32) %fib6_ref.i973) #13, !srcloc !262
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %82, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %do.end324.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !263

do.end324.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %do.end324
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %do.end324
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %83 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %83)
  %.not.i.i.i.i975 = icmp sgt i32 %83, -1
  br i1 %.not.i.i.i.i975, label %if.else.i.i.i.i.fib6_info_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !253

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.fib6_info_hold.exit_crit_edge:    ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %fib6_info_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %do.end324.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %do.end324.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %fib6_ref.i973, i32 noundef %.sink.i.i.i.i) #13
  br label %fib6_info_hold.exit

fib6_info_hold.exit:                              ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.fib6_info_hold.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dir.0)
  %tobool327.not = icmp eq i32 %dir.0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13
  %left402 = getelementptr inbounds %struct.fib6_node, ptr %32, i32 0, i32 1
  %right359 = getelementptr inbounds %struct.fib6_node, ptr %32, i32 0, i32 2
  %left402.sink = select i1 %tobool327.not, ptr %left402, ptr %right359
  %84 = ptrtoint ptr %left402.sink to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile ptr %call.i.i955, ptr %left402.sink, align 4
  %conv415 = trunc i32 %plen to i16
  %fn_bit416 = getelementptr inbounds %struct.fib6_node, ptr %call.i.i9621034, i32 0, i32 5
  %85 = ptrtoint ptr %fn_bit416 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %conv415, ptr %fn_bit416, align 4
  %86 = ptrtoint ptr %call.i.i9621034 to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile ptr %call.i.i955, ptr %call.i.i9621034, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !278
  %87 = ptrtoint ptr %fn.0 to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile ptr %call.i.i955, ptr %fn.0, align 4
  %neg.i976 = and i32 %retval.2.i.i, 31
  %and.i977 = xor i32 %neg.i976, 31
  %shl.i978 = shl nuw i32 1, %and.i977
  %shr.i979 = ashr i32 %retval.2.i.i, 5
  %arrayidx.i980 = getelementptr i32, ptr %addr, i32 %shr.i979
  %88 = ptrtoint ptr %arrayidx.i980 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx.i980, align 4
  %and1.i981 = and i32 %89, %shl.i978
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i981)
  %tobool473.not = icmp eq i32 %and1.i981, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13
  br i1 %tobool473.not, label %do.body560, label %do.body475

do.body475:                                       ; preds = %fib6_info_hold.exit
  call void @__sanitizer_cov_trace_pc() #15
  %right505 = getelementptr inbounds %struct.fib6_node, ptr %call.i.i955, i32 0, i32 2
  %90 = ptrtoint ptr %right505 to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile ptr %call.i.i9621034, ptr %right505, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !279
  %left547 = getelementptr inbounds %struct.fib6_node, ptr %call.i.i955, i32 0, i32 1
  %91 = ptrtoint ptr %left547 to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile ptr %fn.0, ptr %left547, align 4
  br label %cleanup829

do.body560:                                       ; preds = %fib6_info_hold.exit
  call void @__sanitizer_cov_trace_pc() #15
  %left590 = getelementptr inbounds %struct.fib6_node, ptr %call.i.i955, i32 0, i32 1
  %92 = ptrtoint ptr %left590 to i32
  call void @__asan_store4_noabort(i32 %92)
  store volatile ptr %call.i.i9621034, ptr %left590, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !280
  %right632 = getelementptr inbounds %struct.fib6_node, ptr %call.i.i955, i32 0, i32 2
  %93 = ptrtoint ptr %right632 to i32
  call void @__asan_store4_noabort(i32 %93)
  store volatile ptr %fn.0, ptr %right632, align 8
  br label %cleanup829

if.else645:                                       ; preds = %__ipv6_addr_diff.exit
  br i1 %tobool.not.i956, label %if.else645.cleanup829_crit_edge, label %if.end650

if.else645.cleanup829_crit_edge:                  ; preds = %if.else645
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup829

if.end650:                                        ; preds = %if.else645
  %rt6_stats.i984 = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 8
  %94 = ptrtoint ptr %rt6_stats.i984 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %rt6_stats.i984, align 8
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %95, align 4
  %inc.i985 = add i32 %97, 1
  store i32 %inc.i985, ptr %95, align 4
  %conv651 = trunc i32 %plen to i16
  %fn_bit652 = getelementptr inbounds %struct.fib6_node, ptr %call.i.i955, i32 0, i32 5
  %98 = ptrtoint ptr %fn_bit652 to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %conv651, ptr %fn_bit652, align 4
  %99 = ptrtoint ptr %call.i.i955 to i32
  call void @__asan_store4_noabort(i32 %99)
  store volatile ptr %32, ptr %call.i.i955, align 8
  %neg.i989 = and i32 %plen, 31
  %and.i990 = xor i32 %neg.i989, 31
  %shl.i991 = shl nuw i32 1, %and.i990
  %shr.i992 = ashr i32 %plen, 5
  %arrayidx.i993 = getelementptr i32, ptr %add.ptr, i32 %shr.i992
  %100 = ptrtoint ptr %arrayidx.i993 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx.i993, align 4
  %and1.i994 = and i32 %101, %shl.i991
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i994)
  %tobool668.not = icmp eq i32 %and1.i994, 0
  br i1 %tobool668.not, label %do.body689, label %do.body675

do.body675:                                       ; preds = %if.end650
  call void @__sanitizer_cov_trace_pc() #15
  %right676 = getelementptr inbounds %struct.fib6_node, ptr %call.i.i955, i32 0, i32 2
  %102 = ptrtoint ptr %right676 to i32
  call void @__asan_store4_noabort(i32 %102)
  store volatile ptr %fn.0, ptr %right676, align 8
  br label %do.body698

do.body689:                                       ; preds = %if.end650
  call void @__sanitizer_cov_trace_pc() #15
  %left690 = getelementptr inbounds %struct.fib6_node, ptr %call.i.i955, i32 0, i32 1
  %103 = ptrtoint ptr %left690 to i32
  call void @__asan_store4_noabort(i32 %103)
  store volatile ptr %fn.0, ptr %left690, align 4
  br label %do.body698

do.body698:                                       ; preds = %do.body689, %do.body675
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !281
  %104 = ptrtoint ptr %fn.0 to i32
  call void @__asan_store4_noabort(i32 %104)
  store volatile ptr %call.i.i955, ptr %fn.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dir.0)
  %tobool740.not = icmp eq i32 %dir.0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13
  br i1 %tobool740.not, label %do.body785, label %do.body742

do.body742:                                       ; preds = %do.body698
  call void @__sanitizer_cov_trace_pc() #15
  %right772 = getelementptr inbounds %struct.fib6_node, ptr %32, i32 0, i32 2
  %105 = ptrtoint ptr %right772 to i32
  call void @__asan_store4_noabort(i32 %105)
  store volatile ptr %call.i.i955, ptr %right772, align 4
  br label %cleanup829

do.body785:                                       ; preds = %do.body698
  call void @__sanitizer_cov_trace_pc() #15
  %left815 = getelementptr inbounds %struct.fib6_node, ptr %32, i32 0, i32 1
  %106 = ptrtoint ptr %left815 to i32
  call void @__asan_store4_noabort(i32 %106)
  store volatile ptr %call.i.i955, ptr %left815, align 4
  br label %cleanup829

cleanup829:                                       ; preds = %do.body785, %do.body742, %if.else645.cleanup829_crit_edge, %do.body560, %do.body475, %if.then290, %if.then287, %node_alloc.exit961.cleanup829_crit_edge, %do.body216, %do.body174, %if.end152.cleanup829_crit_edge, %if.end137, %do.body80, %land.lhs.true65.cleanup829_crit_edge, %if.else.cleanup829_crit_edge, %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup829_crit_edge, %do.body53.cleanup829_crit_edge, %if.end23
  %retval.2 = phi ptr [ inttoptr (i32 -2 to ptr), %if.end137 ], [ %call.i.i, %do.body216 ], [ %call.i.i, %do.body174 ], [ %call.i.i9621034, %do.body475 ], [ %call.i.i9621034, %do.body560 ], [ %call.i.i955, %do.body742 ], [ %call.i.i955, %do.body785 ], [ inttoptr (i32 -12 to ptr), %if.end152.cleanup829_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then290 ], [ inttoptr (i32 -12 to ptr), %if.else645.cleanup829_crit_edge ], [ %fn.0, %if.then.i ], [ %fn.0, %if.then10.i.i.i.i ], [ %fn.0, %if.end5.i.i.i.i.cleanup829_crit_edge ], [ %fn.0, %do.body53.cleanup829_crit_edge ], [ %fn.0, %do.body80 ], [ %fn.0, %land.lhs.true65.cleanup829_crit_edge ], [ %fn.0, %if.else.cleanup829_crit_edge ], [ inttoptr (i32 -2 to ptr), %if.end23 ], [ inttoptr (i32 -12 to ptr), %if.then287 ], [ inttoptr (i32 -12 to ptr), %node_alloc.exit961.cleanup829_crit_edge ]
  ret ptr %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @fib6_find_prefix(ptr nocapture noundef readonly %net, ptr noundef %table, ptr noundef readonly %fn) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %fn_flags = getelementptr inbounds %struct.fib6_node, ptr %fn, i32 0, i32 6
  %0 = ptrtoint ptr %fn_flags to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %fn_flags, align 2
  %2 = and i16 %1, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %while.cond.preheader, label %if.then

while.cond.preheader:                             ; preds = %entry
  %tobool1.not90 = icmp eq ptr %fn, null
  br i1 %tobool1.not90, label %while.cond.preheader.cleanup_crit_edge, label %do.body.lr.ph

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body.lr.ph:                                    ; preds = %while.cond.preheader
  %dep_map = getelementptr inbounds %struct.fib6_table, ptr %table, i32 0, i32 2, i32 0, i32 0, i32 4
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %fib6_null_entry = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 6
  %3 = ptrtoint ptr %fib6_null_entry to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fib6_null_entry, align 16
  br label %cleanup

do.body:                                          ; preds = %do.end63.do.body_crit_edge, %do.body.lr.ph
  %fn.addr.091 = phi ptr [ %fn, %do.body.lr.ph ], [ %14, %do.end63.do.body_crit_edge ]
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %land.lhs.true, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true:                                    ; preds = %do.body
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true5

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b82 = load i1, ptr @fib6_find_prefix.__warned, align 1
  br i1 %.b82, label %land.lhs.true5.do.end_crit_edge, label %if.then7

land.lhs.true5.do.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then7:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @fib6_find_prefix.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1757, ptr noundef nonnull @.str.1) #13
  br label %do.end

do.end:                                           ; preds = %if.then7, %land.lhs.true5.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %do.body.do.end_crit_edge
  %left = getelementptr inbounds %struct.fib6_node, ptr %fn.addr.091, i32 0, i32 1
  %5 = ptrtoint ptr %left to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %left, align 4
  %call.i83 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i83)
  %tobool13.not = icmp eq i32 %call.i83, 0
  br i1 %tobool13.not, label %land.lhs.true14, label %do.end.do.end22_crit_edge

do.end.do.end22_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end22

land.lhs.true14:                                  ; preds = %do.end
  %call15 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %land.lhs.true14.do.end22_crit_edge, label %land.lhs.true17

land.lhs.true14.do.end22_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end22

land.lhs.true17:                                  ; preds = %land.lhs.true14
  %.b7681 = load i1, ptr @fib6_find_prefix.__warned.53, align 1
  br i1 %.b7681, label %land.lhs.true17.do.end22_crit_edge, label %if.then19

land.lhs.true17.do.end22_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end22

if.then19:                                        ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @fib6_find_prefix.__warned.53, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1759, ptr noundef nonnull @.str.1) #13
  br label %do.end22

do.end22:                                         ; preds = %if.then19, %land.lhs.true17.do.end22_crit_edge, %land.lhs.true14.do.end22_crit_edge, %do.end.do.end22_crit_edge
  %tobool24.not = icmp eq ptr %6, null
  br i1 %tobool24.not, label %if.end41, label %do.body26

do.body26:                                        ; preds = %do.end22
  %call.i84 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i84)
  %tobool30.not = icmp eq i32 %call.i84, 0
  br i1 %tobool30.not, label %land.lhs.true31, label %do.body26.do.end39_crit_edge

do.body26.do.end39_crit_edge:                     ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end39

land.lhs.true31:                                  ; preds = %do.body26
  %call32 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %land.lhs.true31.do.end39_crit_edge, label %land.lhs.true34

land.lhs.true31.do.end39_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end39

land.lhs.true34:                                  ; preds = %land.lhs.true31
  %.b7780 = load i1, ptr @fib6_find_prefix.__warned.54, align 1
  br i1 %.b7780, label %land.lhs.true34.do.end39_crit_edge, label %if.then36

land.lhs.true34.do.end39_crit_edge:               ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end39

if.then36:                                        ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @fib6_find_prefix.__warned.54, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1762, ptr noundef nonnull @.str.1) #13
  br label %do.end39

do.end39:                                         ; preds = %if.then36, %land.lhs.true34.do.end39_crit_edge, %land.lhs.true31.do.end39_crit_edge, %do.body26.do.end39_crit_edge
  %leaf = getelementptr inbounds %struct.fib6_node, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %leaf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %leaf, align 4
  br label %cleanup

if.end41:                                         ; preds = %do.end22
  %right = getelementptr inbounds %struct.fib6_node, ptr %fn.addr.091, i32 0, i32 2
  %9 = ptrtoint ptr %right to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %right, align 4
  %tobool42.not = icmp eq ptr %10, null
  br i1 %tobool42.not, label %do.end63, label %do.body44

do.body44:                                        ; preds = %if.end41
  %call.i85 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i85)
  %tobool48.not = icmp eq i32 %call.i85, 0
  br i1 %tobool48.not, label %land.lhs.true49, label %do.body44.do.end57_crit_edge

do.body44.do.end57_crit_edge:                     ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end57

land.lhs.true49:                                  ; preds = %do.body44
  %call50 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %land.lhs.true49.do.end57_crit_edge, label %land.lhs.true52

land.lhs.true49.do.end57_crit_edge:               ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end57

land.lhs.true52:                                  ; preds = %land.lhs.true49
  %.b7879 = load i1, ptr @fib6_find_prefix.__warned.55, align 1
  br i1 %.b7879, label %land.lhs.true52.do.end57_crit_edge, label %if.then54

land.lhs.true52.do.end57_crit_edge:               ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end57

if.then54:                                        ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @fib6_find_prefix.__warned.55, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1765, ptr noundef nonnull @.str.1) #13
  br label %do.end57

do.end57:                                         ; preds = %if.then54, %land.lhs.true52.do.end57_crit_edge, %land.lhs.true49.do.end57_crit_edge, %do.body44.do.end57_crit_edge
  %leaf59 = getelementptr inbounds %struct.fib6_node, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %leaf59 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %leaf59, align 4
  br label %cleanup

do.end63:                                         ; preds = %if.end41
  %subtree = getelementptr inbounds %struct.fib6_node, ptr %fn.addr.091, i32 0, i32 3
  %13 = ptrtoint ptr %subtree to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %subtree, align 4
  %tobool1.not = icmp eq ptr %14, null
  br i1 %tobool1.not, label %do.end63.cleanup_crit_edge, label %do.end63.do.body_crit_edge

do.end63.do.body_crit_edge:                       ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

do.end63.cleanup_crit_edge:                       ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %do.end63.cleanup_crit_edge, %do.end57, %do.end39, %if.then, %while.cond.preheader.cleanup_crit_edge
  %retval.0 = phi ptr [ %4, %if.then ], [ %8, %do.end39 ], [ %12, %do.end57 ], [ null, %while.cond.preheader.cleanup_crit_edge ], [ null, %do.end63.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @fib6_repair_tree(ptr noundef %net, ptr noundef %table, ptr noundef %fn) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %fn_flags = getelementptr inbounds %struct.fib6_node, ptr %fn, i32 0, i32 6
  %0 = ptrtoint ptr %fn_flags to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %fn_flags, align 2
  %2 = and i16 %1, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %for.cond.preheader, label %do.body

for.cond.preheader:                               ; preds = %entry
  %dep_map = getelementptr inbounds %struct.fib6_table, ptr %table, i32 0, i32 2, i32 0, i32 0, i32 4
  %fib6_walker_lock = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 13
  %fib6_walkers = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 12
  %rt6_stats.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 8
  br label %for.cond

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %fib6_null_entry = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 6
  %3 = ptrtoint ptr %fib6_null_entry to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fib6_null_entry, align 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !282
  %leaf23 = getelementptr inbounds %struct.fib6_node, ptr %fn, i32 0, i32 4
  %5 = ptrtoint ptr %leaf23 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %4, ptr %leaf23, align 4
  br label %cleanup687

for.cond:                                         ; preds = %for.cond.backedge, %for.cond.preheader
  %fn.addr.0 = phi ptr [ %fn, %for.cond.preheader ], [ %11, %for.cond.backedge ]
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool36.not = icmp eq i32 %call.i, 0
  br i1 %tobool36.not, label %land.lhs.true37, label %for.cond.do.end45_crit_edge

for.cond.do.end45_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end45

land.lhs.true37:                                  ; preds = %for.cond
  %call38 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %land.lhs.true37.do.end45_crit_edge, label %land.lhs.true40

land.lhs.true37.do.end45_crit_edge:               ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end45

land.lhs.true40:                                  ; preds = %land.lhs.true37
  %.b785 = load i1, ptr @fib6_repair_tree.__warned, align 1
  br i1 %.b785, label %land.lhs.true40.do.end45_crit_edge, label %if.then42

land.lhs.true40.do.end45_crit_edge:               ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end45

if.then42:                                        ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @fib6_repair_tree.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1796, ptr noundef nonnull @.str.1) #13
  br label %do.end45

do.end45:                                         ; preds = %if.then42, %land.lhs.true40.do.end45_crit_edge, %land.lhs.true37.do.end45_crit_edge, %for.cond.do.end45_crit_edge
  %right = getelementptr inbounds %struct.fib6_node, ptr %fn.addr.0, i32 0, i32 2
  %6 = ptrtoint ptr %right to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %right, align 4
  %call.i787 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i787)
  %tobool50.not = icmp eq i32 %call.i787, 0
  br i1 %tobool50.not, label %land.lhs.true51, label %do.end45.do.end59_crit_edge

do.end45.do.end59_crit_edge:                      ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end59

land.lhs.true51:                                  ; preds = %do.end45
  %call52 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %land.lhs.true51.do.end59_crit_edge, label %land.lhs.true54

land.lhs.true51.do.end59_crit_edge:               ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end59

land.lhs.true54:                                  ; preds = %land.lhs.true51
  %.b773784 = load i1, ptr @fib6_repair_tree.__warned.57, align 1
  br i1 %.b773784, label %land.lhs.true54.do.end59_crit_edge, label %if.then56

land.lhs.true54.do.end59_crit_edge:               ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end59

if.then56:                                        ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @fib6_repair_tree.__warned.57, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1798, ptr noundef nonnull @.str.1) #13
  br label %do.end59

do.end59:                                         ; preds = %if.then56, %land.lhs.true54.do.end59_crit_edge, %land.lhs.true51.do.end59_crit_edge, %do.end45.do.end59_crit_edge
  %left = getelementptr inbounds %struct.fib6_node, ptr %fn.addr.0, i32 0, i32 1
  %8 = ptrtoint ptr %left to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %left, align 4
  %call.i788 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i788)
  %tobool65.not = icmp eq i32 %call.i788, 0
  br i1 %tobool65.not, label %land.lhs.true66, label %do.end59.do.end74_crit_edge

do.end59.do.end74_crit_edge:                      ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end74

land.lhs.true66:                                  ; preds = %do.end59
  %call67 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %land.lhs.true66.do.end74_crit_edge, label %land.lhs.true69

land.lhs.true66.do.end74_crit_edge:               ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end74

land.lhs.true69:                                  ; preds = %land.lhs.true66
  %.b774783 = load i1, ptr @fib6_repair_tree.__warned.58, align 1
  br i1 %.b774783, label %land.lhs.true69.do.end74_crit_edge, label %if.then71

land.lhs.true69.do.end74_crit_edge:               ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end74

if.then71:                                        ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @fib6_repair_tree.__warned.58, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1800, ptr noundef nonnull @.str.1) #13
  br label %do.end74

do.end74:                                         ; preds = %if.then71, %land.lhs.true69.do.end74_crit_edge, %land.lhs.true66.do.end74_crit_edge, %do.end59.do.end74_crit_edge
  %10 = ptrtoint ptr %fn.addr.0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fn.addr.0, align 4
  %call.i789 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i789)
  %tobool80.not = icmp eq i32 %call.i789, 0
  br i1 %tobool80.not, label %land.lhs.true81, label %do.end74.do.end89_crit_edge

do.end74.do.end89_crit_edge:                      ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end89

land.lhs.true81:                                  ; preds = %do.end74
  %call82 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %land.lhs.true81.do.end89_crit_edge, label %land.lhs.true84

land.lhs.true81.do.end89_crit_edge:               ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end89

land.lhs.true84:                                  ; preds = %land.lhs.true81
  %.b775782 = load i1, ptr @fib6_repair_tree.__warned.59, align 1
  br i1 %.b775782, label %land.lhs.true84.do.end89_crit_edge, label %if.then86

land.lhs.true84.do.end89_crit_edge:               ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end89

if.then86:                                        ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @fib6_repair_tree.__warned.59, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1802, ptr noundef nonnull @.str.1) #13
  br label %do.end89

do.end89:                                         ; preds = %if.then86, %land.lhs.true84.do.end89_crit_edge, %land.lhs.true81.do.end89_crit_edge, %do.end74.do.end89_crit_edge
  %right91 = getelementptr inbounds %struct.fib6_node, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %right91 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %right91, align 4
  %call.i790 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i790)
  %tobool96.not = icmp eq i32 %call.i790, 0
  br i1 %tobool96.not, label %land.lhs.true97, label %do.end89.do.end105_crit_edge

do.end89.do.end105_crit_edge:                     ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end105

land.lhs.true97:                                  ; preds = %do.end89
  %call98 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %land.lhs.true97.do.end105_crit_edge, label %land.lhs.true100

land.lhs.true97.do.end105_crit_edge:              ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end105

land.lhs.true100:                                 ; preds = %land.lhs.true97
  %.b776781 = load i1, ptr @fib6_repair_tree.__warned.60, align 1
  br i1 %.b776781, label %land.lhs.true100.do.end105_crit_edge, label %if.then102

land.lhs.true100.do.end105_crit_edge:             ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end105

if.then102:                                       ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @fib6_repair_tree.__warned.60, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1804, ptr noundef nonnull @.str.1) #13
  br label %do.end105

do.end105:                                        ; preds = %if.then102, %land.lhs.true100.do.end105_crit_edge, %land.lhs.true97.do.end105_crit_edge, %do.end89.do.end105_crit_edge
  %left107 = getelementptr inbounds %struct.fib6_node, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %left107 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %left107, align 4
  %call.i791 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i791)
  %tobool112.not = icmp eq i32 %call.i791, 0
  br i1 %tobool112.not, label %land.lhs.true113, label %do.end105.do.end121_crit_edge

do.end105.do.end121_crit_edge:                    ; preds = %do.end105
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end121

land.lhs.true113:                                 ; preds = %do.end105
  %call114 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %land.lhs.true113.do.end121_crit_edge, label %land.lhs.true116

land.lhs.true113.do.end121_crit_edge:             ; preds = %land.lhs.true113
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end121

land.lhs.true116:                                 ; preds = %land.lhs.true113
  %.b777780 = load i1, ptr @fib6_repair_tree.__warned.61, align 1
  br i1 %.b777780, label %land.lhs.true116.do.end121_crit_edge, label %if.then118

land.lhs.true116.do.end121_crit_edge:             ; preds = %land.lhs.true116
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end121

if.then118:                                       ; preds = %land.lhs.true116
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @fib6_repair_tree.__warned.61, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1806, ptr noundef nonnull @.str.1) #13
  br label %do.end121

do.end121:                                        ; preds = %if.then118, %land.lhs.true116.do.end121_crit_edge, %land.lhs.true113.do.end121_crit_edge, %do.end105.do.end121_crit_edge
  %leaf123 = getelementptr inbounds %struct.fib6_node, ptr %fn.addr.0, i32 0, i32 4
  %16 = ptrtoint ptr %leaf123 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %leaf123, align 4
  %call.i792 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i792)
  %tobool128.not = icmp eq i32 %call.i792, 0
  br i1 %tobool128.not, label %land.lhs.true129, label %do.end121.do.end137_crit_edge

do.end121.do.end137_crit_edge:                    ; preds = %do.end121
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end137

land.lhs.true129:                                 ; preds = %do.end121
  %call130 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130)
  %tobool131.not = icmp eq i32 %call130, 0
  br i1 %tobool131.not, label %land.lhs.true129.do.end137_crit_edge, label %land.lhs.true132

land.lhs.true129.do.end137_crit_edge:             ; preds = %land.lhs.true129
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end137

land.lhs.true132:                                 ; preds = %land.lhs.true129
  %.b778779 = load i1, ptr @fib6_repair_tree.__warned.62, align 1
  br i1 %.b778779, label %land.lhs.true132.do.end137_crit_edge, label %if.then134

land.lhs.true132.do.end137_crit_edge:             ; preds = %land.lhs.true132
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end137

if.then134:                                       ; preds = %land.lhs.true132
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @fib6_repair_tree.__warned.62, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1808, ptr noundef nonnull @.str.1) #13
  br label %do.end137

do.end137:                                        ; preds = %if.then134, %land.lhs.true132.do.end137_crit_edge, %land.lhs.true129.do.end137_crit_edge, %do.end121.do.end137_crit_edge
  %leaf139 = getelementptr inbounds %struct.fib6_node, ptr %11, i32 0, i32 4
  %18 = ptrtoint ptr %leaf139 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %leaf139, align 4
  %fn_flags143 = getelementptr inbounds %struct.fib6_node, ptr %fn.addr.0, i32 0, i32 6
  %20 = ptrtoint ptr %fn_flags143 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %fn_flags143, align 2
  %22 = and i16 %21, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool146.not = icmp eq i16 %22, 0
  br i1 %tobool146.not, label %do.end137.if.end164_crit_edge, label %do.end158, !prof !253

do.end137.if.end164_crit_edge:                    ; preds = %do.end137
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end164

do.end158:                                        ; preds = %do.end137
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1814, i32 noundef 9, ptr noundef null) #13
  br label %if.end164

if.end164:                                        ; preds = %do.end158, %do.end137.if.end164_crit_edge
  %23 = ptrtoint ptr %fn_flags143 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %fn_flags143, align 2
  %25 = and i16 %24, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool176.not = icmp eq i16 %25, 0
  br i1 %tobool176.not, label %if.end164.if.end198_crit_edge, label %do.end192, !prof !253

if.end164.if.end198_crit_edge:                    ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end198

do.end192:                                        ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1815, i32 noundef 9, ptr noundef null) #13
  br label %if.end198

if.end198:                                        ; preds = %do.end192, %if.end164.if.end198_crit_edge
  %tobool207.not = icmp eq ptr %17, null
  br i1 %tobool207.not, label %if.end198.if.end229_crit_edge, label %do.end223, !prof !253

if.end198.if.end229_crit_edge:                    ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end229

do.end223:                                        ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1816, i32 noundef 9, ptr noundef null) #13
  br label %if.end229

if.end229:                                        ; preds = %do.end223, %if.end198.if.end229_crit_edge
  %tobool237.not = icmp ne ptr %7, null
  %spec.select786 = zext i1 %tobool237.not to i32
  %tobool240.not = icmp eq ptr %9, null
  %or242 = or i32 %spec.select786, 2
  %child.1 = select i1 %tobool240.not, ptr %7, ptr %9
  %children.1 = select i1 %tobool240.not, i32 %spec.select786, i32 %or242
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %children.1)
  %cmp244 = icmp eq i32 %children.1, 3
  br i1 %cmp244, label %if.end229.if.then258_crit_edge, label %do.end248

if.end229.if.then258_crit_edge:                   ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then258

do.end248:                                        ; preds = %if.end229
  %subtree = getelementptr inbounds %struct.fib6_node, ptr %fn.addr.0, i32 0, i32 3
  %26 = ptrtoint ptr %subtree to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %subtree, align 4
  %tobool250.not = icmp eq ptr %27, null
  br i1 %tobool250.not, label %lor.lhs.false251, label %do.end248.if.then258_crit_edge

do.end248.if.then258_crit_edge:                   ; preds = %do.end248
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then258

lor.lhs.false251:                                 ; preds = %do.end248
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %children.1)
  %tobool252.not = icmp eq i32 %children.1, 0
  br i1 %tobool252.not, label %lor.lhs.false251.do.end343_crit_edge, label %land.lhs.true253

lor.lhs.false251.do.end343_crit_edge:             ; preds = %lor.lhs.false251
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end343

land.lhs.true253:                                 ; preds = %lor.lhs.false251
  %28 = ptrtoint ptr %fn_flags143 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %fn_flags143, align 2
  %30 = and i16 %29, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool257.not = icmp eq i16 %30, 0
  br i1 %tobool257.not, label %land.lhs.true253.do.end343_crit_edge, label %land.lhs.true253.if.then258_crit_edge

land.lhs.true253.if.then258_crit_edge:            ; preds = %land.lhs.true253
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then258

land.lhs.true253.do.end343_crit_edge:             ; preds = %land.lhs.true253
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end343

if.then258:                                       ; preds = %land.lhs.true253.if.then258_crit_edge, %do.end248.if.then258_crit_edge, %if.end229.if.then258_crit_edge
  %leaf123.le = getelementptr inbounds %struct.fib6_node, ptr %fn.addr.0, i32 0, i32 4
  %call259 = tail call fastcc ptr @fib6_find_prefix(ptr noundef %net, ptr noundef %table, ptr noundef %fn.addr.0)
  %tobool260.not = icmp eq ptr %call259, null
  br i1 %tobool260.not, label %do.end281, label %if.then258.if.end297_crit_edge

if.then258.if.end297_crit_edge:                   ; preds = %if.then258
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end297

do.end281:                                        ; preds = %if.then258
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1838, i32 noundef 9, ptr noundef null) #13
  %fib6_null_entry296 = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 6
  %31 = ptrtoint ptr %fib6_null_entry296 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fib6_null_entry296, align 16
  br label %if.end297

if.end297:                                        ; preds = %do.end281, %if.then258.if.end297_crit_edge
  %new_fn_leaf.0 = phi ptr [ %call259, %if.then258.if.end297_crit_edge ], [ %32, %do.end281 ]
  %fib6_ref.i = getelementptr inbounds %struct.fib6_info, ptr %new_fn_leaf.0, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fib6_ref.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %fib6_ref.i, i32 1, i32 3, i32 1) #13
  %33 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fib6_ref.i, ptr %fib6_ref.i, i32 1, ptr elementtype(i32) %fib6_ref.i) #13, !srcloc !262
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end297.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !263

if.end297.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.end297
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end297
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %34 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %34)
  %.not.i.i.i.i = icmp sgt i32 %34, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.fib6_info_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !253

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.fib6_info_hold.exit_crit_edge:    ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %fib6_info_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end297.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end297.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %fib6_ref.i, i32 noundef %.sink.i.i.i.i) #13
  br label %fib6_info_hold.exit

fib6_info_hold.exit:                              ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.fib6_info_hold.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !283
  %35 = ptrtoint ptr %leaf123.le to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %new_fn_leaf.0, ptr %leaf123.le, align 4
  br label %cleanup687

do.end343:                                        ; preds = %land.lhs.true253.do.end343_crit_edge, %lor.lhs.false251.do.end343_crit_edge
  %subtree345 = getelementptr inbounds %struct.fib6_node, ptr %11, i32 0, i32 3
  %36 = ptrtoint ptr %subtree345 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %subtree345, align 4
  %cmp346 = icmp eq ptr %37, %fn.addr.0
  %38 = ptrtoint ptr %fn_flags143 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %fn_flags143, align 2
  %40 = and i16 %39, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %tobool353.not = icmp eq i16 %40, 0
  br i1 %cmp346, label %if.then348, label %if.else398

if.then348:                                       ; preds = %do.end343
  br i1 %tobool353.not, label %do.end371, label %if.then348.if.end377_crit_edge, !prof !263

if.then348.if.end377_crit_edge:                   ; preds = %if.then348
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end377

do.end371:                                        ; preds = %if.then348
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1849, i32 noundef 9, ptr noundef null) #13
  br label %if.end377

if.end377:                                        ; preds = %do.end371, %if.then348.if.end377_crit_edge
  %41 = ptrtoint ptr %subtree345 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr null, ptr %subtree345, align 4
  br label %if.end598

if.else398:                                       ; preds = %do.end343
  br i1 %tobool353.not, label %if.else398.if.end425_crit_edge, label %do.end419, !prof !253

if.else398.if.end425_crit_edge:                   ; preds = %if.else398
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end425

do.end419:                                        ; preds = %if.else398
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1853, i32 noundef 9, ptr noundef null) #13
  br label %if.end425

if.end425:                                        ; preds = %do.end419, %if.else398.if.end425_crit_edge
  %cmp433 = icmp eq ptr %13, %fn.addr.0
  br i1 %cmp433, label %do.body436, label %if.else478

do.body436:                                       ; preds = %if.end425
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !284
  %42 = ptrtoint ptr %right91 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %child.1, ptr %right91, align 4
  br label %if.end552

if.else478:                                       ; preds = %if.end425
  %cmp479 = icmp eq ptr %15, %fn.addr.0
  br i1 %cmp479, label %do.body482, label %do.end537

do.body482:                                       ; preds = %if.else478
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !285
  %43 = ptrtoint ptr %left107 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %child.1, ptr %left107, align 4
  br label %if.end552

do.end537:                                        ; preds = %if.else478
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1861, i32 noundef 9, ptr noundef null) #13
  br label %if.end552

if.end552:                                        ; preds = %do.end537, %do.body482, %do.body436
  %tobool553.not = icmp eq ptr %child.1, null
  br i1 %tobool553.not, label %if.end552.if.end598_crit_edge, label %do.body555

if.end552.if.end598_crit_edge:                    ; preds = %if.end552
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end598

do.body555:                                       ; preds = %if.end552
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !286
  %44 = ptrtoint ptr %child.1 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %11, ptr %child.1, align 4
  br label %if.end598

if.end598:                                        ; preds = %do.body555, %if.end552.if.end598_crit_edge, %if.end377
  %nstate.0 = phi i32 [ 1, %if.end377 ], [ 2, %do.body555 ], [ 2, %if.end552.if.end598_crit_edge ]
  tail call void @_raw_read_lock(ptr noundef %fib6_walker_lock) #13
  %45 = ptrtoint ptr %fib6_walkers to i32
  call void @__asan_load4_noabort(i32 %45)
  %w.0803 = load ptr, ptr %fib6_walkers, align 4
  %cmp605.not804 = icmp eq ptr %w.0803, %fib6_walkers
  br i1 %cmp605.not804, label %if.end598.for.end_crit_edge, label %for.body.lr.ph

if.end598.for.end_crit_edge:                      ; preds = %if.end598
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end598
  %tobool609.not = icmp eq ptr %child.1, null
  %and625 = and i32 %children.1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and625)
  %tobool626.not = icmp eq i32 %and625, 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %w.0805 = phi ptr [ %w.0803, %for.body.lr.ph ], [ %w.0, %for.inc.for.body_crit_edge ]
  %node = getelementptr inbounds %struct.fib6_walker, ptr %w.0805, i32 0, i32 2
  %46 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %node, align 4
  %cmp611 = icmp eq ptr %47, %fn.addr.0
  br i1 %tobool609.not, label %if.then610, label %if.else619

if.then610:                                       ; preds = %for.body
  br i1 %cmp611, label %do.end616, label %if.then610.for.inc_crit_edge

if.then610.for.inc_crit_edge:                     ; preds = %if.then610
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

do.end616:                                        ; preds = %if.then610
  call void @__sanitizer_cov_trace_pc() #15
  %48 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %11, ptr %node, align 4
  %state = getelementptr inbounds %struct.fib6_walker, ptr %w.0805, i32 0, i32 4
  %49 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %nstate.0, ptr %state, align 4
  br label %for.inc

if.else619:                                       ; preds = %for.body
  br i1 %cmp611, label %if.then623, label %if.else619.for.inc_crit_edge

if.else619.for.inc_crit_edge:                     ; preds = %if.else619
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then623:                                       ; preds = %if.else619
  %50 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %child.1, ptr %node, align 4
  %state639 = getelementptr inbounds %struct.fib6_walker, ptr %w.0805, i32 0, i32 4
  %51 = ptrtoint ptr %state639 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %state639, align 4
  br i1 %tobool626.not, label %do.end638, label %do.end630

do.end630:                                        ; preds = %if.then623
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %52)
  %cmp632 = icmp ugt i32 %52, 1
  %cond = select i1 %cmp632, i32 4, i32 0
  %53 = ptrtoint ptr %state639 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %cond, ptr %state639, align 4
  br label %for.inc

do.end638:                                        ; preds = %if.then623
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %52)
  %cmp640 = icmp ugt i32 %52, 2
  %cond642 = select i1 %cmp640, i32 4, i32 0
  %54 = ptrtoint ptr %state639 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %cond642, ptr %state639, align 4
  br label %for.inc

for.inc:                                          ; preds = %do.end638, %do.end630, %if.else619.for.inc_crit_edge, %do.end616, %if.then610.for.inc_crit_edge
  %55 = ptrtoint ptr %w.0805 to i32
  call void @__asan_load4_noabort(i32 %55)
  %w.0 = load ptr, ptr %w.0805, align 4
  %cmp605.not = icmp eq ptr %w.0, %fib6_walkers
  br i1 %cmp605.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end598.for.end_crit_edge
  tail call void @_raw_read_unlock(ptr noundef %fib6_walker_lock) #13
  %rcu.i = getelementptr inbounds %struct.fib6_node, ptr %fn.addr.0, i32 0, i32 9
  tail call void @call_rcu(ptr noundef %rcu.i, ptr noundef nonnull @node_free_rcu) #13
  %56 = ptrtoint ptr %rt6_stats.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %rt6_stats.i, align 8
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %57, align 4
  %dec.i = add i32 %59, -1
  store i32 %dec.i, ptr %57, align 4
  %fn_flags654 = getelementptr inbounds %struct.fib6_node, ptr %11, i32 0, i32 6
  %60 = ptrtoint ptr %fn_flags654 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %fn_flags654, align 2
  %62 = and i16 %61, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %62)
  %tobool657.not = icmp eq i16 %62, 0
  br i1 %tobool657.not, label %do.end661, label %for.end.cleanup687_crit_edge

for.end.cleanup687_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup687

do.end661:                                        ; preds = %for.end
  %63 = ptrtoint ptr %subtree345 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %subtree345, align 4
  %tobool664.not = icmp eq ptr %64, null
  br i1 %tobool664.not, label %do.body672, label %do.end661.cleanup687_crit_edge

do.end661.cleanup687_crit_edge:                   ; preds = %do.end661
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup687

do.body672:                                       ; preds = %do.end661
  %65 = ptrtoint ptr %leaf139 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr null, ptr %leaf139, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %do.body672.for.cond.backedge_crit_edge, label %land.lhs.true.i

do.body672.for.cond.backedge_crit_edge:           ; preds = %do.body672
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.backedge

land.lhs.true.i:                                  ; preds = %do.body672
  %fib6_ref.i793 = getelementptr inbounds %struct.fib6_info, ptr %19, i32 0, i32 5
  %call.i.i.i.i.i.i794 = tail call zeroext i1 @__kasan_check_write(ptr noundef %fib6_ref.i793, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !254
  tail call void @llvm.prefetch.p0(ptr %fib6_ref.i793, i32 1, i32 3, i32 1) #13
  %66 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fib6_ref.i793, ptr %fib6_ref.i793, i32 1, ptr elementtype(i32) %fib6_ref.i793) #13, !srcloc !255
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %66, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i795 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i795, label %if.end5.i.i.i.i.for.cond.backedge_crit_edge, label %if.then10.i.i.i.i, !prof !253

if.end5.i.i.i.i.for.cond.backedge_crit_edge:      ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.backedge

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %fib6_ref.i793, i32 noundef 3) #13
  br label %for.cond.backedge

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !256
  %rcu.i796 = getelementptr inbounds %struct.fib6_info, ptr %19, i32 0, i32 19
  tail call void @call_rcu(ptr noundef %rcu.i796, ptr noundef nonnull @fib6_info_destroy_rcu) #13
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.for.cond.backedge_crit_edge, %do.body672.for.cond.backedge_crit_edge
  br label %for.cond

cleanup687:                                       ; preds = %do.end661.cleanup687_crit_edge, %for.end.cleanup687_crit_edge, %fib6_info_hold.exit, %do.body
  %retval.2 = phi ptr [ %fn, %do.body ], [ %11, %fib6_info_hold.exit ], [ %11, %do.end661.cleanup687_crit_edge ], [ %11, %for.end.cleanup687_crit_edge ]
  ret ptr %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @fib6_node_lookup(ptr noundef %root, ptr noundef %daddr, ptr noundef %saddr) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca [3 x %struct.lookup_args], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args) #13
  %0 = getelementptr inbounds %struct.lookup_args, ptr %args, i32 0, i32 1
  %1 = getelementptr inbounds [3 x %struct.lookup_args], ptr %args, i32 0, i32 1
  %2 = getelementptr inbounds [3 x %struct.lookup_args], ptr %args, i32 0, i32 1, i32 1
  %3 = getelementptr inbounds [3 x %struct.lookup_args], ptr %args, i32 0, i32 2
  %4 = getelementptr inbounds [3 x %struct.lookup_args], ptr %args, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 36, ptr %args, align 4
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %daddr, ptr %0, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 60, ptr %1, align 4
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %saddr, ptr %2, align 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %3, align 4
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %4, align 4
  %tobool.not = icmp eq ptr %daddr, null
  %cond = select i1 %tobool.not, ptr %1, ptr %args
  %call = call fastcc ptr @fib6_node_lookup_1(ptr noundef %root, ptr noundef %cond)
  %tobool7.not = icmp eq ptr %call, null
  br i1 %tobool7.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %fn_flags = getelementptr inbounds %struct.fib6_node, ptr %call, i32 0, i32 6
  %11 = ptrtoint ptr %fn_flags to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %fn_flags, align 2
  %13 = and i16 %12, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool8.not = icmp eq i16 %13, 0
  br i1 %tobool8.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %fn.0 = phi ptr [ %root, %if.then ], [ %call, %lor.lhs.false.if.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args) #13
  ret ptr %fn.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @fib6_node_lookup_1(ptr noundef %root, ptr nocapture noundef readonly %args) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %args, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup119_crit_edge, label %for.cond.preheader, !prof !263

entry.cleanup119_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup119

for.cond.preheader:                               ; preds = %entry
  %addr = getelementptr inbounds %struct.lookup_args, ptr %args, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %cond.end.for.cond_crit_edge, %for.cond.preheader
  %fn.0 = phi ptr [ %cond, %cond.end.for.cond_crit_edge ], [ %root, %for.cond.preheader ]
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %addr, align 4
  %fn_bit = getelementptr inbounds %struct.fib6_node, ptr %fn.0, i32 0, i32 5
  %4 = ptrtoint ptr %fn_bit to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %fn_bit, align 4
  %conv = zext i16 %5 to i32
  %neg.i = and i32 %conv, 31
  %and.i = xor i32 %neg.i, 31
  %shl.i = shl nuw i32 1, %and.i
  %shr.i173 = lshr i32 %conv, 5
  %arrayidx.i = getelementptr i32, ptr %3, i32 %shr.i173
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %and1.i = and i32 %shl.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %for.cond
  %right = getelementptr inbounds %struct.fib6_node, ptr %fn.0, i32 0, i32 2
  %8 = ptrtoint ptr %right to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %right, align 4
  %call4 = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true, label %cond.true.cond.end_crit_edge

cond.true.cond.end_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

land.lhs.true:                                    ; preds = %cond.true
  %call6 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.cond.end_crit_edge, label %land.lhs.true8

land.lhs.true.cond.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

land.lhs.true8:                                   ; preds = %land.lhs.true
  %.b152 = load i1, ptr @fib6_node_lookup_1.__warned, align 1
  br i1 %.b152, label %land.lhs.true8.cond.end_crit_edge, label %land.lhs.true8.cond.end.sink.split_crit_edge

land.lhs.true8.cond.end.sink.split_crit_edge:     ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.sink.split

land.lhs.true8.cond.end_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false:                                       ; preds = %for.cond
  %left = getelementptr inbounds %struct.fib6_node, ptr %fn.0, i32 0, i32 1
  %10 = ptrtoint ptr %left to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %left, align 4
  %call20 = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %land.lhs.true22, label %cond.false.cond.end_crit_edge

cond.false.cond.end_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

land.lhs.true22:                                  ; preds = %cond.false
  %call23 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %land.lhs.true22.cond.end_crit_edge, label %land.lhs.true25

land.lhs.true22.cond.end_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

land.lhs.true25:                                  ; preds = %land.lhs.true22
  %.b146151 = load i1, ptr @fib6_node_lookup_1.__warned.47, align 1
  br i1 %.b146151, label %land.lhs.true25.cond.end_crit_edge, label %land.lhs.true25.cond.end.sink.split_crit_edge

land.lhs.true25.cond.end.sink.split_crit_edge:    ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.sink.split

land.lhs.true25.cond.end_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.end.sink.split:                              ; preds = %land.lhs.true25.cond.end.sink.split_crit_edge, %land.lhs.true8.cond.end.sink.split_crit_edge
  %fib6_node_lookup_1.__warned.47.sink = phi ptr [ @fib6_node_lookup_1.__warned, %land.lhs.true8.cond.end.sink.split_crit_edge ], [ @fib6_node_lookup_1.__warned.47, %land.lhs.true25.cond.end.sink.split_crit_edge ]
  %.sink = phi i32 [ 1569, %land.lhs.true8.cond.end.sink.split_crit_edge ], [ 1570, %land.lhs.true25.cond.end.sink.split_crit_edge ]
  %cond.ph = phi ptr [ %9, %land.lhs.true8.cond.end.sink.split_crit_edge ], [ %11, %land.lhs.true25.cond.end.sink.split_crit_edge ]
  %12 = ptrtoint ptr %fib6_node_lookup_1.__warned.47.sink to i32
  call void @__asan_store1_noabort(i32 %12)
  store i1 true, ptr %fib6_node_lookup_1.__warned.47.sink, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef %.sink, ptr noundef nonnull @.str.46) #13
  br label %cond.end

cond.end:                                         ; preds = %cond.end.sink.split, %land.lhs.true25.cond.end_crit_edge, %land.lhs.true22.cond.end_crit_edge, %cond.false.cond.end_crit_edge, %land.lhs.true8.cond.end_crit_edge, %land.lhs.true.cond.end_crit_edge, %cond.true.cond.end_crit_edge
  %cond = phi ptr [ %9, %land.lhs.true8.cond.end_crit_edge ], [ %9, %land.lhs.true.cond.end_crit_edge ], [ %9, %cond.true.cond.end_crit_edge ], [ %11, %land.lhs.true25.cond.end_crit_edge ], [ %11, %land.lhs.true22.cond.end_crit_edge ], [ %11, %cond.false.cond.end_crit_edge ], [ %cond.ph, %cond.end.sink.split ]
  %tobool32.not = icmp eq ptr %cond, null
  br i1 %tobool32.not, label %while.cond.preheader, label %cond.end.for.cond_crit_edge

cond.end.for.cond_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

while.cond.preheader:                             ; preds = %cond.end
  %tobool35.not174 = icmp eq ptr %fn.0, null
  br i1 %tobool35.not174, label %while.cond.preheader.cleanup119_crit_edge, label %while.body.lr.ph

while.cond.preheader.cleanup119_crit_edge:        ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup119

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %add.ptr73 = getelementptr %struct.lookup_args, ptr %args, i32 1
  br label %while.body

while.body:                                       ; preds = %cleanup116.while.body_crit_edge, %while.body.lr.ph
  %fn.2175 = phi ptr [ %fn.0, %while.body.lr.ph ], [ %37, %cleanup116.while.body_crit_edge ]
  %subtree40 = getelementptr inbounds %struct.fib6_node, ptr %fn.2175, i32 0, i32 3
  %13 = ptrtoint ptr %subtree40 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %subtree40, align 4
  %tobool41.not = icmp eq ptr %14, null
  br i1 %tobool41.not, label %lor.lhs.false, label %while.body.if.then44_crit_edge

while.body.if.then44_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then44

lor.lhs.false:                                    ; preds = %while.body
  %fn_flags = getelementptr inbounds %struct.fib6_node, ptr %fn.2175, i32 0, i32 6
  %15 = ptrtoint ptr %fn_flags to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %fn_flags, align 2
  %17 = and i16 %16, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool43.not = icmp eq i16 %17, 0
  br i1 %tobool43.not, label %lor.lhs.false.backtrack_crit_edge, label %lor.lhs.false.if.then44_crit_edge

lor.lhs.false.if.then44_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then44

lor.lhs.false.backtrack_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %backtrack

if.then44:                                        ; preds = %lor.lhs.false.if.then44_crit_edge, %while.body.if.then44_crit_edge
  %leaf49 = getelementptr inbounds %struct.fib6_node, ptr %fn.2175, i32 0, i32 4
  %18 = ptrtoint ptr %leaf49 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %leaf49, align 4
  %call51 = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %land.lhs.true53, label %if.then44.do.end61_crit_edge

if.then44.do.end61_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end61

land.lhs.true53:                                  ; preds = %if.then44
  %call54 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %land.lhs.true53.do.end61_crit_edge, label %land.lhs.true56

land.lhs.true53.do.end61_crit_edge:               ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end61

land.lhs.true56:                                  ; preds = %land.lhs.true53
  %.b147150 = load i1, ptr @fib6_node_lookup_1.__warned.49, align 1
  br i1 %.b147150, label %land.lhs.true56.do.end61_crit_edge, label %if.then58

land.lhs.true56.do.end61_crit_edge:               ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end61

if.then58:                                        ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @fib6_node_lookup_1.__warned.49, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1583, ptr noundef nonnull @.str.46) #13
  br label %do.end61

do.end61:                                         ; preds = %if.then58, %land.lhs.true56.do.end61_crit_edge, %land.lhs.true53.do.end61_crit_edge, %if.then44.do.end61_crit_edge
  %tobool63.not = icmp eq ptr %19, null
  br i1 %tobool63.not, label %do.end61.backtrack_crit_edge, label %if.end65

do.end61.backtrack_crit_edge:                     ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #15
  br label %backtrack

if.end65:                                         ; preds = %do.end61
  %20 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %args, align 4
  %add.ptr = getelementptr i8, ptr %19, i32 %21
  %22 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %addr, align 4
  %plen = getelementptr inbounds %struct.rt6key, ptr %add.ptr, i32 0, i32 1
  %24 = ptrtoint ptr %plen to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %plen, align 4
  %shr.i154 = lshr i32 %25, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %25)
  %tobool.not.i = icmp ult i32 %25, 32
  br i1 %tobool.not.i, label %if.end65.if.end.i_crit_edge, label %land.lhs.true.i

if.end65.if.end.i_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end65
  %shl.i155 = shl nuw nsw i32 %shr.i154, 2
  %bcmp.i = tail call i32 @bcmp(ptr %add.ptr, ptr %23, i32 %shl.i155) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool3.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.backtrack_crit_edge

land.lhs.true.i.backtrack_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %backtrack

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.end65.if.end.i_crit_edge
  %and.i156 = and i32 %25, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i156)
  %tobool4.not.i = icmp eq i32 %and.i156, 0
  br i1 %tobool4.not.i, label %if.end.i.if.then70_crit_edge, label %land.lhs.true5.i

if.end.i.if.then70_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then70

land.lhs.true5.i:                                 ; preds = %if.end.i
  %arrayidx.i157 = getelementptr i32, ptr %add.ptr, i32 %shr.i154
  %26 = ptrtoint ptr %arrayidx.i157 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i157, align 4
  %arrayidx6.i = getelementptr i32, ptr %23, i32 %shr.i154
  %28 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx6.i, align 4
  %xor.i = xor i32 %29, %27
  %sub.i = sub nuw nsw i32 32, %and.i156
  %shl7.i = shl nsw i32 -1, %sub.i
  %and8.i = and i32 %xor.i, %shl7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %land.lhs.true5.i.if.then70_crit_edge, label %land.lhs.true5.i.backtrack_crit_edge

land.lhs.true5.i.backtrack_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %backtrack

land.lhs.true5.i.if.then70_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then70

if.then70:                                        ; preds = %land.lhs.true5.i.if.then70_crit_edge, %if.end.i.if.then70_crit_edge
  br i1 %tobool41.not, label %if.then70.if.end80_crit_edge, label %if.then72

if.then70.if.end80_crit_edge:                     ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end80

if.then72:                                        ; preds = %if.then70
  %call74 = tail call fastcc ptr @fib6_node_lookup_1(ptr noundef nonnull %14, ptr noundef %add.ptr73)
  %tobool75.not = icmp eq ptr %call74, null
  br i1 %tobool75.not, label %if.then72.backtrack_crit_edge, label %if.then72.if.end80_crit_edge

if.then72.if.end80_crit_edge:                     ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end80

if.then72.backtrack_crit_edge:                    ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #15
  br label %backtrack

if.end80:                                         ; preds = %if.then72.if.end80_crit_edge, %if.then70.if.end80_crit_edge
  %fn.4 = phi ptr [ %call74, %if.then72.if.end80_crit_edge ], [ %fn.2175, %if.then70.if.end80_crit_edge ]
  %fn_flags81 = getelementptr inbounds %struct.fib6_node, ptr %fn.4, i32 0, i32 6
  %30 = ptrtoint ptr %fn_flags81 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %fn_flags81, align 2
  %32 = and i16 %31, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool84.not = icmp eq i16 %32, 0
  br i1 %tobool84.not, label %if.end80.backtrack_crit_edge, label %if.end80.cleanup119_crit_edge

if.end80.cleanup119_crit_edge:                    ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup119

if.end80.backtrack_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #15
  br label %backtrack

backtrack:                                        ; preds = %if.end80.backtrack_crit_edge, %if.then72.backtrack_crit_edge, %land.lhs.true5.i.backtrack_crit_edge, %land.lhs.true.i.backtrack_crit_edge, %do.end61.backtrack_crit_edge, %lor.lhs.false.backtrack_crit_edge
  %fn.7 = phi ptr [ %fn.2175, %lor.lhs.false.backtrack_crit_edge ], [ %fn.2175, %do.end61.backtrack_crit_edge ], [ %fn.4, %if.end80.backtrack_crit_edge ], [ %fn.2175, %land.lhs.true.i.backtrack_crit_edge ], [ %fn.2175, %land.lhs.true5.i.backtrack_crit_edge ], [ %fn.2175, %if.then72.backtrack_crit_edge ]
  %fn_flags93 = getelementptr inbounds %struct.fib6_node, ptr %fn.7, i32 0, i32 6
  %33 = ptrtoint ptr %fn_flags93 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %fn_flags93, align 2
  %35 = and i16 %34, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool96.not = icmp eq i16 %35, 0
  br i1 %tobool96.not, label %if.end98, label %backtrack.cleanup119_crit_edge

backtrack.cleanup119_crit_edge:                   ; preds = %backtrack
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup119

if.end98:                                         ; preds = %backtrack
  %36 = ptrtoint ptr %fn.7 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %fn.7, align 4
  %call104 = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %land.lhs.true106, label %if.end98.cleanup116_crit_edge

if.end98.cleanup116_crit_edge:                    ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup116

land.lhs.true106:                                 ; preds = %if.end98
  %call107 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %land.lhs.true106.cleanup116_crit_edge, label %land.lhs.true109

land.lhs.true106.cleanup116_crit_edge:            ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup116

land.lhs.true109:                                 ; preds = %land.lhs.true106
  %.b148149 = load i1, ptr @fib6_node_lookup_1.__warned.50, align 1
  br i1 %.b148149, label %land.lhs.true109.cleanup116_crit_edge, label %if.then111

land.lhs.true109.cleanup116_crit_edge:            ; preds = %land.lhs.true109
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup116

if.then111:                                       ; preds = %land.lhs.true109
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @fib6_node_lookup_1.__warned.50, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1610, ptr noundef nonnull @.str.46) #13
  br label %cleanup116

cleanup116:                                       ; preds = %if.then111, %land.lhs.true109.cleanup116_crit_edge, %land.lhs.true106.cleanup116_crit_edge, %if.end98.cleanup116_crit_edge
  %tobool35.not = icmp eq ptr %37, null
  br i1 %tobool35.not, label %cleanup116.cleanup119_crit_edge, label %cleanup116.while.body_crit_edge

cleanup116.while.body_crit_edge:                  ; preds = %cleanup116
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

cleanup116.cleanup119_crit_edge:                  ; preds = %cleanup116
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup119

cleanup119:                                       ; preds = %cleanup116.cleanup119_crit_edge, %backtrack.cleanup119_crit_edge, %if.end80.cleanup119_crit_edge, %while.cond.preheader.cleanup119_crit_edge, %entry.cleanup119_crit_edge
  %retval.4 = phi ptr [ null, %entry.cleanup119_crit_edge ], [ null, %while.cond.preheader.cleanup119_crit_edge ], [ %fn.4, %if.end80.cleanup119_crit_edge ], [ null, %backtrack.cleanup119_crit_edge ], [ null, %cleanup116.cleanup119_crit_edge ]
  ret ptr %retval.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @fib6_locate(ptr noundef %root, ptr nocapture noundef readonly %daddr, i32 noundef %dst_len, ptr noundef readonly %saddr, i32 noundef %src_len, i1 noundef zeroext %exact_match) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @fib6_locate_1(ptr noundef %root, ptr noundef %daddr, i32 noundef %dst_len, i32 noundef 36, i1 noundef zeroext %exact_match)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %src_len)
  %tobool1.not = icmp eq i32 %src_len, 0
  br i1 %tobool1.not, label %entry.if.end35_crit_edge, label %if.then

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

if.then:                                          ; preds = %entry
  %cmp = icmp eq ptr %saddr, null
  br i1 %cmp, label %do.end, label %if.then.if.end_crit_edge, !prof !263

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1721, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %tobool22.not = icmp eq ptr %call, null
  br i1 %tobool22.not, label %if.end.if.end39_crit_edge, label %if.then23

if.end.if.end39_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39

if.then23:                                        ; preds = %if.end
  %subtree28 = getelementptr inbounds %struct.fib6_node, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %subtree28 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %subtree28, align 4
  %tobool29.not = icmp eq ptr %1, null
  br i1 %tobool29.not, label %if.then23.land.lhs.true_crit_edge, label %if.then30

if.then23.land.lhs.true_crit_edge:                ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true

if.then30:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #15
  %call32 = tail call fastcc ptr @fib6_locate_1(ptr noundef nonnull %1, ptr noundef %saddr, i32 noundef %src_len, i32 noundef 60, i1 noundef zeroext %exact_match)
  br label %if.end35

if.end35:                                         ; preds = %if.then30, %entry.if.end35_crit_edge
  %fn.1 = phi ptr [ %call, %entry.if.end35_crit_edge ], [ %call32, %if.then30 ]
  %tobool36.not = icmp eq ptr %fn.1, null
  br i1 %tobool36.not, label %if.end35.if.end39_crit_edge, label %if.end35.land.lhs.true_crit_edge

if.end35.land.lhs.true_crit_edge:                 ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true

if.end35.if.end39_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39

land.lhs.true:                                    ; preds = %if.end35.land.lhs.true_crit_edge, %if.then23.land.lhs.true_crit_edge
  %fn.154 = phi ptr [ %fn.1, %if.end35.land.lhs.true_crit_edge ], [ %call, %if.then23.land.lhs.true_crit_edge ]
  %fn_flags = getelementptr inbounds %struct.fib6_node, ptr %fn.154, i32 0, i32 6
  %2 = ptrtoint ptr %fn_flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %fn_flags, align 2
  %4 = and i16 %3, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool37.not = icmp eq i16 %4, 0
  br i1 %tobool37.not, label %land.lhs.true.if.end39_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true.if.end39_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39

if.end39:                                         ; preds = %land.lhs.true.if.end39_crit_edge, %if.end35.if.end39_crit_edge, %if.end.if.end39_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.end39 ], [ %fn.154, %land.lhs.true.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @fib6_locate_1(ptr noundef %root, ptr nocapture noundef readonly %addr, i32 noundef %plen, i32 noundef %offset, i1 noundef zeroext %exact_match) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not120 = icmp eq ptr %root, null
  br i1 %tobool.not120, label %entry.out_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry.for.body_crit_edge
  %fn.0124 = phi ptr [ %fn.2, %cleanup.for.body_crit_edge ], [ %root, %entry.for.body_crit_edge ]
  %prev.0121 = phi ptr [ %prev.1, %cleanup.for.body_crit_edge ], [ null, %entry.for.body_crit_edge ]
  %leaf1 = getelementptr inbounds %struct.fib6_node, ptr %fn.0124, i32 0, i32 4
  %0 = ptrtoint ptr %leaf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %leaf1, align 4
  %call = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %land.lhs.true, label %for.body.do.end9_crit_edge

for.body.do.end9_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end9

land.lhs.true:                                    ; preds = %for.body
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end9_crit_edge, label %land.lhs.true6

land.lhs.true.do.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end9

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b102 = load i1, ptr @fib6_locate_1.__warned, align 1
  br i1 %.b102, label %land.lhs.true6.do.end9_crit_edge, label %if.then

land.lhs.true6.do.end9_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end9

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @fib6_locate_1.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1666, ptr noundef nonnull @.str.46) #13
  br label %do.end9

do.end9:                                          ; preds = %if.then, %land.lhs.true6.do.end9_crit_edge, %land.lhs.true.do.end9_crit_edge, %for.body.do.end9_crit_edge
  %tobool11.not = icmp eq ptr %1, null
  %fn_bit = getelementptr inbounds %struct.fib6_node, ptr %fn.0124, i32 0, i32 5
  %2 = ptrtoint ptr %fn_bit to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %fn_bit, align 4
  %conv = zext i16 %3 to i32
  br i1 %tobool11.not, label %if.then12, label %if.end15

if.then12:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %plen)
  %cmp.not = icmp slt i32 %conv, %plen
  br i1 %cmp.not, label %if.then12.next_crit_edge, label %if.then12.out_crit_edge

if.then12.out_crit_edge:                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then12.next_crit_edge:                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
  br label %next

if.end15:                                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %plen)
  %cmp18 = icmp sgt i32 %conv, %plen
  br i1 %cmp18, label %if.end15.out_crit_edge, label %lor.lhs.false

if.end15.out_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

lor.lhs.false:                                    ; preds = %if.end15
  %add.ptr = getelementptr i8, ptr %1, i32 %offset
  %shr.i = lshr i32 %conv, 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %3)
  %tobool.not.i = icmp ult i16 %3, 32
  br i1 %tobool.not.i, label %lor.lhs.false.if.end.i_crit_edge, label %land.lhs.true.i

lor.lhs.false.if.end.i_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false
  %shl.i = shl nuw nsw i32 %shr.i, 2
  %bcmp.i = tail call i32 @bcmp(ptr %add.ptr, ptr %addr, i32 %shl.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool3.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.out_crit_edge

land.lhs.true.i.out_crit_edge:                    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %lor.lhs.false.if.end.i_crit_edge
  %and.i = and i32 %conv, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool4.not.i, label %if.end.i.if.end25_crit_edge, label %land.lhs.true5.i

if.end.i.if.end25_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

land.lhs.true5.i:                                 ; preds = %if.end.i
  %arrayidx.i = getelementptr i32, ptr %add.ptr, i32 %shr.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %arrayidx6.i = getelementptr i32, ptr %addr, i32 %shr.i
  %6 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx6.i, align 4
  %xor.i = xor i32 %7, %5
  %sub.i = sub nuw nsw i32 32, %and.i
  %shl7.i = shl nsw i32 -1, %sub.i
  %and8.i = and i32 %xor.i, %shl7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %land.lhs.true5.i.if.end25_crit_edge, label %land.lhs.true5.i.out_crit_edge

land.lhs.true5.i.out_crit_edge:                   ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

land.lhs.true5.i.if.end25_crit_edge:              ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

if.end25:                                         ; preds = %land.lhs.true5.i.if.end25_crit_edge, %if.end.i.if.end25_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %plen)
  %cmp28 = icmp eq i32 %conv, %plen
  br i1 %cmp28, label %if.end25.cleanup81_crit_edge, label %if.end31

if.end25.cleanup81_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup81

if.end31:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  %fn_flags = getelementptr inbounds %struct.fib6_node, ptr %fn.0124, i32 0, i32 6
  %8 = ptrtoint ptr %fn_flags to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %fn_flags, align 2
  %10 = and i16 %9, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool33.not = icmp eq i16 %10, 0
  %spec.select = select i1 %tobool33.not, ptr %prev.0121, ptr %fn.0124
  br label %next

next:                                             ; preds = %if.end31, %if.then12.next_crit_edge
  %prev.1 = phi ptr [ %prev.0121, %if.then12.next_crit_edge ], [ %spec.select, %if.end31 ]
  %fn_bit36 = getelementptr inbounds %struct.fib6_node, ptr %fn.0124, i32 0, i32 5
  %11 = ptrtoint ptr %fn_bit36 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %fn_bit36, align 4
  %conv37 = zext i16 %12 to i32
  %neg.i = and i32 %conv37, 31
  %and.i103 = xor i32 %neg.i, 31
  %shl.i104 = shl nuw i32 1, %and.i103
  %shr.i105117 = lshr i32 %conv37, 5
  %arrayidx.i106 = getelementptr i32, ptr %addr, i32 %shr.i105117
  %13 = ptrtoint ptr %arrayidx.i106 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i106, align 4
  %and1.i = and i32 %shl.i104, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool39.not = icmp eq i32 %and1.i, 0
  br i1 %tobool39.not, label %if.else58, label %if.then40

if.then40:                                        ; preds = %next
  %right = getelementptr inbounds %struct.fib6_node, ptr %fn.0124, i32 0, i32 2
  %15 = ptrtoint ptr %right to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %right, align 4
  %call46 = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %land.lhs.true48, label %if.then40.cleanup_crit_edge

if.then40.cleanup_crit_edge:                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true48:                                  ; preds = %if.then40
  %call49 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %land.lhs.true48.cleanup_crit_edge, label %land.lhs.true51

land.lhs.true48.cleanup_crit_edge:                ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true51:                                  ; preds = %land.lhs.true48
  %.b98101 = load i1, ptr @fib6_locate_1.__warned.51, align 1
  br i1 %.b98101, label %land.lhs.true51.cleanup_crit_edge, label %land.lhs.true51.cleanup.sink.split_crit_edge

land.lhs.true51.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

land.lhs.true51.cleanup_crit_edge:                ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.else58:                                        ; preds = %next
  %left = getelementptr inbounds %struct.fib6_node, ptr %fn.0124, i32 0, i32 1
  %17 = ptrtoint ptr %left to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %left, align 4
  %call64 = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %land.lhs.true66, label %if.else58.cleanup_crit_edge

if.else58.cleanup_crit_edge:                      ; preds = %if.else58
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true66:                                  ; preds = %if.else58
  %call67 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %land.lhs.true66.cleanup_crit_edge, label %land.lhs.true69

land.lhs.true66.cleanup_crit_edge:                ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true69:                                  ; preds = %land.lhs.true66
  %.b99100 = load i1, ptr @fib6_locate_1.__warned.52, align 1
  br i1 %.b99100, label %land.lhs.true69.cleanup_crit_edge, label %land.lhs.true69.cleanup.sink.split_crit_edge

land.lhs.true69.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

land.lhs.true69.cleanup_crit_edge:                ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup.sink.split:                               ; preds = %land.lhs.true69.cleanup.sink.split_crit_edge, %land.lhs.true51.cleanup.sink.split_crit_edge
  %fib6_locate_1.__warned.51.sink = phi ptr [ @fib6_locate_1.__warned.51, %land.lhs.true51.cleanup.sink.split_crit_edge ], [ @fib6_locate_1.__warned.52, %land.lhs.true69.cleanup.sink.split_crit_edge ]
  %.sink = phi i32 [ 1697, %land.lhs.true51.cleanup.sink.split_crit_edge ], [ 1699, %land.lhs.true69.cleanup.sink.split_crit_edge ]
  %fn.2.ph = phi ptr [ %16, %land.lhs.true51.cleanup.sink.split_crit_edge ], [ %18, %land.lhs.true69.cleanup.sink.split_crit_edge ]
  %19 = ptrtoint ptr %fib6_locate_1.__warned.51.sink to i32
  call void @__asan_store1_noabort(i32 %19)
  store i1 true, ptr %fib6_locate_1.__warned.51.sink, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef %.sink, ptr noundef nonnull @.str.46) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true69.cleanup_crit_edge, %land.lhs.true66.cleanup_crit_edge, %if.else58.cleanup_crit_edge, %land.lhs.true51.cleanup_crit_edge, %land.lhs.true48.cleanup_crit_edge, %if.then40.cleanup_crit_edge
  %fn.2 = phi ptr [ %16, %land.lhs.true51.cleanup_crit_edge ], [ %16, %land.lhs.true48.cleanup_crit_edge ], [ %16, %if.then40.cleanup_crit_edge ], [ %18, %land.lhs.true69.cleanup_crit_edge ], [ %18, %land.lhs.true66.cleanup_crit_edge ], [ %18, %if.else58.cleanup_crit_edge ], [ %fn.2.ph, %cleanup.sink.split ]
  %tobool.not = icmp eq ptr %fn.2, null
  br i1 %tobool.not, label %cleanup.out_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cleanup.out_crit_edge:                            ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

out:                                              ; preds = %cleanup.out_crit_edge, %land.lhs.true5.i.out_crit_edge, %land.lhs.true.i.out_crit_edge, %if.end15.out_crit_edge, %if.then12.out_crit_edge, %entry.out_crit_edge
  %prev.0.lcssa = phi ptr [ null, %entry.out_crit_edge ], [ %prev.0121, %land.lhs.true5.i.out_crit_edge ], [ %prev.0121, %land.lhs.true.i.out_crit_edge ], [ %prev.0121, %if.end15.out_crit_edge ], [ %prev.0121, %if.then12.out_crit_edge ], [ %prev.1, %cleanup.out_crit_edge ]
  %.prev.3 = select i1 %exact_match, ptr null, ptr %prev.0.lcssa
  br label %cleanup81

cleanup81:                                        ; preds = %out, %if.end25.cleanup81_crit_edge
  %retval.2 = phi ptr [ %.prev.3, %out ], [ %fn.0124, %if.end25.cleanup81_crit_edge ]
  ret ptr %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fib6_del(ptr noundef readonly %rt, ptr noundef %info) local_unnamed_addr #0 align 64 {
entry:
  %info.i246.i = alloca %struct.fib6_entry_notifier_info, align 8
  %info.i.i = alloca %struct.fib6_entry_notifier_info, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %nl_net = getelementptr inbounds %struct.nl_info, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %nl_net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nl_net, align 4
  %fib6_null_entry = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 36, i32 6
  %2 = ptrtoint ptr %fib6_null_entry to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fib6_null_entry, align 16
  %cmp = icmp eq ptr %3, %rt
  br i1 %cmp, label %entry.cleanup61_crit_edge, label %if.end

entry.cleanup61_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup61

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %rt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rt, align 4
  %dep_map = getelementptr inbounds %struct.fib6_table, ptr %5, i32 0, i32 2, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true:                                    ; preds = %if.end
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b84 = load i1, ptr @fib6_del.__warned, align 1
  br i1 %.b84, label %land.lhs.true3.do.end_crit_edge, label %if.then5

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then5:                                         ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @fib6_del.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2013, ptr noundef nonnull @.str.1) #13
  br label %do.end

do.end:                                           ; preds = %if.then5, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %if.end.do.end_crit_edge
  %fib6_node = getelementptr inbounds %struct.fib6_info, ptr %rt, i32 0, i32 2
  %6 = ptrtoint ptr %fib6_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fib6_node, align 4
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %do.end.cleanup61_crit_edge, label %if.end9

do.end.cleanup61_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup61

if.end9:                                          ; preds = %do.end
  %fn_flags = getelementptr inbounds %struct.fib6_node, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %fn_flags to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %fn_flags, align 2
  %10 = and i16 %9, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool10.not = icmp eq i16 %10, 0
  br i1 %tobool10.not, label %do.end23, label %if.end9.if.end29_crit_edge, !prof !263

if.end9.if.end29_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

do.end23:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2017, i32 noundef 9, ptr noundef null) #13
  br label %if.end29

if.end29:                                         ; preds = %do.end23, %if.end9.if.end29_crit_edge
  %leaf = getelementptr inbounds %struct.fib6_node, ptr %7, i32 0, i32 4
  %rr_ptr.i = getelementptr inbounds %struct.fib6_node, ptr %7, i32 0, i32 8
  %skip_notify_kernel.i = getelementptr inbounds %struct.nl_info, ptr %info, i32 0, i32 3
  %11 = getelementptr inbounds %struct.fib6_entry_notifier_info, ptr %info.i246.i, i32 0, i32 1
  %12 = getelementptr inbounds %struct.fib6_entry_notifier_info, ptr %info.i246.i, i32 0, i32 2
  %13 = getelementptr inbounds %struct.fib_notifier_info, ptr %info.i.i, i32 0, i32 1
  %14 = getelementptr inbounds %struct.fib6_entry_notifier_info, ptr %info.i.i, i32 0, i32 1
  %15 = getelementptr inbounds %struct.fib6_entry_notifier_info, ptr %info.i.i, i32 0, i32 2
  %plen.i = getelementptr inbounds %struct.fib6_info, ptr %rt, i32 0, i32 10, i32 1
  br label %for.cond

for.cond:                                         ; preds = %cleanup.for.cond_crit_edge, %if.end29
  %rtp_next.0 = phi ptr [ inttoptr (i32 -1 to ptr), %if.end29 ], [ %rtp_next.1, %cleanup.for.cond_crit_edge ]
  %rtp.0 = phi ptr [ %leaf, %if.end29 ], [ %rtp_next.1, %cleanup.for.cond_crit_edge ]
  %16 = ptrtoint ptr %rtp.0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rtp.0, align 4
  %tobool37.not = icmp eq ptr %17, null
  br i1 %tobool37.not, label %for.cond.cleanup61_crit_edge, label %for.body

for.cond.cleanup61_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup61

for.body:                                         ; preds = %for.cond
  %call.i85 = call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i85)
  %tobool42.not = icmp eq i32 %call.i85, 0
  br i1 %tobool42.not, label %land.lhs.true43, label %for.body.do.end51_crit_edge

for.body.do.end51_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end51

land.lhs.true43:                                  ; preds = %for.body
  %call44 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %land.lhs.true43.do.end51_crit_edge, label %land.lhs.true46

land.lhs.true43.do.end51_crit_edge:               ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end51

land.lhs.true46:                                  ; preds = %land.lhs.true43
  %.b8283 = load i1, ptr @fib6_del.__warned.6, align 1
  br i1 %.b8283, label %land.lhs.true46.do.end51_crit_edge, label %if.then48

land.lhs.true46.do.end51_crit_edge:               ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end51

if.then48:                                        ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @fib6_del.__warned.6, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2025, ptr noundef nonnull @.str.1) #13
  br label %do.end51

do.end51:                                         ; preds = %if.then48, %land.lhs.true46.do.end51_crit_edge, %land.lhs.true43.do.end51_crit_edge, %for.body.do.end51_crit_edge
  %18 = ptrtoint ptr %rtp.0 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rtp.0, align 4
  %cmp53 = icmp eq ptr %19, %rt
  br i1 %cmp53, label %if.then55, label %if.end60

if.then55:                                        ; preds = %do.end51
  %20 = ptrtoint ptr %plen.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %plen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i = icmp sgt i32 %21, 0
  br i1 %cmp.i, label %if.then57, label %if.then55.if.end59_crit_edge

if.then55.if.end59_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end59

if.then57:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %nl_net to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %nl_net, align 4
  %fib6_routes_require_src.i = getelementptr inbounds %struct.net, ptr %23, i32 0, i32 36, i32 20
  %24 = ptrtoint ptr %fib6_routes_require_src.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fib6_routes_require_src.i, align 4
  %dec.i = add i32 %25, -1
  store i32 %dec.i, ptr %fib6_routes_require_src.i, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %if.then55.if.end59_crit_edge
  %call.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end59.do.end.i_crit_edge

if.end59.do.end.i_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %if.end59
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b241.i = load i1, ptr @fib6_del_route.__warned, align 1
  br i1 %.b241.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @fib6_del_route.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1909, ptr noundef nonnull @.str.1) #13
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %if.end59.do.end.i_crit_edge
  %26 = ptrtoint ptr %rtp.0 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rtp.0, align 4
  %28 = ptrtoint ptr %nl_net to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %nl_net, align 4
  %call.i242.i = call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i242.i)
  %tobool12.not.i = icmp eq i32 %call.i242.i, 0
  br i1 %tobool12.not.i, label %land.lhs.true13.i, label %do.end.i.do.end21.i_crit_edge

do.end.i.do.end21.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end21.i

land.lhs.true13.i:                                ; preds = %do.end.i
  %call14.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %land.lhs.true13.i.do.end21.i_crit_edge, label %land.lhs.true16.i

land.lhs.true13.i.do.end21.i_crit_edge:           ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end21.i

land.lhs.true16.i:                                ; preds = %land.lhs.true13.i
  %.b232240.i = load i1, ptr @fib6_del_route.__warned.66, align 1
  br i1 %.b232240.i, label %land.lhs.true16.i.do.end21.i_crit_edge, label %if.then18.i

land.lhs.true16.i.do.end21.i_crit_edge:           ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end21.i

if.then18.i:                                      ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @fib6_del_route.__warned.66, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1920, ptr noundef nonnull @.str.1) #13
  br label %do.end21.i

do.end21.i:                                       ; preds = %if.then18.i, %land.lhs.true16.i.do.end21.i_crit_edge, %land.lhs.true13.i.do.end21.i_crit_edge, %do.end.i.do.end21.i_crit_edge
  %30 = ptrtoint ptr %leaf to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %leaf, align 4
  %cmp.i86 = icmp eq ptr %31, %27
  br i1 %cmp.i86, label %land.lhs.true24.i, label %do.end21.i.if.end51.i_crit_edge

do.end21.i.if.end51.i_crit_edge:                  ; preds = %do.end21.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51.i

land.lhs.true24.i:                                ; preds = %do.end21.i
  %fib6_nsiblings.i = getelementptr inbounds %struct.fib6_info, ptr %27, i32 0, i32 4
  %32 = ptrtoint ptr %fib6_nsiblings.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %fib6_nsiblings.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool25.not.i = icmp eq i32 %33, 0
  br i1 %tobool25.not.i, label %if.then26.i, label %land.lhs.true24.i.if.end51.i_crit_edge

land.lhs.true24.i.if.end51.i_crit_edge:           ; preds = %land.lhs.true24.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51.i

if.then26.i:                                      ; preds = %land.lhs.true24.i
  %fib6_next.i = getelementptr inbounds %struct.fib6_info, ptr %27, i32 0, i32 1
  %34 = ptrtoint ptr %fib6_next.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %fib6_next.i, align 4
  %tobool32.not.i = icmp eq ptr %35, null
  br i1 %tobool32.not.i, label %if.then26.i.if.end51.i_crit_edge, label %do.body34.i

if.then26.i.if.end51.i_crit_edge:                 ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51.i

do.body34.i:                                      ; preds = %if.then26.i
  %call.i243.i = call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i243.i)
  %tobool38.not.i = icmp eq i32 %call.i243.i, 0
  br i1 %tobool38.not.i, label %land.lhs.true39.i, label %do.body34.i.do.end47.i_crit_edge

do.body34.i.do.end47.i_crit_edge:                 ; preds = %do.body34.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end47.i

land.lhs.true39.i:                                ; preds = %do.body34.i
  %call40.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %tobool41.not.i = icmp eq i32 %call40.i, 0
  br i1 %tobool41.not.i, label %land.lhs.true39.i.do.end47.i_crit_edge, label %land.lhs.true42.i

land.lhs.true39.i.do.end47.i_crit_edge:           ; preds = %land.lhs.true39.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end47.i

land.lhs.true42.i:                                ; preds = %land.lhs.true39.i
  %.b233239.i = load i1, ptr @fib6_del_route.__warned.67, align 1
  br i1 %.b233239.i, label %land.lhs.true42.i.do.end47.i_crit_edge, label %if.then44.i

land.lhs.true42.i.do.end47.i_crit_edge:           ; preds = %land.lhs.true42.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end47.i

if.then44.i:                                      ; preds = %land.lhs.true42.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @fib6_del_route.__warned.67, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1924, ptr noundef nonnull @.str.1) #13
  br label %do.end47.i

do.end47.i:                                       ; preds = %if.then44.i, %land.lhs.true42.i.do.end47.i_crit_edge, %land.lhs.true39.i.do.end47.i_crit_edge, %do.body34.i.do.end47.i_crit_edge
  %36 = ptrtoint ptr %fib6_next.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %fib6_next.i, align 4
  br label %if.end51.i

if.end51.i:                                       ; preds = %do.end47.i, %if.then26.i.if.end51.i_crit_edge, %land.lhs.true24.i.if.end51.i_crit_edge, %do.end21.i.if.end51.i_crit_edge
  %notify_del.0.off0.i = phi i1 [ false, %land.lhs.true24.i.if.end51.i_crit_edge ], [ false, %do.end47.i ], [ false, %do.end21.i.if.end51.i_crit_edge ], [ true, %if.then26.i.if.end51.i_crit_edge ]
  %replace_rt.0.i = phi ptr [ null, %land.lhs.true24.i.if.end51.i_crit_edge ], [ %37, %do.end47.i ], [ null, %do.end21.i.if.end51.i_crit_edge ], [ null, %if.then26.i.if.end51.i_crit_edge ]
  %fib6_next52.i = getelementptr inbounds %struct.fib6_info, ptr %27, i32 0, i32 1
  %38 = ptrtoint ptr %fib6_next52.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fib6_next52.i, align 4
  %40 = ptrtoint ptr %rtp.0 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %rtp.0, align 4
  %fib6_node.i = getelementptr inbounds %struct.fib6_info, ptr %27, i32 0, i32 2
  %41 = ptrtoint ptr %fib6_node.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %fib6_node.i, align 4
  %rt6_stats.i = getelementptr inbounds %struct.net, ptr %29, i32 0, i32 36, i32 8
  %42 = ptrtoint ptr %rt6_stats.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rt6_stats.i, align 8
  %fib_rt_entries.i = getelementptr inbounds %struct.rt6_statistics, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %fib_rt_entries.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %fib_rt_entries.i, align 4
  %dec.i87 = add i32 %45, -1
  store i32 %dec.i87, ptr %fib_rt_entries.i, align 4
  %46 = load ptr, ptr %rt6_stats.i, align 8
  %fib_discarded_routes.i = getelementptr inbounds %struct.rt6_statistics, ptr %46, i32 0, i32 4
  %47 = ptrtoint ptr %fib_discarded_routes.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %fib_discarded_routes.i, align 4
  %inc.i = add i32 %48, 1
  store i32 %inc.i, ptr %fib_discarded_routes.i, align 4
  %49 = ptrtoint ptr %rr_ptr.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile ptr, ptr %rr_ptr.i, align 4
  %cmp60.i = icmp eq ptr %50, %27
  br i1 %cmp60.i, label %if.then61.i, label %if.end51.i.if.end63.i_crit_edge

if.end51.i.if.end63.i_crit_edge:                  ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end63.i

if.then61.i:                                      ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #15
  %51 = ptrtoint ptr %rr_ptr.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %rr_ptr.i, align 4
  br label %if.end63.i

if.end63.i:                                       ; preds = %if.then61.i, %if.end51.i.if.end63.i_crit_edge
  %fib6_nsiblings64.i = getelementptr inbounds %struct.fib6_info, ptr %27, i32 0, i32 4
  %52 = ptrtoint ptr %fib6_nsiblings64.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %fib6_nsiblings64.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool65.not.i = icmp eq i32 %53, 0
  br i1 %tobool65.not.i, label %if.end63.i.if.end86.i_crit_edge, label %if.then66.i

if.end63.i.if.end86.i_crit_edge:                  ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end86.i

if.then66.i:                                      ; preds = %if.end63.i
  %fib6_metric.i = getelementptr inbounds %struct.fib6_info, ptr %27, i32 0, i32 12
  %54 = ptrtoint ptr %fib6_metric.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %fib6_metric.i, align 4
  %fib6_metric67.i = getelementptr inbounds %struct.fib6_info, ptr %31, i32 0, i32 12
  %56 = ptrtoint ptr %fib6_metric67.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %fib6_metric67.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %57)
  %cmp68.i = icmp eq i32 %55, %57
  br i1 %cmp68.i, label %land.lhs.true69.i, label %if.then66.i.if.end72.i_crit_edge

if.then66.i.if.end72.i_crit_edge:                 ; preds = %if.then66.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end72.i

land.lhs.true69.i:                                ; preds = %if.then66.i
  %fib6_flags.i.i = getelementptr inbounds %struct.fib6_info, ptr %31, i32 0, i32 9
  %58 = ptrtoint ptr %fib6_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %fib6_flags.i.i, align 4
  %and.i.i = and i32 %59, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %land.lhs.true69.i.rt6_qualify_for_ecmp.exit.i_crit_edge

land.lhs.true69.i.rt6_qualify_for_ecmp.exit.i_crit_edge: ; preds = %land.lhs.true69.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt6_qualify_for_ecmp.exit.i

land.lhs.true.i.i:                                ; preds = %land.lhs.true69.i
  %nh.i.i = getelementptr inbounds %struct.fib6_info, ptr %31, i32 0, i32 20
  %60 = ptrtoint ptr %nh.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %nh.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %61, null
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.rt6_qualify_for_ecmp.exit.i_crit_edge

land.lhs.true.i.i.rt6_qualify_for_ecmp.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt6_qualify_for_ecmp.exit.i

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %fib6_nh.i.i = getelementptr inbounds %struct.fib6_info, ptr %31, i32 0, i32 21
  %nhc_gw_family.i.i = getelementptr inbounds %struct.fib_nh_common, ptr %fib6_nh.i.i, i32 0, i32 5
  %62 = ptrtoint ptr %nhc_gw_family.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %nhc_gw_family.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool2.i.i = icmp ne i8 %63, 0
  br label %rt6_qualify_for_ecmp.exit.i

rt6_qualify_for_ecmp.exit.i:                      ; preds = %land.rhs.i.i, %land.lhs.true.i.i.rt6_qualify_for_ecmp.exit.i_crit_edge, %land.lhs.true69.i.rt6_qualify_for_ecmp.exit.i_crit_edge
  %64 = phi i1 [ false, %land.lhs.true.i.i.rt6_qualify_for_ecmp.exit.i_crit_edge ], [ false, %land.lhs.true69.i.rt6_qualify_for_ecmp.exit.i_crit_edge ], [ %tobool2.i.i, %land.rhs.i.i ]
  %spec.select.i = or i1 %notify_del.0.off0.i, %64
  br label %if.end72.i

if.end72.i:                                       ; preds = %rt6_qualify_for_ecmp.exit.i, %if.then66.i.if.end72.i_crit_edge
  %notify_del.1.off0.i = phi i1 [ %notify_del.0.off0.i, %if.then66.i.if.end72.i_crit_edge ], [ %spec.select.i, %rt6_qualify_for_ecmp.exit.i ]
  %65 = getelementptr inbounds %struct.fib6_info, ptr %27, i32 0, i32 3
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 4
  %add.ptr.i = getelementptr i8, ptr %67, i32 -12
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %.pn252.i = load ptr, ptr %67, align 4
  %next_sibling.0253.i = getelementptr i8, ptr %.pn252.i, i32 -12
  %cmp78.not254.i = icmp eq ptr %add.ptr.i, %27
  br i1 %cmp78.not254.i, label %if.end72.i.for.end.i_crit_edge, label %if.end72.i.for.body.i_crit_edge

if.end72.i.for.body.i_crit_edge:                  ; preds = %if.end72.i
  br label %for.body.i

if.end72.i.for.end.i_crit_edge:                   ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end72.i.for.body.i_crit_edge
  %next_sibling.0257.i = phi ptr [ %next_sibling.0.i, %for.body.i.for.body.i_crit_edge ], [ %next_sibling.0253.i, %if.end72.i.for.body.i_crit_edge ]
  %.pn256.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn252.i, %if.end72.i.for.body.i_crit_edge ]
  %sibling.0255.i = phi ptr [ %next_sibling.0257.i, %for.body.i.for.body.i_crit_edge ], [ %add.ptr.i, %if.end72.i.for.body.i_crit_edge ]
  %fib6_nsiblings79.i = getelementptr inbounds %struct.fib6_info, ptr %sibling.0255.i, i32 0, i32 4
  %69 = ptrtoint ptr %fib6_nsiblings79.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %fib6_nsiblings79.i, align 4
  %dec80.i = add i32 %70, -1
  store i32 %dec80.i, ptr %fib6_nsiblings79.i, align 4
  %71 = ptrtoint ptr %.pn256.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %.pn.i = load ptr, ptr %.pn256.i, align 4
  %next_sibling.0.i = getelementptr i8, ptr %.pn.i, i32 -12
  %cmp78.not.i = icmp eq ptr %next_sibling.0257.i, %27
  br i1 %cmp78.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end72.i.for.end.i_crit_edge
  %next_sibling.0.lcssa.i = phi ptr [ %next_sibling.0253.i, %if.end72.i.for.end.i_crit_edge ], [ %next_sibling.0.i, %for.body.i.for.end.i_crit_edge ]
  %72 = ptrtoint ptr %fib6_nsiblings64.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %fib6_nsiblings64.i, align 4
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %65) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.end.i.list_del_init.exit.i_crit_edge

for.end.i.list_del_init.exit.i_crit_edge:         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.fib6_info, ptr %27, i32 0, i32 3, i32 0, i32 1
  %73 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %prev.i.i.i, align 4
  %75 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %65, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %74, ptr %prev1.i.i.i.i, align 4
  %78 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %76, ptr %74, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %for.end.i.list_del_init.exit.i_crit_edge
  %79 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %65, ptr %65, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.fib6_info, ptr %27, i32 0, i32 3, i32 0, i32 1
  %80 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %65, ptr %prev.i3.i.i, align 4
  call void @rt6_multipath_rebalance(ptr noundef %next_sibling.0.lcssa.i) #13
  br label %if.end86.i

if.end86.i:                                       ; preds = %list_del_init.exit.i, %if.end63.i.if.end86.i_crit_edge
  %notify_del.2.off0.i = phi i1 [ %notify_del.1.off0.i, %list_del_init.exit.i ], [ %notify_del.0.off0.i, %if.end63.i.if.end86.i_crit_edge ]
  %fib6_walker_lock.i = getelementptr inbounds %struct.net, ptr %29, i32 0, i32 36, i32 13
  call void @_raw_read_lock(ptr noundef %fib6_walker_lock.i) #13
  %fib6_walkers.i = getelementptr inbounds %struct.net, ptr %29, i32 0, i32 36, i32 12
  %81 = ptrtoint ptr %fib6_walkers.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %w.0258.i = load ptr, ptr %fib6_walkers.i, align 4
  %cmp96.not259.i = icmp eq ptr %w.0258.i, %fib6_walkers.i
  br i1 %cmp96.not259.i, label %if.end86.i.for.end136.i_crit_edge, label %if.end86.i.for.body98.i_crit_edge

if.end86.i.for.body98.i_crit_edge:                ; preds = %if.end86.i
  br label %for.body98.i

if.end86.i.for.end136.i_crit_edge:                ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end136.i

for.body98.i:                                     ; preds = %for.inc130.i.for.body98.i_crit_edge, %if.end86.i.for.body98.i_crit_edge
  %w.0260.i = phi ptr [ %w.0.i, %for.inc130.i.for.body98.i_crit_edge ], [ %w.0258.i, %if.end86.i.for.body98.i_crit_edge ]
  %state.i = getelementptr inbounds %struct.fib6_walker, ptr %w.0260.i, i32 0, i32 4
  %82 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %83)
  %cmp99.i = icmp eq i32 %83, 3
  br i1 %cmp99.i, label %land.lhs.true100.i, label %for.body98.i.for.inc130.i_crit_edge

for.body98.i.for.inc130.i_crit_edge:              ; preds = %for.body98.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc130.i

land.lhs.true100.i:                               ; preds = %for.body98.i
  %leaf101.i = getelementptr inbounds %struct.fib6_walker, ptr %w.0260.i, i32 0, i32 3
  %84 = ptrtoint ptr %leaf101.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %leaf101.i, align 4
  %cmp102.i = icmp eq ptr %85, %27
  br i1 %cmp102.i, label %do.body107.i, label %land.lhs.true100.i.for.inc130.i_crit_edge

land.lhs.true100.i.for.inc130.i_crit_edge:        ; preds = %land.lhs.true100.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc130.i

do.body107.i:                                     ; preds = %land.lhs.true100.i
  %call.i244.i = call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i244.i)
  %tobool111.not.i = icmp eq i32 %call.i244.i, 0
  br i1 %tobool111.not.i, label %land.lhs.true112.i, label %do.body107.i.do.end120.i_crit_edge

do.body107.i.do.end120.i_crit_edge:               ; preds = %do.body107.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end120.i

land.lhs.true112.i:                               ; preds = %do.body107.i
  %call113.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113.i)
  %tobool114.not.i = icmp eq i32 %call113.i, 0
  br i1 %tobool114.not.i, label %land.lhs.true112.i.do.end120.i_crit_edge, label %land.lhs.true115.i

land.lhs.true112.i.do.end120.i_crit_edge:         ; preds = %land.lhs.true112.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end120.i

land.lhs.true115.i:                               ; preds = %land.lhs.true112.i
  %.b234238.i = load i1, ptr @fib6_del_route.__warned.68, align 1
  br i1 %.b234238.i, label %land.lhs.true115.i.do.end120.i_crit_edge, label %if.then117.i

land.lhs.true115.i.do.end120.i_crit_edge:         ; preds = %land.lhs.true115.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end120.i

if.then117.i:                                     ; preds = %land.lhs.true115.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @fib6_del_route.__warned.68, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1965, ptr noundef nonnull @.str.1) #13
  br label %do.end120.i

do.end120.i:                                      ; preds = %if.then117.i, %land.lhs.true115.i.do.end120.i_crit_edge, %land.lhs.true112.i.do.end120.i_crit_edge, %do.body107.i.do.end120.i_crit_edge
  %86 = ptrtoint ptr %fib6_next52.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %fib6_next52.i, align 4
  %88 = ptrtoint ptr %leaf101.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %87, ptr %leaf101.i, align 4
  %tobool125.not.i = icmp eq ptr %87, null
  br i1 %tobool125.not.i, label %if.then126.i, label %do.end120.i.for.inc130.i_crit_edge

do.end120.i.for.inc130.i_crit_edge:               ; preds = %do.end120.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc130.i

if.then126.i:                                     ; preds = %do.end120.i
  call void @__sanitizer_cov_trace_pc() #15
  %89 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 4, ptr %state.i, align 4
  br label %for.inc130.i

for.inc130.i:                                     ; preds = %if.then126.i, %do.end120.i.for.inc130.i_crit_edge, %land.lhs.true100.i.for.inc130.i_crit_edge, %for.body98.i.for.inc130.i_crit_edge
  %90 = ptrtoint ptr %w.0260.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %w.0.i = load ptr, ptr %w.0260.i, align 4
  %cmp96.not.i = icmp eq ptr %w.0.i, %fib6_walkers.i
  br i1 %cmp96.not.i, label %for.inc130.i.for.end136.i_crit_edge, label %for.inc130.i.for.body98.i_crit_edge

for.inc130.i.for.body98.i_crit_edge:              ; preds = %for.inc130.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body98.i

for.inc130.i.for.end136.i_crit_edge:              ; preds = %for.inc130.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end136.i

for.end136.i:                                     ; preds = %for.inc130.i.for.end136.i_crit_edge, %if.end86.i.for.end136.i_crit_edge
  call void @_raw_read_unlock(ptr noundef %fib6_walker_lock.i) #13
  %91 = ptrtoint ptr %leaf to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile ptr, ptr %leaf, align 4
  %tobool145.not.i = icmp eq ptr %92, null
  br i1 %tobool145.not.i, label %if.then146.i, label %for.end136.i.if.end158.i_crit_edge

for.end136.i.if.end158.i_crit_edge:               ; preds = %for.end136.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end158.i

if.then146.i:                                     ; preds = %for.end136.i
  %93 = ptrtoint ptr %fn_flags to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %fn_flags, align 2
  %95 = and i16 %94, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %95)
  %tobool147.not.i = icmp eq i16 %95, 0
  br i1 %tobool147.not.i, label %if.then148.i, label %if.then146.i.if.end156.i_crit_edge

if.then146.i.if.end156.i_crit_edge:               ; preds = %if.then146.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end156.i

if.then148.i:                                     ; preds = %if.then146.i
  call void @__sanitizer_cov_trace_pc() #15
  %and151.i = and i16 %94, -5
  %96 = ptrtoint ptr %fn_flags to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %and151.i, ptr %fn_flags, align 2
  %97 = ptrtoint ptr %rt6_stats.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %rt6_stats.i, align 8
  %fib_route_nodes.i = getelementptr inbounds %struct.rt6_statistics, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %fib_route_nodes.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %fib_route_nodes.i, align 4
  %dec155.i = add i32 %100, -1
  store i32 %dec155.i, ptr %fib_route_nodes.i, align 4
  br label %if.end156.i

if.end156.i:                                      ; preds = %if.then148.i, %if.then146.i.if.end156.i_crit_edge
  %call157.i = call fastcc ptr @fib6_repair_tree(ptr noundef %29, ptr noundef %5, ptr noundef nonnull %7) #13
  br label %if.end158.i

if.end158.i:                                      ; preds = %if.end156.i, %for.end136.i.if.end158.i_crit_edge
  %fn.addr.0.i = phi ptr [ %7, %for.end136.i.if.end158.i_crit_edge ], [ %call157.i, %if.end156.i ]
  call fastcc void @fib6_purge_rt(ptr noundef %27, ptr noundef %fn.addr.0.i, ptr noundef %29) #13
  %101 = ptrtoint ptr %skip_notify_kernel.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %bf.load.i = load i8, ptr %skip_notify_kernel.i, align 4
  %102 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool159.not.i = icmp eq i8 %102, 0
  br i1 %tobool159.not.i, label %if.then160.i, label %if.end158.i.if.end170.i_crit_edge

if.end158.i.if.end170.i_crit_edge:                ; preds = %if.end158.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end170.i

if.then160.i:                                     ; preds = %if.end158.i
  br i1 %notify_del.2.off0.i, label %if.then162.i, label %if.else164.i

if.then162.i:                                     ; preds = %if.then160.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info.i.i) #13
  %103 = ptrtoint ptr %info.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 0, ptr %info.i.i, align 4
  %104 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr null, ptr %13, align 4
  %105 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %27, ptr %14, align 4
  %106 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 0, ptr %15, align 4
  %107 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %27, align 4
  %fib_seq.i.i = getelementptr inbounds %struct.fib6_table, ptr %108, i32 0, i32 6
  %109 = ptrtoint ptr %fib_seq.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %fib_seq.i.i, align 4
  %inc.i.i = add i32 %110, 1
  store i32 %inc.i.i, ptr %fib_seq.i.i, align 4
  %call.i245.i = call i32 @call_fib6_notifiers(ptr noundef %29, i32 noundef 3, ptr noundef nonnull %info.i.i) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info.i.i) #13
  br label %if.end170thread-pre-split.i

if.else164.i:                                     ; preds = %if.then160.i
  %tobool165.not.i = icmp eq ptr %replace_rt.0.i, null
  br i1 %tobool165.not.i, label %if.else164.i.if.end170thread-pre-split.i_crit_edge, label %if.then166.i

if.else164.i.if.end170thread-pre-split.i_crit_edge: ; preds = %if.else164.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end170thread-pre-split.i

if.then166.i:                                     ; preds = %if.else164.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info.i246.i) #13
  %111 = ptrtoint ptr %info.i246.i to i32
  call void @__asan_store8_noabort(i32 %111)
  store i64 0, ptr %info.i246.i, align 8
  %112 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %replace_rt.0.i, ptr %11, align 8
  %fib6_nsiblings.i.i = getelementptr inbounds %struct.fib6_info, ptr %replace_rt.0.i, i32 0, i32 4
  %113 = ptrtoint ptr %fib6_nsiblings.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %fib6_nsiblings.i.i, align 4
  %115 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %12, align 4
  %116 = ptrtoint ptr %replace_rt.0.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %replace_rt.0.i, align 4
  %fib_seq.i247.i = getelementptr inbounds %struct.fib6_table, ptr %117, i32 0, i32 6
  %118 = ptrtoint ptr %fib_seq.i247.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %fib_seq.i247.i, align 4
  %inc.i248.i = add i32 %119, 1
  store i32 %inc.i248.i, ptr %fib_seq.i247.i, align 4
  %call.i249.i = call i32 @call_fib6_notifiers(ptr noundef %29, i32 noundef 0, ptr noundef nonnull %info.i246.i) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info.i246.i) #13
  br label %if.end170thread-pre-split.i

if.end170thread-pre-split.i:                      ; preds = %if.then166.i, %if.else164.i.if.end170thread-pre-split.i_crit_edge, %if.then162.i
  %120 = ptrtoint ptr %skip_notify_kernel.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %bf.load171.pr.i = load i8, ptr %skip_notify_kernel.i, align 4
  br label %if.end170.i

if.end170.i:                                      ; preds = %if.end170thread-pre-split.i, %if.end158.i.if.end170.i_crit_edge
  %bf.load171.i = phi i8 [ %bf.load171.pr.i, %if.end170thread-pre-split.i ], [ %bf.load.i, %if.end158.i.if.end170.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load171.i)
  %tobool173.not.i = icmp sgt i8 %bf.load171.i, -1
  br i1 %tobool173.not.i, label %if.then174.i, label %if.end170.i.if.end175.i_crit_edge

if.end170.i.if.end175.i_crit_edge:                ; preds = %if.end170.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end175.i

if.then174.i:                                     ; preds = %if.end170.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @inet6_rt_notify(i32 noundef 25, ptr noundef %27, ptr noundef %info, i32 noundef 0) #13
  br label %if.end175.i

if.end175.i:                                      ; preds = %if.then174.i, %if.end170.i.if.end175.i_crit_edge
  %tobool.not.i250.i = icmp eq ptr %27, null
  br i1 %tobool.not.i250.i, label %if.end175.i.cleanup_crit_edge, label %land.lhs.true.i251.i

if.end175.i.cleanup_crit_edge:                    ; preds = %if.end175.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true.i251.i:                             ; preds = %if.end175.i
  %fib6_ref.i.i = getelementptr inbounds %struct.fib6_info, ptr %27, i32 0, i32 5
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %fib6_ref.i.i, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !254
  call void @llvm.prefetch.p0(ptr %fib6_ref.i.i, i32 1, i32 3, i32 1) #13
  %121 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fib6_ref.i.i, ptr %fib6_ref.i.i, i32 1, ptr elementtype(i32) %fib6_ref.i.i) #13, !srcloc !255
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %121, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %land.lhs.true.i251.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !253

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef %fib6_ref.i.i, i32 noundef 3) #13
  br label %cleanup

if.then.i.i:                                      ; preds = %land.lhs.true.i251.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !256
  %rcu.i.i = getelementptr inbounds %struct.fib6_info, ptr %27, i32 0, i32 19
  call void @call_rcu(ptr noundef %rcu.i.i, ptr noundef nonnull @fib6_info_destroy_rcu) #13
  br label %cleanup

if.end60:                                         ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #15
  %fib6_next = getelementptr inbounds %struct.fib6_info, ptr %19, i32 0, i32 1
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %if.end175.i.cleanup_crit_edge
  %rtp_next.1 = phi ptr [ %fib6_next, %if.end60 ], [ %rtp_next.0, %if.end175.i.cleanup_crit_edge ], [ %rtp_next.0, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ %rtp_next.0, %if.then10.i.i.i.i.i ], [ %rtp_next.0, %if.then.i.i ]
  br i1 %cmp53, label %cleanup.cleanup61_crit_edge, label %cleanup.for.cond_crit_edge

cleanup.for.cond_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

cleanup.cleanup61_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup61

cleanup61:                                        ; preds = %cleanup.cleanup61_crit_edge, %for.cond.cleanup61_crit_edge, %do.end.cleanup61_crit_edge, %entry.cleanup61_crit_edge
  %retval.2 = phi i32 [ -2, %entry.cleanup61_crit_edge ], [ -2, %do.end.cleanup61_crit_edge ], [ -2, %for.cond.cleanup61_crit_edge ], [ 0, %cleanup.cleanup61_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fib6_clean_all(ptr noundef %net, ptr noundef %func, ptr noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @__fib6_clean_all(ptr noundef %net, ptr noundef %func, i32 noundef 0, ptr noundef %arg, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__fib6_clean_all(ptr noundef %net, ptr noundef %func, i32 noundef %sernum, ptr noundef %arg, i1 noundef zeroext %skip_notify) unnamed_addr #0 align 64 {
entry:
  %c.i = alloca %struct.fib6_cleaner, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !259
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %fib_table_hash = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 10
  %frombool.i = zext i1 %skip_notify to i8
  %root1.i = getelementptr inbounds %struct.fib6_walker, ptr %c.i, i32 0, i32 1
  %func3.i = getelementptr inbounds %struct.fib6_walker, ptr %c.i, i32 0, i32 8
  %count.i = getelementptr inbounds %struct.fib6_walker, ptr %c.i, i32 0, i32 6
  %skip.i = getelementptr inbounds %struct.fib6_walker, ptr %c.i, i32 0, i32 5
  %skip_in_node.i = getelementptr inbounds %struct.fib6_walker, ptr %c.i, i32 0, i32 7
  %func7.i = getelementptr inbounds %struct.fib6_cleaner, ptr %c.i, i32 0, i32 2
  %sernum8.i = getelementptr inbounds %struct.fib6_cleaner, ptr %c.i, i32 0, i32 3
  %arg9.i = getelementptr inbounds %struct.fib6_cleaner, ptr %c.i, i32 0, i32 4
  %net10.i = getelementptr inbounds %struct.fib6_cleaner, ptr %c.i, i32 0, i32 1
  %skip_notify11.i = getelementptr inbounds %struct.fib6_cleaner, ptr %c.i, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc32.for.body_crit_edge, %rcu_read_lock.exit
  %h.059 = phi i32 [ 0, %rcu_read_lock.exit ], [ %inc, %for.inc32.for.body_crit_edge ]
  %4 = ptrtoint ptr %fib_table_hash to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fib_table_hash, align 4
  %arrayidx = getelementptr %struct.hlist_head, ptr %5, i32 %h.059
  %call = call i32 @rcu_read_lock_any_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %for.body.do.end_crit_edge

for.body.do.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true:                                    ; preds = %for.body
  %call1 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b44 = load i1, ptr @__fib6_clean_all.__warned, align 1
  br i1 %.b44, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__fib6_clean_all.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2255, ptr noundef nonnull @.str.2) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %for.body.do.end_crit_edge
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %table.056 = load volatile ptr, ptr %arrayidx, align 4
  %tobool13.not57 = icmp eq ptr %table.056, null
  br i1 %tobool13.not57, label %do.end.for.inc32_crit_edge, label %do.end.for.body14_crit_edge

do.end.for.body14_crit_edge:                      ; preds = %do.end
  br label %for.body14

do.end.for.inc32_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc32

for.body14:                                       ; preds = %for.body14.for.body14_crit_edge, %do.end.for.body14_crit_edge
  %table.058 = phi ptr [ %table.0, %for.body14.for.body14_crit_edge ], [ %table.056, %do.end.for.body14_crit_edge ]
  %tb6_lock = getelementptr inbounds %struct.fib6_table, ptr %table.058, i32 0, i32 2
  call void @_raw_spin_lock_bh(ptr noundef %tb6_lock) #13
  %tb6_root = getelementptr inbounds %struct.fib6_table, ptr %table.058, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %c.i) #13
  %7 = call ptr @memset(ptr %c.i, i32 255, i32 64)
  %8 = ptrtoint ptr %root1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %tb6_root, ptr %root1.i, align 4
  %9 = ptrtoint ptr %func3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @fib6_clean_node, ptr %func3.i, align 4
  %10 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %count.i, align 4
  %11 = ptrtoint ptr %skip.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %skip.i, align 4
  %12 = ptrtoint ptr %skip_in_node.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %skip_in_node.i, align 4
  %13 = ptrtoint ptr %func7.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %func, ptr %func7.i, align 4
  %14 = ptrtoint ptr %sernum8.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sernum, ptr %sernum8.i, align 4
  %15 = ptrtoint ptr %arg9.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %arg, ptr %arg9.i, align 4
  %16 = ptrtoint ptr %net10.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %net, ptr %net10.i, align 4
  %17 = ptrtoint ptr %skip_notify11.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %frombool.i, ptr %skip_notify11.i, align 4
  %call.i46 = call fastcc i32 @fib6_walk(ptr noundef %net, ptr noundef nonnull %c.i) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %c.i) #13
  call void @_raw_spin_unlock_bh(ptr noundef %tb6_lock) #13
  %18 = ptrtoint ptr %table.058 to i32
  call void @__asan_load4_noabort(i32 %18)
  %table.0 = load volatile ptr, ptr %table.058, align 4
  %tobool13.not = icmp eq ptr %table.0, null
  br i1 %tobool13.not, label %for.body14.for.inc32_crit_edge, label %for.body14.for.body14_crit_edge

for.body14.for.body14_crit_edge:                  ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body14

for.body14.for.inc32_crit_edge:                   ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc32

for.inc32:                                        ; preds = %for.body14.for.inc32_crit_edge, %do.end.for.inc32_crit_edge
  %inc = add nuw nsw i32 %h.059, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.end33, label %for.inc32.for.body_crit_edge

for.inc32.for.body_crit_edge:                     ; preds = %for.inc32
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end33:                                        ; preds = %for.inc32
  %call.i47 = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i47, label %for.end33.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i50

for.end33.rcu_read_unlock.exit_crit_edge:         ; preds = %for.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i50:                                ; preds = %for.end33
  %call1.i48 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i48)
  %tobool.not.i49 = icmp eq i32 %call1.i48, 0
  br i1 %tobool.not.i49, label %land.lhs.true.i50.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i52

land.lhs.true.i50.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i50
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i52:                               ; preds = %land.lhs.true.i50
  %.b4.i51 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i51, label %land.lhs.true2.i52.rcu_read_unlock.exit_crit_edge, label %if.then.i53

land.lhs.true2.i52.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i52
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i53:                                      ; preds = %land.lhs.true2.i52
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.11) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i53, %land.lhs.true2.i52.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i50.rcu_read_unlock.exit_crit_edge, %for.end33.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !260
  %19 = call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i.i.i54 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i54 to ptr
  %preempt_count.i.i.i.i55 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i.i.i55 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i.i.i55, align 4
  %sub.i.i.i = add i32 %22, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i55, align 4
  call void @rcu_read_unlock_strict() #13
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fib6_clean_all_skip_notify(ptr noundef %net, ptr noundef %func, ptr noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @__fib6_clean_all(ptr noundef %net, ptr noundef %func, i32 noundef 0, ptr noundef %arg, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fib6_run_gc(i32 noundef %expires, ptr noundef %net, i1 noundef zeroext %force) local_unnamed_addr #0 align 64 {
entry:
  %gc_args = alloca %struct.fib6_gc_args, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %gc_args) #13
  %0 = getelementptr inbounds %struct.fib6_gc_args, ptr %gc_args, i32 0, i32 1
  %fib6_gc_lock = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 14
  br i1 %force, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_lock_bh(ptr noundef %fib6_gc_lock) #13
  br label %if.end7

if.else:                                          ; preds = %entry
  %call.i = tail call i32 @_raw_spin_trylock_bh(ptr noundef %fib6_gc_lock) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.then4, label %if.else.if.end7_crit_edge

if.else.if.end7_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %ip6_fib_timer = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %1, 100
  %call6 = tail call i32 @mod_timer(ptr noundef %ip6_fib_timer, i32 noundef %add) #13
  br label %cleanup

if.end7:                                          ; preds = %if.else.if.end7_crit_edge, %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %expires)
  %tobool8.not = icmp eq i32 %expires, 0
  br i1 %tobool8.not, label %cond.false, label %if.end7.cond.end_crit_edge

if.end7.cond.end_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  %ip6_rt_gc_interval = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 1, i32 9
  %2 = ptrtoint ptr %ip6_rt_gc_interval to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ip6_rt_gc_interval, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end7.cond.end_crit_edge
  %cond = phi i32 [ %3, %cond.false ], [ %expires, %if.end7.cond.end_crit_edge ]
  %4 = ptrtoint ptr %gc_args to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %cond, ptr %gc_args, align 4
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %0, align 4
  call fastcc void @__fib6_clean_all(ptr noundef %net, ptr noundef nonnull @fib6_age, i32 noundef 0, ptr noundef nonnull %gc_args, i1 noundef zeroext false) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %ip6_rt_last_gc = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 16
  %7 = ptrtoint ptr %ip6_rt_last_gc to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %ip6_rt_last_gc, align 8
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool12.not = icmp eq i32 %9, 0
  %ip6_fib_timer24 = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 9
  br i1 %tobool12.not, label %if.else22, label %if.then13

if.then13:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  %ip6_rt_gc_interval18 = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 1, i32 9
  %10 = ptrtoint ptr %ip6_rt_gc_interval18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ip6_rt_gc_interval18, align 4
  %add19 = add i32 %11, %6
  %call20 = call i32 @round_jiffies(i32 noundef %add19) #13
  %call21 = call i32 @mod_timer(ptr noundef %ip6_fib_timer24, i32 noundef %call20) #13
  br label %if.end26

if.else22:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  %call25 = call i32 @del_timer(ptr noundef %ip6_fib_timer24) #13
  br label %if.end26

if.end26:                                         ; preds = %if.else22, %if.then13
  %fib6_gc_lock28 = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 14
  call void @_raw_spin_unlock_bh(ptr noundef %fib6_gc_lock28) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.then4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %gc_args) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fib6_age(ptr noundef %rt, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %fib6_flags = getelementptr inbounds %struct.fib6_info, ptr %rt, i32 0, i32 9
  %1 = ptrtoint ptr %fib6_flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %fib6_flags, align 4
  %and = and i32 %2, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %land.lhs.true

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

land.lhs.true:                                    ; preds = %entry
  %expires = getelementptr inbounds %struct.fib6_info, ptr %rt, i32 0, i32 6
  %3 = ptrtoint ptr %expires to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %expires, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool1.not = icmp eq i32 %4, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end4_crit_edge, label %if.then

land.lhs.true.if.end4_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.then:                                          ; preds = %land.lhs.true
  %sub = sub i32 %4, %0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %more = getelementptr inbounds %struct.fib6_gc_args, ptr %arg, i32 0, i32 1
  %5 = ptrtoint ptr %more to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %more, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr %more, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.end, %land.lhs.true.if.end4_crit_edge, %entry.if.end4_crit_edge
  tail call void @rt6_age_exceptions(ptr noundef %rt, ptr noundef %arg, i32 noundef %0) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -1, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fib6_init() local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.7, i32 noundef 40, i32 noundef 0, i32 noundef 67117056, ptr noundef null) #13
  store ptr %call, ptr @fib6_node_kmem, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @fib6_net_ops) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.out_kmem_cache_create_crit_edge

if.end.out_kmem_cache_create_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_kmem_cache_create

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @rtnl_register_module(ptr noundef null, i32 noundef 10, i32 noundef 26, ptr noundef null, ptr noundef nonnull @inet6_dump_fib, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %out_unregister_subsys

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @__fib6_flush_trees to i32))
  store ptr @fib6_flush_trees, ptr @__fib6_flush_trees, align 4
  br label %out

out:                                              ; preds = %out_kmem_cache_create, %if.end8, %entry.out_crit_edge
  %ret.0 = phi i32 [ %ret.1, %out_kmem_cache_create ], [ 0, %if.end8 ], [ -12, %entry.out_crit_edge ]
  ret i32 %ret.0

out_unregister_subsys:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @fib6_net_ops) #13
  br label %out_kmem_cache_create

out_kmem_cache_create:                            ; preds = %out_unregister_subsys, %if.end.out_kmem_cache_create_crit_edge
  %ret.1 = phi i32 [ %call1, %if.end.out_kmem_cache_create_crit_edge ], [ %call5, %out_unregister_subsys ]
  %0 = load ptr, ptr @fib6_node_kmem, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #13
  br label %out
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_register_module(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inet6_dump_fib(ptr noundef %skb, ptr noundef %cb) #0 align 64 {
entry:
  %arg = alloca %struct.rt6_rtnl_dump_arg, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %arg) #13
  %0 = call ptr @memcpy(ptr %arg, ptr @__const.inet6_dump_fib.arg, i32 32)
  %nlh1 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %1 = ptrtoint ptr %nlh1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %nlh1, align 4
  %3 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %skc_net.i, align 4
  %strict_check = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 12
  %8 = ptrtoint ptr %strict_check to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %strict_check, align 4, !range !287
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %filter = getelementptr inbounds %struct.rt6_rtnl_dump_arg, ptr %arg, i32 0, i32 3
  %call2 = call i32 @ip_valid_fib_dump_req(ptr noundef %7, ptr noundef %2, ptr noundef %filter, ptr noundef %cb) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.then.cleanup115_crit_edge, label %if.then.if.end13_crit_edge

if.then.if.end13_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

if.then.cleanup115_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup115

if.else:                                          ; preds = %entry
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %2, align 4
  %12 = add i32 %11, -28
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %12)
  %cmp5 = icmp ult i32 %12, -12
  br i1 %cmp5, label %if.then6, label %if.else.if.end13_crit_edge

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

if.then6:                                         ; preds = %if.else
  %rtm_flags = getelementptr i8, ptr %2, i32 24
  %13 = ptrtoint ptr %rtm_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rtm_flags, align 4
  %and = and i32 %14, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.then6.if.end13_crit_edge, label %if.then9

if.then6.if.end13_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

if.then9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  %flags = getelementptr inbounds %struct.rt6_rtnl_dump_arg, ptr %arg, i32 0, i32 3, i32 6
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2048, ptr %flags, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.then6.if.end13_crit_edge, %if.else.if.end13_crit_edge, %if.then.if.end13_crit_edge
  %16 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %arrayidx = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 2
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  %19 = inttoptr i32 %18 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool14.not = icmp eq i32 %18, 0
  br i1 %tobool14.not, label %if.then15, label %if.end13.if.end23_crit_edge

if.end13.if.end23_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

if.then15:                                        ; preds = %if.end13
  %done = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 3
  %20 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %done, align 4
  %22 = ptrtoint ptr %21 to i32
  %arrayidx16 = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 3
  %23 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx16, align 4
  store ptr @fib6_dump_done, ptr %done, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 2848, i32 noundef 44) #17
  %tobool19.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool19.not, label %if.then15.cleanup115_crit_edge, label %if.end21

if.then15.cleanup115_crit_edge:                   ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup115

if.end21:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  %func = getelementptr inbounds %struct.fib6_walker, ptr %call7.i.i, i32 0, i32 8
  %25 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @fib6_dump_node, ptr %func, align 4
  %26 = ptrtoint ptr %call7.i.i to i32
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.end21, %if.end13.if.end23_crit_edge
  %w.0 = phi ptr [ %19, %if.end13.if.end23_crit_edge ], [ %call7.i.i, %if.end21 ]
  %28 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %skb, ptr %arg, align 4
  %cb25 = getelementptr inbounds %struct.rt6_rtnl_dump_arg, ptr %arg, i32 0, i32 1
  %29 = ptrtoint ptr %cb25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %cb, ptr %cb25, align 4
  %net26 = getelementptr inbounds %struct.rt6_rtnl_dump_arg, ptr %arg, i32 0, i32 2
  %30 = ptrtoint ptr %net26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %7, ptr %net26, align 4
  %args = getelementptr inbounds %struct.fib6_walker, ptr %w.0, i32 0, i32 9
  %31 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %arg, ptr %args, align 4
  %filter27 = getelementptr inbounds %struct.rt6_rtnl_dump_arg, ptr %arg, i32 0, i32 3
  %32 = ptrtoint ptr %filter27 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %filter27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool28.not = icmp eq i32 %33, 0
  br i1 %tobool28.not, label %if.end53, label %if.then29

if.then29:                                        ; preds = %if.end23
  %call32 = call ptr @fib6_get_table(ptr noundef %7, i32 noundef %33)
  %tobool33.not = icmp eq ptr %call32, null
  br i1 %tobool33.not, label %if.then34, label %if.end43

if.then34:                                        ; preds = %if.then29
  %34 = ptrtoint ptr %nlh1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %nlh1, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %37)
  %cmp.not.i = icmp eq i32 %37, 16
  br i1 %cmp.not.i, label %if.then34.cond.end110_crit_edge, label %rtnl_msg_family.exit

if.then34.cond.end110_crit_edge:                  ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end110

rtnl_msg_family.exit:                             ; preds = %if.then34
  %add.ptr.i.i = getelementptr i8, ptr %35, i32 16
  %38 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %add.ptr.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %39)
  %cmp37.not = icmp eq i8 %39, 10
  br i1 %cmp37.not, label %do.body, label %rtnl_msg_family.exit.cond.end110_crit_edge

rtnl_msg_family.exit.cond.end110_crit_edge:       ; preds = %rtnl_msg_family.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end110

do.body:                                          ; preds = %rtnl_msg_family.exit
  %extack = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 6
  %40 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %extack, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @inet6_dump_fib.__msg) #13
  %tobool40.not = icmp eq ptr %41, null
  br i1 %tobool40.not, label %do.body.cleanup115_crit_edge, label %if.then41

do.body.cleanup115_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup115

if.then41:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @inet6_dump_fib.__msg, ptr %41, align 4
  br label %cleanup115

if.end43:                                         ; preds = %if.then29
  %43 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool45.not = icmp eq i32 %44, 0
  br i1 %tobool45.not, label %if.then46, label %if.end43.cond.end110_crit_edge

if.end43.cond.end110_crit_edge:                   ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end110

if.then46:                                        ; preds = %if.end43
  %call47 = call fastcc i32 @fib6_dump_table(ptr noundef nonnull %call32, ptr noundef %skb, ptr noundef %cb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.then49, label %if.then46.out_crit_edge

if.then46.out_crit_edge:                          ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then49:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #15
  %45 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %16, align 4
  br label %cond.end110

if.end53:                                         ; preds = %if.end23
  %46 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %16, align 4
  %arrayidx55 = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 1
  %48 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx55, align 4
  %50 = call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i.i.i = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %53, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !259
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %if.end53.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end53.rcu_read_lock.exit_crit_edge:            ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end53
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end53.rcu_read_lock.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %47)
  %cmp56212 = icmp ult i32 %47, 256
  br i1 %cmp56212, label %for.body.lr.ph, label %rcu_read_lock.exit.out_unlock_crit_edge

rcu_read_lock.exit.out_unlock_crit_edge:          ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock

for.body.lr.ph:                                   ; preds = %rcu_read_lock.exit
  %fib_table_hash = getelementptr inbounds %struct.net, ptr %7, i32 0, i32 36, i32 10
  br label %for.body

for.body:                                         ; preds = %for.inc102.for.body_crit_edge, %for.body.lr.ph
  %h.0214 = phi i32 [ %47, %for.body.lr.ph ], [ %inc103, %for.inc102.for.body_crit_edge ]
  %s_e.0213 = phi i32 [ %49, %for.body.lr.ph ], [ 0, %for.inc102.for.body_crit_edge ]
  %54 = ptrtoint ptr %fib_table_hash to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %fib_table_hash, align 4
  %arrayidx57 = getelementptr %struct.hlist_head, ptr %55, i32 %h.0214
  %call59 = call i32 @rcu_read_lock_any_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %for.body.do.end68_crit_edge

for.body.do.end68_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end68

land.lhs.true:                                    ; preds = %for.body
  %call61 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b181 = load i1, ptr @inet6_dump_fib.__warned, align 1
  br i1 %.b181, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @inet6_dump_fib.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 694, ptr noundef nonnull @.str.2) #13
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %for.body.do.end68_crit_edge
  %56 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %56)
  %tb.0207 = load volatile ptr, ptr %arrayidx57, align 4
  %tobool77.not208 = icmp eq ptr %tb.0207, null
  br i1 %tobool77.not208, label %do.end68.for.inc102_crit_edge, label %do.end68.for.body78_crit_edge

do.end68.for.body78_crit_edge:                    ; preds = %do.end68
  br label %for.body78

do.end68.for.inc102_crit_edge:                    ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc102

for.body78:                                       ; preds = %next.for.body78_crit_edge, %do.end68.for.body78_crit_edge
  %tb.0211 = phi ptr [ %tb.0, %next.for.body78_crit_edge ], [ %tb.0207, %do.end68.for.body78_crit_edge ]
  %e.1209 = phi i32 [ %inc, %next.for.body78_crit_edge ], [ 0, %do.end68.for.body78_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %e.1209, i32 %s_e.0213)
  %cmp79 = icmp ult i32 %e.1209, %s_e.0213
  br i1 %cmp79, label %for.body78.next_crit_edge, label %if.end81

for.body78.next_crit_edge:                        ; preds = %for.body78
  call void @__sanitizer_cov_trace_pc() #15
  br label %next

if.end81:                                         ; preds = %for.body78
  %call82 = call fastcc i32 @fib6_dump_table(ptr noundef nonnull %tb.0211, ptr noundef %skb, ptr noundef %cb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %cmp83.not = icmp eq i32 %call82, 0
  br i1 %cmp83.not, label %if.end81.next_crit_edge, label %if.end81.out_unlock_crit_edge

if.end81.out_unlock_crit_edge:                    ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock

if.end81.next_crit_edge:                          ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #15
  br label %next

next:                                             ; preds = %if.end81.next_crit_edge, %for.body78.next_crit_edge
  %inc = add i32 %e.1209, 1
  %57 = ptrtoint ptr %tb.0211 to i32
  call void @__asan_load4_noabort(i32 %57)
  %tb.0 = load volatile ptr, ptr %tb.0211, align 4
  %tobool77.not = icmp eq ptr %tb.0, null
  br i1 %tobool77.not, label %next.for.inc102_crit_edge, label %next.for.body78_crit_edge

next.for.body78_crit_edge:                        ; preds = %next
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body78

next.for.inc102_crit_edge:                        ; preds = %next
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc102

for.inc102:                                       ; preds = %next.for.inc102_crit_edge, %do.end68.for.inc102_crit_edge
  %e.1.lcssa = phi i32 [ 0, %do.end68.for.inc102_crit_edge ], [ %inc, %next.for.inc102_crit_edge ]
  %inc103 = add nuw nsw i32 %h.0214, 1
  %exitcond.not = icmp eq i32 %inc103, 256
  br i1 %exitcond.not, label %for.inc102.out_unlock_crit_edge, label %for.inc102.for.body_crit_edge

for.inc102.for.body_crit_edge:                    ; preds = %for.inc102
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc102.out_unlock_crit_edge:                  ; preds = %for.inc102
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock

out_unlock:                                       ; preds = %for.inc102.out_unlock_crit_edge, %if.end81.out_unlock_crit_edge, %rcu_read_lock.exit.out_unlock_crit_edge
  %h.0205 = phi i32 [ %47, %rcu_read_lock.exit.out_unlock_crit_edge ], [ %h.0214, %if.end81.out_unlock_crit_edge ], [ 256, %for.inc102.out_unlock_crit_edge ]
  %res.3 = phi i32 [ 0, %rcu_read_lock.exit.out_unlock_crit_edge ], [ %call82, %if.end81.out_unlock_crit_edge ], [ 0, %for.inc102.out_unlock_crit_edge ]
  %e.2 = phi i32 [ 0, %rcu_read_lock.exit.out_unlock_crit_edge ], [ %e.1209, %if.end81.out_unlock_crit_edge ], [ %e.1.lcssa, %for.inc102.out_unlock_crit_edge ]
  %call.i184 = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i184, label %out_unlock.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i187

out_unlock.rcu_read_unlock.exit_crit_edge:        ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i187:                               ; preds = %out_unlock
  %call1.i185 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i185)
  %tobool.not.i186 = icmp eq i32 %call1.i185, 0
  br i1 %tobool.not.i186, label %land.lhs.true.i187.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i189

land.lhs.true.i187.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i187
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i189:                              ; preds = %land.lhs.true.i187
  %.b4.i188 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i188, label %land.lhs.true2.i189.rcu_read_unlock.exit_crit_edge, label %if.then.i190

land.lhs.true2.i189.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i189
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i190:                                     ; preds = %land.lhs.true2.i189
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.11) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i190, %land.lhs.true2.i189.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i187.rcu_read_unlock.exit_crit_edge, %out_unlock.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !260
  %58 = call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i.i.i191 = and i32 %58, -16384
  %59 = inttoptr i32 %and.i.i.i.i.i191 to ptr
  %preempt_count.i.i.i.i192 = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %preempt_count.i.i.i.i192 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %preempt_count.i.i.i.i192, align 4
  %sub.i.i.i = add i32 %61, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i192, align 4
  call void @rcu_read_unlock_strict() #13
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  %62 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %e.2, ptr %arrayidx55, align 4
  %63 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %h.0205, ptr %16, align 4
  br label %out

out:                                              ; preds = %rcu_read_unlock.exit, %if.then46.out_crit_edge
  %res.4 = phi i32 [ %call47, %if.then46.out_crit_edge ], [ %res.3, %rcu_read_unlock.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.4)
  %cmp107 = icmp slt i32 %res.4, 0
  br i1 %cmp107, label %out.if.then113_crit_edge, label %out.cond.end110_crit_edge

out.cond.end110_crit_edge:                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end110

out.if.then113_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then113

cond.end110:                                      ; preds = %out.cond.end110_crit_edge, %if.then49, %if.end43.cond.end110_crit_edge, %rtnl_msg_family.exit.cond.end110_crit_edge, %if.then34.cond.end110_crit_edge
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %64 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %65)
  %cmp112 = icmp slt i32 %65, 1
  br i1 %cmp112, label %cond.end110.if.then113_crit_edge, label %cond.end110.cleanup115_crit_edge

cond.end110.cleanup115_crit_edge:                 ; preds = %cond.end110
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup115

cond.end110.if.then113_crit_edge:                 ; preds = %cond.end110
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then113

if.then113:                                       ; preds = %cond.end110.if.then113_crit_edge, %out.if.then113_crit_edge
  %cond111201 = phi i32 [ %65, %cond.end110.if.then113_crit_edge ], [ %res.4, %out.if.then113_crit_edge ]
  %66 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %cb, align 4
  %68 = getelementptr inbounds %struct.sk_buff, ptr %67, i32 0, i32 1
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 4
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %70, i32 0, i32 9
  %71 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %skc_net.i.i, align 4
  %73 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx, align 4
  %75 = inttoptr i32 %74 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool.not.i193 = icmp eq i32 %74, 0
  br i1 %tobool.not.i193, label %if.then113.fib6_dump_end.exit_crit_edge, label %if.then.i194

if.then113.fib6_dump_end.exit_crit_edge:          ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #15
  br label %fib6_dump_end.exit

if.then.i194:                                     ; preds = %if.then113
  %arrayidx1.i = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 4
  %76 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool2.not.i = icmp eq i32 %77, 0
  br i1 %tobool2.not.i, label %if.then.i194.if.end.i_crit_edge, label %if.then3.i

if.then.i194.if.end.i_crit_edge:                  ; preds = %if.then.i194
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then3.i:                                       ; preds = %if.then.i194
  %78 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %arrayidx1.i, align 4
  %fib6_walker_lock.i.i = getelementptr inbounds %struct.net, ptr %72, i32 0, i32 36, i32 13
  call void @_raw_write_lock_bh(ptr noundef %fib6_walker_lock.i.i) #13
  %call.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %75) #13
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then3.i.fib6_walker_unlink.exit.i_crit_edge

if.then3.i.fib6_walker_unlink.exit.i_crit_edge:   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %fib6_walker_unlink.exit.i

if.end.i.i.i.i:                                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %75, i32 0, i32 1
  %79 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %prev.i.i.i.i, align 4
  %81 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %75, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %80, ptr %prev1.i.i.i.i.i, align 4
  %84 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile ptr %82, ptr %80, align 4
  br label %fib6_walker_unlink.exit.i

fib6_walker_unlink.exit.i:                        ; preds = %if.end.i.i.i.i, %if.then3.i.fib6_walker_unlink.exit.i_crit_edge
  %85 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr inttoptr (i32 256 to ptr), ptr %75, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %75, i32 0, i32 1
  %86 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  call void @_raw_write_unlock_bh(ptr noundef %fib6_walker_lock.i.i) #13
  br label %if.end.i

if.end.i:                                         ; preds = %fib6_walker_unlink.exit.i, %if.then.i194.if.end.i_crit_edge
  %87 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %arrayidx, align 4
  call void @kfree(ptr noundef nonnull %75) #13
  br label %fib6_dump_end.exit

fib6_dump_end.exit:                               ; preds = %if.end.i, %if.then113.fib6_dump_end.exit_crit_edge
  %arrayidx7.i = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 3
  %88 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx7.i, align 4
  %90 = inttoptr i32 %89 to ptr
  %done.i = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 3
  %91 = ptrtoint ptr %done.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %90, ptr %done.i, align 4
  %arrayidx8.i = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 1
  %92 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 3, ptr %arrayidx8.i, align 4
  br label %cleanup115

cleanup115:                                       ; preds = %fib6_dump_end.exit, %cond.end110.cleanup115_crit_edge, %if.then41, %do.body.cleanup115_crit_edge, %if.then15.cleanup115_crit_edge, %if.then.cleanup115_crit_edge
  %retval.1 = phi i32 [ %call2, %if.then.cleanup115_crit_edge ], [ -12, %if.then15.cleanup115_crit_edge ], [ -2, %if.then41 ], [ -2, %do.body.cleanup115_crit_edge ], [ %cond111201, %fib6_dump_end.exit ], [ %65, %cond.end110.cleanup115_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %arg) #13
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fib6_flush_trees(ptr noundef %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %fib6_sernum.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 33
  br label %do.body.i

do.body.i:                                        ; preds = %atomic_cmpxchg.exit.i.do.body.i_crit_edge, %entry
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %fib6_sernum.i, i32 noundef 4) #13
  %0 = ptrtoint ptr %fib6_sernum.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %fib6_sernum.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 2147483647
  %add.i = add i32 %1, 1
  %spec.select.i = select i1 %cmp.not.i, i32 1, i32 %add.i
  %call.i.i10.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fib6_sernum.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !250
  tail call void @llvm.prefetch.p0(ptr %fib6_sernum.i, i32 1, i32 3, i32 1) #13
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge, %do.body.i
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %fib6_sernum.i, ptr %fib6_sernum.i, i32 %1, i32 %spec.select.i, ptr elementtype(i32) %fib6_sernum.i) #13, !srcloc !251
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %2, 0
  %tobool.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %atomic_cmpxchg.exit.i, label %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge

do.body.i.i.i.i.do.body.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i.i.i

atomic_cmpxchg.exit.i:                            ; preds = %do.body.i.i.i.i
  %asmresult3.i.i.i.i = extractvalue { i32, i32 } %2, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !252
  %cmp4.not.i = icmp eq i32 %asmresult3.i.i.i.i, %1
  br i1 %cmp4.not.i, label %fib6_new_sernum.exit, label %atomic_cmpxchg.exit.i.do.body.i_crit_edge

atomic_cmpxchg.exit.i.do.body.i_crit_edge:        ; preds = %atomic_cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

fib6_new_sernum.exit:                             ; preds = %atomic_cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @__fib6_clean_all(ptr noundef %net, ptr noundef null, i32 noundef %spec.select.i, ptr noundef null, i1 noundef zeroext false)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fib6_gc_cleanup() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @fib6_net_ops) #13
  %0 = load ptr, ptr @fib6_node_kmem, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ipv6_route_seq_start(ptr nocapture noundef readonly %seq, ptr nocapture noundef readonly %pos) #0 align 64 {
entry:
  %p = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call fastcc void @local_bh_disable() #13
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_bh_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %entry.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock_bh.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock_bh.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock_bh.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock_bh.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock_bh.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 750, ptr noundef nonnull @.str.78) #13
  br label %rcu_read_lock_bh.exit

rcu_read_lock_bh.exit:                            ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, %entry.rcu_read_lock_bh.exit_crit_edge
  %fib_table_hash.i = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 36, i32 10
  br label %while.body.i

while.body.i:                                     ; preds = %do.end28.i.while.body.i_crit_edge, %rcu_read_lock_bh.exit
  %h.144.i = phi i32 [ 0, %rcu_read_lock_bh.exit ], [ %inc.i, %do.end28.i.while.body.i_crit_edge ]
  %4 = ptrtoint ptr %fib_table_hash.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fib_table_hash.i, align 4
  %inc.i = add nuw nsw i32 %h.144.i, 1
  %arrayidx.i = getelementptr %struct.hlist_head, ptr %5, i32 %h.144.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %arrayidx.i, align 4
  %call18.i = tail call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %land.lhs.true20.i, label %while.body.i.do.end28.i_crit_edge

while.body.i.do.end28.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end28.i

land.lhs.true20.i:                                ; preds = %while.body.i
  %call21.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i, label %land.lhs.true20.i.do.end28.i_crit_edge, label %land.lhs.true23.i

land.lhs.true20.i.do.end28.i_crit_edge:           ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end28.i

land.lhs.true23.i:                                ; preds = %land.lhs.true20.i
  %.b3839.i = load i1, ptr @ipv6_route_seq_next_table.__warned.79, align 1
  br i1 %.b3839.i, label %land.lhs.true23.i.do.end28.i_crit_edge, label %if.then25.i

land.lhs.true23.i.do.end28.i_crit_edge:           ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end28.i

if.then25.i:                                      ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @ipv6_route_seq_next_table.__warned.79, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2568, ptr noundef nonnull @.str.46) #13
  br label %do.end28.i

do.end28.i:                                       ; preds = %if.then25.i, %land.lhs.true23.i.do.end28.i_crit_edge, %land.lhs.true20.i.do.end28.i_crit_edge, %while.body.i.do.end28.i_crit_edge
  %tobool12.not.i = icmp eq ptr %7, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %h.144.i)
  %cmp.i = icmp ult i32 %h.144.i, 255
  %or.cond.i = select i1 %tobool12.not.i, i1 %cmp.i, i1 false
  br i1 %or.cond.i, label %do.end28.i.while.body.i_crit_edge, label %ipv6_route_seq_next_table.exit

do.end28.i.while.body.i_crit_edge:                ; preds = %do.end28.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

ipv6_route_seq_next_table.exit:                   ; preds = %do.end28.i
  %tbl = getelementptr inbounds %struct.ipv6_route_iter, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %tbl to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %tbl, align 8
  %9 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %pos, align 8
  %skip = getelementptr inbounds %struct.ipv6_route_iter, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %skip to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %skip, align 8
  br i1 %tobool12.not.i, label %ipv6_route_seq_next_table.exit.cleanup_crit_edge, label %if.then

ipv6_route_seq_next_table.exit.cleanup_crit_edge: ; preds = %ipv6_route_seq_next_table.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then:                                          ; preds = %ipv6_route_seq_next_table.exit
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %p) #13
  %12 = ptrtoint ptr %p to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 0, ptr %p, align 8
  %w.i = getelementptr inbounds %struct.ipv6_route_iter, ptr %1, i32 0, i32 1
  %13 = call ptr @memset(ptr %w.i, i32 0, i32 40)
  %func.i = getelementptr inbounds %struct.ipv6_route_iter, ptr %1, i32 0, i32 1, i32 8
  %14 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @ipv6_route_yield, ptr %func.i, align 4
  %tb6_root.i = getelementptr inbounds %struct.fib6_table, ptr %7, i32 0, i32 3
  %root.i = getelementptr inbounds %struct.ipv6_route_iter, ptr %1, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %root.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %tb6_root.i, ptr %root.i, align 8
  %node.i = getelementptr inbounds %struct.ipv6_route_iter, ptr %1, i32 0, i32 1, i32 2
  %16 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %tb6_root.i, ptr %node.i, align 4
  %args.i = getelementptr inbounds %struct.ipv6_route_iter, ptr %1, i32 0, i32 1, i32 9
  %17 = ptrtoint ptr %args.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %1, ptr %args.i, align 8
  %fn_sernum.i = getelementptr inbounds %struct.fib6_table, ptr %7, i32 0, i32 3, i32 7
  %18 = ptrtoint ptr %fn_sernum.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %fn_sernum.i, align 4
  %sernum.i = getelementptr inbounds %struct.ipv6_route_iter, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %sernum.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %sernum.i, align 4
  %21 = ptrtoint ptr %w.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %w.i, ptr %w.i, align 4
  %prev.i.i = getelementptr inbounds %struct.ipv6_route_iter, ptr %1, i32 0, i32 1, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %w.i, ptr %prev.i.i, align 4
  %fib6_walker_lock.i.i = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 36, i32 13
  tail call void @_raw_write_lock_bh(ptr noundef %fib6_walker_lock.i.i) #13
  %fib6_walkers.i.i = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 36, i32 12
  %23 = ptrtoint ptr %fib6_walkers.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fib6_walkers.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %w.i, ptr noundef %fib6_walkers.i.i, ptr noundef %24) #13
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.ipv6_route_seq_setup_walk.exit_crit_edge

if.then.ipv6_route_seq_setup_walk.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %ipv6_route_seq_setup_walk.exit

if.end.i.i.i.i:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %w.i, ptr %prev1.i.i.i.i, align 4
  %26 = ptrtoint ptr %w.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %24, ptr %w.i, align 4
  %27 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %fib6_walkers.i.i, ptr %prev.i.i, align 4
  %28 = ptrtoint ptr %fib6_walkers.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %w.i, ptr %fib6_walkers.i.i, align 4
  br label %ipv6_route_seq_setup_walk.exit

ipv6_route_seq_setup_walk.exit:                   ; preds = %if.end.i.i.i.i, %if.then.ipv6_route_seq_setup_walk.exit_crit_edge
  tail call void @_raw_write_unlock_bh(ptr noundef %fib6_walker_lock.i.i) #13
  %call3 = call ptr @ipv6_route_seq_next(ptr noundef %seq, ptr noundef null, ptr noundef nonnull %p)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %p) #13
  br label %cleanup

cleanup:                                          ; preds = %ipv6_route_seq_setup_walk.exit, %ipv6_route_seq_next_table.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ %call3, %ipv6_route_seq_setup_walk.exit ], [ null, %ipv6_route_seq_next_table.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipv6_route_seq_stop(ptr noundef %seq, ptr noundef readnone %v) #0 align 64 {
entry:
  %ctx.i = alloca %struct.bpf_iter__ipv6_route, align 8
  %meta = alloca %struct.bpf_iter_meta, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %meta) #13
  %tobool.not = icmp eq ptr %v, null
  %0 = call ptr @memset(ptr %meta, i32 255, i32 24)
  br i1 %tobool.not, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.then:                                          ; preds = %entry
  %1 = ptrtoint ptr %meta to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %seq, ptr %meta, align 8
  %call = call ptr @bpf_iter_get_info(ptr noundef nonnull %meta, i1 noundef zeroext true) #13
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.then.if.end4_crit_edge, label %if.then2

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ctx.i) #13
  %2 = getelementptr inbounds %struct.bpf_iter__ipv6_route, ptr %ctx.i, i32 0, i32 1
  %3 = call ptr @memset(ptr %ctx.i, i32 255, i32 16)
  %4 = ptrtoint ptr %ctx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %meta, ptr %ctx.i, align 8
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %2, align 8
  %call.i = call i32 @bpf_iter_run_prog(ptr noundef nonnull %call, ptr noundef nonnull %ctx.i) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ctx.i) #13
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %private.i.i = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %6 = ptrtoint ptr %private.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private.i.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %node.i.i = getelementptr inbounds %struct.ipv6_route_iter, ptr %7, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %node.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %node.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.end4.if.end.i_crit_edge, label %land.rhs.i.i

if.end4.if.end.i_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

land.rhs.i.i:                                     ; preds = %if.end4
  %state.i.i = getelementptr inbounds %struct.ipv6_route_iter, ptr %7, i32 0, i32 1, i32 4
  %12 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %cmp.i.i = icmp eq i32 %13, 4
  br i1 %cmp.i.i, label %ipv6_route_iter_active.exit.i, label %land.rhs.i.i.if.then.i_crit_edge

land.rhs.i.i.if.then.i_crit_edge:                 ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

ipv6_route_iter_active.exit.i:                    ; preds = %land.rhs.i.i
  %root.i.i = getelementptr inbounds %struct.ipv6_route_iter, ptr %7, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %root.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %root.i.i, align 4
  %cmp4.i.not.i = icmp eq ptr %11, %15
  br i1 %cmp4.i.not.i, label %ipv6_route_iter_active.exit.i.if.end.i_crit_edge, label %ipv6_route_iter_active.exit.i.if.then.i_crit_edge

ipv6_route_iter_active.exit.i.if.then.i_crit_edge: ; preds = %ipv6_route_iter_active.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

ipv6_route_iter_active.exit.i.if.end.i_crit_edge: ; preds = %ipv6_route_iter_active.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %ipv6_route_iter_active.exit.i.if.then.i_crit_edge, %land.rhs.i.i.if.then.i_crit_edge
  %w.i = getelementptr inbounds %struct.ipv6_route_iter, ptr %7, i32 0, i32 1
  %fib6_walker_lock.i.i = getelementptr inbounds %struct.net, ptr %9, i32 0, i32 36, i32 13
  call void @_raw_write_lock_bh(ptr noundef %fib6_walker_lock.i.i) #13
  %call.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %w.i) #13
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.fib6_walker_unlink.exit.i_crit_edge

if.then.i.fib6_walker_unlink.exit.i_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %fib6_walker_unlink.exit.i

if.end.i.i.i.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i.i = getelementptr inbounds %struct.ipv6_route_iter, ptr %7, i32 0, i32 1, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i.i.i, align 4
  %18 = ptrtoint ptr %w.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %w.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %fib6_walker_unlink.exit.i

fib6_walker_unlink.exit.i:                        ; preds = %if.end.i.i.i.i, %if.then.i.fib6_walker_unlink.exit.i_crit_edge
  %22 = ptrtoint ptr %w.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 256 to ptr), ptr %w.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.ipv6_route_iter, ptr %7, i32 0, i32 1, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  call void @_raw_write_unlock_bh(ptr noundef %fib6_walker_lock.i.i) #13
  br label %if.end.i

if.end.i:                                         ; preds = %fib6_walker_unlink.exit.i, %ipv6_route_iter_active.exit.i.if.end.i_crit_edge, %if.end4.if.end.i_crit_edge
  %call.i.i = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i, label %if.end.i.ipv6_route_native_seq_stop.exit_crit_edge, label %land.lhs.true.i.i

if.end.i.ipv6_route_native_seq_stop.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ipv6_route_native_seq_stop.exit

land.lhs.true.i.i:                                ; preds = %if.end.i
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i1.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i1.i, label %land.lhs.true.i.i.ipv6_route_native_seq_stop.exit_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.ipv6_route_native_seq_stop.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ipv6_route_native_seq_stop.exit

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.ipv6_route_native_seq_stop.exit_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.ipv6_route_native_seq_stop.exit_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ipv6_route_native_seq_stop.exit

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 761, ptr noundef nonnull @.str.80) #13
  br label %ipv6_route_native_seq_stop.exit

ipv6_route_native_seq_stop.exit:                  ; preds = %if.then.i.i, %land.lhs.true2.i.i.ipv6_route_native_seq_stop.exit_crit_edge, %land.lhs.true.i.i.ipv6_route_native_seq_stop.exit_crit_edge, %if.end.i.ipv6_route_native_seq_stop.exit_crit_edge
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #13
  call fastcc void @local_bh_enable() #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %meta) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ipv6_route_seq_next(ptr nocapture noundef readonly %seq, ptr noundef %v, ptr nocapture noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pos, align 8
  %inc = add i64 %5, 1
  store i64 %inc, ptr %pos, align 8
  %tobool.not = icmp eq ptr %v, null
  br i1 %tobool.not, label %entry.iter_table.preheader_crit_edge, label %if.end

entry.iter_table.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %iter_table.preheader

if.end:                                           ; preds = %entry
  %fib6_next = getelementptr inbounds %struct.fib6_info, ptr %v, i32 0, i32 1
  %6 = ptrtoint ptr %fib6_next to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %fib6_next, align 4
  %call2 = tail call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true, label %if.end.do.end11_crit_edge

if.end.do.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end11

land.lhs.true:                                    ; preds = %if.end
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end11_crit_edge, label %land.lhs.true6

land.lhs.true.do.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end11

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b54 = load i1, ptr @ipv6_route_seq_next.__warned, align 1
  br i1 %.b54, label %land.lhs.true6.do.end11_crit_edge, label %if.then8

land.lhs.true6.do.end11_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end11

if.then8:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @ipv6_route_seq_next.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2597, ptr noundef nonnull @.str.46) #13
  br label %do.end11

do.end11:                                         ; preds = %if.then8, %land.lhs.true6.do.end11_crit_edge, %land.lhs.true.do.end11_crit_edge, %if.end.do.end11_crit_edge
  %tobool13.not = icmp eq ptr %7, null
  br i1 %tobool13.not, label %do.end11.iter_table.preheader_crit_edge, label %do.end11.cleanup_crit_edge

do.end11.cleanup_crit_edge:                       ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end11.iter_table.preheader_crit_edge:          ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %iter_table.preheader

iter_table.preheader:                             ; preds = %do.end11.iter_table.preheader_crit_edge, %entry.iter_table.preheader_crit_edge
  %root.i = getelementptr inbounds %struct.ipv6_route_iter, ptr %1, i32 0, i32 1, i32 1
  %sernum1.i = getelementptr inbounds %struct.ipv6_route_iter, ptr %1, i32 0, i32 4
  %state.i = getelementptr inbounds %struct.ipv6_route_iter, ptr %1, i32 0, i32 1, i32 4
  %node.i = getelementptr inbounds %struct.ipv6_route_iter, ptr %1, i32 0, i32 1, i32 2
  %skip.i = getelementptr inbounds %struct.ipv6_route_iter, ptr %1, i32 0, i32 1, i32 5
  %count.i = getelementptr inbounds %struct.ipv6_route_iter, ptr %1, i32 0, i32 1, i32 6
  %tbl = getelementptr inbounds %struct.ipv6_route_iter, ptr %1, i32 0, i32 3
  %w = getelementptr inbounds %struct.ipv6_route_iter, ptr %1, i32 0, i32 1
  %fib6_walker_lock.i55 = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 36, i32 13
  %prev.i.i.i57 = getelementptr inbounds %struct.ipv6_route_iter, ptr %1, i32 0, i32 1, i32 0, i32 1
  %func.i = getelementptr inbounds %struct.ipv6_route_iter, ptr %1, i32 0, i32 1, i32 8
  %args.i = getelementptr inbounds %struct.ipv6_route_iter, ptr %1, i32 0, i32 1, i32 9
  %fib6_walkers.i.i = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 36, i32 12
  br label %iter_table

iter_table:                                       ; preds = %ipv6_route_seq_setup_walk.exit, %iter_table.preheader
  %8 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %root.i, align 8
  %fn_sernum.i = getelementptr inbounds %struct.fib6_node, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %fn_sernum.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %fn_sernum.i, align 4
  %12 = ptrtoint ptr %sernum1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sernum1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %11)
  %cmp.not.i = icmp eq i32 %13, %11
  br i1 %cmp.not.i, label %iter_table.ipv6_route_check_sernum.exit_crit_edge, label %if.then.i

iter_table.ipv6_route_check_sernum.exit_crit_edge: ; preds = %iter_table
  call void @__sanitizer_cov_trace_pc() #15
  br label %ipv6_route_check_sernum.exit

if.then.i:                                        ; preds = %iter_table
  %14 = ptrtoint ptr %sernum1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %11, ptr %sernum1.i, align 4
  %15 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %state.i, align 4
  %16 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %9, ptr %node.i, align 4
  %17 = ptrtoint ptr %skip.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %skip.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i, label %if.then.i.if.end.i_crit_edge, label %do.end19.i, !prof !253

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

do.end19.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2581, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end19.i, %if.then.i.if.end.i_crit_edge
  %19 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %count.i, align 4
  %21 = ptrtoint ptr %skip.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %skip.i, align 8
  br label %ipv6_route_check_sernum.exit

ipv6_route_check_sernum.exit:                     ; preds = %if.end.i, %iter_table.ipv6_route_check_sernum.exit_crit_edge
  %22 = ptrtoint ptr %tbl to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tbl, align 8
  %tb6_lock = getelementptr inbounds %struct.fib6_table, ptr %23, i32 0, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %tb6_lock) #13
  %call16 = tail call fastcc i32 @fib6_walk_continue(ptr noundef %w)
  %24 = ptrtoint ptr %tbl to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tbl, align 8
  %tb6_lock18 = getelementptr inbounds %struct.fib6_table, ptr %25, i32 0, i32 2
  tail call void @_raw_spin_unlock_bh(ptr noundef %tb6_lock18) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp = icmp sgt i32 %call16, 0
  br i1 %cmp, label %if.then19, label %if.else

if.then19:                                        ; preds = %ipv6_route_check_sernum.exit
  call void @__sanitizer_cov_trace_pc() #15
  %leaf = getelementptr inbounds %struct.ipv6_route_iter, ptr %1, i32 0, i32 1, i32 3
  %26 = ptrtoint ptr %leaf to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %leaf, align 8
  br label %cleanup

if.else:                                          ; preds = %ipv6_route_check_sernum.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp21 = icmp slt i32 %call16, 0
  tail call void @_raw_write_lock_bh(ptr noundef %fib6_walker_lock.i55) #13
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %w) #13
  br i1 %cmp21, label %if.then22, label %if.end25

if.then22:                                        ; preds = %if.else
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then22.fib6_walker_unlink.exit_crit_edge

if.then22.fib6_walker_unlink.exit_crit_edge:      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #15
  br label %fib6_walker_unlink.exit

if.end.i.i.i:                                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #15
  %28 = ptrtoint ptr %prev.i.i.i57 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i.i.i57, align 4
  %30 = ptrtoint ptr %w to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %w, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev1.i.i.i.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %31, ptr %29, align 4
  br label %fib6_walker_unlink.exit

fib6_walker_unlink.exit:                          ; preds = %if.end.i.i.i, %if.then22.fib6_walker_unlink.exit_crit_edge
  %34 = ptrtoint ptr %w to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 256 to ptr), ptr %w, align 4
  %35 = ptrtoint ptr %prev.i.i.i57 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i57, align 4
  tail call void @_raw_write_unlock_bh(ptr noundef %fib6_walker_lock.i55) #13
  br label %cleanup

if.end25:                                         ; preds = %if.else
  br i1 %call.i.i.i, label %if.end.i.i.i59, label %if.end25.fib6_walker_unlink.exit61_crit_edge

if.end25.fib6_walker_unlink.exit61_crit_edge:     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %fib6_walker_unlink.exit61

if.end.i.i.i59:                                   ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  %36 = ptrtoint ptr %prev.i.i.i57 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i.i.i57, align 4
  %38 = ptrtoint ptr %w to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %w, align 4
  %prev1.i.i.i.i58 = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %prev1.i.i.i.i58 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev1.i.i.i.i58, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %39, ptr %37, align 4
  br label %fib6_walker_unlink.exit61

fib6_walker_unlink.exit61:                        ; preds = %if.end.i.i.i59, %if.end25.fib6_walker_unlink.exit61_crit_edge
  %42 = ptrtoint ptr %w to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr inttoptr (i32 256 to ptr), ptr %w, align 4
  %43 = ptrtoint ptr %prev.i.i.i57 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i57, align 4
  tail call void @_raw_write_unlock_bh(ptr noundef %fib6_walker_lock.i55) #13
  %44 = ptrtoint ptr %tbl to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %tbl, align 8
  %call28 = tail call fastcc ptr @ipv6_route_seq_next_table(ptr noundef %45, ptr noundef %3)
  %46 = ptrtoint ptr %tbl to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call28, ptr %tbl, align 8
  %tobool31.not = icmp eq ptr %call28, null
  br i1 %tobool31.not, label %fib6_walker_unlink.exit61.cleanup_crit_edge, label %if.end33

fib6_walker_unlink.exit61.cleanup_crit_edge:      ; preds = %fib6_walker_unlink.exit61
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end33:                                         ; preds = %fib6_walker_unlink.exit61
  %47 = call ptr @memset(ptr %w, i32 0, i32 40)
  %48 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @ipv6_route_yield, ptr %func.i, align 4
  %tb6_root.i = getelementptr inbounds %struct.fib6_table, ptr %call28, i32 0, i32 3
  %49 = ptrtoint ptr %root.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %tb6_root.i, ptr %root.i, align 8
  %50 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %tb6_root.i, ptr %node.i, align 4
  %51 = ptrtoint ptr %args.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %1, ptr %args.i, align 8
  %fn_sernum.i64 = getelementptr inbounds %struct.fib6_table, ptr %call28, i32 0, i32 3, i32 7
  %52 = ptrtoint ptr %fn_sernum.i64 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %fn_sernum.i64, align 4
  %54 = ptrtoint ptr %sernum1.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %sernum1.i, align 4
  %55 = ptrtoint ptr %w to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %w, ptr %w, align 4
  %56 = ptrtoint ptr %prev.i.i.i57 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %w, ptr %prev.i.i.i57, align 4
  tail call void @_raw_write_lock_bh(ptr noundef %fib6_walker_lock.i55) #13
  %57 = ptrtoint ptr %fib6_walkers.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %fib6_walkers.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %w, ptr noundef %fib6_walkers.i.i, ptr noundef %58) #13
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end33.ipv6_route_seq_setup_walk.exit_crit_edge

if.end33.ipv6_route_seq_setup_walk.exit_crit_edge: ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %ipv6_route_seq_setup_walk.exit

if.end.i.i.i.i:                                   ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i.i.i66 = getelementptr inbounds %struct.list_head, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %prev1.i.i.i.i66 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %w, ptr %prev1.i.i.i.i66, align 4
  %60 = ptrtoint ptr %w to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %58, ptr %w, align 4
  %61 = ptrtoint ptr %prev.i.i.i57 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %fib6_walkers.i.i, ptr %prev.i.i.i57, align 4
  %62 = ptrtoint ptr %fib6_walkers.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %w, ptr %fib6_walkers.i.i, align 4
  br label %ipv6_route_seq_setup_walk.exit

ipv6_route_seq_setup_walk.exit:                   ; preds = %if.end.i.i.i.i, %if.end33.ipv6_route_seq_setup_walk.exit_crit_edge
  tail call void @_raw_write_unlock_bh(ptr noundef %fib6_walker_lock.i55) #13
  br label %iter_table

cleanup:                                          ; preds = %fib6_walker_unlink.exit61.cleanup_crit_edge, %fib6_walker_unlink.exit, %if.then19, %do.end11.cleanup_crit_edge
  %retval.0 = phi ptr [ %27, %if.then19 ], [ null, %fib6_walker_unlink.exit ], [ %7, %do.end11.cleanup_crit_edge ], [ null, %fib6_walker_unlink.exit61.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipv6_route_seq_show(ptr noundef %seq, ptr noundef %v) #0 align 64 {
entry:
  %ctx.i = alloca %struct.bpf_iter__ipv6_route, align 8
  %meta = alloca %struct.bpf_iter_meta, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %meta) #13
  %2 = call ptr @memset(ptr %meta, i32 255, i32 24)
  %3 = ptrtoint ptr %meta to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %seq, ptr %meta, align 8
  %call = call ptr @bpf_iter_get_info(ptr noundef nonnull %meta, i1 noundef zeroext false) #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private, align 8
  %fib6_nh1.i = getelementptr inbounds %struct.fib6_info, ptr %v, i32 0, i32 21
  %fib6_flags.i = getelementptr inbounds %struct.fib6_info, ptr %v, i32 0, i32 9
  %6 = ptrtoint ptr %fib6_flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fib6_flags.i, align 4
  %nh.i = getelementptr inbounds %struct.fib6_info, ptr %v, i32 0, i32 20
  %8 = ptrtoint ptr %nh.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nh.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %if.then.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  %is_group.i.i = getelementptr inbounds %struct.nexthop, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %is_group.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %is_group.i.i, align 2, !range !287
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i.i, label %if.then.i.if.end16.i.i_crit_edge, label %if.then.i.i

if.then.i.if.end16.i.i_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16.i.i

if.then.i.i:                                      ; preds = %if.then.i
  %12 = getelementptr inbounds %struct.nexthop, ptr %9, i32 0, i32 12
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %12, align 4
  %call.i.i = call zeroext i1 @lockdep_rtnl_is_held() #13
  br i1 %call.i.i, label %if.then.i.i.do.end10.i.i_crit_edge, label %lor.lhs.false.i.i

if.then.i.i.do.end10.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end10.i.i

lor.lhs.false.i.i:                                ; preds = %if.then.i.i
  %call2.i.i = call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.do.end10.i.i_crit_edge

lor.lhs.false.i.i.do.end10.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end10.i.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call4.i.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %land.lhs.true.i.i.do.end10.i.i_crit_edge, label %land.lhs.true6.i.i

land.lhs.true.i.i.do.end10.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end10.i.i

land.lhs.true6.i.i:                               ; preds = %land.lhs.true.i.i
  %.b46.i.i = load i1, ptr @nexthop_fib6_nh_bh.__warned, align 1
  br i1 %.b46.i.i, label %land.lhs.true6.i.i.do.end10.i.i_crit_edge, label %if.then8.i.i

land.lhs.true6.i.i.do.end10.i.i_crit_edge:        ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end10.i.i

if.then8.i.i:                                     ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @nexthop_fib6_nh_bh.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.86, i32 noundef 510, ptr noundef nonnull @.str.46) #13
  br label %do.end10.i.i

do.end10.i.i:                                     ; preds = %if.then8.i.i, %land.lhs.true6.i.i.do.end10.i.i_crit_edge, %land.lhs.true.i.i.do.end10.i.i_crit_edge, %lor.lhs.false.i.i.do.end10.i.i_crit_edge, %if.then.i.i.do.end10.i.i_crit_edge
  %num_nh.i.i.i = getelementptr inbounds %struct.nh_group, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %num_nh.i.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %num_nh.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %cmp.i.i.i = icmp eq i16 %16, 0
  br i1 %cmp.i.i.i, label %do.end10.i.i.if.end.i_crit_edge, label %nexthop_mpath_select.exit.i.i

do.end10.i.i.if.end.i_crit_edge:                  ; preds = %do.end10.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

nexthop_mpath_select.exit.i.i:                    ; preds = %do.end10.i.i
  %nh_entries.i.i.i = getelementptr inbounds %struct.nh_group, ptr %14, i32 0, i32 8
  %17 = ptrtoint ptr %nh_entries.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %nh_entries.i.i.i, align 4
  %tobool13.not.i.i = icmp eq ptr %18, null
  br i1 %tobool13.not.i.i, label %nexthop_mpath_select.exit.i.i.if.end.i_crit_edge, label %nexthop_mpath_select.exit.i.i.if.end16.i.i_crit_edge

nexthop_mpath_select.exit.i.i.if.end16.i.i_crit_edge: ; preds = %nexthop_mpath_select.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16.i.i

nexthop_mpath_select.exit.i.i.if.end.i_crit_edge: ; preds = %nexthop_mpath_select.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.end16.i.i:                                     ; preds = %nexthop_mpath_select.exit.i.i.if.end16.i.i_crit_edge, %if.then.i.if.end16.i.i_crit_edge
  %nh.addr.0.i.i = phi ptr [ %18, %nexthop_mpath_select.exit.i.i.if.end16.i.i_crit_edge ], [ %9, %if.then.i.if.end16.i.i_crit_edge ]
  %19 = getelementptr inbounds %struct.nexthop, ptr %nh.addr.0.i.i, i32 0, i32 12
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %19, align 4
  %call22.i.i = call zeroext i1 @lockdep_rtnl_is_held() #13
  br i1 %call22.i.i, label %if.end16.i.i.do.end34.i.i_crit_edge, label %lor.lhs.false23.i.i

if.end16.i.i.do.end34.i.i_crit_edge:              ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end34.i.i

lor.lhs.false23.i.i:                              ; preds = %if.end16.i.i
  %call24.i.i = call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i.i)
  %tobool25.not.i.i = icmp eq i32 %call24.i.i, 0
  br i1 %tobool25.not.i.i, label %land.lhs.true26.i.i, label %lor.lhs.false23.i.i.do.end34.i.i_crit_edge

lor.lhs.false23.i.i.do.end34.i.i_crit_edge:       ; preds = %lor.lhs.false23.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end34.i.i

land.lhs.true26.i.i:                              ; preds = %lor.lhs.false23.i.i
  %call27.i.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i)
  %tobool28.not.i.i = icmp eq i32 %call27.i.i, 0
  br i1 %tobool28.not.i.i, label %land.lhs.true26.i.i.do.end34.i.i_crit_edge, label %land.lhs.true29.i.i

land.lhs.true26.i.i.do.end34.i.i_crit_edge:       ; preds = %land.lhs.true26.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end34.i.i

land.lhs.true29.i.i:                              ; preds = %land.lhs.true26.i.i
  %.b4445.i.i = load i1, ptr @nexthop_fib6_nh_bh.__warned.87, align 1
  br i1 %.b4445.i.i, label %land.lhs.true29.i.i.do.end34.i.i_crit_edge, label %if.then31.i.i

land.lhs.true29.i.i.do.end34.i.i_crit_edge:       ; preds = %land.lhs.true29.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end34.i.i

if.then31.i.i:                                    ; preds = %land.lhs.true29.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @nexthop_fib6_nh_bh.__warned.87, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.86, i32 noundef 516, ptr noundef nonnull @.str.46) #13
  br label %do.end34.i.i

do.end34.i.i:                                     ; preds = %if.then31.i.i, %land.lhs.true29.i.i.do.end34.i.i_crit_edge, %land.lhs.true26.i.i.do.end34.i.i_crit_edge, %lor.lhs.false23.i.i.do.end34.i.i_crit_edge, %if.end16.i.i.do.end34.i.i_crit_edge
  %family.i.i = getelementptr inbounds %struct.nh_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %family.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %family.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %23)
  %cmp.i.i = icmp eq i8 %23, 10
  %24 = getelementptr inbounds %struct.nh_info, ptr %21, i32 0, i32 5
  %spec.select.i.i = select i1 %cmp.i.i, ptr %24, ptr null
  br label %if.end.i

if.end.i:                                         ; preds = %do.end34.i.i, %nexthop_mpath_select.exit.i.i.if.end.i_crit_edge, %do.end10.i.i.if.end.i_crit_edge, %if.then.if.end.i_crit_edge
  %fib6_nh.0.i = phi ptr [ %fib6_nh1.i, %if.then.if.end.i_crit_edge ], [ null, %nexthop_mpath_select.exit.i.i.if.end.i_crit_edge ], [ %spec.select.i.i, %do.end34.i.i ], [ null, %do.end10.i.i.if.end.i_crit_edge ]
  %fib6_dst.i = getelementptr inbounds %struct.fib6_info, ptr %v, i32 0, i32 8
  %plen.i = getelementptr inbounds %struct.fib6_info, ptr %v, i32 0, i32 8, i32 1
  %25 = ptrtoint ptr %plen.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %plen.i, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.81, ptr noundef %fib6_dst.i, i32 noundef %26) #13
  %fib6_src.i = getelementptr inbounds %struct.fib6_info, ptr %v, i32 0, i32 10
  %plen6.i = getelementptr inbounds %struct.fib6_info, ptr %v, i32 0, i32 10, i32 1
  %27 = ptrtoint ptr %plen6.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %plen6.i, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.81, ptr noundef %fib6_src.i, i32 noundef %28) #13
  %nhc_gw_family.i = getelementptr inbounds %struct.fib_nh_common, ptr %fib6_nh.0.i, i32 0, i32 5
  %29 = ptrtoint ptr %nhc_gw_family.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %nhc_gw_family.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool7.not.i = icmp eq i8 %30, 0
  br i1 %tobool7.not.i, label %if.else.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %or.i = or i32 %7, 2
  %nhc_gw.i = getelementptr inbounds %struct.fib_nh_common, ptr %fib6_nh.0.i, i32 0, i32 8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.82, ptr noundef %nhc_gw.i) #13
  br label %ipv6_route_native_seq_show.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.83) #13
  br label %ipv6_route_native_seq_show.exit

ipv6_route_native_seq_show.exit:                  ; preds = %if.else.i, %if.then8.i
  %flags.0.i = phi i32 [ %or.i, %if.then8.i ], [ %7, %if.else.i ]
  %31 = ptrtoint ptr %fib6_nh.0.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fib6_nh.0.i, align 4
  %fib6_metric.i = getelementptr inbounds %struct.fib6_info, ptr %v, i32 0, i32 12
  %33 = ptrtoint ptr %fib6_metric.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %fib6_metric.i, align 4
  %fib6_ref.i = getelementptr inbounds %struct.fib6_info, ptr %v, i32 0, i32 5
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %fib6_ref.i, i32 noundef 4) #13
  %35 = ptrtoint ptr %fib6_ref.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %fib6_ref.i, align 4
  %tobool13.not.i = icmp eq ptr %32, null
  %spec.select.i = select i1 %tobool13.not.i, ptr @.str.85, ptr %32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.84, i32 noundef %34, i32 noundef %36, i32 noundef 0, i32 noundef %flags.0.i, ptr noundef nonnull %spec.select.i) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ctx.i) #13
  %37 = getelementptr inbounds %struct.bpf_iter__ipv6_route, ptr %ctx.i, i32 0, i32 1
  %38 = call ptr @memset(ptr %ctx.i, i32 255, i32 16)
  %39 = ptrtoint ptr %ctx.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %meta, ptr %ctx.i, align 8
  %40 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %v, ptr %37, align 8
  %call.i = call i32 @bpf_iter_run_prog(ptr noundef nonnull %call, ptr noundef nonnull %ctx.i) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ctx.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ipv6_route_native_seq_show.exit
  %.sink = phi ptr [ %1, %if.end ], [ %5, %ipv6_route_native_seq_show.exit ]
  %retval.0 = phi i32 [ %call.i, %if.end ], [ 0, %ipv6_route_native_seq_show.exit ]
  %leaf = getelementptr inbounds %struct.ipv6_route_iter, ptr %.sink, i32 0, i32 1, i32 3
  %41 = ptrtoint ptr %leaf to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %leaf, align 8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %meta) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nexthop_free_rcu(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_peer_base_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr noundef %map) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_acquire(ptr noundef %map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr noundef %map) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_release(ptr noundef %map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_fib6_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fib6_walk(ptr noundef %net, ptr noundef %w) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.fib6_walker, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %state, align 4
  %root = getelementptr inbounds %struct.fib6_walker, ptr %w, i32 0, i32 1
  %1 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %root, align 4
  %node = getelementptr inbounds %struct.fib6_walker, ptr %w, i32 0, i32 2
  %3 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %node, align 4
  %fib6_walker_lock.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 13
  tail call void @_raw_write_lock_bh(ptr noundef %fib6_walker_lock.i) #13
  %fib6_walkers.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 12
  %4 = ptrtoint ptr %fib6_walkers.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fib6_walkers.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %w, ptr noundef %fib6_walkers.i, ptr noundef %5) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.fib6_walker_link.exit_crit_edge

entry.fib6_walker_link.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %fib6_walker_link.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %w, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %w to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %5, ptr %w, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %w, i32 0, i32 1
  %8 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %fib6_walkers.i, ptr %prev3.i.i.i, align 4
  %9 = ptrtoint ptr %fib6_walkers.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %w, ptr %fib6_walkers.i, align 4
  br label %fib6_walker_link.exit

fib6_walker_link.exit:                            ; preds = %if.end.i.i.i, %entry.fib6_walker_link.exit_crit_edge
  tail call void @_raw_write_unlock_bh(ptr noundef %fib6_walker_lock.i) #13
  %call = tail call fastcc i32 @fib6_walk_continue(ptr noundef %w)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %if.then, label %fib6_walker_link.exit.if.end_crit_edge

fib6_walker_link.exit.if.end_crit_edge:           ; preds = %fib6_walker_link.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %fib6_walker_link.exit
  tail call void @_raw_write_lock_bh(ptr noundef %fib6_walker_lock.i) #13
  %call.i.i.i9 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %w) #13
  br i1 %call.i.i.i9, label %if.end.i.i.i10, label %if.then.fib6_walker_unlink.exit_crit_edge

if.then.fib6_walker_unlink.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %fib6_walker_unlink.exit

if.end.i.i.i10:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %w, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i.i, align 4
  %12 = ptrtoint ptr %w to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %w, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %fib6_walker_unlink.exit

fib6_walker_unlink.exit:                          ; preds = %if.end.i.i.i10, %if.then.fib6_walker_unlink.exit_crit_edge
  %16 = ptrtoint ptr %w to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 256 to ptr), ptr %w, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %w, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_write_unlock_bh(ptr noundef %fib6_walker_lock.i) #13
  br label %if.end

if.end:                                           ; preds = %fib6_walker_unlink.exit, %fib6_walker_link.exit.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fib6_walk_continue(ptr noundef %w) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %root = getelementptr inbounds %struct.fib6_walker, ptr %w, i32 0, i32 1
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root, align 4
  %fn_flags = getelementptr inbounds %struct.fib6_node, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %fn_flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %fn_flags, align 2
  %4 = and i16 %3, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end30_crit_edge

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

land.rhs:                                         ; preds = %entry
  %.b268 = load i1, ptr @fib6_walk_continue.__already_done, align 1
  br i1 %.b268, label %land.rhs.if.end30_crit_edge, label %if.then, !prof !253

land.rhs.if.end30_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @fib6_walk_continue.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2068, i32 noundef 9, ptr noundef null) #13
  br label %if.end30

if.end30:                                         ; preds = %if.then, %land.rhs.if.end30_crit_edge, %entry.if.end30_crit_edge
  %func = getelementptr inbounds %struct.fib6_walker, ptr %w, i32 0, i32 8
  %node = getelementptr inbounds %struct.fib6_walker, ptr %w, i32 0, i32 2
  %5 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %node, align 4
  %tobool38.not274 = icmp eq ptr %6, null
  br i1 %tobool38.not274, label %if.end30.cleanup211_crit_edge, label %if.end40.lr.ph

if.end30.cleanup211_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup211

if.end40.lr.ph:                                   ; preds = %if.end30
  %state = getelementptr inbounds %struct.fib6_walker, ptr %w, i32 0, i32 4
  %leaf83 = getelementptr inbounds %struct.fib6_walker, ptr %w, i32 0, i32 3
  %skip = getelementptr inbounds %struct.fib6_walker, ptr %w, i32 0, i32 5
  %count = getelementptr inbounds %struct.fib6_walker, ptr %w, i32 0, i32 6
  br label %if.end40

if.end40:                                         ; preds = %for.cond.backedge.if.end40_crit_edge, %if.end40.lr.ph
  %7 = phi ptr [ %6, %if.end40.lr.ph ], [ %15, %for.cond.backedge.if.end40_crit_edge ]
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %if.end40.for.cond.backedgethread-pre-split_crit_edge [
    i32 0, label %do.end43
    i32 1, label %if.end40.do.end58_crit_edge
    i32 2, label %if.end40.do.end70_crit_edge
    i32 3, label %sw.bb84thread-pre-split
    i32 4, label %if.end40.sw.bb102_crit_edge
  ]

if.end40.sw.bb102_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb102

if.end40.do.end70_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end70

if.end40.do.end58_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end58

if.end40.for.cond.backedgethread-pre-split_crit_edge: ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.backedgethread-pre-split

do.end43:                                         ; preds = %if.end40
  %subtree = getelementptr inbounds %struct.fib6_node, ptr %7, i32 0, i32 3
  %11 = ptrtoint ptr %subtree to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %subtree, align 4
  %tobool45.not = icmp eq ptr %12, null
  br i1 %tobool45.not, label %if.end53, label %do.end49

do.end49:                                         ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %node, align 4
  br label %for.cond.backedge

for.cond.backedgethread-pre-split:                ; preds = %do.end197, %if.then175, %if.then170, %if.end158, %cleanup, %if.end40.for.cond.backedgethread-pre-split_crit_edge
  %14 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr = load ptr, ptr %node, align 4
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.then74, %if.then62, %for.cond.backedgethread-pre-split, %do.end49
  %15 = phi ptr [ %.pr, %for.cond.backedgethread-pre-split ], [ %12, %do.end49 ], [ %18, %if.then62 ], [ %23, %if.then74 ]
  %tobool38.not = icmp eq ptr %15, null
  br i1 %tobool38.not, label %for.cond.backedge.cleanup211_crit_edge, label %for.cond.backedge.if.end40_crit_edge

for.cond.backedge.if.end40_crit_edge:             ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

for.cond.backedge.cleanup211_crit_edge:           ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup211

if.end53:                                         ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %state, align 4
  br label %do.end58

do.end58:                                         ; preds = %if.end53, %if.end40.do.end58_crit_edge
  %left60 = getelementptr inbounds %struct.fib6_node, ptr %7, i32 0, i32 1
  %17 = ptrtoint ptr %left60 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %left60, align 4
  %tobool61.not = icmp eq ptr %18, null
  br i1 %tobool61.not, label %if.end65, label %if.then62

if.then62:                                        ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %node, align 4
  %20 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %state, align 4
  br label %for.cond.backedge

if.end65:                                         ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #15
  %21 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2, ptr %state, align 4
  br label %do.end70

do.end70:                                         ; preds = %if.end65, %if.end40.do.end70_crit_edge
  %right72 = getelementptr inbounds %struct.fib6_node, ptr %7, i32 0, i32 2
  %22 = ptrtoint ptr %right72 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %right72, align 4
  %tobool73.not = icmp eq ptr %23, null
  br i1 %tobool73.not, label %if.end77, label %if.then74

if.then74:                                        ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #15
  %24 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %node, align 4
  %25 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %state, align 4
  br label %for.cond.backedge

if.end77:                                         ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #15
  %26 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 3, ptr %state, align 4
  %leaf = getelementptr inbounds %struct.fib6_node, ptr %7, i32 0, i32 4
  %27 = ptrtoint ptr %leaf to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %leaf, align 4
  %29 = ptrtoint ptr %leaf83 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %leaf83, align 4
  br label %sw.bb84

sw.bb84thread-pre-split:                          ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  %30 = ptrtoint ptr %leaf83 to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pr277 = load ptr, ptr %leaf83, align 4
  br label %sw.bb84

sw.bb84:                                          ; preds = %sw.bb84thread-pre-split, %if.end77
  %31 = phi ptr [ %.pr277, %sw.bb84thread-pre-split ], [ %28, %if.end77 ]
  %tobool86.not = icmp eq ptr %31, null
  br i1 %tobool86.not, label %sw.bb84.skip100_crit_edge, label %land.lhs.true

sw.bb84.skip100_crit_edge:                        ; preds = %sw.bb84
  call void @__sanitizer_cov_trace_pc() #15
  br label %skip100

land.lhs.true:                                    ; preds = %sw.bb84
  %fn_flags87 = getelementptr inbounds %struct.fib6_node, ptr %7, i32 0, i32 6
  %32 = ptrtoint ptr %fn_flags87 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %fn_flags87, align 2
  %34 = and i16 %33, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool90.not = icmp eq i16 %34, 0
  br i1 %tobool90.not, label %land.lhs.true.skip100_crit_edge, label %if.then91

land.lhs.true.skip100_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %skip100

if.then91:                                        ; preds = %land.lhs.true
  %35 = ptrtoint ptr %skip to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %skip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool92.not = icmp eq i32 %36, 0
  br i1 %tobool92.not, label %if.end95, label %cleanup.thread271

cleanup.thread271:                                ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #15
  %dec = add i32 %36, -1
  %37 = ptrtoint ptr %skip to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %dec, ptr %skip, align 4
  br label %skip100

if.end95:                                         ; preds = %if.then91
  %38 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %func, align 4
  %call = tail call i32 %39(ptr noundef %w) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool96.not = icmp eq i32 %call, 0
  br i1 %tobool96.not, label %cleanup, label %if.end95.cleanup211_crit_edge

if.end95.cleanup211_crit_edge:                    ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup211

cleanup:                                          ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #15
  %40 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %count, align 4
  %inc = add i32 %41, 1
  store i32 %inc, ptr %count, align 4
  br label %for.cond.backedgethread-pre-split

skip100:                                          ; preds = %cleanup.thread271, %land.lhs.true.skip100_crit_edge, %sw.bb84.skip100_crit_edge
  %42 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 4, ptr %state, align 4
  br label %sw.bb102

sw.bb102:                                         ; preds = %skip100, %if.end40.sw.bb102_crit_edge
  %43 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %root, align 4
  %cmp = icmp eq ptr %7, %44
  br i1 %cmp, label %sw.bb102.cleanup211_crit_edge, label %do.end109

sw.bb102.cleanup211_crit_edge:                    ; preds = %sw.bb102
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup211

do.end109:                                        ; preds = %sw.bb102
  %45 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %7, align 4
  %left115 = getelementptr inbounds %struct.fib6_node, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %left115 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %left115, align 4
  %right120 = getelementptr inbounds %struct.fib6_node, ptr %46, i32 0, i32 2
  %49 = ptrtoint ptr %right120 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %right120, align 4
  %51 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %46, ptr %node, align 4
  %subtree126 = getelementptr inbounds %struct.fib6_node, ptr %46, i32 0, i32 3
  %52 = ptrtoint ptr %subtree126 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %subtree126, align 4
  %cmp127 = icmp eq ptr %53, %7
  br i1 %cmp127, label %if.then129, label %if.end167

if.then129:                                       ; preds = %do.end109
  %fn_flags131 = getelementptr inbounds %struct.fib6_node, ptr %7, i32 0, i32 6
  %54 = ptrtoint ptr %fn_flags131 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %fn_flags131, align 2
  %56 = and i16 %55, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %tobool134.not = icmp eq i16 %56, 0
  br i1 %tobool134.not, label %do.end152, label %if.then129.if.end158_crit_edge, !prof !263

if.then129.if.end158_crit_edge:                   ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end158

do.end152:                                        ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2132, i32 noundef 9, ptr noundef null) #13
  br label %if.end158

if.end158:                                        ; preds = %do.end152, %if.then129.if.end158_crit_edge
  %57 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 1, ptr %state, align 4
  br label %for.cond.backedgethread-pre-split

if.end167:                                        ; preds = %do.end109
  %cmp168 = icmp eq ptr %48, %7
  br i1 %cmp168, label %if.then170, label %if.end172

if.then170:                                       ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #15
  %58 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 2, ptr %state, align 4
  br label %for.cond.backedgethread-pre-split

if.end172:                                        ; preds = %if.end167
  %cmp173 = icmp eq ptr %50, %7
  br i1 %cmp173, label %if.then175, label %do.end197

if.then175:                                       ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #15
  %59 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 3, ptr %state, align 4
  %leaf182 = getelementptr inbounds %struct.fib6_node, ptr %46, i32 0, i32 4
  %60 = ptrtoint ptr %leaf182 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %leaf182, align 4
  %62 = ptrtoint ptr %leaf83 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %61, ptr %leaf83, align 4
  br label %for.cond.backedgethread-pre-split

do.end197:                                        ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2147, i32 noundef 9, ptr noundef null) #13
  br label %for.cond.backedgethread-pre-split

cleanup211:                                       ; preds = %sw.bb102.cleanup211_crit_edge, %if.end95.cleanup211_crit_edge, %for.cond.backedge.cleanup211_crit_edge, %if.end30.cleanup211_crit_edge
  %retval.5 = phi i32 [ 0, %if.end30.cleanup211_crit_edge ], [ %call, %if.end95.cleanup211_crit_edge ], [ 0, %sw.bb102.cleanup211_crit_edge ], [ 0, %for.cond.backedge.cleanup211_crit_edge ]
  ret i32 %retval.5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt6_multipath_rebalance(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet6_rt_notify(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fib6_purge_rt(ptr noundef %rt, ptr noundef %fn, ptr nocapture noundef readonly %net) unnamed_addr #0 align 64 {
entry:
  %arg.i = alloca %struct.fib6_nh_pcpu_arg, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rt, align 4
  tail call void @rt6_flush_exceptions(ptr noundef %rt) #13
  %fib6_destroying.i = getelementptr inbounds %struct.fib6_info, ptr %rt, i32 0, i32 18
  %2 = ptrtoint ptr %fib6_destroying.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i = load i8, ptr %fib6_destroying.i, align 1
  %bf.set.i = or i8 %bf.load.i, 16
  store i8 %bf.set.i, ptr %fib6_destroying.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !288
  tail call void @arm_heavy_mb() #13
  %nh.i = getelementptr inbounds %struct.fib6_info, ptr %rt, i32 0, i32 20
  %3 = ptrtoint ptr %nh.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nh.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %arg.i) #13
  %5 = getelementptr inbounds %struct.fib6_nh_pcpu_arg, ptr %arg.i, i32 0, i32 1
  %6 = ptrtoint ptr %arg.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %rt, ptr %arg.i, align 4
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %1, ptr %5, align 4
  %call.i = call i32 @nexthop_for_each_fib6_nh(ptr noundef nonnull %4, ptr noundef nonnull @fib6_nh_drop_pcpu_from, ptr noundef nonnull %arg.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg.i) #13
  br label %fib6_drop_pcpu_from.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %fib6_nh3.i = getelementptr inbounds %struct.fib6_info, ptr %rt, i32 0, i32 21
  tail call fastcc void @__fib6_drop_pcpu_from(ptr noundef %fib6_nh3.i, ptr noundef %rt) #13
  br label %fib6_drop_pcpu_from.exit

fib6_drop_pcpu_from.exit:                         ; preds = %if.else.i, %if.then.i
  %8 = ptrtoint ptr %nh.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nh.i, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %fib6_drop_pcpu_from.exit.if.end_crit_edge, label %land.lhs.true

fib6_drop_pcpu_from.exit.if.end_crit_edge:        ; preds = %fib6_drop_pcpu_from.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %fib6_drop_pcpu_from.exit
  %10 = getelementptr inbounds %struct.fib6_info, ptr %rt, i32 0, i32 3
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %10, align 4
  %cmp.i.not = icmp eq ptr %12, %10
  br i1 %cmp.i.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %10) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del_init.exit_crit_edge

if.then.list_del_init.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.fib6_info, ptr %rt, i32 0, i32 3, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %10, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then.list_del_init.exit_crit_edge
  %19 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %10, ptr %10, align 4
  %prev.i3.i = getelementptr inbounds %struct.fib6_info, ptr %rt, i32 0, i32 3, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %10, ptr %prev.i3.i, align 4
  br label %if.end

if.end:                                           ; preds = %list_del_init.exit, %land.lhs.true.if.end_crit_edge, %fib6_drop_pcpu_from.exit.if.end_crit_edge
  %fib6_ref = getelementptr inbounds %struct.fib6_info, ptr %rt, i32 0, i32 5
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %fib6_ref, i32 noundef 4) #13
  %21 = ptrtoint ptr %fib6_ref to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %fib6_ref, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp.not = icmp eq i32 %22, 1
  %tobool4.not105 = icmp eq ptr %fn, null
  %or.cond = or i1 %cmp.not, %tobool4.not105
  br i1 %or.cond, label %if.end.if.end77_crit_edge, label %while.body.lr.ph

if.end.if.end77_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end77

while.body.lr.ph:                                 ; preds = %if.end
  %dep_map = getelementptr inbounds %struct.fib6_table, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 4
  %tobool.not.i99 = icmp eq ptr %rt, null
  %rcu.i = getelementptr inbounds %struct.fib6_info, ptr %rt, i32 0, i32 19
  br label %while.body

while.body:                                       ; preds = %do.end75.while.body_crit_edge, %while.body.lr.ph
  %fn.addr.0106 = phi ptr [ %fn, %while.body.lr.ph ], [ %33, %do.end75.while.body_crit_edge ]
  %call.i98 = call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i98)
  %tobool6.not = icmp eq i32 %call.i98, 0
  br i1 %tobool6.not, label %land.lhs.true7, label %while.body.do.end_crit_edge

while.body.do.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true7:                                   ; preds = %while.body
  %call8 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true7.do.end_crit_edge, label %land.lhs.true10

land.lhs.true7.do.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true10:                                  ; preds = %land.lhs.true7
  %.b97 = load i1, ptr @fib6_purge_rt.__warned, align 1
  br i1 %.b97, label %land.lhs.true10.do.end_crit_edge, label %if.then12

land.lhs.true10.do.end_crit_edge:                 ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then12:                                        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @fib6_purge_rt.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1048, ptr noundef nonnull @.str.1) #13
  br label %do.end

do.end:                                           ; preds = %if.then12, %land.lhs.true10.do.end_crit_edge, %land.lhs.true7.do.end_crit_edge, %while.body.do.end_crit_edge
  %leaf14 = getelementptr inbounds %struct.fib6_node, ptr %fn.addr.0106, i32 0, i32 4
  %fn_flags = getelementptr inbounds %struct.fib6_node, ptr %fn.addr.0106, i32 0, i32 6
  %23 = ptrtoint ptr %fn_flags to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %fn_flags, align 2
  %25 = and i16 %24, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool15.not = icmp eq i16 %25, 0
  br i1 %tobool15.not, label %land.lhs.true16, label %do.end.do.body62_crit_edge

do.end.do.body62_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body62

land.lhs.true16:                                  ; preds = %do.end
  %26 = ptrtoint ptr %leaf14 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %leaf14, align 4
  %cmp17 = icmp eq ptr %27, %rt
  br i1 %cmp17, label %if.then19, label %land.lhs.true16.do.body62_crit_edge

land.lhs.true16.do.body62_crit_edge:              ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body62

if.then19:                                        ; preds = %land.lhs.true16
  %call20 = call fastcc ptr @fib6_find_prefix(ptr noundef %net, ptr noundef %1, ptr noundef nonnull %fn.addr.0106)
  %fib6_ref.i = getelementptr inbounds %struct.fib6_info, ptr %call20, i32 0, i32 5
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %fib6_ref.i, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %fib6_ref.i, i32 1, i32 3, i32 1) #13
  %28 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fib6_ref.i, ptr %fib6_ref.i, i32 1, ptr elementtype(i32) %fib6_ref.i) #13, !srcloc !262
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then19.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !263

if.then19.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then19
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %29 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %29)
  %.not.i.i.i.i = icmp sgt i32 %29, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.fib6_info_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !253

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.fib6_info_hold.exit_crit_edge:    ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %fib6_info_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then19.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then19.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %fib6_ref.i, i32 noundef %.sink.i.i.i.i) #13
  br label %fib6_info_hold.exit

fib6_info_hold.exit:                              ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.fib6_info_hold.exit_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !289
  %30 = ptrtoint ptr %leaf14 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %call20, ptr %leaf14, align 4
  br i1 %tobool.not.i99, label %fib6_info_hold.exit.do.body62_crit_edge, label %land.lhs.true.i

fib6_info_hold.exit.do.body62_crit_edge:          ; preds = %fib6_info_hold.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body62

land.lhs.true.i:                                  ; preds = %fib6_info_hold.exit
  %call.i.i.i.i.i.i101 = call zeroext i1 @__kasan_check_write(ptr noundef %fib6_ref, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !254
  call void @llvm.prefetch.p0(ptr %fib6_ref, i32 1, i32 3, i32 1) #13
  %31 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fib6_ref, ptr %fib6_ref, i32 1, ptr elementtype(i32) %fib6_ref) #13, !srcloc !255
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i103, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i102 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i102, label %if.end5.i.i.i.i.do.body62_crit_edge, label %if.then10.i.i.i.i, !prof !253

if.end5.i.i.i.i.do.body62_crit_edge:              ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body62

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef %fib6_ref, i32 noundef 3) #13
  br label %do.body62

if.then.i103:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !256
  call void @call_rcu(ptr noundef %rcu.i, ptr noundef nonnull @fib6_info_destroy_rcu) #13
  br label %do.body62

do.body62:                                        ; preds = %if.then.i103, %if.then10.i.i.i.i, %if.end5.i.i.i.i.do.body62_crit_edge, %fib6_info_hold.exit.do.body62_crit_edge, %land.lhs.true16.do.body62_crit_edge, %do.end.do.body62_crit_edge
  %call.i104 = call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i104)
  %tobool66.not = icmp eq i32 %call.i104, 0
  br i1 %tobool66.not, label %land.lhs.true67, label %do.body62.do.end75_crit_edge

do.body62.do.end75_crit_edge:                     ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end75

land.lhs.true67:                                  ; preds = %do.body62
  %call68 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %land.lhs.true67.do.end75_crit_edge, label %land.lhs.true70

land.lhs.true67.do.end75_crit_edge:               ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end75

land.lhs.true70:                                  ; preds = %land.lhs.true67
  %.b9596 = load i1, ptr @fib6_purge_rt.__warned.45, align 1
  br i1 %.b9596, label %land.lhs.true70.do.end75_crit_edge, label %if.then72

land.lhs.true70.do.end75_crit_edge:               ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end75

if.then72:                                        ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @fib6_purge_rt.__warned.45, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1058, ptr noundef nonnull @.str.1) #13
  br label %do.end75

do.end75:                                         ; preds = %if.then72, %land.lhs.true70.do.end75_crit_edge, %land.lhs.true67.do.end75_crit_edge, %do.body62.do.end75_crit_edge
  %32 = ptrtoint ptr %fn.addr.0106 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %fn.addr.0106, align 4
  %tobool4.not = icmp eq ptr %33, null
  br i1 %tobool4.not, label %do.end75.if.end77_crit_edge, label %do.end75.while.body_crit_edge

do.end75.while.body_crit_edge:                    ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

do.end75.if.end77_crit_edge:                      ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end77

if.end77:                                         ; preds = %do.end75.if.end77_crit_edge, %if.end.if.end77_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lwtunnel_cmp_encap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt6_flush_exceptions(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nexthop_for_each_fib6_nh(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fib6_nh_drop_pcpu_from(ptr nocapture noundef readonly %nh, ptr nocapture noundef readonly %_arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %_arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_arg, align 4
  tail call fastcc void @__fib6_drop_pcpu_from(ptr noundef %nh, ptr noundef %1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__fib6_drop_pcpu_from(ptr nocapture noundef readonly %fib6_nh, ptr noundef readnone %match) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %rt6i_pcpu = getelementptr inbounds %struct.fib6_nh, ptr %fib6_nh, i32 0, i32 2
  %0 = ptrtoint ptr %rt6i_pcpu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rt6i_pcpu, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %call1 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call1, i32 %2)
  %cmp2 = icmp ult i32 %call1, %2
  br i1 %cmp2, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %if.end32.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %call3 = phi i32 [ %call, %if.end32.for.body_crit_edge ], [ %call1, %for.cond.preheader.for.body_crit_edge ]
  %3 = ptrtoint ptr %rt6i_pcpu to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rt6i_pcpu, align 4
  %5 = ptrtoint ptr %4 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call3
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %add = add i32 %7, %5
  %8 = inttoptr i32 %add to ptr
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %tobool3.not = icmp eq ptr %10, null
  br i1 %tobool3.not, label %for.body.if.end32_crit_edge, label %land.lhs.true

for.body.if.end32_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32

land.lhs.true:                                    ; preds = %for.body
  %from = getelementptr inbounds %struct.rt6_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %from to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %from, align 4
  %cmp9 = icmp eq ptr %12, %match
  br i1 %cmp9, label %if.then10, label %land.lhs.true.if.end32_crit_edge

land.lhs.true.if.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32

if.then10:                                        ; preds = %land.lhs.true
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %from, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !290
  tail call void @llvm.prefetch.p0(ptr %from, i32 1, i32 3, i32 1) #13
  %13 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %from) #13, !srcloc !291
  %asmresult.i = extractvalue { i32, i32 } %13, 0
  %14 = inttoptr i32 %asmresult.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !292
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %if.then10.if.end32_crit_edge, label %land.lhs.true.i

if.then10.if.end32_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32

land.lhs.true.i:                                  ; preds = %if.then10
  %fib6_ref.i = getelementptr inbounds %struct.fib6_info, ptr %14, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fib6_ref.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !254
  tail call void @llvm.prefetch.p0(ptr %fib6_ref.i, i32 1, i32 3, i32 1) #13
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fib6_ref.i, ptr %fib6_ref.i, i32 1, ptr elementtype(i32) %fib6_ref.i) #13, !srcloc !255
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end32_crit_edge, label %if.then10.i.i.i.i, !prof !253

if.end5.i.i.i.i.if.end32_crit_edge:               ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %fib6_ref.i, i32 noundef 3) #13
  br label %if.end32

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !256
  %rcu.i = getelementptr inbounds %struct.fib6_info, ptr %14, i32 0, i32 19
  tail call void @call_rcu(ptr noundef %rcu.i, ptr noundef nonnull @fib6_info_destroy_rcu) #13
  br label %if.end32

if.end32:                                         ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end32_crit_edge, %if.then10.if.end32_crit_edge, %land.lhs.true.if.end32_crit_edge, %for.body.if.end32_crit_edge
  %call = tail call i32 @cpumask_next(i32 noundef %call3, ptr noundef nonnull @__cpu_possible_mask) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %16 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %16
  br i1 %cmp, label %if.end32.for.body_crit_edge, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end32.for.body_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cleanup:                                          ; preds = %if.end32.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @node_free_rcu(ptr noundef %head) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %head, i32 -32
  %0 = load ptr, ptr @fib6_node_kmem, align 4
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %add.ptr) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fib6_clean_node(ptr nocapture noundef %w) #0 align 64 {
entry:
  %info = alloca %struct.nl_info, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info) #13
  %0 = getelementptr inbounds i8, ptr %info, i32 12
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %2 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %info, align 4
  %nl_net = getelementptr inbounds %struct.nl_info, ptr %info, i32 0, i32 1
  %net = getelementptr inbounds %struct.fib6_cleaner, ptr %w, i32 0, i32 1
  %3 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %net, align 4
  %5 = ptrtoint ptr %nl_net to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %nl_net, align 4
  %portid = getelementptr inbounds %struct.nl_info, ptr %info, i32 0, i32 2
  %6 = ptrtoint ptr %portid to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %portid, align 4
  %skip_notify = getelementptr inbounds %struct.nl_info, ptr %info, i32 0, i32 3
  %skip_notify1 = getelementptr inbounds %struct.fib6_cleaner, ptr %w, i32 0, i32 5
  %7 = ptrtoint ptr %skip_notify1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %skip_notify1, align 4, !range !287
  %bf.shl = shl nuw i8 %8, 7
  %bf.set = or i8 %bf.shl, 63
  %9 = ptrtoint ptr %skip_notify to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %bf.set, ptr %skip_notify, align 4
  %sernum = getelementptr inbounds %struct.fib6_cleaner, ptr %w, i32 0, i32 3
  %10 = ptrtoint ptr %sernum to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sernum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not = icmp eq i32 %11, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %entry
  %node = getelementptr inbounds %struct.fib6_walker, ptr %w, i32 0, i32 2
  %12 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %node, align 4
  %fn_sernum = getelementptr inbounds %struct.fib6_node, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %fn_sernum to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %fn_sernum, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %11)
  %cmp8.not = icmp eq i32 %15, %11
  br i1 %cmp8.not, label %do.end.if.end_crit_edge, label %do.body14

do.end.if.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.body14:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %fn_sernum to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 %11, ptr %fn_sernum, align 4
  br label %if.end

if.end:                                           ; preds = %do.body14, %do.end.if.end_crit_edge, %entry.if.end_crit_edge
  %func = getelementptr inbounds %struct.fib6_cleaner, ptr %w, i32 0, i32 2
  %17 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %func, align 4
  %tobool22.not = icmp eq ptr %18, null
  br i1 %tobool22.not, label %if.then23, label %if.end69

if.then23:                                        ; preds = %if.end
  %19 = ptrtoint ptr %sernum to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sernum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp25 = icmp eq i32 %20, 0
  br i1 %cmp25, label %land.rhs, label %if.then23.if.end61_crit_edge

if.then23.if.end61_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end61

land.rhs:                                         ; preds = %if.then23
  %.b216 = load i1, ptr @fib6_clean_node.__already_done, align 1
  br i1 %.b216, label %land.rhs.if.end61_crit_edge, label %if.then35, !prof !253

land.rhs.if.end61_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end61

if.then35:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @fib6_clean_node.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2182, i32 noundef 9, ptr noundef null) #13
  br label %if.end61

if.end61:                                         ; preds = %if.then35, %land.rhs.if.end61_crit_edge, %if.then23.if.end61_crit_edge
  %leaf = getelementptr inbounds %struct.fib6_walker, ptr %w, i32 0, i32 3
  br label %cleanup.sink.split

if.end69:                                         ; preds = %if.end
  %leaf70 = getelementptr inbounds %struct.fib6_walker, ptr %w, i32 0, i32 3
  %21 = ptrtoint ptr %leaf70 to i32
  call void @__asan_load4_noabort(i32 %21)
  %rt.0218 = load ptr, ptr %leaf70, align 4
  %tobool71.not219 = icmp eq ptr %rt.0218, null
  br i1 %tobool71.not219, label %if.end69.cleanup.sink.split_crit_edge, label %for.body.lr.ph

if.end69.cleanup.sink.split_crit_edge:            ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

for.body.lr.ph:                                   ; preds = %if.end69
  %arg = getelementptr inbounds %struct.fib6_cleaner, ptr %w, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %do.end179.for.body_crit_edge, %for.body.lr.ph
  %rt.0220 = phi ptr [ %rt.0218, %for.body.lr.ph ], [ %rt.0, %do.end179.for.body_crit_edge ]
  %22 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %func, align 4
  %24 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arg, align 4
  %call = call i32 %23(ptr noundef nonnull %rt.0220, ptr noundef %25) #13
  %26 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %call, label %do.end163 [
    i32 -1, label %if.then75
    i32 -2, label %if.then103
    i32 0, label %for.body.do.end179_crit_edge
  ], !prof !293

for.body.do.end179_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end179

if.then75:                                        ; preds = %for.body
  %27 = ptrtoint ptr %leaf70 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %rt.0220, ptr %leaf70, align 4
  %call77 = call i32 @fib6_del(ptr noundef nonnull %rt.0220, ptr noundef nonnull %info)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.then75.cleanup_crit_edge, label %do.body80

if.then75.cleanup_crit_edge:                      ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body80:                                        ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fib6_clean_node.__UNIQUE_ID_ddebug733, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fib6_clean_node, %if.then91)) #13
          to label %do.end179 [label %if.then91], !srcloc !294

if.then91:                                        ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #15
  %fib6_node = getelementptr inbounds %struct.fib6_info, ptr %rt.0220, i32 0, i32 2
  %28 = ptrtoint ptr %fib6_node to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %fib6_node, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fib6_clean_node.__UNIQUE_ID_ddebug733, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.70, ptr noundef nonnull %rt.0220, ptr noundef %29, i32 noundef %call77) #13
  br label %do.end179

if.then103:                                       ; preds = %for.body
  %fib6_nsiblings = getelementptr inbounds %struct.fib6_info, ptr %rt.0220, i32 0, i32 4
  %30 = ptrtoint ptr %fib6_nsiblings to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %fib6_nsiblings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool105.not = icmp eq i32 %31, 0
  br i1 %tobool105.not, label %do.end123, label %if.end139.critedge, !prof !263

do.end123:                                        ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2203, i32 noundef 9, ptr noundef null) #13
  br label %do.end179

if.end139.critedge:                               ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #15
  %prev = getelementptr inbounds %struct.fib6_info, ptr %rt.0220, i32 0, i32 3, i32 0, i32 1
  %32 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev, align 4
  %add.ptr142 = getelementptr i8, ptr %33, i32 -12
  br label %do.end179

do.end163:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2209, i32 noundef 9, ptr noundef null) #13
  br label %do.end179

do.end179:                                        ; preds = %do.end163, %if.end139.critedge, %do.end123, %if.then91, %do.body80, %for.body.do.end179_crit_edge
  %rt.1 = phi ptr [ %rt.0220, %if.then91 ], [ %add.ptr142, %if.end139.critedge ], [ %rt.0220, %do.end123 ], [ %rt.0220, %for.body.do.end179_crit_edge ], [ %rt.0220, %do.end163 ], [ %rt.0220, %do.body80 ]
  %fib6_next = getelementptr inbounds %struct.fib6_info, ptr %rt.1, i32 0, i32 1
  %34 = ptrtoint ptr %fib6_next to i32
  call void @__asan_load4_noabort(i32 %34)
  %rt.0 = load ptr, ptr %fib6_next, align 4
  %tobool71.not = icmp eq ptr %rt.0, null
  br i1 %tobool71.not, label %do.end179.cleanup.sink.split_crit_edge, label %do.end179.for.body_crit_edge

do.end179.for.body_crit_edge:                     ; preds = %do.end179
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

do.end179.cleanup.sink.split_crit_edge:           ; preds = %do.end179
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end179.cleanup.sink.split_crit_edge, %if.end69.cleanup.sink.split_crit_edge, %if.end61
  %leaf70.sink = phi ptr [ %leaf, %if.end61 ], [ %leaf70, %if.end69.cleanup.sink.split_crit_edge ], [ %leaf70, %do.end179.cleanup.sink.split_crit_edge ]
  %35 = ptrtoint ptr %leaf70.sink to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %leaf70.sink, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then75.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt6_age_exceptions(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fib6_net_init(ptr noundef %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fib6_notifier_init(ptr noundef %net) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %multipath_hash_fields = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 1, i32 13
  %0 = ptrtoint ptr %multipath_hash_fields to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 7, ptr %multipath_hash_fields, align 4
  %fib6_gc_lock = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 14
  tail call void @__raw_spin_lock_init(ptr noundef %fib6_gc_lock, ptr noundef nonnull @.str.73, ptr noundef nonnull @fib6_net_init.__key, i16 noundef signext 3) #13
  %fib6_walker_lock = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 13
  tail call void @__rwlock_init(ptr noundef %fib6_walker_lock, ptr noundef nonnull @.str.75, ptr noundef nonnull @fib6_net_init.__key.74) #13
  %fib6_walkers = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 12
  %1 = ptrtoint ptr %fib6_walkers to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %fib6_walkers, ptr %fib6_walkers, align 4
  %prev.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 12, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %fib6_walkers, ptr %prev.i, align 4
  %ip6_fib_timer = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 9
  tail call void @init_timer_key(ptr noundef %ip6_fib_timer, ptr noundef nonnull @fib6_gc_timer_cb, i32 noundef 0, ptr noundef nonnull @.str.77, ptr noundef nonnull @fib6_net_init.__key.76) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 28) #17
  %rt6_stats = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 8
  %4 = ptrtoint ptr %rt6_stats to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %rt6_stats, align 8
  %tobool16.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool16.not, label %if.end.out_notifier_crit_edge, label %cond.end

if.end.out_notifier_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_notifier

cond.end:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i188 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 1024) #17
  %fib_table_hash = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 10
  %6 = ptrtoint ptr %fib_table_hash to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i188, ptr %fib_table_hash, align 4
  %tobool23.not = icmp eq ptr %call7.i.i188, null
  br i1 %tobool23.not, label %cond.end.out_rt6_stats_crit_edge, label %if.end25

cond.end.out_rt6_stats_crit_edge:                 ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_rt6_stats

if.end25:                                         ; preds = %cond.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i189 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 192) #17
  %fib6_main_tbl = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 11
  %8 = ptrtoint ptr %fib6_main_tbl to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i189, ptr %fib6_main_tbl, align 16
  %tobool30.not = icmp eq ptr %call7.i.i189, null
  br i1 %tobool30.not, label %if.end25.out_fib_table_hash_crit_edge, label %if.end32

if.end25.out_fib_table_hash_crit_edge:            ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_fib_table_hash

if.end32:                                         ; preds = %if.end25
  %tb6_id = getelementptr inbounds %struct.fib6_table, ptr %call7.i.i189, i32 0, i32 1
  %9 = ptrtoint ptr %tb6_id to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 254, ptr %tb6_id, align 8
  %fib6_null_entry = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 6
  %10 = ptrtoint ptr %fib6_null_entry to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fib6_null_entry, align 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !295
  %12 = ptrtoint ptr %fib6_main_tbl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fib6_main_tbl, align 16
  %leaf66 = getelementptr inbounds %struct.fib6_table, ptr %13, i32 0, i32 3, i32 4
  %14 = ptrtoint ptr %leaf66 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %11, ptr %leaf66, align 4
  %15 = load ptr, ptr %fib6_main_tbl, align 16
  %fn_flags = getelementptr inbounds %struct.fib6_table, ptr %15, i32 0, i32 3, i32 6
  %16 = ptrtoint ptr %fn_flags to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 7, ptr %fn_flags, align 2
  %17 = load ptr, ptr %fib6_main_tbl, align 16
  %tb6_peers = getelementptr inbounds %struct.fib6_table, ptr %17, i32 0, i32 4
  tail call void @inet_peer_base_init(ptr noundef %tb6_peers) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i190 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 192) #17
  %fib6_local_tbl = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 23
  %19 = ptrtoint ptr %fib6_local_tbl to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7.i.i190, ptr %fib6_local_tbl, align 16
  %tobool87.not = icmp eq ptr %call7.i.i190, null
  br i1 %tobool87.not, label %out_fib6_main_tbl, label %if.end89

if.end89:                                         ; preds = %if.end32
  %tb6_id92 = getelementptr inbounds %struct.fib6_table, ptr %call7.i.i190, i32 0, i32 1
  %20 = ptrtoint ptr %tb6_id92 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 255, ptr %tb6_id92, align 8
  %21 = ptrtoint ptr %fib6_null_entry to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fib6_null_entry, align 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !296
  %23 = ptrtoint ptr %fib6_local_tbl to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fib6_local_tbl, align 16
  %leaf130 = getelementptr inbounds %struct.fib6_table, ptr %24, i32 0, i32 3, i32 4
  %25 = ptrtoint ptr %leaf130 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %22, ptr %leaf130, align 4
  %26 = load ptr, ptr %fib6_local_tbl, align 16
  %fn_flags145 = getelementptr inbounds %struct.fib6_table, ptr %26, i32 0, i32 3, i32 6
  %27 = ptrtoint ptr %fn_flags145 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 7, ptr %fn_flags145, align 2
  %28 = load ptr, ptr %fib6_local_tbl, align 16
  %tb6_peers148 = getelementptr inbounds %struct.fib6_table, ptr %28, i32 0, i32 4
  tail call void @inet_peer_base_init(ptr noundef %tb6_peers148) #13
  %29 = ptrtoint ptr %fib6_main_tbl to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fib6_main_tbl, align 16
  %tb6_lock.i.i = getelementptr inbounds %struct.fib6_table, ptr %30, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %tb6_lock.i.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @fib6_link_table.__key, i16 noundef signext 3) #13
  %tb6_id.i.i = getelementptr inbounds %struct.fib6_table, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %tb6_id.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tb6_id.i.i, align 4
  %and.i.i = and i32 %32, 255
  %33 = ptrtoint ptr %fib_table_hash to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fib_table_hash, align 4
  %arrayidx.i.i = getelementptr %struct.hlist_head, ptr %34, i32 %and.i.i
  %35 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.i.i, align 4
  %37 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %30, align 4
  %pprev.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %30, i32 0, i32 1
  %38 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %arrayidx.i.i, ptr %pprev.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !258
  %39 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %30, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %36, null
  br i1 %tobool.not.i.i.i, label %if.end89.fib6_link_table.exit.i_crit_edge, label %do.body49.i.i.i

if.end89.fib6_link_table.exit.i_crit_edge:        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #15
  br label %fib6_link_table.exit.i

do.body49.i.i.i:                                  ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #15
  %pprev51.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %36, i32 0, i32 1
  %40 = ptrtoint ptr %pprev51.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %30, ptr %pprev51.i.i.i, align 4
  br label %fib6_link_table.exit.i

fib6_link_table.exit.i:                           ; preds = %do.body49.i.i.i, %if.end89.fib6_link_table.exit.i_crit_edge
  %41 = ptrtoint ptr %fib6_local_tbl to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %fib6_local_tbl, align 16
  %tb6_lock.i5.i = getelementptr inbounds %struct.fib6_table, ptr %42, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %tb6_lock.i5.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @fib6_link_table.__key, i16 noundef signext 3) #13
  %tb6_id.i6.i = getelementptr inbounds %struct.fib6_table, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %tb6_id.i6.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %tb6_id.i6.i, align 4
  %and.i7.i = and i32 %44, 255
  %45 = ptrtoint ptr %fib_table_hash to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %fib_table_hash, align 4
  %arrayidx.i9.i = getelementptr %struct.hlist_head, ptr %46, i32 %and.i7.i
  %47 = ptrtoint ptr %arrayidx.i9.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.i9.i, align 4
  %49 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %48, ptr %42, align 4
  %pprev.i.i10.i = getelementptr inbounds %struct.hlist_node, ptr %42, i32 0, i32 1
  %50 = ptrtoint ptr %pprev.i.i10.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %arrayidx.i9.i, ptr %pprev.i.i10.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !258
  %51 = ptrtoint ptr %arrayidx.i9.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %42, ptr %arrayidx.i9.i, align 4
  %tobool.not.i.i11.i = icmp eq ptr %48, null
  br i1 %tobool.not.i.i11.i, label %fib6_link_table.exit.i.cleanup_crit_edge, label %do.body49.i.i13.i

fib6_link_table.exit.i.cleanup_crit_edge:         ; preds = %fib6_link_table.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body49.i.i13.i:                                ; preds = %fib6_link_table.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %pprev51.i.i12.i = getelementptr inbounds %struct.hlist_node, ptr %48, i32 0, i32 1
  %52 = ptrtoint ptr %pprev51.i.i12.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %42, ptr %pprev51.i.i12.i, align 4
  br label %cleanup

out_fib6_main_tbl:                                ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  %53 = ptrtoint ptr %fib6_main_tbl to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %fib6_main_tbl, align 16
  tail call void @kfree(ptr noundef %54) #13
  br label %out_fib_table_hash

out_fib_table_hash:                               ; preds = %out_fib6_main_tbl, %if.end25.out_fib_table_hash_crit_edge
  %55 = ptrtoint ptr %fib_table_hash to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %fib_table_hash, align 4
  tail call void @kfree(ptr noundef %56) #13
  br label %out_rt6_stats

out_rt6_stats:                                    ; preds = %out_fib_table_hash, %cond.end.out_rt6_stats_crit_edge
  %57 = ptrtoint ptr %rt6_stats to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rt6_stats, align 8
  tail call void @kfree(ptr noundef %58) #13
  br label %out_notifier

out_notifier:                                     ; preds = %out_rt6_stats, %if.end.out_notifier_crit_edge
  tail call void @fib6_notifier_exit(ptr noundef %net) #13
  br label %cleanup

cleanup:                                          ; preds = %out_notifier, %do.body49.i.i13.i, %fib6_link_table.exit.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %out_notifier ], [ %call, %entry.cleanup_crit_edge ], [ 0, %fib6_link_table.exit.i.cleanup_crit_edge ], [ 0, %do.body49.i.i13.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fib6_net_exit(ptr noundef %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ip6_fib_timer = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 9
  %call = tail call i32 @del_timer_sync(ptr noundef %ip6_fib_timer) #13
  %fib_table_hash = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 10
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %entry
  %i.039 = phi i32 [ 0, %entry ], [ %inc, %for.end.for.body_crit_edge ]
  %0 = ptrtoint ptr %fib_table_hash to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fib_table_hash, align 4
  %arrayidx = getelementptr %struct.hlist_head, ptr %1, i32 %i.039
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool5.not37 = icmp eq ptr %3, null
  br i1 %tobool5.not37, label %for.body.for.end_crit_edge, label %land.rhs.preheader

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

land.rhs.preheader:                               ; preds = %for.body
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %pprev2.i.i41 = getelementptr inbounds %struct.hlist_node, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %pprev2.i.i41 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pprev2.i.i41, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %5, ptr %7, align 4
  %tobool.not.i.i42 = icmp eq ptr %5, null
  br i1 %tobool.not.i.i42, label %land.rhs.preheader.for.end.loopexit.critedge_crit_edge, label %land.rhs.preheader.do.body13.i.i_crit_edge

land.rhs.preheader.do.body13.i.i_crit_edge:       ; preds = %land.rhs.preheader
  br label %do.body13.i.i

land.rhs.preheader.for.end.loopexit.critedge_crit_edge: ; preds = %land.rhs.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.loopexit.critedge

do.body13.i.i:                                    ; preds = %do.body13.i.i.do.body13.i.i_crit_edge, %land.rhs.preheader.do.body13.i.i_crit_edge
  %9 = phi ptr [ %17, %do.body13.i.i.do.body13.i.i_crit_edge ], [ %7, %land.rhs.preheader.do.body13.i.i_crit_edge ]
  %pprev2.i.i44 = phi ptr [ %pprev2.i.i, %do.body13.i.i.do.body13.i.i_crit_edge ], [ %pprev2.i.i41, %land.rhs.preheader.do.body13.i.i_crit_edge ]
  %10 = phi ptr [ %15, %do.body13.i.i.do.body13.i.i_crit_edge ], [ %5, %land.rhs.preheader.do.body13.i.i_crit_edge ]
  %tb.03843 = phi ptr [ %10, %do.body13.i.i.do.body13.i.i_crit_edge ], [ %3, %land.rhs.preheader.do.body13.i.i_crit_edge ]
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %pprev14.i.i, align 4
  %12 = ptrtoint ptr %tb.03843 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %tb.03843, align 4
  %13 = ptrtoint ptr %pprev2.i.i44 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i44, align 4
  %tb6_peers.i.c40 = getelementptr inbounds %struct.fib6_table, ptr %tb.03843, i32 0, i32 4
  tail call void @inetpeer_invalidate_tree(ptr noundef %tb6_peers.i.c40) #13
  tail call void @kfree(ptr noundef nonnull %tb.03843) #13
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %10, align 4
  %pprev2.i.i = getelementptr inbounds %struct.hlist_node, ptr %10, i32 0, i32 1
  %16 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pprev2.i.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %15, ptr %17, align 4
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %do.body13.i.i.for.end.loopexit.critedge_crit_edge, label %do.body13.i.i.do.body13.i.i_crit_edge

do.body13.i.i.do.body13.i.i_crit_edge:            ; preds = %do.body13.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body13.i.i

do.body13.i.i.for.end.loopexit.critedge_crit_edge: ; preds = %do.body13.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.loopexit.critedge

for.end.loopexit.critedge:                        ; preds = %do.body13.i.i.for.end.loopexit.critedge_crit_edge, %land.rhs.preheader.for.end.loopexit.critedge_crit_edge
  %tb.038.lcssa = phi ptr [ %3, %land.rhs.preheader.for.end.loopexit.critedge_crit_edge ], [ %10, %do.body13.i.i.for.end.loopexit.critedge_crit_edge ]
  %pprev2.i.i.lcssa = phi ptr [ %pprev2.i.i41, %land.rhs.preheader.for.end.loopexit.critedge_crit_edge ], [ %pprev2.i.i, %do.body13.i.i.for.end.loopexit.critedge_crit_edge ]
  %19 = ptrtoint ptr %tb.038.lcssa to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 256 to ptr), ptr %tb.038.lcssa, align 4
  %20 = ptrtoint ptr %pprev2.i.i.lcssa to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.lcssa, align 4
  %tb6_peers.i.c = getelementptr inbounds %struct.fib6_table, ptr %tb.038.lcssa, i32 0, i32 4
  tail call void @inetpeer_invalidate_tree(ptr noundef %tb6_peers.i.c) #13
  tail call void @kfree(ptr noundef nonnull %tb.038.lcssa) #13
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit.critedge, %for.body.for.end_crit_edge
  %inc = add nuw nsw i32 %i.039, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.end21, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end21:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %21 = ptrtoint ptr %fib_table_hash to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fib_table_hash, align 4
  tail call void @kfree(ptr noundef %22) #13
  %rt6_stats = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 8
  %23 = ptrtoint ptr %rt6_stats to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rt6_stats, align 8
  tail call void @kfree(ptr noundef %24) #13
  tail call void @fib6_notifier_exit(ptr noundef %net) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fib6_notifier_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rwlock_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fib6_gc_timer_cb(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -2108
  tail call void @fib6_run_gc(i32 noundef 0, ptr noundef %add.ptr, i1 noundef zeroext true)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fib6_notifier_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inetpeer_invalidate_tree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_valid_fib_dump_req(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fib6_dump_done(ptr noundef %cb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cb, align 4
  %2 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %skc_net.i.i, align 4
  %arrayidx.i = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 2
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  %9 = inttoptr i32 %8 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %entry.fib6_dump_end.exit_crit_edge, label %if.then.i

entry.fib6_dump_end.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %fib6_dump_end.exit

if.then.i:                                        ; preds = %entry
  %arrayidx1.i = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 4
  %10 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool2.not.i = icmp eq i32 %11, 0
  br i1 %tobool2.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then3.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then3.i:                                       ; preds = %if.then.i
  %12 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %arrayidx1.i, align 4
  %fib6_walker_lock.i.i = getelementptr inbounds %struct.net, ptr %6, i32 0, i32 36, i32 13
  tail call void @_raw_write_lock_bh(ptr noundef %fib6_walker_lock.i.i) #13
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %9) #13
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then3.i.fib6_walker_unlink.exit.i_crit_edge

if.then3.i.fib6_walker_unlink.exit.i_crit_edge:   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %fib6_walker_unlink.exit.i

if.end.i.i.i.i:                                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i.i.i, align 4
  %15 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %9, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %fib6_walker_unlink.exit.i

fib6_walker_unlink.exit.i:                        ; preds = %if.end.i.i.i.i, %if.then3.i.fib6_walker_unlink.exit.i_crit_edge
  %19 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 256 to ptr), ptr %9, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  tail call void @_raw_write_unlock_bh(ptr noundef %fib6_walker_lock.i.i) #13
  br label %if.end.i

if.end.i:                                         ; preds = %fib6_walker_unlink.exit.i, %if.then.i.if.end.i_crit_edge
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %arrayidx.i, align 4
  tail call void @kfree(ptr noundef nonnull %9) #13
  br label %fib6_dump_end.exit

fib6_dump_end.exit:                               ; preds = %if.end.i, %entry.fib6_dump_end.exit_crit_edge
  %arrayidx7.i = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 3
  %22 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx7.i, align 4
  %24 = inttoptr i32 %23 to ptr
  %done.i = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 3
  %25 = ptrtoint ptr %done.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %done.i, align 4
  %arrayidx8.i = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 1
  %26 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 3, ptr %arrayidx8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not = icmp eq i32 %23, 0
  br i1 %tobool.not, label %fib6_dump_end.exit.cond.end_crit_edge, label %cond.true

fib6_dump_end.exit.cond.end_crit_edge:            ; preds = %fib6_dump_end.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.true:                                        ; preds = %fib6_dump_end.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 %24(ptr noundef %cb) #13
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %fib6_dump_end.exit.cond.end_crit_edge
  %cond = phi i32 [ %call, %cond.true ], [ 0, %fib6_dump_end.exit.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fib6_dump_node(ptr nocapture noundef %w) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %leaf = getelementptr inbounds %struct.fib6_walker, ptr %w, i32 0, i32 3
  %0 = ptrtoint ptr %leaf to i32
  call void @__asan_load4_noabort(i32 %0)
  %rt.023 = load ptr, ptr %leaf, align 4
  %tobool.not24 = icmp eq ptr %rt.023, null
  br i1 %tobool.not24, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %args = getelementptr inbounds %struct.fib6_walker, ptr %w, i32 0, i32 9
  %skip_in_node = getelementptr inbounds %struct.fib6_walker, ptr %w, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %do.end.for.body_crit_edge, %for.body.lr.ph
  %rt.025 = phi ptr [ %rt.023, %for.body.lr.ph ], [ %rt.0, %do.end.for.body_crit_edge ]
  %1 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %args, align 4
  %3 = ptrtoint ptr %skip_in_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %skip_in_node, align 4
  %call = tail call i32 @rt6_dump_route(ptr noundef nonnull %rt.025, ptr noundef %2, i32 noundef %4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %leaf to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %rt.025, ptr %leaf, align 4
  %6 = ptrtoint ptr %skip_in_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %skip_in_node, align 4
  %add = add i32 %7, %call
  store i32 %add, ptr %skip_in_node, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body
  %8 = ptrtoint ptr %skip_in_node to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %skip_in_node, align 4
  %fib6_nsiblings = getelementptr inbounds %struct.fib6_info, ptr %rt.025, i32 0, i32 4
  %9 = ptrtoint ptr %fib6_nsiblings to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fib6_nsiblings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool4.not = icmp eq i32 %10, 0
  br i1 %tobool4.not, label %if.end.do.end_crit_edge, label %if.then5

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %prev = getelementptr inbounds %struct.fib6_info, ptr %rt.025, i32 0, i32 3, i32 0, i32 1
  %11 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 -12
  br label %do.end

do.end:                                           ; preds = %if.then5, %if.end.do.end_crit_edge
  %rt.1 = phi ptr [ %add.ptr, %if.then5 ], [ %rt.025, %if.end.do.end_crit_edge ]
  %fib6_next = getelementptr inbounds %struct.fib6_info, ptr %rt.1, i32 0, i32 1
  %13 = ptrtoint ptr %fib6_next to i32
  call void @__asan_load4_noabort(i32 %13)
  %rt.0 = load ptr, ptr %fib6_next, align 4
  %tobool.not = icmp eq ptr %rt.0, null
  br i1 %tobool.not, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %do.end.for.end_crit_edge, %entry.for.end_crit_edge
  %14 = ptrtoint ptr %leaf to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %leaf, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fib6_dump_table(ptr noundef %table, ptr nocapture noundef readonly %skb, ptr nocapture noundef %cb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  %arrayidx = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 2
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %7 = inttoptr i32 %6 to ptr
  %tb6_root = getelementptr inbounds %struct.fib6_table, ptr %table, i32 0, i32 3
  %root = getelementptr inbounds %struct.fib6_walker, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %root to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %tb6_root, ptr %root, align 4
  %arrayidx1 = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 4
  %9 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %count = getelementptr inbounds %struct.fib6_walker, ptr %7, i32 0, i32 6
  %11 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %count, align 4
  %skip = getelementptr inbounds %struct.fib6_walker, ptr %7, i32 0, i32 5
  %12 = ptrtoint ptr %skip to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %skip, align 4
  %skip_in_node = getelementptr inbounds %struct.fib6_walker, ptr %7, i32 0, i32 7
  %13 = ptrtoint ptr %skip_in_node to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %skip_in_node, align 4
  %tb6_lock = getelementptr inbounds %struct.fib6_table, ptr %table, i32 0, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %tb6_lock) #13
  %call2 = tail call fastcc i32 @fib6_walk(ptr noundef %4, ptr noundef %7)
  tail call void @_raw_spin_unlock_bh(ptr noundef %tb6_lock) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp4 = icmp sgt i32 %call2, 0
  br i1 %cmp4, label %if.then5, label %if.then.if.end33_crit_edge

if.then.if.end33_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %arrayidx1, align 4
  %15 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %root, align 4
  %fn_sernum = getelementptr inbounds %struct.fib6_node, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %fn_sernum to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %fn_sernum, align 4
  %arrayidx8 = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 5
  %19 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %arrayidx8, align 4
  br label %if.end33

if.else:                                          ; preds = %entry
  %fn_sernum14 = getelementptr inbounds %struct.fib6_table, ptr %table, i32 0, i32 3, i32 7
  %20 = ptrtoint ptr %fn_sernum14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %fn_sernum14, align 4
  %arrayidx15 = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 5
  %22 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %21)
  %cmp16.not = icmp eq i32 %23, %21
  br i1 %cmp16.not, label %if.else.if.end25_crit_edge, label %if.then17

if.else.if.end25_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

if.then17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %24 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %21, ptr %arrayidx15, align 4
  %state = getelementptr inbounds %struct.fib6_walker, ptr %7, i32 0, i32 4
  %25 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %state, align 4
  %26 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %root, align 4
  %node = getelementptr inbounds %struct.fib6_walker, ptr %7, i32 0, i32 2
  %28 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %node, align 4
  %count20 = getelementptr inbounds %struct.fib6_walker, ptr %7, i32 0, i32 6
  %29 = ptrtoint ptr %count20 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %count20, align 4
  %skip_in_node22 = getelementptr inbounds %struct.fib6_walker, ptr %7, i32 0, i32 7
  %31 = ptrtoint ptr %skip_in_node22 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %skip_in_node22, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then17, %if.else.if.end25_crit_edge
  %.sink = phi i32 [ %30, %if.then17 ], [ 0, %if.else.if.end25_crit_edge ]
  %32 = getelementptr inbounds %struct.fib6_walker, ptr %7, i32 0, i32 5
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %.sink, ptr %32, align 4
  %tb6_lock26 = getelementptr inbounds %struct.fib6_table, ptr %table, i32 0, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %tb6_lock26) #13
  %call27 = tail call fastcc i32 @fib6_walk_continue(ptr noundef %7)
  tail call void @_raw_spin_unlock_bh(ptr noundef %tb6_lock26) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call27)
  %cmp29 = icmp slt i32 %call27, 1
  br i1 %cmp29, label %if.then30, label %if.end25.if.end33_crit_edge

if.end25.if.end33_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33

if.then30:                                        ; preds = %if.end25
  %fib6_walker_lock.i = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 36, i32 13
  tail call void @_raw_write_lock_bh(ptr noundef %fib6_walker_lock.i) #13
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %7) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then30.fib6_walker_unlink.exit_crit_edge

if.then30.fib6_walker_unlink.exit_crit_edge:      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #15
  br label %fib6_walker_unlink.exit

if.end.i.i.i:                                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i.i.i, align 4
  %36 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %7, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev1.i.i.i.i, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %37, ptr %35, align 4
  br label %fib6_walker_unlink.exit

fib6_walker_unlink.exit:                          ; preds = %if.end.i.i.i, %if.then30.fib6_walker_unlink.exit_crit_edge
  %40 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr inttoptr (i32 256 to ptr), ptr %7, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %41 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_write_unlock_bh(ptr noundef %fib6_walker_lock.i) #13
  %42 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %arrayidx1, align 4
  br label %if.end33

if.end33:                                         ; preds = %fib6_walker_unlink.exit, %if.end25.if.end33_crit_edge, %if.then5, %if.then.if.end33_crit_edge
  %res.0 = phi i32 [ %call2, %if.then5 ], [ %call2, %if.then.if.end33_crit_edge ], [ %call27, %fib6_walker_unlink.exit ], [ %call27, %if.end25.if.end33_crit_edge ]
  ret i32 %res.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt6_dump_route(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ipv6_route_seq_next_table(ptr noundef %tbl, ptr nocapture noundef readonly %net) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %tbl, null
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %if.then

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.then:                                          ; preds = %entry
  %tb6_id = getelementptr inbounds %struct.fib6_table, ptr %tbl, i32 0, i32 1
  %0 = ptrtoint ptr %tb6_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tb6_id, align 4
  %and = and i32 %1, 255
  %add = add nuw nsw i32 %and, 1
  %2 = ptrtoint ptr %tbl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %tbl, align 4
  %call = tail call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %land.lhs.true, label %if.then.if.end11_crit_edge

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

land.lhs.true:                                    ; preds = %if.then
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end11_crit_edge, label %land.lhs.true5

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b40 = load i1, ptr @ipv6_route_seq_next_table.__warned, align 1
  br i1 %.b40, label %land.lhs.true5.if.end11_crit_edge, label %if.then7

land.lhs.true5.if.end11_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.then7:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @ipv6_route_seq_next_table.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2560, ptr noundef nonnull @.str.46) #13
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %land.lhs.true5.if.end11_crit_edge, %land.lhs.true.if.end11_crit_edge, %if.then.if.end11_crit_edge, %entry.if.end11_crit_edge
  %node.0 = phi ptr [ %3, %if.then7 ], [ %3, %land.lhs.true5.if.end11_crit_edge ], [ %3, %land.lhs.true.if.end11_crit_edge ], [ %3, %if.then.if.end11_crit_edge ], [ null, %entry.if.end11_crit_edge ]
  %h.0 = phi i32 [ %add, %if.then7 ], [ %add, %land.lhs.true5.if.end11_crit_edge ], [ %add, %land.lhs.true.if.end11_crit_edge ], [ %add, %if.then.if.end11_crit_edge ], [ 0, %entry.if.end11_crit_edge ]
  %tobool12.not41 = icmp eq ptr %node.0, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %h.0)
  %cmp42 = icmp ult i32 %h.0, 256
  %or.cond43 = select i1 %tobool12.not41, i1 %cmp42, i1 false
  br i1 %or.cond43, label %while.body.lr.ph, label %if.end11.while.end_crit_edge

if.end11.while.end_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end11
  %fib_table_hash = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 10
  br label %while.body

while.body:                                       ; preds = %do.end28.while.body_crit_edge, %while.body.lr.ph
  %h.144 = phi i32 [ %h.0, %while.body.lr.ph ], [ %inc, %do.end28.while.body_crit_edge ]
  %4 = ptrtoint ptr %fib_table_hash to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fib_table_hash, align 4
  %inc = add nuw nsw i32 %h.144, 1
  %arrayidx = getelementptr %struct.hlist_head, ptr %5, i32 %h.144
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %arrayidx, align 4
  %call18 = tail call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %land.lhs.true20, label %while.body.do.end28_crit_edge

while.body.do.end28_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end28

land.lhs.true20:                                  ; preds = %while.body
  %call21 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %land.lhs.true20.do.end28_crit_edge, label %land.lhs.true23

land.lhs.true20.do.end28_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end28

land.lhs.true23:                                  ; preds = %land.lhs.true20
  %.b3839 = load i1, ptr @ipv6_route_seq_next_table.__warned.79, align 1
  br i1 %.b3839, label %land.lhs.true23.do.end28_crit_edge, label %if.then25

land.lhs.true23.do.end28_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end28

if.then25:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @ipv6_route_seq_next_table.__warned.79, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2568, ptr noundef nonnull @.str.46) #13
  br label %do.end28

do.end28:                                         ; preds = %if.then25, %land.lhs.true23.do.end28_crit_edge, %land.lhs.true20.do.end28_crit_edge, %while.body.do.end28_crit_edge
  %tobool12.not = icmp eq ptr %7, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %h.144)
  %cmp = icmp ult i32 %h.144, 255
  %or.cond = select i1 %tobool12.not, i1 %cmp, i1 false
  br i1 %or.cond, label %do.end28.while.body_crit_edge, label %do.end28.while.end_crit_edge

do.end28.while.end_crit_edge:                     ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

do.end28.while.body_crit_edge:                    ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.end:                                        ; preds = %do.end28.while.end_crit_edge, %if.end11.while.end_crit_edge
  %node.1.lcssa = phi ptr [ %node.0, %if.end11.while.end_crit_edge ], [ %7, %do.end28.while.end_crit_edge ]
  ret ptr %node.1.lcssa
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipv6_route_yield(ptr nocapture noundef readonly %w) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %args = getelementptr inbounds %struct.fib6_walker, ptr %w, i32 0, i32 9
  %0 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %args, align 4
  %skip = getelementptr inbounds %struct.ipv6_route_iter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %skip to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %skip, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %tobool.not = icmp eq i64 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body.preheader:                                ; preds = %entry
  %tbl = getelementptr inbounds %struct.ipv6_route_iter, ptr %1, i32 0, i32 3
  %leaf = getelementptr inbounds %struct.ipv6_route_iter, ptr %1, i32 0, i32 1, i32 3
  br label %do.body

do.body:                                          ; preds = %do.cond21.do.body_crit_edge, %do.body.preheader
  %4 = ptrtoint ptr %tbl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tbl, align 8
  %dep_map = getelementptr inbounds %struct.fib6_table, ptr %5, i32 0, i32 2, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %land.lhs.true, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true:                                    ; preds = %do.body
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true5

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b33 = load i1, ptr @ipv6_route_yield.__warned, align 1
  br i1 %.b33, label %land.lhs.true5.do.end_crit_edge, label %if.then7

land.lhs.true5.do.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then7:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @ipv6_route_yield.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2529, ptr noundef nonnull @.str.1) #13
  br label %do.end

do.end:                                           ; preds = %if.then7, %land.lhs.true5.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %do.body.do.end_crit_edge
  %6 = ptrtoint ptr %leaf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %leaf, align 8
  %fib6_next = getelementptr inbounds %struct.fib6_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %fib6_next to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fib6_next, align 4
  store ptr %9, ptr %leaf, align 8
  %10 = ptrtoint ptr %skip to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %skip, align 8
  %dec = add i64 %11, -1
  store i64 %dec, ptr %skip, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %dec)
  %tobool14.not = icmp eq i64 %dec, 0
  br i1 %tobool14.not, label %land.lhs.true15, label %do.cond21

land.lhs.true15:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %tobool18.not = icmp ne ptr %9, null
  %spec.select = zext i1 %tobool18.not to i32
  br label %cleanup

do.cond21:                                        ; preds = %do.end
  %tobool24.not = icmp eq ptr %9, null
  br i1 %tobool24.not, label %do.cond21.cleanup_crit_edge, label %do.cond21.do.body_crit_edge

do.cond21.do.body_crit_edge:                      ; preds = %do.cond21
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

do.cond21.cleanup_crit_edge:                      ; preds = %do.cond21
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %do.cond21.cleanup_crit_edge, %land.lhs.true15, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ %spec.select, %land.lhs.true15 ], [ 0, %do.cond21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_iter_get_info(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_iter_run_prog(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind readonly }
attributes #11 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { cold nounwind }
attributes #19 = { nobuiltin nounwind }
attributes #20 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !11, !13, !15, !17, !19, !20, !21, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !41, !43, !44, !45, !47, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !81, !82, !83, !85, !86, !87, !89, !91, !93, !95, !96, !98, !99, !101, !103, !105, !107, !109, !111, !113, !114, !115, !117, !118, !119, !121, !123, !125, !127, !129, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !189, !190, !191, !192, !194, !196, !198, !199, !201, !202, !204, !205, !207, !209, !211, !213, !214, !216, !218, !220, !222, !223, !225, !227, !229, !231, !233, !235, !237, !238}
!llvm.named.register.sp = !{!240}
!llvm.module.flags = !{!241, !242, !243, !244, !245, !246, !247, !248}
!llvm.ident = !{!249}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../net/ipv6/ip6_fib.c", i32 112, i32 7}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @__ksymtab_fib6_info_destroy_rcu, !5, !"__ksymtab_fib6_info_destroy_rcu", i1 false, i1 false}
!5 = !{!"../net/ipv6/ip6_fib.c", i32 181, i32 1}
!6 = !{ptr @__ksymtab_fib6_new_table, !7, !"__ksymtab_fib6_new_table", i1 false, i1 false}
!7 = !{!"../net/ipv6/ip6_fib.c", i32 271, i32 1}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../net/ipv6/ip6_fib.c", i32 284, i32 2}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @__ksymtab_fib6_get_table, !12, !"__ksymtab_fib6_get_table", i1 false, i1 false}
!12 = !{!"../net/ipv6/ip6_fib.c", i32 294, i32 1}
!13 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!14 = !{!"../net/ipv6/ip6_fib.c", i32 355, i32 3}
!15 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!16 = !{!"../net/ipv6/ip6_fib.c", i32 502, i32 3}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/ipv6/ip6_fib.c", i32 1391, i32 3}
!19 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @fib6_add._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @fib6_add._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = distinct !{null, !23, !"__warned", i1 false, i1 false}
!23 = !{!"../net/ipv6/ip6_fib.c", i32 1453, i32 41}
!24 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!25 = !{!"../net/ipv6/ip6_fib.c", i32 1495, i32 5}
!26 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!27 = !{!"../net/ipv6/ip6_fib.c", i32 1723, i32 32}
!28 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!29 = !{!"../net/ipv6/ip6_fib.c", i32 2012, i32 7}
!30 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!31 = !{!"../net/ipv6/ip6_fib.c", i32 2024, i32 27}
!32 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../net/ipv6/ip6_fib.c", i32 2452, i32 37}
!34 = !{ptr @ipv6_route_seq_ops, !35, !"ipv6_route_seq_ops", i1 false, i1 false}
!35 = !{!"../net/ipv6/ip6_fib.c", i32 2716, i32 29}
!36 = !{ptr @fib6_node_kmem, !37, !"fib6_node_kmem", i1 false, i1 false}
!37 = !{!"../net/ipv6/ip6_fib.c", i32 40, i32 27}
!38 = !{ptr @fib6_link_table.__key, !39, !"__key", i1 false, i1 false}
!39 = !{!"../net/ipv6/ip6_fib.c", i32 227, i32 2}
!40 = !{ptr @.str.8, !39, !"<string literal>", i1 false, i1 false}
!41 = distinct !{null, !42, !"__warned", i1 false, i1 false}
!42 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!43 = !{ptr @.str.9, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.10, !42, !"<string literal>", i1 false, i1 false}
!45 = distinct !{null, !46, !"__warned", i1 false, i1 false}
!46 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!47 = !{ptr @.str.11, !46, !"<string literal>", i1 false, i1 false}
!48 = distinct !{null, !49, !"__already_done", i1 false, i1 false}
!49 = !{!"../net/ipv6/ip6_fib.c", i32 2068, i32 2}
!50 = distinct !{null, !51, !"__warned", i1 false, i1 false}
!51 = !{!"../net/ipv6/ip6_fib.c", i32 2078, i32 8}
!52 = distinct !{null, !53, !"__warned", i1 false, i1 false}
!53 = !{!"../net/ipv6/ip6_fib.c", i32 2079, i32 15}
!54 = distinct !{null, !55, !"__warned", i1 false, i1 false}
!55 = !{!"../net/ipv6/ip6_fib.c", i32 2086, i32 11}
!56 = distinct !{null, !57, !"__warned", i1 false, i1 false}
!57 = !{!"../net/ipv6/ip6_fib.c", i32 2095, i32 12}
!58 = distinct !{null, !59, !"__warned", i1 false, i1 false}
!59 = !{!"../net/ipv6/ip6_fib.c", i32 2102, i32 14}
!60 = distinct !{null, !61, !"__warned", i1 false, i1 false}
!61 = !{!"../net/ipv6/ip6_fib.c", i32 2126, i32 9}
!62 = distinct !{null, !63, !"__warned", i1 false, i1 false}
!63 = !{!"../net/ipv6/ip6_fib.c", i32 2127, i32 11}
!64 = distinct !{null, !65, !"__warned", i1 false, i1 false}
!65 = !{!"../net/ipv6/ip6_fib.c", i32 2128, i32 12}
!66 = distinct !{null, !67, !"__warned", i1 false, i1 false}
!67 = !{!"../net/ipv6/ip6_fib.c", i32 2131, i32 8}
!68 = distinct !{null, !69, !"__warned", i1 false, i1 false}
!69 = !{!"../net/ipv6/ip6_fib.c", i32 2143, i32 15}
!70 = distinct !{null, !71, !"__warned", i1 false, i1 false}
!71 = !{!"../net/ipv6/ip6_fib.c", i32 1343, i32 25}
!72 = distinct !{null, !73, !"__warned", i1 false, i1 false}
!73 = !{!"../net/ipv6/ip6_fib.c", i32 1350, i32 8}
!74 = distinct !{null, !75, !"__warned", i1 false, i1 false}
!75 = !{!"../net/ipv6/ip6_fib.c", i32 762, i32 28}
!76 = !{ptr @fib6_add_1.__msg, !77, !"__msg", i1 false, i1 false}
!77 = !{!"../net/ipv6/ip6_fib.c", i32 773, i32 6}
!78 = !{ptr @.str.22, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../net/ipv6/ip6_fib.c", i32 775, i32 6}
!80 = !{ptr @.str.23, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @fib6_add_1._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @fib6_add_1._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.25, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../net/ipv6/ip6_fib.c", i32 778, i32 5}
!85 = !{ptr @fib6_add_1._entry.24, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @fib6_add_1._entry_ptr.26, !84, !"_entry_ptr", i1 false, i1 false}
!87 = distinct !{null, !88, !"__warned", i1 false, i1 false}
!88 = !{!"../net/ipv6/ip6_fib.c", i32 810, i32 8}
!89 = distinct !{null, !90, !"__warned", i1 false, i1 false}
!90 = !{!"../net/ipv6/ip6_fib.c", i32 812, i32 8}
!91 = !{ptr @fib6_add_1.__msg.29, !92, !"__msg", i1 false, i1 false}
!92 = !{!"../net/ipv6/ip6_fib.c", i32 827, i32 4}
!93 = !{ptr @fib6_add_1._entry.30, !94, !"_entry", i1 false, i1 false}
!94 = !{!"../net/ipv6/ip6_fib.c", i32 829, i32 4}
!95 = !{ptr @fib6_add_1._entry_ptr.31, !94, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @fib6_add_1._entry.32, !97, !"_entry", i1 false, i1 false}
!97 = !{!"../net/ipv6/ip6_fib.c", i32 832, i32 3}
!98 = !{ptr @fib6_add_1._entry_ptr.33, !97, !"_entry_ptr", i1 false, i1 false}
!99 = distinct !{null, !100, !"__warned", i1 false, i1 false}
!100 = !{!"../net/ipv6/ip6_fib.c", i32 863, i32 7}
!101 = distinct !{null, !102, !"__warned", i1 false, i1 false}
!102 = !{!"../net/ipv6/ip6_fib.c", i32 903, i32 18}
!103 = distinct !{null, !104, !"__warned", i1 false, i1 false}
!104 = !{!"../net/ipv6/ip6_fib.c", i32 1071, i32 27}
!105 = distinct !{null, !106, !"__warned", i1 false, i1 false}
!106 = !{!"../net/ipv6/ip6_fib.c", i32 1092, i32 14}
!107 = distinct !{null, !108, !"__warned", i1 false, i1 false}
!108 = !{!"../net/ipv6/ip6_fib.c", i32 1159, i32 10}
!109 = distinct !{null, !110, !"__warned", i1 false, i1 false}
!110 = !{!"../net/ipv6/ip6_fib.c", i32 1183, i32 14}
!111 = !{ptr @.str.39, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../net/ipv6/ip6_fib.c", i32 1207, i32 4}
!113 = !{ptr @fib6_add_rt2node._entry, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @fib6_add_rt2node._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.41, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../net/ipv6/ip6_fib.c", i32 1266, i32 4}
!117 = !{ptr @fib6_add_rt2node._entry.40, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @fib6_add_rt2node._entry_ptr.42, !116, !"_entry_ptr", i1 false, i1 false}
!119 = distinct !{null, !120, !"__warned", i1 false, i1 false}
!120 = !{!"../net/ipv6/ip6_fib.c", i32 1298, i32 11}
!121 = distinct !{null, !122, !"__warned", i1 false, i1 false}
!122 = !{!"../net/ipv6/ip6_fib.c", i32 1315, i32 12}
!123 = distinct !{null, !124, !"__warned", i1 false, i1 false}
!124 = !{!"../net/ipv6/ip6_fib.c", i32 1047, i32 29}
!125 = distinct !{null, !126, !"__warned", i1 false, i1 false}
!126 = !{!"../net/ipv6/ip6_fib.c", i32 1057, i32 9}
!127 = distinct !{null, !128, !"__warned", i1 false, i1 false}
!128 = !{!"../net/ipv6/ip6_fib.c", i32 1569, i32 16}
!129 = !{ptr @.str.46, !128, !"<string literal>", i1 false, i1 false}
!130 = distinct !{null, !131, !"__warned", i1 false, i1 false}
!131 = !{!"../net/ipv6/ip6_fib.c", i32 1570, i32 9}
!132 = distinct !{null, !133, !"__warned", i1 false, i1 false}
!133 = !{!"../net/ipv6/ip6_fib.c", i32 1580, i32 31}
!134 = distinct !{null, !135, !"__warned", i1 false, i1 false}
!135 = !{!"../net/ipv6/ip6_fib.c", i32 1583, i32 29}
!136 = distinct !{null, !137, !"__warned", i1 false, i1 false}
!137 = !{!"../net/ipv6/ip6_fib.c", i32 1610, i32 8}
!138 = distinct !{null, !139, !"__warned", i1 false, i1 false}
!139 = !{!"../net/ipv6/ip6_fib.c", i32 1666, i32 28}
!140 = distinct !{null, !141, !"__warned", i1 false, i1 false}
!141 = !{!"../net/ipv6/ip6_fib.c", i32 1697, i32 9}
!142 = distinct !{null, !143, !"__warned", i1 false, i1 false}
!143 = !{!"../net/ipv6/ip6_fib.c", i32 1699, i32 9}
!144 = distinct !{null, !145, !"__warned", i1 false, i1 false}
!145 = !{!"../net/ipv6/ip6_fib.c", i32 1756, i32 16}
!146 = distinct !{null, !147, !"__warned", i1 false, i1 false}
!147 = !{!"../net/ipv6/ip6_fib.c", i32 1758, i32 17}
!148 = distinct !{null, !149, !"__warned", i1 false, i1 false}
!149 = !{!"../net/ipv6/ip6_fib.c", i32 1761, i32 11}
!150 = distinct !{null, !151, !"__warned", i1 false, i1 false}
!151 = !{!"../net/ipv6/ip6_fib.c", i32 1764, i32 11}
!152 = distinct !{null, !153, !"__warned", i1 false, i1 false}
!153 = !{!"../net/ipv6/ip6_fib.c", i32 1767, i32 8}
!154 = distinct !{null, !155, !"__warned", i1 false, i1 false}
!155 = !{!"../net/ipv6/ip6_fib.c", i32 1795, i32 28}
!156 = distinct !{null, !157, !"__warned", i1 false, i1 false}
!157 = !{!"../net/ipv6/ip6_fib.c", i32 1797, i32 28}
!158 = distinct !{null, !159, !"__warned", i1 false, i1 false}
!159 = !{!"../net/ipv6/ip6_fib.c", i32 1799, i32 26}
!160 = distinct !{null, !161, !"__warned", i1 false, i1 false}
!161 = !{!"../net/ipv6/ip6_fib.c", i32 1801, i32 28}
!162 = distinct !{null, !163, !"__warned", i1 false, i1 false}
!163 = !{!"../net/ipv6/ip6_fib.c", i32 1803, i32 28}
!164 = distinct !{null, !165, !"__warned", i1 false, i1 false}
!165 = !{!"../net/ipv6/ip6_fib.c", i32 1805, i32 31}
!166 = distinct !{null, !167, !"__warned", i1 false, i1 false}
!167 = !{!"../net/ipv6/ip6_fib.c", i32 1807, i32 31}
!168 = distinct !{null, !169, !"__warned", i1 false, i1 false}
!169 = !{!"../net/ipv6/ip6_fib.c", i32 1829, i32 24}
!170 = distinct !{null, !171, !"__warned", i1 false, i1 false}
!171 = !{!"../net/ipv6/ip6_fib.c", i32 1848, i32 7}
!172 = distinct !{null, !173, !"__warned", i1 false, i1 false}
!173 = !{!"../net/ipv6/ip6_fib.c", i32 1894, i32 36}
!174 = distinct !{null, !175, !"__warned", i1 false, i1 false}
!175 = !{!"../net/ipv6/ip6_fib.c", i32 1908, i32 25}
!176 = distinct !{null, !177, !"__warned", i1 false, i1 false}
!177 = !{!"../net/ipv6/ip6_fib.c", i32 1919, i32 9}
!178 = distinct !{null, !179, !"__warned", i1 false, i1 false}
!179 = !{!"../net/ipv6/ip6_fib.c", i32 1923, i32 17}
!180 = distinct !{null, !181, !"__warned", i1 false, i1 false}
!181 = !{!"../net/ipv6/ip6_fib.c", i32 1964, i32 14}
!182 = distinct !{null, !183, !"__warned", i1 false, i1 false}
!183 = !{!"../net/ipv6/ip6_fib.c", i32 2255, i32 3}
!184 = distinct !{null, !185, !"__already_done", i1 false, i1 false}
!185 = !{!"../net/ipv6/ip6_fib.c", i32 2182, i32 3}
!186 = !{ptr @.str.69, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../net/ipv6/ip6_fib.c", i32 2194, i32 5}
!188 = !{ptr @.str.70, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @.str.71, !187, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @fib6_clean_node.__UNIQUE_ID_ddebug733, !187, !"__UNIQUE_ID_ddebug733", i1 false, i1 false}
!191 = !{ptr @.str.72, !187, !"<string literal>", i1 false, i1 false}
!192 = distinct !{null, !193, !"__warned", i1 false, i1 false}
!193 = !{!"../net/ipv6/ip6_fib.c", i32 2187, i32 2}
!194 = !{ptr @fib6_net_ops, !195, !"fib6_net_ops", i1 false, i1 false}
!195 = !{!"../net/ipv6/ip6_fib.c", i32 2443, i32 33}
!196 = !{ptr @fib6_net_init.__key, !197, !"__key", i1 false, i1 false}
!197 = !{!"../net/ipv6/ip6_fib.c", i32 2364, i32 2}
!198 = !{ptr @.str.73, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @fib6_net_init.__key.74, !200, !"__key", i1 false, i1 false}
!200 = !{!"../net/ipv6/ip6_fib.c", i32 2365, i32 2}
!201 = !{ptr @.str.75, !200, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @fib6_net_init.__key.76, !203, !"__key", i1 false, i1 false}
!203 = !{!"../net/ipv6/ip6_fib.c", i32 2367, i32 2}
!204 = !{ptr @.str.77, !203, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @inet6_dump_fib.__msg, !206, !"__msg", i1 false, i1 false}
!206 = !{!"../net/ipv6/ip6_fib.c", i32 675, i32 4}
!207 = distinct !{null, !208, !"__warned", i1 false, i1 false}
!208 = !{!"../net/ipv6/ip6_fib.c", i32 694, i32 3}
!209 = distinct !{null, !210, !"__warned", i1 false, i1 false}
!210 = !{!"../net/ipv6/ip6_fib.c", i32 521, i32 2}
!211 = distinct !{null, !212, !"__warned", i1 false, i1 false}
!212 = !{!"../include/linux/rcupdate.h", i32 749, i32 2}
!213 = !{ptr @.str.78, !212, !"<string literal>", i1 false, i1 false}
!214 = distinct !{null, !215, !"__warned", i1 false, i1 false}
!215 = !{!"../net/ipv6/ip6_fib.c", i32 2560, i32 10}
!216 = distinct !{null, !217, !"__warned", i1 false, i1 false}
!217 = !{!"../net/ipv6/ip6_fib.c", i32 2567, i32 10}
!218 = distinct !{null, !219, !"__warned", i1 false, i1 false}
!219 = !{!"../net/ipv6/ip6_fib.c", i32 2527, i32 18}
!220 = distinct !{null, !221, !"__warned", i1 false, i1 false}
!221 = !{!"../include/linux/rcupdate.h", i32 760, i32 2}
!222 = !{ptr @.str.80, !221, !"<string literal>", i1 false, i1 false}
!223 = distinct !{null, !224, !"__warned", i1 false, i1 false}
!224 = !{!"../net/ipv6/ip6_fib.c", i32 2597, i32 6}
!225 = !{ptr @.str.81, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../net/ipv6/ip6_fib.c", i32 2497, i32 18}
!227 = !{ptr @.str.82, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../net/ipv6/ip6_fib.c", i32 2506, i32 19}
!229 = !{ptr @.str.83, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../net/ipv6/ip6_fib.c", i32 2508, i32 17}
!231 = !{ptr @.str.84, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../net/ipv6/ip6_fib.c", i32 2512, i32 18}
!233 = !{ptr @.str.85, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../net/ipv6/ip6_fib.c", i32 2514, i32 31}
!235 = distinct !{null, !236, !"__warned", i1 false, i1 false}
!236 = !{!"../include/net/nexthop.h", i32 510, i32 12}
!237 = !{ptr @.str.86, !236, !"<string literal>", i1 false, i1 false}
!238 = distinct !{null, !239, !"__warned", i1 false, i1 false}
!239 = !{!"../include/net/nexthop.h", i32 516, i32 8}
!240 = !{!"sp"}
!241 = !{i32 1, !"wchar_size", i32 2}
!242 = !{i32 1, !"min_enum_size", i32 4}
!243 = !{i32 8, !"branch-target-enforcement", i32 0}
!244 = !{i32 8, !"sign-return-address", i32 0}
!245 = !{i32 8, !"sign-return-address-all", i32 0}
!246 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!247 = !{i32 7, !"uwtable", i32 1}
!248 = !{i32 7, !"frame-pointer", i32 2}
!249 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!250 = !{i64 2148848348}
!251 = !{i64 1231034, i64 1231058, i64 1231079, i64 1231096, i64 1231113}
!252 = !{i64 2148848574}
!253 = !{!"branch_weights", i32 2000, i32 1}
!254 = !{i64 2148836056}
!255 = !{i64 2148750496, i64 2148750528, i64 2148750557, i64 2148750591, i64 2148750622, i64 2148750645}
!256 = !{i64 2150299372}
!257 = !{i64 2158055294}
!258 = !{i64 2152379894}
!259 = !{i64 2149737822}
!260 = !{i64 2149738088}
!261 = !{i64 2158359855}
!262 = !{i64 2148748031, i64 2148748063, i64 2148748092, i64 2148748126, i64 2148748157, i64 2148748180}
!263 = !{!"branch_weights", i32 1, i32 2000}
!264 = !{i64 2158373203}
!265 = !{i64 2158380652}
!266 = !{i64 2158388043}
!267 = !{i64 2158399497}
!268 = !{i64 2158406625}
!269 = !{i64 2158301246, i64 2158301730, i64 2158301283, i64 2158301339, i64 2158301373, i64 2158301397, i64 2158301438, i64 2158301459, i64 2158301487, i64 2158301521}
!270 = !{i64 2158302874, i64 2158303358, i64 2158302911, i64 2158302967, i64 2158303001, i64 2158303025, i64 2158303066, i64 2158303087, i64 2158303115, i64 2158303149}
!271 = !{i64 2158316850}
!272 = !{i64 2158324413}
!273 = !{i64 2158331454}
!274 = !{i64 2158340550}
!275 = !{i64 2158347591}
!276 = !{i64 2158417387}
!277 = !{i32 0, i32 33}
!278 = !{i64 2158213158}
!279 = !{i64 2158227559}
!280 = !{i64 2158241873}
!281 = !{i64 2158255878}
!282 = !{i64 2158466353}
!283 = !{i64 2158482030}
!284 = !{i64 2158493341}
!285 = !{i64 2158500504}
!286 = !{i64 2158508408}
!287 = !{i8 0, i8 2}
!288 = !{i64 2158278523}
!289 = !{i64 2158284219}
!290 = !{i64 2158278027}
!291 = !{i64 1253269, i64 1253286, i64 1253310, i64 1253336, i64 1253354}
!292 = !{i64 2158278380}
!293 = !{!"branch_weights", i32 1, i32 2001, i32 2001, i32 2000}
!294 = !{i64 2149307827, i64 2149307832, i64 2149307845, i64 2149307889, i64 2149307923, i64 2149307944}
!295 = !{i64 2158603925}
!296 = !{i64 2158613984}
