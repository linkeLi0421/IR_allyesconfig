; ModuleID = '/llk/IR_all_yes/net/netfilter/nf_conntrack_proto_sctp.c_pt.bc'
source_filename = "../net/netfilter/nf_conntrack_proto_sctp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.nla_policy = type { i8, i8, i16, %union.anon.55 }
%union.anon.55 = type { i32 }
%struct.nf_conntrack_l4proto = type { i8, i8, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.179, ptr }
%struct.anon.179 = type { ptr, ptr, i16, i16, ptr }
%struct.skb_checksum_ops = type { ptr, ptr }
%struct.sctphdr = type { i16, i16, i32, i32 }
%struct.sctp_chunkhdr = type { i8, i8, i16 }
%struct.sctp_inithdr = type { i32, i32, i16, i16, i32, [0 x i8] }
%struct.sk_buff = type { %union.anon.35, %union.anon.38, %union.anon.39, [48 x i8], %union.anon.40, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.42, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.35 = type { %struct.anon.36 }
%struct.anon.36 = type { ptr, ptr, %union.anon.37 }
%union.anon.37 = type { ptr }
%union.anon.38 = type { ptr }
%union.anon.39 = type { i64 }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { i32, ptr }
%union.anon.42 = type { %struct.anon.43 }
%struct.anon.43 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.44, i32, i32, i32, i16, i16, %union.anon.46, i32, %union.anon.47, %union.anon.48, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.44 = type { i32 }
%union.anon.46 = type { i32 }
%union.anon.47 = type { i32 }
%union.anon.48 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.135, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.135 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.125, i32, %struct.spinlock }
%union.anon.125 = type { %struct.anon.126 }
%struct.anon.126 = type { ptr, ptr }
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
%struct.nf_conn = type { %struct.nf_conntrack, %struct.spinlock, i32, %struct.nf_conntrack_zone, [2 x %struct.nf_conntrack_tuple_hash], i32, i16, %struct.possible_net_t, %struct.hlist_node, %struct.anon.142, ptr, i32, i32, ptr, %union.nf_conntrack_proto }
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
%struct.anon.142 = type {}
%union.nf_conntrack_proto = type { %struct.nf_ct_dccp, [48 x i8] }
%struct.nf_ct_dccp = type { [2 x i8], i8, i8, i8, i64 }
%struct.ip_ct_sctp = type { i32, [2 x i32], i8, i8 }
%struct.nf_ct_timeout = type { i16, ptr, [0 x i8] }

@nf_conntrack_sctp_packet.__UNIQUE_ID_ddebug624 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 101, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nf_conntrack\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nf_conntrack_sctp_packet\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"net/netfilter/nf_conntrack_proto_sctp.c\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Verification tag check failed\0A\00", [33 x i8] zeroinitializer }, align 32
@nf_conntrack_sctp_packet.__UNIQUE_ID_ddebug625 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 108, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Setting %d vtag %x for dir %d\0A\00", [33 x i8] zeroinitializer }, align 32
@nf_conntrack_sctp_packet.__UNIQUE_ID_ddebug626 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 112, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Setting vtag %x for dir %d\0A\00", [36 x i8] zeroinitializer }, align 32
@nf_conntrack_sctp_packet.__UNIQUE_ID_ddebug627 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 119, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"nf_conntrack_sctp: Invalid dir=%i ctype=%u conntrack=%u\0A\00", [39 x i8] zeroinitializer }, align 32
@nf_conntrack_sctp_packet.__UNIQUE_ID_ddebug628 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 122, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@nf_conntrack_sctp_packet.__UNIQUE_ID_ddebug629 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 0, i8 -126, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Setting assured bit\0A\00", [43 x i8] zeroinitializer }, align 32
@sctp_timeouts = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 0, i32 1000, i32 300, i32 300, i32 43200000, i32 30, i32 30, i32 300, i32 3000, i32 21000], [56 x i8] zeroinitializer }, align 32
@nf_ct_port_nla_policy = external dso_local constant [0 x %struct.nla_policy], align 4
@sctp_timeout_nla_policy = internal constant { [10 x %struct.nla_policy], [48 x i8] } { [10 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.55 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.55 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.55 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.55 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.55 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.55 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.55 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.55 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.55 zeroinitializer }], [48 x i8] zeroinitializer }, align 32
@nf_conntrack_l4proto_sctp = dso_local constant { %struct.nf_conntrack_l4proto, [44 x i8] } { %struct.nf_conntrack_l4proto { i8 -124, i8 0, i16 24, ptr @sctp_can_early_drop, ptr @sctp_to_nlattr, ptr @nlattr_to_sctp, ptr @nf_ct_port_tuple_to_nlattr, ptr @nf_ct_port_nlattr_tuple_size, ptr @nf_ct_port_nlattr_to_tuple, ptr @nf_ct_port_nla_policy, %struct.anon.179 { ptr @sctp_timeout_nlattr_to_obj, ptr @sctp_timeout_obj_to_nlattr, i16 40, i16 9, ptr @sctp_timeout_nla_policy }, ptr @sctp_print_conntrack }, [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"nf_ct_sctp: short packet \00", [38 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"nf_ct_sctp: failed to read header \00", [61 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nf_ct_sctp: bad CRC \00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@sctp_csum_ops = internal constant { %struct.skb_checksum_ops, [24 x i8] } { %struct.skb_checksum_ops { ptr @sctp_csum_update, ptr @sctp_csum_combine }, [24 x i8] zeroinitializer }, align 32
@do_basic_checks.__UNIQUE_ID_ddebug603 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 0, i8 43, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"do_basic_checks\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Chunk Num: %d  Type: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@do_basic_checks.__UNIQUE_ID_ddebug604 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.14, i8 0, i8 47, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Basic checks failed\0A\00", [43 x i8] zeroinitializer }, align 32
@do_basic_checks.__UNIQUE_ID_ddebug605 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.15, i8 0, i8 49, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Basic checks passed\0A\00", [43 x i8] zeroinitializer }, align 32
@sctp_new.__UNIQUE_ID_ddebug620 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 0, i8 72, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sctp_new\00", [23 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"nf_conntrack_sctp: invalid new deleting.\0A\00", [54 x i8] zeroinitializer }, align 32
@sctp_new.__UNIQUE_ID_ddebug621 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.18, i8 0, i8 76, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Setting vtag %x for new conn\0A\00", [34 x i8] zeroinitializer }, align 32
@sctp_new.__UNIQUE_ID_ddebug622 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.19, i8 0, i8 77, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Setting vtag %x for secondary conntrack\0A\00", [55 x i8] zeroinitializer }, align 32
@sctp_new.__UNIQUE_ID_ddebug623 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.20, i8 0, i8 79, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Setting vtag %x for new conn OOTB\0A\00", [61 x i8] zeroinitializer }, align 32
@sctp_new_state.__UNIQUE_ID_ddebug606 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.22, i8 0, i8 52, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sctp_new_state\00", [17 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Chunk type: %d\0A\00", [16 x i8] zeroinitializer }, align 32
@sctp_new_state.__UNIQUE_ID_ddebug607 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.23, i8 0, i8 53, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SCTP_CID_INIT\0A\00", [17 x i8] zeroinitializer }, align 32
@sctp_new_state.__UNIQUE_ID_ddebug608 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.24, i8 0, i8 54, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SCTP_CID_INIT_ACK\0A\00", [45 x i8] zeroinitializer }, align 32
@sctp_new_state.__UNIQUE_ID_ddebug609 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.25, i8 0, i8 55, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SCTP_CID_ABORT\0A\00", [16 x i8] zeroinitializer }, align 32
@sctp_new_state.__UNIQUE_ID_ddebug610 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.26, i8 0, i8 56, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SCTP_CID_SHUTDOWN\0A\00", [45 x i8] zeroinitializer }, align 32
@sctp_new_state.__UNIQUE_ID_ddebug611 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.27, i8 0, i8 57, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SCTP_CID_SHUTDOWN_ACK\0A\00", [41 x i8] zeroinitializer }, align 32
@sctp_new_state.__UNIQUE_ID_ddebug612 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.28, i8 0, i8 58, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SCTP_CID_ERROR\0A\00", [16 x i8] zeroinitializer }, align 32
@sctp_new_state.__UNIQUE_ID_ddebug613 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.29, i8 0, i8 59, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SCTP_CID_COOKIE_ECHO\0A\00", [42 x i8] zeroinitializer }, align 32
@sctp_new_state.__UNIQUE_ID_ddebug614 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.30, i8 0, i8 60, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SCTP_CID_COOKIE_ACK\0A\00", [43 x i8] zeroinitializer }, align 32
@sctp_new_state.__UNIQUE_ID_ddebug615 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.31, i8 0, i8 61, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"SCTP_CID_SHUTDOWN_COMPLETE\0A\00", [36 x i8] zeroinitializer }, align 32
@sctp_new_state.__UNIQUE_ID_ddebug616 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.32, i8 0, i8 62, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SCTP_CID_HEARTBEAT\00", [45 x i8] zeroinitializer }, align 32
@sctp_new_state.__UNIQUE_ID_ddebug617 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.33, i8 0, i8 63, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SCTP_CID_HEARTBEAT_ACK\00", [41 x i8] zeroinitializer }, align 32
@sctp_new_state.__UNIQUE_ID_ddebug618 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.34, i8 0, i8 64, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Unknown chunk type, Will stay in %s\0A\00", [59 x i8] zeroinitializer }, align 32
@sctp_conntrack_names = internal constant { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45], [56 x i8] zeroinitializer }, align 32
@sctp_new_state.__UNIQUE_ID_ddebug619 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.35, i8 0, i8 66, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"dir: %d   cur_state: %s  chunk_type: %d  new_state: %s\0A\00", [40 x i8] zeroinitializer }, align 32
@sctp_conntracks = internal constant { [2 x [11 x [10 x i8]]], [36 x i8] } { [2 x [11 x [10 x i8]]] [[11 x [10 x i8]] [[10 x i8] c"\01\01\02\03\04\05\06\07\02\09", [10 x i8] c"\01\01\02\03\04\05\06\07\01\09", [10 x i8] c"\01\01\01\01\01\01\01\01\01\01", [10 x i8] c"\01\01\02\03\05\05\06\07\01\05", [10 x i8] c"\07\01\02\03\04\07\07\07\07\09", [10 x i8] c"\01\01\02\03\04\05\06\07\01\09", [10 x i8] c"\01\01\03\03\04\05\06\07\01\09", [10 x i8] c"\01\01\02\03\04\05\06\07\01\09", [10 x i8] c"\01\01\02\03\04\05\06\01\01\09", [10 x i8] c"\08\01\02\03\04\05\06\07\08\09", [10 x i8] c"\01\01\02\03\04\05\06\07\08\09"], [11 x [10 x i8]] [[10 x i8] c"\0A\01\02\03\04\05\06\07\0A\09", [10 x i8] c"\0A\02\02\03\04\05\06\07\0A\09", [10 x i8] c"\0A\01\01\01\01\01\01\01\0A\01", [10 x i8] c"\0A\01\02\03\06\05\06\07\0A\06", [10 x i8] c"\0A\01\02\03\04\07\07\07\0A\09", [10 x i8] c"\0A\01\02\01\04\05\06\07\0A\09", [10 x i8] c"\0A\01\02\03\04\05\06\07\0A\09", [10 x i8] c"\0A\01\02\04\04\05\06\07\0A\09", [10 x i8] c"\0A\01\02\03\04\05\06\01\0A\09", [10 x i8] c"\0A\01\02\03\04\05\06\07\08\09", [10 x i8] c"\0A\01\02\03\04\05\06\07\09\09"]], [36 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NONE\00", [27 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CLOSED\00", [25 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"COOKIE_WAIT\00", [20 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"COOKIE_ECHOED\00", [18 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ESTABLISHED\00", [20 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SHUTDOWN_SENT\00", [18 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SHUTDOWN_RECD\00", [18 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SHUTDOWN_ACK_SENT\00", [46 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"HEARTBEAT_SENT\00", [17 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"HEARTBEAT_ACKED\00", [16 x i8] zeroinitializer }, align 32
@nf_ct_timeout_data.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.46 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"include/net/netfilter/nf_conntrack_timeout.h\00", [51 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@sctp_nla_policy = internal constant { [4 x %struct.nla_policy], [32 x i8] } { [4 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.55 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.55 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.55 zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s \00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 4, i64 5, i64 6, i64 10, i64 14]
@__sancov_gen_cov_switch_values.49 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 14]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 10]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 4]
@__sancov_gen_cov_switch_values.52 = internal global [13 x i64] [i64 11, i64 32, i64 1, i64 2, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 14]
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 406, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 435, i32 5 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 450, i32 5 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 474, i32 4 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 522, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant [14 x i8] c"sctp_timeouts\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 53, i32 27 }
@___asan_gen_.80 = private unnamed_addr constant [24 x i8] c"sctp_timeout_nla_policy\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 677, i32 1 }
@___asan_gen_.83 = private unnamed_addr constant [26 x i8] c"nf_conntrack_l4proto_sctp\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 704, i32 35 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 335, i32 12 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 342, i32 13 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 347, i32 13 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 354, i32 51 }
@___asan_gen_.98 = private unnamed_addr constant [14 x i8] c"sctp_csum_ops\00", align 1
@___asan_gen_.99 = private unnamed_addr constant [31 x i8] c"../include/net/sctp/checksum.h\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 46, i32 38 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 175, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 191, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 199, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 289, i32 4 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 305, i32 4 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 310, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 316, i32 4 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 209, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 213, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 217, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 221, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 225, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 229, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 233, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 237, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 241, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 245, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 249, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 253, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 258, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant [21 x i8] c"sctp_conntrack_names\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 35, i32 26 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 263, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant [16 x i8] c"sctp_conntracks\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 115, i32 17 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 36, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 37, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 38, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 39, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 40, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 41, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 42, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 43, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 44, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 45, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant [48 x i8] c"../include/net/netfilter/nf_conntrack_timeout.h\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 38, i32 12 }
@___asan_gen_.215 = private unnamed_addr constant [16 x i8] c"sctp_nla_policy\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 587, i32 32 }
@___asan_gen_.218 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.219 = private constant [43 x i8] c"../net/netfilter/nf_conntrack_proto_sctp.c\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 152, i32 16 }
@llvm.compiler.used = appending global [56 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @sctp_timeouts, ptr @sctp_timeout_nla_policy, ptr @nf_conntrack_l4proto_sctp, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @sctp_csum_ops, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @sctp_conntrack_names, ptr @.str.35, ptr @sctp_conntracks, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @sctp_nla_policy, ptr @.str.48], section "llvm.metadata"
@0 = internal global [56 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_timeouts to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_timeout_nla_policy to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nf_conntrack_l4proto_sctp to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_csum_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_conntrack_names to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_conntracks to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_nla_policy to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nf_conntrack_sctp_packet(ptr noundef %ct, ptr noundef %skb, i32 noundef %dataoff, i32 noundef %ctinfo, ptr noundef %state) local_unnamed_addr #0 align 64 {
entry:
  %_sctph = alloca %struct.sctphdr, align 4
  %_sch = alloca %struct.sctp_chunkhdr, align 4
  %map = alloca [64 x i32], align 4
  %_inithdr = alloca %struct.sctp_inithdr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %ctinfo)
  %cmp = icmp ugt i32 %ctinfo, 2
  %cond = zext i1 %cmp to i32
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %_sctph) #12
  %0 = call ptr @memset(ptr %_sctph, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_sch) #12
  %1 = ptrtoint ptr %_sch to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %_sch, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %map) #12
  %2 = call ptr @memset(ptr %map, i32 0, i32 256)
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %3 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len.i, align 4
  %add.i = add i32 %dataoff, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %add.i)
  %cmp.i = icmp ult i32 %4, %add.i
  br i1 %cmp.i, label %entry.sctp_error.exit_crit_edge, label %if.end.i

entry.sctp_error.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sctp_error.exit

if.end.i:                                         ; preds = %entry
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp1.i = icmp eq i8 %6, 0
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true.i:                                  ; preds = %if.end.i
  %net.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 5
  %7 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %net.i, align 4
  %sysctl_checksum.i = getelementptr inbounds %struct.net, ptr %8, i32 0, i32 40, i32 6
  %9 = ptrtoint ptr %sysctl_checksum.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %sysctl_checksum.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.if.end_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %11 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %12 = and i16 %bf.load.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %cmp6.i = icmp eq i16 %12, 0
  br i1 %cmp6.i, label %if.then8.i, label %land.lhs.true4.i.if.end_crit_edge

land.lhs.true4.i.if.end_crit_edge:                ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then8.i:                                       ; preds = %land.lhs.true4.i
  %call.i = tail call i32 @skb_ensure_writable(ptr noundef %skb, i32 noundef %add.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool10.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.then8.i.sctp_error.exit_crit_edge

if.then8.i.sctp_error.exit_crit_edge:             ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sctp_error.exit

if.end12.i:                                       ; preds = %if.then8.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %13 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 %dataoff
  %checksum.i = getelementptr inbounds %struct.sctphdr, ptr %add.ptr.i, i32 0, i32 3
  %15 = ptrtoint ptr %checksum.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %checksum.i, align 4
  store i32 0, ptr %checksum.i, align 4
  %17 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len.i, align 4
  %sub.i.i = sub i32 %18, %dataoff
  %call.i.i = tail call i32 @__skb_checksum(ptr noundef %skb, i32 noundef %dataoff, i32 noundef %sub.i.i, i32 noundef -1, ptr noundef nonnull @sctp_csum_ops) #12
  %neg.i.i = xor i32 %call.i.i, -1
  %19 = ptrtoint ptr %checksum.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %16, ptr %checksum.i, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %neg.i.i) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %20)
  %cmp14.not.i = icmp eq i32 %16, %20
  br i1 %cmp14.not.i, label %if.end17.i, label %if.end12.i.sctp_error.exit_crit_edge

if.end12.i.sctp_error.exit_crit_edge:             ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sctp_error.exit

if.end17.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %bf.load19.i = load i16, ptr %ip_summed.i, align 8
  %bf.clear20.i = and i16 %bf.load19.i, -1537
  %bf.set.i = or i16 %bf.clear20.i, 512
  store i16 %bf.set.i, ptr %ip_summed.i, align 8
  br label %if.end

sctp_error.exit:                                  ; preds = %if.end12.i.sctp_error.exit_crit_edge, %if.then8.i.sctp_error.exit_crit_edge, %entry.sctp_error.exit_crit_edge
  %logmsg.0.i = phi ptr [ @.str.8, %entry.sctp_error.exit_crit_edge ], [ @.str.9, %if.then8.i.sctp_error.exit_crit_edge ], [ @.str.10, %if.end12.i.sctp_error.exit_crit_edge ]
  tail call void (ptr, ptr, i8, ptr, ...) @nf_l4proto_log_invalid(ptr noundef %skb, ptr noundef %state, i8 noundef zeroext -124, ptr noundef nonnull @.str.11, ptr noundef nonnull %logmsg.0.i) #15
  br label %cleanup441

if.end:                                           ; preds = %if.end17.i, %land.lhs.true4.i.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %22 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %24 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %data_len.i.i, align 8
  %26 = add i32 %25, %dataoff
  %sub.i4.i = sub i32 %23, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %sub.i4.i)
  %cmp.not.i.i = icmp slt i32 %sub.i4.i, 12
  br i1 %cmp.not.i.i, label %if.end.i.i, label %skb_header_pointer.exit, !prof !143

