; ModuleID = '/llk/IR_all_yes/net/netfilter/nf_conntrack_proto_dccp.c_pt.bc'
source_filename = "../net/netfilter/nf_conntrack_proto_dccp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nla_policy = type { i8, i8, i16, %union.anon.54 }
%union.anon.54 = type { i32 }
%struct.nf_conntrack_l4proto = type { i8, i8, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.174, ptr }
%struct.anon.174 = type { ptr, ptr, i16, i16, ptr }
%struct.dccp_hdr = type { i16, i16, i8, i8, i16, i8, i8, i16 }
%struct.sk_buff = type { %union.anon.34, %union.anon.37, %union.anon.38, [48 x i8], %union.anon.39, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.41, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.34 = type { %struct.anon.35 }
%struct.anon.35 = type { ptr, ptr, %union.anon.36 }
%union.anon.36 = type { ptr }
%union.anon.37 = type { ptr }
%union.anon.38 = type { i64 }
%union.anon.39 = type { %struct.anon.40 }
%struct.anon.40 = type { i32, ptr }
%union.anon.41 = type { %struct.anon.42 }
%struct.anon.42 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.43, i32, i32, i32, i16, i16, %union.anon.45, i32, %union.anon.46, %union.anon.47, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.43 = type { i32 }
%union.anon.45 = type { i32 }
%union.anon.46 = type { i32 }
%union.anon.47 = type { i16 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.131, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.131 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.121, i32, %struct.spinlock }
%union.anon.121 = type { %struct.anon.122 }
%struct.anon.122 = type { ptr, ptr }
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
%struct.nf_conn = type { %struct.nf_conntrack, %struct.spinlock, i32, %struct.nf_conntrack_zone, [2 x %struct.nf_conntrack_tuple_hash], i32, i16, %struct.possible_net_t, %struct.hlist_node, %struct.anon.138, ptr, i32, i32, ptr, %union.nf_conntrack_proto }
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
%struct.anon.138 = type {}
%union.nf_conntrack_proto = type { %struct.nf_ct_dccp, [48 x i8] }
%struct.nf_ct_dccp = type { [2 x i8], i8, i8, i8, i64 }
%struct.dccp_hdr_ack_bits = type { i16, i16, i32 }
%struct.nf_ct_timeout = type { i16, ptr, [0 x i8] }

@dccp_state_table = internal constant { [2 x [10 x [10 x i8]]], [56 x i8] } { [2 x [10 x [10 x i8]]] [[10 x [10 x i8]] [[10 x i8] c"\01\01\02\08\08\08\08\01\00\00", [10 x i8] c"\09\08\08\08\08\08\08\09\00\00", [10 x i8] c"\09\09\09\09\04\05\06\09\00\00", [10 x i8] c"\09\09\03\03\04\05\06\09\00\00", [10 x i8] c"\09\09\03\03\04\05\06\09\00\00", [10 x i8] c"\09\09\09\09\09\09\09\09\00\00", [10 x i8] c"\09\09\09\06\06\06\09\09\00\00", [10 x i8] c"\09\07\07\07\07\07\07\08\00\00", [10 x i8] c"\09\08\08\08\08\08\08\08\00\00", [10 x i8] c"\09\08\08\08\08\08\08\08\00\00"], [10 x [10 x i8]] [[10 x i8] c"\09\08\08\08\08\08\08\01\00\00", [10 x i8] c"\09\02\02\08\08\08\08\09\00\00", [10 x i8] c"\09\09\09\04\04\09\06\09\00\00", [10 x i8] c"\09\09\09\04\04\09\06\09\00\00", [10 x i8] c"\09\09\09\04\04\09\06\09\00\00", [10 x i8] c"\09\09\09\05\05\05\05\09\00\00", [10 x i8] c"\09\09\09\06\06\09\06\09\00\00", [10 x i8] c"\09\07\07\07\07\07\07\07\08\00", [10 x i8] c"\09\08\08\08\08\08\08\08\00\00", [10 x i8] c"\09\08\08\08\08\08\08\08\00\00"]], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"invalid packet\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"invalid state transition\00", [39 x i8] zeroinitializer }, align 32
@nf_ct_port_nla_policy = external dso_local constant [0 x %struct.nla_policy], align 4
@dccp_timeout_nla_policy = internal constant { [8 x %struct.nla_policy], [32 x i8] } { [8 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.54 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.54 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.54 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.54 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.54 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.54 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.54 zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@nf_conntrack_l4proto_dccp = dso_local constant { %struct.nf_conntrack_l4proto, [44 x i8] } { %struct.nf_conntrack_l4proto { i8 33, i8 0, i16 32, ptr @dccp_can_early_drop, ptr @dccp_to_nlattr, ptr @nlattr_to_dccp, ptr @nf_ct_port_tuple_to_nlattr, ptr @nf_ct_port_nlattr_tuple_size, ptr @nf_ct_port_nlattr_to_tuple, ptr @nf_ct_port_nla_policy, %struct.anon.174 { ptr @dccp_timeout_nlattr_to_obj, ptr @dccp_timeout_obj_to_nlattr, i16 36, i16 7, ptr @dccp_timeout_nla_policy }, ptr @dccp_print_conntrack }, [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"nf_ct_dccp: truncated/malformed packet \00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"nf_ct_dccp: bad checksum coverage \00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"nf_ct_dccp: bad checksum \00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"nf_ct_dccp: reserved packet type \00", [62 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"not picking up existing connection \00", [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"invalid state transition \00", [38 x i8] zeroinitializer }, align 32
@nf_ct_timeout_data.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"include/net/netfilter/nf_conntrack_timeout.h\00", [51 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@dccp_nla_policy = internal constant { [5 x %struct.nla_policy], [56 x i8] } { [5 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.54 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.54 zeroinitializer }, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon.54 zeroinitializer }, %struct.nla_policy zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s \00", [28 x i8] zeroinitializer }, align 32
@dccp_state_names = internal constant { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], [56 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NONE\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"REQUEST\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RESPOND\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PARTOPEN\00", [23 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"OPEN\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CLOSEREQ\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CLOSING\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"TIMEWAIT\00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"IGNORE\00", [25 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"INVALID\00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 2, i64 3, i64 8, i64 9]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 9]
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"dccp_state_table\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 129, i32 1 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 546, i32 45 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 546, i32 51 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 550, i32 51 }
@___asan_gen_.35 = private unnamed_addr constant [24 x i8] c"dccp_timeout_nla_policy\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 723, i32 1 }
@___asan_gen_.38 = private unnamed_addr constant [26 x i8] c"nf_conntrack_l4proto_dccp\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 754, i32 35 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 441, i32 9 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 449, i32 10 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 458, i32 9 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 463, i32 9 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 398, i32 10 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 405, i32 9 }
@___asan_gen_.63 = private unnamed_addr constant [48 x i8] c"../include/net/netfilter/nf_conntrack_timeout.h\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 38, i32 12 }
@___asan_gen_.65 = private unnamed_addr constant [16 x i8] c"dccp_nla_policy\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 624, i32 32 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 587, i32 16 }
@___asan_gen_.71 = private unnamed_addr constant [17 x i8] c"dccp_state_names\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 72, i32 27 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 73, i32 20 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 74, i32 22 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 75, i32 22 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 76, i32 23 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 77, i32 20 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 78, i32 23 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 79, i32 22 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 80, i32 23 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 81, i32 21 }
@___asan_gen_.101 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.102 = private constant [43 x i8] c"../net/netfilter/nf_conntrack_proto_dccp.c\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 82, i32 22 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @dccp_state_table, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @dccp_timeout_nla_policy, ptr @nf_conntrack_l4proto_dccp, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @dccp_nla_policy, ptr @.str.11, ptr @dccp_state_names, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_state_table to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_timeout_nla_policy to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nf_conntrack_l4proto_dccp to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_nla_policy to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_state_names to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nf_conntrack_dccp_packet(ptr noundef %ct, ptr noundef %skb, i32 noundef %dataoff, i32 noundef %ctinfo, ptr noundef %state) local_unnamed_addr #0 align 64 {
entry:
  %_dh = alloca %struct.dccp_hdr, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %ctinfo)
  %cmp = icmp ugt i32 %ctinfo, 2
  %cond = zext i1 %cmp to i32
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %_dh) #8
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = call ptr @memset(ptr %_dh, i32 255, i32 12)
  %1 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %3 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data_len.i.i, align 8
  %5 = add i32 %4, %dataoff
  %sub.i1.i = sub i32 %2, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %sub.i1.i)
  %cmp.i.i = icmp sgt i32 %sub.i1.i, 11
  br i1 %cmp.i.i, label %skb_header_pointer.exit, label %if.end.i.i, !prof !63

if.end.i.i:                                       ; preds = %entry
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %dataoff, ptr noundef nonnull %_dh, i32 noundef 12) #8
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
  %tobool.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not, label %skb_header_pointer.exit.cleanup_crit_edge, label %skb_header_pointer.exit.if.end_crit_edge

skb_header_pointer.exit.if.end_crit_edge:         ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

skb_header_pointer.exit.cleanup_crit_edge:        ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %skb_header_pointer.exit.if.end_crit_edge, %lor.lhs.false.i.i.if.end_crit_edge
  %retval.0.i.i255 = phi ptr [ %add.ptr.i.i, %skb_header_pointer.exit.if.end_crit_edge ], [ %_dh, %lor.lhs.false.i.i.if.end_crit_edge ]
  %8 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len.i.i, align 4
  %sub.i = sub i32 %9, %dataoff
  %dccph_doff.i = getelementptr inbounds %struct.dccp_hdr, ptr %retval.0.i.i255, i32 0, i32 2
  %10 = ptrtoint ptr %dccph_doff.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dccph_doff.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %11)
  %cmp.i = icmp ult i8 %11, 3
  %conv.i = zext i8 %11 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %sub.i)
  %cmp5.i = icmp ugt i32 %mul.i, %sub.i
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %cmp5.i
  br i1 %or.cond.i, label %if.end.dccp_error.exit.thread_crit_edge, label %if.end.i

if.end.dccp_error.exit.thread_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %dccp_error.exit.thread

if.end.i:                                         ; preds = %if.end
  %dccph_cscov.i = getelementptr inbounds %struct.dccp_hdr, ptr %retval.0.i.i255, i32 0, i32 3
  %12 = ptrtoint ptr %dccph_cscov.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load.i = load i8, ptr %dccph_cscov.i, align 1
  %bf.clear.i = and i8 %bf.load.i, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear.i)
  %tobool.not.i = icmp eq i8 %bf.clear.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.end18.i_crit_edge, label %if.then7.i

if.end.i.if.end18.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18.i

if.then7.i:                                       ; preds = %if.end.i
  %13 = shl nuw nsw i8 %bf.clear.i, 2
  %sub12.i = zext i8 %13 to i32
  %mul13.i = add nsw i32 %sub12.i, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul13.i, i32 %sub.i)
  %cmp14.i = icmp ugt i32 %mul13.i, %sub.i
  br i1 %cmp14.i, label %if.then7.i.dccp_error.exit.thread_crit_edge, label %if.then7.i.if.end18.i_crit_edge

if.then7.i.if.end18.i_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18.i

if.then7.i.dccp_error.exit.thread_crit_edge:      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dccp_error.exit.thread

if.end18.i:                                       ; preds = %if.then7.i.if.end18.i_crit_edge, %if.end.i.if.end18.i_crit_edge
  %cscov.0.i = phi i32 [ %mul13.i, %if.then7.i.if.end18.i_crit_edge ], [ %sub.i, %if.end.i.if.end18.i_crit_edge ]
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp20.i = icmp eq i8 %15, 0
  br i1 %cmp20.i, label %land.lhs.true.i, label %if.end18.i.if.end31.i_crit_edge

if.end18.i.if.end31.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31.i

land.lhs.true.i:                                  ; preds = %if.end18.i
  %net.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 5
  %16 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %net.i, align 4
  %sysctl_checksum.i = getelementptr inbounds %struct.net, ptr %17, i32 0, i32 40, i32 6
  %18 = ptrtoint ptr %sysctl_checksum.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %sysctl_checksum.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool23.not.i = icmp eq i8 %19, 0
  br i1 %tobool23.not.i, label %land.lhs.true.i.if.end31.i_crit_edge, label %land.lhs.true24.i

land.lhs.true.i.if.end31.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31.i

land.lhs.true24.i:                                ; preds = %land.lhs.true.i
  %pf.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 1
  %20 = ptrtoint ptr %pf.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %pf.i, align 1
  %conv27.i = zext i8 %21 to i16
  %call.i = call zeroext i16 @nf_checksum_partial(ptr noundef %skb, i32 noundef 0, i32 noundef %dataoff, i32 noundef %cscov.0.i, i8 noundef zeroext 33, i16 noundef zeroext %conv27.i) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call.i)
  %tobool29.not.i = icmp eq i16 %call.i, 0
  br i1 %tobool29.not.i, label %land.lhs.true24.i.if.end31.i_crit_edge, label %land.lhs.true24.i.dccp_error.exit.thread_crit_edge

land.lhs.true24.i.dccp_error.exit.thread_crit_edge: ; preds = %land.lhs.true24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dccp_error.exit.thread

land.lhs.true24.i.if.end31.i_crit_edge:           ; preds = %land.lhs.true24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31.i

if.end31.i:                                       ; preds = %land.lhs.true24.i.if.end31.i_crit_edge, %land.lhs.true.i.if.end31.i_crit_edge, %if.end18.i.if.end31.i_crit_edge
  %dccph_type.i = getelementptr inbounds %struct.dccp_hdr, ptr %retval.0.i.i255, i32 0, i32 5
  %22 = ptrtoint ptr %dccph_type.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load32.i = load i8, ptr %dccph_type.i, align 2
  %23 = and i8 %bf.load32.i, 28
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %23)
  %cmp35.i = icmp ugt i8 %23, 18
  br i1 %cmp35.i, label %if.end31.i.dccp_error.exit.thread_crit_edge, label %if.end3

