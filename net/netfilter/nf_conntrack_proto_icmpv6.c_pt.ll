; ModuleID = '/llk/IR_all_yes/net/netfilter/nf_conntrack_proto_icmpv6.c_pt.bc'
source_filename = "../net/netfilter/nf_conntrack_proto_icmpv6.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.nla_policy = type { i8, i8, i16, %union.anon.29 }
%union.anon.29 = type { i32 }
%struct.nf_conntrack_l4proto = type { i8, i8, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.220, ptr }
%struct.anon.220 = type { ptr, ptr, i16, i16, ptr }
%struct.icmp6hdr = type { i8, i8, i16, %union.anon.218 }
%union.anon.218 = type { [1 x i32] }
%struct.sk_buff = type { %union.anon, %union.anon.196, %union.anon.197, [48 x i8], %union.anon.198, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.200, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.196 = type { ptr }
%union.anon.197 = type { i64 }
%union.anon.198 = type { %struct.anon.199 }
%struct.anon.199 = type { i32, ptr }
%union.anon.200 = type { %struct.anon.201 }
%struct.anon.201 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.202, i32, i32, i32, i16, i16, %union.anon.204, i32, %union.anon.205, %union.anon.206, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.202 = type { i32 }
%union.anon.204 = type { i32 }
%union.anon.205 = type { i32 }
%union.anon.206 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.nf_conntrack_tuple = type { %struct.nf_conntrack_man, %struct.anon.116 }
%struct.nf_conntrack_man = type { %union.nf_inet_addr, %union.nf_conntrack_man_proto, i16 }
%union.nf_inet_addr = type { [4 x i32] }
%union.nf_conntrack_man_proto = type { i16 }
%struct.anon.116 = type { %union.nf_inet_addr, %union.anon.117, i8, i8 }
%union.anon.117 = type { i16 }
%struct.anon.120 = type { i8, i8 }
%struct.nf_conn = type { %struct.nf_conntrack, %struct.spinlock, i32, %struct.nf_conntrack_zone, [2 x %struct.nf_conntrack_tuple_hash], i32, i16, %struct.possible_net_t, %struct.hlist_node, %struct.anon.213, ptr, i32, i32, ptr, %union.nf_conntrack_proto }
%struct.nf_conntrack = type { %struct.refcount_struct }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nf_conntrack_zone = type { i16, i8, i8 }
%struct.nf_conntrack_tuple_hash = type { %struct.hlist_nulls_node, %struct.nf_conntrack_tuple }
%struct.hlist_nulls_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.213 = type {}
%union.nf_conntrack_proto = type { %struct.nf_ct_dccp, [48 x i8] }
%struct.nf_ct_dccp = type { [2 x i8], i8, i8, i8, i64 }
%struct.nf_ct_timeout = type { i16, ptr, [0 x i8] }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
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
%struct.list_head = type { ptr, ptr }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.106, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.28 }
%union.anon.28 = type { [4 x i32] }

