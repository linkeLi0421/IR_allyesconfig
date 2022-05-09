; ModuleID = '/llk/IR_all_yes/net/netfilter/nf_conntrack_proto_tcp.c_pt.bc'
source_filename = "../net/netfilter/nf_conntrack_proto_tcp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.nla_policy = type { i8, i8, i16, %union.anon.56 }
%union.anon.56 = type { i32 }
%struct.nf_conntrack_l4proto = type { i8, i8, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.219, ptr }
%struct.anon.219 = type { ptr, ptr, i16, i16, ptr }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.ip_ct_tcp_state = type { i32, i32, i32, i32, i8, i8 }
%struct.nf_conn = type { %struct.nf_conntrack, %struct.spinlock, i32, %struct.nf_conntrack_zone, [2 x %struct.nf_conntrack_tuple_hash], i32, i16, %struct.possible_net_t, %struct.hlist_node, %struct.anon.178, ptr, i32, i32, ptr, %union.nf_conntrack_proto }
%struct.nf_conntrack = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.hlist_node = type { ptr, ptr }
%struct.anon.178 = type {}
%union.nf_conntrack_proto = type { %struct.nf_ct_dccp, [48 x i8] }
%struct.nf_ct_dccp = type { [2 x i8], i8, i8, i8, i64 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
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
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.nf_ct_timeout = type { i16, ptr, [0 x i8] }
%struct.nf_ct_tcp_flags = type { i8, i8 }

@tcp_conntracks = internal constant { [2 x [6 x [10 x i8]]], [40 x i8] } { [2 x [6 x [10 x i8]]] [[6 x [10 x i8]] [[10 x i8] c"\01\01\0B\0B\0B\0B\0B\01\01\09", [10 x i8] c"\0A\0A\02\0A\0A\0A\0A\0A\0A\02", [10 x i8] c"\0A\0A\04\04\06\06\06\07\08\0A", [10 x i8] c"\03\0A\03\03\05\05\07\07\08\0A", [10 x i8] c"\0A\08\08\08\08\08\08\08\08\08", [10 x i8] c"\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A"], [6 x [10 x i8]] [[10 x i8] c"\0A\09\0A\0A\0A\0A\0A\01\0A\09", [10 x i8] c"\0A\02\0B\0B\0B\0B\0B\0B\0B\02", [10 x i8] c"\0A\0A\04\04\06\06\06\07\08\0A", [10 x i8] c"\0A\0B\02\03\05\05\07\07\08\0B", [10 x i8] c"\0A\08\08\08\08\08\08\08\08\08", [10 x i8] c"\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A"]], [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"packet (index %d) in dir %d ignored, state %s\00", [50 x i8] zeroinitializer }, align 32
@tcp_conntrack_names = internal constant { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], [56 x i8] zeroinitializer }, align 32
@nf_conntrack_tcp_packet.__UNIQUE_ID_ddebug712 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 1, i8 1, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nf_conntrack\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nf_conntrack_tcp_packet\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"net/netfilter/nf_conntrack_proto_tcp.c\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"nf_ct_tcp: SYN proxy client keep alive\0A\00", [56 x i8] zeroinitializer }, align 32
@nf_conntrack_tcp_packet.__UNIQUE_ID_ddebug713 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, i8 1, i8 3, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"nf_ct_tcp: Invalid dir=%i index=%u ostate=%u\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"invalid state\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"challenge-ack ignored\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"invalid rst\00", [20 x i8] zeroinitializer }, align 32
@nf_conntrack_tcp_packet.__UNIQUE_ID_ddebug714 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.9, i8 1, i8 32, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tcp_conntracks: \00", [47 x i8] zeroinitializer }, align 32
@nf_conntrack_tcp_packet.__UNIQUE_ID_ddebug715 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.10, i8 1, i8 33, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"syn=%i ack=%i fin=%i rst=%i old=%i new=%i\0A\00", [53 x i8] zeroinitializer }, align 32
@tcp_timeouts = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 0, i32 12000, i32 6000, i32 43200000, i32 12000, i32 6000, i32 3000, i32 12000, i32 1000, i32 12000, i32 0, i32 0, i32 30000, i32 30000], [40 x i8] zeroinitializer }, align 32
@nf_ct_port_nla_policy = external dso_local constant [0 x %struct.nla_policy], align 4
@tcp_timeout_nla_policy = internal constant { [12 x %struct.nla_policy], [32 x i8] } { [12 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.56 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.56 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.56 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.56 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.56 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.56 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.56 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.56 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.56 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.56 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.56 zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@nf_conntrack_l4proto_tcp = dso_local constant { %struct.nf_conntrack_l4proto, [44 x i8] } { %struct.nf_conntrack_l4proto { i8 6, i8 0, i16 32, ptr @tcp_can_early_drop, ptr @tcp_to_nlattr, ptr @nlattr_to_tcp, ptr @nf_ct_port_tuple_to_nlattr, ptr @tcp_nlattr_tuple_size, ptr @nf_ct_port_nlattr_to_tuple, ptr @nf_ct_port_nla_policy, %struct.anon.219 { ptr @tcp_timeout_nlattr_to_obj, ptr @tcp_timeout_obj_to_nlattr, i16 56, i16 11, ptr @tcp_timeout_nla_policy }, ptr @tcp_print_conntrack }, [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"truncated packet\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bad checksum\00", [19 x i8] zeroinitializer }, align 32
@tcp_valid_flags = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\00\00\01\00\01\00\00\00\00\00\00\00\00\00\00\00\01\01\01\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\00\00\00\00\00\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"invalid tcp flag combination\00", [35 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@tcp_new.__UNIQUE_ID_ddebug710 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.15, ptr @.str.3, ptr @.str.16, i8 0, i8 -58, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tcp_new\00", [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"nf_ct_tcp: invalid new deleting.\0A\00", [62 x i8] zeroinitializer }, align 32
@tcp_new.__UNIQUE_ID_ddebug711 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.15, ptr @.str.3, ptr @.str.17, i8 0, i8 -45, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"%s: sender end=%u maxend=%u maxwin=%u scale=%i receiver end=%u maxend=%u maxwin=%u scale=%i\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NONE\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SYN_SENT\00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SYN_RECV\00", [23 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ESTABLISHED\00", [20 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"FIN_WAIT\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CLOSE_WAIT\00", [21 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LAST_ACK\00", [23 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"TIME_WAIT\00", [22 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"CLOSE\00", [26 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SYN_SENT2\00", [22 x i8] zeroinitializer }, align 32
@tcp_in_window.__UNIQUE_ID_ddebug701 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.28, ptr @.str.3, ptr @.str.29, i8 0, i8 127, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tcp_in_window\00", [18 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tcp_in_window: START\0A\00", [42 x i8] zeroinitializer }, align 32
@tcp_in_window.__UNIQUE_ID_ddebug702 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.28, ptr @.str.3, ptr @.str.30, i8 0, i8 -128, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tcp_in_window: \00", [16 x i8] zeroinitializer }, align 32
@tcp_in_window.__UNIQUE_ID_ddebug703 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.28, ptr @.str.3, ptr @.str.31, i8 0, i8 -128, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"seq=%u ack=%u+(%d) sack=%u+(%d) win=%u end=%u\0A\00", [49 x i8] zeroinitializer }, align 32
@tcp_in_window.__UNIQUE_ID_ddebug704 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.28, ptr @.str.3, ptr @.str.32, i8 0, i8 -126, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [104 x i8], [56 x i8] } { [104 x i8] c"tcp_in_window: sender end=%u maxend=%u maxwin=%u scale=%i receiver end=%u maxend=%u maxwin=%u scale=%i\0A\00", [56 x i8] zeroinitializer }, align 32
@tcp_in_window.__UNIQUE_ID_ddebug705 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.28, ptr @.str.3, ptr @.str.30, i8 0, i8 -104, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@tcp_in_window.__UNIQUE_ID_ddebug706 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.28, ptr @.str.3, ptr @.str.31, i8 0, i8 -103, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@tcp_in_window.__UNIQUE_ID_ddebug707 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.28, ptr @.str.3, ptr @.str.32, i8 0, i8 -102, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@tcp_in_window.__UNIQUE_ID_ddebug708 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.28, ptr @.str.3, ptr @.str.33, i8 0, i8 -99, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"tcp_in_window: I=%i II=%i III=%i IV=%i\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"BUG\00", [28 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"ACK is under the lower bound (possible overly delayed ACK)\00", [37 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"ACK is over the upper bound (ACKed data not seen yet)\00", [42 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"SEQ is under the lower bound (already ACKed data retransmitted)\00", [32 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"SEQ is over the upper bound (over the window of the receiver)\00", [34 x i8] zeroinitializer }, align 32
@tcp_in_window.__UNIQUE_ID_ddebug709 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.28, ptr @.str.3, ptr @.str.39, i8 0, i8 -78, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"tcp_in_window: res=%u sender end=%u maxend=%u maxwin=%u receiver end=%u maxend=%u maxwin=%u\0A\00", [35 x i8] zeroinitializer }, align 32
@nf_ct_timeout_data.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.40 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"include/net/netfilter/nf_conntrack_timeout.h\00", [51 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@tcp_nla_policy = internal constant { [6 x %struct.nla_policy], [48 x i8] } { [6 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.56 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.56 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.56 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 2, %union.anon.56 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 2, %union.anon.56 zeroinitializer }], [48 x i8] zeroinitializer }, align 32
@tcp_nlattr_tuple_size.size = internal unnamed_addr global i32 0, section ".data..read_mostly", align 4
@.str.42 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s \00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 8, i64 1, i64 2, i64 7, i64 8, i64 9, i64 10, i64 11]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.45 = private unnamed_addr constant [15 x i8] c"tcp_conntracks\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 128, i32 17 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 1014, i32 8 }
@___asan_gen_.51 = private unnamed_addr constant [20 x i8] c"tcp_conntrack_names\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 37, i32 26 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 1029, i32 4 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 1035, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 1038, i32 45 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 1053, i32 46 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 1098, i32 47 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 1152, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 1154, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant [13 x i8] c"tcp_timeouts\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 55, i32 27 }
@___asan_gen_.87 = private unnamed_addr constant [23 x i8] c"tcp_timeout_nla_policy\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 1454, i32 32 }
@___asan_gen_.90 = private unnamed_addr constant [25 x i8] c"nf_conntrack_l4proto_tcp\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 1507, i32 35 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 751, i32 29 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 763, i32 29 }
@___asan_gen_.99 = private unnamed_addr constant [16 x i8] c"tcp_valid_flags\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 719, i32 17 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 770, i32 29 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 737, i32 50 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 792, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 839, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 38, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 39, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 40, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 41, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 42, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 43, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 44, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 45, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 46, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 47, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 511, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 512, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 514, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 516, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 624, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 702, i32 63 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 703, i32 6 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 704, i32 6 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 705, i32 6 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 706, i32 6 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 710, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant [48 x i8] c"../include/net/netfilter/nf_conntrack_timeout.h\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 38, i32 12 }
@___asan_gen_.189 = private unnamed_addr constant [15 x i8] c"tcp_nla_policy\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 1275, i32 32 }
@___asan_gen_.192 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.193 = private constant [42 x i8] c"../net/netfilter/nf_conntrack_proto_tcp.c\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 265, i32 16 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @tcp_conntracks, ptr @.str, ptr @tcp_conntrack_names, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @tcp_timeouts, ptr @tcp_timeout_nla_policy, ptr @nf_conntrack_l4proto_tcp, ptr @.str.11, ptr @.str.12, ptr @tcp_valid_flags, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @tcp_nla_policy, ptr @.str.42], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcp_conntracks to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcp_conntrack_names to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcp_timeouts to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcp_timeout_nla_policy to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nf_conntrack_l4proto_tcp to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcp_valid_flags to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcp_nla_policy to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nf_conntrack_tcp_packet(ptr noundef %ct, ptr noundef %skb, i32 noundef %dataoff, i32 noundef %ctinfo, ptr noundef %state) local_unnamed_addr #0 align 64 {
entry:
  %_tcph = alloca %struct.tcphdr, align 4
  %seen140 = alloca %struct.ip_ct_tcp_state, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ct_net.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 7
  %0 = ptrtoint ptr %ct_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ct_net.i, align 4
  %tcp.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 40, i32 10, i32 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %_tcph) #9
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = call ptr @memset(ptr %_tcph, i32 255, i32 20)
  %3 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %5 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %data_len.i.i, align 8
  %7 = add i32 %6, %dataoff
  %sub.i4.i = sub i32 %4, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.i4.i)
  %cmp.not.i.i = icmp slt i32 %sub.i4.i, 20
  br i1 %cmp.not.i.i, label %if.end.i.i, label %skb_header_pointer.exit, !prof !124

if.end.i.i:                                       ; preds = %entry
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.cleanup590_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.cleanup590_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup590

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %dataoff, ptr noundef nonnull %_tcph, i32 noundef 20) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.cleanup590_crit_edge, label %lor.lhs.false.i.i.if.end_crit_edge

lor.lhs.false.i.i.if.end_crit_edge:               ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

lor.lhs.false.i.i.cleanup590_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup590

skb_header_pointer.exit:                          ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 %dataoff
  %cmp = icmp eq ptr %add.ptr.i.i, null
  br i1 %cmp, label %skb_header_pointer.exit.cleanup590_crit_edge, label %skb_header_pointer.exit.if.end_crit_edge

skb_header_pointer.exit.if.end_crit_edge:         ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

skb_header_pointer.exit.cleanup590_crit_edge:     ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup590

if.end:                                           ; preds = %skb_header_pointer.exit.if.end_crit_edge, %lor.lhs.false.i.i.if.end_crit_edge
  %retval.0.i.i908 = phi ptr [ %add.ptr.i.i, %skb_header_pointer.exit.if.end_crit_edge ], [ %_tcph, %lor.lhs.false.i.i.if.end_crit_edge ]
  %doff.i = getelementptr inbounds %struct.tcphdr, ptr %retval.0.i.i908, i32 0, i32 4
  %10 = ptrtoint ptr %doff.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load.i = load i16, ptr %doff.i, align 4
  %11 = lshr i16 %bf.load.i, 10
  %12 = and i16 %11, 60
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %12)
  %cmp.i = icmp ult i16 %12, 20
  br i1 %cmp.i, label %if.end.tcp_error.exit.thread_crit_edge, label %lor.lhs.false.i

if.end.tcp_error.exit.thread_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %tcp_error.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end
  %mul.i = zext i16 %12 to i32
  %13 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len.i.i, align 4
  %sub.i = sub i32 %14, %dataoff
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %mul.i)
  %cmp7.i = icmp ult i32 %sub.i, %mul.i
  br i1 %cmp7.i, label %lor.lhs.false.i.tcp_error.exit.thread_crit_edge, label %if.end.i

lor.lhs.false.i.tcp_error.exit.thread_crit_edge:  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tcp_error.exit.thread

if.end.i:                                         ; preds = %lor.lhs.false.i
  %net.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 5
  %15 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %net.i, align 4
  %sysctl_checksum.i = getelementptr inbounds %struct.net, ptr %16, i32 0, i32 40, i32 6
  %17 = ptrtoint ptr %sysctl_checksum.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %sysctl_checksum.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i, label %if.end.i.if.end20.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end20.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %19 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp11.i = icmp eq i8 %20, 0
  br i1 %cmp11.i, label %land.lhs.true13.i, label %land.lhs.true.i.if.end20.i_crit_edge

land.lhs.true.i.if.end20.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i

land.lhs.true13.i:                                ; preds = %land.lhs.true.i
  %pf.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 1
  %21 = ptrtoint ptr %pf.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %pf.i, align 1
  %conv16.i = zext i8 %22 to i16
  %call.i = call zeroext i16 @nf_checksum(ptr noundef %skb, i32 noundef 0, i32 noundef %dataoff, i8 noundef zeroext 6, i16 noundef zeroext %conv16.i) #9
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call.i)
  %tobool18.not.i = icmp eq i16 %call.i, 0
  br i1 %tobool18.not.i, label %land.lhs.true13.i.if.end20.i_crit_edge, label %land.lhs.true13.i.tcp_error.exit.thread_crit_edge

land.lhs.true13.i.tcp_error.exit.thread_crit_edge: ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tcp_error.exit.thread

land.lhs.true13.i.if.end20.i_crit_edge:           ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i

if.end20.i:                                       ; preds = %land.lhs.true13.i.if.end20.i_crit_edge, %land.lhs.true.i.if.end20.i_crit_edge, %if.end.i.if.end20.i_crit_edge
  %arrayidx.i = getelementptr i8, ptr %retval.0.i.i908, i32 13
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.i, align 1
  %25 = and i8 %24, 55
  %idxprom.i = zext i8 %25 to i32
  %arrayidx23.i = getelementptr [56 x i8], ptr @tcp_valid_flags, i32 0, i32 %idxprom.i
  %26 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx23.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool24.not.i = icmp eq i8 %27, 0
  br i1 %tobool24.not.i, label %if.end20.i.tcp_error.exit.thread_crit_edge, label %if.end5

if.end20.i.tcp_error.exit.thread_crit_edge:       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tcp_error.exit.thread

tcp_error.exit.thread:                            ; preds = %if.end20.i.tcp_error.exit.thread_crit_edge, %land.lhs.true13.i.tcp_error.exit.thread_crit_edge, %lor.lhs.false.i.tcp_error.exit.thread_crit_edge, %if.end.tcp_error.exit.thread_crit_edge
  %.str.13.sink.i = phi ptr [ @.str.11, %lor.lhs.false.i.tcp_error.exit.thread_crit_edge ], [ @.str.11, %if.end.tcp_error.exit.thread_crit_edge ], [ @.str.12, %land.lhs.true13.i.tcp_error.exit.thread_crit_edge ], [ @.str.13, %if.end20.i.tcp_error.exit.thread_crit_edge ]
  call void (ptr, ptr, i8, ptr, ...) @nf_l4proto_log_invalid(ptr noundef %skb, ptr noundef %state, i8 noundef zeroext 6, ptr noundef nonnull @.str.14, ptr noundef nonnull %.str.13.sink.i) #12
  br label %cleanup590

if.end5:                                          ; preds = %if.end20.i
  %status.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 5
  %28 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %status.i, align 4
  %30 = and i32 %29, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not = icmp eq i32 %30, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end5.if.end9_crit_edge

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

land.lhs.true:                                    ; preds = %if.end5
  %call7 = call fastcc zeroext i1 @tcp_new(ptr noundef %ct, ptr noundef %skb, i32 noundef %dataoff, ptr noundef nonnull %retval.0.i.i908)
  br i1 %call7, label %land.lhs.true.if.end9_crit_edge, label %land.lhs.true.cleanup590_crit_edge

land.lhs.true.cleanup590_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup590

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.end9:                                          ; preds = %land.lhs.true.if.end9_crit_edge, %if.end5.if.end9_crit_edge
  %lock = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 1
  call void @_raw_spin_lock_bh(ptr noundef %lock) #9
  %proto = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14
  %state10 = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 1, i32 24
  %31 = ptrtoint ptr %state10 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %state10, align 8
  %conv = zext i8 %32 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %ctinfo)
  %cmp11 = icmp ugt i32 %ctinfo, 2
  %cond = zext i1 %cmp11 to i32
  %33 = ptrtoint ptr %doff.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %bf.load.i849 = load i16, ptr %doff.i, align 4
  %34 = and i16 %bf.load.i849, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool.not.i850 = icmp eq i16 %34, 0
  br i1 %tobool.not.i850, label %if.else.i, label %if.end9.get_conntrack_index.exit_crit_edge

if.end9.get_conntrack_index.exit_crit_edge:       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_conntrack_index.exit

if.else.i:                                        ; preds = %if.end9
  %35 = and i16 %bf.load.i849, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool4.not.i = icmp eq i16 %35, 0
  br i1 %tobool4.not.i, label %if.else10.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %36 = lshr i16 %bf.load.i849, 4
  %.lobit.i = and i16 %36, 1
  %37 = zext i16 %.lobit.i to i32
  br label %get_conntrack_index.exit

if.else10.i:                                      ; preds = %if.else.i
  %bf.clear12.i = and i16 %bf.load.i849, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.clear12.i)
  %tobool13.not.i = icmp eq i16 %bf.clear12.i, 0
  br i1 %tobool13.not.i, label %if.else15.i, label %if.else10.i.get_conntrack_index.exit_crit_edge

if.else10.i.get_conntrack_index.exit_crit_edge:   ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_conntrack_index.exit

if.else15.i:                                      ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_pc() #11
  %38 = and i16 %bf.load.i849, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool20.not.i = icmp eq i16 %38, 0
  %..i = select i1 %tobool20.not.i, i32 5, i32 3
  br label %get_conntrack_index.exit

get_conntrack_index.exit:                         ; preds = %if.else15.i, %if.else10.i.get_conntrack_index.exit_crit_edge, %if.then5.i, %if.end9.get_conntrack_index.exit_crit_edge
  %retval.0.i851 = phi i32 [ %37, %if.then5.i ], [ 4, %if.end9.get_conntrack_index.exit_crit_edge ], [ 2, %if.else10.i.get_conntrack_index.exit_crit_edge ], [ %..i, %if.else15.i ]
  %arrayidx15 = getelementptr [2 x [6 x [10 x i8]]], ptr @tcp_conntracks, i32 0, i32 %cond, i32 %retval.0.i851, i32 %conv
  %39 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %40 to i32
  %41 = zext i8 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values)
  switch i8 %40, label %get_conntrack_index.exit.sw.epilog_crit_edge [
    i8 1, label %sw.bb
    i8 11, label %get_conntrack_index.exit.sw.bb48_crit_edge
    i8 10, label %sw.bb182
    i8 7, label %sw.bb238
    i8 9, label %sw.bb270
    i8 2, label %sw.bb276
    i8 8, label %sw.bb290
  ]

get_conntrack_index.exit.sw.bb48_crit_edge:       ; preds = %get_conntrack_index.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb48

get_conntrack_index.exit.sw.epilog_crit_edge:     ; preds = %get_conntrack_index.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %get_conntrack_index.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %32)
  %cmp19 = icmp ult i8 %32, 7
  br i1 %cmp19, label %sw.bb.sw.epilog_crit_edge, label %if.end22

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end22:                                         ; preds = %sw.bb
  %flags = getelementptr [2 x %struct.ip_ct_tcp_state], ptr %proto, i32 0, i32 %cond, i32 5
  %42 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %flags, align 1
  %lnot = xor i1 %cmp11, true
  %lnot.ext = zext i1 %lnot to i32
  %flags30 = getelementptr [2 x %struct.ip_ct_tcp_state], ptr %proto, i32 0, i32 %lnot.ext, i32 5
  %44 = ptrtoint ptr %flags30 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %flags30, align 1
  %or822 = or i8 %45, %43
  %46 = and i8 %or822, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool32.not = icmp eq i8 %46, 0
  br i1 %tobool32.not, label %lor.lhs.false, label %if.end22.if.then42_crit_edge

if.end22.if.then42_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then42

lor.lhs.false:                                    ; preds = %if.end22
  %last_dir = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 1, i32 25
  %47 = ptrtoint ptr %last_dir to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %last_dir, align 1
  %49 = zext i1 %cmp11 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %48, i8 %49)
  %cmp35 = icmp eq i8 %48, %49
  br i1 %cmp35, label %land.lhs.true37, label %lor.lhs.false.sw.bb48_crit_edge

lor.lhs.false.sw.bb48_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb48

land.lhs.true37:                                  ; preds = %lor.lhs.false
  %last_index = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 1, i32 27
  %50 = ptrtoint ptr %last_index to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %last_index, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %51)
  %cmp40 = icmp eq i8 %51, 4
  br i1 %cmp40, label %land.lhs.true37.if.then42_crit_edge, label %land.lhs.true37.sw.bb48_crit_edge

land.lhs.true37.sw.bb48_crit_edge:                ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb48

land.lhs.true37.if.then42_crit_edge:              ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then42

if.then42:                                        ; preds = %land.lhs.true37.if.then42_crit_edge, %if.end22.if.then42_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #9
  %call.i852 = call zeroext i1 @nf_ct_delete(ptr noundef %ct, i32 noundef 0, i32 noundef 0) #9
  %. = select i1 %call.i852, i32 -4, i32 0
  br label %cleanup590

sw.bb48:                                          ; preds = %land.lhs.true37.sw.bb48_crit_edge, %lor.lhs.false.sw.bb48_crit_edge, %get_conntrack_index.exit.sw.bb48_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i851)
  %cmp49 = icmp eq i32 %retval.0.i851, 1
  br i1 %cmp49, label %land.lhs.true51, label %sw.bb48.if.end120_crit_edge

sw.bb48.if.end120_crit_edge:                      ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end120

land.lhs.true51:                                  ; preds = %sw.bb48
  %last_index53 = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 1, i32 27
  %52 = ptrtoint ptr %last_index53 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %last_index53, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %cmp55 = icmp eq i8 %53, 0
  br i1 %cmp55, label %land.lhs.true57, label %land.lhs.true51.if.end120_crit_edge