if.end.i.i:                                       ; preds = %if.end
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.cleanup441_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.cleanup441_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup441

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i624 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %dataoff, ptr noundef nonnull %_sctph, i32 noundef 12) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i624)
  %cmp3.i.i = icmp slt i32 %call.i.i624, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.cleanup441_crit_edge, label %lor.lhs.false.i.i.if.end4_crit_edge

lor.lhs.false.i.i.if.end4_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

lor.lhs.false.i.i.cleanup441_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup441

skb_header_pointer.exit:                          ; preds = %if.end
  %data.i623 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %27 = ptrtoint ptr %data.i623 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data.i623, align 4
  %add.ptr.i.i = getelementptr i8, ptr %28, i32 %dataoff
  %cmp2 = icmp eq ptr %add.ptr.i.i, null
  br i1 %cmp2, label %skb_header_pointer.exit.cleanup441_crit_edge, label %skb_header_pointer.exit.if.end4_crit_edge

skb_header_pointer.exit.if.end4_crit_edge:        ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

skb_header_pointer.exit.cleanup441_crit_edge:     ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup441

if.end4:                                          ; preds = %skb_header_pointer.exit.if.end4_crit_edge, %lor.lhs.false.i.i.if.end4_crit_edge
  %retval.0.i.i667 = phi ptr [ %add.ptr.i.i, %skb_header_pointer.exit.if.end4_crit_edge ], [ %_sctph, %lor.lhs.false.i.i.if.end4_crit_edge ]
  %call5 = call fastcc i32 @do_basic_checks(ptr noundef %skb, i32 noundef %dataoff, ptr noundef nonnull %map)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6.not = icmp eq i32 %call5, 0
  br i1 %cmp6.not, label %if.end8, label %if.end4.cleanup441_crit_edge

if.end4.cleanup441_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup441

if.end8:                                          ; preds = %if.end4
  %status.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 5
  %29 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %status.i, align 4
  %31 = and i32 %30, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not = icmp eq i32 %31, 0
  br i1 %tobool.not, label %if.then10, label %if.end8.if.end26_crit_edge

if.end8.if.end26_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.then10:                                        ; preds = %if.end8
  %32 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %map, align 4
  %34 = and i32 %33, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool13.not = icmp eq i32 %34, 0
  br i1 %tobool13.not, label %lor.lhs.false, label %if.then10.cleanup441_crit_edge

if.then10.cleanup441_crit_edge:                   ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup441

lor.lhs.false:                                    ; preds = %if.then10
  %35 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %map, align 4
  %37 = and i32 %36, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool16.not = icmp eq i32 %37, 0
  br i1 %tobool16.not, label %lor.lhs.false17, label %lor.lhs.false.cleanup441_crit_edge

lor.lhs.false.cleanup441_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup441

lor.lhs.false17:                                  ; preds = %lor.lhs.false
  %38 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %map, align 4
  %40 = and i32 %39, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool20.not = icmp eq i32 %40, 0
  br i1 %tobool20.not, label %if.end22, label %lor.lhs.false17.cleanup441_crit_edge

lor.lhs.false17.cleanup441_crit_edge:             ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup441

if.end22:                                         ; preds = %lor.lhs.false17
  %call23 = call fastcc zeroext i1 @sctp_new(ptr noundef %ct, ptr noundef %skb, ptr noundef nonnull %retval.0.i.i667, i32 noundef %dataoff)
  br i1 %call23, label %if.end22.if.end26_crit_edge, label %if.end22.cleanup441_crit_edge

if.end22.cleanup441_crit_edge:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup441

if.end22.if.end26_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.end26:                                         ; preds = %if.end22.if.end26_crit_edge, %if.end8.if.end26_crit_edge
  %41 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %map, align 4
  %43 = and i32 %42, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool29.not = icmp eq i32 %43, 0
  br i1 %tobool29.not, label %land.lhs.true, label %if.end26.if.end63_crit_edge

if.end26.if.end63_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63

land.lhs.true:                                    ; preds = %if.end26
  %44 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %map, align 4
  %46 = and i32 %45, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool32.not = icmp eq i32 %46, 0
  br i1 %tobool32.not, label %land.lhs.true33, label %land.lhs.true.if.end63_crit_edge

land.lhs.true.if.end63_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63

land.lhs.true33:                                  ; preds = %land.lhs.true
  %47 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %map, align 4
  %49 = and i32 %48, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool36.not = icmp eq i32 %49, 0
  br i1 %tobool36.not, label %land.lhs.true37, label %land.lhs.true33.if.end63_crit_edge

land.lhs.true33.if.end63_crit_edge:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63

land.lhs.true37:                                  ; preds = %land.lhs.true33
  %50 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %map, align 4
  %52 = and i32 %51, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool40.not = icmp eq i32 %52, 0
  br i1 %tobool40.not, label %land.lhs.true41, label %land.lhs.true37.if.end63_crit_edge

land.lhs.true37.if.end63_crit_edge:               ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63

land.lhs.true41:                                  ; preds = %land.lhs.true37
  %53 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %map, align 4
  %55 = and i32 %54, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool44.not = icmp eq i32 %55, 0
  br i1 %tobool44.not, label %land.lhs.true45, label %land.lhs.true41.if.end63_crit_edge

land.lhs.true41.if.end63_crit_edge:               ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63

land.lhs.true45:                                  ; preds = %land.lhs.true41
  %56 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %map, align 4
  %58 = and i32 %57, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool48.not = icmp eq i32 %58, 0
  br i1 %tobool48.not, label %land.lhs.true49, label %land.lhs.true45.if.end63_crit_edge

land.lhs.true45.if.end63_crit_edge:               ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63

land.lhs.true49:                                  ; preds = %land.lhs.true45
  %59 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %map, align 4
  %61 = and i32 %60, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool52.not = icmp eq i32 %61, 0
  br i1 %tobool52.not, label %land.lhs.true53, label %land.lhs.true49.if.end63_crit_edge

land.lhs.true49.if.end63_crit_edge:               ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63

land.lhs.true53:                                  ; preds = %land.lhs.true49
  %vtag = getelementptr inbounds %struct.sctphdr, ptr %retval.0.i.i667, i32 0, i32 2
  %62 = ptrtoint ptr %vtag to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %vtag, align 4
  %vtag54 = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 0, i32 3
  %arrayidx = getelementptr [2 x i32], ptr %vtag54, i32 0, i32 %cond
  %64 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %65)
  %cmp55.not = icmp eq i32 %63, %65
  br i1 %cmp55.not, label %land.lhs.true53.if.end63_crit_edge, label %do.body

land.lhs.true53.if.end63_crit_edge:               ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63

do.body:                                          ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nf_conntrack_sctp_packet.__UNIQUE_ID_ddebug624, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nf_conntrack_sctp_packet, %if.then61)) #12
          to label %cleanup441 [label %if.then61], !srcloc !144

if.then61:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nf_conntrack_sctp_packet.__UNIQUE_ID_ddebug624, ptr noundef nonnull @.str.3) #12
  br label %cleanup441

if.end63:                                         ; preds = %land.lhs.true53.if.end63_crit_edge, %land.lhs.true49.if.end63_crit_edge, %land.lhs.true45.if.end63_crit_edge, %land.lhs.true41.if.end63_crit_edge, %land.lhs.true37.if.end63_crit_edge, %land.lhs.true33.if.end63_crit_edge, %land.lhs.true.if.end63_crit_edge, %if.end26.if.end63_crit_edge
  %lock = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 1
  call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  %66 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %67)
  %cmp64711 = icmp ult i32 %add.i, %67
  br i1 %cmp64711, label %land.rhs.lr.ph, label %for.end.thread

for.end.thread:                                   ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  br label %if.end404

land.rhs.lr.ph:                                   ; preds = %if.end63
  %data.i629 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %tobool2.not.i.i632 = icmp eq ptr %skb, null
  %proto217 = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14
  %vtag218 = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 0, i32 3
  %arrayidx219 = getelementptr [2 x i32], ptr %vtag218, i32 0, i32 %cond
  %vtag245 = getelementptr inbounds %struct.sctphdr, ptr %retval.0.i.i667, i32 0, i32 2
  %flags261 = getelementptr inbounds %struct.ip_ct_sctp, ptr %proto217, i32 0, i32 3
  %last_dir268 = getelementptr inbounds %struct.ip_ct_sctp, ptr %proto217, i32 0, i32 2
  %68 = zext i1 %cmp to i8
  %lnot286 = xor i1 %cmp, true
  %lnot.ext287 = zext i1 %lnot286 to i32
  %arrayidx288 = getelementptr [2 x i32], ptr %vtag218, i32 0, i32 %lnot.ext287
  %ct_net.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 7
  %ext.i.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 13
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %land.rhs.lr.ph
  %69 = phi i32 [ %67, %land.rhs.lr.ph ], [ %182, %for.inc.land.rhs_crit_edge ]
  %new_state.0720 = phi i32 [ 0, %land.rhs.lr.ph ], [ %new_state.1, %for.inc.land.rhs_crit_edge ]
  %old_state.0718 = phi i32 [ 0, %land.rhs.lr.ph ], [ %old_state.1, %for.inc.land.rhs_crit_edge ]
  %offset.0714 = phi i32 [ %add.i, %land.rhs.lr.ph ], [ %add400, %for.inc.land.rhs_crit_edge ]
  %ignore.0.off0712 = phi i1 [ false, %land.rhs.lr.ph ], [ %ignore.4.off0, %for.inc.land.rhs_crit_edge ]
  %70 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %data_len.i.i, align 8
  %72 = add i32 %offset.0714, %71
  %sub.i4.i627 = sub i32 %69, %72
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i4.i627)
  %cmp.not.i.i628 = icmp slt i32 %sub.i4.i627, 4
  br i1 %cmp.not.i.i628, label %if.end.i.i633, label %skb_header_pointer.exit639, !prof !143

if.end.i.i633:                                    ; preds = %land.rhs
  br i1 %tobool2.not.i.i632, label %if.end.i.i633.for.end_crit_edge, label %lor.lhs.false.i.i637

if.end.i.i633.for.end_crit_edge:                  ; preds = %if.end.i.i633
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

lor.lhs.false.i.i637:                             ; preds = %if.end.i.i633
  %call.i.i634 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %offset.0714, ptr noundef nonnull %_sch, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i634)
  %cmp3.i.i635 = icmp slt i32 %call.i.i634, 0
  br i1 %cmp3.i.i635, label %lor.lhs.false.i.i637.for.end_crit_edge, label %lor.lhs.false.i.i637.for.body_crit_edge

lor.lhs.false.i.i637.for.body_crit_edge:          ; preds = %lor.lhs.false.i.i637
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

lor.lhs.false.i.i637.for.end_crit_edge:           ; preds = %lor.lhs.false.i.i637
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

skb_header_pointer.exit639:                       ; preds = %land.rhs
  %73 = ptrtoint ptr %data.i629 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %data.i629, align 4
  %add.ptr.i.i630 = getelementptr i8, ptr %74, i32 %offset.0714
  %tobool66.not = icmp eq ptr %add.ptr.i.i630, null
  br i1 %tobool66.not, label %skb_header_pointer.exit639.for.end_crit_edge, label %skb_header_pointer.exit639.for.body_crit_edge

skb_header_pointer.exit639.for.body_crit_edge:    ; preds = %skb_header_pointer.exit639
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

skb_header_pointer.exit639.for.end_crit_edge:     ; preds = %skb_header_pointer.exit639
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %skb_header_pointer.exit639.for.body_crit_edge, %lor.lhs.false.i.i637.for.body_crit_edge
  %retval.0.i.i638676 = phi ptr [ %add.ptr.i.i630, %skb_header_pointer.exit639.for.body_crit_edge ], [ %_sch, %lor.lhs.false.i.i637.for.body_crit_edge ]
  %75 = ptrtoint ptr %retval.0.i.i638676 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %retval.0.i.i638676, align 2
  %77 = zext i8 %76 to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values)
  switch i8 %76, label %for.body.if.end309_crit_edge [
    i8 1, label %if.then69
    i8 6, label %if.then79
    i8 14, label %if.then103
    i8 10, label %if.then130
    i8 4, label %if.then144
    i8 5, label %if.then216
  ]