@invmap = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\82\81\00\00\00\00\00\00\00\00\00\8D\8C", [19 x i8] zeroinitializer }, align 32
@nf_conntrack_icmpv6_packet.__UNIQUE_ID_ddebug701 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 26, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nf_conntrack\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nf_conntrack_icmpv6_packet\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"net/netfilter/nf_conntrack_proto_icmpv6.c\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"icmpv6: can't create new conn with type %u\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"short packet\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ICMPv6 checksum failed\00", [41 x i8] zeroinitializer }, align 32
@icmpv6_nla_policy = internal constant { [10 x %struct.nla_policy], [48 x i8] } { [10 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.29 zeroinitializer }], [48 x i8] zeroinitializer }, align 32
@icmpv6_timeout_nla_policy = internal constant { [2 x %struct.nla_policy], [16 x i8] } { [2 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.29 zeroinitializer }], [16 x i8] zeroinitializer }, align 32
@nf_conntrack_l4proto_icmpv6 = dso_local constant { %struct.nf_conntrack_l4proto, [44 x i8] } { %struct.nf_conntrack_l4proto { i8 58, i8 0, i16 0, ptr null, ptr null, ptr null, ptr @icmpv6_tuple_to_nlattr, ptr @icmpv6_nlattr_tuple_size, ptr @icmpv6_nlattr_to_tuple, ptr @icmpv6_nla_policy, %struct.anon.220 { ptr @icmpv6_timeout_nlattr_to_obj, ptr @icmpv6_timeout_obj_to_nlattr, i16 4, i16 1, ptr @icmpv6_timeout_nla_policy }, ptr null }, [44 x i8] zeroinitializer }, align 32
@nf_ct_timeout_data.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"include/net/netfilter/nf_conntrack_timeout.h\00", [51 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@icmpv6_nlattr_tuple_size.size = internal unnamed_addr global i32 0, section ".data..read_mostly", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 128, i64 139]
@___asan_gen_.9 = private unnamed_addr constant [7 x i8] c"invmap\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 50, i32 23 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 106, i32 4 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 144, i32 32 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 151, i32 32 }
@___asan_gen_.30 = private unnamed_addr constant [18 x i8] c"icmpv6_nla_policy\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 190, i32 32 }
@___asan_gen_.33 = private unnamed_addr constant [26 x i8] c"icmpv6_timeout_nla_policy\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 276, i32 1 }
@___asan_gen_.36 = private unnamed_addr constant [28 x i8] c"nf_conntrack_l4proto_icmpv6\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 288, i32 35 }
@___asan_gen_.43 = private unnamed_addr constant [48 x i8] c"../include/net/netfilter/nf_conntrack_timeout.h\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 38, i32 12 }
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.46 = private constant [45 x i8] c"../net/netfilter/nf_conntrack_proto_icmpv6.c\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 129, i32 53 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @invmap, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @icmpv6_nla_policy, ptr @icmpv6_timeout_nla_policy, ptr @nf_conntrack_l4proto_icmpv6, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @invmap to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icmpv6_nla_policy to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icmpv6_timeout_nla_policy to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nf_conntrack_l4proto_icmpv6 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @icmpv6_pkt_to_tuple(ptr noundef %skb, i32 noundef %dataoff, ptr nocapture noundef readnone %net, ptr nocapture noundef writeonly %tuple) local_unnamed_addr #0 align 64 {
entry:
  %_hdr = alloca %struct.icmp6hdr, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_hdr) #7
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %_hdr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %_hdr, align 8
  %1 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %3 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data_len.i.i, align 8
  %5 = add i32 %4, %dataoff
  %sub.i1.i = sub i32 %2, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %sub.i1.i)
  %cmp.i.i = icmp sgt i32 %sub.i1.i, 7
  br i1 %cmp.i.i, label %skb_header_pointer.exit, label %if.end.i.i, !prof !39

if.end.i.i:                                       ; preds = %entry
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %dataoff, ptr noundef nonnull %_hdr, i32 noundef 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.cleanup_crit_edge, label %lor.lhs.false.i.i.if.end_crit_edge

lor.lhs.false.i.i.if.end_crit_edge:               ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

lor.lhs.false.i.i.cleanup_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

skb_header_pointer.exit:                          ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %dataoff
  %cmp = icmp eq ptr %add.ptr.i.i, null
  br i1 %cmp, label %skb_header_pointer.exit.cleanup_crit_edge, label %skb_header_pointer.exit.if.end_crit_edge

skb_header_pointer.exit.if.end_crit_edge:         ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

