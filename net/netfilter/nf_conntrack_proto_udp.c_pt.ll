; ModuleID = '/llk/IR_all_yes/net/netfilter/nf_conntrack_proto_udp.c_pt.bc'
source_filename = "../net/netfilter/nf_conntrack_proto_udp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nla_policy = type { i8, i8, i16, %union.anon.56 }
%union.anon.56 = type { i32 }
%struct.nf_conntrack_l4proto = type { i8, i8, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.218, ptr }
%struct.anon.218 = type { ptr, ptr, i16, i16, ptr }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.sk_buff = type { %union.anon.36, %union.anon.39, %union.anon.40, [48 x i8], %union.anon.41, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.43, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.36 = type { %struct.anon.37 }
%struct.anon.37 = type { ptr, ptr, %union.anon.38 }
%union.anon.38 = type { ptr }
%union.anon.39 = type { ptr }
%union.anon.40 = type { i64 }
%union.anon.41 = type { %struct.anon.42 }
%struct.anon.42 = type { i32, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.45, i32, i32, i32, i16, i16, %union.anon.47, i32, %union.anon.48, %union.anon.49, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.45 = type { i32 }
%union.anon.47 = type { i32 }
%union.anon.48 = type { i32 }
%union.anon.49 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.27, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.27 = type { %struct.anon.28 }
%struct.anon.28 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.133, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.133 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.123, i32, %struct.spinlock }
%union.anon.123 = type { %struct.anon.124 }
%struct.anon.124 = type { ptr, ptr }
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
%struct.nf_conn = type { %struct.nf_conntrack, %struct.spinlock, i32, %struct.nf_conntrack_zone, [2 x %struct.nf_conntrack_tuple_hash], i32, i16, %struct.possible_net_t, %struct.hlist_node, %struct.anon.178, ptr, i32, i32, ptr, %union.nf_conntrack_proto }
%struct.nf_conntrack = type { %struct.refcount_struct }
%struct.nf_conntrack_zone = type { i16, i8, i8 }
%struct.nf_conntrack_tuple_hash = type { %struct.hlist_nulls_node, %struct.nf_conntrack_tuple }
%struct.hlist_nulls_node = type { ptr, ptr }
%struct.nf_conntrack_tuple = type { %struct.nf_conntrack_man, %struct.anon.9 }
%struct.nf_conntrack_man = type { %union.nf_inet_addr, %union.nf_conntrack_man_proto, i16 }
%union.nf_inet_addr = type { [4 x i32] }
%union.nf_conntrack_man_proto = type { i16 }
%struct.anon.9 = type { %union.nf_inet_addr, %union.anon.10, i8, i8 }
%union.anon.10 = type { i16 }
%struct.possible_net_t = type { ptr }
%struct.anon.178 = type {}
%union.nf_conntrack_proto = type { %struct.nf_ct_dccp, [48 x i8] }
%struct.nf_ct_dccp = type { [2 x i8], i8, i8, i8, i64 }
%struct.nf_ct_timeout = type { i16, ptr, [0 x i8] }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@nf_ct_port_nla_policy = external dso_local constant [0 x %struct.nla_policy], align 4
@udp_timeout_nla_policy = internal constant { [3 x %struct.nla_policy], [40 x i8] } { [3 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.56 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.56 zeroinitializer }], [40 x i8] zeroinitializer }, align 32
@nf_conntrack_l4proto_udp = dso_local constant { %struct.nf_conntrack_l4proto, [44 x i8] } { %struct.nf_conntrack_l4proto { i8 17, i8 1, i16 0, ptr null, ptr null, ptr null, ptr @nf_ct_port_tuple_to_nlattr, ptr @nf_ct_port_nlattr_tuple_size, ptr @nf_ct_port_nlattr_to_tuple, ptr @nf_ct_port_nla_policy, %struct.anon.218 { ptr @udp_timeout_nlattr_to_obj, ptr @udp_timeout_obj_to_nlattr, i16 8, i16 2, ptr @udp_timeout_nla_policy }, ptr null }, [44 x i8] zeroinitializer }, align 32
@nf_conntrack_l4proto_udplite = dso_local constant { %struct.nf_conntrack_l4proto, [44 x i8] } { %struct.nf_conntrack_l4proto { i8 -120, i8 1, i16 0, ptr null, ptr null, ptr null, ptr @nf_ct_port_tuple_to_nlattr, ptr @nf_ct_port_nlattr_tuple_size, ptr @nf_ct_port_nlattr_to_tuple, ptr @nf_ct_port_nla_policy, %struct.anon.218 { ptr @udp_timeout_nlattr_to_obj, ptr @udp_timeout_obj_to_nlattr, i16 8, i16 2, ptr @udp_timeout_nla_policy }, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"short packet\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"truncated/malformed packet\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bad checksum\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@nf_ct_timeout_data.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"include/net/netfilter/nf_conntrack_timeout.h\00", [51 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"invalid checksum coverage\00", [38 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"checksum missing\00", [47 x i8] zeroinitializer }, align 32
@___asan_gen_.8 = private unnamed_addr constant [23 x i8] c"udp_timeout_nla_policy\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 261, i32 1 }
@___asan_gen_.11 = private unnamed_addr constant [25 x i8] c"nf_conntrack_l4proto_udp\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 280, i32 35 }
@___asan_gen_.14 = private unnamed_addr constant [29 x i8] c"nf_conntrack_l4proto_udplite\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 302, i32 35 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 55, i32 29 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 61, i32 29 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 76, i32 29 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 41, i32 50 }
@___asan_gen_.33 = private unnamed_addr constant [48 x i8] c"../include/net/netfilter/nf_conntrack_timeout.h\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 38, i32 12 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 158, i32 33 }
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.39 = private constant [42 x i8] c"../net/netfilter/nf_conntrack_proto_udp.c\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 164, i32 33 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @udp_timeout_nla_policy, ptr @nf_conntrack_l4proto_udp, ptr @nf_conntrack_l4proto_udplite, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udp_timeout_nla_policy to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nf_conntrack_l4proto_udp to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nf_conntrack_l4proto_udplite to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nf_conntrack_udp_packet(ptr noundef %ct, ptr noundef %skb, i32 noundef %dataoff, i32 noundef %ctinfo, ptr noundef %state) local_unnamed_addr #0 align 64 {
entry:
  %_hdr.i = alloca %struct.udphdr, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_hdr.i) #6
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %2 = ptrtoint ptr %_hdr.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %_hdr.i, align 8
  %3 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data_len.i.i.i, align 8
  %5 = add i32 %4, %dataoff
  %sub.i1.i.i = sub i32 %1, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %sub.i1.i.i)
  %cmp.i.i.i = icmp sgt i32 %sub.i1.i.i, 7
  br i1 %cmp.i.i.i, label %skb_header_pointer.exit.i, label %if.end.i.i.i, !prof !33

if.end.i.i.i:                                     ; preds = %entry
  %tobool2.not.i.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i.i, label %if.end.i.i.i.udp_error.exit_crit_edge, label %lor.lhs.false.i.i.i

if.end.i.i.i.udp_error.exit_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %udp_error.exit

lor.lhs.false.i.i.i:                              ; preds = %if.end.i.i.i
  %call.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %dataoff, ptr noundef nonnull %_hdr.i, i32 noundef 8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp3.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp3.i.i.i, label %lor.lhs.false.i.i.i.udp_error.exit_crit_edge, label %lor.lhs.false.i.i.i.if.end.i_crit_edge

lor.lhs.false.i.i.i.if.end.i_crit_edge:           ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

lor.lhs.false.i.i.i.udp_error.exit_crit_edge:     ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %udp_error.exit

skb_header_pointer.exit.i:                        ; preds = %entry
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 %dataoff
  %tobool.not.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool.not.i, label %skb_header_pointer.exit.i.udp_error.exit_crit_edge, label %skb_header_pointer.exit.i.if.end.i_crit_edge

skb_header_pointer.exit.i.if.end.i_crit_edge:     ; preds = %skb_header_pointer.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

skb_header_pointer.exit.i.udp_error.exit_crit_edge: ; preds = %skb_header_pointer.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %udp_error.exit

if.end.i:                                         ; preds = %skb_header_pointer.exit.i.if.end.i_crit_edge, %lor.lhs.false.i.i.i.if.end.i_crit_edge
  %retval.0.i.i49.i = phi ptr [ %add.ptr.i.i.i, %skb_header_pointer.exit.i.if.end.i_crit_edge ], [ %_hdr.i, %lor.lhs.false.i.i.i.if.end.i_crit_edge ]
  %sub.i = sub i32 %1, %dataoff
  %len1.i = getelementptr inbounds %struct.udphdr, ptr %retval.0.i.i49.i, i32 0, i32 2
  %8 = ptrtoint ptr %len1.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %len1.i, align 2
  %conv.i = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %conv.i)
  %cmp.i = icmp ult i32 %sub.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %9)
  %cmp5.i = icmp ult i16 %9, 8
  %or.cond.i = or i1 %cmp5.i, %cmp.i
  br i1 %or.cond.i, label %if.end.i.udp_error.exit_crit_edge, label %if.end8.i