land.lhs.true51.if.end120_crit_edge:              ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end120

land.lhs.true57:                                  ; preds = %land.lhs.true51
  %last_dir59 = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 1, i32 25
  %54 = ptrtoint ptr %last_dir59 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %last_dir59, align 1
  %conv60 = zext i8 %55 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv60, i32 %cond)
  %cmp61.not = icmp eq i32 %conv60, %cond
  br i1 %cmp61.not, label %land.lhs.true57.if.end120_crit_edge, label %land.lhs.true63

land.lhs.true57.if.end120_crit_edge:              ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end120

land.lhs.true63:                                  ; preds = %land.lhs.true57
  %ack_seq = getelementptr inbounds %struct.tcphdr, ptr %retval.0.i.i908, i32 0, i32 3
  %56 = ptrtoint ptr %ack_seq to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %ack_seq, align 4
  %last_end = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 1, i32 36
  %58 = ptrtoint ptr %last_end to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %last_end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %59)
  %cmp65 = icmp eq i32 %57, %59
  br i1 %cmp65, label %if.then67, label %land.lhs.true63.if.end120_crit_edge

land.lhs.true63.if.end120_crit_edge:              ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end120

if.then67:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx74 = getelementptr [2 x %struct.ip_ct_tcp_state], ptr %proto, i32 0, i32 %conv60
  %60 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %57, ptr %arrayidx74, align 4
  %61 = ptrtoint ptr %last_end to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %last_end, align 4
  %63 = ptrtoint ptr %last_dir59 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %last_dir59, align 1
  %idxprom81 = zext i8 %64 to i32
  %td_maxend = getelementptr [2 x %struct.ip_ct_tcp_state], ptr %proto, i32 0, i32 %idxprom81, i32 1
  %65 = ptrtoint ptr %td_maxend to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %62, ptr %td_maxend, align 4
  %last_win = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 1, i32 40
  %66 = ptrtoint ptr %last_win to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %last_win, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %67)
  %cmp85 = icmp eq i16 %67, 0
  %narrow = select i1 %cmp85, i16 1, i16 %67
  %spec.select = zext i16 %narrow to i32
  %68 = ptrtoint ptr %last_dir59 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %last_dir59, align 1
  %idxprom95 = zext i8 %69 to i32
  %td_maxwin = getelementptr [2 x %struct.ip_ct_tcp_state], ptr %proto, i32 0, i32 %idxprom95, i32 2
  %70 = ptrtoint ptr %td_maxwin to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %spec.select, ptr %td_maxwin, align 4
  %last_wscale = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 1, i32 42
  %71 = ptrtoint ptr %last_wscale to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %last_wscale, align 2
  %73 = load i8, ptr %last_dir59, align 1
  %idxprom102 = zext i8 %73 to i32
  %td_scale = getelementptr [2 x %struct.ip_ct_tcp_state], ptr %proto, i32 0, i32 %idxprom102, i32 4
  %74 = ptrtoint ptr %td_scale to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %72, ptr %td_scale, align 4
  %last_flags = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 1, i32 43
  %75 = ptrtoint ptr %last_flags to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %last_flags, align 1
  %77 = and i8 %76, -65
  store i8 %77, ptr %last_flags, align 1
  %flags116 = getelementptr [2 x %struct.ip_ct_tcp_state], ptr %proto, i32 0, i32 %idxprom102, i32 5
  %78 = ptrtoint ptr %flags116 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %77, ptr %flags116, align 1
  %arrayidx119 = getelementptr [2 x %struct.ip_ct_tcp_state], ptr %proto, i32 0, i32 %cond
  %79 = call ptr @memset(ptr %arrayidx119, i32 0, i32 20)
  br label %sw.epilog

if.end120:                                        ; preds = %land.lhs.true63.if.end120_crit_edge, %land.lhs.true57.if.end120_crit_edge, %land.lhs.true51.if.end120_crit_edge, %sw.bb48.if.end120_crit_edge
  %conv121 = trunc i32 %retval.0.i851 to i8
  %last_index123 = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 1, i32 27
  %80 = ptrtoint ptr %last_index123 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %conv121, ptr %last_index123, align 1
  %conv124 = zext i1 %cmp11 to i8
  %last_dir126 = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 1, i32 25
  %81 = ptrtoint ptr %last_dir126 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %conv124, ptr %last_dir126, align 1
  %seq = getelementptr inbounds %struct.tcphdr, ptr %retval.0.i.i908, i32 0, i32 2
  %82 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %seq, align 4
  %last_seq = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 1, i32 28
  %84 = ptrtoint ptr %last_seq to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %last_seq, align 4
  %85 = load i32, ptr %seq, align 4
  %86 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %len.i.i, align 4
  %88 = ptrtoint ptr %doff.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %bf.load.i854 = load i16, ptr %doff.i, align 4
  %89 = lshr i16 %bf.load.i854, 10
  %90 = and i16 %89, 60
  %mul.i855 = zext i16 %90 to i32
  %91 = lshr i16 %bf.load.i854, 1
  %.lobit.i856 = and i16 %91, 1
  %92 = zext i16 %.lobit.i856 to i32
  %bf.clear7.i = and i16 %bf.load.i854, 1
  %93 = zext i16 %bf.clear7.i to i32
  %.neg921 = sub i32 %85, %dataoff
  %.neg.i = add i32 %.neg921, %87
  %94 = add i32 %.neg.i, %93
  %add5.i = sub i32 %94, %mul.i855
  %add11.i = add i32 %add5.i, %92
  %last_end131 = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 1, i32 36
  %95 = ptrtoint ptr %last_end131 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %add11.i, ptr %last_end131, align 4
  %window = getelementptr inbounds %struct.tcphdr, ptr %retval.0.i.i908, i32 0, i32 5
  %96 = ptrtoint ptr %window to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %window, align 2
  %last_win133 = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 1, i32 40
  %98 = ptrtoint ptr %last_win133 to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %97, ptr %last_win133, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i851)
  %cmp134 = icmp ne i32 %retval.0.i851, 0
  %brmerge = or i1 %cmp11, %cmp134
  br i1 %brmerge, label %if.end120.if.end179_crit_edge, label %if.then139

if.end120.if.end179_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end179

if.then139:                                       ; preds = %if.end120
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %seen140) #9
  %99 = call ptr @memset(ptr %seen140, i32 0, i32 20)
  %last_wscale142 = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 1, i32 42
  %100 = ptrtoint ptr %last_wscale142 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 0, ptr %last_wscale142, align 2
  %last_flags144 = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 1, i32 43
  %101 = ptrtoint ptr %last_flags144 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 0, ptr %last_flags144, align 1
  call fastcc void @tcp_options(ptr noundef %skb, i32 noundef %dataoff, ptr noundef nonnull %retval.0.i.i908, ptr noundef nonnull %seen140)
  %flags145 = getelementptr inbounds %struct.ip_ct_tcp_state, ptr %seen140, i32 0, i32 5
  %102 = ptrtoint ptr %flags145 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %flags145, align 1
  %104 = and i8 %103, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool148.not = icmp eq i8 %104, 0
  br i1 %tobool148.not, label %if.then139.if.end158_crit_edge, label %if.then149

if.then139.if.end158_crit_edge:                   ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end158

if.then149:                                       ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #11
  %105 = ptrtoint ptr %last_flags144 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %last_flags144, align 1
  %107 = or i8 %106, 1
  store i8 %107, ptr %last_flags144, align 1
  %td_scale155 = getelementptr inbounds %struct.ip_ct_tcp_state, ptr %seen140, i32 0, i32 4
  %108 = ptrtoint ptr %td_scale155 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %td_scale155, align 4
  %110 = ptrtoint ptr %last_wscale142 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %109, ptr %last_wscale142, align 2
  br label %if.end158

if.end158:                                        ; preds = %if.then149, %if.then139.if.end158_crit_edge
  %111 = and i8 %103, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool162.not = icmp eq i8 %111, 0
  br i1 %tobool162.not, label %if.end158.if.end169_crit_edge, label %if.then163

if.end158.if.end169_crit_edge:                    ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end169

if.then163:                                       ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #11
  %112 = ptrtoint ptr %last_flags144 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %last_flags144, align 1
  %114 = or i8 %113, 2
  store i8 %114, ptr %last_flags144, align 1
  br label %if.end169

if.end169:                                        ; preds = %if.then163, %if.end158.if.end169_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %32)
  %cmp170 = icmp eq i8 %32, 6
  br i1 %cmp170, label %if.then172, label %if.end169.if.end178_crit_edge

if.end169.if.end178_crit_edge:                    ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end178

if.then172:                                       ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #11
  %115 = ptrtoint ptr %last_flags144 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %last_flags144, align 1
  %117 = or i8 %116, 64
  store i8 %117, ptr %last_flags144, align 1
  br label %if.end178

if.end178:                                        ; preds = %if.then172, %if.end169.if.end178_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %seen140) #9
  br label %if.end179

if.end179:                                        ; preds = %if.end178, %if.end120.if.end179_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #9
  %arrayidx181 = getelementptr [10 x ptr], ptr @tcp_conntrack_names, i32 0, i32 %conv
  %118 = ptrtoint ptr %arrayidx181 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %arrayidx181, align 4
  call void (ptr, ptr, ptr, ptr, ...) @nf_ct_l4proto_log_invalid(ptr noundef %skb, ptr noundef %ct, ptr noundef %state, ptr noundef nonnull @.str, i32 noundef %retval.0.i851, i32 noundef %cond, ptr noundef %119) #12
  br label %cleanup590

sw.bb182:                                         ; preds = %get_conntrack_index.exit
  %ext.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 13
  %120 = ptrtoint ptr %ext.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %ext.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %121, null
  br i1 %tobool.not.i.i.i, label %sw.bb182.do.body220_crit_edge, label %nf_ct_ext_exist.exit.i.i

sw.bb182.do.body220_crit_edge:                    ; preds = %sw.bb182
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body220

nf_ct_ext_exist.exit.i.i:                         ; preds = %sw.bb182
  %arrayidx.i.i.i.i = getelementptr [10 x i8], ptr %121, i32 0, i32 8
  %122 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %tobool.i.i.not.i.i = icmp eq i8 %123, 0
  br i1 %tobool.i.i.not.i.i, label %nf_ct_ext_exist.exit.i.i.do.body220_crit_edge, label %nfct_synproxy.exit

nf_ct_ext_exist.exit.i.i.do.body220_crit_edge:    ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body220

nfct_synproxy.exit:                               ; preds = %nf_ct_ext_exist.exit.i.i
  %conv.i.i = zext i8 %123 to i32
  %add.ptr.i.i857 = getelementptr i8, ptr %121, i32 %conv.i.i
  %phi.cmp = icmp eq ptr %add.ptr.i.i857, null
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %32)
  %cmp186 = icmp ne i8 %32, 1
  %or.cond = select i1 %phi.cmp, i1 true, i1 %cmp186
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %retval.0.i851)
  %cmp189 = icmp ne i32 %retval.0.i851, 3
  %or.cond823 = select i1 %or.cond, i1 true, i1 %cmp189
  %brmerge824 = or i1 %cmp11, %or.cond823
  br i1 %brmerge824, label %nfct_synproxy.exit.do.body220_crit_edge, label %land.lhs.true194

nfct_synproxy.exit.do.body220_crit_edge:          ; preds = %nfct_synproxy.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body220

land.lhs.true194:                                 ; preds = %nfct_synproxy.exit
  %last_dir196 = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 1, i32 25
  %124 = ptrtoint ptr %last_dir196 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %last_dir196, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %cmp198 = icmp eq i8 %125, 0
  br i1 %cmp198, label %land.lhs.true200, label %land.lhs.true194.do.body220_crit_edge

land.lhs.true194.do.body220_crit_edge:            ; preds = %land.lhs.true194
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body220

land.lhs.true200:                                 ; preds = %land.lhs.true194
  %126 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %proto, align 4
  %sub = add i32 %127, -1
  %seq205 = getelementptr inbounds %struct.tcphdr, ptr %retval.0.i.i908, i32 0, i32 2
  %128 = ptrtoint ptr %seq205 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %seq205, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %129)
  %cmp206 = icmp eq i32 %sub, %129
  br i1 %cmp206, label %do.body, label %land.lhs.true200.do.body220_crit_edge

land.lhs.true200.do.body220_crit_edge:            ; preds = %land.lhs.true200
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body220

do.body:                                          ; preds = %land.lhs.true200
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nf_conntrack_tcp_packet.__UNIQUE_ID_ddebug712, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nf_conntrack_tcp_packet, %if.then216)) #9
          to label %do.end [label %if.then216], !srcloc !125

if.then216:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nf_conntrack_tcp_packet.__UNIQUE_ID_ddebug712, ptr noundef nonnull @.str.4) #9
  br label %do.end

do.end:                                           ; preds = %if.then216, %do.body
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #9
  br label %cleanup590

do.body220:                                       ; preds = %land.lhs.true200.do.body220_crit_edge, %land.lhs.true194.do.body220_crit_edge, %nfct_synproxy.exit.do.body220_crit_edge, %nf_ct_ext_exist.exit.i.i.do.body220_crit_edge, %sw.bb182.do.body220_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nf_conntrack_tcp_packet.__UNIQUE_ID_ddebug713, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nf_conntrack_tcp_packet, %if.then232)) #9
          to label %do.end236 [label %if.then232], !srcloc !125

if.then232:                                       ; preds = %do.body220
  call void @__sanitizer_cov_trace_pc() #11
  %call233 = call fastcc i32 @get_conntrack_index(ptr noundef nonnull %retval.0.i.i908), !range !126
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nf_conntrack_tcp_packet.__UNIQUE_ID_ddebug713, ptr noundef nonnull @.str.5, i32 noundef %cond, i32 noundef %call233, i32 noundef %conv) #9
  br label %do.end236

do.end236:                                        ; preds = %if.then232, %do.body220
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #9
  call void (ptr, ptr, ptr, ptr, ...) @nf_ct_l4proto_log_invalid(ptr noundef %skb, ptr noundef %ct, ptr noundef %state, ptr noundef nonnull @.str.6) #12
  br label %cleanup590

sw.bb238:                                         ; preds = %get_conntrack_index.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %32)
  %cmp239 = icmp eq i8 %32, 6
  br i1 %cmp239, label %land.lhs.true241, label %sw.bb238.sw.epilog_crit_edge

sw.bb238.sw.epilog_crit_edge:                     ; preds = %sw.bb238
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

land.lhs.true241:                                 ; preds = %sw.bb238
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %retval.0.i851)
  %cmp242 = icmp eq i32 %retval.0.i851, 3
  br i1 %cmp242, label %land.lhs.true244, label %land.lhs.true241.sw.epilog_crit_edge

land.lhs.true241.sw.epilog_crit_edge:             ; preds = %land.lhs.true241
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

land.lhs.true244:                                 ; preds = %land.lhs.true241
  %last_dir246 = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 1, i32 25
  %130 = ptrtoint ptr %last_dir246 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %last_dir246, align 1
  %132 = zext i1 %cmp11 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %131, i8 %132)
  %cmp248.not = icmp eq i8 %131, %132
  br i1 %cmp248.not, label %land.lhs.true244.sw.epilog_crit_edge, label %land.lhs.true250

land.lhs.true244.sw.epilog_crit_edge:             ; preds = %land.lhs.true244
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

land.lhs.true250:                                 ; preds = %land.lhs.true244
  %last_index252 = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 1, i32 27
  %133 = ptrtoint ptr %last_index252 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %last_index252, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %cmp254 = icmp eq i8 %134, 0
  br i1 %cmp254, label %land.lhs.true256, label %land.lhs.true250.sw.epilog_crit_edge

land.lhs.true250.sw.epilog_crit_edge:             ; preds = %land.lhs.true250
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

land.lhs.true256:                                 ; preds = %land.lhs.true250
  %last_flags258 = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 1, i32 43
  %135 = ptrtoint ptr %last_flags258 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %last_flags258, align 1
  %137 = and i8 %136, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %tobool261.not = icmp eq i8 %137, 0
  br i1 %tobool261.not, label %land.lhs.true256.sw.epilog_crit_edge, label %if.then262

land.lhs.true256.sw.epilog_crit_edge:             ; preds = %land.lhs.true256
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then262:                                       ; preds = %land.lhs.true256
  call void @__sanitizer_cov_trace_pc() #11
  %and266 = and i8 %136, -65
  %138 = ptrtoint ptr %last_flags258 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %and266, ptr %last_flags258, align 1
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #9
  call void (ptr, ptr, ptr, ptr, ...) @nf_ct_l4proto_log_invalid(ptr noundef %skb, ptr noundef %ct, ptr noundef %state, ptr noundef nonnull @.str.7) #12
  br label %cleanup590

sw.bb270:                                         ; preds = %get_conntrack_index.exit
  call void @__sanitizer_cov_trace_pc() #11
  %last_flags272 = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 1, i32 43
  %139 = ptrtoint ptr %last_flags272 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %last_flags272, align 1
  %141 = or i8 %140, -128
  store i8 %141, ptr %last_flags272, align 1
  br label %sw.epilog

sw.bb276:                                         ; preds = %get_conntrack_index.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %retval.0.i851)
  %cmp280 = icmp eq i32 %retval.0.i851, 3
  %or.cond825 = select i1 %cmp11, i1 %cmp280, i1 false
  br i1 %or.cond825, label %land.lhs.true282, label %sw.bb276.sw.epilog_crit_edge

sw.bb276.sw.epilog_crit_edge:                     ; preds = %sw.bb276
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

land.lhs.true282:                                 ; preds = %sw.bb276
  call void @__sanitizer_cov_trace_pc() #11
  %last_flags284 = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 1, i32 43
  %142 = ptrtoint ptr %last_flags284 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %last_flags284, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %143)
  %tobool287.not = icmp sgt i8 %143, -1
  %spec.select826 = select i1 %tobool287.not, i32 2, i32 3
  br label %sw.epilog

sw.bb290:                                         ; preds = %get_conntrack_index.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %retval.0.i851)
  %cmp291.not = icmp eq i32 %retval.0.i851, 4
  br i1 %cmp291.not, label %if.end294, label %sw.bb290.sw.epilog_crit_edge

sw.bb290.sw.epilog_crit_edge:                     ; preds = %sw.bb290
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end294:                                        ; preds = %sw.bb290
  %.off.i = add i8 %32, -4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %.off.i)
  %switch.i = icmp ult i8 %.off.i, 5
  br i1 %switch.i, label %if.end294.in_window_crit_edge, label %if.end297

if.end294.in_window_crit_edge:                    ; preds = %if.end294
  call void @__sanitizer_cov_trace_pc() #11
  br label %in_window

if.end297:                                        ; preds = %if.end294
  %lnot301 = xor i1 %cmp11, true
  %lnot.ext302 = zext i1 %lnot301 to i32
  %flags304 = getelementptr [2 x %struct.ip_ct_tcp_state], ptr %proto, i32 0, i32 %lnot.ext302, i32 5
  %144 = ptrtoint ptr %flags304 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %flags304, align 1
  %146 = and i8 %145, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %146)
  %tobool307.not = icmp eq i8 %146, 0
  br i1 %tobool307.not, label %if.end297.if.end367_crit_edge, label %land.lhs.true308

if.end297.if.end367_crit_edge:                    ; preds = %if.end297
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end367

land.lhs.true308:                                 ; preds = %if.end297
  %last_index310 = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 1, i32 27
  %147 = ptrtoint ptr %last_index310 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %last_index310, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %148)
  %cmp312.not = icmp eq i8 %148, 0
  br i1 %cmp312.not, label %land.lhs.true308.if.end367_crit_edge, label %if.then314

land.lhs.true308.if.end367_crit_edge:             ; preds = %land.lhs.true308
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end367

if.then314:                                       ; preds = %land.lhs.true308
  %seq316 = getelementptr inbounds %struct.tcphdr, ptr %retval.0.i.i908, i32 0, i32 2
  %149 = ptrtoint ptr %seq316 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %seq316, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %cmp317 = icmp eq i32 %150, 0
  br i1 %cmp317, label %land.lhs.true319, label %if.then314.if.end322_crit_edge

if.then314.if.end322_crit_edge:                   ; preds = %if.then314
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end322

land.lhs.true319:                                 ; preds = %if.then314
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %32)
  %cmp.i861 = icmp eq i8 %32, 3
  br i1 %cmp.i861, label %nf_conntrack_tcp_established.exit, label %land.lhs.true319.sw.epilog_crit_edge

land.lhs.true319.sw.epilog_crit_edge:             ; preds = %land.lhs.true319
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

nf_conntrack_tcp_established.exit:                ; preds = %land.lhs.true319
  %151 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load volatile i32, ptr %status.i, align 4
  %153 = and i32 %152, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %153)
  %tobool.i.not = icmp eq i32 %153, 0
  br i1 %tobool.i.not, label %nf_conntrack_tcp_established.exit.sw.epilog_crit_edge, label %nf_conntrack_tcp_established.exit.if.end322_crit_edge

nf_conntrack_tcp_established.exit.if.end322_crit_edge: ; preds = %nf_conntrack_tcp_established.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end322

nf_conntrack_tcp_established.exit.sw.epilog_crit_edge: ; preds = %nf_conntrack_tcp_established.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end322:                                        ; preds = %nf_conntrack_tcp_established.exit.if.end322_crit_edge, %if.then314.if.end322_crit_edge
  %td_maxack = getelementptr [2 x %struct.ip_ct_tcp_state], ptr %proto, i32 0, i32 %lnot.ext302, i32 3
  %154 = ptrtoint ptr %td_maxack to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %td_maxack, align 4
  %sub.i863 = sub i32 %150, %155
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i863)
  %cmp.i864 = icmp slt i32 %sub.i863, 0
  br i1 %cmp.i864, label %land.lhs.true331, label %if.end322.if.end335_crit_edge

if.end322.if.end335_crit_edge:                    ; preds = %if.end322
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end335

land.lhs.true331:                                 ; preds = %if.end322
  %tcp_ignore_invalid_rst = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 40, i32 10, i32 1, i32 4
  %156 = ptrtoint ptr %tcp_ignore_invalid_rst to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %tcp_ignore_invalid_rst, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %157)
  %tobool332.not = icmp eq i8 %157, 0
  br i1 %tobool332.not, label %cleanup.thread914, label %land.lhs.true331.if.end335_crit_edge

land.lhs.true331.if.end335_crit_edge:             ; preds = %land.lhs.true331
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end335

cleanup.thread914:                                ; preds = %land.lhs.true331
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #9
  call void (ptr, ptr, ptr, ptr, ...) @nf_ct_l4proto_log_invalid(ptr noundef %skb, ptr noundef %ct, ptr noundef %state, ptr noundef nonnull @.str.8) #12
  br label %cleanup590

if.end335:                                        ; preds = %land.lhs.true331.if.end335_crit_edge, %if.end322.if.end335_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %32)
  %cmp.i866 = icmp eq i8 %32, 3
  br i1 %cmp.i866, label %nf_conntrack_tcp_established.exit870, label %if.end335.sw.epilog_crit_edge

if.end335.sw.epilog_crit_edge:                    ; preds = %if.end335
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

nf_conntrack_tcp_established.exit870:             ; preds = %if.end335
  %158 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load volatile i32, ptr %status.i, align 4
  %160 = and i32 %159, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %tobool.i868 = icmp eq i32 %160, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %150, i32 %155)
  %cmp345 = icmp eq i32 %150, %155
  %or.cond919 = select i1 %tobool.i868, i1 true, i1 %cmp345
  br i1 %or.cond919, label %nf_conntrack_tcp_established.exit870.sw.epilog_crit_edge, label %if.end348

nf_conntrack_tcp_established.exit870.sw.epilog_crit_edge: ; preds = %nf_conntrack_tcp_established.exit870
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end348:                                        ; preds = %nf_conntrack_tcp_established.exit870
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %148)
  %cmp352 = icmp eq i8 %148, 3
  br i1 %cmp352, label %land.lhs.true354, label %if.end348.if.end367_crit_edge

if.end348.if.end367_crit_edge:                    ; preds = %if.end348
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end367

land.lhs.true354:                                 ; preds = %if.end348
  %last_dir356 = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 1, i32 25
  %161 = ptrtoint ptr %last_dir356 to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %last_dir356, align 1
  %163 = zext i1 %cmp11 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %162, i8 %163)
  %cmp358 = icmp eq i8 %162, %163
  br i1 %cmp358, label %land.lhs.true360, label %land.lhs.true354.if.end367_crit_edge

land.lhs.true354.if.end367_crit_edge:             ; preds = %land.lhs.true354
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end367

land.lhs.true360:                                 ; preds = %land.lhs.true354
  %last_end362 = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 1, i32 36
  %164 = ptrtoint ptr %last_end362 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %last_end362, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %150, i32 %165)
  %cmp363 = icmp eq i32 %150, %165
  br i1 %cmp363, label %land.lhs.true360.sw.epilog_crit_edge, label %land.lhs.true360.if.end367_crit_edge

land.lhs.true360.if.end367_crit_edge:             ; preds = %land.lhs.true360
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end367

