; ModuleID = '/llk/IR_all_yes/net/netfilter/nf_conntrack_proto_icmp.c_pt.bc'
source_filename = "../net/netfilter/nf_conntrack_proto_icmp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.nla_policy = type { i8, i8, i16, %union.anon.28 }
%union.anon.28 = type { i32 }
%struct.nf_conntrack_l4proto = type { i8, i8, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.179, ptr }
%struct.anon.179 = type { ptr, ptr, i16, i16, ptr }
%struct.nf_conntrack_zone = type { i16, i8, i8 }
%struct.icmphdr = type { i8, i8, i16, %union.anon.175 }
%union.anon.175 = type { i32 }
%struct.sk_buff = type { %union.anon, %union.anon.153, %union.anon.154, [48 x i8], %union.anon.155, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.157, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.153 = type { ptr }
%union.anon.154 = type { i64 }
%union.anon.155 = type { %struct.anon.156 }
%struct.anon.156 = type { i32, ptr }
%union.anon.157 = type { %struct.anon.158 }
%struct.anon.158 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.159, i32, i32, i32, i16, i16, %union.anon.161, i32, %union.anon.162, %union.anon.163, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.159 = type { i32 }
%union.anon.161 = type { i32 }
%union.anon.162 = type { i32 }
%union.anon.163 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.nf_conntrack_tuple = type { %struct.nf_conntrack_man, %struct.anon.115 }
%struct.nf_conntrack_man = type { %union.nf_inet_addr, %union.nf_conntrack_man_proto, i16 }
%union.nf_inet_addr = type { [4 x i32] }
%union.nf_conntrack_man_proto = type { i16 }
%struct.anon.115 = type { %union.nf_inet_addr, %union.anon.116, i8, i8 }
%union.anon.116 = type { i16 }
%struct.anon.119 = type { i8, i8 }
%struct.nf_conn = type { %struct.nf_conntrack, %struct.spinlock, i32, %struct.nf_conntrack_zone, [2 x %struct.nf_conntrack_tuple_hash], i32, i16, %struct.possible_net_t, %struct.hlist_node, %struct.anon.170, ptr, i32, i32, ptr, %union.nf_conntrack_proto }
%struct.nf_conntrack = type { %struct.refcount_struct }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nf_conntrack_tuple_hash = type { %struct.hlist_nulls_node, %struct.nf_conntrack_tuple }
%struct.hlist_nulls_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.170 = type {}
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.105, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.105 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }

@invmap = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\09\00\00\00\00\00\00\00\01\00\00\00\00\0F\0E\11\10\13\12", [45 x i8] zeroinitializer }, align 32
@nf_conntrack_icmp_packet.__UNIQUE_ID_ddebug600 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 23, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nf_conntrack\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nf_conntrack_icmp_packet\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"net/netfilter/nf_conntrack_proto_icmp.c\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"icmp: can't create new conn with type %u\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"outer daddr %pI4 != inner %pI4\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"outer daddr %pI6 != inner %pI6\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"short packet\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bad hw icmp checksum\00", [43 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"invalid icmp type\00", [46 x i8] zeroinitializer }, align 32
@icmp_nla_policy = internal constant { [10 x %struct.nla_policy], [48 x i8] } { [10 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer], [48 x i8] zeroinitializer }, align 32
@icmp_timeout_nla_policy = internal constant { [2 x %struct.nla_policy], [16 x i8] } { [2 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.28 zeroinitializer }], [16 x i8] zeroinitializer }, align 32
@nf_conntrack_l4proto_icmp = dso_local constant { %struct.nf_conntrack_l4proto, [44 x i8] } { %struct.nf_conntrack_l4proto { i8 1, i8 0, i16 0, ptr null, ptr null, ptr null, ptr @icmp_tuple_to_nlattr, ptr @icmp_nlattr_tuple_size, ptr @icmp_nlattr_to_tuple, ptr @icmp_nla_policy, %struct.anon.179 { ptr @icmp_timeout_nlattr_to_obj, ptr @icmp_timeout_obj_to_nlattr, i16 4, i16 1, ptr @icmp_timeout_nla_policy }, ptr null }, [44 x i8] zeroinitializer }, align 32
@nf_ct_timeout_data.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"include/net/netfilter/nf_conntrack_timeout.h\00", [51 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@nf_ct_zone_dflt = external dso_local constant %struct.nf_conntrack_zone, align 2
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@icmp_nlattr_tuple_size.size = internal unnamed_addr global i32 0, section ".data..read_mostly", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@__sancov_gen_cov_switch_values.12 = internal global [7 x i64] [i64 5, i64 8, i64 3, i64 4, i64 5, i64 11, i64 12]
@___asan_gen_.13 = private unnamed_addr constant [7 x i8] c"invmap\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 45, i32 23 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 92, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 175, i32 13 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 180, i32 13 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 215, i32 30 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 223, i32 30 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 234, i32 30 }
@___asan_gen_.43 = private unnamed_addr constant [16 x i8] c"icmp_nla_policy\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 268, i32 32 }
@___asan_gen_.46 = private unnamed_addr constant [24 x i8] c"icmp_timeout_nla_policy\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 353, i32 1 }
@___asan_gen_.49 = private unnamed_addr constant [26 x i8] c"nf_conntrack_l4proto_icmp\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 365, i32 35 }
@___asan_gen_.56 = private unnamed_addr constant [48 x i8] c"../include/net/netfilter/nf_conntrack_timeout.h\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 38, i32 12 }
@___asan_gen_.58 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.59 = private constant [43 x i8] c"../net/netfilter/nf_conntrack_proto_icmp.c\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 200, i32 51 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @invmap, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @icmp_nla_policy, ptr @icmp_timeout_nla_policy, ptr @nf_conntrack_l4proto_icmp, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @invmap to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icmp_nla_policy to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icmp_timeout_nla_policy to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nf_conntrack_l4proto_icmp to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @icmp_pkt_to_tuple(ptr noundef %skb, i32 noundef %dataoff, ptr nocapture noundef readnone %net, ptr nocapture noundef writeonly %tuple) local_unnamed_addr #0 align 64 {
entry:
  %_hdr = alloca %struct.icmphdr, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_hdr) #8
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
  br i1 %cmp.i.i, label %skb_header_pointer.exit, label %if.end.i.i, !prof !43