skb_header_pointer.exit.cleanup_crit_edge:        ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %skb_header_pointer.exit.if.end_crit_edge, %lor.lhs.false.i.i.if.end_crit_edge
  %retval.0.i.i16 = phi ptr [ %add.ptr.i.i, %skb_header_pointer.exit.if.end_crit_edge ], [ %_hdr, %lor.lhs.false.i.i.if.end_crit_edge ]
  %8 = ptrtoint ptr %retval.0.i.i16 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %retval.0.i.i16, align 4
  %u = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %tuple, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %u to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %u, align 4
  %icmp6_dataun = getelementptr inbounds %struct.icmp6hdr, ptr %retval.0.i.i16, i32 0, i32 3
  %11 = ptrtoint ptr %icmp6_dataun to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %icmp6_dataun, align 4
  %u1 = getelementptr inbounds %struct.nf_conntrack_man, ptr %tuple, i32 0, i32 1
  %13 = ptrtoint ptr %u1 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %u1, align 4
  %icmp6_code = getelementptr inbounds %struct.icmp6hdr, ptr %retval.0.i.i16, i32 0, i32 1
  %14 = ptrtoint ptr %icmp6_code to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %icmp6_code, align 1
  %code = getelementptr inbounds %struct.anon.120, ptr %u, i32 0, i32 1
  %16 = ptrtoint ptr %code to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %code, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %skb_header_pointer.exit.cleanup_crit_edge, %lor.lhs.false.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge
  %cmp12 = phi i1 [ false, %skb_header_pointer.exit.cleanup_crit_edge ], [ true, %if.end ], [ false, %if.end.i.i.cleanup_crit_edge ], [ false, %lor.lhs.false.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_hdr) #7
  ret i1 %cmp12
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @nf_conntrack_invert_icmpv6_tuple(ptr nocapture noundef writeonly %tuple, ptr nocapture noundef readonly %orig) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %orig, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %u to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %u, align 4
  %conv = zext i8 %1 to i32
  %sub = add nsw i32 %conv, -128
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %1)
  %cmp = icmp sgt i8 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %sub)
  %cmp3 = icmp ugt i32 %sub, 12
  %or.cond = select i1 %cmp, i1 true, i1 %cmp3
  %2 = add nsw i32 %conv, -130
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %2)
  %tobool.not = icmp ult i32 %2, 9
  %or.cond29 = select i1 %or.cond, i1 true, i1 %tobool.not
  br i1 %or.cond29, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr [13 x i8], ptr @invmap, i32 0, i32 %sub
  %u6 = getelementptr inbounds %struct.nf_conntrack_man, ptr %orig, i32 0, i32 1
  %3 = ptrtoint ptr %u6 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %u6, align 4
  %u8 = getelementptr inbounds %struct.nf_conntrack_man, ptr %tuple, i32 0, i32 1
  %5 = ptrtoint ptr %u8 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %u8, align 4
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %sub12 = add i8 %7, -1
  %u15 = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %tuple, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %u15 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %sub12, ptr %u15, align 4
  %code = getelementptr inbounds %struct.anon.120, ptr %u, i32 0, i32 1
  %9 = ptrtoint ptr %code to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %code, align 1
  %code21 = getelementptr inbounds %struct.anon.120, ptr %u15, i32 0, i32 1
  %11 = ptrtoint ptr %code21 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %code21, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %12 = xor i1 %or.cond29, true
  ret i1 %12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nf_conntrack_icmpv6_packet(ptr noundef %ct, ptr noundef %skb, i32 noundef %ctinfo, ptr nocapture noundef readonly %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ext.i.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 13
  %0 = ptrtoint ptr %ext.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ext.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i.i, label %entry.nf_ct_timeout_lookup.exit_crit_edge, label %nf_ct_ext_exist.exit.i.i.i

entry.nf_ct_timeout_lookup.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %nf_ct_timeout_lookup.exit

nf_ct_ext_exist.exit.i.i.i:                       ; preds = %entry
  %arrayidx.i.i.i.i.i = getelementptr [10 x i8], ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.i.i.not.i.i.i = icmp eq i8 %3, 0
  br i1 %tobool.i.i.not.i.i.i, label %nf_ct_ext_exist.exit.i.i.i.nf_ct_timeout_lookup.exit_crit_edge, label %nf_ct_timeout_find.exit.i

nf_ct_ext_exist.exit.i.i.i.nf_ct_timeout_lookup.exit_crit_edge: ; preds = %nf_ct_ext_exist.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nf_ct_timeout_lookup.exit

nf_ct_timeout_find.exit.i:                        ; preds = %nf_ct_ext_exist.exit.i.i.i
  %conv.i.i.i = zext i8 %3 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 %conv.i.i.i
  %tobool.not.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool.not.i, label %nf_ct_timeout_find.exit.i.nf_ct_timeout_lookup.exit_crit_edge, label %if.then.i

nf_ct_timeout_find.exit.i.nf_ct_timeout_lookup.exit_crit_edge: ; preds = %nf_ct_timeout_find.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nf_ct_timeout_lookup.exit

if.then.i:                                        ; preds = %nf_ct_timeout_find.exit.i
  %4 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %add.ptr.i.i.i, align 4
  %call.i.i = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %if.then.i.nf_ct_timeout_data.exit.i_crit_edge

if.then.i.nf_ct_timeout_data.exit.i_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nf_ct_timeout_data.exit.i

land.lhs.true.i.i:                                ; preds = %if.then.i
  %call3.i.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.nf_ct_timeout_data.exit.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i.i.nf_ct_timeout_data.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nf_ct_timeout_data.exit.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i.i
  %.b13.i.i = load i1, ptr @nf_ct_timeout_data.__warned, align 1
  br i1 %.b13.i.i, label %land.lhs.true5.i.i.nf_ct_timeout_data.exit.i_crit_edge, label %if.then.i.i

land.lhs.true5.i.i.nf_ct_timeout_data.exit.i_crit_edge: ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nf_ct_timeout_data.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @nf_ct_timeout_data.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 38, ptr noundef nonnull @.str.7) #7
  br label %nf_ct_timeout_data.exit.i