land.lhs.true360.sw.epilog_crit_edge:             ; preds = %land.lhs.true360
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end367:                                        ; preds = %land.lhs.true360.if.end367_crit_edge, %land.lhs.true354.if.end367_crit_edge, %if.end348.if.end367_crit_edge, %land.lhs.true308.if.end367_crit_edge, %if.end297.if.end367_crit_edge
  %new_state.1 = phi i32 [ 8, %land.lhs.true308.if.end367_crit_edge ], [ 8, %if.end297.if.end367_crit_edge ], [ 3, %if.end348.if.end367_crit_edge ], [ 3, %land.lhs.true354.if.end367_crit_edge ], [ 3, %land.lhs.true360.if.end367_crit_edge ]
  %166 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load volatile i32, ptr %status.i, align 4
  %168 = and i32 %167, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %168)
  %tobool369.not = icmp eq i32 %168, 0
  br i1 %tobool369.not, label %if.end367.lor.lhs.false376_crit_edge, label %land.lhs.true370

if.end367.lor.lhs.false376_crit_edge:             ; preds = %if.end367
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false376

land.lhs.true370:                                 ; preds = %if.end367
  %last_index372 = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 1, i32 27
  %169 = ptrtoint ptr %last_index372 to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %last_index372, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %170)
  %cmp374 = icmp eq i8 %170, 0
  br i1 %cmp374, label %land.lhs.true370.land.lhs.true386_crit_edge, label %land.lhs.true370.lor.lhs.false376_crit_edge

land.lhs.true370.lor.lhs.false376_crit_edge:      ; preds = %land.lhs.true370
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false376

land.lhs.true370.land.lhs.true386_crit_edge:      ; preds = %land.lhs.true370
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true386

lor.lhs.false376:                                 ; preds = %land.lhs.true370.lor.lhs.false376_crit_edge, %if.end367.lor.lhs.false376_crit_edge
  %171 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load volatile i32, ptr %status.i, align 4
  %173 = and i32 %172, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %173)
  %tobool379.not = icmp eq i32 %173, 0
  br i1 %tobool379.not, label %land.lhs.true380, label %lor.lhs.false376.sw.epilog_crit_edge

lor.lhs.false376.sw.epilog_crit_edge:             ; preds = %lor.lhs.false376
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

land.lhs.true380:                                 ; preds = %lor.lhs.false376
  %last_index382 = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 1, i32 27
  %174 = ptrtoint ptr %last_index382 to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %last_index382, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %175)
  %cmp384 = icmp eq i8 %175, 3
  br i1 %cmp384, label %land.lhs.true380.land.lhs.true386_crit_edge, label %land.lhs.true380.sw.epilog_crit_edge

land.lhs.true380.sw.epilog_crit_edge:             ; preds = %land.lhs.true380
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

land.lhs.true380.land.lhs.true386_crit_edge:      ; preds = %land.lhs.true380
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true386

land.lhs.true386:                                 ; preds = %land.lhs.true380.land.lhs.true386_crit_edge, %land.lhs.true370.land.lhs.true386_crit_edge
  %ack_seq387 = getelementptr inbounds %struct.tcphdr, ptr %retval.0.i.i908, i32 0, i32 3
  %176 = ptrtoint ptr %ack_seq387 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %ack_seq387, align 4
  %last_end389 = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 1, i32 36
  %178 = ptrtoint ptr %last_end389 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %last_end389, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %177, i32 %179)
  %cmp390 = icmp eq i32 %177, %179
  br i1 %cmp390, label %land.lhs.true386.in_window_crit_edge, label %land.lhs.true386.sw.epilog_crit_edge

land.lhs.true386.sw.epilog_crit_edge:             ; preds = %land.lhs.true386
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

land.lhs.true386.in_window_crit_edge:             ; preds = %land.lhs.true386
  call void @__sanitizer_cov_trace_pc() #11
  br label %in_window

sw.epilog:                                        ; preds = %land.lhs.true386.sw.epilog_crit_edge, %land.lhs.true380.sw.epilog_crit_edge, %lor.lhs.false376.sw.epilog_crit_edge, %land.lhs.true360.sw.epilog_crit_edge, %nf_conntrack_tcp_established.exit870.sw.epilog_crit_edge, %if.end335.sw.epilog_crit_edge, %nf_conntrack_tcp_established.exit.sw.epilog_crit_edge, %land.lhs.true319.sw.epilog_crit_edge, %sw.bb290.sw.epilog_crit_edge, %land.lhs.true282, %sw.bb276.sw.epilog_crit_edge, %sw.bb270, %land.lhs.true256.sw.epilog_crit_edge, %land.lhs.true250.sw.epilog_crit_edge, %land.lhs.true244.sw.epilog_crit_edge, %land.lhs.true241.sw.epilog_crit_edge, %sw.bb238.sw.epilog_crit_edge, %if.then67, %sw.bb.sw.epilog_crit_edge, %get_conntrack_index.exit.sw.epilog_crit_edge
  %old_state.0 = phi i32 [ %conv, %get_conntrack_index.exit.sw.epilog_crit_edge ], [ %conv, %sw.bb290.sw.epilog_crit_edge ], [ %conv, %land.lhs.true386.sw.epilog_crit_edge ], [ %conv, %lor.lhs.false376.sw.epilog_crit_edge ], [ %conv, %land.lhs.true380.sw.epilog_crit_edge ], [ %conv, %sw.bb276.sw.epilog_crit_edge ], [ %conv, %sw.bb270 ], [ 6, %land.lhs.true256.sw.epilog_crit_edge ], [ 6, %land.lhs.true250.sw.epilog_crit_edge ], [ 6, %land.lhs.true244.sw.epilog_crit_edge ], [ 6, %land.lhs.true241.sw.epilog_crit_edge ], [ %conv, %sw.bb238.sw.epilog_crit_edge ], [ 1, %if.then67 ], [ %conv, %sw.bb.sw.epilog_crit_edge ], [ %conv, %land.lhs.true282 ], [ 3, %nf_conntrack_tcp_established.exit.sw.epilog_crit_edge ], [ 3, %nf_conntrack_tcp_established.exit870.sw.epilog_crit_edge ], [ 3, %land.lhs.true360.sw.epilog_crit_edge ], [ %conv, %land.lhs.true319.sw.epilog_crit_edge ], [ %conv, %if.end335.sw.epilog_crit_edge ]
  %new_state.2 = phi i32 [ %conv16, %get_conntrack_index.exit.sw.epilog_crit_edge ], [ 8, %sw.bb290.sw.epilog_crit_edge ], [ %new_state.1, %land.lhs.true386.sw.epilog_crit_edge ], [ %new_state.1, %lor.lhs.false376.sw.epilog_crit_edge ], [ %new_state.1, %land.lhs.true380.sw.epilog_crit_edge ], [ 2, %sw.bb276.sw.epilog_crit_edge ], [ 9, %sw.bb270 ], [ 7, %land.lhs.true256.sw.epilog_crit_edge ], [ 7, %land.lhs.true250.sw.epilog_crit_edge ], [ 7, %land.lhs.true244.sw.epilog_crit_edge ], [ 7, %land.lhs.true241.sw.epilog_crit_edge ], [ 7, %sw.bb238.sw.epilog_crit_edge ], [ 2, %if.then67 ], [ 1, %sw.bb.sw.epilog_crit_edge ], [ %spec.select826, %land.lhs.true282 ], [ 8, %nf_conntrack_tcp_established.exit.sw.epilog_crit_edge ], [ 8, %nf_conntrack_tcp_established.exit870.sw.epilog_crit_edge ], [ 8, %land.lhs.true360.sw.epilog_crit_edge ], [ 8, %land.lhs.true319.sw.epilog_crit_edge ], [ 8, %if.end335.sw.epilog_crit_edge ]
  %call394 = call fastcc zeroext i1 @tcp_in_window(ptr noundef %ct, i32 noundef %cond, i32 noundef %retval.0.i851, ptr noundef %skb, i32 noundef %dataoff, ptr noundef nonnull %retval.0.i.i908, ptr noundef %state)
  br i1 %call394, label %sw.epilog.in_window_crit_edge, label %if.then395

sw.epilog.in_window_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %in_window

if.then395:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #9
  br label %cleanup590

in_window:                                        ; preds = %sw.epilog.in_window_crit_edge, %land.lhs.true386.in_window_crit_edge, %if.end294.in_window_crit_edge
  %old_state.1 = phi i32 [ %old_state.0, %sw.epilog.in_window_crit_edge ], [ %conv, %if.end294.in_window_crit_edge ], [ %conv, %land.lhs.true386.in_window_crit_edge ]
  %new_state.3 = phi i32 [ %new_state.2, %sw.epilog.in_window_crit_edge ], [ 8, %if.end294.in_window_crit_edge ], [ %new_state.1, %land.lhs.true386.in_window_crit_edge ]
  %conv398 = trunc i32 %retval.0.i851 to i8
  %last_index400 = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 1, i32 27
  %180 = ptrtoint ptr %last_index400 to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 %conv398, ptr %last_index400, align 1
  %conv401 = zext i1 %cmp11 to i8
  %last_dir403 = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 1, i32 25
  %181 = ptrtoint ptr %last_dir403 to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 %conv401, ptr %last_dir403, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nf_conntrack_tcp_packet.__UNIQUE_ID_ddebug714, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nf_conntrack_tcp_packet, %if.then416)) #9
          to label %do.end419 [label %if.then416], !srcloc !125

if.then416:                                       ; preds = %in_window
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nf_conntrack_tcp_packet.__UNIQUE_ID_ddebug714, ptr noundef nonnull @.str.9) #9
  br label %do.end419

do.end419:                                        ; preds = %if.then416, %in_window
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nf_conntrack_tcp_packet.__UNIQUE_ID_ddebug715, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nf_conntrack_tcp_packet, %if.then432)) #9
          to label %do.end455 [label %if.then432], !srcloc !125

if.then432:                                       ; preds = %do.end419
  call void @__sanitizer_cov_trace_pc() #11
  %182 = ptrtoint ptr %doff.i to i32
  call void @__asan_load2_noabort(i32 %182)
  %bf.load = load i16, ptr %doff.i, align 4
  %183 = lshr i16 %bf.load, 1
  %.lobit = and i16 %183, 1
  %184 = zext i16 %.lobit to i32
  %185 = lshr i16 %bf.load, 4
  %.lobit820 = and i16 %185, 1
  %186 = zext i16 %.lobit820 to i32
  %bf.clear443 = and i16 %bf.load, 1
  %187 = zext i16 %bf.clear443 to i32
  %188 = lshr i16 %bf.load, 2
  %.lobit821 = and i16 %188, 1
  %189 = zext i16 %.lobit821 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nf_conntrack_tcp_packet.__UNIQUE_ID_ddebug715, ptr noundef nonnull @.str.10, i32 noundef %184, i32 noundef %186, i32 noundef %187, i32 noundef %189, i32 noundef %old_state.1, i32 noundef %new_state.3) #9
  br label %do.end455

do.end455:                                        ; preds = %if.then432, %do.end419
  %conv456 = trunc i32 %new_state.3 to i8
  %190 = ptrtoint ptr %state10 to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 %conv456, ptr %state10, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %old_state.1, i32 %new_state.3)
  %cmp459.not = icmp eq i32 %old_state.1, %new_state.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %new_state.3)
  %cmp462 = icmp ne i32 %new_state.3, 4
  %191 = or i1 %cmp459.not, %cmp462
  br i1 %191, label %do.end455.if.end472_crit_edge, label %if.then464

do.end455.if.end472_crit_edge:                    ; preds = %do.end455
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end472

if.then464:                                       ; preds = %do.end455
  call void @__sanitizer_cov_trace_pc() #11
  %flags468 = getelementptr [2 x %struct.ip_ct_tcp_state], ptr %proto, i32 0, i32 %cond, i32 5
  %192 = ptrtoint ptr %flags468 to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %flags468, align 1
  %194 = or i8 %193, 4
  store i8 %194, ptr %flags468, align 1
  br label %if.end472

if.end472:                                        ; preds = %if.then464, %do.end455.if.end472_crit_edge
  %ext.i.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 13
  %195 = ptrtoint ptr %ext.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %ext.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %196, null
  br i1 %tobool.not.i.i.i.i, label %if.end472.nf_ct_timeout_lookup.exit_crit_edge, label %nf_ct_ext_exist.exit.i.i.i

if.end472.nf_ct_timeout_lookup.exit_crit_edge:    ; preds = %if.end472
  call void @__sanitizer_cov_trace_pc() #11
  br label %nf_ct_timeout_lookup.exit

nf_ct_ext_exist.exit.i.i.i:                       ; preds = %if.end472
  %arrayidx.i.i.i.i.i = getelementptr [10 x i8], ptr %196, i32 0, i32 6
  %197 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %arrayidx.i.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %198)
  %tobool.i.i.not.i.i.i = icmp eq i8 %198, 0
  br i1 %tobool.i.i.not.i.i.i, label %nf_ct_ext_exist.exit.i.i.i.nf_ct_timeout_lookup.exit_crit_edge, label %nf_ct_timeout_find.exit.i

nf_ct_ext_exist.exit.i.i.i.nf_ct_timeout_lookup.exit_crit_edge: ; preds = %nf_ct_ext_exist.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nf_ct_timeout_lookup.exit

nf_ct_timeout_find.exit.i:                        ; preds = %nf_ct_ext_exist.exit.i.i.i
  %conv.i.i.i = zext i8 %198 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %196, i32 %conv.i.i.i
  %tobool.not.i871 = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool.not.i871, label %nf_ct_timeout_find.exit.i.nf_ct_timeout_lookup.exit_crit_edge, label %if.then.i

nf_ct_timeout_find.exit.i.nf_ct_timeout_lookup.exit_crit_edge: ; preds = %nf_ct_timeout_find.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nf_ct_timeout_lookup.exit

if.then.i:                                        ; preds = %nf_ct_timeout_find.exit.i
  %199 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load volatile ptr, ptr %add.ptr.i.i.i, align 4
  %call.i.i872 = call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i872)
  %tobool.not.i.i = icmp eq i32 %call.i.i872, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %if.then.i.nf_ct_timeout_data.exit.i_crit_edge

if.then.i.nf_ct_timeout_data.exit.i_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nf_ct_timeout_data.exit.i

land.lhs.true.i.i:                                ; preds = %if.then.i
  %call3.i.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.nf_ct_timeout_data.exit.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i.i.nf_ct_timeout_data.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nf_ct_timeout_data.exit.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i.i
  %.b13.i.i = load i1, ptr @nf_ct_timeout_data.__warned, align 1
  br i1 %.b13.i.i, label %land.lhs.true5.i.i.nf_ct_timeout_data.exit.i_crit_edge, label %if.then.i.i873

land.lhs.true5.i.i.nf_ct_timeout_data.exit.i_crit_edge: ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nf_ct_timeout_data.exit.i

if.then.i.i873:                                   ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nf_ct_timeout_data.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.40, i32 noundef 38, ptr noundef nonnull @.str.41) #9
  br label %nf_ct_timeout_data.exit.i

nf_ct_timeout_data.exit.i:                        ; preds = %if.then.i.i873, %land.lhs.true5.i.i.nf_ct_timeout_data.exit.i_crit_edge, %land.lhs.true.i.i.nf_ct_timeout_data.exit.i_crit_edge, %if.then.i.nf_ct_timeout_data.exit.i_crit_edge
  %cmp.i.i = icmp eq ptr %200, null
  %data.i.i = getelementptr inbounds %struct.nf_ct_timeout, ptr %200, i32 0, i32 2
  %retval.0.i.i874 = select i1 %cmp.i.i, ptr null, ptr %data.i.i
  br label %nf_ct_timeout_lookup.exit

nf_ct_timeout_lookup.exit:                        ; preds = %nf_ct_timeout_data.exit.i, %nf_ct_timeout_find.exit.i.nf_ct_timeout_lookup.exit_crit_edge, %nf_ct_ext_exist.exit.i.i.i.nf_ct_timeout_lookup.exit_crit_edge, %if.end472.nf_ct_timeout_lookup.exit_crit_edge
  %timeouts.0.i = phi ptr [ %retval.0.i.i874, %nf_ct_timeout_data.exit.i ], [ null, %nf_ct_timeout_find.exit.i.nf_ct_timeout_lookup.exit_crit_edge ], [ null, %nf_ct_ext_exist.exit.i.i.i.nf_ct_timeout_lookup.exit_crit_edge ], [ null, %if.end472.nf_ct_timeout_lookup.exit_crit_edge ]
  %tobool474.not = icmp eq ptr %timeouts.0.i, null
  %spec.select828 = select i1 %tobool474.not, ptr %tcp.i, ptr %timeouts.0.i
  %retrans = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 1, i32 26
  %201 = ptrtoint ptr %retrans to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %retrans, align 2
  %tcp_max_retrans = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 40, i32 10, i32 1, i32 3
  %203 = ptrtoint ptr %tcp_max_retrans to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %tcp_max_retrans, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %202, i8 %204)
  %cmp481.not = icmp ult i8 %202, %204
  br i1 %cmp481.not, label %nf_ct_timeout_lookup.exit.if.else_crit_edge, label %land.lhs.true483

nf_ct_timeout_lookup.exit.if.else_crit_edge:      ; preds = %nf_ct_timeout_lookup.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true483:                                 ; preds = %nf_ct_timeout_lookup.exit
  %arrayidx484 = getelementptr i32, ptr %spec.select828, i32 %new_state.3
  %205 = ptrtoint ptr %arrayidx484 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %arrayidx484, align 4
  %arrayidx485 = getelementptr i32, ptr %spec.select828, i32 12
  %207 = ptrtoint ptr %arrayidx485 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %arrayidx485, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %206, i32 %208)
  %cmp486 = icmp ugt i32 %206, %208
  br i1 %cmp486, label %land.lhs.true483.if.end539_crit_edge, label %land.lhs.true483.if.else_crit_edge

land.lhs.true483.if.else_crit_edge:               ; preds = %land.lhs.true483
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true483.if.end539_crit_edge:             ; preds = %land.lhs.true483
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end539

if.else:                                          ; preds = %land.lhs.true483.if.else_crit_edge, %nf_ct_timeout_lookup.exit.if.else_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %retval.0.i851)
  %cmp490 = icmp eq i32 %retval.0.i851, 4
  br i1 %cmp490, label %if.else.if.end539.sink.split_crit_edge, label %if.else500, !prof !124

if.else.if.end539.sink.split_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end539.sink.split

if.else500:                                       ; preds = %if.else
  %flags504 = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 1, i32 1
  %209 = ptrtoint ptr %flags504 to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %flags504, align 1
  %flags509 = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 1, i32 21
  %211 = ptrtoint ptr %flags509 to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %flags509, align 1
  %or511819 = or i8 %212, %210
  %213 = and i8 %or511819, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %213)
  %tobool513.not = icmp eq i8 %213, 0
  br i1 %tobool513.not, label %if.else500.if.else521_crit_edge, label %land.lhs.true514

if.else500.if.else521_crit_edge:                  ; preds = %if.else500
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else521

land.lhs.true514:                                 ; preds = %if.else500
  %arrayidx515 = getelementptr i32, ptr %spec.select828, i32 %new_state.3
  %214 = ptrtoint ptr %arrayidx515 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %arrayidx515, align 4
  %arrayidx516 = getelementptr i32, ptr %spec.select828, i32 13
  %216 = ptrtoint ptr %arrayidx516 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %arrayidx516, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %215, i32 %217)
  %cmp517 = icmp ugt i32 %215, %217
  br i1 %cmp517, label %land.lhs.true514.if.end539_crit_edge, label %land.lhs.true514.if.else521_crit_edge

land.lhs.true514.if.else521_crit_edge:            ; preds = %land.lhs.true514
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else521

land.lhs.true514.if.end539_crit_edge:             ; preds = %land.lhs.true514
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end539

if.else521:                                       ; preds = %land.lhs.true514.if.else521_crit_edge, %if.else500.if.else521_crit_edge
  %last_win523 = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 1, i32 40
  %218 = ptrtoint ptr %last_win523 to i32
  call void @__asan_load2_noabort(i32 %218)
  %219 = load i16, ptr %last_win523, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %219)
  %cmp525 = icmp eq i16 %219, 0
  br i1 %cmp525, label %land.lhs.true527, label %if.else521.if.end539.sink.split_crit_edge

if.else521.if.end539.sink.split_crit_edge:        ; preds = %if.else521
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end539.sink.split

land.lhs.true527:                                 ; preds = %if.else521
  %arrayidx528 = getelementptr i32, ptr %spec.select828, i32 %new_state.3
  %220 = ptrtoint ptr %arrayidx528 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %arrayidx528, align 4
  %arrayidx529 = getelementptr i32, ptr %spec.select828, i32 12
  %222 = ptrtoint ptr %arrayidx529 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %arrayidx529, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %221, i32 %223)
  %cmp530 = icmp ugt i32 %221, %223
  br i1 %cmp530, label %land.lhs.true527.if.end539_crit_edge, label %land.lhs.true527.if.end539.sink.split_crit_edge

land.lhs.true527.if.end539.sink.split_crit_edge:  ; preds = %land.lhs.true527
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end539.sink.split

land.lhs.true527.if.end539_crit_edge:             ; preds = %land.lhs.true527
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end539

if.end539.sink.split:                             ; preds = %land.lhs.true527.if.end539.sink.split_crit_edge, %if.else521.if.end539.sink.split_crit_edge, %if.else.if.end539.sink.split_crit_edge
  %.sink = phi i32 [ 8, %if.else.if.end539.sink.split_crit_edge ], [ %new_state.3, %land.lhs.true527.if.end539.sink.split_crit_edge ], [ %new_state.3, %if.else521.if.end539.sink.split_crit_edge ]
  %arrayidx499 = getelementptr i32, ptr %spec.select828, i32 %.sink
  %224 = ptrtoint ptr %arrayidx499 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %arrayidx499, align 4
  br label %if.end539

if.end539:                                        ; preds = %if.end539.sink.split, %land.lhs.true527.if.end539_crit_edge, %land.lhs.true514.if.end539_crit_edge, %land.lhs.true483.if.end539_crit_edge
  %timeout.0 = phi i32 [ %208, %land.lhs.true483.if.end539_crit_edge ], [ %217, %land.lhs.true514.if.end539_crit_edge ], [ %223, %land.lhs.true527.if.end539_crit_edge ], [ %225, %if.end539.sink.split ]
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #9
  br i1 %cmp459.not, label %if.end539.if.end544_crit_edge, label %if.then543

if.end539.if.end544_crit_edge:                    ; preds = %if.end539
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end544

if.then543:                                       ; preds = %if.end539
  %226 = ptrtoint ptr %ct_net.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %ct_net.i, align 4
  %nf_conntrack_event_cb.i = getelementptr inbounds %struct.net, ptr %227, i32 0, i32 40, i32 9
  %228 = ptrtoint ptr %nf_conntrack_event_cb.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load volatile ptr, ptr %nf_conntrack_event_cb.i, align 16
  %tobool.not.i876 = icmp eq ptr %229, null
  br i1 %tobool.not.i876, label %if.then543.if.end544_crit_edge, label %if.end.i879

if.then543.if.end544_crit_edge:                   ; preds = %if.then543
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end544

if.end.i879:                                      ; preds = %if.then543
  %230 = ptrtoint ptr %ext.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %ext.i.i.i.i, align 8
  %tobool.not.i.i.i.i878 = icmp eq ptr %231, null
  br i1 %tobool.not.i.i.i.i878, label %if.end.i879.if.end544_crit_edge, label %nf_ct_ext_exist.exit.i.i.i882

if.end.i879.if.end544_crit_edge:                  ; preds = %if.end.i879
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end544

nf_ct_ext_exist.exit.i.i.i882:                    ; preds = %if.end.i879
  %arrayidx.i.i.i.i.i880 = getelementptr [10 x i8], ptr %231, i32 0, i32 4
  %232 = ptrtoint ptr %arrayidx.i.i.i.i.i880 to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %arrayidx.i.i.i.i.i880, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %233)
  %tobool.i.i.not.i.i.i881 = icmp eq i8 %233, 0
  br i1 %tobool.i.i.not.i.i.i881, label %nf_ct_ext_exist.exit.i.i.i882.if.end544_crit_edge, label %nf_ct_ecache_find.exit.i

nf_ct_ext_exist.exit.i.i.i882.if.end544_crit_edge: ; preds = %nf_ct_ext_exist.exit.i.i.i882
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end544

nf_ct_ecache_find.exit.i:                         ; preds = %nf_ct_ext_exist.exit.i.i.i882
  %conv.i.i.i883 = zext i8 %233 to i32
  %add.ptr.i.i.i884 = getelementptr i8, ptr %231, i32 %conv.i.i.i883
  %cmp.i885 = icmp eq ptr %add.ptr.i.i.i884, null
  br i1 %cmp.i885, label %nf_ct_ecache_find.exit.i.if.end544_crit_edge, label %if.end5.i