if.end.i.i:                                       ; preds = %entry
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %dataoff, ptr noundef nonnull %_hdr, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.cleanup_crit_edge, label %lor.lhs.false.i.i.if.end_crit_edge

lor.lhs.false.i.i.if.end_crit_edge:               ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

lor.lhs.false.i.i.cleanup_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

skb_header_pointer.exit.cleanup_crit_edge:        ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %skb_header_pointer.exit.if.end_crit_edge, %lor.lhs.false.i.i.if.end_crit_edge
  %retval.0.i.i19 = phi ptr [ %add.ptr.i.i, %skb_header_pointer.exit.if.end_crit_edge ], [ %_hdr, %lor.lhs.false.i.i.if.end_crit_edge ]
  %8 = ptrtoint ptr %retval.0.i.i19 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %retval.0.i.i19, align 4
  %u = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %tuple, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %u to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %u, align 4
  %un = getelementptr inbounds %struct.icmphdr, ptr %retval.0.i.i19, i32 0, i32 3
  %11 = ptrtoint ptr %un to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %un, align 4
  %u2 = getelementptr inbounds %struct.nf_conntrack_man, ptr %tuple, i32 0, i32 1
  %13 = ptrtoint ptr %u2 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %u2, align 4
  %code = getelementptr inbounds %struct.icmphdr, ptr %retval.0.i.i19, i32 0, i32 1
  %14 = ptrtoint ptr %code to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %code, align 1
  %code6 = getelementptr inbounds %struct.anon.119, ptr %u, i32 0, i32 1
  %16 = ptrtoint ptr %code6 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %code6, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %skb_header_pointer.exit.cleanup_crit_edge, %lor.lhs.false.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge
  %cmp15 = phi i1 [ false, %skb_header_pointer.exit.cleanup_crit_edge ], [ true, %if.end ], [ false, %if.end.i.i.cleanup_crit_edge ], [ false, %lor.lhs.false.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_hdr) #8
  ret i1 %cmp15
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @nf_conntrack_invert_icmp_tuple(ptr nocapture noundef writeonly %tuple, ptr nocapture noundef readonly %orig) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %orig, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %u to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %u, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %1)
  %cmp = icmp ugt i8 %1, 18
  br i1 %cmp, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %conv = zext i8 %1 to i32
  %2 = lshr i32 7934, %conv
  %3 = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.not = icmp eq i32 %3, 0
  br i1 %tobool.not.not, label %if.end, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %u5 = getelementptr inbounds %struct.nf_conntrack_man, ptr %orig, i32 0, i32 1
  %4 = ptrtoint ptr %u5 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %u5, align 4
  %u7 = getelementptr inbounds %struct.nf_conntrack_man, ptr %tuple, i32 0, i32 1
  %6 = ptrtoint ptr %u7 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %u7, align 4
  %7 = ptrtoint ptr %u to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %u, align 4
  %idxprom12 = zext i8 %8 to i32
  %arrayidx13 = getelementptr [19 x i8], ptr @invmap, i32 0, i32 %idxprom12
  %9 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx13, align 1
  %sub = add i8 %10, -1
  %u17 = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %tuple, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %u17 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %sub, ptr %u17, align 4
  %code = getelementptr inbounds %struct.anon.119, ptr %u, i32 0, i32 1
  %12 = ptrtoint ptr %code to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %code, align 1
  %code23 = getelementptr inbounds %struct.anon.119, ptr %u17, i32 0, i32 1
  %14 = ptrtoint ptr %code23 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %code23, align 1
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ true, %if.end ], [ false, %lor.lhs.false.return_crit_edge ], [ false, %entry.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nf_conntrack_icmp_packet(ptr noundef %ct, ptr noundef %skb, i32 noundef %ctinfo, ptr nocapture noundef readonly %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ext.i.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 13
  %0 = ptrtoint ptr %ext.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ext.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i.i, label %entry.nf_ct_timeout_lookup.exit_crit_edge, label %nf_ct_ext_exist.exit.i.i.i

entry.nf_ct_timeout_lookup.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %nf_ct_timeout_lookup.exit

nf_ct_timeout_find.exit.i:                        ; preds = %nf_ct_ext_exist.exit.i.i.i
  %conv.i.i.i = zext i8 %3 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 %conv.i.i.i
  %tobool.not.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool.not.i, label %nf_ct_timeout_find.exit.i.nf_ct_timeout_lookup.exit_crit_edge, label %if.then.i

nf_ct_timeout_find.exit.i.nf_ct_timeout_lookup.exit_crit_edge: ; preds = %nf_ct_timeout_find.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nf_ct_timeout_lookup.exit

if.then.i:                                        ; preds = %nf_ct_timeout_find.exit.i
  %4 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %add.ptr.i.i.i, align 4
  %call.i.i = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %if.then.i.nf_ct_timeout_data.exit.i_crit_edge

if.then.i.nf_ct_timeout_data.exit.i_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nf_ct_timeout_data.exit.i

land.lhs.true.i.i:                                ; preds = %if.then.i
  %call3.i.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.nf_ct_timeout_data.exit.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i.i.nf_ct_timeout_data.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nf_ct_timeout_data.exit.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i.i
  %.b13.i.i = load i1, ptr @nf_ct_timeout_data.__warned, align 1
  br i1 %.b13.i.i, label %land.lhs.true5.i.i.nf_ct_timeout_data.exit.i_crit_edge, label %if.then.i.i

land.lhs.true5.i.i.nf_ct_timeout_data.exit.i_crit_edge: ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nf_ct_timeout_data.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @nf_ct_timeout_data.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 38, ptr noundef nonnull @.str.10) #8
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
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %cmp.not = icmp eq i8 %7, 2
  br i1 %cmp.not, label %if.end, label %nf_ct_timeout_lookup.exit.cleanup_crit_edge

nf_ct_timeout_lookup.exit.cleanup_crit_edge:      ; preds = %nf_ct_timeout_lookup.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %nf_ct_timeout_lookup.exit
  %u = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 0, i32 1, i32 1, i32 1
  %8 = ptrtoint ptr %u to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %u, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %9)
  %cmp3 = icmp ugt i8 %9, 17
  br i1 %cmp3, label %if.end.do.body_crit_edge, label %lor.lhs.false

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