if.end31.i.dccp_error.exit.thread_crit_edge:      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dccp_error.exit.thread

dccp_error.exit.thread:                           ; preds = %if.end31.i.dccp_error.exit.thread_crit_edge, %land.lhs.true24.i.dccp_error.exit.thread_crit_edge, %if.then7.i.dccp_error.exit.thread_crit_edge, %if.end.dccp_error.exit.thread_crit_edge
  %msg.0.i = phi ptr [ @.str.3, %if.end.dccp_error.exit.thread_crit_edge ], [ @.str.4, %if.then7.i.dccp_error.exit.thread_crit_edge ], [ @.str.5, %land.lhs.true24.i.dccp_error.exit.thread_crit_edge ], [ @.str.6, %if.end31.i.dccp_error.exit.thread_crit_edge ]
  call void (ptr, ptr, i8, ptr, ...) @nf_l4proto_log_invalid(ptr noundef %skb, ptr noundef %state, i8 noundef zeroext 33, ptr noundef nonnull @.str, ptr noundef nonnull %msg.0.i) #11
  br label %cleanup

if.end3:                                          ; preds = %if.end31.i
  %24 = ptrtoint ptr %dccph_type.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load = load i8, ptr %dccph_type.i, align 2
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 15
  %status.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 5
  %25 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %status.i, align 4
  %27 = and i32 %26, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool5.not = icmp eq i32 %27, 0
  br i1 %tobool5.not, label %land.lhs.true, label %if.end3.if.end8_crit_edge

if.end3.if.end8_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end3
  %call6 = call fastcc zeroext i1 @dccp_new(ptr noundef %ct, ptr noundef %skb, ptr noundef nonnull %retval.0.i.i255, ptr noundef %state)
  br i1 %call6, label %land.lhs.true.if.end8_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.end8:                                          ; preds = %land.lhs.true.if.end8_crit_edge, %if.end3.if.end8_crit_edge
  %conv = zext i8 %bf.clear to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %bf.clear)
  %cmp9 = icmp eq i8 %bf.clear, 7
  br i1 %cmp9, label %land.lhs.true11, label %if.end8.if.end16_crit_edge