nf_ct_timeout_data.exit.i:                        ; preds = %if.then.i.i, %land.lhs.true5.i.i.nf_ct_timeout_data.exit.i_crit_edge, %land.lhs.true.i.i.nf_ct_timeout_data.exit.i_crit_edge, %if.then.i.nf_ct_timeout_data.exit.i_crit_edge
  %cmp.i.i = icmp eq ptr %5, null
  %data.i.i = getelementptr inbounds %struct.nf_ct_timeout, ptr %5, i32 0, i32 2
  %retval.0.i.i = select i1 %cmp.i.i, ptr null, ptr %data.i.i
  br label %nf_ct_timeout_lookup.exit

nf_ct_timeout_lookup.exit:                        ; preds = %nf_ct_timeout_data.exit.i, %nf_ct_timeout_find.exit.i.nf_ct_timeout_lookup.exit_crit_edge, %nf_ct_ext_exist.exit.i.i.i.nf_ct_timeout_lookup.exit_crit_edge, %entry.nf_ct_timeout_lookup.exit_crit_edge
  %timeouts.0.i = phi ptr [ %retval.0.i.i, %nf_ct_timeout_data.exit.i ], [ null, %nf_ct_timeout_find.exit.i.nf_ct_timeout_lookup.exit_crit_edge ], [ null, %nf_ct_ext_exist.exit.i.i.i.nf_ct_timeout_lookup.exit_crit_edge ], [ null, %entry.nf_ct_timeout_lookup.exit_crit_edge ]
  %pf = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 1
  %6 = ptrtoint ptr %pf to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %7)
  %cmp.not = icmp eq i8 %7, 10
  br i1 %cmp.not, label %if.end, label %nf_ct_timeout_lookup.exit.cleanup30_crit_edge

nf_ct_timeout_lookup.exit.cleanup30_crit_edge:    ; preds = %nf_ct_timeout_lookup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup30

if.end:                                           ; preds = %nf_ct_timeout_lookup.exit
  %status.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 5
  %8 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %status.i, align 4
  %10 = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.then3, label %if.end.if.end24_crit_edge

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then3:                                         ; preds = %if.end
  %u = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 0, i32 1, i32 1, i32 1
  %11 = ptrtoint ptr %u to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %u, align 4
  %conv5 = zext i8 %12 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %12)
  %cmp6 = icmp sgt i8 %12, -1
  %13 = add nsw i32 %conv5, -140
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %13)
  %cmp8 = icmp ult i32 %13, -12
  %or.cond = select i1 %cmp6, i1 true, i1 %cmp8
  br i1 %or.cond, label %if.then3.do.body_crit_edge, label %lor.lhs.false10

if.then3.do.body_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

lor.lhs.false10:                                  ; preds = %if.then3
  %14 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i8 %12, label %lor.lhs.false10.do.body_crit_edge [
    i8 -117, label %lor.lhs.false10.if.end24_crit_edge
    i8 -128, label %lor.lhs.false10.if.end24_crit_edge41
  ]

lor.lhs.false10.if.end24_crit_edge41:             ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

lor.lhs.false10.if.end24_crit_edge:               ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

lor.lhs.false10.do.body_crit_edge:                ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false10.do.body_crit_edge, %if.then3.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nf_conntrack_icmpv6_packet.__UNIQUE_ID_ddebug701, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nf_conntrack_icmpv6_packet, %if.then18)) #7
          to label %cleanup30 [label %if.then18], !srcloc !40

if.then18:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nf_conntrack_icmpv6_packet.__UNIQUE_ID_ddebug701, ptr noundef nonnull @.str.3, i32 noundef %conv5) #7
  br label %cleanup30