nf_ct_ecache_find.exit.i.if.end544_crit_edge:     ; preds = %nf_ct_ecache_find.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end544

if.end5.i:                                        ; preds = %nf_ct_ecache_find.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @_set_bit(i32 noundef 5, ptr noundef nonnull %add.ptr.i.i.i884) #9
  br label %if.end544

if.end544:                                        ; preds = %if.end5.i, %nf_ct_ecache_find.exit.i.if.end544_crit_edge, %nf_ct_ext_exist.exit.i.i.i882.if.end544_crit_edge, %if.end.i879.if.end544_crit_edge, %if.then543.if.end544_crit_edge, %if.end539.if.end544_crit_edge
  %234 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load volatile i32, ptr %status.i, align 4
  %236 = and i32 %235, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %236)
  %tobool547.not = icmp eq i32 %236, 0
  br i1 %tobool547.not, label %if.then548, label %if.else573

if.then548:                                       ; preds = %if.end544
  %237 = ptrtoint ptr %doff.i to i32
  call void @__asan_load2_noabort(i32 %237)
  %bf.load550 = load i16, ptr %doff.i, align 4
  %238 = and i16 %bf.load550, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %238)
  %tobool553.not = icmp eq i16 %238, 0
  br i1 %tobool553.not, label %if.end556, label %if.then554

if.then554:                                       ; preds = %if.then548
  call void @__sanitizer_cov_trace_pc() #11
  %call555 = call zeroext i1 @nf_ct_kill_acct(ptr noundef %ct, i32 noundef %ctinfo, ptr noundef %skb) #9
  br label %cleanup590

if.end556:                                        ; preds = %if.then548
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i851)
  %cmp557 = icmp eq i32 %retval.0.i851, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %old_state.1)
  %cmp560 = icmp eq i32 %old_state.1, 1
  %or.cond829 = select i1 %cmp557, i1 %cmp560, i1 false
  br i1 %or.cond829, label %if.end556.cleanup590_crit_edge, label %if.end563

if.end556.cleanup590_crit_edge:                   ; preds = %if.end556
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup590

if.end563:                                        ; preds = %if.end556
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %new_state.3)
  %cmp564 = icmp eq i32 %new_state.3, 3
  br i1 %cmp564, label %land.lhs.true566, label %if.end563.if.end589_crit_edge

if.end563.if.end589_crit_edge:                    ; preds = %if.end563
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end589

land.lhs.true566:                                 ; preds = %if.end563
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx567 = getelementptr i32, ptr %spec.select828, i32 13
  %239 = ptrtoint ptr %arrayidx567 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %arrayidx567, align 4
  %241 = call i32 @llvm.umin.i32(i32 %timeout.0, i32 %240)
  br label %if.end589

if.else573:                                       ; preds = %if.end544
  %242 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load volatile i32, ptr %status.i, align 4
  %244 = and i32 %243, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %244)
  %tobool576.not = icmp eq i32 %244, 0
  %245 = and i32 %old_state.1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %245)
  %switch = icmp eq i32 %245, 2
  %or.cond831 = select i1 %tobool576.not, i1 %switch, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %new_state.3)
  %cmp584 = icmp eq i32 %new_state.3, 3
  %or.cond832 = select i1 %or.cond831, i1 %cmp584, i1 false
  br i1 %or.cond832, label %if.then586, label %if.else573.if.end589_crit_edge

if.else573.if.end589_crit_edge:                   ; preds = %if.else573
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end589

if.then586:                                       ; preds = %if.else573
  call void @_set_bit(i32 noundef 2, ptr noundef %status.i) #9
  %246 = ptrtoint ptr %ct_net.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %ct_net.i, align 4
  %nf_conntrack_event_cb.i887 = getelementptr inbounds %struct.net, ptr %247, i32 0, i32 40, i32 9
  %248 = ptrtoint ptr %nf_conntrack_event_cb.i887 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load volatile ptr, ptr %nf_conntrack_event_cb.i887, align 16
  %tobool.not.i888 = icmp eq ptr %249, null
  br i1 %tobool.not.i888, label %if.then586.if.end589_crit_edge, label %if.end.i891

if.then586.if.end589_crit_edge:                   ; preds = %if.then586
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end589

if.end.i891:                                      ; preds = %if.then586
  %250 = ptrtoint ptr %ext.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %ext.i.i.i.i, align 8
  %tobool.not.i.i.i.i890 = icmp eq ptr %251, null
  br i1 %tobool.not.i.i.i.i890, label %if.end.i891.if.end589_crit_edge, label %nf_ct_ext_exist.exit.i.i.i894

if.end.i891.if.end589_crit_edge:                  ; preds = %if.end.i891
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end589

nf_ct_ext_exist.exit.i.i.i894:                    ; preds = %if.end.i891
  %arrayidx.i.i.i.i.i892 = getelementptr [10 x i8], ptr %251, i32 0, i32 4
  %252 = ptrtoint ptr %arrayidx.i.i.i.i.i892 to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %arrayidx.i.i.i.i.i892, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %253)
  %tobool.i.i.not.i.i.i893 = icmp eq i8 %253, 0
  br i1 %tobool.i.i.not.i.i.i893, label %nf_ct_ext_exist.exit.i.i.i894.if.end589_crit_edge, label %nf_ct_ecache_find.exit.i898

nf_ct_ext_exist.exit.i.i.i894.if.end589_crit_edge: ; preds = %nf_ct_ext_exist.exit.i.i.i894
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end589

nf_ct_ecache_find.exit.i898:                      ; preds = %nf_ct_ext_exist.exit.i.i.i894
  %conv.i.i.i895 = zext i8 %253 to i32
  %add.ptr.i.i.i896 = getelementptr i8, ptr %251, i32 %conv.i.i.i895
  %cmp.i897 = icmp eq ptr %add.ptr.i.i.i896, null
  br i1 %cmp.i897, label %nf_ct_ecache_find.exit.i898.if.end589_crit_edge, label %if.end5.i899

nf_ct_ecache_find.exit.i898.if.end589_crit_edge:  ; preds = %nf_ct_ecache_find.exit.i898
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end589

if.end5.i899:                                     ; preds = %nf_ct_ecache_find.exit.i898
  call void @__sanitizer_cov_trace_pc() #11
  call void @_set_bit(i32 noundef 4, ptr noundef nonnull %add.ptr.i.i.i896) #9
  br label %if.end589

if.end589:                                        ; preds = %if.end5.i899, %nf_ct_ecache_find.exit.i898.if.end589_crit_edge, %nf_ct_ext_exist.exit.i.i.i894.if.end589_crit_edge, %if.end.i891.if.end589_crit_edge, %if.then586.if.end589_crit_edge, %if.else573.if.end589_crit_edge, %land.lhs.true566, %if.end563.if.end589_crit_edge
  %timeout.1 = phi i32 [ %timeout.0, %if.else573.if.end589_crit_edge ], [ %timeout.0, %if.end563.if.end589_crit_edge ], [ %241, %land.lhs.true566 ], [ %timeout.0, %if.then586.if.end589_crit_edge ], [ %timeout.0, %if.end.i891.if.end589_crit_edge ], [ %timeout.0, %nf_ct_ext_exist.exit.i.i.i894.if.end589_crit_edge ], [ %timeout.0, %nf_ct_ecache_find.exit.i898.if.end589_crit_edge ], [ %timeout.0, %if.end5.i899 ]
  call void @__nf_ct_refresh_acct(ptr noundef %ct, i32 noundef %ctinfo, ptr noundef %skb, i32 noundef %timeout.1, i1 noundef zeroext true) #9
  br label %cleanup590

cleanup590:                                       ; preds = %if.end589, %if.end556.cleanup590_crit_edge, %if.then554, %if.then395, %cleanup.thread914, %if.then262, %do.end236, %do.end, %if.end179, %if.then42, %land.lhs.true.cleanup590_crit_edge, %tcp_error.exit.thread, %skb_header_pointer.exit.cleanup590_crit_edge, %lor.lhs.false.i.i.cleanup590_crit_edge, %if.end.i.i.cleanup590_crit_edge
  %retval.1 = phi i32 [ 1, %if.end589 ], [ 1, %if.then554 ], [ -1, %if.then395 ], [ 1, %if.then262 ], [ 1, %do.end ], [ -1, %do.end236 ], [ 1, %if.end179 ], [ -1, %skb_header_pointer.exit.cleanup590_crit_edge ], [ -1, %land.lhs.true.cleanup590_crit_edge ], [ %., %if.then42 ], [ 1, %if.end556.cleanup590_crit_edge ], [ -1, %tcp_error.exit.thread ], [ -1, %cleanup.thread914 ], [ -1, %if.end.i.i.cleanup590_crit_edge ], [ -1, %lor.lhs.false.i.i.cleanup590_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_tcph) #9
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @tcp_new(ptr nocapture noundef %ct, ptr noundef %skb, i32 noundef %dataoff, ptr nocapture noundef readonly %th) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ct_net.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 7
  %0 = ptrtoint ptr %ct_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ct_net.i, align 4
  %proto = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14
  %arrayidx4 = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 1, i32 4
  %rst.i = getelementptr inbounds %struct.tcphdr, ptr %th, i32 0, i32 4
  %2 = ptrtoint ptr %rst.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %rst.i, align 4
  %3 = and i16 %bf.load.i, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not.i = icmp eq i16 %3, 0
  br i1 %tobool.not.i, label %if.else.i, label %entry.get_conntrack_index.exit_crit_edge

entry.get_conntrack_index.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_conntrack_index.exit

if.else.i:                                        ; preds = %entry
  %4 = and i16 %bf.load.i, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool4.not.i = icmp eq i16 %4, 0
  br i1 %tobool4.not.i, label %if.else10.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %5 = lshr i16 %bf.load.i, 4
  %.lobit.i = and i16 %5, 1
  %6 = zext i16 %.lobit.i to i32
  br label %get_conntrack_index.exit

if.else10.i:                                      ; preds = %if.else.i
  %bf.clear12.i = and i16 %bf.load.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.clear12.i)
  %tobool13.not.i = icmp eq i16 %bf.clear12.i, 0
  br i1 %tobool13.not.i, label %if.else15.i, label %if.else10.i.get_conntrack_index.exit_crit_edge

if.else10.i.get_conntrack_index.exit_crit_edge:   ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_conntrack_index.exit

if.else15.i:                                      ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_pc() #11
  %7 = and i16 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool20.not.i = icmp eq i16 %7, 0
  %..i = select i1 %tobool20.not.i, i32 5, i32 3
  br label %get_conntrack_index.exit

get_conntrack_index.exit:                         ; preds = %if.else15.i, %if.else10.i.get_conntrack_index.exit_crit_edge, %if.then5.i, %entry.get_conntrack_index.exit_crit_edge
  %retval.0.i174 = phi i32 [ %6, %if.then5.i ], [ 4, %entry.get_conntrack_index.exit_crit_edge ], [ 2, %if.else10.i.get_conntrack_index.exit_crit_edge ], [ %..i, %if.else15.i ]
  %arrayidx6 = getelementptr [6 x [10 x i8]], ptr @tcp_conntracks, i32 0, i32 %retval.0.i174
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %9)
  %cmp = icmp ugt i8 %9, 9
  br i1 %cmp, label %do.body, label %if.end13

do.body:                                          ; preds = %get_conntrack_index.exit
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcp_new.__UNIQUE_ID_ddebug710, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcp_new, %if.then12)) #9
          to label %cleanup [label %if.then12], !srcloc !125

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcp_new.__UNIQUE_ID_ddebug710, ptr noundef nonnull @.str.16) #9
  br label %cleanup

if.end13:                                         ; preds = %get_conntrack_index.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp14 = icmp eq i8 %9, 1
  br i1 %cmp14, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %10 = call ptr @memset(ptr %proto, i32 0, i32 60)
  %seq = getelementptr inbounds %struct.tcphdr, ptr %th, i32 0, i32 2
  %11 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %seq, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %13 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len, align 4
  %15 = ptrtoint ptr %rst.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load.i175 = load i16, ptr %rst.i, align 4
  %16 = lshr i16 %bf.load.i175, 10
  %17 = and i16 %16, 60
  %mul.i = zext i16 %17 to i32
  %18 = lshr i16 %bf.load.i175, 1
  %.lobit.i176 = and i16 %18, 1
  %19 = zext i16 %.lobit.i176 to i32
  %bf.clear7.i = and i16 %bf.load.i175, 1
  %20 = zext i16 %bf.clear7.i to i32
  %.neg188 = sub i32 %12, %dataoff
  %.neg.i = add i32 %.neg188, %14
  %21 = add i32 %.neg.i, %20
  %add5.i = sub i32 %21, %mul.i
  %add11.i = add i32 %add5.i, %19
  %22 = ptrtoint ptr %proto to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add11.i, ptr %proto, align 8
  %window = getelementptr inbounds %struct.tcphdr, ptr %th, i32 0, i32 5
  %23 = ptrtoint ptr %window to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %window, align 2
  %td_maxwin = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %cmp30 = icmp eq i16 %24, 0
  %narrow187 = select i1 %cmp30, i16 1, i16 %24
  %spec.select = zext i16 %narrow187 to i32
  %25 = ptrtoint ptr %td_maxwin to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %spec.select, ptr %td_maxwin, align 8
  %td_maxend = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 0, i32 3
  %26 = ptrtoint ptr %td_maxend to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add11.i, ptr %td_maxend, align 4
  tail call fastcc void @tcp_options(ptr noundef %skb, i32 noundef %dataoff, ptr noundef %th, ptr noundef %proto)
  br label %if.end99

if.else:                                          ; preds = %if.end13
  %tcp_loose = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 40, i32 10, i32 1, i32 1
  %27 = ptrtoint ptr %tcp_loose to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %tcp_loose, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp49 = icmp eq i8 %28, 0
  br i1 %cmp49, label %if.else.cleanup_crit_edge, label %if.else52

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else52:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %29 = call ptr @memset(ptr %proto, i32 0, i32 60)
  %seq54 = getelementptr inbounds %struct.tcphdr, ptr %th, i32 0, i32 2
  %30 = ptrtoint ptr %seq54 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %seq54, align 4
  %len55 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %32 = ptrtoint ptr %len55 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len55, align 4
  %34 = ptrtoint ptr %rst.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %bf.load.i178 = load i16, ptr %rst.i, align 4
  %35 = lshr i16 %bf.load.i178, 10
  %36 = and i16 %35, 60
  %mul.i179 = zext i16 %36 to i32
  %37 = lshr i16 %bf.load.i178, 1
  %.lobit.i180 = and i16 %37, 1
  %38 = zext i16 %.lobit.i180 to i32
  %bf.clear7.i181 = and i16 %bf.load.i178, 1
  %39 = zext i16 %bf.clear7.i181 to i32
  %.neg = sub i32 %31, %dataoff
  %.neg.i182 = add i32 %.neg, %33
  %40 = add i32 %.neg.i182, %39
  %add5.i183 = sub i32 %40, %mul.i179
  %add11.i184 = add i32 %add5.i183, %38
  %41 = ptrtoint ptr %proto to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %add11.i184, ptr %proto, align 8
  %window61 = getelementptr inbounds %struct.tcphdr, ptr %th, i32 0, i32 5
  %42 = ptrtoint ptr %window61 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %window61, align 2
  %td_maxwin66 = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %cmp71 = icmp eq i16 %43, 0
  %narrow = select i1 %cmp71, i16 1, i16 %43
  %spec.select170 = zext i16 %narrow to i32
  %44 = ptrtoint ptr %td_maxwin66 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %spec.select170, ptr %td_maxwin66, align 8
  %add = add i32 %add11.i184, %spec.select170
  %td_maxend90 = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 0, i32 3
  %45 = ptrtoint ptr %td_maxend90 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %add, ptr %td_maxend90, align 4
  %flags = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 1, i32 21
  %46 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 10, ptr %flags, align 1
  %flags97 = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 1, i32 1
  %47 = ptrtoint ptr %flags97 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 10, ptr %flags97, align 1
  br label %if.end99

if.end99:                                         ; preds = %if.else52, %if.then16
  %last_index = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 1, i32 27
  %48 = ptrtoint ptr %last_index to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 5, ptr %last_index, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcp_new.__UNIQUE_ID_ddebug711, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcp_new, %if.then113)) #9
          to label %cleanup [label %if.then113], !srcloc !125

if.then113:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %proto, align 4
  %td_maxend115 = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 0, i32 3
  %51 = ptrtoint ptr %td_maxend115 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %td_maxend115, align 4
  %td_maxwin116 = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 0, i32 4
  %53 = ptrtoint ptr %td_maxwin116 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %td_maxwin116, align 4
  %td_scale = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 1
  %55 = ptrtoint ptr %td_scale to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %td_scale, align 4
  %conv117 = zext i8 %56 to i32
  %57 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx4, align 4
  %td_maxend119 = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 1, i32 8
  %59 = ptrtoint ptr %td_maxend119 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %td_maxend119, align 4
  %td_maxwin120 = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 1, i32 12
  %61 = ptrtoint ptr %td_maxwin120 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %td_maxwin120, align 4
  %td_scale121 = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 1, i32 20
  %63 = ptrtoint ptr %td_scale121 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %td_scale121, align 4
  %conv122 = zext i8 %64 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcp_new.__UNIQUE_ID_ddebug711, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15, i32 noundef %50, i32 noundef %52, i32 noundef %54, i32 noundef %conv117, i32 noundef %58, i32 noundef %60, i32 noundef %62, i32 noundef %conv122) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then113, %if.end99, %if.else.cleanup_crit_edge, %if.then12, %do.body
  %retval.0 = phi i1 [ false, %if.then12 ], [ false, %if.else.cleanup_crit_edge ], [ true, %if.then113 ], [ false, %do.body ], [ true, %if.end99 ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @get_conntrack_index(ptr nocapture noundef readonly %tcph) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rst = getelementptr inbounds %struct.tcphdr, ptr %tcph, i32 0, i32 4
  %0 = ptrtoint ptr %rst to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %rst, align 4
  %1 = and i16 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %if.else, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.else:                                          ; preds = %entry
  %2 = and i16 %bf.load, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool4.not = icmp eq i16 %2, 0
  br i1 %tobool4.not, label %if.else10, label %if.then5

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %3 = lshr i16 %bf.load, 4
  %.lobit = and i16 %3, 1
  %4 = zext i16 %.lobit to i32
  br label %return

if.else10:                                        ; preds = %if.else
  %bf.clear12 = and i16 %bf.load, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.clear12)
  %tobool13.not = icmp eq i16 %bf.clear12, 0
  br i1 %tobool13.not, label %if.else15, label %if.else10.return_crit_edge

if.else10.return_crit_edge:                       ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.else15:                                        ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #11
  %5 = and i16 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool20.not = icmp eq i16 %5, 0
  %. = select i1 %tobool20.not, i32 5, i32 3
  br label %return

return:                                           ; preds = %if.else15, %if.else10.return_crit_edge, %if.then5, %entry.return_crit_edge
  %retval.0 = phi i32 [ %4, %if.then5 ], [ 4, %entry.return_crit_edge ], [ 2, %if.else10.return_crit_edge ], [ %., %if.else15 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tcp_options(ptr noundef %skb, i32 noundef %dataoff, ptr nocapture noundef readonly %tcph, ptr nocapture noundef %state) unnamed_addr #0 align 64 {
entry:
  %buff = alloca [40 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %buff) #9
  %0 = call ptr @memset(ptr %buff, i32 255, i32 40)
  %doff = getelementptr inbounds %struct.tcphdr, ptr %tcph, i32 0, i32 4
  %1 = ptrtoint ptr %doff to i32
  call void @__asan_load2_noabort(i32 %1)
  %bf.load = load i16, ptr %doff, align 4
  %2 = lshr i16 %bf.load, 10
  %3 = and i16 %2, 60
  %mul = zext i16 %3 to i32
  %sub = add nsw i32 %mul, -20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %entry.cleanup52_crit_edge, label %if.end

entry.cleanup52_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup52

if.end:                                           ; preds = %entry
  %add = add i32 %dataoff, 20
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %6 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_len.i.i, align 8
  %8 = add i32 %5, -20
  %9 = add i32 %7, %dataoff
  %sub.i4.i = sub i32 %8, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i4.i, i32 %sub)
  %cmp.not.i.i = icmp slt i32 %sub.i4.i, %sub
  br i1 %cmp.not.i.i, label %if.end.i.i, label %skb_header_pointer.exit, !prof !124

if.end.i.i:                                       ; preds = %if.end
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.cleanup52_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.cleanup52_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup52

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %add, ptr noundef nonnull %buff, i32 noundef %sub) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.cleanup52_crit_edge, label %lor.lhs.false.i.i.if.end3_crit_edge

lor.lhs.false.i.i.if.end3_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

lor.lhs.false.i.i.cleanup52_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup52

skb_header_pointer.exit:                          ; preds = %if.end
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 %add
  %tobool1.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool1.not, label %skb_header_pointer.exit.cleanup52_crit_edge, label %skb_header_pointer.exit.if.end3_crit_edge

skb_header_pointer.exit.if.end3_crit_edge:        ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

skb_header_pointer.exit.cleanup52_crit_edge:      ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup52

if.end3:                                          ; preds = %skb_header_pointer.exit.if.end3_crit_edge, %lor.lhs.false.i.i.if.end3_crit_edge
  %retval.0.i.i87 = phi ptr [ %add.ptr.i.i, %skb_header_pointer.exit.if.end3_crit_edge ], [ %buff, %lor.lhs.false.i.i.if.end3_crit_edge ]
  %flags = getelementptr inbounds %struct.ip_ct_tcp_state, ptr %state, i32 0, i32 5
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %flags, align 1
  %td_scale = getelementptr inbounds %struct.ip_ct_tcp_state, ptr %state, i32 0, i32 4
  %13 = ptrtoint ptr %td_scale to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %td_scale, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %3)
  %cmp92 = icmp ugt i16 %3, 20
  br i1 %cmp92, label %if.end3.while.body_crit_edge, label %if.end3.cleanup52_crit_edge

if.end3.cleanup52_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup52

if.end3.while.body_crit_edge:                     ; preds = %if.end3
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %if.end3.while.body_crit_edge
  %length.094 = phi i32 [ %length.1, %cleanup.while.body_crit_edge ], [ %sub, %if.end3.while.body_crit_edge ]
  %ptr.093 = phi ptr [ %ptr.1, %cleanup.while.body_crit_edge ], [ %retval.0.i.i87, %if.end3.while.body_crit_edge ]
  %incdec.ptr = getelementptr i8, ptr %ptr.093, i32 1
  %14 = ptrtoint ptr %ptr.093 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ptr.093, align 1
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.43)
  switch i8 %15, label %sw.default [
    i8 0, label %while.body.cleanup52_crit_edge
    i8 1, label %sw.bb6
  ]

while.body.cleanup52_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup52

sw.bb6:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %dec = add i32 %length.094, -1
  br label %cleanup

sw.default:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %length.094)
  %cmp7 = icmp slt i32 %length.094, 2
  br i1 %cmp7, label %sw.default.cleanup52_crit_edge, label %if.end10

sw.default.cleanup52_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup52

if.end10:                                         ; preds = %sw.default
  %incdec.ptr11 = getelementptr i8, ptr %ptr.093, i32 2
  %17 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %incdec.ptr, align 1
  %conv12 = zext i8 %18 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %18)
  %cmp13 = icmp ult i8 %18, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %length.094, i32 %conv12)
  %cmp17 = icmp ult i32 %length.094, %conv12
  %or.cond81 = select i1 %cmp13, i1 true, i1 %cmp17
  br i1 %or.cond81, label %if.end10.cleanup52_crit_edge, label %if.end20

if.end10.cleanup52_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup52

if.end20:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %15)
  %cmp21 = icmp eq i8 %15, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %18)
  %cmp23 = icmp eq i8 %18, 2
  %or.cond = select i1 %cmp21, i1 %cmp23, i1 false
  br i1 %or.cond, label %if.end20.if.end48.sink.split_crit_edge, label %if.else

if.end20.if.end48.sink.split_crit_edge:           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48.sink.split

if.else:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %15)
  %cmp29 = icmp eq i8 %15, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %18)
  %cmp32 = icmp eq i8 %18, 3
  %or.cond80 = select i1 %cmp29, i1 %cmp32, i1 false
  br i1 %or.cond80, label %if.then34, label %if.else.if.end48_crit_edge

if.else.if.end48_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.then34:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %incdec.ptr11 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %incdec.ptr11, align 1
  %21 = call i8 @llvm.umin.i8(i8 %20, i8 14)
  %22 = ptrtoint ptr %td_scale to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %td_scale, align 4
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.then34, %if.end20.if.end48.sink.split_crit_edge
  %.sink96 = phi i8 [ 1, %if.then34 ], [ 2, %if.end20.if.end48.sink.split_crit_edge ]
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %flags, align 1
  %25 = or i8 %24, %.sink96
  store i8 %25, ptr %flags, align 1
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %if.else.if.end48_crit_edge
  %add.ptr = getelementptr i8, ptr %ptr.093, i32 %conv12
  %sub50 = sub nsw i32 %length.094, %conv12
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %sw.bb6
  %ptr.1 = phi ptr [ %add.ptr, %if.end48 ], [ %incdec.ptr, %sw.bb6 ]
  %length.1 = phi i32 [ %sub50, %if.end48 ], [ %dec, %sw.bb6 ]
  %cmp = icmp sgt i32 %length.1, 0
  br i1 %cmp, label %cleanup.while.body_crit_edge, label %cleanup.cleanup52_crit_edge