lor.lhs.false:                                    ; preds = %if.end
  %conv2 = zext i8 %9 to i32
  %10 = lshr i32 89855, %conv2
  %11 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.not = icmp eq i32 %11, 0
  br i1 %tobool.not.not, label %if.end29, label %lor.lhs.false.do.body_crit_edge

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %if.end.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nf_conntrack_icmp_packet.__UNIQUE_ID_ddebug600, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nf_conntrack_icmp_packet, %if.then17)) #8
          to label %cleanup [label %if.then17], !srcloc !44

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %u to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %u, align 4
  %conv24 = zext i8 %13 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nf_conntrack_icmp_packet.__UNIQUE_ID_ddebug600, ptr noundef nonnull @.str.3, i32 noundef %conv24) #8
  br label %cleanup

if.end29:                                         ; preds = %lor.lhs.false
  %tobool30.not = icmp eq ptr %timeouts.0.i, null
  br i1 %tobool30.not, label %if.then31, label %if.end29.if.end35_crit_edge

if.end29.if.end35_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then31:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  %ct_net.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 7
  %14 = ptrtoint ptr %ct_net.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ct_net.i, align 4
  %icmp.i = getelementptr inbounds %struct.net, ptr %15, i32 0, i32 40, i32 10, i32 3
  br label %if.end35