if.end24:                                         ; preds = %lor.lhs.false10.if.end24_crit_edge, %lor.lhs.false10.if.end24_crit_edge41, %if.end.if.end24_crit_edge
  %tobool25.not = icmp eq ptr %timeouts.0.i, null
  br i1 %tobool25.not, label %if.then26, label %if.end24.if.end29_crit_edge

if.end24.if.end29_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  %ct_net.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 7
  %15 = ptrtoint ptr %ct_net.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ct_net.i, align 4
  %icmpv6.i.i = getelementptr inbounds %struct.net, ptr %16, i32 0, i32 40, i32 10, i32 4
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.end24.if.end29_crit_edge
  %timeout.0 = phi ptr [ %timeouts.0.i, %if.end24.if.end29_crit_edge ], [ %icmpv6.i.i, %if.then26 ]
  %17 = ptrtoint ptr %timeout.0 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %timeout.0, align 4
  tail call void @__nf_ct_refresh_acct(ptr noundef %ct, i32 noundef %ctinfo, ptr noundef %skb, i32 noundef %18, i1 noundef zeroext true) #7
  br label %cleanup30

cleanup30:                                        ; preds = %if.end29, %if.then18, %do.body, %nf_ct_timeout_lookup.exit.cleanup30_crit_edge
  %retval.1 = phi i32 [ 1, %if.end29 ], [ -1, %nf_ct_timeout_lookup.exit.cleanup30_crit_edge ], [ -1, %do.body ], [ -1, %if.then18 ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nf_conntrack_icmpv6_error(ptr noundef %tmpl, ptr noundef %skb, i32 noundef %dataoff, ptr noundef %state) local_unnamed_addr #0 align 64 {
entry:
  %outer_daddr = alloca %union.nf_inet_addr, align 4
  %_ih = alloca %struct.icmp6hdr, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %outer_daddr) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_ih) #7
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %_ih to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %_ih, align 8
  %1 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %3 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data_len.i.i, align 8
  %5 = add i32 %4, %dataoff
  %sub.i1.i = sub i32 %2, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %sub.i1.i)
  %cmp.i.i = icmp sgt i32 %sub.i1.i, 7
  br i1 %cmp.i.i, label %skb_header_pointer.exit, label %if.end.i.i, !prof !39

if.end.i.i:                                       ; preds = %entry
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.then_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.if.then_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %dataoff, ptr noundef nonnull %_ih, i32 noundef 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.if.then_crit_edge, label %lor.lhs.false.i.i.if.end_crit_edge

lor.lhs.false.i.i.if.end_crit_edge:               ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

lor.lhs.false.i.i.if.then_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

skb_header_pointer.exit:                          ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %dataoff
  %cmp = icmp eq ptr %add.ptr.i.i, null
  br i1 %cmp, label %skb_header_pointer.exit.if.then_crit_edge, label %skb_header_pointer.exit.if.end_crit_edge

skb_header_pointer.exit.if.end_crit_edge:         ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

skb_header_pointer.exit.if.then_crit_edge:        ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %skb_header_pointer.exit.if.then_crit_edge, %lor.lhs.false.i.i.if.then_crit_edge, %if.end.i.i.if.then_crit_edge
  call void (ptr, ptr, i8, ptr, ...) @nf_l4proto_log_invalid(ptr noundef %skb, ptr noundef %state, i8 noundef zeroext 58, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.4) #10
  br label %cleanup

if.end:                                           ; preds = %skb_header_pointer.exit.if.end_crit_edge, %lor.lhs.false.i.i.if.end_crit_edge
  %retval.0.i.i59 = phi ptr [ %add.ptr.i.i, %skb_header_pointer.exit.if.end_crit_edge ], [ %_ih, %lor.lhs.false.i.i.if.end_crit_edge ]
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp1 = icmp eq i8 %9, 0
  br i1 %cmp1, label %land.lhs.true, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end
  %net = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 5
  %10 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %net, align 4
  %sysctl_checksum = getelementptr inbounds %struct.net, ptr %11, i32 0, i32 40, i32 6
  %12 = ptrtoint ptr %sysctl_checksum to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %sysctl_checksum, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %land.lhs.true.if.end11_crit_edge, label %land.lhs.true4

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