if.end.i.udp_error.exit_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %udp_error.exit

if.end8.i:                                        ; preds = %if.end.i
  %check.i = getelementptr inbounds %struct.udphdr, ptr %retval.0.i.i49.i, i32 0, i32 3
  %10 = ptrtoint ptr %check.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %check.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool9.not.i = icmp eq i16 %11, 0
  br i1 %tobool9.not.i, label %if.end8.i.if.end_crit_edge, label %if.end11.i

if.end8.i.if.end_crit_edge:                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end11.i:                                       ; preds = %if.end8.i
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp13.i = icmp eq i8 %13, 0
  br i1 %cmp13.i, label %land.lhs.true.i, label %if.end11.i.if.end_crit_edge

if.end11.i.if.end_crit_edge:                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true.i:                                  ; preds = %if.end11.i
  %net.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 5
  %14 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %net.i, align 4
  %sysctl_checksum.i = getelementptr inbounds %struct.net, ptr %15, i32 0, i32 40, i32 6
  %16 = ptrtoint ptr %sysctl_checksum.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %sysctl_checksum.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool16.not.i = icmp eq i8 %17, 0
  br i1 %tobool16.not.i, label %land.lhs.true.i.if.end_crit_edge, label %land.lhs.true17.i

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true17.i:                                ; preds = %land.lhs.true.i
  %pf.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 1
  %18 = ptrtoint ptr %pf.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %pf.i, align 1
  %conv20.i = zext i8 %19 to i16
  %call21.i = call zeroext i16 @nf_checksum(ptr noundef %skb, i32 noundef 0, i32 noundef %dataoff, i8 noundef zeroext 17, i16 noundef zeroext %conv20.i) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call21.i)
  %tobool23.not.i = icmp eq i16 %call21.i, 0
  br i1 %tobool23.not.i, label %land.lhs.true17.i.if.end_crit_edge, label %land.lhs.true17.i.udp_error.exit_crit_edge