if.end35:                                         ; preds = %if.then31, %if.end29.if.end35_crit_edge
  %timeout.0 = phi ptr [ %timeouts.0.i, %if.end29.if.end35_crit_edge ], [ %icmp.i, %if.then31 ]
  %16 = ptrtoint ptr %timeout.0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %timeout.0, align 4
  tail call void @__nf_ct_refresh_acct(ptr noundef %ct, i32 noundef %ctinfo, ptr noundef %skb, i32 noundef %17, i1 noundef zeroext true) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.then17, %do.body, %nf_ct_timeout_lookup.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end35 ], [ -1, %nf_ct_timeout_lookup.exit.cleanup_crit_edge ], [ -1, %do.body ], [ -1, %if.then17 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nf_conntrack_inet_error(ptr noundef %tmpl, ptr noundef %skb, i32 noundef %dataoff, ptr noundef %state, i8 noundef zeroext %l4proto, ptr noundef %outer_daddr) local_unnamed_addr #0 align 64 {
entry:
  %innertuple = alloca %struct.nf_conntrack_tuple, align 4
  %origtuple = alloca %struct.nf_conntrack_tuple, align 4
  %tmp = alloca %struct.nf_conntrack_zone, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %innertuple) #8
  %0 = call ptr @memset(ptr %innertuple, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %origtuple) #8
  %1 = call ptr @memset(ptr %origtuple, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #8
  %2 = getelementptr inbounds %struct.nf_conntrack_zone, ptr %tmp, i32 0, i32 1
  %3 = getelementptr inbounds %struct.nf_conntrack_zone, ptr %tmp, i32 0, i32 2
  %_nfct.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %4 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %tmp, align 4
  %5 = ptrtoint ptr %_nfct.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %_nfct.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %6)
  %tobool.not = icmp ult i32 %6, 8
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !43

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 120, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tobool.not.i = icmp eq ptr %tmpl, null
  br i1 %tobool.not.i, label %if.end.nf_ct_zone_tmpl.exit_crit_edge, label %if.end.i

if.end.nf_ct_zone_tmpl.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %nf_ct_zone_tmpl.exit

if.end.i:                                         ; preds = %if.end
  %flags.i = getelementptr inbounds %struct.nf_conn, ptr %tmpl, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %flags.i, align 2
  %9 = and i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool1.not.i = icmp eq i8 %9, 0
  br i1 %tobool1.not.i, label %if.end5.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %10 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %conv3.i = trunc i32 %12 to i16
  %dir.i = getelementptr inbounds %struct.nf_conn, ptr %tmpl, i32 0, i32 3, i32 2
  %13 = ptrtoint ptr %dir.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %dir.i, align 1
  %15 = ptrtoint ptr %tmp to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv3.i, ptr %tmp, align 4
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %2, align 2
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %14, ptr %3, align 1
  br label %nf_ct_zone_tmpl.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %zone.i.i = getelementptr inbounds %struct.nf_conn, ptr %tmpl, i32 0, i32 3
  br label %nf_ct_zone_tmpl.exit

nf_ct_zone_tmpl.exit:                             ; preds = %if.end5.i, %if.then2.i, %if.end.nf_ct_zone_tmpl.exit_crit_edge
  %retval.0.i = phi ptr [ %tmp, %if.then2.i ], [ %zone.i.i, %if.end5.i ], [ @nf_ct_zone_dflt, %if.end.nf_ct_zone_tmpl.exit_crit_edge ]
  %pf = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 1
  %18 = ptrtoint ptr %pf to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %pf, align 1
  %conv = zext i8 %19 to i16
  %net = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 5
  %20 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %net, align 4
  %call22 = call zeroext i1 @nf_ct_get_tuplepr(ptr noundef %skb, i32 noundef %dataoff, i16 noundef zeroext %conv, ptr noundef %21, ptr noundef nonnull %origtuple) #8
  br i1 %call22, label %if.end24, label %nf_ct_zone_tmpl.exit.cleanup_crit_edge

nf_ct_zone_tmpl.exit.cleanup_crit_edge:           ; preds = %nf_ct_zone_tmpl.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end24:                                         ; preds = %nf_ct_zone_tmpl.exit
  %call25 = call zeroext i1 @nf_ct_invert_tuple(ptr noundef nonnull %innertuple, ptr noundef nonnull %origtuple) #8
  br i1 %call25, label %if.end27, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end27:                                         ; preds = %if.end24
  %22 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %net, align 4
  %call29 = call ptr @nf_conntrack_find_get(ptr noundef %23, ptr noundef %retval.0.i, ptr noundef nonnull %innertuple) #8
  %tobool30.not = icmp eq ptr %call29, null
  br i1 %tobool30.not, label %if.end27.cleanup_crit_edge, label %if.end32

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end32:                                         ; preds = %if.end27
  %dir.i88 = getelementptr inbounds %struct.nf_conntrack_tuple_hash, ptr %call29, i32 0, i32 1, i32 1, i32 3
  %24 = ptrtoint ptr %dir.i88 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %dir.i88, align 1
  %conv.i = zext i8 %25 to i32
  %.neg.i = mul nsw i32 %conv.i, -48
  %idx.neg.i = add nsw i32 %.neg.i, -56
  %add.ptr.i = getelementptr i8, ptr %call29, i32 %idx.neg.i
  %dst37 = getelementptr %struct.nf_conn, ptr %add.ptr.i, i32 0, i32 4, i32 %conv.i, i32 1, i32 1
  %26 = ptrtoint ptr %outer_daddr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %outer_daddr, align 4
  %28 = ptrtoint ptr %dst37 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dst37, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp.i = icmp eq i32 %27, %29
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end32.if.then40_crit_edge

if.end32.if.then40_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then40