if.end8.if.end16_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

land.lhs.true11:                                  ; preds = %if.end8
  %28 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %status.i, align 4
  %30 = and i32 %29, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool13.not = icmp eq i32 %30, 0
  br i1 %tobool13.not, label %if.then14, label %land.lhs.true11.if.end16_crit_edge

land.lhs.true11.if.end16_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then14:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #10
  %call15 = call zeroext i1 @nf_ct_kill_acct(ptr noundef %ct, i32 noundef %ctinfo, ptr noundef %skb) #8
  br label %cleanup

if.end16:                                         ; preds = %land.lhs.true11.if.end16_crit_edge, %if.end8.if.end16_crit_edge
  %lock = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 1
  call void @_raw_spin_lock_bh(ptr noundef %lock) #8
  %proto = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14
  %arrayidx = getelementptr [2 x i8], ptr %proto, i32 0, i32 %cond
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx, align 1
  %conv18 = zext i8 %32 to i32
  %state20 = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 0, i32 1
  %33 = ptrtoint ptr %state20 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %state20, align 2
  %idxprom23 = zext i8 %34 to i32
  %arrayidx24 = getelementptr [2 x [10 x [10 x i8]]], ptr @dccp_state_table, i32 0, i32 %conv18, i32 %conv, i32 %idxprom23
  %35 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx24, align 1
  %37 = zext i8 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values)
  switch i8 %36, label %if.end16.sw.epilog_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %sw.bb41
    i8 3, label %sw.bb49
    i8 8, label %sw.bb66
    i8 9, label %sw.bb103
  ]

if.end16.sw.epilog_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %34)
  %cmp27 = icmp eq i8 %34, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %32)
  %cmp30 = icmp eq i8 %32, 1
  %or.cond = select i1 %cmp27, i1 %cmp30, i1 false
  br i1 %or.cond, label %if.then32, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then32:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %arrayidx, align 1
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  %arrayidx39 = getelementptr [2 x i8], ptr %proto, i32 0, i32 %lnot.ext
  %39 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %arrayidx39, align 1
  br label %sw.epilog

sw.bb41:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %34)
  %cmp43 = icmp eq i8 %34, 1
  br i1 %cmp43, label %if.then45, label %sw.bb41.sw.epilog_crit_edge

sw.bb41.sw.epilog_crit_edge:                      ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then45:                                        ; preds = %sw.bb41
  %dccph_seq.i = getelementptr inbounds %struct.dccp_hdr, ptr %retval.0.i.i255, i32 0, i32 7
  %40 = ptrtoint ptr %dccph_seq.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %dccph_seq.i, align 2
  %conv.i205 = zext i16 %41 to i64
  %42 = ptrtoint ptr %dccph_type.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %bf.load.i206 = load i8, ptr %dccph_type.i, align 2
  %bf.clear.i207 = and i8 %bf.load.i206, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear.i207)
  %cmp.not.i = icmp eq i8 %bf.clear.i207, 0
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  %shl.i = shl nuw nsw i64 %conv.i205, 32
  %add.ptr.i.i208 = getelementptr i8, ptr %retval.0.i.i255, i32 12
  %43 = ptrtoint ptr %add.ptr.i.i208 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %add.ptr.i.i208, align 4
  %conv3.i = zext i32 %44 to i64
  br label %dccp_hdr_seq.exit

if.else.i:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  %dccph_seq2.i = getelementptr inbounds %struct.dccp_hdr, ptr %retval.0.i.i255, i32 0, i32 6
  %45 = ptrtoint ptr %dccph_seq2.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %dccph_seq2.i, align 1
  %conv4.i = zext i8 %46 to i32
  %shl5.i = shl nuw nsw i32 %conv4.i, 16
  %conv6.i = zext i32 %shl5.i to i64
  br label %dccp_hdr_seq.exit

dccp_hdr_seq.exit:                                ; preds = %if.else.i, %if.then.i
  %conv.sink.i = phi i64 [ %conv.i205, %if.else.i ], [ %conv3.i, %if.then.i ]
  %conv6.sink.i = phi i64 [ %conv6.i, %if.else.i ], [ %shl.i, %if.then.i ]
  %add7.i = or i64 %conv6.sink.i, %conv.sink.i
  %handshake_seq = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 0, i32 4
  %47 = ptrtoint ptr %handshake_seq to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %add7.i, ptr %handshake_seq, align 8
  br label %sw.epilog

sw.bb49:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %34)
  %cmp51 = icmp eq i8 %34, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %bf.clear)
  %cmp55 = icmp eq i8 %bf.clear, 3
  %or.cond203 = select i1 %cmp51, i1 %cmp55, i1 false
  br i1 %or.cond203, label %land.lhs.true57, label %sw.bb49.sw.epilog_crit_edge

sw.bb49.sw.epilog_crit_edge:                      ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

land.lhs.true57:                                  ; preds = %sw.bb49
  %48 = ptrtoint ptr %dccph_type.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %bf.load.i.i = load i8, ptr %dccph_type.i, align 2
  %bf.clear.i.i = shl i8 %bf.load.i.i, 2
  %49 = and i8 %bf.clear.i.i, 4
  %narrow.i.i = add nuw nsw i8 %49, 12
  %add.i.i = zext i8 %narrow.i.i to i32
  %add.ptr.i = getelementptr i8, ptr %retval.0.i.i255, i32 %add.i.i
  %dccph_ack_nr_high.i = getelementptr inbounds %struct.dccp_hdr_ack_bits, ptr %add.ptr.i, i32 0, i32 1
  %50 = ptrtoint ptr %dccph_ack_nr_high.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %dccph_ack_nr_high.i, align 2
  %conv.i210 = zext i16 %51 to i64
  %shl.i211 = shl nuw nsw i64 %conv.i210, 32
  %dccph_ack_nr_low.i = getelementptr inbounds %struct.dccp_hdr_ack_bits, ptr %add.ptr.i, i32 0, i32 2
  %52 = ptrtoint ptr %dccph_ack_nr_low.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %dccph_ack_nr_low.i, align 4
  %conv1.i = zext i32 %53 to i64
  %add.i = or i64 %shl.i211, %conv1.i
  %handshake_seq60 = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 0, i32 4
  %54 = ptrtoint ptr %handshake_seq60 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %handshake_seq60, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %55)
  %cmp61 = icmp eq i64 %add.i, %55
  br i1 %cmp61, label %if.then63, label %land.lhs.true57.sw.epilog_crit_edge

land.lhs.true57.sw.epilog_crit_edge:              ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then63:                                        ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #10
  call void @_set_bit(i32 noundef 2, ptr noundef %status.i) #8
  br label %sw.epilog

sw.bb66:                                          ; preds = %if.end16
  %last_dir = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 0, i32 3
  %56 = ptrtoint ptr %last_dir to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %last_dir, align 4
  %lnot70 = xor i1 %cmp, true
  %lnot.ext71 = zext i1 %lnot70 to i32
  %58 = zext i1 %lnot70 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %57, i8 %58)
  %cmp72 = icmp eq i8 %57, %58
  br i1 %cmp72, label %land.lhs.true74, label %sw.bb66.if.end96_crit_edge

sw.bb66.if.end96_crit_edge:                       ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end96

land.lhs.true74:                                  ; preds = %sw.bb66
  %last_pkt = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 0, i32 2
  %59 = ptrtoint ptr %last_pkt to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %last_pkt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %cmp77 = icmp eq i8 %60, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.clear)
  %cmp81 = icmp eq i8 %bf.clear, 1
  %or.cond204 = select i1 %cmp77, i1 %cmp81, i1 false
  br i1 %or.cond204, label %if.then83, label %land.lhs.true74.if.end96_crit_edge

land.lhs.true74.if.end96_crit_edge:               ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end96