cleanup.cleanup52_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup52

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

cleanup52:                                        ; preds = %cleanup.cleanup52_crit_edge, %if.end10.cleanup52_crit_edge, %sw.default.cleanup52_crit_edge, %while.body.cleanup52_crit_edge, %if.end3.cleanup52_crit_edge, %skb_header_pointer.exit.cleanup52_crit_edge, %lor.lhs.false.i.i.cleanup52_crit_edge, %if.end.i.i.cleanup52_crit_edge, %entry.cleanup52_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %buff) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @nf_ct_l4proto_log_invalid(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @tcp_can_early_drop(ptr nocapture noundef readonly %ct) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 1, i32 24
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %state, align 8
  %.off = add i8 %1, -4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %.off)
  %switch = icmp ult i8 %.off, 5
  ret i1 %switch
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @tcp_in_window(ptr noundef %ct, i32 noundef %dir, i32 noundef %index, ptr noundef %skb, i32 noundef %dataoff, ptr nocapture noundef readonly %tcph, ptr noundef %hook_state) unnamed_addr #0 align 64 {
entry:
  %buff.i = alloca [40 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %proto = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14
  %ct_net.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 7
  %0 = ptrtoint ptr %ct_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ct_net.i, align 4
  %arrayidx = getelementptr [2 x %struct.ip_ct_tcp_state], ptr %proto, i32 0, i32 %dir
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dir)
  %tobool.not = icmp eq i32 %dir, 0
  %lnot.ext = zext i1 %tobool.not to i32
  %arrayidx3 = getelementptr [2 x %struct.ip_ct_tcp_state], ptr %proto, i32 0, i32 %lnot.ext
  %seq6 = getelementptr inbounds %struct.tcphdr, ptr %tcph, i32 0, i32 2
  %2 = ptrtoint ptr %seq6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %seq6, align 4
  %ack_seq = getelementptr inbounds %struct.tcphdr, ptr %tcph, i32 0, i32 3
  %4 = ptrtoint ptr %ack_seq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ack_seq, align 4
  %window = getelementptr inbounds %struct.tcphdr, ptr %tcph, i32 0, i32 5
  %6 = ptrtoint ptr %window to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %window, align 2
  %conv = zext i16 %7 to i32
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  %doff.i = getelementptr %struct.tcphdr, ptr %tcph, i32 0, i32 4
  %10 = ptrtoint ptr %doff.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load.i = load i16, ptr %doff.i, align 4
  %11 = lshr i16 %bf.load.i, 10
  %12 = and i16 %11, 60
  %mul.i = zext i16 %12 to i32
  %13 = lshr i16 %bf.load.i, 1
  %.lobit.i = and i16 %13, 1
  %14 = zext i16 %.lobit.i to i32
  %bf.clear7.i = and i16 %bf.load.i, 1
  %15 = zext i16 %bf.clear7.i to i32
  %.neg = sub i32 %3, %dataoff
  %.neg.i = add i32 %.neg, %9
  %16 = add i32 %.neg.i, %15
  %add5.i = sub i32 %16, %mul.i
  %add11.i = add i32 %add5.i, %14
  %flags = getelementptr [2 x %struct.ip_ct_tcp_state], ptr %proto, i32 0, i32 %lnot.ext, i32 5
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %flags, align 1
  %19 = and i8 %18, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool9.not = icmp eq i8 %19, 0
  br i1 %tobool9.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %buff.i) #9
  %20 = call ptr @memset(ptr %buff.i, i32 255, i32 40)
  %sub.i = add nsw i32 %mul.i, -20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %tobool.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool.not.i, label %if.then.tcp_sack.exit_crit_edge, label %if.end.i

if.then.tcp_sack.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %tcp_sack.exit

if.end.i:                                         ; preds = %if.then
  %add.i = add i32 %dataoff, 20
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %21 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %data_len.i.i.i, align 8
  %23 = add i32 %9, -20
  %24 = add i32 %22, %dataoff
  %sub.i4.i.i = sub i32 %23, %24
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i4.i.i, i32 %sub.i)
  %cmp.not.i.i.i = icmp slt i32 %sub.i4.i.i, %sub.i
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %skb_header_pointer.exit.i, !prof !124

if.end.i.i.i:                                     ; preds = %if.end.i
  %tobool2.not.i.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i.i, label %if.end.i.i.i.tcp_sack.exit_crit_edge, label %lor.lhs.false.i.i.i

if.end.i.i.i.tcp_sack.exit_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tcp_sack.exit

lor.lhs.false.i.i.i:                              ; preds = %if.end.i.i.i
  %call.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %add.i, ptr noundef nonnull %buff.i, i32 noundef %sub.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp3.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp3.i.i.i, label %lor.lhs.false.i.i.i.tcp_sack.exit_crit_edge, label %lor.lhs.false.i.i.i.if.end3.i_crit_edge

lor.lhs.false.i.i.i.if.end3.i_crit_edge:          ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3.i

lor.lhs.false.i.i.i.tcp_sack.exit_crit_edge:      ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tcp_sack.exit

skb_header_pointer.exit.i:                        ; preds = %if.end.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %25 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %26, i32 %add.i
  %tobool1.not.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool1.not.i, label %skb_header_pointer.exit.i.tcp_sack.exit_crit_edge, label %skb_header_pointer.exit.i.if.end3.i_crit_edge

skb_header_pointer.exit.i.if.end3.i_crit_edge:    ; preds = %skb_header_pointer.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3.i

skb_header_pointer.exit.i.tcp_sack.exit_crit_edge: ; preds = %skb_header_pointer.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tcp_sack.exit

if.end3.i:                                        ; preds = %skb_header_pointer.exit.i.if.end3.i_crit_edge, %lor.lhs.false.i.i.i.if.end3.i_crit_edge
  %retval.0.i.i87.i = phi ptr [ %add.ptr.i.i.i, %skb_header_pointer.exit.i.if.end3.i_crit_edge ], [ %buff.i, %lor.lhs.false.i.i.i.if.end3.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %sub.i)
  %cmp.i = icmp eq i32 %sub.i, 12
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end8.i

land.lhs.true.i:                                  ; preds = %if.end3.i
  %27 = ptrtoint ptr %retval.0.i.i87.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %retval.0.i.i87.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16844810, i32 %28)
  %cmp5.not.i = icmp eq i32 %28, 16844810
  br i1 %cmp5.not.i, label %land.lhs.true.i.tcp_sack.exit_crit_edge, label %land.lhs.true.i.while.body.i.preheader_crit_edge

land.lhs.true.i.while.body.i.preheader_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.preheader

land.lhs.true.i.tcp_sack.exit_crit_edge:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tcp_sack.exit

if.end8.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %12)
  %cmp993.old.i = icmp ugt i16 %12, 20
  br i1 %cmp993.old.i, label %if.end8.i.while.body.i.preheader_crit_edge, label %if.end8.i.tcp_sack.exit_crit_edge

if.end8.i.tcp_sack.exit_crit_edge:                ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tcp_sack.exit

if.end8.i.while.body.i.preheader_crit_edge:       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.preheader

while.body.i.preheader:                           ; preds = %if.end8.i.while.body.i.preheader_crit_edge, %land.lhs.true.i.while.body.i.preheader_crit_edge
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.i.preheader
  %length.096.i = phi i32 [ %length.1.i, %cleanup.i.while.body.i_crit_edge ], [ %sub.i, %while.body.i.preheader ]
  %ptr.094.i = phi ptr [ %ptr.1.i, %cleanup.i.while.body.i_crit_edge ], [ %retval.0.i.i87.i, %while.body.i.preheader ]
  %incdec.ptr.i = getelementptr i8, ptr %ptr.094.i, i32 1
  %29 = ptrtoint ptr %ptr.094.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %ptr.094.i, align 1
  %31 = zext i8 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.44)
  switch i8 %30, label %sw.default.i [
    i8 0, label %while.body.i.tcp_sack.exit_crit_edge
    i8 1, label %sw.bb12.i
  ]

while.body.i.tcp_sack.exit_crit_edge:             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tcp_sack.exit

sw.bb12.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %dec.i = add i32 %length.096.i, -1
  br label %cleanup.i

sw.default.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %length.096.i)
  %cmp13.i = icmp slt i32 %length.096.i, 2
  br i1 %cmp13.i, label %sw.default.i.tcp_sack.exit_crit_edge, label %if.end16.i

sw.default.i.tcp_sack.exit_crit_edge:             ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tcp_sack.exit

if.end16.i:                                       ; preds = %sw.default.i
  %32 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %incdec.ptr.i, align 1
  %conv18.i = zext i8 %33 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %33)
  %cmp19.i = icmp ult i8 %33, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %length.096.i, i32 %conv18.i)
  %cmp23.i = icmp ult i32 %length.096.i, %conv18.i
  %or.cond80.i = select i1 %cmp19.i, i1 true, i1 %cmp23.i
  br i1 %or.cond80.i, label %if.end16.i.tcp_sack.exit_crit_edge, label %if.end26.i

if.end16.i.tcp_sack.exit_crit_edge:               ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tcp_sack.exit

if.end26.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %30)
  %cmp27.i = icmp eq i8 %30, 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %33)
  %cmp30.i = icmp ugt i8 %33, 9
  %or.cond.i = select i1 %cmp27.i, i1 %cmp30.i, i1 false
  br i1 %or.cond.i, label %land.lhs.true32.i, label %if.end26.i.if.end45.i_crit_edge

if.end26.i.if.end45.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45.i

land.lhs.true32.i:                                ; preds = %if.end26.i
  %sub33.i = add nsw i32 %conv18.i, -2
  %34 = and i32 %sub33.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool34.not.i = icmp eq i32 %34, 0
  br i1 %tobool34.not.i, label %for.body.preheader.i, label %land.lhs.true32.i.if.end45.i_crit_edge

land.lhs.true32.i.if.end45.i_crit_edge:           ; preds = %land.lhs.true32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45.i

for.body.preheader.i:                             ; preds = %land.lhs.true32.i
  %incdec.ptr17.le.i = getelementptr i8, ptr %ptr.094.i, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %sack.0 = phi i32 [ %5, %for.body.preheader.i ], [ %spec.select855, %for.body.i.for.body.i_crit_edge ]
  %i.098.i = phi i32 [ 0, %for.body.preheader.i ], [ %add44.i, %for.body.i.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %incdec.ptr17.le.i, i32 %i.098.i
  %add.ptr39.i = getelementptr i32, ptr %add.ptr.i, i32 1
  %35 = ptrtoint ptr %add.ptr39.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %add.ptr39.i, align 1
  %sub.i.i = sub i32 %sack.0, %36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i.i = icmp slt i32 %sub.i.i, 0
  %spec.select855 = select i1 %cmp.i.i, i32 %36, i32 %sack.0
  %add44.i = add nuw nsw i32 %i.098.i, 8
  %cmp37.i = icmp slt i32 %add44.i, %sub33.i
  br i1 %cmp37.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.tcp_sack.exit_crit_edge

for.body.i.tcp_sack.exit_crit_edge:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tcp_sack.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.end45.i:                                       ; preds = %land.lhs.true32.i.if.end45.i_crit_edge, %if.end26.i.if.end45.i_crit_edge
  %add.ptr47.i = getelementptr i8, ptr %ptr.094.i, i32 %conv18.i
  %sub48.i = sub nsw i32 %length.096.i, %conv18.i
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end45.i, %sw.bb12.i
  %ptr.1.i = phi ptr [ %add.ptr47.i, %if.end45.i ], [ %incdec.ptr.i, %sw.bb12.i ]
  %length.1.i = phi i32 [ %sub48.i, %if.end45.i ], [ %dec.i, %sw.bb12.i ]
  %cmp9.i = icmp sgt i32 %length.1.i, 0
  br i1 %cmp9.i, label %cleanup.i.while.body.i_crit_edge, label %cleanup.i.tcp_sack.exit_crit_edge

cleanup.i.tcp_sack.exit_crit_edge:                ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tcp_sack.exit

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

tcp_sack.exit:                                    ; preds = %cleanup.i.tcp_sack.exit_crit_edge, %for.body.i.tcp_sack.exit_crit_edge, %if.end16.i.tcp_sack.exit_crit_edge, %sw.default.i.tcp_sack.exit_crit_edge, %while.body.i.tcp_sack.exit_crit_edge, %if.end8.i.tcp_sack.exit_crit_edge, %land.lhs.true.i.tcp_sack.exit_crit_edge, %skb_header_pointer.exit.i.tcp_sack.exit_crit_edge, %lor.lhs.false.i.i.i.tcp_sack.exit_crit_edge, %if.end.i.i.i.tcp_sack.exit_crit_edge, %if.then.tcp_sack.exit_crit_edge
  %sack.2 = phi i32 [ %5, %if.then.tcp_sack.exit_crit_edge ], [ %5, %if.end.i.i.i.tcp_sack.exit_crit_edge ], [ %5, %lor.lhs.false.i.i.i.tcp_sack.exit_crit_edge ], [ %5, %land.lhs.true.i.tcp_sack.exit_crit_edge ], [ %5, %if.end8.i.tcp_sack.exit_crit_edge ], [ %5, %skb_header_pointer.exit.i.tcp_sack.exit_crit_edge ], [ %spec.select855, %for.body.i.tcp_sack.exit_crit_edge ], [ %5, %cleanup.i.tcp_sack.exit_crit_edge ], [ %5, %if.end16.i.tcp_sack.exit_crit_edge ], [ %5, %sw.default.i.tcp_sack.exit_crit_edge ], [ %5, %while.body.i.tcp_sack.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %buff.i) #9
  br label %if.end

if.end:                                           ; preds = %tcp_sack.exit, %entry.if.end_crit_edge
  %sack.3 = phi i32 [ %5, %entry.if.end_crit_edge ], [ %sack.2, %tcp_sack.exit ]
  %sub = add i32 %5, -1
  %call13 = call i32 @nf_ct_seq_offset(ptr noundef %ct, i32 noundef %lnot.ext, i32 noundef %sub) #9
  %sub14 = sub i32 %5, %call13
  %sub15 = sub i32 %sack.3, %call13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcp_in_window.__UNIQUE_ID_ddebug701, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcp_in_window, %if.then23)) #9
          to label %do.body25 [label %if.then23], !srcloc !125

if.then23:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcp_in_window.__UNIQUE_ID_ddebug701, ptr noundef nonnull @.str.29) #9
  br label %do.body25

do.body25:                                        ; preds = %if.then23, %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcp_in_window.__UNIQUE_ID_ddebug702, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcp_in_window, %if.then37)) #9
          to label %do.end40 [label %if.then37], !srcloc !125

if.then37:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcp_in_window.__UNIQUE_ID_ddebug702, ptr noundef nonnull @.str.30) #9
  br label %do.end40

do.end40:                                         ; preds = %if.then37, %do.body25
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcp_in_window.__UNIQUE_ID_ddebug703, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcp_in_window, %if.then53)) #9
          to label %do.body57 [label %if.then53], !srcloc !125

if.then53:                                        ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcp_in_window.__UNIQUE_ID_ddebug703, ptr noundef nonnull @.str.31, i32 noundef %3, i32 noundef %sub14, i32 noundef %call13, i32 noundef %sub15, i32 noundef %call13, i32 noundef %conv, i32 noundef %add11.i) #9
  br label %do.body57

do.body57:                                        ; preds = %if.then53, %do.end40
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcp_in_window.__UNIQUE_ID_ddebug704, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcp_in_window, %if.then69)) #9
          to label %do.end78 [label %if.then69], !srcloc !125

if.then69:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx, align 4
  %td_maxend = getelementptr [2 x %struct.ip_ct_tcp_state], ptr %proto, i32 0, i32 %dir, i32 1
  %39 = ptrtoint ptr %td_maxend to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %td_maxend, align 4
  %td_maxwin = getelementptr [2 x %struct.ip_ct_tcp_state], ptr %proto, i32 0, i32 %dir, i32 2
  %41 = ptrtoint ptr %td_maxwin to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %td_maxwin, align 4
  %td_scale = getelementptr [2 x %struct.ip_ct_tcp_state], ptr %proto, i32 0, i32 %dir, i32 4
  %43 = ptrtoint ptr %td_scale to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %td_scale, align 4
  %conv70 = zext i8 %44 to i32
  %45 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx3, align 4
  %td_maxend72 = getelementptr [2 x %struct.ip_ct_tcp_state], ptr %proto, i32 0, i32 %lnot.ext, i32 1
  %47 = ptrtoint ptr %td_maxend72 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %td_maxend72, align 4
  %td_maxwin73 = getelementptr [2 x %struct.ip_ct_tcp_state], ptr %proto, i32 0, i32 %lnot.ext, i32 2
  %49 = ptrtoint ptr %td_maxwin73 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %td_maxwin73, align 4
  %td_scale74 = getelementptr [2 x %struct.ip_ct_tcp_state], ptr %proto, i32 0, i32 %lnot.ext, i32 4
  %51 = ptrtoint ptr %td_scale74 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %td_scale74, align 4
  %conv75 = zext i8 %52 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcp_in_window.__UNIQUE_ID_ddebug704, ptr noundef nonnull @.str.32, i32 noundef %38, i32 noundef %40, i32 noundef %42, i32 noundef %conv70, i32 noundef %46, i32 noundef %48, i32 noundef %50, i32 noundef %conv75) #9
  br label %do.end78

do.end78:                                         ; preds = %if.then69, %do.body57
  %td_maxwin79 = getelementptr [2 x %struct.ip_ct_tcp_state], ptr %proto, i32 0, i32 %dir, i32 2
  %53 = ptrtoint ptr %td_maxwin79 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %td_maxwin79, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp = icmp eq i32 %54, 0
  br i1 %cmp, label %if.then81, label %if.else115

if.then81:                                        ; preds = %do.end78
  %55 = ptrtoint ptr %doff.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %bf.load = load i16, ptr %doff.i, align 4
  %56 = and i16 %bf.load, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %tobool82.not = icmp eq i16 %56, 0
  br i1 %tobool82.not, label %if.else, label %if.then83

if.then83:                                        ; preds = %if.then81
  %td_maxend.i = getelementptr [2 x %struct.ip_ct_tcp_state], ptr %proto, i32 0, i32 %dir, i32 1
  %57 = ptrtoint ptr %td_maxend.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %add11.i, ptr %td_maxend.i, align 4
  %58 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %add11.i, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp.i783 = icmp eq i16 %7, 0
  %spec.select.i = select i1 %cmp.i783, i32 1, i32 %conv
  %59 = ptrtoint ptr %td_maxwin79 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %spec.select.i, ptr %td_maxwin79, align 4
  call fastcc void @tcp_options(ptr noundef %skb, i32 noundef %dataoff, ptr noundef %tcph, ptr noundef %arrayidx) #9
  %flags.i = getelementptr [2 x %struct.ip_ct_tcp_state], ptr %proto, i32 0, i32 %dir, i32 5
  %60 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %flags.i, align 1
  %62 = and i8 %61, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool.not.i784 = icmp eq i8 %62, 0
  br i1 %tobool.not.i784, label %if.then83.if.then.i_crit_edge, label %land.lhs.true.i785

if.then83.if.then.i_crit_edge:                    ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

land.lhs.true.i785:                               ; preds = %if.then83
  %63 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %flags, align 1
  %65 = and i8 %64, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool4.not.i = icmp eq i8 %65, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i785.if.then.i_crit_edge, label %land.lhs.true.i785.tcp_init_sender.exit_crit_edge

land.lhs.true.i785.tcp_init_sender.exit_crit_edge: ; preds = %land.lhs.true.i785
  call void @__sanitizer_cov_trace_pc() #11
  br label %tcp_init_sender.exit

land.lhs.true.i785.if.then.i_crit_edge:           ; preds = %land.lhs.true.i785
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true.i785.if.then.i_crit_edge, %if.then83.if.then.i_crit_edge
  %td_scale.i = getelementptr [2 x %struct.ip_ct_tcp_state], ptr %proto, i32 0, i32 %dir, i32 4
  %66 = ptrtoint ptr %td_scale.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %td_scale.i, align 4
  %td_scale5.i = getelementptr [2 x %struct.ip_ct_tcp_state], ptr %proto, i32 0, i32 %lnot.ext, i32 4
  %67 = ptrtoint ptr %td_scale5.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %td_scale5.i, align 4
  br label %tcp_init_sender.exit

tcp_init_sender.exit:                             ; preds = %if.then.i, %land.lhs.true.i785.tcp_init_sender.exit_crit_edge
  %68 = ptrtoint ptr %doff.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %bf.load85 = load i16, ptr %doff.i, align 4
  %69 = and i16 %bf.load85, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %69)
  %tobool88.not = icmp eq i16 %69, 0
  br i1 %tobool88.not, label %tcp_init_sender.exit.cleanup_crit_edge, label %tcp_init_sender.exit.if.end168_crit_edge

tcp_init_sender.exit.if.end168_crit_edge:         ; preds = %tcp_init_sender.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end168

tcp_init_sender.exit.cleanup_crit_edge:           ; preds = %tcp_init_sender.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else:                                          ; preds = %if.then81
  %70 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %add11.i, ptr %arrayidx, align 4
  %td_scale92 = getelementptr [2 x %struct.ip_ct_tcp_state], ptr %proto, i32 0, i32 %dir, i32 4
  %71 = ptrtoint ptr %td_scale92 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %td_scale92, align 4
  %conv93 = zext i8 %72 to i32
  %shl = shl i32 %conv, %conv93
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl)
  %cmp94 = icmp eq i32 %shl, 0
  %spec.select = select i1 %cmp94, i32 1, i32 %shl
  %73 = ptrtoint ptr %td_maxwin79 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %spec.select, ptr %td_maxwin79, align 4
  %add = add i32 %spec.select, %add11.i
  %td_maxend98 = getelementptr [2 x %struct.ip_ct_tcp_state], ptr %proto, i32 0, i32 %dir, i32 1
  %74 = ptrtoint ptr %td_maxend98 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %add, ptr %td_maxend98, align 4
  %td_maxwin99 = getelementptr [2 x %struct.ip_ct_tcp_state], ptr %proto, i32 0, i32 %lnot.ext, i32 2
  %75 = ptrtoint ptr %td_maxwin99 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %td_maxwin99, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp100 = icmp eq i32 %76, 0
  br i1 %cmp100, label %if.then102, label %if.else105

if.then102:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %td_maxend103 = getelementptr [2 x %struct.ip_ct_tcp_state], ptr %proto, i32 0, i32 %lnot.ext, i32 1
  %77 = ptrtoint ptr %td_maxend103 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %sub15, ptr %td_maxend103, align 4
  %78 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %sub15, ptr %arrayidx3, align 4
  br label %if.end168

if.else105:                                       ; preds = %if.else
  %79 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx3, align 4
  %add107 = add i32 %80, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub15, i32 %add107)
  %cmp108 = icmp eq i32 %sub15, %add107
  br i1 %cmp108, label %if.then110, label %if.else105.if.end168_crit_edge

if.else105.if.end168_crit_edge:                   ; preds = %if.else105
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end168

if.then110:                                       ; preds = %if.else105
  call void @__sanitizer_cov_trace_pc() #11
  %81 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %sub15, ptr %arrayidx3, align 4
  br label %if.end168

if.else115:                                       ; preds = %do.end78
  %state116 = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 1, i32 24
  %82 = ptrtoint ptr %state116 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %state116, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %83)
  %cmp118 = icmp eq i8 %83, 1
  %or.cond = and i1 %tobool.not, %cmp118
  br i1 %or.cond, label %if.else115.land.lhs.true129_crit_edge, label %lor.lhs.false

if.else115.land.lhs.true129_crit_edge:            ; preds = %if.else115
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true129

lor.lhs.false:                                    ; preds = %if.else115
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %83)
  %cmp124 = icmp eq i8 %83, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp127 = icmp eq i32 %dir, 1
  %or.cond746 = and i1 %cmp127, %cmp124
  br i1 %or.cond746, label %lor.lhs.false.land.lhs.true129_crit_edge, label %lor.lhs.false.if.else143_crit_edge

lor.lhs.false.if.else143_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else143

lor.lhs.false.land.lhs.true129_crit_edge:         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true129

land.lhs.true129:                                 ; preds = %lor.lhs.false.land.lhs.true129_crit_edge, %if.else115.land.lhs.true129_crit_edge
  %84 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx, align 4
  %sub.i787 = sub i32 %85, %add11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i787)
  %cmp.i788 = icmp slt i32 %sub.i787, 0
  br i1 %cmp.i788, label %if.then133, label %land.lhs.true129.if.else143_crit_edge