land.lhs.true.i:                                  ; preds = %if.end32
  %arrayidx2.i = getelementptr [4 x i32], ptr %outer_daddr, i32 0, i32 1
  %30 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx2.i, align 4
  %arrayidx3.i = getelementptr [4 x i32], ptr %dst37, i32 0, i32 1
  %32 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %cmp4.i = icmp eq i32 %31, %33
  br i1 %cmp4.i, label %land.lhs.true5.i, label %land.lhs.true.i.if.then40_crit_edge

land.lhs.true.i.if.then40_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then40

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %arrayidx6.i = getelementptr [4 x i32], ptr %outer_daddr, i32 0, i32 2
  %34 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx6.i, align 4
  %arrayidx7.i = getelementptr [4 x i32], ptr %dst37, i32 0, i32 2
  %36 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx7.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %37)
  %cmp8.i = icmp eq i32 %35, %37
  br i1 %cmp8.i, label %nf_inet_addr_cmp.exit, label %land.lhs.true5.i.if.then40_crit_edge

land.lhs.true5.i.if.then40_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then40

nf_inet_addr_cmp.exit:                            ; preds = %land.lhs.true5.i
  %arrayidx9.i = getelementptr [4 x i32], ptr %outer_daddr, i32 0, i32 3
  %38 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx9.i, align 4
  %arrayidx10.i = getelementptr [4 x i32], ptr %dst37, i32 0, i32 3
  %40 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx10.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %41)
  %cmp11.i.not = icmp eq i32 %39, %41
  br i1 %cmp11.i.not, label %if.end52, label %nf_inet_addr_cmp.exit.if.then40_crit_edge

nf_inet_addr_cmp.exit.if.then40_crit_edge:        ; preds = %nf_inet_addr_cmp.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then40

if.then40:                                        ; preds = %nf_inet_addr_cmp.exit.if.then40_crit_edge, %land.lhs.true5.i.if.then40_crit_edge, %land.lhs.true.i.if.then40_crit_edge, %if.end32.if.then40_crit_edge
  %42 = ptrtoint ptr %pf to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %pf, align 1
  %44 = zext i8 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values)
  switch i8 %43, label %if.then40.if.end51_crit_edge [
    i8 2, label %if.then40.if.end51.sink.split_crit_edge
    i8 10, label %if.then49
  ]

if.then40.if.end51.sink.split_crit_edge:          ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51.sink.split

if.then40.if.end51_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.then49:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51.sink.split

if.end51.sink.split:                              ; preds = %if.then49, %if.then40.if.end51.sink.split_crit_edge
  %.str.5.sink = phi ptr [ @.str.5, %if.then49 ], [ @.str.4, %if.then40.if.end51.sink.split_crit_edge ]
  call void (ptr, ptr, i8, ptr, ...) @nf_l4proto_log_invalid(ptr noundef %skb, ptr noundef %state, i8 noundef zeroext %l4proto, ptr noundef nonnull %.str.5.sink, ptr noundef %outer_daddr, ptr noundef %dst37) #11
  br label %if.end51

if.end51:                                         ; preds = %if.end51.sink.split, %if.then40.if.end51_crit_edge
  %tobool.not.i89 = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i89, label %if.end51.cleanup_crit_edge, label %land.lhs.true.i90

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.i90:                                ; preds = %if.end51
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %add.ptr.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !45
  call void @llvm.prefetch.p0(ptr nonnull %add.ptr.i, i32 1, i32 3, i32 1) #8
  %45 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %add.ptr.i, ptr nonnull %add.ptr.i, i32 1, ptr nonnull elementtype(i32) %add.ptr.i) #8, !srcloc !46
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %45, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i90
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !43

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef nonnull %add.ptr.i, i32 noundef 3) #8
  br label %cleanup

if.then.i:                                        ; preds = %land.lhs.true.i90
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !47
  call void @nf_ct_destroy(ptr noundef nonnull %add.ptr.i) #8
  br label %cleanup