for.body.if.end309_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end309

if.then69:                                        ; preds = %for.body
  %78 = ptrtoint ptr %vtag245 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %vtag245, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp71.not = icmp eq i32 %79, 0
  br i1 %cmp71.not, label %if.then69.if.end309_crit_edge, label %if.then69.out_unlock_crit_edge

if.then69.out_unlock_crit_edge:                   ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.then69.if.end309_crit_edge:                    ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end309

if.then79:                                        ; preds = %for.body
  %80 = ptrtoint ptr %vtag245 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %vtag245, align 4
  %82 = ptrtoint ptr %arrayidx219 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx219, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %83)
  %cmp84.not = icmp eq i32 %81, %83
  br i1 %cmp84.not, label %if.then79.if.end309_crit_edge, label %land.lhs.true86

if.then79.if.end309_crit_edge:                    ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end309

land.lhs.true86:                                  ; preds = %if.then79
  %84 = ptrtoint ptr %arrayidx288 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx288, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %85)
  %cmp94.not = icmp eq i32 %81, %85
  br i1 %cmp94.not, label %land.lhs.true86.if.end309_crit_edge, label %land.lhs.true86.out_unlock_crit_edge

land.lhs.true86.out_unlock_crit_edge:             ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

land.lhs.true86.if.end309_crit_edge:              ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end309

if.then103:                                       ; preds = %for.body
  %86 = ptrtoint ptr %vtag245 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %vtag245, align 4
  %88 = ptrtoint ptr %arrayidx219 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx219, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %87, i32 %89)
  %cmp108.not = icmp eq i32 %87, %89
  br i1 %cmp108.not, label %if.then103.if.end309_crit_edge, label %land.lhs.true110

if.then103.if.end309_crit_edge:                   ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end309

land.lhs.true110:                                 ; preds = %if.then103
  %90 = ptrtoint ptr %arrayidx288 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx288, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %87, i32 %91)
  %cmp118.not = icmp eq i32 %87, %91
  br i1 %cmp118.not, label %land.lhs.true110.if.end309_crit_edge, label %land.lhs.true120

land.lhs.true110.if.end309_crit_edge:             ; preds = %land.lhs.true110
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end309

land.lhs.true120:                                 ; preds = %land.lhs.true110
  %flags = getelementptr inbounds %struct.sctp_chunkhdr, ptr %retval.0.i.i638676, i32 0, i32 1
  %92 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %flags, align 1
  %94 = and i8 %93, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool122.not = icmp eq i8 %94, 0
  br i1 %tobool122.not, label %land.lhs.true120.if.end309_crit_edge, label %land.lhs.true120.out_unlock_crit_edge

land.lhs.true120.out_unlock_crit_edge:            ; preds = %land.lhs.true120
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

land.lhs.true120.if.end309_crit_edge:             ; preds = %land.lhs.true120
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end309

if.then130:                                       ; preds = %for.body
  %95 = ptrtoint ptr %vtag245 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %vtag245, align 4
  %97 = ptrtoint ptr %arrayidx219 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx219, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %96, i32 %98)
  %cmp135.not = icmp eq i32 %96, %98
  br i1 %cmp135.not, label %if.then130.if.end309_crit_edge, label %if.then130.out_unlock_crit_edge

if.then130.out_unlock_crit_edge:                  ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.then130.if.end309_crit_edge:                   ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end309

if.then144:                                       ; preds = %for.body
  %99 = ptrtoint ptr %arrayidx219 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx219, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %cmp148 = icmp eq i32 %100, 0
  br i1 %cmp148, label %do.body151, label %if.else174

do.body151:                                       ; preds = %if.then144
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nf_conntrack_sctp_packet.__UNIQUE_ID_ddebug625, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nf_conntrack_sctp_packet, %if.then163)) #12
          to label %do.end169 [label %if.then163], !srcloc !144

if.then163:                                       ; preds = %do.body151
  call void @__sanitizer_cov_trace_pc() #14
  %101 = ptrtoint ptr %retval.0.i.i638676 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %retval.0.i.i638676, align 2
  %conv165 = zext i8 %102 to i32
  %103 = ptrtoint ptr %vtag245 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %vtag245, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nf_conntrack_sctp_packet.__UNIQUE_ID_ddebug625, ptr noundef nonnull @.str.4, i32 noundef %conv165, i32 noundef %104, i32 noundef %cond) #12
  br label %do.end169

do.end169:                                        ; preds = %if.then163, %do.body151
  %105 = ptrtoint ptr %vtag245 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %vtag245, align 4
  %107 = ptrtoint ptr %arrayidx219 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %arrayidx219, align 4
  br label %if.end309

if.else174:                                       ; preds = %if.then144
  %108 = ptrtoint ptr %vtag245 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %vtag245, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %109, i32 %100)
  %cmp179.not = icmp eq i32 %109, %100
  br i1 %cmp179.not, label %if.else196, label %if.then181

if.then181:                                       ; preds = %if.else174
  %110 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load volatile i32, ptr %map, align 4
  %and1.i608 = and i32 %111, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i608)
  %tobool184.not = icmp ne i32 %and1.i608, 0
  %brmerge = select i1 %tobool184.not, i1 true, i1 %ignore.0.off0712
  br i1 %brmerge, label %if.then181.out_unlock_crit_edge, label %if.end189

if.then181.out_unlock_crit_edge:                  ; preds = %if.then181
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.end189:                                        ; preds = %if.then181
  call void @__sanitizer_cov_trace_pc() #14
  %112 = ptrtoint ptr %flags261 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %flags261, align 1
  %114 = or i8 %113, 1
  store i8 %114, ptr %flags261, align 1
  %115 = ptrtoint ptr %last_dir268 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %68, ptr %last_dir268, align 4
  br label %for.inc

if.else196:                                       ; preds = %if.else174
  %116 = ptrtoint ptr %flags261 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %flags261, align 1
  %118 = and i8 %117, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %tobool201.not = icmp eq i8 %118, 0
  br i1 %tobool201.not, label %if.else196.if.end309_crit_edge, label %if.then202

if.else196.if.end309_crit_edge:                   ; preds = %if.else196
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end309

if.then202:                                       ; preds = %if.else196
  call void @__sanitizer_cov_trace_pc() #14
  %and206 = and i8 %117, -2
  %119 = ptrtoint ptr %flags261 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %and206, ptr %flags261, align 1
  br label %if.end309

if.then216:                                       ; preds = %for.body
  %120 = ptrtoint ptr %arrayidx219 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx219, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %cmp220 = icmp eq i32 %121, 0
  br i1 %cmp220, label %do.body223, label %if.else244

do.body223:                                       ; preds = %if.then216
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nf_conntrack_sctp_packet.__UNIQUE_ID_ddebug626, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nf_conntrack_sctp_packet, %if.then235)) #12
          to label %do.end239 [label %if.then235], !srcloc !144

if.then235:                                       ; preds = %do.body223
  call void @__sanitizer_cov_trace_pc() #14
  %122 = ptrtoint ptr %vtag245 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %vtag245, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nf_conntrack_sctp_packet.__UNIQUE_ID_ddebug626, ptr noundef nonnull @.str.5, i32 noundef %123, i32 noundef %cond) #12
  br label %do.end239

do.end239:                                        ; preds = %if.then235, %do.body223
  %124 = ptrtoint ptr %vtag245 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %vtag245, align 4
  %126 = ptrtoint ptr %arrayidx219 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %125, ptr %arrayidx219, align 4
  br label %if.end309

if.else244:                                       ; preds = %if.then216
  %127 = ptrtoint ptr %vtag245 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %vtag245, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %128, i32 %121)
  %cmp249.not = icmp eq i32 %128, %121
  br i1 %cmp249.not, label %if.else289, label %if.then251

if.then251:                                       ; preds = %if.else244
  %129 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load volatile i32, ptr %map, align 4
  %and1.i612 = and i32 %130, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i612)
  %tobool254.not = icmp ne i32 %and1.i612, 0
  %brmerge582 = select i1 %tobool254.not, i1 true, i1 %ignore.0.off0712
  br i1 %brmerge582, label %if.then251.out_unlock_crit_edge, label %if.end259

if.then251.out_unlock_crit_edge:                  ; preds = %if.then251
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.end259:                                        ; preds = %if.then251
  %131 = ptrtoint ptr %flags261 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %flags261, align 1
  %133 = and i8 %132, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %cmp264 = icmp eq i8 %133, 0
  br i1 %cmp264, label %if.end259.out_unlock_crit_edge, label %lor.lhs.false266

if.end259.out_unlock_crit_edge:                   ; preds = %if.end259
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

lor.lhs.false266:                                 ; preds = %if.end259
  %134 = ptrtoint ptr %last_dir268 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %last_dir268, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %135, i8 %68)
  %cmp270 = icmp eq i8 %135, %68
  br i1 %cmp270, label %lor.lhs.false266.out_unlock_crit_edge, label %if.end273

lor.lhs.false266.out_unlock_crit_edge:            ; preds = %lor.lhs.false266
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.end273:                                        ; preds = %lor.lhs.false266
  call void @__sanitizer_cov_trace_pc() #14
  %and277 = and i8 %132, -2
  %136 = ptrtoint ptr %flags261 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %and277, ptr %flags261, align 1
  %137 = ptrtoint ptr %vtag245 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %vtag245, align 4
  %139 = ptrtoint ptr %arrayidx219 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %138, ptr %arrayidx219, align 4
  %140 = ptrtoint ptr %arrayidx288 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 0, ptr %arrayidx288, align 4
  br label %if.end309

if.else289:                                       ; preds = %if.else244
  %141 = ptrtoint ptr %flags261 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %flags261, align 1
  %143 = and i8 %142, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %143)
  %tobool294.not = icmp eq i8 %143, 0
  br i1 %tobool294.not, label %if.else289.if.end309_crit_edge, label %if.then295

if.else289.if.end309_crit_edge:                   ; preds = %if.else289
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end309

if.then295:                                       ; preds = %if.else289
  call void @__sanitizer_cov_trace_pc() #14
  %and299 = and i8 %142, -2
  %144 = ptrtoint ptr %flags261 to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 %and299, ptr %flags261, align 1
  br label %if.end309

if.end309:                                        ; preds = %if.then295, %if.else289.if.end309_crit_edge, %if.end273, %do.end239, %if.then202, %if.else196.if.end309_crit_edge, %do.end169, %if.then130.if.end309_crit_edge, %land.lhs.true120.if.end309_crit_edge, %land.lhs.true110.if.end309_crit_edge, %if.then103.if.end309_crit_edge, %land.lhs.true86.if.end309_crit_edge, %if.then79.if.end309_crit_edge, %if.then69.if.end309_crit_edge, %for.body.if.end309_crit_edge
  %145 = ptrtoint ptr %proto217 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %proto217, align 8
  %147 = ptrtoint ptr %retval.0.i.i638676 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %retval.0.i.i638676, align 2
  %conv313 = zext i8 %148 to i32
  %call314 = call fastcc i32 @sctp_new_state(i32 noundef %cond, i32 noundef %146, i32 noundef %conv313)
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %call314)
  %cmp315 = icmp eq i32 %call314, 10
  br i1 %cmp315, label %do.body318, label %if.end336

do.body318:                                       ; preds = %if.end309
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nf_conntrack_sctp_packet.__UNIQUE_ID_ddebug627, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nf_conntrack_sctp_packet, %if.then330)) #12
          to label %out_unlock [label %if.then330], !srcloc !144

if.then330:                                       ; preds = %do.body318
  call void @__sanitizer_cov_trace_pc() #14
  %149 = ptrtoint ptr %retval.0.i.i638676 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %retval.0.i.i638676, align 2
  %conv332 = zext i8 %150 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nf_conntrack_sctp_packet.__UNIQUE_ID_ddebug627, ptr noundef nonnull @.str.6, i32 noundef %cond, i32 noundef %conv332, i32 noundef %146) #12
  br label %out_unlock

if.end336:                                        ; preds = %if.end309
  %151 = ptrtoint ptr %retval.0.i.i638676 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %retval.0.i.i638676, align 2
  %.off = add i8 %152, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch586 = icmp ult i8 %.off, 2
  br i1 %switch586, label %if.then346, label %if.end336.if.end390_crit_edge

if.end336.if.end390_crit_edge:                    ; preds = %if.end336
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end390

if.then346:                                       ; preds = %if.end336
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_inithdr) #12
  %add347 = add i32 %offset.0714, 4
  %153 = call ptr @memset(ptr %_inithdr, i32 255, i32 16)
  %154 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %len.i, align 4
  %156 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %data_len.i.i, align 8
  %158 = add i32 %155, -4
  %159 = add i32 %offset.0714, %157
  %sub.i4.i642 = sub i32 %158, %159
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub.i4.i642)
  %cmp.not.i.i643 = icmp slt i32 %sub.i4.i642, 16
  br i1 %cmp.not.i.i643, label %if.end.i.i648, label %skb_header_pointer.exit654, !prof !143

if.end.i.i648:                                    ; preds = %if.then346
  br i1 %tobool2.not.i.i632, label %if.end.i.i648.cleanup_crit_edge, label %lor.lhs.false.i.i652

if.end.i.i648.cleanup_crit_edge:                  ; preds = %if.end.i.i648
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false.i.i652:                             ; preds = %if.end.i.i648
  %call.i.i649 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %add347, ptr noundef nonnull %_inithdr, i32 noundef 16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i649)
  %cmp3.i.i650 = icmp slt i32 %call.i.i649, 0
  br i1 %cmp3.i.i650, label %lor.lhs.false.i.i652.cleanup_crit_edge, label %lor.lhs.false.i.i652.do.body353_crit_edge

lor.lhs.false.i.i652.do.body353_crit_edge:        ; preds = %lor.lhs.false.i.i652
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body353

lor.lhs.false.i.i652.cleanup_crit_edge:           ; preds = %lor.lhs.false.i.i652
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

skb_header_pointer.exit654:                       ; preds = %if.then346
  %160 = ptrtoint ptr %data.i629 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %data.i629, align 4
  %add.ptr.i.i645 = getelementptr i8, ptr %161, i32 %add347
  %cmp349 = icmp eq ptr %add.ptr.i.i645, null
  br i1 %cmp349, label %skb_header_pointer.exit654.cleanup_crit_edge, label %skb_header_pointer.exit654.do.body353_crit_edge

skb_header_pointer.exit654.do.body353_crit_edge:  ; preds = %skb_header_pointer.exit654
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body353

skb_header_pointer.exit654.cleanup_crit_edge:     ; preds = %skb_header_pointer.exit654
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body353:                                       ; preds = %skb_header_pointer.exit654.do.body353_crit_edge, %lor.lhs.false.i.i652.do.body353_crit_edge
  %retval.0.i.i653687 = phi ptr [ %add.ptr.i.i645, %skb_header_pointer.exit654.do.body353_crit_edge ], [ %_inithdr, %lor.lhs.false.i.i652.do.body353_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nf_conntrack_sctp_packet.__UNIQUE_ID_ddebug628, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nf_conntrack_sctp_packet, %if.then365)) #12
          to label %do.end371 [label %if.then365], !srcloc !144

if.then365:                                       ; preds = %do.body353
  call void @__sanitizer_cov_trace_pc() #14
  %162 = ptrtoint ptr %retval.0.i.i653687 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %retval.0.i.i653687, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nf_conntrack_sctp_packet.__UNIQUE_ID_ddebug628, ptr noundef nonnull @.str.5, i32 noundef %163, i32 noundef %lnot.ext287) #12
  br label %do.end371