land.lhs.true17.i.udp_error.exit_crit_edge:       ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %udp_error.exit

land.lhs.true17.i.if.end_crit_edge:               ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

udp_error.exit:                                   ; preds = %land.lhs.true17.i.udp_error.exit_crit_edge, %if.end.i.udp_error.exit_crit_edge, %skb_header_pointer.exit.i.udp_error.exit_crit_edge, %lor.lhs.false.i.i.i.udp_error.exit_crit_edge, %if.end.i.i.i.udp_error.exit_crit_edge
  %.str.2.sink.i = phi ptr [ @.str, %lor.lhs.false.i.i.i.udp_error.exit_crit_edge ], [ @.str, %if.end.i.i.i.udp_error.exit_crit_edge ], [ @.str, %skb_header_pointer.exit.i.udp_error.exit_crit_edge ], [ @.str.1, %if.end.i.udp_error.exit_crit_edge ], [ @.str.2, %land.lhs.true17.i.udp_error.exit_crit_edge ]
  call void (ptr, ptr, i8, ptr, ...) @nf_l4proto_log_invalid(ptr noundef %skb, ptr noundef %state, i8 noundef zeroext 17, ptr noundef nonnull @.str.3, ptr noundef nonnull %.str.2.sink.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_hdr.i) #6
  br label %cleanup33

if.end:                                           ; preds = %land.lhs.true17.i.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge, %if.end11.i.if.end_crit_edge, %if.end8.i.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_hdr.i) #6
  %ext.i.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 13
  %20 = ptrtoint ptr %ext.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ext.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i.i.i, label %if.end.if.then2_crit_edge, label %nf_ct_ext_exist.exit.i.i.i

if.end.if.then2_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2

nf_ct_ext_exist.exit.i.i.i:                       ; preds = %if.end
  %arrayidx.i.i.i.i.i = getelementptr [10 x i8], ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.i.i.not.i.i.i = icmp eq i8 %23, 0
  br i1 %tobool.i.i.not.i.i.i, label %nf_ct_ext_exist.exit.i.i.i.if.then2_crit_edge, label %nf_ct_timeout_find.exit.i

nf_ct_ext_exist.exit.i.i.i.if.then2_crit_edge:    ; preds = %nf_ct_ext_exist.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2

nf_ct_timeout_find.exit.i:                        ; preds = %nf_ct_ext_exist.exit.i.i.i
  %conv.i.i.i = zext i8 %23 to i32
  %add.ptr.i.i.i52 = getelementptr i8, ptr %21, i32 %conv.i.i.i
  %tobool.not.i53 = icmp eq ptr %add.ptr.i.i.i52, null
  br i1 %tobool.not.i53, label %nf_ct_timeout_find.exit.i.if.then2_crit_edge, label %if.then.i

nf_ct_timeout_find.exit.i.if.then2_crit_edge:     ; preds = %nf_ct_timeout_find.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2

if.then.i:                                        ; preds = %nf_ct_timeout_find.exit.i
  %24 = ptrtoint ptr %add.ptr.i.i.i52 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %add.ptr.i.i.i52, align 4
  %call.i.i = call i32 @rcu_read_lock_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %if.then.i.nf_ct_timeout_data.exit.i_crit_edge

if.then.i.nf_ct_timeout_data.exit.i_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nf_ct_timeout_data.exit.i

land.lhs.true.i.i:                                ; preds = %if.then.i
  %call3.i.i = call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.nf_ct_timeout_data.exit.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i.i.nf_ct_timeout_data.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nf_ct_timeout_data.exit.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i.i
  %.b13.i.i = load i1, ptr @nf_ct_timeout_data.__warned, align 1
  br i1 %.b13.i.i, label %land.lhs.true5.i.i.nf_ct_timeout_data.exit.i_crit_edge, label %if.then.i.i

land.lhs.true5.i.i.nf_ct_timeout_data.exit.i_crit_edge: ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nf_ct_timeout_data.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @nf_ct_timeout_data.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 38, ptr noundef nonnull @.str.5) #6
  br label %nf_ct_timeout_data.exit.i

nf_ct_timeout_data.exit.i:                        ; preds = %if.then.i.i, %land.lhs.true5.i.i.nf_ct_timeout_data.exit.i_crit_edge, %land.lhs.true.i.i.nf_ct_timeout_data.exit.i_crit_edge, %if.then.i.nf_ct_timeout_data.exit.i_crit_edge
  %cmp.i.i = icmp eq ptr %25, null
  %data.i.i54 = getelementptr inbounds %struct.nf_ct_timeout, ptr %25, i32 0, i32 2
  %tobool.not = icmp eq ptr %data.i.i54, null
  %or.cond = select i1 %cmp.i.i, i1 true, i1 %tobool.not
  br i1 %or.cond, label %nf_ct_timeout_data.exit.i.if.then2_crit_edge, label %nf_ct_timeout_data.exit.i.if.end5_crit_edge

nf_ct_timeout_data.exit.i.if.end5_crit_edge:      ; preds = %nf_ct_timeout_data.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

nf_ct_timeout_data.exit.i.if.then2_crit_edge:     ; preds = %nf_ct_timeout_data.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2