land.lhs.true4:                                   ; preds = %land.lhs.true
  %call7 = call zeroext i16 @nf_ip6_checksum(ptr noundef %skb, i32 noundef 0, i32 noundef %dataoff, i8 noundef zeroext 58) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call7)
  %tobool9.not = icmp eq i16 %call7, 0
  br i1 %tobool9.not, label %land.lhs.true4.if.end11_crit_edge, label %if.then10

land.lhs.true4.if.end11_crit_edge:                ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then10:                                        ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, i8, ptr, ...) @nf_l4proto_log_invalid(ptr noundef %skb, ptr noundef %state, i8 noundef zeroext 58, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.5) #10
  br label %cleanup

if.end11:                                         ; preds = %land.lhs.true4.if.end11_crit_edge, %land.lhs.true.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %14 = ptrtoint ptr %retval.0.i.i59 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %retval.0.i.i59, align 4
  %conv12 = zext i8 %15 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %15)
  %cmp13 = icmp ult i8 %15, -126
  %16 = add nsw i32 %conv12, -144
  call void @__sanitizer_cov_trace_const_cmp4(i32 -14, i32 %16)
  %cmp16 = icmp ult i32 %16, -14
  %or.cond = select i1 %cmp13, i1 true, i1 %cmp16
  %17 = add nsw i32 %conv12, -137
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %17)
  %tobool20.not = icmp ult i32 %17, 6
  %or.cond52 = select i1 %or.cond, i1 true, i1 %tobool20.not
  br i1 %or.cond52, label %if.end22, label %if.then21

if.then21:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %slow_gro.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %18 = ptrtoint ptr %slow_gro.i.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %bf.load.i.i = load i32, ptr %slow_gro.i.i, align 2
  %bf.set.i.i = or i32 %bf.load.i.i, 4096
  store i32 %bf.set.i.i, ptr %slow_gro.i.i, align 2
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %19 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 7, ptr %_nfct.i.i, align 8
  br label %cleanup

if.end22:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp25 = icmp slt i8 %15, 0
  br i1 %cmp25, label %if.end22.cleanup_crit_edge, label %if.end28

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end28:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %20 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %22 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %23 to i32
  %add.ptr.i.i53 = getelementptr i8, ptr %21, i32 %conv.i.i
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i53, i32 0, i32 6
  %24 = call ptr @memcpy(ptr %outer_daddr, ptr %daddr, i32 16)
  %add = add i32 %dataoff, 8
  %call30 = call i32 @nf_conntrack_inet_error(ptr noundef %tmpl, ptr noundef %skb, i32 noundef %add, ptr noundef %state, i8 noundef zeroext 58, ptr noundef nonnull %outer_daddr) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.end22.cleanup_crit_edge, %if.then21, %if.then10, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.then10 ], [ 1, %if.then21 ], [ %call30, %if.end28 ], [ 1, %if.end22.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_ih) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %outer_daddr) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nf_ip6_checksum(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_conntrack_inet_error(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @nf_conntrack_icmpv6_init_net(ptr nocapture noundef writeonly %net) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %icmpv6.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 4
  %0 = ptrtoint ptr %icmpv6.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 3000, ptr %icmpv6.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @icmpv6_tuple_to_nlattr(ptr noundef %skb, ptr nocapture noundef readonly %t) #0 align 64 {
entry:
  %tmp.i15 = alloca i8, align 1
  %tmp.i13 = alloca i8, align 1
  %tmp.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.nf_conntrack_man, ptr %t, i32 0, i32 1
  %0 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %u, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i) #7
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %1, ptr %tmp.i, align 2
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef 2, ptr noundef nonnull %tmp.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.nla_put_failure_crit_edge

entry.nla_put_failure_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %nla_put_failure

lor.lhs.false:                                    ; preds = %entry
  %u1 = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %t, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %u1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %u1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i13) #7
  %5 = ptrtoint ptr %tmp.i13 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %tmp.i13, align 1
  %call.i14 = call i32 @nla_put(ptr noundef %skb, i32 noundef 8, i32 noundef 1, ptr noundef nonnull %tmp.i13) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14)
  %tobool3.not = icmp eq i32 %call.i14, 0
  br i1 %tobool3.not, label %lor.lhs.false4, label %lor.lhs.false.nla_put_failure_crit_edge