if.then83:                                        ; preds = %land.lhs.true74
  %arrayidx89 = getelementptr [2 x i8], ptr %proto, i32 0, i32 %lnot.ext71
  %61 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %arrayidx89, align 1
  %62 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 1, ptr %arrayidx, align 1
  %dccph_seq.i212 = getelementptr inbounds %struct.dccp_hdr, ptr %retval.0.i.i255, i32 0, i32 7
  %63 = ptrtoint ptr %dccph_seq.i212 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %dccph_seq.i212, align 2
  %conv.i213 = zext i16 %64 to i64
  %65 = ptrtoint ptr %dccph_type.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %bf.load.i215 = load i8, ptr %dccph_type.i, align 2
  %bf.clear.i216 = and i8 %bf.load.i215, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear.i216)
  %cmp.not.i217 = icmp eq i8 %bf.clear.i216, 0
  br i1 %cmp.not.i217, label %if.else.i226, label %if.then.i221

if.then.i221:                                     ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #10
  %shl.i218 = shl nuw nsw i64 %conv.i213, 32
  %add.ptr.i.i219 = getelementptr i8, ptr %retval.0.i.i255, i32 12
  %66 = ptrtoint ptr %add.ptr.i.i219 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %add.ptr.i.i219, align 4
  %conv3.i220 = zext i32 %67 to i64
  br label %dccp_hdr_seq.exit231

if.else.i226:                                     ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #10
  %dccph_seq2.i222 = getelementptr inbounds %struct.dccp_hdr, ptr %retval.0.i.i255, i32 0, i32 6
  %68 = ptrtoint ptr %dccph_seq2.i222 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %dccph_seq2.i222, align 1
  %conv4.i223 = zext i8 %69 to i32
  %shl5.i224 = shl nuw nsw i32 %conv4.i223, 16
  %conv6.i225 = zext i32 %shl5.i224 to i64
  br label %dccp_hdr_seq.exit231

dccp_hdr_seq.exit231:                             ; preds = %if.else.i226, %if.then.i221
  %conv.sink.i227 = phi i64 [ %conv.i213, %if.else.i226 ], [ %conv3.i220, %if.then.i221 ]
  %conv6.sink.i228 = phi i64 [ %conv6.i225, %if.else.i226 ], [ %shl.i218, %if.then.i221 ]
  %add7.i229 = or i64 %conv6.sink.i228, %conv.sink.i227
  %handshake_seq95 = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 0, i32 4
  %70 = ptrtoint ptr %handshake_seq95 to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %add7.i229, ptr %handshake_seq95, align 8
  br label %sw.epilog

if.end96:                                         ; preds = %land.lhs.true74.if.end96_crit_edge, %sw.bb66.if.end96_crit_edge
  %conv97 = zext i1 %cmp to i8
  %71 = ptrtoint ptr %last_dir to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv97, ptr %last_dir, align 4
  %last_pkt101 = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 0, i32 2
  %72 = ptrtoint ptr %last_pkt101 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %bf.clear, ptr %last_pkt101, align 1
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #8
  call void (ptr, ptr, ptr, ptr, ...) @nf_ct_l4proto_log_invalid(ptr noundef %skb, ptr noundef %ct, ptr noundef %state, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #11
  br label %cleanup

sw.bb103:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #8
  call void (ptr, ptr, ptr, ptr, ...) @nf_ct_l4proto_log_invalid(ptr noundef %skb, ptr noundef %ct, ptr noundef %state, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #11
  br label %cleanup

sw.epilog:                                        ; preds = %dccp_hdr_seq.exit231, %if.then63, %land.lhs.true57.sw.epilog_crit_edge, %sw.bb49.sw.epilog_crit_edge, %dccp_hdr_seq.exit, %sw.bb41.sw.epilog_crit_edge, %if.then32, %sw.bb.sw.epilog_crit_edge, %if.end16.sw.epilog_crit_edge
  %new_state.0 = phi i8 [ %36, %if.end16.sw.epilog_crit_edge ], [ 2, %dccp_hdr_seq.exit231 ], [ 3, %if.then63 ], [ 3, %land.lhs.true57.sw.epilog_crit_edge ], [ 3, %sw.bb49.sw.epilog_crit_edge ], [ 2, %dccp_hdr_seq.exit ], [ 2, %sw.bb41.sw.epilog_crit_edge ], [ 1, %if.then32 ], [ 1, %sw.bb.sw.epilog_crit_edge ]
  %conv105 = zext i1 %cmp to i8
  %last_dir107 = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 0, i32 3
  %73 = ptrtoint ptr %last_dir107 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %conv105, ptr %last_dir107, align 4
  %last_pkt109 = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 0, i32 2
  %74 = ptrtoint ptr %last_pkt109 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %bf.clear, ptr %last_pkt109, align 1
  %75 = ptrtoint ptr %state20 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %new_state.0, ptr %state20, align 2
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #8
  %conv113 = zext i8 %new_state.0 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %new_state.0, i8 %34)
  %cmp115.not = icmp eq i8 %new_state.0, %34
  br i1 %cmp115.not, label %sw.epilog.if.end118_crit_edge, label %if.then117

sw.epilog.if.end118_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end118

if.then117:                                       ; preds = %sw.epilog
  %ct_net.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 7
  %76 = ptrtoint ptr %ct_net.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ct_net.i.i, align 4
  %nf_conntrack_event_cb.i = getelementptr inbounds %struct.net, ptr %77, i32 0, i32 40, i32 9
  %78 = ptrtoint ptr %nf_conntrack_event_cb.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile ptr, ptr %nf_conntrack_event_cb.i, align 16
  %tobool.not.i232 = icmp eq ptr %79, null
  br i1 %tobool.not.i232, label %if.then117.if.end118_crit_edge, label %if.end.i233

if.then117.if.end118_crit_edge:                   ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end118

if.end.i233:                                      ; preds = %if.then117
  %ext.i.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 13
  %80 = ptrtoint ptr %ext.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ext.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %81, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i233.if.end118_crit_edge, label %nf_ct_ext_exist.exit.i.i.i

if.end.i233.if.end118_crit_edge:                  ; preds = %if.end.i233
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end118

nf_ct_ext_exist.exit.i.i.i:                       ; preds = %if.end.i233
  %arrayidx.i.i.i.i.i = getelementptr [10 x i8], ptr %81, i32 0, i32 4
  %82 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx.i.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool.i.i.not.i.i.i = icmp eq i8 %83, 0
  br i1 %tobool.i.i.not.i.i.i, label %nf_ct_ext_exist.exit.i.i.i.if.end118_crit_edge, label %nf_ct_ecache_find.exit.i

nf_ct_ext_exist.exit.i.i.i.if.end118_crit_edge:   ; preds = %nf_ct_ext_exist.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end118

nf_ct_ecache_find.exit.i:                         ; preds = %nf_ct_ext_exist.exit.i.i.i
  %conv.i.i.i = zext i8 %83 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %81, i32 %conv.i.i.i
  %cmp.i234 = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %cmp.i234, label %nf_ct_ecache_find.exit.i.if.end118_crit_edge, label %if.end5.i

nf_ct_ecache_find.exit.i.if.end118_crit_edge:     ; preds = %nf_ct_ecache_find.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end118

if.end5.i:                                        ; preds = %nf_ct_ecache_find.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @_set_bit(i32 noundef 5, ptr noundef nonnull %add.ptr.i.i.i) #8
  br label %if.end118

if.end118:                                        ; preds = %if.end5.i, %nf_ct_ecache_find.exit.i.if.end118_crit_edge, %nf_ct_ext_exist.exit.i.i.i.if.end118_crit_edge, %if.end.i233.if.end118_crit_edge, %if.then117.if.end118_crit_edge, %sw.epilog.if.end118_crit_edge
  %ext.i.i.i.i235 = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 13
  %84 = ptrtoint ptr %ext.i.i.i.i235 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ext.i.i.i.i235, align 8
  %tobool.not.i.i.i.i236 = icmp eq ptr %85, null
  br i1 %tobool.not.i.i.i.i236, label %if.end118.if.then121_crit_edge, label %nf_ct_ext_exist.exit.i.i.i239

if.end118.if.then121_crit_edge:                   ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then121

nf_ct_ext_exist.exit.i.i.i239:                    ; preds = %if.end118
  %arrayidx.i.i.i.i.i237 = getelementptr [10 x i8], ptr %85, i32 0, i32 6
  %86 = ptrtoint ptr %arrayidx.i.i.i.i.i237 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx.i.i.i.i.i237, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool.i.i.not.i.i.i238 = icmp eq i8 %87, 0
  br i1 %tobool.i.i.not.i.i.i238, label %nf_ct_ext_exist.exit.i.i.i239.if.then121_crit_edge, label %nf_ct_timeout_find.exit.i

nf_ct_ext_exist.exit.i.i.i239.if.then121_crit_edge: ; preds = %nf_ct_ext_exist.exit.i.i.i239
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then121

nf_ct_timeout_find.exit.i:                        ; preds = %nf_ct_ext_exist.exit.i.i.i239
  %conv.i.i.i240 = zext i8 %87 to i32
  %add.ptr.i.i.i241 = getelementptr i8, ptr %85, i32 %conv.i.i.i240
  %tobool.not.i242 = icmp eq ptr %add.ptr.i.i.i241, null
  br i1 %tobool.not.i242, label %nf_ct_timeout_find.exit.i.if.then121_crit_edge, label %if.then.i244

nf_ct_timeout_find.exit.i.if.then121_crit_edge:   ; preds = %nf_ct_timeout_find.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then121

if.then.i244:                                     ; preds = %nf_ct_timeout_find.exit.i
  %88 = ptrtoint ptr %add.ptr.i.i.i241 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile ptr, ptr %add.ptr.i.i.i241, align 4
  %call.i.i243 = call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i243)
  %tobool.not.i.i = icmp eq i32 %call.i.i243, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %if.then.i244.nf_ct_timeout_data.exit.i_crit_edge