do.end371:                                        ; preds = %if.then365, %do.body353
  %164 = ptrtoint ptr %retval.0.i.i653687 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %retval.0.i.i653687, align 4
  %166 = ptrtoint ptr %arrayidx288 to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %165, ptr %arrayidx288, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call314)
  %cmp379 = icmp eq i32 %call314, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %146)
  %cmp382 = icmp eq i32 %146, 1
  %or.cond = and i1 %cmp382, %cmp379
  br i1 %or.cond, label %land.lhs.true384, label %do.end371.cleanup.thread_crit_edge

do.end371.cleanup.thread_crit_edge:               ; preds = %do.end371
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread

land.lhs.true384:                                 ; preds = %do.end371
  call void @__sanitizer_cov_trace_pc() #14
  %167 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load volatile i32, ptr %status.i, align 4
  %169 = and i32 %168, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %169)
  %tobool386.not = icmp ne i32 %169, 0
  %spec.select = select i1 %tobool386.not, i1 true, i1 %ignore.0.off0712
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %land.lhs.true384, %do.end371.cleanup.thread_crit_edge
  %ignore.2.off0.ph = phi i1 [ %spec.select, %land.lhs.true384 ], [ %ignore.0.off0712, %do.end371.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_inithdr) #12
  br label %if.end390

cleanup:                                          ; preds = %skb_header_pointer.exit654.cleanup_crit_edge, %lor.lhs.false.i.i652.cleanup_crit_edge, %if.end.i.i648.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_inithdr) #12
  br label %out_unlock

if.end390:                                        ; preds = %cleanup.thread, %if.end336.if.end390_crit_edge
  %ignore.3.off0 = phi i1 [ %ignore.0.off0712, %if.end336.if.end390_crit_edge ], [ %ignore.2.off0.ph, %cleanup.thread ]
  %170 = ptrtoint ptr %proto217 to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %call314, ptr %proto217, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %146, i32 %call314)
  %cmp393.not = icmp eq i32 %146, %call314
  br i1 %cmp393.not, label %if.end390.for.inc_crit_edge, label %if.then395

if.end390.for.inc_crit_edge:                      ; preds = %if.end390
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then395:                                       ; preds = %if.end390
  %171 = ptrtoint ptr %ct_net.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %ct_net.i.i, align 4
  %nf_conntrack_event_cb.i = getelementptr inbounds %struct.net, ptr %172, i32 0, i32 40, i32 9
  %173 = ptrtoint ptr %nf_conntrack_event_cb.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load volatile ptr, ptr %nf_conntrack_event_cb.i, align 16
  %tobool.not.i658 = icmp eq ptr %174, null
  br i1 %tobool.not.i658, label %if.then395.for.inc_crit_edge, label %if.end.i659

if.then395.for.inc_crit_edge:                     ; preds = %if.then395
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end.i659:                                      ; preds = %if.then395
  %175 = ptrtoint ptr %ext.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %ext.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %176, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i659.for.inc_crit_edge, label %nf_ct_ext_exist.exit.i.i.i

if.end.i659.for.inc_crit_edge:                    ; preds = %if.end.i659
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

nf_ct_ext_exist.exit.i.i.i:                       ; preds = %if.end.i659
  %arrayidx.i.i.i.i.i = getelementptr [10 x i8], ptr %176, i32 0, i32 4
  %177 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %arrayidx.i.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %178)
  %tobool.i.i.not.i.i.i = icmp eq i8 %178, 0
  br i1 %tobool.i.i.not.i.i.i, label %nf_ct_ext_exist.exit.i.i.i.for.inc_crit_edge, label %nf_ct_ecache_find.exit.i

nf_ct_ext_exist.exit.i.i.i.for.inc_crit_edge:     ; preds = %nf_ct_ext_exist.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

nf_ct_ecache_find.exit.i:                         ; preds = %nf_ct_ext_exist.exit.i.i.i
  %conv.i.i.i = zext i8 %178 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %176, i32 %conv.i.i.i
  %cmp.i660 = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %cmp.i660, label %nf_ct_ecache_find.exit.i.for.inc_crit_edge, label %if.end5.i

nf_ct_ecache_find.exit.i.for.inc_crit_edge:       ; preds = %nf_ct_ecache_find.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end5.i:                                        ; preds = %nf_ct_ecache_find.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @_set_bit(i32 noundef 5, ptr noundef nonnull %add.ptr.i.i.i) #12
  br label %for.inc

for.inc:                                          ; preds = %if.end5.i, %nf_ct_ecache_find.exit.i.for.inc_crit_edge, %nf_ct_ext_exist.exit.i.i.i.for.inc_crit_edge, %if.end.i659.for.inc_crit_edge, %if.then395.for.inc_crit_edge, %if.end390.for.inc_crit_edge, %if.end189
  %ignore.4.off0 = phi i1 [ %ignore.3.off0, %if.end390.for.inc_crit_edge ], [ true, %if.end189 ], [ %ignore.3.off0, %if.then395.for.inc_crit_edge ], [ %ignore.3.off0, %if.end.i659.for.inc_crit_edge ], [ %ignore.3.off0, %nf_ct_ext_exist.exit.i.i.i.for.inc_crit_edge ], [ %ignore.3.off0, %nf_ct_ecache_find.exit.i.for.inc_crit_edge ], [ %ignore.3.off0, %if.end5.i ]
  %old_state.1 = phi i32 [ %146, %if.end390.for.inc_crit_edge ], [ %old_state.0718, %if.end189 ], [ %146, %if.then395.for.inc_crit_edge ], [ %146, %if.end.i659.for.inc_crit_edge ], [ %146, %nf_ct_ext_exist.exit.i.i.i.for.inc_crit_edge ], [ %146, %nf_ct_ecache_find.exit.i.for.inc_crit_edge ], [ %146, %if.end5.i ]
  %new_state.1 = phi i32 [ %146, %if.end390.for.inc_crit_edge ], [ %new_state.0720, %if.end189 ], [ %call314, %if.then395.for.inc_crit_edge ], [ %call314, %if.end.i659.for.inc_crit_edge ], [ %call314, %nf_ct_ext_exist.exit.i.i.i.for.inc_crit_edge ], [ %call314, %nf_ct_ecache_find.exit.i.for.inc_crit_edge ], [ %call314, %if.end5.i ]
  %length = getelementptr inbounds %struct.sctp_chunkhdr, ptr %retval.0.i.i638676, i32 0, i32 2
  %179 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %length, align 2
  %conv397 = zext i16 %180 to i32
  %add398 = add nuw nsw i32 %conv397, 3
  %and399 = and i32 %add398, 131068
  %add400 = add i32 %and399, %offset.0714
  %181 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %len.i, align 4
  %cmp64 = icmp ult i32 %add400, %182
  br i1 %cmp64, label %for.inc.land.rhs_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %skb_header_pointer.exit639.for.end_crit_edge, %lor.lhs.false.i.i637.for.end_crit_edge, %if.end.i.i633.for.end_crit_edge
  %ignore.0.off0.lcssa = phi i1 [ %ignore.0.off0712, %skb_header_pointer.exit639.for.end_crit_edge ], [ %ignore.4.off0, %for.inc.for.end_crit_edge ], [ %ignore.0.off0712, %if.end.i.i633.for.end_crit_edge ], [ %ignore.0.off0712, %lor.lhs.false.i.i637.for.end_crit_edge ]
  %old_state.0.lcssa = phi i32 [ %old_state.0718, %skb_header_pointer.exit639.for.end_crit_edge ], [ %old_state.1, %for.inc.for.end_crit_edge ], [ %old_state.0718, %if.end.i.i633.for.end_crit_edge ], [ %old_state.0718, %lor.lhs.false.i.i637.for.end_crit_edge ]
  %new_state.0.lcssa = phi i32 [ %new_state.0720, %skb_header_pointer.exit639.for.end_crit_edge ], [ %new_state.1, %for.inc.for.end_crit_edge ], [ %new_state.0720, %if.end.i.i633.for.end_crit_edge ], [ %new_state.0720, %lor.lhs.false.i.i637.for.end_crit_edge ]
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  br i1 %ignore.0.off0.lcssa, label %for.end.cleanup441_crit_edge, label %for.end.if.end404_crit_edge

for.end.if.end404_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end404

for.end.cleanup441_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup441

if.end404:                                        ; preds = %for.end.if.end404_crit_edge, %for.end.thread
  %new_state.0.lcssa740 = phi i32 [ 0, %for.end.thread ], [ %new_state.0.lcssa, %for.end.if.end404_crit_edge ]
  %old_state.0.lcssa739 = phi i32 [ 0, %for.end.thread ], [ %old_state.0.lcssa, %for.end.if.end404_crit_edge ]
  %call405 = call fastcc ptr @nf_ct_timeout_lookup(ptr noundef %ct)
  %tobool406.not = icmp eq ptr %call405, null
  br i1 %tobool406.not, label %if.then407, label %if.end404.if.end412_crit_edge

if.end404.if.end412_crit_edge:                    ; preds = %if.end404
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end412

if.then407:                                       ; preds = %if.end404
  call void @__sanitizer_cov_trace_pc() #14
  %ct_net.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 7
  %183 = ptrtoint ptr %ct_net.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %ct_net.i, align 4
  %sctp.i = getelementptr inbounds %struct.net, ptr %184, i32 0, i32 40, i32 10, i32 6
  br label %if.end412

if.end412:                                        ; preds = %if.then407, %if.end404.if.end412_crit_edge
  %timeouts.0 = phi ptr [ %call405, %if.end404.if.end412_crit_edge ], [ %sctp.i, %if.then407 ]
  %arrayidx413 = getelementptr i32, ptr %timeouts.0, i32 %new_state.0.lcssa740
  %185 = ptrtoint ptr %arrayidx413 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %arrayidx413, align 4
  call void @__nf_ct_refresh_acct(ptr noundef %ct, i32 noundef %ctinfo, ptr noundef %skb, i32 noundef %186, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %old_state.0.lcssa739)
  %cmp414 = icmp eq i32 %old_state.0.lcssa739, 3
  %187 = and i1 %cmp, %cmp414
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %new_state.0.lcssa740)
  %cmp420 = icmp eq i32 %new_state.0.lcssa740, 4
  %or.cond585 = select i1 %187, i1 %cmp420, i1 false
  br i1 %or.cond585, label %do.body423, label %if.end412.cleanup441_crit_edge

if.end412.cleanup441_crit_edge:                   ; preds = %if.end412
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup441

do.body423:                                       ; preds = %if.end412
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nf_conntrack_sctp_packet.__UNIQUE_ID_ddebug629, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nf_conntrack_sctp_packet, %if.then435)) #12
          to label %do.end438 [label %if.then435], !srcloc !144

if.then435:                                       ; preds = %do.body423
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nf_conntrack_sctp_packet.__UNIQUE_ID_ddebug629, ptr noundef nonnull @.str.7) #12
  br label %do.end438

do.end438:                                        ; preds = %if.then435, %do.body423
  call void @_set_bit(i32 noundef 2, ptr noundef %status.i) #12
  call fastcc void @nf_conntrack_event_cache(i32 noundef 4, ptr noundef %ct)
  br label %cleanup441

out_unlock:                                       ; preds = %cleanup, %if.then330, %do.body318, %lor.lhs.false266.out_unlock_crit_edge, %if.end259.out_unlock_crit_edge, %if.then251.out_unlock_crit_edge, %if.then181.out_unlock_crit_edge, %if.then130.out_unlock_crit_edge, %land.lhs.true120.out_unlock_crit_edge, %land.lhs.true86.out_unlock_crit_edge, %if.then69.out_unlock_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  br label %cleanup441

cleanup441:                                       ; preds = %out_unlock, %do.end438, %if.end412.cleanup441_crit_edge, %for.end.cleanup441_crit_edge, %if.then61, %do.body, %if.end22.cleanup441_crit_edge, %lor.lhs.false17.cleanup441_crit_edge, %lor.lhs.false.cleanup441_crit_edge, %if.then10.cleanup441_crit_edge, %if.end4.cleanup441_crit_edge, %skb_header_pointer.exit.cleanup441_crit_edge, %lor.lhs.false.i.i.cleanup441_crit_edge, %if.end.i.i.cleanup441_crit_edge, %sctp_error.exit
  %retval.0 = phi i32 [ -1, %sctp_error.exit ], [ -1, %lor.lhs.false17.cleanup441_crit_edge ], [ -1, %lor.lhs.false.cleanup441_crit_edge ], [ -1, %if.then10.cleanup441_crit_edge ], [ -1, %if.end22.cleanup441_crit_edge ], [ 1, %for.end.cleanup441_crit_edge ], [ 1, %if.end412.cleanup441_crit_edge ], [ 1, %do.end438 ], [ -1, %if.then61 ], [ -1, %if.end4.cleanup441_crit_edge ], [ -1, %skb_header_pointer.exit.cleanup441_crit_edge ], [ -1, %out_unlock ], [ -1, %do.body ], [ -1, %if.end.i.i.cleanup441_crit_edge ], [ -1, %lor.lhs.false.i.i.cleanup441_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %map) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_sch) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %_sctph) #12
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_basic_checks(ptr noundef %skb, i32 noundef %dataoff, ptr noundef %map) unnamed_addr #0 align 64 {
entry:
  %_sch = alloca %struct.sctp_chunkhdr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_sch) #12
  %add = add i32 %dataoff, 12
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %_sch to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %_sch, align 4
  %1 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %2)
  %cmp19 = icmp ult i32 %add, %2
  br i1 %cmp19, label %land.rhs.lr.ph, label %entry.do.body62_crit_edge

entry.do.body62_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body62

land.rhs.lr.ph:                                   ; preds = %entry
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %tobool2.not.i.i = icmp eq ptr %skb, null
  %tobool53.not = icmp eq ptr %map, null
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %land.rhs.lr.ph
  %3 = phi i32 [ %2, %land.rhs.lr.ph ], [ %20, %for.inc.land.rhs_crit_edge ]
  %offset.024 = phi i32 [ %add, %land.rhs.lr.ph ], [ %add61, %for.inc.land.rhs_crit_edge ]
  %count.021 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %for.inc.land.rhs_crit_edge ]
  %flag.020 = phi i32 [ 0, %land.rhs.lr.ph ], [ %flag.1, %for.inc.land.rhs_crit_edge ]
  %4 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_len.i.i, align 8
  %6 = add i32 %offset.024, %5
  %sub.i4.i = sub i32 %3, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i4.i)
  %cmp.not.i.i = icmp slt i32 %sub.i4.i, 4
  br i1 %cmp.not.i.i, label %if.end.i.i, label %skb_header_pointer.exit, !prof !143

if.end.i.i:                                       ; preds = %land.rhs
  br i1 %tobool2.not.i.i, label %if.end.i.i.do.body62_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.do.body62_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body62

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %offset.024, ptr noundef nonnull %_sch, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.do.body62_crit_edge, label %lor.lhs.false.i.i.do.body_crit_edge

lor.lhs.false.i.i.do.body_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

lor.lhs.false.i.i.do.body62_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body62

skb_header_pointer.exit:                          ; preds = %land.rhs
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 %offset.024
  %tobool.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not, label %skb_header_pointer.exit.do.body62_crit_edge, label %skb_header_pointer.exit.do.body_crit_edge

skb_header_pointer.exit.do.body_crit_edge:        ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

skb_header_pointer.exit.do.body62_crit_edge:      ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body62