lor.lhs.false.nla_put_failure_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %nla_put_failure

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %code = getelementptr inbounds %struct.anon.120, ptr %u1, i32 0, i32 1
  %6 = ptrtoint ptr %code to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %code, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i15) #7
  %8 = ptrtoint ptr %tmp.i15 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %tmp.i15, align 1
  %call.i16 = call i32 @nla_put(ptr noundef %skb, i32 noundef 9, i32 noundef 1, ptr noundef nonnull %tmp.i15) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16)
  %tobool8.not = icmp eq i32 %call.i16, 0
  br i1 %tobool8.not, label %lor.lhs.false4.return_crit_edge, label %lor.lhs.false4.nla_put_failure_crit_edge

lor.lhs.false4.nla_put_failure_crit_edge:         ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #9
  br label %nla_put_failure

lor.lhs.false4.return_crit_edge:                  ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

nla_put_failure:                                  ; preds = %lor.lhs.false4.nla_put_failure_crit_edge, %lor.lhs.false.nla_put_failure_crit_edge, %entry.nla_put_failure_crit_edge
  br label %return

return:                                           ; preds = %nla_put_failure, %lor.lhs.false4.return_crit_edge
  %retval.0 = phi i32 [ -1, %nla_put_failure ], [ 0, %lor.lhs.false4.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @icmpv6_nlattr_tuple_size() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @icmpv6_nlattr_tuple_size.size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @nla_policy_len(ptr noundef nonnull @icmpv6_nla_policy, i32 noundef 10) #7
  store i32 %call, ptr @icmpv6_nlattr_tuple_size.size, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %1 = load i32, ptr @icmpv6_nlattr_tuple_size.size, align 4
  ret i32 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @icmpv6_nlattr_to_tuple(ptr nocapture noundef readonly %tb, ptr nocapture noundef writeonly %tuple, i32 noundef %flags) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end24_crit_edge, label %if.then

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr ptr, ptr %tb, i32 8
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.then.return_crit_edge, label %if.end

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %if.then
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %add.ptr.i.i, align 1
  %u = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %tuple, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %u to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %u, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %cmp = icmp sgt i8 %3, -1
  br i1 %cmp, label %if.end.return_crit_edge, label %lor.lhs.false

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

lor.lhs.false:                                    ; preds = %if.end
  %conv = zext i8 %3 to i32
  %5 = add nsw i32 %conv, -141
  call void @__sanitizer_cov_trace_const_cmp4(i32 -13, i32 %5)
  %cmp12 = icmp ult i32 %5, -13
  %6 = add nsw i32 %conv, -130
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %6)
  %tobool21.not = icmp ult i32 %6, 9
  %or.cond = select i1 %cmp12, i1 true, i1 %tobool21.not
  br i1 %or.cond, label %lor.lhs.false.return_crit_edge, label %lor.lhs.false.if.end24_crit_edge

lor.lhs.false.if.end24_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end24:                                         ; preds = %lor.lhs.false.if.end24_crit_edge, %entry.if.end24_crit_edge
  %and25 = and i32 %flags, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end24.if.end36_crit_edge, label %if.then27

if.end24.if.end36_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then27:                                        ; preds = %if.end24
  %arrayidx28 = getelementptr ptr, ptr %tb, i32 9
  %7 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx28, align 4
  %tobool29.not = icmp eq ptr %8, null
  br i1 %tobool29.not, label %if.then27.return_crit_edge, label %if.end31

if.then27.return_crit_edge:                       ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end31:                                         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i62 = getelementptr i8, ptr %8, i32 4
  %9 = ptrtoint ptr %add.ptr.i.i62 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %add.ptr.i.i62, align 1
  %u35 = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %tuple, i32 0, i32 1, i32 1
  %code = getelementptr inbounds %struct.anon.120, ptr %u35, i32 0, i32 1
  %11 = ptrtoint ptr %code to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %code, align 1
  br label %if.end36

if.end36:                                         ; preds = %if.end31, %if.end24.if.end36_crit_edge
  %and37 = and i32 %flags, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end36.return_crit_edge, label %if.then39

if.end36.return_crit_edge:                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then39:                                        ; preds = %if.end36
  %arrayidx40 = getelementptr ptr, ptr %tb, i32 7
  %12 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx40, align 4
  %tobool41.not = icmp eq ptr %13, null
  br i1 %tobool41.not, label %if.then39.return_crit_edge, label %if.end43