if.then.i244.nf_ct_timeout_data.exit.i_crit_edge: ; preds = %if.then.i244
  call void @__sanitizer_cov_trace_pc() #10
  br label %nf_ct_timeout_data.exit.i

land.lhs.true.i.i:                                ; preds = %if.then.i244
  %call3.i.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.nf_ct_timeout_data.exit.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i.i.nf_ct_timeout_data.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nf_ct_timeout_data.exit.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i.i
  %.b13.i.i = load i1, ptr @nf_ct_timeout_data.__warned, align 1
  br i1 %.b13.i.i, label %land.lhs.true5.i.i.nf_ct_timeout_data.exit.i_crit_edge, label %if.then.i.i245

land.lhs.true5.i.i.nf_ct_timeout_data.exit.i_crit_edge: ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nf_ct_timeout_data.exit.i

if.then.i.i245:                                   ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @nf_ct_timeout_data.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 38, ptr noundef nonnull @.str.10) #8
  br label %nf_ct_timeout_data.exit.i

nf_ct_timeout_data.exit.i:                        ; preds = %if.then.i.i245, %land.lhs.true5.i.i.nf_ct_timeout_data.exit.i_crit_edge, %land.lhs.true.i.i.nf_ct_timeout_data.exit.i_crit_edge, %if.then.i244.nf_ct_timeout_data.exit.i_crit_edge
  %cmp.i.i246 = icmp eq ptr %89, null
  %data.i.i = getelementptr inbounds %struct.nf_ct_timeout, ptr %89, i32 0, i32 2
  %tobool120.not = icmp eq ptr %data.i.i, null
  %or.cond260 = select i1 %cmp.i.i246, i1 true, i1 %tobool120.not
  br i1 %or.cond260, label %nf_ct_timeout_data.exit.i.if.then121_crit_edge, label %nf_ct_timeout_data.exit.i.if.end124_crit_edge

nf_ct_timeout_data.exit.i.if.end124_crit_edge:    ; preds = %nf_ct_timeout_data.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end124

nf_ct_timeout_data.exit.i.if.then121_crit_edge:   ; preds = %nf_ct_timeout_data.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then121

if.then121:                                       ; preds = %nf_ct_timeout_data.exit.i.if.then121_crit_edge, %nf_ct_timeout_find.exit.i.if.then121_crit_edge, %nf_ct_ext_exist.exit.i.i.i239.if.then121_crit_edge, %if.end118.if.then121_crit_edge
  %ct_net.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 7
  %90 = ptrtoint ptr %ct_net.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ct_net.i, align 4
  %dccp_timeout = getelementptr inbounds %struct.net, ptr %91, i32 0, i32 40, i32 10, i32 5, i32 1
  br label %if.end124

if.end124:                                        ; preds = %if.then121, %nf_ct_timeout_data.exit.i.if.end124_crit_edge
  %timeouts.0 = phi ptr [ %dccp_timeout, %if.then121 ], [ %data.i.i, %nf_ct_timeout_data.exit.i.if.end124_crit_edge ]
  %arrayidx126 = getelementptr i32, ptr %timeouts.0, i32 %conv113
  %92 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx126, align 4
  call void @__nf_ct_refresh_acct(ptr noundef %ct, i32 noundef %ctinfo, ptr noundef %skb, i32 noundef %93, i1 noundef zeroext true) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end124, %sw.bb103, %if.end96, %if.then14, %land.lhs.true.cleanup_crit_edge, %dccp_error.exit.thread, %skb_header_pointer.exit.cleanup_crit_edge, %lor.lhs.false.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end124 ], [ -1, %sw.bb103 ], [ 1, %if.end96 ], [ 1, %if.then14 ], [ 0, %skb_header_pointer.exit.cleanup_crit_edge ], [ -1, %land.lhs.true.cleanup_crit_edge ], [ -1, %dccp_error.exit.thread ], [ 0, %if.end.i.i.cleanup_crit_edge ], [ 0, %lor.lhs.false.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %_dh) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @dccp_new(ptr noundef %ct, ptr noundef %skb, ptr nocapture noundef readonly %dh, ptr noundef %hook_state) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dccph_type = getelementptr inbounds %struct.dccp_hdr, ptr %dh, i32 0, i32 5
  %0 = ptrtoint ptr %dccph_type to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %dccph_type, align 2
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 15
  %idxprom = zext i8 %bf.clear to i32
  %arrayidx = getelementptr [10 x [10 x i8]], ptr @dccp_state_table, i32 0, i32 %idxprom
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %3 = zext i8 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.22)
  switch i8 %2, label %sw.default [
    i8 1, label %entry.sw.epilog_crit_edge
    i8 9, label %entry.out_invalid_crit_edge
  ]

entry.out_invalid_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_invalid

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %ct_net.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 7
  %4 = ptrtoint ptr %ct_net.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ct_net.i, align 4
  %dccp.i = getelementptr inbounds %struct.net, ptr %5, i32 0, i32 40, i32 10, i32 5
  %6 = ptrtoint ptr %dccp.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dccp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp = icmp eq i8 %7, 0
  br i1 %cmp, label %sw.default.out_invalid_crit_edge, label %sw.default.sw.epilog_crit_edge

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.default.out_invalid_crit_edge:                 ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_invalid

sw.epilog:                                        ; preds = %sw.default.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %proto = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14
  %8 = ptrtoint ptr %proto to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %proto, align 8
  %arrayidx8 = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 0, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %arrayidx8, align 1
  %state10 = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 0, i32 1
  %10 = ptrtoint ptr %state10 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %state10, align 2
  %last_pkt = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 0, i32 2
  %11 = ptrtoint ptr %last_pkt to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %last_pkt, align 1
  %last_dir = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 0, i32 3
  %12 = ptrtoint ptr %last_dir to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %last_dir, align 4
  %handshake_seq = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 0, i32 4
  %13 = ptrtoint ptr %handshake_seq to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 0, ptr %handshake_seq, align 8
  br label %cleanup

out_invalid:                                      ; preds = %sw.default.out_invalid_crit_edge, %entry.out_invalid_crit_edge
  %msg.0 = phi ptr [ @.str.7, %sw.default.out_invalid_crit_edge ], [ @.str.8, %entry.out_invalid_crit_edge ]
  tail call void (ptr, ptr, ptr, ptr, ...) @nf_ct_l4proto_log_invalid(ptr noundef %skb, ptr noundef %ct, ptr noundef %hook_state, ptr noundef nonnull @.str, ptr noundef nonnull %msg.0) #11
  br label %cleanup