do.body:                                          ; preds = %skb_header_pointer.exit.do.body_crit_edge, %lor.lhs.false.i.i.do.body_crit_edge
  %retval.0.i.i13 = phi ptr [ %add.ptr.i.i, %skb_header_pointer.exit.do.body_crit_edge ], [ %_sch, %lor.lhs.false.i.i.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_basic_checks.__UNIQUE_ID_ddebug603, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@do_basic_checks, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !144

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %retval.0.i.i13 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %retval.0.i.i13, align 2
  %conv = zext i8 %10 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @do_basic_checks.__UNIQUE_ID_ddebug603, ptr noundef nonnull @.str.13, i32 noundef %count.021, i32 noundef %conv) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %11 = ptrtoint ptr %retval.0.i.i13 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %retval.0.i.i13, align 2
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.49)
  switch i8 %12, label %do.end.if.end19_crit_edge [
    i8 1, label %do.end.if.then18_crit_edge
    i8 2, label %do.end.if.then18_crit_edge29
    i8 14, label %do.end.if.then18_crit_edge30
  ]

do.end.if.then18_crit_edge30:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then18

do.end.if.then18_crit_edge29:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then18

do.end.if.then18_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then18

do.end.if.end19_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then18:                                        ; preds = %do.end.if.then18_crit_edge, %do.end.if.then18_crit_edge29, %do.end.if.then18_crit_edge30
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %do.end.if.end19_crit_edge
  %flag.1 = phi i32 [ 1, %if.then18 ], [ %flag.020, %do.end.if.end19_crit_edge ]
  %14 = and i8 %12, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %14)
  %switch = icmp eq i8 %14, 10
  br i1 %switch, label %land.lhs.true, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %if.end19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flag.1)
  %tobool30.not = icmp eq i32 %flag.1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.021)
  %cmp31.not = icmp eq i32 %count.021, 0
  %or.cond = select i1 %tobool30.not, i1 true, i1 %cmp31.not
  br i1 %or.cond, label %lor.lhs.false29.lor.lhs.false33_crit_edge, label %lor.lhs.false29.do.body36_crit_edge

lor.lhs.false29.do.body36_crit_edge:              ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body36

lor.lhs.false29.lor.lhs.false33_crit_edge:        ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false33

land.lhs.true:                                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.021)
  %cmp31.not.old = icmp eq i32 %count.021, 0
  br i1 %cmp31.not.old, label %land.lhs.true.lor.lhs.false33_crit_edge, label %land.lhs.true.do.body36_crit_edge

land.lhs.true.do.body36_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body36

land.lhs.true.lor.lhs.false33_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %land.lhs.true.lor.lhs.false33_crit_edge, %lor.lhs.false29.lor.lhs.false33_crit_edge
  %length = getelementptr inbounds %struct.sctp_chunkhdr, ptr %retval.0.i.i13, i32 0, i32 2
  %15 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %length, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool34.not = icmp eq i16 %16, 0
  br i1 %tobool34.not, label %lor.lhs.false33.do.body36_crit_edge, label %if.end52

lor.lhs.false33.do.body36_crit_edge:              ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body36

do.body36:                                        ; preds = %lor.lhs.false33.do.body36_crit_edge, %land.lhs.true.do.body36_crit_edge, %lor.lhs.false29.do.body36_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_basic_checks.__UNIQUE_ID_ddebug604, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@do_basic_checks, %if.then48)) #12
          to label %cleanup [label %if.then48], !srcloc !144

if.then48:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @do_basic_checks.__UNIQUE_ID_ddebug604, ptr noundef nonnull @.str.14) #12
  br label %cleanup

if.end52:                                         ; preds = %lor.lhs.false33
  br i1 %tobool53.not, label %if.end52.for.inc_crit_edge, label %if.then54

if.end52.for.inc_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then54:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  %conv56 = zext i8 %12 to i32
  call void @_set_bit(i32 noundef %conv56, ptr noundef nonnull %map) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then54, %if.end52.for.inc_crit_edge
  %17 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %length, align 2
  %conv59 = zext i16 %18 to i32
  %add60 = add nuw nsw i32 %conv59, 3
  %and = and i32 %add60, 131068
  %add61 = add i32 %and, %offset.024
  %inc = add i32 %count.021, 1
  %19 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len, align 4
  %cmp = icmp ult i32 %add61, %20
  br i1 %cmp, label %for.inc.land.rhs_crit_edge, label %for.inc.do.body62_crit_edge

for.inc.do.body62_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body62

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

do.body62:                                        ; preds = %for.inc.do.body62_crit_edge, %skb_header_pointer.exit.do.body62_crit_edge, %lor.lhs.false.i.i.do.body62_crit_edge, %if.end.i.i.do.body62_crit_edge, %entry.do.body62_crit_edge
  %count.0.lcssa = phi i32 [ 0, %entry.do.body62_crit_edge ], [ %count.021, %lor.lhs.false.i.i.do.body62_crit_edge ], [ %count.021, %if.end.i.i.do.body62_crit_edge ], [ %count.021, %skb_header_pointer.exit.do.body62_crit_edge ], [ %inc, %for.inc.do.body62_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_basic_checks.__UNIQUE_ID_ddebug605, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@do_basic_checks, %if.then74)) #12
          to label %do.end77 [label %if.then74], !srcloc !144

if.then74:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @do_basic_checks.__UNIQUE_ID_ddebug605, ptr noundef nonnull @.str.15) #12
  br label %do.end77

do.end77:                                         ; preds = %if.then74, %do.body62
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.0.lcssa)
  %cmp78 = icmp eq i32 %count.0.lcssa, 0
  %conv79 = zext i1 %cmp78 to i32
  br label %cleanup

cleanup:                                          ; preds = %do.end77, %if.then48, %do.body36
  %retval.0 = phi i32 [ %conv79, %do.end77 ], [ 1, %if.then48 ], [ 1, %do.body36 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_sch) #12
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @sctp_new(ptr nocapture noundef writeonly %ct, ptr noundef %skb, ptr nocapture noundef readonly %sh, i32 noundef %dataoff) unnamed_addr #2 align 64 {
entry:
  %_sch = alloca %struct.sctp_chunkhdr, align 4
  %_inithdr = alloca %struct.sctp_inithdr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_sch) #12
  %proto = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14
  %0 = ptrtoint ptr %_sch to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %_sch, align 4
  %1 = call ptr @memset(ptr %proto, i32 0, i32 16)
  %add = add i32 %dataoff, 12
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %3)
  %cmp168 = icmp ult i32 %add, %3
  br i1 %cmp168, label %land.rhs.lr.ph, label %entry.cleanup99_crit_edge

entry.cleanup99_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup99

land.rhs.lr.ph:                                   ; preds = %entry
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %tobool2.not.i.i = icmp eq ptr %skb, null
  %vtag63 = getelementptr inbounds %struct.sctphdr, ptr %sh, i32 0, i32 2
  %vtag69 = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 0, i32 3
  %arrayidx = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 0, i32 4
  br label %land.rhs

land.rhs:                                         ; preds = %if.end94.land.rhs_crit_edge, %land.rhs.lr.ph
  %4 = phi i32 [ %3, %land.rhs.lr.ph ], [ %46, %if.end94.land.rhs_crit_edge ]
  %offset.0169 = phi i32 [ %add, %land.rhs.lr.ph ], [ %add98, %if.end94.land.rhs_crit_edge ]
  %5 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %data_len.i.i, align 8
  %7 = add i32 %offset.0169, %6
  %sub.i4.i = sub i32 %4, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i4.i)
  %cmp.not.i.i = icmp slt i32 %sub.i4.i, 4
  br i1 %cmp.not.i.i, label %if.end.i.i, label %skb_header_pointer.exit, !prof !143

if.end.i.i:                                       ; preds = %land.rhs
  br i1 %tobool2.not.i.i, label %if.end.i.i.cleanup99_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.cleanup99_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup99

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %offset.0169, ptr noundef nonnull %_sch, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.cleanup99_crit_edge, label %lor.lhs.false.i.i.for.body_crit_edge

lor.lhs.false.i.i.for.body_crit_edge:             ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

lor.lhs.false.i.i.cleanup99_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup99

skb_header_pointer.exit:                          ; preds = %land.rhs
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 %offset.0169
  %tobool.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not, label %skb_header_pointer.exit.cleanup99_crit_edge, label %skb_header_pointer.exit.for.body_crit_edge

skb_header_pointer.exit.for.body_crit_edge:       ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

skb_header_pointer.exit.cleanup99_crit_edge:      ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup99

for.body:                                         ; preds = %skb_header_pointer.exit.for.body_crit_edge, %lor.lhs.false.i.i.for.body_crit_edge
  %retval.0.i.i152 = phi ptr [ %add.ptr.i.i, %skb_header_pointer.exit.for.body_crit_edge ], [ %_sch, %lor.lhs.false.i.i.for.body_crit_edge ]
  %10 = ptrtoint ptr %retval.0.i.i152 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %retval.0.i.i152, align 2
  %conv = zext i8 %11 to i32
  %call1 = call fastcc i32 @sctp_new_state(i32 noundef 0, i32 noundef 0, i32 noundef %conv)
  %12 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %call1, label %if.end11 [
    i32 0, label %for.body.do.body_crit_edge
    i32 10, label %for.body.do.body_crit_edge172
  ]

for.body.do.body_crit_edge172:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

for.body.do.body_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.body:                                          ; preds = %for.body.do.body_crit_edge, %for.body.do.body_crit_edge172
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_new.__UNIQUE_ID_ddebug620, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_new, %if.then10)) #12
          to label %cleanup99 [label %if.then10], !srcloc !144

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_new.__UNIQUE_ID_ddebug620, ptr noundef nonnull @.str.17) #12
  br label %cleanup99

if.end11:                                         ; preds = %for.body
  %13 = ptrtoint ptr %retval.0.i.i152 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %retval.0.i.i152, align 2
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.51)
  switch i8 %14, label %do.body72 [
    i8 1, label %if.then16
    i8 4, label %do.body50
  ]

if.then16:                                        ; preds = %if.end11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_inithdr) #12
  %16 = call ptr @memset(ptr %_inithdr, i32 255, i32 16)
  %17 = ptrtoint ptr %vtag63 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vtag63, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool17.not = icmp eq i32 %18, 0
  br i1 %tobool17.not, label %if.end19, label %if.then16.cleanup_crit_edge

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end19:                                         ; preds = %if.then16
  %add20 = add i32 %offset.0169, 4
  %19 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len, align 4
  %21 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %data_len.i.i, align 8
  %23 = add i32 %20, -4
  %24 = add i32 %offset.0169, %22
  %sub.i4.i134 = sub i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub.i4.i134)
  %cmp.not.i.i135 = icmp slt i32 %sub.i4.i134, 16
  br i1 %cmp.not.i.i135, label %if.end.i.i140, label %skb_header_pointer.exit146, !prof !143

if.end.i.i140:                                    ; preds = %if.end19
  br i1 %tobool2.not.i.i, label %if.end.i.i140.cleanup_crit_edge, label %lor.lhs.false.i.i144

if.end.i.i140.cleanup_crit_edge:                  ; preds = %if.end.i.i140
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false.i.i144:                             ; preds = %if.end.i.i140
  %call.i.i141 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %add20, ptr noundef nonnull %_inithdr, i32 noundef 16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i141)
  %cmp3.i.i142 = icmp slt i32 %call.i.i141, 0
  br i1 %cmp3.i.i142, label %lor.lhs.false.i.i144.cleanup_crit_edge, label %lor.lhs.false.i.i144.do.body25_crit_edge

lor.lhs.false.i.i144.do.body25_crit_edge:         ; preds = %lor.lhs.false.i.i144
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body25

lor.lhs.false.i.i144.cleanup_crit_edge:           ; preds = %lor.lhs.false.i.i144
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

skb_header_pointer.exit146:                       ; preds = %if.end19
  %25 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i137 = getelementptr i8, ptr %26, i32 %add20
  %tobool22.not = icmp eq ptr %add.ptr.i.i137, null
  br i1 %tobool22.not, label %skb_header_pointer.exit146.cleanup_crit_edge, label %skb_header_pointer.exit146.do.body25_crit_edge

skb_header_pointer.exit146.do.body25_crit_edge:   ; preds = %skb_header_pointer.exit146
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body25

skb_header_pointer.exit146.cleanup_crit_edge:     ; preds = %skb_header_pointer.exit146
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body25:                                        ; preds = %skb_header_pointer.exit146.do.body25_crit_edge, %lor.lhs.false.i.i144.do.body25_crit_edge
  %retval.0.i.i145161 = phi ptr [ %add.ptr.i.i137, %skb_header_pointer.exit146.do.body25_crit_edge ], [ %_inithdr, %lor.lhs.false.i.i144.do.body25_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_new.__UNIQUE_ID_ddebug621, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_new, %if.then37)) #12
          to label %do.end40 [label %if.then37], !srcloc !144

if.then37:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %retval.0.i.i145161 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %retval.0.i.i145161, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_new.__UNIQUE_ID_ddebug621, ptr noundef nonnull @.str.18, i32 noundef %28) #12
  br label %do.end40

do.end40:                                         ; preds = %if.then37, %do.body25
  %29 = ptrtoint ptr %retval.0.i.i145161 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %retval.0.i.i145161, align 4
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_inithdr) #12
  br label %if.end94

cleanup:                                          ; preds = %skb_header_pointer.exit146.cleanup_crit_edge, %lor.lhs.false.i.i144.cleanup_crit_edge, %if.end.i.i140.cleanup_crit_edge, %if.then16.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_inithdr) #12
  br label %cleanup99

do.body50:                                        ; preds = %if.end11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_new.__UNIQUE_ID_ddebug622, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_new, %if.then62)) #12
          to label %do.end66 [label %if.then62], !srcloc !144

if.then62:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #14
  %32 = ptrtoint ptr %vtag63 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %vtag63, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_new.__UNIQUE_ID_ddebug622, ptr noundef nonnull @.str.19, i32 noundef %33) #12
  br label %do.end66

do.end66:                                         ; preds = %if.then62, %do.body50
  %34 = ptrtoint ptr %vtag63 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %vtag63, align 4
  %36 = ptrtoint ptr %vtag69 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %vtag69, align 4
  br label %if.end94

do.body72:                                        ; preds = %if.end11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_new.__UNIQUE_ID_ddebug623, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_new, %if.then84)) #12
          to label %do.end88 [label %if.then84], !srcloc !144

if.then84:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #14
  %37 = ptrtoint ptr %vtag63 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %vtag63, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_new.__UNIQUE_ID_ddebug623, ptr noundef nonnull @.str.20, i32 noundef %38) #12
  br label %do.end88

do.end88:                                         ; preds = %if.then84, %do.body72
  %39 = ptrtoint ptr %vtag63 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %vtag63, align 4
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %arrayidx, align 4
  br label %if.end94

if.end94:                                         ; preds = %do.end88, %do.end66, %do.end40
  %42 = ptrtoint ptr %proto to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %proto, align 8
  %length = getelementptr inbounds %struct.sctp_chunkhdr, ptr %retval.0.i.i152, i32 0, i32 2
  %43 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %length, align 2
  %conv96 = zext i16 %44 to i32
  %add97 = add nuw nsw i32 %conv96, 3
  %and = and i32 %add97, 131068
  %add98 = add i32 %and, %offset.0169
  %45 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len, align 4
  %cmp = icmp ult i32 %add98, %46
  br i1 %cmp, label %if.end94.land.rhs_crit_edge, label %if.end94.cleanup99_crit_edge

if.end94.cleanup99_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup99

if.end94.land.rhs_crit_edge:                      ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