if.end52:                                         ; preds = %nf_inet_addr_cmp.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %25)
  %cmp53 = icmp eq i8 %25, 1
  %spec.select = select i1 %cmp53, i32 4, i32 1
  %46 = ptrtoint ptr %add.ptr.i to i32
  %or.i = or i32 %spec.select, %46
  %slow_gro.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %47 = ptrtoint ptr %slow_gro.i.i to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %bf.load.i.i = load i32, ptr %slow_gro.i.i, align 2
  %bf.set.i.i = or i32 %bf.load.i.i, 4096
  store i32 %bf.set.i.i, ptr %slow_gro.i.i, align 2
  %48 = ptrtoint ptr %_nfct.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %or.i, ptr %_nfct.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end52, %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.end51.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %nf_ct_zone_tmpl.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end52 ], [ -1, %nf_ct_zone_tmpl.exit.cleanup_crit_edge ], [ -1, %if.end24.cleanup_crit_edge ], [ -1, %if.end27.cleanup_crit_edge ], [ -1, %if.end51.cleanup_crit_edge ], [ -1, %if.end5.i.i.i.i.cleanup_crit_edge ], [ -1, %if.then10.i.i.i.i ], [ -1, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %origtuple) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %innertuple) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nf_ct_get_tuplepr(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nf_ct_invert_tuple(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nf_conntrack_find_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @nf_l4proto_log_invalid(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nf_conntrack_icmpv4_error(ptr noundef %tmpl, ptr noundef %skb, i32 noundef %dataoff, ptr noundef %state) local_unnamed_addr #0 align 64 {
entry:
  %outer_daddr = alloca %union.nf_inet_addr, align 4
  %_ih = alloca %struct.icmphdr, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %outer_daddr) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_ih) #8
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
  br i1 %cmp.i.i, label %skb_header_pointer.exit, label %if.end.i.i, !prof !43

if.end.i.i:                                       ; preds = %entry
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.then_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.if.then_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %dataoff, ptr noundef nonnull %_ih, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.if.then_crit_edge, label %lor.lhs.false.i.i.if.end_crit_edge

lor.lhs.false.i.i.if.end_crit_edge:               ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

lor.lhs.false.i.i.if.then_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

skb_header_pointer.exit.if.then_crit_edge:        ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %skb_header_pointer.exit.if.then_crit_edge, %lor.lhs.false.i.i.if.then_crit_edge, %if.end.i.i.if.then_crit_edge
  call void (ptr, ptr, i8, ptr, ...) @nf_l4proto_log_invalid(ptr noundef %skb, ptr noundef %state, i8 noundef zeroext 1, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.6) #11
  br label %cleanup

if.end:                                           ; preds = %skb_header_pointer.exit.if.end_crit_edge, %lor.lhs.false.i.i.if.end_crit_edge
  %retval.0.i.i49 = phi ptr [ %add.ptr.i.i, %skb_header_pointer.exit.if.end_crit_edge ], [ %_ih, %lor.lhs.false.i.i.if.end_crit_edge ]
  %net = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 5
  %8 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net, align 4
  %sysctl_checksum = getelementptr inbounds %struct.net, ptr %9, i32 0, i32 40, i32 6
  %10 = ptrtoint ptr %sysctl_checksum to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %sysctl_checksum, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %if.end.if.end11_crit_edge, label %land.lhs.true

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp2 = icmp eq i8 %13, 0
  br i1 %cmp2, label %land.lhs.true4, label %land.lhs.true.if.end11_crit_edge

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

land.lhs.true4:                                   ; preds = %land.lhs.true
  %call7 = call zeroext i16 @nf_ip_checksum(ptr noundef %skb, i32 noundef 0, i32 noundef %dataoff, i8 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call7)
  %tobool9.not = icmp eq i16 %call7, 0
  br i1 %tobool9.not, label %land.lhs.true4.if.end11_crit_edge, label %if.then10

land.lhs.true4.if.end11_crit_edge:                ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then10:                                        ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, i8, ptr, ...) @nf_l4proto_log_invalid(ptr noundef %skb, ptr noundef %state, i8 noundef zeroext 1, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.7) #11
  br label %cleanup

if.end11:                                         ; preds = %land.lhs.true4.if.end11_crit_edge, %land.lhs.true.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %14 = ptrtoint ptr %retval.0.i.i49 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %retval.0.i.i49, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %15)
  %cmp13 = icmp ugt i8 %15, 18
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, i8, ptr, ...) @nf_l4proto_log_invalid(ptr noundef %skb, ptr noundef %state, i8 noundef zeroext 1, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.8) #11
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.12)
  switch i8 %15, label %if.end16.cleanup_crit_edge [
    i8 3, label %if.end16.if.end21_crit_edge
    i8 4, label %if.end16.if.end21_crit_edge52
    i8 5, label %if.end16.if.end21_crit_edge53
    i8 11, label %if.end16.if.end21_crit_edge54
    i8 12, label %if.end16.if.end21_crit_edge55
  ]

if.end16.if.end21_crit_edge55:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.end16.if.end21_crit_edge54:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.end16.if.end21_crit_edge53:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.end16.if.end21_crit_edge52:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.end16.if.end21_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end21:                                         ; preds = %if.end16.if.end21_crit_edge, %if.end16.if.end21_crit_edge52, %if.end16.if.end21_crit_edge53, %if.end16.if.end21_crit_edge54, %if.end16.if.end21_crit_edge55
  %17 = getelementptr inbounds i8, ptr %outer_daddr, i32 4
  %18 = call ptr @memset(ptr %17, i32 0, i32 12)
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %19 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %21 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %22 to i32
  %add.ptr.i.i43 = getelementptr i8, ptr %20, i32 %conv.i.i
  %daddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i43, i32 0, i32 9
  %23 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %daddr, align 4
  %25 = ptrtoint ptr %outer_daddr to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %outer_daddr, align 4
  %add = add i32 %dataoff, 8
  %call23 = call i32 @nf_conntrack_inet_error(ptr noundef %tmpl, ptr noundef %skb, i32 noundef %add, ptr noundef %state, i8 noundef zeroext 1, ptr noundef nonnull %outer_daddr)
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.end16.cleanup_crit_edge, %if.then15, %if.then10, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.then10 ], [ -1, %if.then15 ], [ %call23, %if.end21 ], [ 1, %if.end16.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_ih) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %outer_daddr) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nf_ip_checksum(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @nf_conntrack_icmp_init_net(ptr nocapture noundef writeonly %net) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %icmp.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 3
  %0 = ptrtoint ptr %icmp.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 3000, ptr %icmp.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @icmp_tuple_to_nlattr(ptr noundef %skb, ptr nocapture noundef readonly %t) #0 align 64 {
entry:
  %tmp.i15 = alloca i8, align 1
  %tmp.i13 = alloca i8, align 1
  %tmp.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.nf_conntrack_man, ptr %t, i32 0, i32 1
  %0 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %u, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i) #8
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %1, ptr %tmp.i, align 2
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 2, ptr noundef nonnull %tmp.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.nla_put_failure_crit_edge