if.then39.return_crit_edge:                       ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end43:                                         ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i63 = getelementptr i8, ptr %13, i32 4
  %14 = ptrtoint ptr %add.ptr.i.i63 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %add.ptr.i.i63, align 2
  %u46 = getelementptr inbounds %struct.nf_conntrack_man, ptr %tuple, i32 0, i32 1
  %16 = ptrtoint ptr %u46 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %u46, align 4
  br label %return

return:                                           ; preds = %if.end43, %if.then39.return_crit_edge, %if.end36.return_crit_edge, %if.then27.return_crit_edge, %lor.lhs.false.return_crit_edge, %if.end.return_crit_edge, %if.then.return_crit_edge
  %retval.0 = phi i32 [ -22, %if.then.return_crit_edge ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %if.end.return_crit_edge ], [ -22, %if.then27.return_crit_edge ], [ -22, %if.then39.return_crit_edge ], [ 0, %if.end43 ], [ 0, %if.end36.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @icmpv6_timeout_nlattr_to_obj(ptr nocapture noundef readonly %tb, ptr nocapture noundef %net, ptr noundef writeonly %data) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %icmpv6.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 4
  %arrayidx = getelementptr ptr, ptr %tb, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i.i, align 4
  %mul = mul i32 %3, 100
  br label %if.end7

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %icmpv6.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %icmpv6.i, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then3
  %storemerge = phi i32 [ %5, %if.else ], [ %mul, %if.then3 ]
  %tobool.not = icmp eq ptr %data, null
  %spec.select = select i1 %tobool.not, ptr %icmpv6.i, ptr %data
  %6 = ptrtoint ptr %spec.select to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %storemerge, ptr %spec.select, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @icmpv6_timeout_obj_to_nlattr(ptr noundef %skb, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %div = udiv i32 %1, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #7
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %div, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  %. = select i1 %tobool.not, i32 0, i32 -28
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__nf_ct_refresh_acct(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @nf_l4proto_log_invalid(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_policy_len(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !14, !16, !18, !19, !20, !22, !24, !26, !28}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = distinct !{null, !1, !"valid_new", i1 false, i1 false}
!1 = !{!"../net/netfilter/nf_conntrack_proto_icmpv6.c", i32 93, i32 18}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/netfilter/nf_conntrack_proto_icmpv6.c", i32 106, i32 4}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @nf_conntrack_icmpv6_packet.__UNIQUE_ID_ddebug701, !3, !"__UNIQUE_ID_ddebug701", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/netfilter/nf_conntrack_proto_icmpv6.c", i32 144, i32 32}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/netfilter/nf_conntrack_proto_icmpv6.c", i32 151, i32 32}
!12 = !{ptr @nf_conntrack_l4proto_icmpv6, !13, !"nf_conntrack_l4proto_icmpv6", i1 false, i1 false}
!13 = !{!"../net/netfilter/nf_conntrack_proto_icmpv6.c", i32 288, i32 35}
!14 = !{ptr @invmap, !15, !"invmap", i1 false, i1 false}
!15 = !{!"../net/netfilter/nf_conntrack_proto_icmpv6.c", i32 50, i32 23}
!16 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!17 = !{!"../include/net/netfilter/nf_conntrack_timeout.h", i32 38, i32 12}
!18 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../net/netfilter/nf_conntrack_proto_icmpv6.c", i32 129, i32 53}
!22 = distinct !{null, !23, !"noct_valid_new", i1 false, i1 false}
!23 = !{!"../net/netfilter/nf_conntrack_proto_icmpv6.c", i32 57, i32 23}
!24 = !{ptr @icmpv6_nlattr_tuple_size.size, !25, !"size", i1 false, i1 false}
!25 = !{!"../net/netfilter/nf_conntrack_proto_icmpv6.c", i32 230, i32 22}
!26 = !{ptr @icmpv6_nla_policy, !27, !"icmpv6_nla_policy", i1 false, i1 false}
!27 = !{!"../net/netfilter/nf_conntrack_proto_icmpv6.c", i32 190, i32 32}
!28 = !{ptr @icmpv6_timeout_nla_policy, !29, !"icmpv6_timeout_nla_policy", i1 false, i1 false}
!29 = !{!"../net/netfilter/nf_conntrack_proto_icmpv6.c", i32 276, i32 1}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{!"branch_weights", i32 2000, i32 1}
!40 = !{i64 2148882387, i64 2148882392, i64 2148882405, i64 2148882449, i64 2148882483, i64 2148882504}