cleanup99:                                        ; preds = %if.end94.cleanup99_crit_edge, %cleanup, %if.then10, %do.body, %skb_header_pointer.exit.cleanup99_crit_edge, %lor.lhs.false.i.i.cleanup99_crit_edge, %if.end.i.i.cleanup99_crit_edge, %entry.cleanup99_crit_edge
  %retval.3 = phi i1 [ false, %cleanup ], [ false, %if.then10 ], [ false, %do.body ], [ true, %entry.cleanup99_crit_edge ], [ true, %lor.lhs.false.i.i.cleanup99_crit_edge ], [ true, %if.end.i.i.cleanup99_crit_edge ], [ true, %skb_header_pointer.exit.cleanup99_crit_edge ], [ true, %if.end94.cleanup99_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_sch) #12
  ret i1 %retval.3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sctp_new_state(i32 noundef %dir, i32 noundef %cur_state, i32 noundef %chunk_type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_new_state.__UNIQUE_ID_ddebug606, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_new_state, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !144

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_new_state.__UNIQUE_ID_ddebug606, ptr noundef nonnull @.str.22, i32 noundef %chunk_type) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %0 = zext i32 %chunk_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %chunk_type, label %do.body189 [
    i32 1, label %do.body3
    i32 2, label %do.body20
    i32 6, label %do.body37
    i32 7, label %do.body54
    i32 8, label %do.body71
    i32 9, label %do.body88
    i32 10, label %do.body105
    i32 11, label %do.body122
    i32 14, label %do.body139
    i32 4, label %do.body156
    i32 5, label %do.body173
  ]

do.body3:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_new_state.__UNIQUE_ID_ddebug607, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_new_state, %if.then15)) #12
          to label %do.body205 [label %if.then15], !srcloc !144

if.then15:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_new_state.__UNIQUE_ID_ddebug607, ptr noundef nonnull @.str.23) #12
  br label %do.body205

do.body20:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_new_state.__UNIQUE_ID_ddebug608, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_new_state, %if.then32)) #12
          to label %do.body205 [label %if.then32], !srcloc !144

if.then32:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_new_state.__UNIQUE_ID_ddebug608, ptr noundef nonnull @.str.24) #12
  br label %do.body205

do.body37:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_new_state.__UNIQUE_ID_ddebug609, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_new_state, %if.then49)) #12
          to label %do.body205 [label %if.then49], !srcloc !144

if.then49:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_new_state.__UNIQUE_ID_ddebug609, ptr noundef nonnull @.str.25) #12
  br label %do.body205

do.body54:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_new_state.__UNIQUE_ID_ddebug610, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_new_state, %if.then66)) #12
          to label %do.body205 [label %if.then66], !srcloc !144

if.then66:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_new_state.__UNIQUE_ID_ddebug610, ptr noundef nonnull @.str.26) #12
  br label %do.body205

do.body71:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_new_state.__UNIQUE_ID_ddebug611, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_new_state, %if.then83)) #12
          to label %do.body205 [label %if.then83], !srcloc !144

if.then83:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_new_state.__UNIQUE_ID_ddebug611, ptr noundef nonnull @.str.27) #12
  br label %do.body205

do.body88:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_new_state.__UNIQUE_ID_ddebug612, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_new_state, %if.then100)) #12
          to label %do.body205 [label %if.then100], !srcloc !144

if.then100:                                       ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_new_state.__UNIQUE_ID_ddebug612, ptr noundef nonnull @.str.28) #12
  br label %do.body205

do.body105:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_new_state.__UNIQUE_ID_ddebug613, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_new_state, %if.then117)) #12
          to label %do.body205 [label %if.then117], !srcloc !144

if.then117:                                       ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_new_state.__UNIQUE_ID_ddebug613, ptr noundef nonnull @.str.29) #12
  br label %do.body205

do.body122:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_new_state.__UNIQUE_ID_ddebug614, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_new_state, %if.then134)) #12
          to label %do.body205 [label %if.then134], !srcloc !144

if.then134:                                       ; preds = %do.body122
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_new_state.__UNIQUE_ID_ddebug614, ptr noundef nonnull @.str.30) #12
  br label %do.body205

do.body139:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_new_state.__UNIQUE_ID_ddebug615, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_new_state, %if.then151)) #12
          to label %do.body205 [label %if.then151], !srcloc !144

if.then151:                                       ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_new_state.__UNIQUE_ID_ddebug615, ptr noundef nonnull @.str.31) #12
  br label %do.body205

do.body156:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_new_state.__UNIQUE_ID_ddebug616, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_new_state, %if.then168)) #12
          to label %do.body205 [label %if.then168], !srcloc !144

if.then168:                                       ; preds = %do.body156
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_new_state.__UNIQUE_ID_ddebug616, ptr noundef nonnull @.str.32) #12
  br label %do.body205

do.body173:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_new_state.__UNIQUE_ID_ddebug617, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_new_state, %if.then185)) #12
          to label %do.body205 [label %if.then185], !srcloc !144

if.then185:                                       ; preds = %do.body173
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_new_state.__UNIQUE_ID_ddebug617, ptr noundef nonnull @.str.33) #12
  br label %do.body205

do.body189:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_new_state.__UNIQUE_ID_ddebug618, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_new_state, %if.then201)) #12
          to label %cleanup [label %if.then201], !srcloc !144

if.then201:                                       ; preds = %do.body189
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx = getelementptr [10 x ptr], ptr @sctp_conntrack_names, i32 0, i32 %cur_state
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_new_state.__UNIQUE_ID_ddebug618, ptr noundef nonnull @.str.34, ptr noundef %2) #12
  br label %cleanup

do.body205:                                       ; preds = %if.then185, %do.body173, %if.then168, %do.body156, %if.then151, %do.body139, %if.then134, %do.body122, %if.then117, %do.body105, %if.then100, %do.body88, %if.then83, %do.body71, %if.then66, %do.body54, %if.then49, %do.body37, %if.then32, %do.body20, %if.then15, %do.body3
  %i.0 = phi i32 [ 0, %if.then15 ], [ 1, %if.then32 ], [ 2, %if.then49 ], [ 3, %if.then66 ], [ 4, %if.then83 ], [ 5, %if.then100 ], [ 6, %if.then117 ], [ 7, %if.then134 ], [ 8, %if.then151 ], [ 9, %if.then168 ], [ 10, %if.then185 ], [ 0, %do.body3 ], [ 1, %do.body20 ], [ 2, %do.body37 ], [ 3, %do.body54 ], [ 4, %do.body71 ], [ 5, %do.body88 ], [ 6, %do.body105 ], [ 7, %do.body122 ], [ 8, %do.body139 ], [ 9, %do.body156 ], [ 10, %do.body173 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_new_state.__UNIQUE_ID_ddebug619, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_new_state, %if.then217)) #12
          to label %do.end225 [label %if.then217], !srcloc !144

if.then217:                                       ; preds = %do.body205
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx218 = getelementptr [10 x ptr], ptr @sctp_conntrack_names, i32 0, i32 %cur_state
  %3 = ptrtoint ptr %arrayidx218 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx218, align 4
  %arrayidx221 = getelementptr [2 x [11 x [10 x i8]]], ptr @sctp_conntracks, i32 0, i32 %dir, i32 %i.0, i32 %cur_state
  %5 = ptrtoint ptr %arrayidx221 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx221, align 1
  %idxprom = zext i8 %6 to i32
  %arrayidx222 = getelementptr [10 x ptr], ptr @sctp_conntrack_names, i32 0, i32 %idxprom
  %7 = ptrtoint ptr %arrayidx222 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx222, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_new_state.__UNIQUE_ID_ddebug619, ptr noundef nonnull @.str.35, i32 noundef %dir, ptr noundef %4, i32 noundef %chunk_type, ptr noundef %8) #12
  br label %do.end225

do.end225:                                        ; preds = %if.then217, %do.body205
  %arrayidx228 = getelementptr [2 x [11 x [10 x i8]]], ptr @sctp_conntracks, i32 0, i32 %dir, i32 %i.0, i32 %cur_state
  %9 = ptrtoint ptr %arrayidx228 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx228, align 1
  %conv = zext i8 %10 to i32
  br label %cleanup

cleanup:                                          ; preds = %do.end225, %if.then201, %do.body189
  %retval.0 = phi i32 [ %conv, %do.end225 ], [ %cur_state, %if.then201 ], [ %cur_state, %do.body189 ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nf_conntrack_event_cache(i32 noundef %event, ptr nocapture noundef readonly %ct) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %ct_net.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 7
  %0 = ptrtoint ptr %ct_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ct_net.i, align 4
  %nf_conntrack_event_cb = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 40, i32 9
  %2 = ptrtoint ptr %nf_conntrack_event_cb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %nf_conntrack_event_cb, align 16
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %ext.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 13
  %4 = ptrtoint ptr %ext.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ext.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i.i, label %if.end.cleanup_crit_edge, label %nf_ct_ext_exist.exit.i.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

nf_ct_ext_exist.exit.i.i:                         ; preds = %if.end
  %arrayidx.i.i.i.i = getelementptr [10 x i8], ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.i.i.not.i.i = icmp eq i8 %7, 0
  br i1 %tobool.i.i.not.i.i, label %nf_ct_ext_exist.exit.i.i.cleanup_crit_edge, label %nf_ct_ecache_find.exit

nf_ct_ext_exist.exit.i.i.cleanup_crit_edge:       ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

nf_ct_ecache_find.exit:                           ; preds = %nf_ct_ext_exist.exit.i.i
  %conv.i.i = zext i8 %7 to i32
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %conv.i.i
  %cmp = icmp eq ptr %add.ptr.i.i, null
  br i1 %cmp, label %nf_ct_ecache_find.exit.cleanup_crit_edge, label %if.end5

nf_ct_ecache_find.exit.cleanup_crit_edge:         ; preds = %nf_ct_ecache_find.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %nf_ct_ecache_find.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_set_bit(i32 noundef %event, ptr noundef nonnull %add.ptr.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %nf_ct_ecache_find.exit.cleanup_crit_edge, %nf_ct_ext_exist.exit.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @nf_ct_timeout_lookup(ptr nocapture noundef readonly %ct) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %ext.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 13
  %0 = ptrtoint ptr %ext.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ext.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i, label %entry.if.end_crit_edge, label %nf_ct_ext_exist.exit.i.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

nf_ct_ext_exist.exit.i.i:                         ; preds = %entry
  %arrayidx.i.i.i.i = getelementptr [10 x i8], ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.i.i.not.i.i = icmp eq i8 %3, 0
  br i1 %tobool.i.i.not.i.i, label %nf_ct_ext_exist.exit.i.i.if.end_crit_edge, label %nf_ct_timeout_find.exit

nf_ct_ext_exist.exit.i.i.if.end_crit_edge:        ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

nf_ct_timeout_find.exit:                          ; preds = %nf_ct_ext_exist.exit.i.i
  %conv.i.i = zext i8 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %tobool.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not, label %nf_ct_timeout_find.exit.if.end_crit_edge, label %if.then

nf_ct_timeout_find.exit.if.end_crit_edge:         ; preds = %nf_ct_timeout_find.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %nf_ct_timeout_find.exit
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %add.ptr.i.i, align 4
  %call.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.then.nf_ct_timeout_data.exit_crit_edge

if.then.nf_ct_timeout_data.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %nf_ct_timeout_data.exit

land.lhs.true.i:                                  ; preds = %if.then
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.nf_ct_timeout_data.exit_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.nf_ct_timeout_data.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nf_ct_timeout_data.exit

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b13.i = load i1, ptr @nf_ct_timeout_data.__warned, align 1
  br i1 %.b13.i, label %land.lhs.true5.i.nf_ct_timeout_data.exit_crit_edge, label %if.then.i

land.lhs.true5.i.nf_ct_timeout_data.exit_crit_edge: ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nf_ct_timeout_data.exit

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @nf_ct_timeout_data.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.46, i32 noundef 38, ptr noundef nonnull @.str.47) #12
  br label %nf_ct_timeout_data.exit

nf_ct_timeout_data.exit:                          ; preds = %if.then.i, %land.lhs.true5.i.nf_ct_timeout_data.exit_crit_edge, %land.lhs.true.i.nf_ct_timeout_data.exit_crit_edge, %if.then.nf_ct_timeout_data.exit_crit_edge
  %cmp.i = icmp eq ptr %5, null
  %data.i = getelementptr inbounds %struct.nf_ct_timeout, ptr %5, i32 0, i32 2
  %retval.0.i = select i1 %cmp.i, ptr null, ptr %data.i
  br label %if.end

if.end:                                           ; preds = %nf_ct_timeout_data.exit, %nf_ct_timeout_find.exit.if.end_crit_edge, %nf_ct_ext_exist.exit.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  %timeouts.0 = phi ptr [ %retval.0.i, %nf_ct_timeout_data.exit ], [ null, %nf_ct_timeout_find.exit.if.end_crit_edge ], [ null, %nf_ct_ext_exist.exit.i.i.if.end_crit_edge ], [ null, %entry.if.end_crit_edge ]
  ret ptr %timeouts.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define dso_local void @nf_conntrack_sctp_init_net(ptr nocapture noundef writeonly %net) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sctp.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 6
  %0 = call ptr @memcpy(ptr %sctp.i, ptr @sctp_timeouts, i32 40)
  %1 = ptrtoint ptr %sctp.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1000, ptr %sctp.i, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @sctp_can_early_drop(ptr nocapture noundef readonly %ct) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %proto = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14
  %0 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %proto, align 8
  %.off = add i32 %1, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  ret i1 %switch
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sctp_to_nlattr(ptr noundef %skb, ptr nocapture noundef readnone %nla, ptr noundef %ct, i1 noundef zeroext %destroy) #0 align 64 {
entry:
  %tmp.i33 = alloca i32, align 4
  %tmp.i31 = alloca i32, align 4
  %tmp.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %0 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 32771, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %tobool.not35 = icmp eq ptr %1, null
  %tobool.not = select i1 %cmp.i.i, i1 true, i1 %tobool.not35
  br i1 %tobool.not, label %entry.nla_put_failure_crit_edge, label %if.end

entry.nla_put_failure_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

if.end:                                           ; preds = %entry
  %proto = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14
  %2 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %proto, align 8
  %conv = trunc i32 %3 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #12
  %4 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %tmp.i, align 1
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %tmp.i) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.nla_put_failure_crit_edge

if.end.nla_put_failure_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

if.end4:                                          ; preds = %if.end
  br i1 %destroy, label %if.end4.skip_state_crit_edge, label %if.end7

if.end4.skip_state_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %skip_state

if.end7:                                          ; preds = %if.end4
  %vtag = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 0, i32 3
  %5 = ptrtoint ptr %vtag to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vtag, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i31) #12
  %7 = ptrtoint ptr %tmp.i31 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %tmp.i31, align 4
  %call.i32 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i31) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i31) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32)
  %tobool10.not = icmp eq i32 %call.i32, 0
  br i1 %tobool10.not, label %lor.lhs.false, label %if.end7.nla_put_failure_crit_edge

if.end7.nla_put_failure_crit_edge:                ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

lor.lhs.false:                                    ; preds = %if.end7
  %arrayidx13 = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 0, i32 4
  %8 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx13, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i33) #12
  %10 = ptrtoint ptr %tmp.i33 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %tmp.i33, align 4
  %call.i34 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i33) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i33) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i34)
  %tobool15.not = icmp eq i32 %call.i34, 0
  br i1 %tobool15.not, label %lor.lhs.false.skip_state_crit_edge, label %lor.lhs.false.nla_put_failure_crit_edge

lor.lhs.false.nla_put_failure_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

lor.lhs.false.skip_state_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %skip_state

skip_state:                                       ; preds = %lor.lhs.false.skip_state_crit_edge, %if.end4.skip_state_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
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

nla_put_failure:                                  ; preds = %lor.lhs.false.nla_put_failure_crit_edge, %if.end7.nla_put_failure_crit_edge, %if.end.nla_put_failure_crit_edge, %entry.nla_put_failure_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  br label %cleanup