land.lhs.true129.if.else143_crit_edge:            ; preds = %land.lhs.true129
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else143

if.then133:                                       ; preds = %land.lhs.true129
  call void @__sanitizer_cov_trace_pc() #11
  %td_maxend134 = getelementptr [2 x %struct.ip_ct_tcp_state], ptr %proto, i32 0, i32 %dir, i32 1
  %86 = ptrtoint ptr %td_maxend134 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %add11.i, ptr %td_maxend134, align 4
  %87 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %add11.i, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp136 = icmp eq i16 %7, 0
  %spec.select747 = select i1 %cmp136, i32 1, i32 %conv
  %88 = ptrtoint ptr %td_maxwin79 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %spec.select747, ptr %td_maxwin79, align 4
  call fastcc void @tcp_options(ptr noundef %skb, i32 noundef %dataoff, ptr noundef %tcph, ptr noundef %arrayidx)
  br label %if.end168

if.else143:                                       ; preds = %land.lhs.true129.if.else143_crit_edge, %lor.lhs.false.if.else143_crit_edge
  %89 = ptrtoint ptr %doff.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %bf.load145 = load i16, ptr %doff.i, align 4
  %90 = and i16 %bf.load145, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %90)
  %tobool149.not = icmp eq i16 %90, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp151 = icmp ne i32 %dir, 1
  %or.cond748.not = or i1 %cmp151, %tobool149.not
  %cmp118.not = xor i1 %cmp118, true
  %brmerge856 = select i1 %or.cond748.not, i1 true, i1 %cmp118.not
  br i1 %brmerge856, label %if.else143.if.end168_crit_edge, label %if.then158

if.else143.if.end168_crit_edge:                   ; preds = %if.else143
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end168

if.then158:                                       ; preds = %if.else143
  %td_maxend.i789 = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 1, i32 8
  %91 = ptrtoint ptr %td_maxend.i789 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %add11.i, ptr %td_maxend.i789, align 4
  %92 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %add11.i, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp.i790 = icmp eq i16 %7, 0
  %spec.select.i791 = select i1 %cmp.i790, i32 1, i32 %conv
  %td_maxwin.i792 = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 1, i32 12
  %93 = ptrtoint ptr %td_maxwin.i792 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %spec.select.i791, ptr %td_maxwin.i792, align 4
  call fastcc void @tcp_options(ptr noundef %skb, i32 noundef %dataoff, ptr noundef %tcph, ptr noundef %arrayidx) #9
  %flags.i793 = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 1, i32 21
  %94 = ptrtoint ptr %flags.i793 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %flags.i793, align 1
  %96 = and i8 %95, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool.not.i794 = icmp eq i8 %96, 0
  br i1 %tobool.not.i794, label %if.then158.if.then.i800_crit_edge, label %land.lhs.true.i797

if.then158.if.then.i800_crit_edge:                ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i800

land.lhs.true.i797:                               ; preds = %if.then158
  %97 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %flags, align 1
  %99 = and i8 %98, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool4.not.i796 = icmp eq i8 %99, 0
  br i1 %tobool4.not.i796, label %land.lhs.true.i797.if.then.i800_crit_edge, label %land.lhs.true.i797.tcp_init_sender.exit802_crit_edge

land.lhs.true.i797.tcp_init_sender.exit802_crit_edge: ; preds = %land.lhs.true.i797
  call void @__sanitizer_cov_trace_pc() #11
  br label %tcp_init_sender.exit802

land.lhs.true.i797.if.then.i800_crit_edge:        ; preds = %land.lhs.true.i797
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i800

if.then.i800:                                     ; preds = %land.lhs.true.i797.if.then.i800_crit_edge, %if.then158.if.then.i800_crit_edge
  %td_scale.i798 = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 1, i32 20
  %100 = ptrtoint ptr %td_scale.i798 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 0, ptr %td_scale.i798, align 4
  %td_scale5.i799 = getelementptr [2 x %struct.ip_ct_tcp_state], ptr %proto, i32 0, i32 %lnot.ext, i32 4
  %101 = ptrtoint ptr %td_scale5.i799 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 0, ptr %td_scale5.i799, align 4
  br label %tcp_init_sender.exit802

tcp_init_sender.exit802:                          ; preds = %if.then.i800, %land.lhs.true.i797.tcp_init_sender.exit802_crit_edge
  %102 = ptrtoint ptr %doff.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %bf.load160 = load i16, ptr %doff.i, align 4
  %103 = and i16 %bf.load160, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %103)
  %tobool163.not = icmp eq i16 %103, 0
  br i1 %tobool163.not, label %tcp_init_sender.exit802.cleanup_crit_edge, label %tcp_init_sender.exit802.if.end168_crit_edge

tcp_init_sender.exit802.if.end168_crit_edge:      ; preds = %tcp_init_sender.exit802
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end168

tcp_init_sender.exit802.cleanup_crit_edge:        ; preds = %tcp_init_sender.exit802
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end168:                                        ; preds = %tcp_init_sender.exit802.if.end168_crit_edge, %if.else143.if.end168_crit_edge, %if.then133, %if.then110, %if.else105.if.end168_crit_edge, %if.then102, %tcp_init_sender.exit.if.end168_crit_edge
  %104 = ptrtoint ptr %doff.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %bf.load170 = load i16, ptr %doff.i, align 4
  %105 = and i16 %bf.load170, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %105)
  %tobool173.not = icmp eq i16 %105, 0
  br i1 %tobool173.not, label %if.then174, label %if.else176

if.then174:                                       ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #11
  %106 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx3, align 4
  br label %if.end187

if.else176:                                       ; preds = %if.end168
  %108 = ptrtoint ptr %doff.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %doff.i, align 4
  %and178 = and i32 %109, 1310720
  call void @__sanitizer_cov_trace_const_cmp4(i32 1310720, i32 %and178)
  %cmp179 = icmp eq i32 %and178, 1310720
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub14)
  %cmp182 = icmp eq i32 %sub14, 0
  %or.cond749 = select i1 %cmp179, i1 %cmp182, i1 false
  br i1 %or.cond749, label %if.then184, label %if.else176.if.end187_crit_edge

if.else176.if.end187_crit_edge:                   ; preds = %if.else176
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end187

if.then184:                                       ; preds = %if.else176
  call void @__sanitizer_cov_trace_pc() #11
  %110 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx3, align 4
  br label %if.end187

if.end187:                                        ; preds = %if.then184, %if.else176.if.end187_crit_edge, %if.then174
  %sack.4 = phi i32 [ %107, %if.then174 ], [ %111, %if.then184 ], [ %sub15, %if.else176.if.end187_crit_edge ]
  %ack.0 = phi i32 [ %107, %if.then174 ], [ %111, %if.then184 ], [ %sub14, %if.else176.if.end187_crit_edge ]
  %112 = and i16 %bf.load170, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %112)
  %tobool192.not = icmp ne i16 %112, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp194 = icmp eq i32 %3, 0
  %or.cond750 = and i1 %cmp194, %tobool192.not
  br i1 %or.cond750, label %land.lhs.true196, label %if.end187.do.body204_crit_edge

if.end187.do.body204_crit_edge:                   ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body204

land.lhs.true196:                                 ; preds = %if.end187
  %state197 = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 1, i32 24
  %113 = ptrtoint ptr %state197 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %state197, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %114)
  %cmp199 = icmp eq i8 %114, 1
  br i1 %cmp199, label %if.then201, label %land.lhs.true196.do.body204_crit_edge

land.lhs.true196.do.body204_crit_edge:            ; preds = %land.lhs.true196
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body204

if.then201:                                       ; preds = %land.lhs.true196
  call void @__sanitizer_cov_trace_pc() #11
  %115 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %arrayidx, align 4
  br label %do.body204

do.body204:                                       ; preds = %if.then201, %land.lhs.true196.do.body204_crit_edge, %if.end187.do.body204_crit_edge
  %end.0 = phi i32 [ %116, %if.then201 ], [ %add11.i, %land.lhs.true196.do.body204_crit_edge ], [ %add11.i, %if.end187.do.body204_crit_edge ]
  %seq.0 = phi i32 [ %116, %if.then201 ], [ 0, %land.lhs.true196.do.body204_crit_edge ], [ %3, %if.end187.do.body204_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcp_in_window.__UNIQUE_ID_ddebug705, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcp_in_window, %if.then216)) #9
          to label %do.end219 [label %if.then216], !srcloc !125

if.then216:                                       ; preds = %do.body204
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcp_in_window.__UNIQUE_ID_ddebug705, ptr noundef nonnull @.str.30) #9
  br label %do.end219

do.end219:                                        ; preds = %if.then216, %do.body204
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcp_in_window.__UNIQUE_ID_ddebug706, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcp_in_window, %if.then232)) #9
          to label %do.body236 [label %if.then232], !srcloc !125

if.then232:                                       ; preds = %do.end219
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcp_in_window.__UNIQUE_ID_ddebug706, ptr noundef nonnull @.str.31, i32 noundef %seq.0, i32 noundef %ack.0, i32 noundef %call13, i32 noundef %sack.4, i32 noundef %call13, i32 noundef %conv, i32 noundef %end.0) #9
  br label %do.body236

do.body236:                                       ; preds = %if.then232, %do.end219
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcp_in_window.__UNIQUE_ID_ddebug707, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcp_in_window, %if.then248)) #9
          to label %do.end261 [label %if.then248], !srcloc !125

if.then248:                                       ; preds = %do.body236
  call void @__sanitizer_cov_trace_pc() #11
  %117 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %arrayidx, align 4
  %td_maxend250 = getelementptr [2 x %struct.ip_ct_tcp_state], ptr %proto, i32 0, i32 %dir, i32 1
  %119 = ptrtoint ptr %td_maxend250 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %td_maxend250, align 4
  %121 = ptrtoint ptr %td_maxwin79 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %td_maxwin79, align 4
  %td_scale252 = getelementptr [2 x %struct.ip_ct_tcp_state], ptr %proto, i32 0, i32 %dir, i32 4
  %123 = ptrtoint ptr %td_scale252 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %td_scale252, align 4
  %conv253 = zext i8 %124 to i32
  %125 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %arrayidx3, align 4
  %td_maxend255 = getelementptr [2 x %struct.ip_ct_tcp_state], ptr %proto, i32 0, i32 %lnot.ext, i32 1
  %127 = ptrtoint ptr %td_maxend255 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %td_maxend255, align 4
  %td_maxwin256 = getelementptr [2 x %struct.ip_ct_tcp_state], ptr %proto, i32 0, i32 %lnot.ext, i32 2
  %129 = ptrtoint ptr %td_maxwin256 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %td_maxwin256, align 4
  %td_scale257 = getelementptr [2 x %struct.ip_ct_tcp_state], ptr %proto, i32 0, i32 %lnot.ext, i32 4
  %131 = ptrtoint ptr %td_scale257 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %td_scale257, align 4
  %conv258 = zext i8 %132 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcp_in_window.__UNIQUE_ID_ddebug707, ptr noundef nonnull @.str.32, i32 noundef %118, i32 noundef %120, i32 noundef %122, i32 noundef %conv253, i32 noundef %126, i32 noundef %128, i32 noundef %130, i32 noundef %conv258) #9
  br label %do.end261

do.end261:                                        ; preds = %if.then248, %do.body236
  %td_maxwin262 = getelementptr [2 x %struct.ip_ct_tcp_state], ptr %proto, i32 0, i32 %lnot.ext, i32 2
  %133 = ptrtoint ptr %td_maxwin262 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %td_maxwin262, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %tobool263.not = icmp eq i32 %134, 0
  br i1 %tobool263.not, label %do.end261.lor.end_crit_edge, label %lor.rhs

do.end261.lor.end_crit_edge:                      ; preds = %do.end261
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end

lor.rhs:                                          ; preds = %do.end261
  call void @__sanitizer_cov_trace_pc() #11
  %135 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %arrayidx, align 4
  %137 = xor i32 %134, -1
  %sub267 = sub i32 %137, %end.0
  %sub.i803 = add i32 %sub267, %136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i803)
  %cmp.i804 = icmp slt i32 %sub.i803, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %do.end261.lor.end_crit_edge
  %138 = phi i1 [ true, %do.end261.lor.end_crit_edge ], [ %cmp.i804, %lor.rhs ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcp_in_window.__UNIQUE_ID_ddebug708, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcp_in_window, %if.then283)) #9
          to label %do.end310 [label %if.then283], !srcloc !125

if.then283:                                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #11
  %td_maxend284 = getelementptr [2 x %struct.ip_ct_tcp_state], ptr %proto, i32 0, i32 %dir, i32 1
  %139 = ptrtoint ptr %td_maxend284 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %td_maxend284, align 4
  %add285.neg = xor i32 %140, -1
  %sub.i805 = add i32 %seq.0, %add285.neg
  %sub.i805.lobit = lshr i32 %sub.i805, 31
  %cond290 = zext i1 %138 to i32
  %141 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %arrayidx3, align 4
  %add292.neg = xor i32 %142, -1
  %sub.i807 = add i32 %sack.4, %add292.neg
  %sub.i807.lobit = lshr i32 %sub.i807, 31
  %143 = ptrtoint ptr %td_maxwin79 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %td_maxwin79, align 4
  %145 = call i32 @llvm.umax.i32(i32 %144, i32 66000)
  %146 = xor i32 %145, -1
  %sub305 = sub i32 %142, %sack.4
  %sub.i809 = add i32 %sub305, %146
  %sub.i809.lobit = lshr i32 %sub.i809, 31
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcp_in_window.__UNIQUE_ID_ddebug708, ptr noundef nonnull @.str.33, i32 noundef %sub.i805.lobit, i32 noundef %cond290, i32 noundef %sub.i807.lobit, i32 noundef %sub.i809.lobit) #9
  br label %do.end310

do.end310:                                        ; preds = %if.then283, %lor.end
  %td_maxend311 = getelementptr [2 x %struct.ip_ct_tcp_state], ptr %proto, i32 0, i32 %dir, i32 1
  %147 = ptrtoint ptr %td_maxend311 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %td_maxend311, align 4
  %add312.neg = xor i32 %148, -1
  %sub.i811 = add i32 %seq.0, %add312.neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i811)
  %cmp.i812 = icmp sgt i32 %sub.i811, -1
  %.not = xor i1 %138, true
  %brmerge = select i1 %cmp.i812, i1 true, i1 %.not
  br i1 %brmerge, label %do.end310.if.else455_crit_edge, label %land.lhs.true318

do.end310.if.else455_crit_edge:                   ; preds = %do.end310
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else455

land.lhs.true318:                                 ; preds = %do.end310
  %149 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %arrayidx3, align 4
  %add320.neg = xor i32 %150, -1
  %sub.i813 = add i32 %sack.4, %add320.neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i813)
  %cmp.i814 = icmp slt i32 %sub.i813, 0
  br i1 %cmp.i814, label %land.lhs.true323, label %land.lhs.true318.if.else455_crit_edge

land.lhs.true318.if.else455_crit_edge:            ; preds = %land.lhs.true318
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else455

land.lhs.true323:                                 ; preds = %land.lhs.true318
  %151 = ptrtoint ptr %td_maxwin79 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %td_maxwin79, align 4
  %153 = call i32 @llvm.umax.i32(i32 %152, i32 66000)
  %154 = xor i32 %153, -1
  %sub334 = sub i32 %150, %sack.4
  %sub.i815 = add i32 %sub334, %154
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i815)
  %cmp.i816 = icmp slt i32 %sub.i815, 0
  br i1 %cmp.i816, label %if.then337, label %land.lhs.true323.if.else455_crit_edge

land.lhs.true323.if.else455_crit_edge:            ; preds = %land.lhs.true323
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else455

if.then337:                                       ; preds = %land.lhs.true323
  %155 = ptrtoint ptr %doff.i to i32
  call void @__asan_load2_noabort(i32 %155)
  %bf.load339 = load i16, ptr %doff.i, align 4
  %156 = and i16 %bf.load339, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %156)
  %tobool342.not = icmp eq i16 %156, 0
  br i1 %tobool342.not, label %if.then343, label %if.then337.if.end347_crit_edge

if.then337.if.end347_crit_edge:                   ; preds = %if.then337
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end347

if.then343:                                       ; preds = %if.then337
  call void @__sanitizer_cov_trace_pc() #11
  %td_scale344 = getelementptr [2 x %struct.ip_ct_tcp_state], ptr %proto, i32 0, i32 %dir, i32 4
  %157 = ptrtoint ptr %td_scale344 to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %td_scale344, align 4
  %conv345 = zext i8 %158 to i32
  %shl346 = shl i32 %conv, %conv345
  br label %if.end347

if.end347:                                        ; preds = %if.then343, %if.then337.if.end347_crit_edge
  %win.0 = phi i32 [ %conv, %if.then337.if.end347_crit_edge ], [ %shl346, %if.then343 ]
  %sub348 = sub i32 %sack.4, %ack.0
  %add349 = add i32 %win.0, %sub348
  call void @__sanitizer_cov_trace_cmp4(i32 %152, i32 %add349)
  %cmp351 = icmp ult i32 %152, %add349
  br i1 %cmp351, label %if.then353, label %if.end347.if.end355_crit_edge

if.end347.if.end355_crit_edge:                    ; preds = %if.end347
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end355

if.then353:                                       ; preds = %if.end347
  call void @__sanitizer_cov_trace_pc() #11
  %159 = ptrtoint ptr %td_maxwin79 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %add349, ptr %td_maxwin79, align 4
  br label %if.end355

if.end355:                                        ; preds = %if.then353, %if.end347.if.end355_crit_edge
  %160 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %arrayidx, align 4
  %sub.i817 = sub i32 %161, %end.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i817)
  %cmp.i818 = icmp slt i32 %sub.i817, 0
  br i1 %cmp.i818, label %if.then358, label %if.end355.if.end363_crit_edge

if.end355.if.end363_crit_edge:                    ; preds = %if.end355
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end363

if.then358:                                       ; preds = %if.end355
  call void @__sanitizer_cov_trace_pc() #11
  %162 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %end.0, ptr %arrayidx, align 4
  %flags360 = getelementptr [2 x %struct.ip_ct_tcp_state], ptr %proto, i32 0, i32 %dir, i32 5
  %163 = ptrtoint ptr %flags360 to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %flags360, align 1
  %165 = or i8 %164, 16
  store i8 %165, ptr %flags360, align 1
  br label %if.end363

if.end363:                                        ; preds = %if.then358, %if.end355.if.end363_crit_edge
  %166 = ptrtoint ptr %doff.i to i32
  call void @__asan_load2_noabort(i32 %166)
  %bf.load365 = load i16, ptr %doff.i, align 4
  %167 = and i16 %bf.load365, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %167)
  %tobool368.not = icmp eq i16 %167, 0
  br i1 %tobool368.not, label %if.end363.if.end386_crit_edge, label %if.then369

if.end363.if.end386_crit_edge:                    ; preds = %if.end363
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end386

if.then369:                                       ; preds = %if.end363
  %flags370 = getelementptr [2 x %struct.ip_ct_tcp_state], ptr %proto, i32 0, i32 %dir, i32 5
  %168 = ptrtoint ptr %flags370 to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %flags370, align 1
  %170 = and i8 %169, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %170)
  %tobool373.not = icmp eq i8 %170, 0
  %td_maxack = getelementptr [2 x %struct.ip_ct_tcp_state], ptr %proto, i32 0, i32 %dir, i32 3
  br i1 %tobool373.not, label %if.then374, label %if.else379

if.then374:                                       ; preds = %if.then369
  call void @__sanitizer_cov_trace_pc() #11
  %171 = ptrtoint ptr %td_maxack to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %ack.0, ptr %td_maxack, align 4
  %172 = or i8 %169, 32
  %173 = ptrtoint ptr %flags370 to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 %172, ptr %flags370, align 1
  br label %if.end386

if.else379:                                       ; preds = %if.then369
  %174 = ptrtoint ptr %td_maxack to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %td_maxack, align 4
  %sub.i819 = sub i32 %175, %ack.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i819)
  %cmp.i820 = icmp slt i32 %sub.i819, 0
  br i1 %cmp.i820, label %if.then382, label %if.else379.if.end386_crit_edge

if.else379.if.end386_crit_edge:                   ; preds = %if.else379
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end386

if.then382:                                       ; preds = %if.else379
  call void @__sanitizer_cov_trace_pc() #11
  %176 = ptrtoint ptr %td_maxack to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %ack.0, ptr %td_maxack, align 4
  br label %if.end386

if.end386:                                        ; preds = %if.then382, %if.else379.if.end386_crit_edge, %if.then374, %if.end363.if.end386_crit_edge
  %177 = ptrtoint ptr %td_maxwin262 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %td_maxwin262, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %178)
  %cmp388.not = icmp eq i32 %178, 0
  br i1 %cmp388.not, label %if.end386.if.end399_crit_edge, label %land.lhs.true390

if.end386.if.end399_crit_edge:                    ; preds = %if.end386
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end399

land.lhs.true390:                                 ; preds = %if.end386
  %179 = ptrtoint ptr %td_maxend311 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %td_maxend311, align 4
  %sub.i821 = sub i32 %180, %end.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i821)
  %cmp.i822 = icmp slt i32 %sub.i821, 0
  br i1 %cmp.i822, label %if.then394, label %land.lhs.true390.if.end399_crit_edge

land.lhs.true390.if.end399_crit_edge:             ; preds = %land.lhs.true390
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end399

if.then394:                                       ; preds = %land.lhs.true390
  call void @__sanitizer_cov_trace_pc() #11
  %sub396 = add i32 %178, %end.0
  %add398 = sub i32 %sub396, %180
  %181 = ptrtoint ptr %td_maxwin262 to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %add398, ptr %td_maxwin262, align 4
  br label %if.end399

if.end399:                                        ; preds = %if.then394, %land.lhs.true390.if.end399_crit_edge, %if.end386.if.end399_crit_edge
  %td_maxend400 = getelementptr [2 x %struct.ip_ct_tcp_state], ptr %proto, i32 0, i32 %lnot.ext, i32 1
  %182 = ptrtoint ptr %td_maxend400 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %td_maxend400, align 4
  %add402 = add i32 %win.0, %sack.4
  %184 = xor i32 %add402, -1
  %sub.i823 = add i32 %183, %184
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i823)
  %cmp.i824 = icmp slt i32 %sub.i823, 0
  br i1 %cmp.i824, label %if.then404, label %if.end399.if.end413_crit_edge

if.end399.if.end413_crit_edge:                    ; preds = %if.end399
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end413

if.then404:                                       ; preds = %if.end399
  %185 = ptrtoint ptr %td_maxend400 to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %add402, ptr %td_maxend400, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %win.0)
  %cmp407 = icmp eq i32 %win.0, 0
  br i1 %cmp407, label %if.then409, label %if.then404.if.end413_crit_edge

if.then404.if.end413_crit_edge:                   ; preds = %if.then404
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end413

if.then409:                                       ; preds = %if.then404
  call void @__sanitizer_cov_trace_pc() #11
  %inc411 = add i32 %add402, 1
  %186 = ptrtoint ptr %td_maxend400 to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %inc411, ptr %td_maxend400, align 4
  br label %if.end413

if.end413:                                        ; preds = %if.then409, %if.then404.if.end413_crit_edge, %if.end399.if.end413_crit_edge
  %187 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %arrayidx3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %ack.0, i32 %188)
  %cmp415 = icmp eq i32 %ack.0, %188
  br i1 %cmp415, label %if.then417, label %if.end413.if.end422_crit_edge

if.end413.if.end422_crit_edge:                    ; preds = %if.end413
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end422

if.then417:                                       ; preds = %if.end413
  call void @__sanitizer_cov_trace_pc() #11
  %189 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %flags, align 1
  %191 = and i8 %190, -17
  store i8 %191, ptr %flags, align 1
  br label %if.end422

if.end422:                                        ; preds = %if.then417, %if.end413.if.end422_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %index)
  %cmp423 = icmp eq i32 %index, 3
  br i1 %cmp423, label %if.then425, label %if.end422.do.body505_crit_edge

if.end422.do.body505_crit_edge:                   ; preds = %if.end422
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body505

if.then425:                                       ; preds = %if.end422
  %last_dir = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 1, i32 25
  %192 = ptrtoint ptr %last_dir to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %last_dir, align 1
  %conv426 = zext i8 %193 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv426, i32 %dir)
  %cmp427 = icmp eq i32 %conv426, %dir
  br i1 %cmp427, label %land.lhs.true429, label %if.then425.if.else445_crit_edge

if.then425.if.else445_crit_edge:                  ; preds = %if.then425
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else445

land.lhs.true429:                                 ; preds = %if.then425
  %last_seq = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 1, i32 28
  %194 = ptrtoint ptr %last_seq to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %last_seq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %195, i32 %seq.0)
  %cmp430 = icmp eq i32 %195, %seq.0
  br i1 %cmp430, label %land.lhs.true432, label %land.lhs.true429.if.else445_crit_edge