if.then2:                                         ; preds = %nf_ct_timeout_data.exit.i.if.then2_crit_edge, %nf_ct_timeout_find.exit.i.if.then2_crit_edge, %nf_ct_ext_exist.exit.i.i.i.if.then2_crit_edge, %if.end.if.then2_crit_edge
  %ct_net.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 7
  %26 = ptrtoint ptr %ct_net.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ct_net.i, align 4
  %udp.i.i = getelementptr inbounds %struct.net, ptr %27, i32 0, i32 40, i32 10, i32 2
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %nf_ct_timeout_data.exit.i.if.end5_crit_edge
  %timeouts.0 = phi ptr [ %udp.i.i, %if.then2 ], [ %data.i.i54, %nf_ct_timeout_data.exit.i.if.end5_crit_edge ]
  %status.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 5
  %28 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %status.i, align 4
  %30 = and i32 %29, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool7.not = icmp eq i32 %30, 0
  br i1 %tobool7.not, label %if.then8, label %if.end5.if.end9_crit_edge

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %31, 200
  %proto = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14
  %32 = ptrtoint ptr %proto to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add, ptr %proto, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end5.if.end9_crit_edge
  %33 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %status.i, align 4
  %35 = and i32 %34, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool11.not = icmp eq i32 %35, 0
  %36 = ptrtoint ptr %timeouts.0 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %timeouts.0, align 4
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end9
  %proto13 = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14
  %38 = ptrtoint ptr %proto13 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %proto13, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %40 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %39, %40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then15, label %if.then12.if.end17_crit_edge

if.then12.if.end17_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then15:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx16 = getelementptr i32, ptr %timeouts.0, i32 1
  %41 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx16, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.then12.if.end17_crit_edge
  %extra.0 = phi i32 [ %42, %if.then15 ], [ %37, %if.then12.if.end17_crit_edge ]
  call void @__nf_ct_refresh_acct(ptr noundef %ct, i32 noundef %ctinfo, ptr noundef %skb, i32 noundef %extra.0, i1 noundef zeroext true) #6
  %43 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %status.i, align 8
  %and = and i32 %44, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp ne i32 %and, 0
  %cmp.not = xor i1 %cmp, true
  %brmerge = select i1 %tobool19.not, i1 true, i1 %cmp.not
  br i1 %brmerge, label %if.end17.cleanup33_crit_edge, label %land.lhs.true, !prof !34

if.end17.cleanup33_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup33

land.lhs.true:                                    ; preds = %if.end17
  %call26 = call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %status.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then28, label %land.lhs.true.cleanup33_crit_edge

land.lhs.true.cleanup33_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup33

if.then28:                                        ; preds = %land.lhs.true
  %ct_net.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 7
  %45 = ptrtoint ptr %ct_net.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ct_net.i.i, align 4
  %nf_conntrack_event_cb.i = getelementptr inbounds %struct.net, ptr %46, i32 0, i32 40, i32 9
  %47 = ptrtoint ptr %nf_conntrack_event_cb.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile ptr, ptr %nf_conntrack_event_cb.i, align 16
  %tobool.not.i56 = icmp eq ptr %48, null
  br i1 %tobool.not.i56, label %if.then28.cleanup33_crit_edge, label %if.end.i59

if.then28.cleanup33_crit_edge:                    ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup33

if.end.i59:                                       ; preds = %if.then28
  %49 = ptrtoint ptr %ext.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ext.i.i.i.i, align 8
  %tobool.not.i.i.i.i58 = icmp eq ptr %50, null
  br i1 %tobool.not.i.i.i.i58, label %if.end.i59.cleanup33_crit_edge, label %nf_ct_ext_exist.exit.i.i.i62

if.end.i59.cleanup33_crit_edge:                   ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup33

nf_ct_ext_exist.exit.i.i.i62:                     ; preds = %if.end.i59
  %arrayidx.i.i.i.i.i60 = getelementptr [10 x i8], ptr %50, i32 0, i32 4
  %51 = ptrtoint ptr %arrayidx.i.i.i.i.i60 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx.i.i.i.i.i60, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.i.i.not.i.i.i61 = icmp eq i8 %52, 0
  br i1 %tobool.i.i.not.i.i.i61, label %nf_ct_ext_exist.exit.i.i.i62.cleanup33_crit_edge, label %nf_ct_ecache_find.exit.i

nf_ct_ext_exist.exit.i.i.i62.cleanup33_crit_edge: ; preds = %nf_ct_ext_exist.exit.i.i.i62
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup33

nf_ct_ecache_find.exit.i:                         ; preds = %nf_ct_ext_exist.exit.i.i.i62
  %conv.i.i.i63 = zext i8 %52 to i32
  %add.ptr.i.i.i64 = getelementptr i8, ptr %50, i32 %conv.i.i.i63
  %cmp.i65 = icmp eq ptr %add.ptr.i.i.i64, null
  br i1 %cmp.i65, label %nf_ct_ecache_find.exit.i.cleanup33_crit_edge, label %if.end5.i

nf_ct_ecache_find.exit.i.cleanup33_crit_edge:     ; preds = %nf_ct_ecache_find.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup33

if.end5.i:                                        ; preds = %nf_ct_ecache_find.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @_set_bit(i32 noundef 4, ptr noundef nonnull %add.ptr.i.i.i64) #6
  br label %cleanup33

if.else:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  call void @__nf_ct_refresh_acct(ptr noundef %ct, i32 noundef %ctinfo, ptr noundef %skb, i32 noundef %37, i1 noundef zeroext true) #6
  br label %cleanup33