entry.nla_put_failure_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %nla_put_failure

lor.lhs.false:                                    ; preds = %entry
  %u1 = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %t, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %u1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %u1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i13) #8
  %5 = ptrtoint ptr %tmp.i13 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %tmp.i13, align 1
  %call.i14 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 1, ptr noundef nonnull %tmp.i13) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14)
  %tobool3.not = icmp eq i32 %call.i14, 0
  br i1 %tobool3.not, label %lor.lhs.false4, label %lor.lhs.false.nla_put_failure_crit_edge

lor.lhs.false.nla_put_failure_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %nla_put_failure

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %code = getelementptr inbounds %struct.anon.119, ptr %u1, i32 0, i32 1
  %6 = ptrtoint ptr %code to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %code, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i15) #8
  %8 = ptrtoint ptr %tmp.i15 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %tmp.i15, align 1
  %call.i16 = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 1, ptr noundef nonnull %tmp.i15) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16)
  %tobool8.not = icmp eq i32 %call.i16, 0
  br i1 %tobool8.not, label %lor.lhs.false4.return_crit_edge, label %lor.lhs.false4.nla_put_failure_crit_edge

lor.lhs.false4.nla_put_failure_crit_edge:         ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #10
  br label %nla_put_failure

lor.lhs.false4.return_crit_edge:                  ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

nla_put_failure:                                  ; preds = %lor.lhs.false4.nla_put_failure_crit_edge, %lor.lhs.false.nla_put_failure_crit_edge, %entry.nla_put_failure_crit_edge
  br label %return

return:                                           ; preds = %nla_put_failure, %lor.lhs.false4.return_crit_edge
  %retval.0 = phi i32 [ -1, %nla_put_failure ], [ 0, %lor.lhs.false4.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @icmp_nlattr_tuple_size() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @icmp_nlattr_tuple_size.size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @nla_policy_len(ptr noundef nonnull @icmp_nla_policy, i32 noundef 10) #8
  store i32 %call, ptr @icmp_nlattr_tuple_size.size, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %1 = load i32, ptr @icmp_nlattr_tuple_size.size, align 4
  ret i32 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @icmp_nlattr_to_tuple(ptr nocapture noundef readonly %tb, ptr nocapture noundef writeonly %tuple, i32 noundef %flags) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end15_crit_edge, label %if.then

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr ptr, ptr %tb, i32 5
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.then.return_crit_edge, label %if.end

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %3)
  %cmp = icmp ugt i8 %3, 18
  br i1 %cmp, label %if.end.return_crit_edge, label %lor.lhs.false

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false:                                    ; preds = %if.end
  %conv = zext i8 %3 to i32
  %5 = lshr i32 7934, %conv
  %6 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool12.not.not = icmp eq i32 %6, 0
  br i1 %tobool12.not.not, label %lor.lhs.false.if.end15_crit_edge, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false.if.end15_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.end15:                                         ; preds = %lor.lhs.false.if.end15_crit_edge, %entry.if.end15_crit_edge
  %and16 = and i32 %flags, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end15.if.end27_crit_edge, label %if.then18

if.end15.if.end27_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then18:                                        ; preds = %if.end15
  %arrayidx19 = getelementptr ptr, ptr %tb, i32 6
  %7 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx19, align 4
  %tobool20.not = icmp eq ptr %8, null
  br i1 %tobool20.not, label %if.then18.return_crit_edge, label %if.end22

if.then18.return_crit_edge:                       ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end22:                                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i52 = getelementptr i8, ptr %8, i32 4
  %9 = ptrtoint ptr %add.ptr.i.i52 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %add.ptr.i.i52, align 1
  %u26 = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %tuple, i32 0, i32 1, i32 1
  %code = getelementptr inbounds %struct.anon.119, ptr %u26, i32 0, i32 1
  %11 = ptrtoint ptr %code to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %code, align 1
  br label %if.end27

if.end27:                                         ; preds = %if.end22, %if.end15.if.end27_crit_edge
  %and28 = and i32 %flags, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end27.return_crit_edge, label %if.then30