cleanup:                                          ; preds = %nla_put_failure, %skip_state
  %retval.0 = phi i32 [ -1, %nla_put_failure ], [ 0, %skip_state ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nlattr_to_sctp(ptr nocapture noundef readonly %cda, ptr noundef %ct) #0 align 64 {
entry:
  %tb = alloca [4 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr ptr, ptr %cda, i32 3
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tb) #12
  %2 = getelementptr inbounds [4 x ptr], ptr %tb, i32 0, i32 1
  %3 = getelementptr inbounds [4 x ptr], ptr %tb, i32 0, i32 2
  %4 = getelementptr inbounds [4 x ptr], ptr %tb, i32 0, i32 3
  %tobool.not = icmp eq ptr %1, null
  %5 = call ptr @memset(ptr %tb, i32 255, i32 16)
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %1, align 2
  %conv.i.i = zext i16 %7 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 3, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @sctp_nla_policy, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %2, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %if.end2.cleanup_crit_edge, label %lor.lhs.false

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end2
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %tobool6.not = icmp eq ptr %11, null
  br i1 %tobool6.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false7

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %4, align 4
  %tobool9.not = icmp eq ptr %13, null
  br i1 %tobool9.not, label %lor.lhs.false7.cleanup_crit_edge, label %if.end11

lor.lhs.false7.cleanup_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end11:                                         ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #14
  %lock = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 1
  call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %2, align 4
  %add.ptr.i.i32 = getelementptr i8, ptr %15, i32 4
  %16 = ptrtoint ptr %add.ptr.i.i32 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %add.ptr.i.i32, align 1
  %conv = zext i8 %17 to i32
  %proto = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14
  %18 = ptrtoint ptr %proto to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv, ptr %proto, align 8
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %3, align 4
  %add.ptr.i.i33 = getelementptr i8, ptr %20, i32 4
  %21 = ptrtoint ptr %add.ptr.i.i33 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr.i.i33, align 4
  %vtag = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 0, i32 3
  %23 = ptrtoint ptr %vtag to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %vtag, align 4
  %24 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %4, align 4
  %add.ptr.i.i34 = getelementptr i8, ptr %25, i32 4
  %26 = ptrtoint ptr %add.ptr.i.i34 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr.i.i34, align 4
  %arrayidx22 = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 0, i32 4
  %28 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %arrayidx22, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %lor.lhs.false7.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ 0, %entry.cleanup_crit_edge ], [ %call2.i, %if.end.cleanup_crit_edge ], [ -22, %lor.lhs.false7.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end2.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tb) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_ct_port_tuple_to_nlattr(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_ct_port_nlattr_tuple_size() #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_ct_port_nlattr_to_tuple(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sctp_timeout_nlattr_to_obj(ptr nocapture noundef readonly %tb, ptr nocapture noundef %net, ptr noundef %data) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sctp.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 6
  %tobool.not = icmp eq ptr %data, null
  %spec.select = select i1 %tobool.not, ptr %sctp.i, ptr %data
  %0 = ptrtoint ptr %sctp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sctp.i, align 4
  %2 = ptrtoint ptr %spec.select to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %spec.select, align 4
  %arrayidx.1 = getelementptr %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 6, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.1, align 4
  %arrayidx3.1 = getelementptr i32, ptr %spec.select, i32 1
  %5 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %arrayidx3.1, align 4
  %arrayidx.2 = getelementptr %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 6, i32 0, i32 2
  %6 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.2, align 4
  %arrayidx3.2 = getelementptr i32, ptr %spec.select, i32 2
  %8 = ptrtoint ptr %arrayidx3.2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %arrayidx3.2, align 4
  %arrayidx.3 = getelementptr %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 6, i32 0, i32 3
  %9 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.3, align 4
  %arrayidx3.3 = getelementptr i32, ptr %spec.select, i32 3
  %11 = ptrtoint ptr %arrayidx3.3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %arrayidx3.3, align 4
  %arrayidx.4 = getelementptr %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 6, i32 0, i32 4
  %12 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.4, align 4
  %arrayidx3.4 = getelementptr i32, ptr %spec.select, i32 4
  %14 = ptrtoint ptr %arrayidx3.4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %arrayidx3.4, align 4
  %arrayidx.5 = getelementptr %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 6, i32 0, i32 5
  %15 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.5, align 4
  %arrayidx3.5 = getelementptr i32, ptr %spec.select, i32 5
  %17 = ptrtoint ptr %arrayidx3.5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %arrayidx3.5, align 4
  %arrayidx.6 = getelementptr %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 6, i32 0, i32 6
  %18 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.6, align 4
  %arrayidx3.6 = getelementptr i32, ptr %spec.select, i32 6
  %20 = ptrtoint ptr %arrayidx3.6 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx3.6, align 4
  %arrayidx.7 = getelementptr %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 6, i32 0, i32 7
  %21 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.7, align 4
  %arrayidx3.7 = getelementptr i32, ptr %spec.select, i32 7
  %23 = ptrtoint ptr %arrayidx3.7 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx3.7, align 4
  %arrayidx.8 = getelementptr %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 6, i32 0, i32 8
  %24 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.8, align 4
  %arrayidx3.8 = getelementptr i32, ptr %spec.select, i32 8
  %26 = ptrtoint ptr %arrayidx3.8 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx3.8, align 4
  %arrayidx.9 = getelementptr %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 6, i32 0, i32 9
  %27 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.9, align 4
  %arrayidx3.9 = getelementptr i32, ptr %spec.select, i32 9
  %29 = ptrtoint ptr %arrayidx3.9 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx3.9, align 4
  %arrayidx7 = getelementptr ptr, ptr %tb, i32 1
  %30 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx7, align 4
  %tobool8.not = icmp eq ptr %31, null
  br i1 %tobool8.not, label %entry.for.inc14_crit_edge, label %if.then9

entry.for.inc14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc14

if.then9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i = getelementptr i8, ptr %31, i32 4
  %32 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr.i.i, align 4
  %mul = mul i32 %33, 100
  %34 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %mul, ptr %arrayidx3.1, align 4
  br label %for.inc14

for.inc14:                                        ; preds = %if.then9, %entry.for.inc14_crit_edge
  %arrayidx7.1 = getelementptr ptr, ptr %tb, i32 2
  %35 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx7.1, align 4
  %tobool8.not.1 = icmp eq ptr %36, null
  br i1 %tobool8.not.1, label %for.inc14.for.inc14.1_crit_edge, label %if.then9.1

for.inc14.for.inc14.1_crit_edge:                  ; preds = %for.inc14
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc14.1

if.then9.1:                                       ; preds = %for.inc14
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i.1 = getelementptr i8, ptr %36, i32 4
  %37 = ptrtoint ptr %add.ptr.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %add.ptr.i.i.1, align 4
  %mul.1 = mul i32 %38, 100
  %39 = ptrtoint ptr %arrayidx3.2 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %mul.1, ptr %arrayidx3.2, align 4
  br label %for.inc14.1

for.inc14.1:                                      ; preds = %if.then9.1, %for.inc14.for.inc14.1_crit_edge
  %arrayidx7.2 = getelementptr ptr, ptr %tb, i32 3
  %40 = ptrtoint ptr %arrayidx7.2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx7.2, align 4
  %tobool8.not.2 = icmp eq ptr %41, null
  br i1 %tobool8.not.2, label %for.inc14.1.for.inc14.2_crit_edge, label %if.then9.2

for.inc14.1.for.inc14.2_crit_edge:                ; preds = %for.inc14.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc14.2

if.then9.2:                                       ; preds = %for.inc14.1
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i.2 = getelementptr i8, ptr %41, i32 4
  %42 = ptrtoint ptr %add.ptr.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %add.ptr.i.i.2, align 4
  %mul.2 = mul i32 %43, 100
  %44 = ptrtoint ptr %arrayidx3.3 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %mul.2, ptr %arrayidx3.3, align 4
  br label %for.inc14.2

for.inc14.2:                                      ; preds = %if.then9.2, %for.inc14.1.for.inc14.2_crit_edge
  %arrayidx7.3 = getelementptr ptr, ptr %tb, i32 4
  %45 = ptrtoint ptr %arrayidx7.3 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx7.3, align 4
  %tobool8.not.3 = icmp eq ptr %46, null
  br i1 %tobool8.not.3, label %for.inc14.2.for.inc14.3_crit_edge, label %if.then9.3

for.inc14.2.for.inc14.3_crit_edge:                ; preds = %for.inc14.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc14.3

if.then9.3:                                       ; preds = %for.inc14.2
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i.3 = getelementptr i8, ptr %46, i32 4
  %47 = ptrtoint ptr %add.ptr.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %add.ptr.i.i.3, align 4
  %mul.3 = mul i32 %48, 100
  %49 = ptrtoint ptr %arrayidx3.4 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %mul.3, ptr %arrayidx3.4, align 4
  br label %for.inc14.3

for.inc14.3:                                      ; preds = %if.then9.3, %for.inc14.2.for.inc14.3_crit_edge
  %arrayidx7.4 = getelementptr ptr, ptr %tb, i32 5
  %50 = ptrtoint ptr %arrayidx7.4 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx7.4, align 4
  %tobool8.not.4 = icmp eq ptr %51, null
  br i1 %tobool8.not.4, label %for.inc14.3.for.inc14.4_crit_edge, label %if.then9.4

for.inc14.3.for.inc14.4_crit_edge:                ; preds = %for.inc14.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc14.4

if.then9.4:                                       ; preds = %for.inc14.3
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i.4 = getelementptr i8, ptr %51, i32 4
  %52 = ptrtoint ptr %add.ptr.i.i.4 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %add.ptr.i.i.4, align 4
  %mul.4 = mul i32 %53, 100
  %54 = ptrtoint ptr %arrayidx3.5 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %mul.4, ptr %arrayidx3.5, align 4
  br label %for.inc14.4

for.inc14.4:                                      ; preds = %if.then9.4, %for.inc14.3.for.inc14.4_crit_edge
  %arrayidx7.5 = getelementptr ptr, ptr %tb, i32 6
  %55 = ptrtoint ptr %arrayidx7.5 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx7.5, align 4
  %tobool8.not.5 = icmp eq ptr %56, null
  br i1 %tobool8.not.5, label %for.inc14.4.for.inc14.5_crit_edge, label %if.then9.5

for.inc14.4.for.inc14.5_crit_edge:                ; preds = %for.inc14.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc14.5

if.then9.5:                                       ; preds = %for.inc14.4
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i.5 = getelementptr i8, ptr %56, i32 4
  %57 = ptrtoint ptr %add.ptr.i.i.5 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %add.ptr.i.i.5, align 4
  %mul.5 = mul i32 %58, 100
  %59 = ptrtoint ptr %arrayidx3.6 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %mul.5, ptr %arrayidx3.6, align 4
  br label %for.inc14.5

for.inc14.5:                                      ; preds = %if.then9.5, %for.inc14.4.for.inc14.5_crit_edge
  %arrayidx7.6 = getelementptr ptr, ptr %tb, i32 7
  %60 = ptrtoint ptr %arrayidx7.6 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx7.6, align 4
  %tobool8.not.6 = icmp eq ptr %61, null
  br i1 %tobool8.not.6, label %for.inc14.5.for.inc14.6_crit_edge, label %if.then9.6

for.inc14.5.for.inc14.6_crit_edge:                ; preds = %for.inc14.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc14.6

if.then9.6:                                       ; preds = %for.inc14.5
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i.6 = getelementptr i8, ptr %61, i32 4
  %62 = ptrtoint ptr %add.ptr.i.i.6 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %add.ptr.i.i.6, align 4
  %mul.6 = mul i32 %63, 100
  %64 = ptrtoint ptr %arrayidx3.7 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %mul.6, ptr %arrayidx3.7, align 4
  br label %for.inc14.6

for.inc14.6:                                      ; preds = %if.then9.6, %for.inc14.5.for.inc14.6_crit_edge
  %arrayidx7.7 = getelementptr ptr, ptr %tb, i32 8
  %65 = ptrtoint ptr %arrayidx7.7 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx7.7, align 4
  %tobool8.not.7 = icmp eq ptr %66, null
  br i1 %tobool8.not.7, label %for.inc14.6.for.inc14.7_crit_edge, label %if.then9.7

for.inc14.6.for.inc14.7_crit_edge:                ; preds = %for.inc14.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc14.7

if.then9.7:                                       ; preds = %for.inc14.6
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i.7 = getelementptr i8, ptr %66, i32 4
  %67 = ptrtoint ptr %add.ptr.i.i.7 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %add.ptr.i.i.7, align 4
  %mul.7 = mul i32 %68, 100
  %69 = ptrtoint ptr %arrayidx3.8 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %mul.7, ptr %arrayidx3.8, align 4
  br label %for.inc14.7

for.inc14.7:                                      ; preds = %if.then9.7, %for.inc14.6.for.inc14.7_crit_edge
  %arrayidx7.8 = getelementptr ptr, ptr %tb, i32 9
  %70 = ptrtoint ptr %arrayidx7.8 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx7.8, align 4
  %tobool8.not.8 = icmp eq ptr %71, null
  br i1 %tobool8.not.8, label %for.inc14.7.for.inc14.8_crit_edge, label %if.then9.8

for.inc14.7.for.inc14.8_crit_edge:                ; preds = %for.inc14.7
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc14.8

if.then9.8:                                       ; preds = %for.inc14.7
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i.8 = getelementptr i8, ptr %71, i32 4
  %72 = ptrtoint ptr %add.ptr.i.i.8 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %add.ptr.i.i.8, align 4
  %mul.8 = mul i32 %73, 100
  %74 = ptrtoint ptr %arrayidx3.9 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %mul.8, ptr %arrayidx3.9, align 4
  br label %for.inc14.8

for.inc14.8:                                      ; preds = %if.then9.8, %for.inc14.7.for.inc14.8_crit_edge
  %75 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx3.1, align 4
  %77 = ptrtoint ptr %spec.select to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %spec.select, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sctp_timeout_obj_to_nlattr(ptr noundef %skb, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %div = udiv i32 %1, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #12
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %div, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %for.cond, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond:                                         ; preds = %entry
  %arrayidx.1 = getelementptr i32, ptr %data, i32 2
  %3 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.1, align 4
  %div.1 = udiv i32 %4, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #12
  %5 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %div.1, ptr %tmp.i, align 4
  %call.i.1 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %tobool.not.1 = icmp eq i32 %call.i.1, 0
  br i1 %tobool.not.1, label %for.cond.1, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %arrayidx.2 = getelementptr i32, ptr %data, i32 3
  %6 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.2, align 4
  %div.2 = udiv i32 %7, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #12
  %8 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %div.2, ptr %tmp.i, align 4
  %call.i.2 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2)
  %tobool.not.2 = icmp eq i32 %call.i.2, 0
  br i1 %tobool.not.2, label %for.cond.2, label %for.cond.1.cleanup_crit_edge

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  %arrayidx.3 = getelementptr i32, ptr %data, i32 4
  %9 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.3, align 4
  %div.3 = udiv i32 %10, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #12
  %11 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %div.3, ptr %tmp.i, align 4
  %call.i.3 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.3)
  %tobool.not.3 = icmp eq i32 %call.i.3, 0
  br i1 %tobool.not.3, label %for.cond.3, label %for.cond.2.cleanup_crit_edge

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.3:                                       ; preds = %for.cond.2
  %arrayidx.4 = getelementptr i32, ptr %data, i32 5
  %12 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.4, align 4
  %div.4 = udiv i32 %13, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #12
  %14 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %div.4, ptr %tmp.i, align 4
  %call.i.4 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %tmp.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.4)
  %tobool.not.4 = icmp eq i32 %call.i.4, 0
  br i1 %tobool.not.4, label %for.cond.4, label %for.cond.3.cleanup_crit_edge

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.4:                                       ; preds = %for.cond.3
  %arrayidx.5 = getelementptr i32, ptr %data, i32 6
  %15 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.5, align 4
  %div.5 = udiv i32 %16, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #12
  %17 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %div.5, ptr %tmp.i, align 4
  %call.i.5 = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %tmp.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.5)
  %tobool.not.5 = icmp eq i32 %call.i.5, 0
  br i1 %tobool.not.5, label %for.cond.5, label %for.cond.4.cleanup_crit_edge