cleanup:                                          ; preds = %out_invalid, %sw.epilog
  %retval.0 = phi i1 [ false, %out_invalid ], [ true, %sw.epilog ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nf_ct_kill_acct(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @nf_ct_l4proto_log_invalid(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @nf_conntrack_dccp_init_net(ptr nocapture noundef %net) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dccp.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 5
  %0 = ptrtoint ptr %dccp.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %dccp.i, align 4
  %dccp_timeout = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 5, i32 1
  %arrayidx = getelementptr %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 5, i32 1, i32 1
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 24000, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 5, i32 1, i32 2
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 48000, ptr %arrayidx2, align 4
  %arrayidx4 = getelementptr %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 5, i32 1, i32 3
  %3 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 48000, ptr %arrayidx4, align 4
  %arrayidx6 = getelementptr %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 5, i32 1, i32 4
  %4 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4320000, ptr %arrayidx6, align 4
  %arrayidx8 = getelementptr %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 5, i32 1, i32 5
  %5 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 6400, ptr %arrayidx8, align 4
  %arrayidx10 = getelementptr %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 5, i32 1, i32 6
  %6 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 6400, ptr %arrayidx10, align 4
  %arrayidx12 = getelementptr %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 5, i32 1, i32 7
  %7 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 24000, ptr %arrayidx12, align 4
  %8 = ptrtoint ptr %dccp_timeout to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 24000, ptr %dccp_timeout, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @dccp_can_early_drop(ptr nocapture noundef readonly %ct) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 0, i32 1
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %state, align 2
  %.off = add i8 %1, -5
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.off)
  %switch = icmp ult i8 %.off, 3
  ret i1 %switch
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dccp_to_nlattr(ptr noundef %skb, ptr nocapture noundef readnone %nla, ptr noundef %ct, i1 noundef zeroext %destroy) #0 align 64 {
entry:
  %tmp.i31 = alloca i64, align 8
  %tmp.i29 = alloca i8, align 1
  %tmp.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #8
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %0 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 32770, i32 noundef 0, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %tobool.not33 = icmp eq ptr %1, null
  %tobool.not = select i1 %cmp.i.i, i1 true, i1 %tobool.not33
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %proto = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14
  %state = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 0, i32 1
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %state, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #8
  %4 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %tmp.i, align 1
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %tmp.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  br i1 %destroy, label %if.end4.skip_state_crit_edge, label %if.end7

if.end4.skip_state_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %skip_state

if.end7:                                          ; preds = %if.end4
  %5 = ptrtoint ptr %proto to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %proto, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i29) #8
  %7 = ptrtoint ptr %tmp.i29 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %tmp.i29, align 1
  %call.i30 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %tmp.i29) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i29) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30)
  %tobool10.not = icmp eq i32 %call.i30, 0
  br i1 %tobool10.not, label %lor.lhs.false, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end7
  %handshake_seq = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 0, i32 4
  %8 = ptrtoint ptr %handshake_seq to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %handshake_seq, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i31) #8
  %10 = ptrtoint ptr %tmp.i31 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %tmp.i31, align 8
  %call.i32 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 3, i32 noundef 8, ptr noundef nonnull %tmp.i31, i32 noundef 4) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i31) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32)
  %tobool13.not = icmp eq i32 %call.i32, 0
  br i1 %tobool13.not, label %lor.lhs.false.skip_state_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.skip_state_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %skip_state

skip_state:                                       ; preds = %lor.lhs.false.skip_state_crit_edge, %if.end4.skip_state_crit_edge
  %11 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %12 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv.i, ptr %1, align 2
  br label %cleanup

cleanup:                                          ; preds = %skip_state, %lor.lhs.false.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %skip_state ], [ -1, %if.end7.cleanup_crit_edge ], [ -1, %lor.lhs.false.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ]
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nlattr_to_dccp(ptr nocapture noundef readonly %cda, ptr noundef %ct) #0 align 64 {
entry:
  %tmp.i = alloca i64, align 8
  %tb = alloca [5 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr ptr, ptr %cda, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tb) #8
  %2 = getelementptr inbounds [5 x ptr], ptr %tb, i32 0, i32 1
  %3 = getelementptr inbounds [5 x ptr], ptr %tb, i32 0, i32 2
  %4 = getelementptr inbounds [5 x ptr], ptr %tb, i32 0, i32 3
  %tobool.not = icmp eq ptr %1, null
  %5 = call ptr @memset(ptr %tb, i32 255, i32 20)
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %1, align 2
  %conv.i.i = zext i16 %7 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 4, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @dccp_nla_policy, i32 noundef 0, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %2, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %if.end2.cleanup_crit_edge, label %lor.lhs.false

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end2
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %tobool6.not = icmp eq ptr %11, null
  br i1 %tobool6.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false7

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %add.ptr.i.i61 = getelementptr i8, ptr %11, i32 4
  %12 = ptrtoint ptr %add.ptr.i.i61 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %add.ptr.i.i61, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp10 = icmp ugt i8 %13, 1
  br i1 %cmp10, label %lor.lhs.false7.cleanup_crit_edge, label %lor.lhs.false12

lor.lhs.false7.cleanup_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false12:                                  ; preds = %lor.lhs.false7
  %add.ptr.i.i62 = getelementptr i8, ptr %9, i32 4
  %14 = ptrtoint ptr %add.ptr.i.i62 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %add.ptr.i.i62, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %15)
  %cmp16 = icmp ugt i8 %15, 7
  br i1 %cmp16, label %lor.lhs.false12.cleanup_crit_edge, label %if.end19

lor.lhs.false12.cleanup_crit_edge:                ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19:                                         ; preds = %lor.lhs.false12
  %lock = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 1
  call void @_raw_spin_lock_bh(ptr noundef %lock) #8
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %2, align 4
  %add.ptr.i.i63 = getelementptr i8, ptr %17, i32 4
  %18 = ptrtoint ptr %add.ptr.i.i63 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %add.ptr.i.i63, align 1
  %proto = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14
  %state = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 0, i32 1
  %20 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %state, align 2
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %3, align 4
  %add.ptr.i.i64 = getelementptr i8, ptr %22, i32 4
  %23 = ptrtoint ptr %add.ptr.i.i64 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %add.ptr.i.i64, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp25 = icmp eq i8 %24, 0
  %not.cmp25 = xor i1 %cmp25, true
  %spec.select = zext i1 %not.cmp25 to i8
  %spec.select65 = zext i1 %cmp25 to i8
  %25 = ptrtoint ptr %proto to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %spec.select, ptr %proto, align 8
  %26 = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 0, i32 0, i32 1
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %spec.select65, ptr %26, align 1
  %28 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %4, align 4
  %tobool41.not = icmp eq ptr %29, null
  br i1 %tobool41.not, label %if.end19.if.end46_crit_edge, label %if.then42

if.end19.if.end46_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

if.then42:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i) #8
  %30 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 -1, ptr %tmp.i, align 8, !annotation !64
  %call.i = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i, ptr noundef nonnull %29, i32 noundef 8) #8
  %31 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %tmp.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i) #8
  %handshake_seq = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 0, i32 4
  %33 = ptrtoint ptr %handshake_seq to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %handshake_seq, align 8
  br label %if.end46