land.lhs.true429.if.else445_crit_edge:            ; preds = %land.lhs.true429
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else445

land.lhs.true432:                                 ; preds = %land.lhs.true429
  %last_ack = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 1, i32 32
  %196 = ptrtoint ptr %last_ack to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %last_ack, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %197, i32 %ack.0)
  %cmp433 = icmp eq i32 %197, %ack.0
  br i1 %cmp433, label %land.lhs.true435, label %land.lhs.true432.if.else445_crit_edge

land.lhs.true432.if.else445_crit_edge:            ; preds = %land.lhs.true432
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else445

land.lhs.true435:                                 ; preds = %land.lhs.true432
  %last_end = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 1, i32 36
  %198 = ptrtoint ptr %last_end to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %last_end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %199, i32 %end.0)
  %cmp436 = icmp eq i32 %199, %end.0
  br i1 %cmp436, label %land.lhs.true438, label %land.lhs.true435.if.else445_crit_edge

land.lhs.true435.if.else445_crit_edge:            ; preds = %land.lhs.true435
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else445

land.lhs.true438:                                 ; preds = %land.lhs.true435
  %last_win = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 1, i32 40
  %200 = ptrtoint ptr %last_win to i32
  call void @__asan_load2_noabort(i32 %200)
  %201 = load i16, ptr %last_win, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %201, i16 %7)
  %cmp441 = icmp eq i16 %201, %7
  br i1 %cmp441, label %if.then443, label %land.lhs.true438.if.else445_crit_edge

land.lhs.true438.if.else445_crit_edge:            ; preds = %land.lhs.true438
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else445

if.then443:                                       ; preds = %land.lhs.true438
  call void @__sanitizer_cov_trace_pc() #11
  %retrans = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 1, i32 26
  %202 = ptrtoint ptr %retrans to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %retrans, align 2
  %inc444 = add i8 %203, 1
  store i8 %inc444, ptr %retrans, align 2
  br label %do.body505

if.else445:                                       ; preds = %land.lhs.true438.if.else445_crit_edge, %land.lhs.true435.if.else445_crit_edge, %land.lhs.true432.if.else445_crit_edge, %land.lhs.true429.if.else445_crit_edge, %if.then425.if.else445_crit_edge
  %conv446 = trunc i32 %dir to i8
  %204 = ptrtoint ptr %last_dir to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 %conv446, ptr %last_dir, align 1
  %last_seq448 = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 1, i32 28
  %205 = ptrtoint ptr %last_seq448 to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 %seq.0, ptr %last_seq448, align 4
  %last_ack449 = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 1, i32 32
  %206 = ptrtoint ptr %last_ack449 to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %ack.0, ptr %last_ack449, align 4
  %last_end450 = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 1, i32 36
  %207 = ptrtoint ptr %last_end450 to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %end.0, ptr %last_end450, align 4
  %last_win451 = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 1, i32 40
  %208 = ptrtoint ptr %last_win451 to i32
  call void @__asan_store2_noabort(i32 %208)
  store i16 %7, ptr %last_win451, align 4
  %retrans452 = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 1, i32 26
  %209 = ptrtoint ptr %retrans452 to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 0, ptr %retrans452, align 2
  br label %do.body505

if.else455:                                       ; preds = %land.lhs.true323.if.else455_crit_edge, %land.lhs.true318.if.else455_crit_edge, %do.end310.if.else455_crit_edge
  %flags456 = getelementptr [2 x %struct.ip_ct_tcp_state], ptr %proto, i32 0, i32 %dir, i32 5
  %210 = ptrtoint ptr %flags456 to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %flags456, align 1
  %212 = and i8 %211, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %212)
  %tobool459.not = icmp eq i8 %212, 0
  br i1 %tobool459.not, label %lor.lhs.false460, label %if.else455.do.body505_crit_edge

if.else455.do.body505_crit_edge:                  ; preds = %if.else455
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body505

lor.lhs.false460:                                 ; preds = %if.else455
  %tcp_be_liberal = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 40, i32 10, i32 1, i32 2
  %213 = ptrtoint ptr %tcp_be_liberal to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %tcp_be_liberal, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %214)
  %tobool462.not = icmp eq i8 %214, 0
  br i1 %tobool462.not, label %if.then466, label %lor.lhs.false460.do.body505_crit_edge

lor.lhs.false460.do.body505_crit_edge:            ; preds = %lor.lhs.false460
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body505

if.then466:                                       ; preds = %lor.lhs.false460
  %.str.38.mux = select i1 %cmp.i812, ptr @.str.38, ptr @.str.37
  br i1 %brmerge, label %if.then466.cond.end501_crit_edge, label %cond.true474

if.then466.cond.end501_crit_edge:                 ; preds = %if.then466
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end501

cond.true474:                                     ; preds = %if.then466
  %215 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %arrayidx3, align 4
  %add476.neg = xor i32 %216, -1
  %sub.i827 = add i32 %sack.4, %add476.neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i827)
  %cmp.i828 = icmp slt i32 %sub.i827, 0
  br i1 %cmp.i828, label %cond.true479, label %cond.true474.cond.end501_crit_edge

cond.true474.cond.end501_crit_edge:               ; preds = %cond.true474
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end501

cond.true479:                                     ; preds = %cond.true474
  call void @__sanitizer_cov_trace_pc() #11
  %217 = ptrtoint ptr %td_maxwin79 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %td_maxwin79, align 4
  %219 = call i32 @llvm.umax.i32(i32 %218, i32 66000)
  %220 = xor i32 %219, -1
  %sub490 = sub i32 %216, %sack.4
  %sub.i829 = add i32 %sub490, %220
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i829)
  %cmp.i830 = icmp slt i32 %sub.i829, 0
  %cond493 = select i1 %cmp.i830, ptr @.str.34, ptr @.str.35
  br label %cond.end501

cond.end501:                                      ; preds = %cond.true479, %cond.true474.cond.end501_crit_edge, %if.then466.cond.end501_crit_edge
  %cond502 = phi ptr [ %cond493, %cond.true479 ], [ @.str.36, %cond.true474.cond.end501_crit_edge ], [ %.str.38.mux, %if.then466.cond.end501_crit_edge ]
  call void (ptr, ptr, ptr, ptr, ...) @nf_ct_l4proto_log_invalid(ptr noundef %skb, ptr noundef %ct, ptr noundef %hook_state, ptr noundef nonnull @.str.14, ptr noundef nonnull %cond502) #12
  br label %do.body505

do.body505:                                       ; preds = %cond.end501, %lor.lhs.false460.do.body505_crit_edge, %if.else455.do.body505_crit_edge, %if.else445, %if.then443, %if.end422.do.body505_crit_edge
  %res.1.off0 = phi i1 [ false, %cond.end501 ], [ true, %if.then443 ], [ true, %if.else445 ], [ true, %if.end422.do.body505_crit_edge ], [ true, %if.else455.do.body505_crit_edge ], [ true, %lor.lhs.false460.do.body505_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcp_in_window.__UNIQUE_ID_ddebug709, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcp_in_window, %if.then517)) #9
          to label %cleanup [label %if.then517], !srcloc !125

if.then517:                                       ; preds = %do.body505
  call void @__sanitizer_cov_trace_pc() #11
  %conv519 = zext i1 %res.1.off0 to i32
  %221 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %arrayidx, align 4
  %223 = ptrtoint ptr %td_maxend311 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %td_maxend311, align 4
  %225 = ptrtoint ptr %td_maxwin79 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %td_maxwin79, align 4
  %227 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %arrayidx3, align 4
  %td_maxend524 = getelementptr [2 x %struct.ip_ct_tcp_state], ptr %proto, i32 0, i32 %lnot.ext, i32 1
  %229 = ptrtoint ptr %td_maxend524 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %td_maxend524, align 4
  %231 = ptrtoint ptr %td_maxwin262 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %td_maxwin262, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcp_in_window.__UNIQUE_ID_ddebug709, ptr noundef nonnull @.str.39, i32 noundef %conv519, i32 noundef %222, i32 noundef %224, i32 noundef %226, i32 noundef %228, i32 noundef %230, i32 noundef %232) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then517, %do.body505, %tcp_init_sender.exit802.cleanup_crit_edge, %tcp_init_sender.exit.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %tcp_init_sender.exit.cleanup_crit_edge ], [ true, %tcp_init_sender.exit802.cleanup_crit_edge ], [ %res.1.off0, %if.then517 ], [ %res.1.off0, %do.body505 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nf_ct_kill_acct(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define dso_local void @nf_conntrack_tcp_init_net(ptr nocapture noundef writeonly %net) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tcp.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 1
  %0 = call ptr @memcpy(ptr %tcp.i, ptr @tcp_timeouts, i32 56)
  %1 = ptrtoint ptr %tcp.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 12000, ptr %tcp.i, align 4
  %tcp_loose = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 1, i32 1
  %2 = ptrtoint ptr %tcp_loose to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %tcp_loose, align 4
  %tcp_be_liberal = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 1, i32 2
  %3 = ptrtoint ptr %tcp_be_liberal to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %tcp_be_liberal, align 1
  %tcp_ignore_invalid_rst = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 1, i32 4
  %4 = ptrtoint ptr %tcp_ignore_invalid_rst to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %tcp_ignore_invalid_rst, align 1
  %tcp_max_retrans = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 1, i32 3
  %5 = ptrtoint ptr %tcp_max_retrans to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 3, ptr %tcp_max_retrans, align 2
  %offload_timeout = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 1, i32 5
  %6 = ptrtoint ptr %offload_timeout to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 3000, ptr %offload_timeout, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcp_to_nlattr(ptr noundef %skb, ptr nocapture noundef readnone %nla, ptr noundef %ct, i1 noundef zeroext %destroy) #0 align 64 {
entry:
  %tmp.i56 = alloca i8, align 1
  %tmp.i54 = alloca i8, align 1
  %tmp.i = alloca i8, align 1
  %tmp = alloca %struct.nf_ct_tcp_flags, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp) #9
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %tmp, align 2
  %lock = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #9
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %1 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 32769, i32 noundef 0, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %tobool.not58 = icmp eq ptr %2, null
  %tobool.not = select i1 %cmp.i.i, i1 true, i1 %tobool.not58
  br i1 %tobool.not, label %entry.nla_put_failure_crit_edge, label %if.end

entry.nla_put_failure_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %nla_put_failure

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 1, i32 24
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %state, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #9
  %5 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %tmp.i, align 1
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %tmp.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.nla_put_failure_crit_edge

if.end.nla_put_failure_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %nla_put_failure

if.end4:                                          ; preds = %if.end
  br i1 %destroy, label %if.end4.skip_state_crit_edge, label %if.end7

if.end4.skip_state_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %skip_state

if.end7:                                          ; preds = %if.end4
  %td_scale = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 1
  %6 = ptrtoint ptr %td_scale to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %td_scale, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i54) #9
  %8 = ptrtoint ptr %tmp.i54 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %tmp.i54, align 1
  %call.i55 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %tmp.i54) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i54) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55)
  %tobool10.not = icmp eq i32 %call.i55, 0
  br i1 %tobool10.not, label %lor.lhs.false, label %if.end7.nla_put_failure_crit_edge

if.end7.nla_put_failure_crit_edge:                ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %nla_put_failure

lor.lhs.false:                                    ; preds = %if.end7
  %td_scale14 = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 1, i32 20
  %9 = ptrtoint ptr %td_scale14 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %td_scale14, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i56) #9
  %11 = ptrtoint ptr %tmp.i56 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %tmp.i56, align 1
  %call.i57 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 1, ptr noundef nonnull %tmp.i56) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i56) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i57)
  %tobool16.not = icmp eq i32 %call.i57, 0
  br i1 %tobool16.not, label %if.end18, label %lor.lhs.false.nla_put_failure_crit_edge

lor.lhs.false.nla_put_failure_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %nla_put_failure

if.end18:                                         ; preds = %lor.lhs.false
  %flags = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 1, i32 1
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %flags, align 1
  %14 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %tmp, align 2
  %call23 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 2, ptr noundef nonnull %tmp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end18.nla_put_failure_crit_edge

if.end18.nla_put_failure_crit_edge:               ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %nla_put_failure

if.end26:                                         ; preds = %if.end18
  %flags30 = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 1, i32 21
  %15 = ptrtoint ptr %flags30 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %flags30, align 1
  %17 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %tmp, align 2
  %call32 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 2, ptr noundef nonnull %tmp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end26.skip_state_crit_edge, label %if.end26.nla_put_failure_crit_edge

if.end26.nla_put_failure_crit_edge:               ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %nla_put_failure

if.end26.skip_state_crit_edge:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %skip_state

skip_state:                                       ; preds = %if.end26.skip_state_crit_edge, %if.end4.skip_state_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #9
  %18 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %19 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %2 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv.i, ptr %2, align 2
  br label %cleanup

nla_put_failure:                                  ; preds = %if.end26.nla_put_failure_crit_edge, %if.end18.nla_put_failure_crit_edge, %lor.lhs.false.nla_put_failure_crit_edge, %if.end7.nla_put_failure_crit_edge, %if.end.nla_put_failure_crit_edge, %entry.nla_put_failure_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %nla_put_failure, %skip_state
  %retval.0 = phi i32 [ -1, %nla_put_failure ], [ 0, %skip_state ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nlattr_to_tcp(ptr nocapture noundef readonly %cda, ptr noundef %ct) #0 align 64 {
entry:
  %tb = alloca [6 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr ptr, ptr %cda, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tb) #9
  %2 = getelementptr inbounds [6 x ptr], ptr %tb, i32 0, i32 1
  %3 = getelementptr inbounds [6 x ptr], ptr %tb, i32 0, i32 2
  %4 = getelementptr inbounds [6 x ptr], ptr %tb, i32 0, i32 3
  %5 = getelementptr inbounds [6 x ptr], ptr %tb, i32 0, i32 4
  %6 = getelementptr inbounds [6 x ptr], ptr %tb, i32 0, i32 5
  %tobool.not = icmp eq ptr %1, null
  %7 = call ptr @memset(ptr %tb, i32 255, i32 24)
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %1, align 2
  %conv.i.i = zext i16 %9 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 5, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @tcp_nla_policy, i32 noundef 0, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %2, align 4
  %tobool4.not = icmp eq ptr %11, null
  br i1 %tobool4.not, label %if.end2.if.end10_crit_edge, label %land.lhs.true

if.end2.if.end10_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end2
  %add.ptr.i.i130 = getelementptr i8, ptr %11, i32 4
  %12 = ptrtoint ptr %add.ptr.i.i130 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %add.ptr.i.i130, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %13)
  %cmp7 = icmp ugt i8 %13, 9
  br i1 %cmp7, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %land.lhs.true.if.end10_crit_edge, %if.end2.if.end10_crit_edge
  %lock = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 1
  call void @_raw_spin_lock_bh(ptr noundef %lock) #9
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %2, align 4
  %tobool12.not = icmp eq ptr %15, null
  br i1 %tobool12.not, label %if.end10.if.end16_crit_edge, label %if.then13

if.end10.if.end16_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i131 = getelementptr i8, ptr %15, i32 4
  %16 = ptrtoint ptr %add.ptr.i.i131 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %add.ptr.i.i131, align 1
  %state = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 1, i32 24
  %18 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %state, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end10.if.end16_crit_edge
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %5, align 4
  %tobool18.not = icmp eq ptr %20, null
  br i1 %tobool18.not, label %if.end16.if.end38_crit_edge, label %if.then19

if.end16.if.end38_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %20, i32 4
  %mask = getelementptr i8, ptr %20, i32 5
  %21 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %mask, align 1
  %neg = xor i8 %22, -1
  %flags = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 1, i32 1
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %flags, align 1
  %and = and i8 %24, %neg
  store i8 %and, ptr %flags, align 1
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %add.ptr.i, align 1
  %27 = load i8, ptr %mask, align 1
  %and31128 = and i8 %27, %26
  %or129 = or i8 %and31128, %and
  store i8 %or129, ptr %flags, align 1
  br label %if.end38

if.end38:                                         ; preds = %if.then19, %if.end16.if.end38_crit_edge
  %28 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %6, align 4
  %tobool40.not = icmp eq ptr %29, null
  br i1 %tobool40.not, label %if.end38.if.end67_crit_edge, label %if.then41

if.end38.if.end67_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67

if.then41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i132 = getelementptr i8, ptr %29, i32 4
  %mask45 = getelementptr i8, ptr %29, i32 5
  %30 = ptrtoint ptr %mask45 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %mask45, align 1
  %neg47 = xor i8 %31, -1
  %flags51 = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 1, i32 21
  %32 = ptrtoint ptr %flags51 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %flags51, align 1
  %and53 = and i8 %33, %neg47
  store i8 %and53, ptr %flags51, align 1
  %34 = ptrtoint ptr %add.ptr.i132 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %add.ptr.i132, align 1
  %36 = load i8, ptr %mask45, align 1
  %and59126 = and i8 %36, %35
  %or65127 = or i8 %and59126, %and53
  store i8 %or65127, ptr %flags51, align 1
  br label %if.end67

if.end67:                                         ; preds = %if.then41, %if.end38.if.end67_crit_edge
  %37 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %3, align 4
  %tobool69.not = icmp eq ptr %38, null
  br i1 %tobool69.not, label %if.end67.if.end101_crit_edge, label %land.lhs.true70

if.end67.if.end101_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end101

land.lhs.true70:                                  ; preds = %if.end67
  %39 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %4, align 4
  %tobool72.not = icmp eq ptr %40, null
  br i1 %tobool72.not, label %land.lhs.true70.if.end101_crit_edge, label %land.lhs.true73

land.lhs.true70.if.end101_crit_edge:              ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end101

land.lhs.true73:                                  ; preds = %land.lhs.true70
  %flags77 = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 1, i32 1
  %41 = ptrtoint ptr %flags77 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %flags77, align 1
  %43 = and i8 %42, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool80.not = icmp eq i8 %43, 0
  br i1 %tobool80.not, label %land.lhs.true73.if.end101_crit_edge, label %land.lhs.true81

land.lhs.true73.if.end101_crit_edge:              ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end101

land.lhs.true81:                                  ; preds = %land.lhs.true73
  %flags85 = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 1, i32 21
  %44 = ptrtoint ptr %flags85 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %flags85, align 1
  %46 = and i8 %45, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool88.not = icmp eq i8 %46, 0
  br i1 %tobool88.not, label %land.lhs.true81.if.end101_crit_edge, label %if.then89

land.lhs.true81.if.end101_crit_edge:              ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end101

if.then89:                                        ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i133 = getelementptr i8, ptr %38, i32 4
  %47 = ptrtoint ptr %add.ptr.i.i133 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %add.ptr.i.i133, align 1
  %td_scale = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 1
  %49 = ptrtoint ptr %td_scale to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %td_scale, align 8
  %add.ptr.i.i134 = getelementptr i8, ptr %40, i32 4
  %50 = ptrtoint ptr %add.ptr.i.i134 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %add.ptr.i.i134, align 1
  %td_scale100 = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 1, i32 20
  %52 = ptrtoint ptr %td_scale100 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %td_scale100, align 4
  br label %if.end101