for.cond.4.cleanup_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.5:                                       ; preds = %for.cond.4
  %arrayidx.6 = getelementptr i32, ptr %data, i32 7
  %18 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.6, align 4
  %div.6 = udiv i32 %19, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #12
  %20 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %div.6, ptr %tmp.i, align 4
  %call.i.6 = call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef 4, ptr noundef nonnull %tmp.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.6)
  %tobool.not.6 = icmp eq i32 %call.i.6, 0
  br i1 %tobool.not.6, label %for.cond.6, label %for.cond.5.cleanup_crit_edge

for.cond.5.cleanup_crit_edge:                     ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.6:                                       ; preds = %for.cond.5
  %arrayidx.7 = getelementptr i32, ptr %data, i32 8
  %21 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.7, align 4
  %div.7 = udiv i32 %22, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #12
  %23 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %div.7, ptr %tmp.i, align 4
  %call.i.7 = call i32 @nla_put(ptr noundef %skb, i32 noundef 8, i32 noundef 4, ptr noundef nonnull %tmp.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.7)
  %tobool.not.7 = icmp eq i32 %call.i.7, 0
  br i1 %tobool.not.7, label %for.cond.7, label %for.cond.6.cleanup_crit_edge

for.cond.6.cleanup_crit_edge:                     ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.7:                                       ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.8 = getelementptr i32, ptr %data, i32 9
  %24 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.8, align 4
  %div.8 = udiv i32 %25, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #12
  %26 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %div.8, ptr %tmp.i, align 4
  %call.i.8 = call i32 @nla_put(ptr noundef %skb, i32 noundef 9, i32 noundef 4, ptr noundef nonnull %tmp.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.8)
  %tobool.not.8 = icmp eq i32 %call.i.8, 0
  %spec.select = select i1 %tobool.not.8, i32 0, i32 -28
  br label %cleanup

cleanup:                                          ; preds = %for.cond.7, %for.cond.6.cleanup_crit_edge, %for.cond.5.cleanup_crit_edge, %for.cond.4.cleanup_crit_edge, %for.cond.3.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -28, %entry.cleanup_crit_edge ], [ -28, %for.cond.cleanup_crit_edge ], [ -28, %for.cond.1.cleanup_crit_edge ], [ -28, %for.cond.2.cleanup_crit_edge ], [ -28, %for.cond.3.cleanup_crit_edge ], [ -28, %for.cond.4.cleanup_crit_edge ], [ -28, %for.cond.5.cleanup_crit_edge ], [ -28, %for.cond.6.cleanup_crit_edge ], [ %spec.select, %for.cond.7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sctp_print_conntrack(ptr noundef %s, ptr nocapture noundef readonly %ct) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %proto = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14
  %0 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %proto, align 8
  %arrayidx = getelementptr [10 x ptr], ptr @sctp_conntrack_names, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.48, ptr noundef %3) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_ensure_writable(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @nf_l4proto_log_invalid(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__skb_checksum(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sctp_csum_update(ptr noundef %buff, i32 noundef %len, i32 noundef %sum) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @crc32c(i32 noundef %sum, ptr noundef %buff, i32 noundef %len) #12
  ret i32 %call
}

; Function Attrs: inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sctp_csum_combine(i32 noundef %csum, i32 noundef %csum2, i32 noundef %offset, i32 noundef %len) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 @__crc32c_le_shift(i32 noundef %csum, i32 noundef %len) #16
  %xor.i = xor i32 %call.i, %csum2
  ret i32 %xor.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crc32c(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @__crc32c_le_shift(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

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
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !14, !15, !17, !19, !20, !22, !24, !26, !28, !30, !32, !34, !35, !36, !38, !39, !41, !42, !44, !45, !46, !48, !49, !51, !52, !54, !55, !57, !58, !59, !61, !62, !64, !65, !67, !68, !70, !71, !73, !74, !76, !77, !79, !80, !82, !83, !85, !86, !88, !89, !91, !92, !94, !95, !97, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !125, !126, !128, !130, !132}
!llvm.module.flags = !{!134, !135, !136, !137, !138, !139, !140, !141}
!llvm.ident = !{!142}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/netfilter/nf_conntrack_proto_sctp.c", i32 406, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @nf_conntrack_sctp_packet.__UNIQUE_ID_ddebug624, !1, !"__UNIQUE_ID_ddebug624", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/netfilter/nf_conntrack_proto_sctp.c", i32 435, i32 5}
!8 = !{ptr @nf_conntrack_sctp_packet.__UNIQUE_ID_ddebug625, !7, !"__UNIQUE_ID_ddebug625", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../net/netfilter/nf_conntrack_proto_sctp.c", i32 450, i32 5}
!11 = !{ptr @nf_conntrack_sctp_packet.__UNIQUE_ID_ddebug626, !10, !"__UNIQUE_ID_ddebug626", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/netfilter/nf_conntrack_proto_sctp.c", i32 474, i32 4}
!14 = !{ptr @nf_conntrack_sctp_packet.__UNIQUE_ID_ddebug627, !13, !"__UNIQUE_ID_ddebug627", i1 false, i1 false}
!15 = !{ptr @nf_conntrack_sctp_packet.__UNIQUE_ID_ddebug628, !16, !"__UNIQUE_ID_ddebug628", i1 false, i1 false}
!16 = !{!"../net/netfilter/nf_conntrack_proto_sctp.c", i32 489, i32 4}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/netfilter/nf_conntrack_proto_sctp.c", i32 522, i32 3}
!19 = !{ptr @nf_conntrack_sctp_packet.__UNIQUE_ID_ddebug629, !18, !"__UNIQUE_ID_ddebug629", i1 false, i1 false}
!20 = !{ptr @nf_conntrack_l4proto_sctp, !21, !"nf_conntrack_l4proto_sctp", i1 false, i1 false}
!21 = !{!"../net/netfilter/nf_conntrack_proto_sctp.c", i32 704, i32 35}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/netfilter/nf_conntrack_proto_sctp.c", i32 335, i32 12}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../net/netfilter/nf_conntrack_proto_sctp.c", i32 342, i32 13}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/netfilter/nf_conntrack_proto_sctp.c", i32 347, i32 13}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/netfilter/nf_conntrack_proto_sctp.c", i32 354, i32 51}
!30 = !{ptr @sctp_csum_ops, !31, !"sctp_csum_ops", i1 false, i1 false}
!31 = !{!"../include/net/sctp/checksum.h", i32 46, i32 38}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../net/netfilter/nf_conntrack_proto_sctp.c", i32 175, i32 3}
!34 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @do_basic_checks.__UNIQUE_ID_ddebug603, !33, !"__UNIQUE_ID_ddebug603", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../net/netfilter/nf_conntrack_proto_sctp.c", i32 191, i32 4}
!38 = !{ptr @do_basic_checks.__UNIQUE_ID_ddebug604, !37, !"__UNIQUE_ID_ddebug604", i1 false, i1 false}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../net/netfilter/nf_conntrack_proto_sctp.c", i32 199, i32 2}
!41 = !{ptr @do_basic_checks.__UNIQUE_ID_ddebug605, !40, !"__UNIQUE_ID_ddebug605", i1 false, i1 false}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../net/netfilter/nf_conntrack_proto_sctp.c", i32 289, i32 4}
!44 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @sctp_new.__UNIQUE_ID_ddebug620, !43, !"__UNIQUE_ID_ddebug620", i1 false, i1 false}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../net/netfilter/nf_conntrack_proto_sctp.c", i32 305, i32 4}
!48 = !{ptr @sctp_new.__UNIQUE_ID_ddebug621, !47, !"__UNIQUE_ID_ddebug621", i1 false, i1 false}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../net/netfilter/nf_conntrack_proto_sctp.c", i32 310, i32 4}
!51 = !{ptr @sctp_new.__UNIQUE_ID_ddebug622, !50, !"__UNIQUE_ID_ddebug622", i1 false, i1 false}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../net/netfilter/nf_conntrack_proto_sctp.c", i32 316, i32 4}
!54 = !{ptr @sctp_new.__UNIQUE_ID_ddebug623, !53, !"__UNIQUE_ID_ddebug623", i1 false, i1 false}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../net/netfilter/nf_conntrack_proto_sctp.c", i32 209, i32 2}
!57 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @sctp_new_state.__UNIQUE_ID_ddebug606, !56, !"__UNIQUE_ID_ddebug606", i1 false, i1 false}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../net/netfilter/nf_conntrack_proto_sctp.c", i32 213, i32 3}
!61 = !{ptr @sctp_new_state.__UNIQUE_ID_ddebug607, !60, !"__UNIQUE_ID_ddebug607", i1 false, i1 false}
!62 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../net/netfilter/nf_conntrack_proto_sctp.c", i32 217, i32 3}
!64 = !{ptr @sctp_new_state.__UNIQUE_ID_ddebug608, !63, !"__UNIQUE_ID_ddebug608", i1 false, i1 false}
!65 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../net/netfilter/nf_conntrack_proto_sctp.c", i32 221, i32 3}
!67 = !{ptr @sctp_new_state.__UNIQUE_ID_ddebug609, !66, !"__UNIQUE_ID_ddebug609", i1 false, i1 false}
!68 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../net/netfilter/nf_conntrack_proto_sctp.c", i32 225, i32 3}
!70 = !{ptr @sctp_new_state.__UNIQUE_ID_ddebug610, !69, !"__UNIQUE_ID_ddebug610", i1 false, i1 false}
!71 = !{ptr @.str.27, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../net/netfilter/nf_conntrack_proto_sctp.c", i32 229, i32 3}
!73 = !{ptr @sctp_new_state.__UNIQUE_ID_ddebug611, !72, !"__UNIQUE_ID_ddebug611", i1 false, i1 false}
!74 = !{ptr @.str.28, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../net/netfilter/nf_conntrack_proto_sctp.c", i32 233, i32 3}
!76 = !{ptr @sctp_new_state.__UNIQUE_ID_ddebug612, !75, !"__UNIQUE_ID_ddebug612", i1 false, i1 false}
!77 = !{ptr @.str.29, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../net/netfilter/nf_conntrack_proto_sctp.c", i32 237, i32 3}
!79 = !{ptr @sctp_new_state.__UNIQUE_ID_ddebug613, !78, !"__UNIQUE_ID_ddebug613", i1 false, i1 false}
!80 = !{ptr @.str.30, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../net/netfilter/nf_conntrack_proto_sctp.c", i32 241, i32 3}
!82 = !{ptr @sctp_new_state.__UNIQUE_ID_ddebug614, !81, !"__UNIQUE_ID_ddebug614", i1 false, i1 false}
!83 = !{ptr @.str.31, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../net/netfilter/nf_conntrack_proto_sctp.c", i32 245, i32 3}
!85 = !{ptr @sctp_new_state.__UNIQUE_ID_ddebug615, !84, !"__UNIQUE_ID_ddebug615", i1 false, i1 false}
!86 = !{ptr @.str.32, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../net/netfilter/nf_conntrack_proto_sctp.c", i32 249, i32 3}
!88 = !{ptr @sctp_new_state.__UNIQUE_ID_ddebug616, !87, !"__UNIQUE_ID_ddebug616", i1 false, i1 false}
!89 = !{ptr @.str.33, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../net/netfilter/nf_conntrack_proto_sctp.c", i32 253, i32 3}
!91 = !{ptr @sctp_new_state.__UNIQUE_ID_ddebug617, !90, !"__UNIQUE_ID_ddebug617", i1 false, i1 false}
!92 = !{ptr @.str.34, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../net/netfilter/nf_conntrack_proto_sctp.c", i32 258, i32 3}
!94 = !{ptr @sctp_new_state.__UNIQUE_ID_ddebug618, !93, !"__UNIQUE_ID_ddebug618", i1 false, i1 false}
!95 = !{ptr @.str.35, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../net/netfilter/nf_conntrack_proto_sctp.c", i32 263, i32 2}
!97 = !{ptr @sctp_new_state.__UNIQUE_ID_ddebug619, !96, !"__UNIQUE_ID_ddebug619", i1 false, i1 false}
!98 = !{ptr @.str.36, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../net/netfilter/nf_conntrack_proto_sctp.c", i32 36, i32 2}
!100 = !{ptr @.str.37, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../net/netfilter/nf_conntrack_proto_sctp.c", i32 37, i32 2}
!102 = !{ptr @.str.38, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../net/netfilter/nf_conntrack_proto_sctp.c", i32 38, i32 2}
!104 = !{ptr @.str.39, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../net/netfilter/nf_conntrack_proto_sctp.c", i32 39, i32 2}
!106 = !{ptr @.str.40, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../net/netfilter/nf_conntrack_proto_sctp.c", i32 40, i32 2}
!108 = !{ptr @.str.41, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../net/netfilter/nf_conntrack_proto_sctp.c", i32 41, i32 2}
!110 = !{ptr @.str.42, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../net/netfilter/nf_conntrack_proto_sctp.c", i32 42, i32 2}
!112 = !{ptr @.str.43, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../net/netfilter/nf_conntrack_proto_sctp.c", i32 43, i32 2}
!114 = !{ptr @.str.44, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../net/netfilter/nf_conntrack_proto_sctp.c", i32 44, i32 2}
!116 = !{ptr @.str.45, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../net/netfilter/nf_conntrack_proto_sctp.c", i32 45, i32 2}
!118 = !{ptr @sctp_conntrack_names, !119, !"sctp_conntrack_names", i1 false, i1 false}
!119 = !{!"../net/netfilter/nf_conntrack_proto_sctp.c", i32 35, i32 26}
!120 = !{ptr @sctp_conntracks, !121, !"sctp_conntracks", i1 false, i1 false}
!121 = !{!"../net/netfilter/nf_conntrack_proto_sctp.c", i32 115, i32 17}
!122 = distinct !{null, !123, !"__warned", i1 false, i1 false}
!123 = !{!"../include/net/netfilter/nf_conntrack_timeout.h", i32 38, i32 12}
!124 = !{ptr @.str.46, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @.str.47, !123, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @sctp_timeouts, !127, !"sctp_timeouts", i1 false, i1 false}
!127 = !{!"../net/netfilter/nf_conntrack_proto_sctp.c", i32 53, i32 27}
!128 = !{ptr @sctp_nla_policy, !129, !"sctp_nla_policy", i1 false, i1 false}
!129 = !{!"../net/netfilter/nf_conntrack_proto_sctp.c", i32 587, i32 32}
!130 = !{ptr @sctp_timeout_nla_policy, !131, !"sctp_timeout_nla_policy", i1 false, i1 false}
!131 = !{!"../net/netfilter/nf_conntrack_proto_sctp.c", i32 677, i32 1}
!132 = !{ptr @.str.48, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../net/netfilter/nf_conntrack_proto_sctp.c", i32 152, i32 16}
!134 = !{i32 1, !"wchar_size", i32 2}
!135 = !{i32 1, !"min_enum_size", i32 4}
!136 = !{i32 8, !"branch-target-enforcement", i32 0}
!137 = !{i32 8, !"sign-return-address", i32 0}
!138 = !{i32 8, !"sign-return-address-all", i32 0}
!139 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!140 = !{i32 7, !"uwtable", i32 1}
!141 = !{i32 7, !"frame-pointer", i32 2}
!142 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!143 = !{!"branch_weights", i32 1, i32 2000}
!144 = !{i64 2148896322, i64 2148896327, i64 2148896340, i64 2148896384, i64 2148896418, i64 2148896439}