if.end46:                                         ; preds = %if.then42, %if.end19.if.end46_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %lor.lhs.false12.cleanup_crit_edge, %lor.lhs.false7.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end46 ], [ 0, %entry.cleanup_crit_edge ], [ %call2.i, %if.end.cleanup_crit_edge ], [ -22, %lor.lhs.false12.cleanup_crit_edge ], [ -22, %lor.lhs.false7.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end2.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tb) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_ct_port_tuple_to_nlattr(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_ct_port_nlattr_tuple_size() #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_ct_port_nlattr_to_tuple(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dccp_timeout_nlattr_to_obj(ptr nocapture noundef readonly %tb, ptr nocapture noundef %net, ptr noundef %data) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %data, null
  %dccp_timeout = getelementptr %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 5, i32 1
  %spec.select = select i1 %tobool.not, ptr %dccp_timeout, ptr %data
  %0 = ptrtoint ptr %dccp_timeout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dccp_timeout, align 4
  %2 = ptrtoint ptr %spec.select to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %spec.select, align 4
  %arrayidx.1 = getelementptr %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 5, i32 1, i32 1
  %3 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.1, align 4
  %arrayidx2.1 = getelementptr i32, ptr %spec.select, i32 1
  %5 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %arrayidx2.1, align 4
  %arrayidx.2 = getelementptr %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 5, i32 1, i32 2
  %6 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.2, align 4
  %arrayidx2.2 = getelementptr i32, ptr %spec.select, i32 2
  %8 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %arrayidx2.2, align 4
  %arrayidx.3 = getelementptr %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 5, i32 1, i32 3
  %9 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.3, align 4
  %arrayidx2.3 = getelementptr i32, ptr %spec.select, i32 3
  %11 = ptrtoint ptr %arrayidx2.3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %arrayidx2.3, align 4
  %arrayidx.4 = getelementptr %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 5, i32 1, i32 4
  %12 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.4, align 4
  %arrayidx2.4 = getelementptr i32, ptr %spec.select, i32 4
  %14 = ptrtoint ptr %arrayidx2.4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %arrayidx2.4, align 4
  %arrayidx.5 = getelementptr %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 5, i32 1, i32 5
  %15 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.5, align 4
  %arrayidx2.5 = getelementptr i32, ptr %spec.select, i32 5
  %17 = ptrtoint ptr %arrayidx2.5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %arrayidx2.5, align 4
  %arrayidx.6 = getelementptr %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 5, i32 1, i32 6
  %18 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.6, align 4
  %arrayidx2.6 = getelementptr i32, ptr %spec.select, i32 6
  %20 = ptrtoint ptr %arrayidx2.6 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx2.6, align 4
  %arrayidx.7 = getelementptr %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 5, i32 1, i32 7
  %21 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.7, align 4
  %arrayidx2.7 = getelementptr i32, ptr %spec.select, i32 7
  %23 = ptrtoint ptr %arrayidx2.7 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.7, align 4
  %arrayidx.8 = getelementptr %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 5, i32 1, i32 8
  %24 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.8, align 4
  %arrayidx2.8 = getelementptr i32, ptr %spec.select, i32 8
  %26 = ptrtoint ptr %arrayidx2.8 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx2.8, align 4
  %arrayidx6 = getelementptr ptr, ptr %tb, i32 1
  %27 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx6, align 4
  %tobool7.not = icmp eq ptr %28, null
  br i1 %tobool7.not, label %entry.for.inc13_crit_edge, label %if.then8

entry.for.inc13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc13

if.then8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i = getelementptr i8, ptr %28, i32 4
  %29 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr.i.i, align 4
  %mul = mul i32 %30, 100
  %31 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %mul, ptr %arrayidx2.1, align 4
  br label %for.inc13

for.inc13:                                        ; preds = %if.then8, %entry.for.inc13_crit_edge
  %arrayidx6.1 = getelementptr ptr, ptr %tb, i32 2
  %32 = ptrtoint ptr %arrayidx6.1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx6.1, align 4
  %tobool7.not.1 = icmp eq ptr %33, null
  br i1 %tobool7.not.1, label %for.inc13.for.inc13.1_crit_edge, label %if.then8.1

for.inc13.for.inc13.1_crit_edge:                  ; preds = %for.inc13
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc13.1

if.then8.1:                                       ; preds = %for.inc13
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.1 = getelementptr i8, ptr %33, i32 4
  %34 = ptrtoint ptr %add.ptr.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %add.ptr.i.i.1, align 4
  %mul.1 = mul i32 %35, 100
  %36 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %mul.1, ptr %arrayidx2.2, align 4
  br label %for.inc13.1

for.inc13.1:                                      ; preds = %if.then8.1, %for.inc13.for.inc13.1_crit_edge
  %arrayidx6.2 = getelementptr ptr, ptr %tb, i32 3
  %37 = ptrtoint ptr %arrayidx6.2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx6.2, align 4
  %tobool7.not.2 = icmp eq ptr %38, null
  br i1 %tobool7.not.2, label %for.inc13.1.for.inc13.2_crit_edge, label %if.then8.2

for.inc13.1.for.inc13.2_crit_edge:                ; preds = %for.inc13.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc13.2

if.then8.2:                                       ; preds = %for.inc13.1
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.2 = getelementptr i8, ptr %38, i32 4
  %39 = ptrtoint ptr %add.ptr.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %add.ptr.i.i.2, align 4
  %mul.2 = mul i32 %40, 100
  %41 = ptrtoint ptr %arrayidx2.3 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %mul.2, ptr %arrayidx2.3, align 4
  br label %for.inc13.2

for.inc13.2:                                      ; preds = %if.then8.2, %for.inc13.1.for.inc13.2_crit_edge
  %arrayidx6.3 = getelementptr ptr, ptr %tb, i32 4
  %42 = ptrtoint ptr %arrayidx6.3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx6.3, align 4
  %tobool7.not.3 = icmp eq ptr %43, null
  br i1 %tobool7.not.3, label %for.inc13.2.for.inc13.3_crit_edge, label %if.then8.3

for.inc13.2.for.inc13.3_crit_edge:                ; preds = %for.inc13.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc13.3

if.then8.3:                                       ; preds = %for.inc13.2
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.3 = getelementptr i8, ptr %43, i32 4
  %44 = ptrtoint ptr %add.ptr.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %add.ptr.i.i.3, align 4
  %mul.3 = mul i32 %45, 100
  %46 = ptrtoint ptr %arrayidx2.4 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %mul.3, ptr %arrayidx2.4, align 4
  br label %for.inc13.3

for.inc13.3:                                      ; preds = %if.then8.3, %for.inc13.2.for.inc13.3_crit_edge
  %arrayidx6.4 = getelementptr ptr, ptr %tb, i32 5
  %47 = ptrtoint ptr %arrayidx6.4 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx6.4, align 4
  %tobool7.not.4 = icmp eq ptr %48, null
  br i1 %tobool7.not.4, label %for.inc13.3.for.inc13.4_crit_edge, label %if.then8.4

for.inc13.3.for.inc13.4_crit_edge:                ; preds = %for.inc13.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc13.4

if.then8.4:                                       ; preds = %for.inc13.3
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.4 = getelementptr i8, ptr %48, i32 4
  %49 = ptrtoint ptr %add.ptr.i.i.4 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %add.ptr.i.i.4, align 4
  %mul.4 = mul i32 %50, 100
  %51 = ptrtoint ptr %arrayidx2.5 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %mul.4, ptr %arrayidx2.5, align 4
  br label %for.inc13.4

for.inc13.4:                                      ; preds = %if.then8.4, %for.inc13.3.for.inc13.4_crit_edge
  %arrayidx6.5 = getelementptr ptr, ptr %tb, i32 6
  %52 = ptrtoint ptr %arrayidx6.5 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx6.5, align 4
  %tobool7.not.5 = icmp eq ptr %53, null
  br i1 %tobool7.not.5, label %for.inc13.4.for.inc13.5_crit_edge, label %if.then8.5

for.inc13.4.for.inc13.5_crit_edge:                ; preds = %for.inc13.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc13.5

if.then8.5:                                       ; preds = %for.inc13.4
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.5 = getelementptr i8, ptr %53, i32 4
  %54 = ptrtoint ptr %add.ptr.i.i.5 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %add.ptr.i.i.5, align 4
  %mul.5 = mul i32 %55, 100
  %56 = ptrtoint ptr %arrayidx2.6 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %mul.5, ptr %arrayidx2.6, align 4
  br label %for.inc13.5

for.inc13.5:                                      ; preds = %if.then8.5, %for.inc13.4.for.inc13.5_crit_edge
  %arrayidx6.6 = getelementptr ptr, ptr %tb, i32 7
  %57 = ptrtoint ptr %arrayidx6.6 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx6.6, align 4
  %tobool7.not.6 = icmp eq ptr %58, null
  br i1 %tobool7.not.6, label %for.inc13.5.for.inc13.6_crit_edge, label %if.then8.6

for.inc13.5.for.inc13.6_crit_edge:                ; preds = %for.inc13.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc13.6

if.then8.6:                                       ; preds = %for.inc13.5
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.6 = getelementptr i8, ptr %58, i32 4
  %59 = ptrtoint ptr %add.ptr.i.i.6 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %add.ptr.i.i.6, align 4
  %mul.6 = mul i32 %60, 100
  %61 = ptrtoint ptr %arrayidx2.7 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %mul.6, ptr %arrayidx2.7, align 4
  br label %for.inc13.6

for.inc13.6:                                      ; preds = %if.then8.6, %for.inc13.5.for.inc13.6_crit_edge
  %62 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx2.1, align 4
  %64 = ptrtoint ptr %spec.select to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %spec.select, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dccp_timeout_obj_to_nlattr(ptr noundef %skb, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %div = udiv i32 %1, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #8
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %div, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %for.cond, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond:                                         ; preds = %entry
  %arrayidx.1 = getelementptr i32, ptr %data, i32 2
  %3 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.1, align 4
  %div.1 = udiv i32 %4, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #8
  %5 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %div.1, ptr %tmp.i, align 4
  %call.i.1 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %tobool.not.1 = icmp eq i32 %call.i.1, 0
  br i1 %tobool.not.1, label %for.cond.1, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %arrayidx.2 = getelementptr i32, ptr %data, i32 3
  %6 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.2, align 4
  %div.2 = udiv i32 %7, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #8
  %8 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %div.2, ptr %tmp.i, align 4
  %call.i.2 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2)
  %tobool.not.2 = icmp eq i32 %call.i.2, 0
  br i1 %tobool.not.2, label %for.cond.2, label %for.cond.1.cleanup_crit_edge

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  %arrayidx.3 = getelementptr i32, ptr %data, i32 4
  %9 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.3, align 4
  %div.3 = udiv i32 %10, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #8
  %11 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %div.3, ptr %tmp.i, align 4
  %call.i.3 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.3)
  %tobool.not.3 = icmp eq i32 %call.i.3, 0
  br i1 %tobool.not.3, label %for.cond.3, label %for.cond.2.cleanup_crit_edge

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.3:                                       ; preds = %for.cond.2
  %arrayidx.4 = getelementptr i32, ptr %data, i32 5
  %12 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.4, align 4
  %div.4 = udiv i32 %13, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #8
  %14 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %div.4, ptr %tmp.i, align 4
  %call.i.4 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %tmp.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.4)
  %tobool.not.4 = icmp eq i32 %call.i.4, 0
  br i1 %tobool.not.4, label %for.cond.4, label %for.cond.3.cleanup_crit_edge

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.4:                                       ; preds = %for.cond.3
  %arrayidx.5 = getelementptr i32, ptr %data, i32 6
  %15 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.5, align 4
  %div.5 = udiv i32 %16, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #8
  %17 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %div.5, ptr %tmp.i, align 4
  %call.i.5 = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %tmp.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.5)
  %tobool.not.5 = icmp eq i32 %call.i.5, 0
  br i1 %tobool.not.5, label %for.cond.5, label %for.cond.4.cleanup_crit_edge