if.end27.return_crit_edge:                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then30:                                        ; preds = %if.end27
  %arrayidx31 = getelementptr ptr, ptr %tb, i32 4
  %12 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx31, align 4
  %tobool32.not = icmp eq ptr %13, null
  br i1 %tobool32.not, label %if.then30.return_crit_edge, label %if.end34

if.then30.return_crit_edge:                       ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end34:                                         ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i53 = getelementptr i8, ptr %13, i32 4
  %14 = ptrtoint ptr %add.ptr.i.i53 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %add.ptr.i.i53, align 2
  %u37 = getelementptr inbounds %struct.nf_conntrack_man, ptr %tuple, i32 0, i32 1
  %16 = ptrtoint ptr %u37 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %u37, align 4
  br label %return

return:                                           ; preds = %if.end34, %if.then30.return_crit_edge, %if.end27.return_crit_edge, %if.then18.return_crit_edge, %lor.lhs.false.return_crit_edge, %if.end.return_crit_edge, %if.then.return_crit_edge
  %retval.0 = phi i32 [ -22, %if.then.return_crit_edge ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %if.end.return_crit_edge ], [ -22, %if.then18.return_crit_edge ], [ -22, %if.then30.return_crit_edge ], [ 0, %if.end34 ], [ 0, %if.end27.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @icmp_timeout_nlattr_to_obj(ptr nocapture noundef readonly %tb, ptr nocapture noundef %net, ptr noundef writeonly %data) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %icmp.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 3
  %arrayidx = getelementptr ptr, ptr %tb, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  %tobool6.not = icmp eq ptr %data, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %spec.select = select i1 %tobool6.not, ptr %icmp.i, ptr %data
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i.i, align 4
  %mul = mul i32 %3, 100
  %4 = ptrtoint ptr %spec.select to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %mul, ptr %spec.select, align 4
  br label %if.end10

if.else:                                          ; preds = %entry
  br i1 %tobool6.not, label %if.else.if.end10_crit_edge, label %if.then7

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %icmp.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %icmp.i, align 4
  %7 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %data, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.else.if.end10_crit_edge, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @icmp_timeout_obj_to_nlattr(ptr noundef %skb, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %div = udiv i32 %1, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #8
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %div, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #8
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_policy_len(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !25, !26, !28, !30, !32}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = distinct !{null, !1, !"valid_new", i1 false, i1 false}
!1 = !{!"../net/netfilter/nf_conntrack_proto_icmp.c", i32 79, i32 24}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/netfilter/nf_conntrack_proto_icmp.c", i32 92, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @nf_conntrack_icmp_packet.__UNIQUE_ID_ddebug600, !3, !"__UNIQUE_ID_ddebug600", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/netfilter/nf_conntrack_proto_icmp.c", i32 175, i32 13}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/netfilter/nf_conntrack_proto_icmp.c", i32 180, i32 13}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/netfilter/nf_conntrack_proto_icmp.c", i32 215, i32 30}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../net/netfilter/nf_conntrack_proto_icmp.c", i32 223, i32 30}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/netfilter/nf_conntrack_proto_icmp.c", i32 234, i32 30}
!18 = !{ptr @nf_conntrack_l4proto_icmp, !19, !"nf_conntrack_l4proto_icmp", i1 false, i1 false}
!19 = !{!"../net/netfilter/nf_conntrack_proto_icmp.c", i32 365, i32 35}
!20 = !{ptr @invmap, !21, !"invmap", i1 false, i1 false}
!21 = !{!"../net/netfilter/nf_conntrack_proto_icmp.c", i32 45, i32 23}
!22 = distinct !{null, !23, !"__warned", i1 false, i1 false}
!23 = !{!"../include/net/netfilter/nf_conntrack_timeout.h", i32 38, i32 12}
!24 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/netfilter/nf_conntrack_proto_icmp.c", i32 200, i32 51}
!28 = !{ptr @icmp_nlattr_tuple_size.size, !29, !"size", i1 false, i1 false}
!29 = !{!"../net/netfilter/nf_conntrack_proto_icmp.c", i32 307, i32 22}
!30 = !{ptr @icmp_nla_policy, !31, !"icmp_nla_policy", i1 false, i1 false}
!31 = !{!"../net/netfilter/nf_conntrack_proto_icmp.c", i32 268, i32 32}
!32 = !{ptr @icmp_timeout_nla_policy, !33, !"icmp_timeout_nla_policy", i1 false, i1 false}
!33 = !{!"../net/netfilter/nf_conntrack_proto_icmp.c", i32 353, i32 1}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{!"branch_weights", i32 2000, i32 1}
!44 = !{i64 2148885065, i64 2148885070, i64 2148885083, i64 2148885127, i64 2148885161, i64 2148885182}
!45 = !{i64 2148417355}
!46 = !{i64 2148331795, i64 2148331827, i64 2148331856, i64 2148331890, i64 2148331921, i64 2148331944}
!47 = !{i64 2150604383}