cleanup33:                                        ; preds = %if.else, %if.end5.i, %nf_ct_ecache_find.exit.i.cleanup33_crit_edge, %nf_ct_ext_exist.exit.i.i.i62.cleanup33_crit_edge, %if.end.i59.cleanup33_crit_edge, %if.then28.cleanup33_crit_edge, %land.lhs.true.cleanup33_crit_edge, %if.end17.cleanup33_crit_edge, %udp_error.exit
  %retval.1 = phi i32 [ -1, %udp_error.exit ], [ 1, %land.lhs.true.cleanup33_crit_edge ], [ 1, %if.else ], [ 1, %if.end17.cleanup33_crit_edge ], [ 1, %if.then28.cleanup33_crit_edge ], [ 1, %if.end.i59.cleanup33_crit_edge ], [ 1, %nf_ct_ext_exist.exit.i.i.i62.cleanup33_crit_edge ], [ 1, %nf_ct_ecache_find.exit.i.cleanup33_crit_edge ], [ 1, %if.end5.i ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nf_conntrack_udplite_packet(ptr noundef %ct, ptr noundef %skb, i32 noundef %dataoff, i32 noundef %ctinfo, ptr noundef %state) local_unnamed_addr #0 align 64 {
entry:
  %_hdr.i = alloca %struct.udphdr, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i, align 4
  %sub.i = sub i32 %1, %dataoff
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_hdr.i) #6
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %2 = ptrtoint ptr %_hdr.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %_hdr.i, align 8
  %3 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data_len.i.i.i, align 8
  %5 = add i32 %4, %dataoff
  %sub.i1.i.i = sub i32 %1, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %sub.i1.i.i)
  %cmp.i.i.i = icmp sgt i32 %sub.i1.i.i, 7
  br i1 %cmp.i.i.i, label %skb_header_pointer.exit.i, label %if.end.i.i.i, !prof !33

if.end.i.i.i:                                     ; preds = %entry
  %tobool2.not.i.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i.i, label %if.end.i.i.i.udplite_error.exit_crit_edge, label %lor.lhs.false.i.i.i

if.end.i.i.i.udplite_error.exit_crit_edge:        ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %udplite_error.exit

lor.lhs.false.i.i.i:                              ; preds = %if.end.i.i.i
  %call.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %dataoff, ptr noundef nonnull %_hdr.i, i32 noundef 8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp3.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp3.i.i.i, label %lor.lhs.false.i.i.i.udplite_error.exit_crit_edge, label %lor.lhs.false.i.i.i.if.end.i_crit_edge

lor.lhs.false.i.i.i.if.end.i_crit_edge:           ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

lor.lhs.false.i.i.i.udplite_error.exit_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %udplite_error.exit

skb_header_pointer.exit.i:                        ; preds = %entry
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 %dataoff
  %tobool.not.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool.not.i, label %skb_header_pointer.exit.i.udplite_error.exit_crit_edge, label %skb_header_pointer.exit.i.if.end.i_crit_edge

skb_header_pointer.exit.i.if.end.i_crit_edge:     ; preds = %skb_header_pointer.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

skb_header_pointer.exit.i.udplite_error.exit_crit_edge: ; preds = %skb_header_pointer.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %udplite_error.exit

if.end.i:                                         ; preds = %skb_header_pointer.exit.i.if.end.i_crit_edge, %lor.lhs.false.i.i.i.if.end.i_crit_edge
  %retval.0.i.i57.i = phi ptr [ %add.ptr.i.i.i, %skb_header_pointer.exit.i.if.end.i_crit_edge ], [ %_hdr.i, %lor.lhs.false.i.i.i.if.end.i_crit_edge ]
  %len1.i = getelementptr inbounds %struct.udphdr, ptr %retval.0.i.i57.i, i32 0, i32 2
  %8 = ptrtoint ptr %len1.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %len1.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp.i = icmp eq i16 %9, 0
  br i1 %cmp.i, label %if.end.i.if.end10.i_crit_edge, label %if.else.i

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

if.else.i:                                        ; preds = %if.end.i
  %conv.i = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %9)
  %cmp4.i = icmp ult i16 %9, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %conv.i)
  %cmp6.i = icmp ult i32 %sub.i, %conv.i
  %or.cond.i = select i1 %cmp4.i, i1 true, i1 %cmp6.i
  br i1 %or.cond.i, label %if.else.i.udplite_error.exit_crit_edge, label %if.else.i.if.end10.i_crit_edge

if.else.i.if.end10.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

if.else.i.udplite_error.exit_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %udplite_error.exit

if.end10.i:                                       ; preds = %if.else.i.if.end10.i_crit_edge, %if.end.i.if.end10.i_crit_edge
  %cscov.0.i = phi i32 [ %sub.i, %if.end.i.if.end10.i_crit_edge ], [ %conv.i, %if.else.i.if.end10.i_crit_edge ]
  %check.i = getelementptr inbounds %struct.udphdr, ptr %retval.0.i.i57.i, i32 0, i32 3
  %10 = ptrtoint ptr %check.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %check.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool11.not.i = icmp eq i16 %11, 0
  br i1 %tobool11.not.i, label %if.end10.i.udplite_error.exit_crit_edge, label %if.end13.i

if.end10.i.udplite_error.exit_crit_edge:          ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %udplite_error.exit

if.end13.i:                                       ; preds = %if.end10.i
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp15.i = icmp eq i8 %13, 0
  br i1 %cmp15.i, label %land.lhs.true.i, label %if.end13.i.if.end_crit_edge