for.cond.4.cleanup_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.5:                                       ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.6 = getelementptr i32, ptr %data, i32 7
  %18 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.6, align 4
  %div.6 = udiv i32 %19, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #8
  %20 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %div.6, ptr %tmp.i, align 4
  %call.i.6 = call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef 4, ptr noundef nonnull %tmp.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.6)
  %tobool.not.6 = icmp eq i32 %call.i.6, 0
  %spec.select = select i1 %tobool.not.6, i32 0, i32 -28
  br label %cleanup

cleanup:                                          ; preds = %for.cond.5, %for.cond.4.cleanup_crit_edge, %for.cond.3.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -28, %entry.cleanup_crit_edge ], [ -28, %for.cond.cleanup_crit_edge ], [ -28, %for.cond.1.cleanup_crit_edge ], [ -28, %for.cond.2.cleanup_crit_edge ], [ -28, %for.cond.3.cleanup_crit_edge ], [ -28, %for.cond.4.cleanup_crit_edge ], [ %spec.select, %for.cond.5 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dccp_print_conntrack(ptr noundef %s, ptr nocapture noundef readonly %ct) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 0, i32 1
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %state, align 2
  %idxprom = zext i8 %1 to i32
  %arrayidx = getelementptr [10 x ptr], ptr @dccp_state_names, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.11, ptr noundef %3) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nf_checksum_partial(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @nf_l4proto_log_invalid(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__nf_ct_refresh_acct(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put_64bit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !25, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/netfilter/nf_conntrack_proto_dccp.c", i32 546, i32 45}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/netfilter/nf_conntrack_proto_dccp.c", i32 546, i32 51}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/netfilter/nf_conntrack_proto_dccp.c", i32 550, i32 51}
!6 = !{ptr @nf_conntrack_l4proto_dccp, !7, !"nf_conntrack_l4proto_dccp", i1 false, i1 false}
!7 = !{!"../net/netfilter/nf_conntrack_proto_dccp.c", i32 754, i32 35}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/netfilter/nf_conntrack_proto_dccp.c", i32 441, i32 9}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/netfilter/nf_conntrack_proto_dccp.c", i32 449, i32 10}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/netfilter/nf_conntrack_proto_dccp.c", i32 458, i32 9}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../net/netfilter/nf_conntrack_proto_dccp.c", i32 463, i32 9}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/netfilter/nf_conntrack_proto_dccp.c", i32 398, i32 10}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../net/netfilter/nf_conntrack_proto_dccp.c", i32 405, i32 9}
!20 = !{ptr @dccp_state_table, !21, !"dccp_state_table", i1 false, i1 false}
!21 = !{!"../net/netfilter/nf_conntrack_proto_dccp.c", i32 129, i32 1}
!22 = distinct !{null, !23, !"__warned", i1 false, i1 false}
!23 = !{!"../include/net/netfilter/nf_conntrack_timeout.h", i32 38, i32 12}
!24 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @dccp_nla_policy, !27, !"dccp_nla_policy", i1 false, i1 false}
!27 = !{!"../net/netfilter/nf_conntrack_proto_dccp.c", i32 624, i32 32}
!28 = !{ptr @dccp_timeout_nla_policy, !29, !"dccp_timeout_nla_policy", i1 false, i1 false}
!29 = !{!"../net/netfilter/nf_conntrack_proto_dccp.c", i32 723, i32 1}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../net/netfilter/nf_conntrack_proto_dccp.c", i32 587, i32 16}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../net/netfilter/nf_conntrack_proto_dccp.c", i32 73, i32 20}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../net/netfilter/nf_conntrack_proto_dccp.c", i32 74, i32 22}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../net/netfilter/nf_conntrack_proto_dccp.c", i32 75, i32 22}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../net/netfilter/nf_conntrack_proto_dccp.c", i32 76, i32 23}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../net/netfilter/nf_conntrack_proto_dccp.c", i32 77, i32 20}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../net/netfilter/nf_conntrack_proto_dccp.c", i32 78, i32 23}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../net/netfilter/nf_conntrack_proto_dccp.c", i32 79, i32 22}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../net/netfilter/nf_conntrack_proto_dccp.c", i32 80, i32 23}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../net/netfilter/nf_conntrack_proto_dccp.c", i32 81, i32 21}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../net/netfilter/nf_conntrack_proto_dccp.c", i32 82, i32 22}
!52 = !{ptr @dccp_state_names, !53, !"dccp_state_names", i1 false, i1 false}
!53 = !{!"../net/netfilter/nf_conntrack_proto_dccp.c", i32 72, i32 27}
!54 = !{i32 1, !"wchar_size", i32 2}
!55 = !{i32 1, !"min_enum_size", i32 4}
!56 = !{i32 8, !"branch-target-enforcement", i32 0}
!57 = !{i32 8, !"sign-return-address", i32 0}
!58 = !{i32 8, !"sign-return-address-all", i32 0}
!59 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!60 = !{i32 7, !"uwtable", i32 1}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!63 = !{!"branch_weights", i32 2000, i32 1}
!64 = !{!"auto-init"}