if.end101:                                        ; preds = %if.then89, %land.lhs.true81.if.end101_crit_edge, %land.lhs.true73.if.end101_crit_edge, %land.lhs.true70.if.end101_crit_edge, %if.end67.if.end101_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end101, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end101 ], [ 0, %entry.cleanup_crit_edge ], [ %call2.i, %if.end.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tb) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_ct_port_tuple_to_nlattr(ptr noundef, ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcp_nlattr_tuple_size() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @tcp_nlattr_tuple_size.size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @nla_policy_len(ptr noundef nonnull @nf_ct_port_nla_policy, i32 noundef 10) #9
  store i32 %call, ptr @tcp_nlattr_tuple_size.size, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %1 = load i32, ptr @tcp_nlattr_tuple_size.size, align 4
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_ct_port_nlattr_to_tuple(ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcp_timeout_nlattr_to_obj(ptr nocapture noundef readonly %tb, ptr nocapture noundef %net, ptr noundef %data) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tcp.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 1
  %tobool.not = icmp eq ptr %data, null
  %spec.select = select i1 %tobool.not, ptr %tcp.i, ptr %data
  %0 = ptrtoint ptr %tcp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tcp.i, align 4
  %2 = ptrtoint ptr %spec.select to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %spec.select, align 4
  %arrayidx.1 = getelementptr %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 1, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.1, align 4
  %arrayidx3.1 = getelementptr i32, ptr %spec.select, i32 1
  %5 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %arrayidx3.1, align 4
  %arrayidx.2 = getelementptr %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 1, i32 0, i32 2
  %6 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.2, align 4
  %arrayidx3.2 = getelementptr i32, ptr %spec.select, i32 2
  %8 = ptrtoint ptr %arrayidx3.2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %arrayidx3.2, align 4
  %arrayidx.3 = getelementptr %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 1, i32 0, i32 3
  %9 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.3, align 4
  %arrayidx3.3 = getelementptr i32, ptr %spec.select, i32 3
  %11 = ptrtoint ptr %arrayidx3.3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %arrayidx3.3, align 4
  %arrayidx.4 = getelementptr %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 1, i32 0, i32 4
  %12 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.4, align 4
  %arrayidx3.4 = getelementptr i32, ptr %spec.select, i32 4
  %14 = ptrtoint ptr %arrayidx3.4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %arrayidx3.4, align 4
  %arrayidx.5 = getelementptr %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 1, i32 0, i32 5
  %15 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.5, align 4
  %arrayidx3.5 = getelementptr i32, ptr %spec.select, i32 5
  %17 = ptrtoint ptr %arrayidx3.5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %arrayidx3.5, align 4
  %arrayidx.6 = getelementptr %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 1, i32 0, i32 6
  %18 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.6, align 4
  %arrayidx3.6 = getelementptr i32, ptr %spec.select, i32 6
  %20 = ptrtoint ptr %arrayidx3.6 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx3.6, align 4
  %arrayidx.7 = getelementptr %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 1, i32 0, i32 7
  %21 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.7, align 4
  %arrayidx3.7 = getelementptr i32, ptr %spec.select, i32 7
  %23 = ptrtoint ptr %arrayidx3.7 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx3.7, align 4
  %arrayidx.8 = getelementptr %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 1, i32 0, i32 8
  %24 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.8, align 4
  %arrayidx3.8 = getelementptr i32, ptr %spec.select, i32 8
  %26 = ptrtoint ptr %arrayidx3.8 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx3.8, align 4
  %arrayidx.9 = getelementptr %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 1, i32 0, i32 9
  %27 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.9, align 4
  %arrayidx3.9 = getelementptr i32, ptr %spec.select, i32 9
  %29 = ptrtoint ptr %arrayidx3.9 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx3.9, align 4
  %arrayidx.10 = getelementptr %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 1, i32 0, i32 10
  %30 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.10, align 4
  %arrayidx3.10 = getelementptr i32, ptr %spec.select, i32 10
  %32 = ptrtoint ptr %arrayidx3.10 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %arrayidx3.10, align 4
  %arrayidx.11 = getelementptr %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 1, i32 0, i32 11
  %33 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.11, align 4
  %arrayidx3.11 = getelementptr i32, ptr %spec.select, i32 11
  %35 = ptrtoint ptr %arrayidx3.11 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %arrayidx3.11, align 4
  %arrayidx.12 = getelementptr %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 1, i32 0, i32 12
  %36 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.12, align 4
  %arrayidx3.12 = getelementptr i32, ptr %spec.select, i32 12
  %38 = ptrtoint ptr %arrayidx3.12 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %arrayidx3.12, align 4
  %arrayidx.13 = getelementptr %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 1, i32 0, i32 13
  %39 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.13, align 4
  %arrayidx3.13 = getelementptr i32, ptr %spec.select, i32 13
  %41 = ptrtoint ptr %arrayidx3.13 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %arrayidx3.13, align 4
  %arrayidx4 = getelementptr ptr, ptr %tb, i32 1
  %42 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx4, align 4
  %tobool5.not = icmp eq ptr %43, null
  br i1 %tobool5.not, label %entry.if.end10_crit_edge, label %if.then6

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i = getelementptr i8, ptr %43, i32 4
  %44 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %add.ptr.i.i, align 4
  %mul = mul i32 %45, 100
  %46 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %mul, ptr %arrayidx3.1, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %entry.if.end10_crit_edge
  %arrayidx11 = getelementptr ptr, ptr %tb, i32 2
  %47 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx11, align 4
  %tobool12.not = icmp eq ptr %48, null
  br i1 %tobool12.not, label %if.end10.if.end18_crit_edge, label %if.then13

if.end10.if.end18_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i142 = getelementptr i8, ptr %48, i32 4
  %49 = ptrtoint ptr %add.ptr.i.i142 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %add.ptr.i.i142, align 4
  %mul16 = mul i32 %50, 100
  %51 = ptrtoint ptr %arrayidx3.2 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %mul16, ptr %arrayidx3.2, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then13, %if.end10.if.end18_crit_edge
  %arrayidx19 = getelementptr ptr, ptr %tb, i32 3
  %52 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx19, align 4
  %tobool20.not = icmp eq ptr %53, null
  br i1 %tobool20.not, label %if.end18.if.end26_crit_edge, label %if.then21

if.end18.if.end26_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i143 = getelementptr i8, ptr %53, i32 4
  %54 = ptrtoint ptr %add.ptr.i.i143 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %add.ptr.i.i143, align 4
  %mul24 = mul i32 %55, 100
  %56 = ptrtoint ptr %arrayidx3.3 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %mul24, ptr %arrayidx3.3, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then21, %if.end18.if.end26_crit_edge
  %arrayidx27 = getelementptr ptr, ptr %tb, i32 4
  %57 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx27, align 4
  %tobool28.not = icmp eq ptr %58, null
  br i1 %tobool28.not, label %if.end26.if.end34_crit_edge, label %if.then29

if.end26.if.end34_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i144 = getelementptr i8, ptr %58, i32 4
  %59 = ptrtoint ptr %add.ptr.i.i144 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %add.ptr.i.i144, align 4
  %mul32 = mul i32 %60, 100
  %61 = ptrtoint ptr %arrayidx3.4 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %mul32, ptr %arrayidx3.4, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then29, %if.end26.if.end34_crit_edge
  %arrayidx35 = getelementptr ptr, ptr %tb, i32 5
  %62 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx35, align 4
  %tobool36.not = icmp eq ptr %63, null
  br i1 %tobool36.not, label %if.end34.if.end42_crit_edge, label %if.then37

if.end34.if.end42_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i145 = getelementptr i8, ptr %63, i32 4
  %64 = ptrtoint ptr %add.ptr.i.i145 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %add.ptr.i.i145, align 4
  %mul40 = mul i32 %65, 100
  %66 = ptrtoint ptr %arrayidx3.5 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %mul40, ptr %arrayidx3.5, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then37, %if.end34.if.end42_crit_edge
  %arrayidx43 = getelementptr ptr, ptr %tb, i32 6
  %67 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx43, align 4
  %tobool44.not = icmp eq ptr %68, null
  br i1 %tobool44.not, label %if.end42.if.end50_crit_edge, label %if.then45

if.end42.if.end50_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i146 = getelementptr i8, ptr %68, i32 4
  %69 = ptrtoint ptr %add.ptr.i.i146 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %add.ptr.i.i146, align 4
  %mul48 = mul i32 %70, 100
  %71 = ptrtoint ptr %arrayidx3.6 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %mul48, ptr %arrayidx3.6, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then45, %if.end42.if.end50_crit_edge
  %arrayidx51 = getelementptr ptr, ptr %tb, i32 7
  %72 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx51, align 4
  %tobool52.not = icmp eq ptr %73, null
  br i1 %tobool52.not, label %if.end50.if.end58_crit_edge, label %if.then53

if.end50.if.end58_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58

if.then53:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i147 = getelementptr i8, ptr %73, i32 4
  %74 = ptrtoint ptr %add.ptr.i.i147 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %add.ptr.i.i147, align 4
  %mul56 = mul i32 %75, 100
  %76 = ptrtoint ptr %arrayidx3.7 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %mul56, ptr %arrayidx3.7, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then53, %if.end50.if.end58_crit_edge
  %arrayidx59 = getelementptr ptr, ptr %tb, i32 8
  %77 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx59, align 4
  %tobool60.not = icmp eq ptr %78, null
  br i1 %tobool60.not, label %if.end58.if.end66_crit_edge, label %if.then61

if.end58.if.end66_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

if.then61:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i148 = getelementptr i8, ptr %78, i32 4
  %79 = ptrtoint ptr %add.ptr.i.i148 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %add.ptr.i.i148, align 4
  %mul64 = mul i32 %80, 100
  %81 = ptrtoint ptr %arrayidx3.8 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %mul64, ptr %arrayidx3.8, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.then61, %if.end58.if.end66_crit_edge
  %arrayidx67 = getelementptr ptr, ptr %tb, i32 9
  %82 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx67, align 4
  %tobool68.not = icmp eq ptr %83, null
  br i1 %tobool68.not, label %if.end66.if.end74_crit_edge, label %if.then69

if.end66.if.end74_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74

if.then69:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i149 = getelementptr i8, ptr %83, i32 4
  %84 = ptrtoint ptr %add.ptr.i.i149 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %add.ptr.i.i149, align 4
  %mul72 = mul i32 %85, 100
  %86 = ptrtoint ptr %arrayidx3.9 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %mul72, ptr %arrayidx3.9, align 4
  br label %if.end74

if.end74:                                         ; preds = %if.then69, %if.end66.if.end74_crit_edge
  %arrayidx75 = getelementptr ptr, ptr %tb, i32 10
  %87 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx75, align 4
  %tobool76.not = icmp eq ptr %88, null
  br i1 %tobool76.not, label %if.end74.if.end82_crit_edge, label %if.then77

if.end74.if.end82_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end82

if.then77:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i150 = getelementptr i8, ptr %88, i32 4
  %89 = ptrtoint ptr %add.ptr.i.i150 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %add.ptr.i.i150, align 4
  %mul80 = mul i32 %90, 100
  %91 = ptrtoint ptr %arrayidx3.12 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %mul80, ptr %arrayidx3.12, align 4
  br label %if.end82

if.end82:                                         ; preds = %if.then77, %if.end74.if.end82_crit_edge
  %arrayidx83 = getelementptr ptr, ptr %tb, i32 11
  %92 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %arrayidx83, align 4
  %tobool84.not = icmp eq ptr %93, null
  br i1 %tobool84.not, label %if.end82.if.end90_crit_edge, label %if.then85

if.end82.if.end90_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end90

if.then85:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i151 = getelementptr i8, ptr %93, i32 4
  %94 = ptrtoint ptr %add.ptr.i.i151 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %add.ptr.i.i151, align 4
  %mul88 = mul i32 %95, 100
  %96 = ptrtoint ptr %arrayidx3.13 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %mul88, ptr %arrayidx3.13, align 4
  br label %if.end90

if.end90:                                         ; preds = %if.then85, %if.end82.if.end90_crit_edge
  %97 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx3.1, align 4
  %99 = ptrtoint ptr %spec.select to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %spec.select, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcp_timeout_obj_to_nlattr(ptr noundef %skb, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  %tmp.i88 = alloca i32, align 4
  %tmp.i86 = alloca i32, align 4
  %tmp.i84 = alloca i32, align 4
  %tmp.i82 = alloca i32, align 4
  %tmp.i80 = alloca i32, align 4
  %tmp.i78 = alloca i32, align 4
  %tmp.i76 = alloca i32, align 4
  %tmp.i74 = alloca i32, align 4
  %tmp.i72 = alloca i32, align 4
  %tmp.i70 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %div = udiv i32 %1, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #9
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %div, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.nla_put_failure_crit_edge

entry.nla_put_failure_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %nla_put_failure

lor.lhs.false:                                    ; preds = %entry
  %arrayidx1 = getelementptr i32, ptr %data, i32 2
  %3 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx1, align 4
  %div2 = udiv i32 %4, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i70) #9
  %5 = ptrtoint ptr %tmp.i70 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %div2, ptr %tmp.i70, align 4
  %call.i71 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i70) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i70) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i71)
  %tobool4.not = icmp eq i32 %call.i71, 0
  br i1 %tobool4.not, label %lor.lhs.false5, label %lor.lhs.false.nla_put_failure_crit_edge

lor.lhs.false.nla_put_failure_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %nla_put_failure

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %arrayidx6 = getelementptr i32, ptr %data, i32 3
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx6, align 4
  %div7 = udiv i32 %7, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i72) #9
  %8 = ptrtoint ptr %tmp.i72 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %div7, ptr %tmp.i72, align 4
  %call.i73 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i72) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i72) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i73)
  %tobool9.not = icmp eq i32 %call.i73, 0
  br i1 %tobool9.not, label %lor.lhs.false10, label %lor.lhs.false5.nla_put_failure_crit_edge

lor.lhs.false5.nla_put_failure_crit_edge:         ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #11
  br label %nla_put_failure

lor.lhs.false10:                                  ; preds = %lor.lhs.false5
  %arrayidx11 = getelementptr i32, ptr %data, i32 4
  %9 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx11, align 4
  %div12 = udiv i32 %10, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i74) #9
  %11 = ptrtoint ptr %tmp.i74 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %div12, ptr %tmp.i74, align 4
  %call.i75 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i74) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i74) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75)
  %tobool14.not = icmp eq i32 %call.i75, 0
  br i1 %tobool14.not, label %lor.lhs.false15, label %lor.lhs.false10.nla_put_failure_crit_edge

lor.lhs.false10.nla_put_failure_crit_edge:        ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #11
  br label %nla_put_failure

lor.lhs.false15:                                  ; preds = %lor.lhs.false10
  %arrayidx16 = getelementptr i32, ptr %data, i32 5
  %12 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx16, align 4
  %div17 = udiv i32 %13, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i76) #9
  %14 = ptrtoint ptr %tmp.i76 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %div17, ptr %tmp.i76, align 4
  %call.i77 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %tmp.i76) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i76) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i77)
  %tobool19.not = icmp eq i32 %call.i77, 0
  br i1 %tobool19.not, label %lor.lhs.false20, label %lor.lhs.false15.nla_put_failure_crit_edge

lor.lhs.false15.nla_put_failure_crit_edge:        ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #11
  br label %nla_put_failure

lor.lhs.false20:                                  ; preds = %lor.lhs.false15
  %arrayidx21 = getelementptr i32, ptr %data, i32 6
  %15 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx21, align 4
  %div22 = udiv i32 %16, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i78) #9
  %17 = ptrtoint ptr %tmp.i78 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %div22, ptr %tmp.i78, align 4
  %call.i79 = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %tmp.i78) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i78) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i79)
  %tobool24.not = icmp eq i32 %call.i79, 0
  br i1 %tobool24.not, label %lor.lhs.false25, label %lor.lhs.false20.nla_put_failure_crit_edge

lor.lhs.false20.nla_put_failure_crit_edge:        ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #11
  br label %nla_put_failure

lor.lhs.false25:                                  ; preds = %lor.lhs.false20
  %arrayidx26 = getelementptr i32, ptr %data, i32 7
  %18 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx26, align 4
  %div27 = udiv i32 %19, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i80) #9
  %20 = ptrtoint ptr %tmp.i80 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %div27, ptr %tmp.i80, align 4
  %call.i81 = call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef 4, ptr noundef nonnull %tmp.i80) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i80) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i81)
  %tobool29.not = icmp eq i32 %call.i81, 0
  br i1 %tobool29.not, label %lor.lhs.false30, label %lor.lhs.false25.nla_put_failure_crit_edge

lor.lhs.false25.nla_put_failure_crit_edge:        ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #11
  br label %nla_put_failure

lor.lhs.false30:                                  ; preds = %lor.lhs.false25
  %arrayidx31 = getelementptr i32, ptr %data, i32 8
  %21 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx31, align 4
  %div32 = udiv i32 %22, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i82) #9
  %23 = ptrtoint ptr %tmp.i82 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %div32, ptr %tmp.i82, align 4
  %call.i83 = call i32 @nla_put(ptr noundef %skb, i32 noundef 8, i32 noundef 4, ptr noundef nonnull %tmp.i82) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i82) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i83)
  %tobool34.not = icmp eq i32 %call.i83, 0
  br i1 %tobool34.not, label %lor.lhs.false35, label %lor.lhs.false30.nla_put_failure_crit_edge

lor.lhs.false30.nla_put_failure_crit_edge:        ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_pc() #11
  br label %nla_put_failure

lor.lhs.false35:                                  ; preds = %lor.lhs.false30
  %arrayidx36 = getelementptr i32, ptr %data, i32 9
  %24 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx36, align 4
  %div37 = udiv i32 %25, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i84) #9
  %26 = ptrtoint ptr %tmp.i84 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %div37, ptr %tmp.i84, align 4
  %call.i85 = call i32 @nla_put(ptr noundef %skb, i32 noundef 9, i32 noundef 4, ptr noundef nonnull %tmp.i84) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i84) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i85)
  %tobool39.not = icmp eq i32 %call.i85, 0
  br i1 %tobool39.not, label %lor.lhs.false40, label %lor.lhs.false35.nla_put_failure_crit_edge

lor.lhs.false35.nla_put_failure_crit_edge:        ; preds = %lor.lhs.false35
  call void @__sanitizer_cov_trace_pc() #11
  br label %nla_put_failure

lor.lhs.false40:                                  ; preds = %lor.lhs.false35
  %arrayidx41 = getelementptr i32, ptr %data, i32 12
  %27 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx41, align 4
  %div42 = udiv i32 %28, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i86) #9
  %29 = ptrtoint ptr %tmp.i86 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %div42, ptr %tmp.i86, align 4
  %call.i87 = call i32 @nla_put(ptr noundef %skb, i32 noundef 10, i32 noundef 4, ptr noundef nonnull %tmp.i86) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i86) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i87)
  %tobool44.not = icmp eq i32 %call.i87, 0
  br i1 %tobool44.not, label %lor.lhs.false45, label %lor.lhs.false40.nla_put_failure_crit_edge

lor.lhs.false40.nla_put_failure_crit_edge:        ; preds = %lor.lhs.false40
  call void @__sanitizer_cov_trace_pc() #11
  br label %nla_put_failure

lor.lhs.false45:                                  ; preds = %lor.lhs.false40
  %arrayidx46 = getelementptr i32, ptr %data, i32 13
  %30 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx46, align 4
  %div47 = udiv i32 %31, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i88) #9
  %32 = ptrtoint ptr %tmp.i88 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %div47, ptr %tmp.i88, align 4
  %call.i89 = call i32 @nla_put(ptr noundef %skb, i32 noundef 11, i32 noundef 4, ptr noundef nonnull %tmp.i88) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i88) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i89)
  %tobool49.not = icmp eq i32 %call.i89, 0
  br i1 %tobool49.not, label %lor.lhs.false45.cleanup_crit_edge, label %lor.lhs.false45.nla_put_failure_crit_edge

lor.lhs.false45.nla_put_failure_crit_edge:        ; preds = %lor.lhs.false45
  call void @__sanitizer_cov_trace_pc() #11
  br label %nla_put_failure

lor.lhs.false45.cleanup_crit_edge:                ; preds = %lor.lhs.false45
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

nla_put_failure:                                  ; preds = %lor.lhs.false45.nla_put_failure_crit_edge, %lor.lhs.false40.nla_put_failure_crit_edge, %lor.lhs.false35.nla_put_failure_crit_edge, %lor.lhs.false30.nla_put_failure_crit_edge, %lor.lhs.false25.nla_put_failure_crit_edge, %lor.lhs.false20.nla_put_failure_crit_edge, %lor.lhs.false15.nla_put_failure_crit_edge, %lor.lhs.false10.nla_put_failure_crit_edge, %lor.lhs.false5.nla_put_failure_crit_edge, %lor.lhs.false.nla_put_failure_crit_edge, %entry.nla_put_failure_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %nla_put_failure, %lor.lhs.false45.cleanup_crit_edge
  %retval.0 = phi i32 [ -28, %nla_put_failure ], [ 0, %lor.lhs.false45.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcp_print_conntrack(ptr noundef %s, ptr noundef %ct) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 5
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %status, align 4
  %2 = and i32 %1, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %state = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 1, i32 24
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %state, align 8
  %idxprom = zext i8 %4 to i32
  %arrayidx = getelementptr [10 x ptr], ptr @tcp_conntrack_names, i32 0, i32 %idxprom
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.42, ptr noundef %6) #9
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nf_checksum(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @nf_l4proto_log_invalid(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nf_ct_delete(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_ct_seq_offset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__nf_ct_refresh_acct(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_policy_len(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !13, !15, !17, !19, !20, !22, !23, !25, !27, !29, !31, !33, !35, !37, !38, !39, !41, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !69, !70, !72, !73, !75, !76, !78, !79, !81, !83, !85, !87, !88, !90, !92, !94, !96, !98, !100, !101, !103, !104, !105, !107, !109, !111, !113}
!llvm.module.flags = !{!115, !116, !117, !118, !119, !120, !121, !122}
!llvm.ident = !{!123}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/netfilter/nf_conntrack_proto_tcp.c", i32 1014, i32 8}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/netfilter/nf_conntrack_proto_tcp.c", i32 1029, i32 4}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @nf_conntrack_tcp_packet.__UNIQUE_ID_ddebug712, !3, !"__UNIQUE_ID_ddebug712", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/netfilter/nf_conntrack_proto_tcp.c", i32 1035, i32 3}
!10 = !{ptr @nf_conntrack_tcp_packet.__UNIQUE_ID_ddebug713, !9, !"__UNIQUE_ID_ddebug713", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../net/netfilter/nf_conntrack_proto_tcp.c", i32 1038, i32 45}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/netfilter/nf_conntrack_proto_tcp.c", i32 1053, i32 46}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/netfilter/nf_conntrack_proto_tcp.c", i32 1098, i32 47}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/netfilter/nf_conntrack_proto_tcp.c", i32 1152, i32 2}
!19 = !{ptr @nf_conntrack_tcp_packet.__UNIQUE_ID_ddebug714, !18, !"__UNIQUE_ID_ddebug714", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../net/netfilter/nf_conntrack_proto_tcp.c", i32 1154, i32 2}
!22 = !{ptr @nf_conntrack_tcp_packet.__UNIQUE_ID_ddebug715, !21, !"__UNIQUE_ID_ddebug715", i1 false, i1 false}
!23 = !{ptr @nf_conntrack_l4proto_tcp, !24, !"nf_conntrack_l4proto_tcp", i1 false, i1 false}
!24 = !{!"../net/netfilter/nf_conntrack_proto_tcp.c", i32 1507, i32 35}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../net/netfilter/nf_conntrack_proto_tcp.c", i32 751, i32 29}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../net/netfilter/nf_conntrack_proto_tcp.c", i32 763, i32 29}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../net/netfilter/nf_conntrack_proto_tcp.c", i32 770, i32 29}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../net/netfilter/nf_conntrack_proto_tcp.c", i32 737, i32 50}
!33 = !{ptr @tcp_valid_flags, !34, !"tcp_valid_flags", i1 false, i1 false}
!34 = !{!"../net/netfilter/nf_conntrack_proto_tcp.c", i32 719, i32 17}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../net/netfilter/nf_conntrack_proto_tcp.c", i32 792, i32 3}
!37 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @tcp_new.__UNIQUE_ID_ddebug710, !36, !"__UNIQUE_ID_ddebug710", i1 false, i1 false}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../net/netfilter/nf_conntrack_proto_tcp.c", i32 839, i32 2}
!41 = !{ptr @tcp_new.__UNIQUE_ID_ddebug711, !40, !"__UNIQUE_ID_ddebug711", i1 false, i1 false}
!42 = !{ptr @tcp_conntracks, !43, !"tcp_conntracks", i1 false, i1 false}
!43 = !{!"../net/netfilter/nf_conntrack_proto_tcp.c", i32 128, i32 17}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../net/netfilter/nf_conntrack_proto_tcp.c", i32 38, i32 2}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../net/netfilter/nf_conntrack_proto_tcp.c", i32 39, i32 2}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../net/netfilter/nf_conntrack_proto_tcp.c", i32 40, i32 2}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../net/netfilter/nf_conntrack_proto_tcp.c", i32 41, i32 2}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../net/netfilter/nf_conntrack_proto_tcp.c", i32 42, i32 2}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../net/netfilter/nf_conntrack_proto_tcp.c", i32 43, i32 2}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../net/netfilter/nf_conntrack_proto_tcp.c", i32 44, i32 2}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../net/netfilter/nf_conntrack_proto_tcp.c", i32 45, i32 2}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../net/netfilter/nf_conntrack_proto_tcp.c", i32 46, i32 2}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../net/netfilter/nf_conntrack_proto_tcp.c", i32 47, i32 2}
!64 = !{ptr @tcp_conntrack_names, !65, !"tcp_conntrack_names", i1 false, i1 false}
!65 = !{!"../net/netfilter/nf_conntrack_proto_tcp.c", i32 37, i32 26}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../net/netfilter/nf_conntrack_proto_tcp.c", i32 511, i32 2}
!68 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @tcp_in_window.__UNIQUE_ID_ddebug701, !67, !"__UNIQUE_ID_ddebug701", i1 false, i1 false}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../net/netfilter/nf_conntrack_proto_tcp.c", i32 512, i32 2}
!72 = !{ptr @tcp_in_window.__UNIQUE_ID_ddebug702, !71, !"__UNIQUE_ID_ddebug702", i1 false, i1 false}
!73 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../net/netfilter/nf_conntrack_proto_tcp.c", i32 514, i32 2}
!75 = !{ptr @tcp_in_window.__UNIQUE_ID_ddebug703, !74, !"__UNIQUE_ID_ddebug703", i1 false, i1 false}
!76 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../net/netfilter/nf_conntrack_proto_tcp.c", i32 516, i32 2}
!78 = !{ptr @tcp_in_window.__UNIQUE_ID_ddebug704, !77, !"__UNIQUE_ID_ddebug704", i1 false, i1 false}
!79 = !{ptr @tcp_in_window.__UNIQUE_ID_ddebug705, !80, !"__UNIQUE_ID_ddebug705", i1 false, i1 false}
!80 = !{!"../net/netfilter/nf_conntrack_proto_tcp.c", i32 609, i32 2}
!81 = !{ptr @tcp_in_window.__UNIQUE_ID_ddebug706, !82, !"__UNIQUE_ID_ddebug706", i1 false, i1 false}
!82 = !{!"../net/netfilter/nf_conntrack_proto_tcp.c", i32 611, i32 2}
!83 = !{ptr @tcp_in_window.__UNIQUE_ID_ddebug707, !84, !"__UNIQUE_ID_ddebug707", i1 false, i1 false}
!84 = !{!"../net/netfilter/nf_conntrack_proto_tcp.c", i32 613, i32 2}
!85 = !{ptr @.str.33, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../net/netfilter/nf_conntrack_proto_tcp.c", i32 624, i32 2}
!87 = !{ptr @tcp_in_window.__UNIQUE_ID_ddebug708, !86, !"__UNIQUE_ID_ddebug708", i1 false, i1 false}
!88 = !{ptr @.str.34, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../net/netfilter/nf_conntrack_proto_tcp.c", i32 702, i32 63}
!90 = !{ptr @.str.35, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../net/netfilter/nf_conntrack_proto_tcp.c", i32 703, i32 6}
!92 = !{ptr @.str.36, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../net/netfilter/nf_conntrack_proto_tcp.c", i32 704, i32 6}
!94 = !{ptr @.str.37, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../net/netfilter/nf_conntrack_proto_tcp.c", i32 705, i32 6}
!96 = !{ptr @.str.38, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../net/netfilter/nf_conntrack_proto_tcp.c", i32 706, i32 6}
!98 = !{ptr @.str.39, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../net/netfilter/nf_conntrack_proto_tcp.c", i32 710, i32 2}
!100 = !{ptr @tcp_in_window.__UNIQUE_ID_ddebug709, !99, !"__UNIQUE_ID_ddebug709", i1 false, i1 false}
!101 = distinct !{null, !102, !"__warned", i1 false, i1 false}
!102 = !{!"../include/net/netfilter/nf_conntrack_timeout.h", i32 38, i32 12}
!103 = !{ptr @.str.40, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.41, !102, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @tcp_timeouts, !106, !"tcp_timeouts", i1 false, i1 false}
!106 = !{!"../net/netfilter/nf_conntrack_proto_tcp.c", i32 55, i32 27}
!107 = !{ptr @tcp_nla_policy, !108, !"tcp_nla_policy", i1 false, i1 false}
!108 = !{!"../net/netfilter/nf_conntrack_proto_tcp.c", i32 1275, i32 32}
!109 = !{ptr @tcp_nlattr_tuple_size.size, !110, !"size", i1 false, i1 false}
!110 = !{!"../net/netfilter/nf_conntrack_proto_tcp.c", i32 1343, i32 22}
!111 = !{ptr @tcp_timeout_nla_policy, !112, !"tcp_timeout_nla_policy", i1 false, i1 false}
!112 = !{!"../net/netfilter/nf_conntrack_proto_tcp.c", i32 1454, i32 32}
!113 = !{ptr @.str.42, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../net/netfilter/nf_conntrack_proto_tcp.c", i32 265, i32 16}
!115 = !{i32 1, !"wchar_size", i32 2}
!116 = !{i32 1, !"min_enum_size", i32 4}
!117 = !{i32 8, !"branch-target-enforcement", i32 0}
!118 = !{i32 8, !"sign-return-address", i32 0}
!119 = !{i32 8, !"sign-return-address-all", i32 0}
!120 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!121 = !{i32 7, !"uwtable", i32 1}
!122 = !{i32 7, !"frame-pointer", i32 2}
!123 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!124 = !{!"branch_weights", i32 1, i32 2000}
!125 = !{i64 2148921697, i64 2148921702, i64 2148921715, i64 2148921759, i64 2148921793, i64 2148921814}
!126 = !{i32 0, i32 6}