if.end13.i.if.end_crit_edge:                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true.i:                                  ; preds = %if.end13.i
  %net.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 5
  %14 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %net.i, align 4
  %sysctl_checksum.i = getelementptr inbounds %struct.net, ptr %15, i32 0, i32 40, i32 6
  %16 = ptrtoint ptr %sysctl_checksum.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %sysctl_checksum.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool18.not.i = icmp eq i8 %17, 0
  br i1 %tobool18.not.i, label %land.lhs.true.i.if.end_crit_edge, label %land.lhs.true19.i

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true19.i:                                ; preds = %land.lhs.true.i
  %pf.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 1
  %18 = ptrtoint ptr %pf.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %pf.i, align 1
  %conv22.i = zext i8 %19 to i16
  %call23.i = call zeroext i16 @nf_checksum_partial(ptr noundef %skb, i32 noundef 0, i32 noundef %dataoff, i32 noundef %cscov.0.i, i8 noundef zeroext 17, i16 noundef zeroext %conv22.i) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call23.i)
  %tobool25.not.i = icmp eq i16 %call23.i, 0
  br i1 %tobool25.not.i, label %land.lhs.true19.i.if.end_crit_edge, label %land.lhs.true19.i.udplite_error.exit_crit_edge

land.lhs.true19.i.udplite_error.exit_crit_edge:   ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %udplite_error.exit

land.lhs.true19.i.if.end_crit_edge:               ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

udplite_error.exit:                               ; preds = %land.lhs.true19.i.udplite_error.exit_crit_edge, %if.end10.i.udplite_error.exit_crit_edge, %if.else.i.udplite_error.exit_crit_edge, %skb_header_pointer.exit.i.udplite_error.exit_crit_edge, %lor.lhs.false.i.i.i.udplite_error.exit_crit_edge, %if.end.i.i.i.udplite_error.exit_crit_edge
  %.str.2.sink.i = phi ptr [ @.str, %lor.lhs.false.i.i.i.udplite_error.exit_crit_edge ], [ @.str, %if.end.i.i.i.udplite_error.exit_crit_edge ], [ @.str, %skb_header_pointer.exit.i.udplite_error.exit_crit_edge ], [ @.str.6, %if.else.i.udplite_error.exit_crit_edge ], [ @.str.7, %if.end10.i.udplite_error.exit_crit_edge ], [ @.str.2, %land.lhs.true19.i.udplite_error.exit_crit_edge ]
  call void (ptr, ptr, i8, ptr, ...) @nf_l4proto_log_invalid(ptr noundef %skb, ptr noundef %state, i8 noundef zeroext -120, ptr noundef nonnull @.str.3, ptr noundef nonnull %.str.2.sink.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_hdr.i) #6
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true19.i.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge, %if.end13.i.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_hdr.i) #6
  %ext.i.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 13
  %20 = ptrtoint ptr %ext.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ext.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i.i.i, label %if.end.if.then2_crit_edge, label %nf_ct_ext_exist.exit.i.i.i

if.end.if.then2_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2

nf_ct_ext_exist.exit.i.i.i:                       ; preds = %if.end
  %arrayidx.i.i.i.i.i = getelementptr [10 x i8], ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.i.i.not.i.i.i = icmp eq i8 %23, 0
  br i1 %tobool.i.i.not.i.i.i, label %nf_ct_ext_exist.exit.i.i.i.if.then2_crit_edge, label %nf_ct_timeout_find.exit.i

nf_ct_ext_exist.exit.i.i.i.if.then2_crit_edge:    ; preds = %nf_ct_ext_exist.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2

nf_ct_timeout_find.exit.i:                        ; preds = %nf_ct_ext_exist.exit.i.i.i
  %conv.i.i.i = zext i8 %23 to i32
  %add.ptr.i.i.i34 = getelementptr i8, ptr %21, i32 %conv.i.i.i
  %tobool.not.i35 = icmp eq ptr %add.ptr.i.i.i34, null
  br i1 %tobool.not.i35, label %nf_ct_timeout_find.exit.i.if.then2_crit_edge, label %if.then.i

nf_ct_timeout_find.exit.i.if.then2_crit_edge:     ; preds = %nf_ct_timeout_find.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2

if.then.i:                                        ; preds = %nf_ct_timeout_find.exit.i
  %24 = ptrtoint ptr %add.ptr.i.i.i34 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %add.ptr.i.i.i34, align 4
  %call.i.i = call i32 @rcu_read_lock_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %if.then.i.nf_ct_timeout_data.exit.i_crit_edge

if.then.i.nf_ct_timeout_data.exit.i_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nf_ct_timeout_data.exit.i

land.lhs.true.i.i:                                ; preds = %if.then.i
  %call3.i.i = call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.nf_ct_timeout_data.exit.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i.i.nf_ct_timeout_data.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nf_ct_timeout_data.exit.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i.i
  %.b13.i.i = load i1, ptr @nf_ct_timeout_data.__warned, align 1
  br i1 %.b13.i.i, label %land.lhs.true5.i.i.nf_ct_timeout_data.exit.i_crit_edge, label %if.then.i.i

land.lhs.true5.i.i.nf_ct_timeout_data.exit.i_crit_edge: ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nf_ct_timeout_data.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @nf_ct_timeout_data.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 38, ptr noundef nonnull @.str.5) #6
  br label %nf_ct_timeout_data.exit.i

nf_ct_timeout_data.exit.i:                        ; preds = %if.then.i.i, %land.lhs.true5.i.i.nf_ct_timeout_data.exit.i_crit_edge, %land.lhs.true.i.i.nf_ct_timeout_data.exit.i_crit_edge, %if.then.i.nf_ct_timeout_data.exit.i_crit_edge
  %cmp.i.i = icmp eq ptr %25, null
  %data.i.i36 = getelementptr inbounds %struct.nf_ct_timeout, ptr %25, i32 0, i32 2
  %tobool.not = icmp eq ptr %data.i.i36, null
  %or.cond = select i1 %cmp.i.i, i1 true, i1 %tobool.not
  br i1 %or.cond, label %nf_ct_timeout_data.exit.i.if.then2_crit_edge, label %nf_ct_timeout_data.exit.i.if.end5_crit_edge

nf_ct_timeout_data.exit.i.if.end5_crit_edge:      ; preds = %nf_ct_timeout_data.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

nf_ct_timeout_data.exit.i.if.then2_crit_edge:     ; preds = %nf_ct_timeout_data.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2

if.then2:                                         ; preds = %nf_ct_timeout_data.exit.i.if.then2_crit_edge, %nf_ct_timeout_find.exit.i.if.then2_crit_edge, %nf_ct_ext_exist.exit.i.i.i.if.then2_crit_edge, %if.end.if.then2_crit_edge
  %ct_net.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 7
  %26 = ptrtoint ptr %ct_net.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ct_net.i, align 4
  %udp.i.i = getelementptr inbounds %struct.net, ptr %27, i32 0, i32 40, i32 10, i32 2
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %nf_ct_timeout_data.exit.i.if.end5_crit_edge
  %timeouts.0 = phi ptr [ %udp.i.i, %if.then2 ], [ %data.i.i36, %nf_ct_timeout_data.exit.i.if.end5_crit_edge ]
  %status = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 5
  %28 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %status, align 4
  %30 = and i32 %29, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool7.not = icmp eq i32 %30, 0
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end5
  %arrayidx = getelementptr i32, ptr %timeouts.0, i32 1
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx, align 4
  call void @__nf_ct_refresh_acct(ptr noundef %ct, i32 noundef %ctinfo, ptr noundef %skb, i32 noundef %32, i1 noundef zeroext true) #6
  %33 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %status, align 8
  %and = and i32 %34, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %if.end14, label %if.then8.cleanup_crit_edge, !prof !33

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %if.then8
  %call16 = call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %status) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then18, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then18:                                        ; preds = %if.end14
  %ct_net.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 7
  %35 = ptrtoint ptr %ct_net.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ct_net.i.i, align 4
  %nf_conntrack_event_cb.i = getelementptr inbounds %struct.net, ptr %36, i32 0, i32 40, i32 9
  %37 = ptrtoint ptr %nf_conntrack_event_cb.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile ptr, ptr %nf_conntrack_event_cb.i, align 16
  %tobool.not.i38 = icmp eq ptr %38, null
  br i1 %tobool.not.i38, label %if.then18.cleanup_crit_edge, label %if.end.i41

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i41:                                       ; preds = %if.then18
  %39 = ptrtoint ptr %ext.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ext.i.i.i.i, align 8
  %tobool.not.i.i.i.i40 = icmp eq ptr %40, null
  br i1 %tobool.not.i.i.i.i40, label %if.end.i41.cleanup_crit_edge, label %nf_ct_ext_exist.exit.i.i.i44

if.end.i41.cleanup_crit_edge:                     ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

nf_ct_ext_exist.exit.i.i.i44:                     ; preds = %if.end.i41
  %arrayidx.i.i.i.i.i42 = getelementptr [10 x i8], ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %arrayidx.i.i.i.i.i42 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.i.i.i.i.i42, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.i.i.not.i.i.i43 = icmp eq i8 %42, 0
  br i1 %tobool.i.i.not.i.i.i43, label %nf_ct_ext_exist.exit.i.i.i44.cleanup_crit_edge, label %nf_ct_ecache_find.exit.i

nf_ct_ext_exist.exit.i.i.i44.cleanup_crit_edge:   ; preds = %nf_ct_ext_exist.exit.i.i.i44
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

nf_ct_ecache_find.exit.i:                         ; preds = %nf_ct_ext_exist.exit.i.i.i44
  %conv.i.i.i45 = zext i8 %42 to i32
  %add.ptr.i.i.i46 = getelementptr i8, ptr %40, i32 %conv.i.i.i45
  %cmp.i47 = icmp eq ptr %add.ptr.i.i.i46, null
  br i1 %cmp.i47, label %nf_ct_ecache_find.exit.i.cleanup_crit_edge, label %if.end5.i

nf_ct_ecache_find.exit.i.cleanup_crit_edge:       ; preds = %nf_ct_ecache_find.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5.i:                                        ; preds = %nf_ct_ecache_find.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @_set_bit(i32 noundef 4, ptr noundef nonnull %add.ptr.i.i.i46) #6
  br label %cleanup

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %timeouts.0 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %timeouts.0, align 4
  call void @__nf_ct_refresh_acct(ptr noundef %ct, i32 noundef %ctinfo, ptr noundef %skb, i32 noundef %44, i1 noundef zeroext true) #6
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end5.i, %nf_ct_ecache_find.exit.i.cleanup_crit_edge, %nf_ct_ext_exist.exit.i.i.i44.cleanup_crit_edge, %if.end.i41.cleanup_crit_edge, %if.then18.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.then8.cleanup_crit_edge, %udplite_error.exit
  %retval.0 = phi i32 [ -1, %udplite_error.exit ], [ 1, %if.then8.cleanup_crit_edge ], [ 1, %if.end14.cleanup_crit_edge ], [ 1, %if.else ], [ 1, %if.then18.cleanup_crit_edge ], [ 1, %if.end.i41.cleanup_crit_edge ], [ 1, %nf_ct_ext_exist.exit.i.i.i44.cleanup_crit_edge ], [ 1, %nf_ct_ecache_find.exit.i.cleanup_crit_edge ], [ 1, %if.end5.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define dso_local void @nf_conntrack_udp_init_net(ptr nocapture noundef writeonly %net) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %udp.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 2
  %0 = ptrtoint ptr %udp.i to i32
  call void @__asan_storeN_noabort(i32 %0, i32 8)
  store i64 12884901900000, ptr %udp.i, align 4
  %offload_timeout = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 2, i32 1
  %1 = ptrtoint ptr %offload_timeout to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 3000, ptr %offload_timeout, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_ct_port_tuple_to_nlattr(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_ct_port_nlattr_tuple_size() #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_ct_port_nlattr_to_tuple(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @udp_timeout_nlattr_to_obj(ptr nocapture noundef readonly %tb, ptr nocapture noundef %net, ptr noundef writeonly %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %udp.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 2
  %tobool.not = icmp eq ptr %data, null
  %spec.select = select i1 %tobool.not, ptr %udp.i, ptr %data
  %0 = ptrtoint ptr %udp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %udp.i, align 4
  %2 = ptrtoint ptr %spec.select to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %spec.select, align 4
  %arrayidx5 = getelementptr %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 2, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx5, align 4
  %arrayidx6 = getelementptr i32, ptr %spec.select, i32 1
  %5 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %arrayidx6, align 4
  %arrayidx7 = getelementptr ptr, ptr %tb, i32 1
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx7, align 4
  %tobool8.not = icmp eq ptr %7, null
  br i1 %tobool8.not, label %entry.if.end13_crit_edge, label %if.then9

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 4
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i.i, align 4
  %mul = mul i32 %9, 100
  %10 = ptrtoint ptr %spec.select to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %mul, ptr %spec.select, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %entry.if.end13_crit_edge
  %arrayidx14 = getelementptr ptr, ptr %tb, i32 2
  %11 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx14, align 4
  %tobool15.not = icmp eq ptr %12, null
  br i1 %tobool15.not, label %if.end13.if.end21_crit_edge, label %if.then16

if.end13.if.end21_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i32 = getelementptr i8, ptr %12, i32 4
  %13 = ptrtoint ptr %add.ptr.i.i32 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.i.i32, align 4
  %mul19 = mul i32 %14, 100
  %15 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %mul19, ptr %arrayidx6, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then16, %if.end13.if.end21_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @udp_timeout_obj_to_nlattr(ptr noundef %skb, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  %tmp.i7 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %div = udiv i32 %1, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #6
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %div, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.nla_put_failure_crit_edge

entry.nla_put_failure_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %nla_put_failure

lor.lhs.false:                                    ; preds = %entry
  %arrayidx1 = getelementptr i32, ptr %data, i32 1
  %3 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx1, align 4
  %div2 = udiv i32 %4, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i7) #6
  %5 = ptrtoint ptr %tmp.i7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %div2, ptr %tmp.i7, align 4
  %call.i8 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i7) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8)
  %tobool4.not = icmp eq i32 %call.i8, 0
  br i1 %tobool4.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.nla_put_failure_crit_edge

lor.lhs.false.nla_put_failure_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %nla_put_failure

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

nla_put_failure:                                  ; preds = %lor.lhs.false.nla_put_failure_crit_edge, %entry.nla_put_failure_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %nla_put_failure, %lor.lhs.false.cleanup_crit_edge
  %retval.0 = phi i32 [ -28, %nla_put_failure ], [ 0, %lor.lhs.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nf_checksum(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @nf_l4proto_log_invalid(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__nf_ct_refresh_acct(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nf_checksum_partial(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !18, !20, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @nf_conntrack_l4proto_udp, !1, !"nf_conntrack_l4proto_udp", i1 false, i1 false}
!1 = !{!"../net/netfilter/nf_conntrack_proto_udp.c", i32 280, i32 35}
!2 = !{ptr @nf_conntrack_l4proto_udplite, !3, !"nf_conntrack_l4proto_udplite", i1 false, i1 false}
!3 = !{!"../net/netfilter/nf_conntrack_proto_udp.c", i32 302, i32 35}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/netfilter/nf_conntrack_proto_udp.c", i32 55, i32 29}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/netfilter/nf_conntrack_proto_udp.c", i32 61, i32 29}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/netfilter/nf_conntrack_proto_udp.c", i32 76, i32 29}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/netfilter/nf_conntrack_proto_udp.c", i32 41, i32 50}
!12 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!13 = !{!"../include/net/netfilter/nf_conntrack_timeout.h", i32 38, i32 12}
!14 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/netfilter/nf_conntrack_proto_udp.c", i32 158, i32 33}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../net/netfilter/nf_conntrack_proto_udp.c", i32 164, i32 33}
!20 = distinct !{null, !21, !"udp_timeouts", i1 false, i1 false}
!21 = !{!"../net/netfilter/nf_conntrack_proto_udp.c", i32 27, i32 27}
!22 = !{ptr @udp_timeout_nla_policy, !23, !"udp_timeout_nla_policy", i1 false, i1 false}
!23 = !{!"../net/netfilter/nf_conntrack_proto_udp.c", i32 261, i32 1}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{!"branch_weights", i32 2000, i32 1}
!34 = !{!"branch_weights", i32 2002, i32 2000}
