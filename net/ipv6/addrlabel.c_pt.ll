; ModuleID = '/llk/IR_all_yes/net/ipv6/addrlabel.c_pt.bc'
source_filename = "../net/ipv6/addrlabel.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ip6addrlbl_init_table = type { ptr, i32, i32 }
%struct.in6_addr = type { %union.anon.103 }
%union.anon.103 = type { [4 x i32] }
%struct.nla_policy = type { i8, i8, i16, %union.anon.91 }
%union.anon.91 = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ip6addrlbl_entry = type { %struct.in6_addr, i32, i32, i32, i32, %struct.hlist_node, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.atomic_t = type { i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.139, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.139 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff = type { %union.anon.82, %union.anon.109, %union.anon.110, [48 x i8], %union.anon.111, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.113, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { ptr, ptr, %union.anon.84 }
%union.anon.84 = type { ptr }
%union.anon.109 = type { ptr }
%union.anon.110 = type { i64 }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, ptr }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.115, i32, i32, i32, i16, i16, %union.anon.117, i32, %union.anon.118, %union.anon.119, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.115 = type { i32 }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i16 }
%struct.sock_common = type { %union.anon.14, %union.anon.16, %union.anon.17, i16, i8, i8, i32, %union.anon.19, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.127, [0 x i32], %union.anon.128, i16, i16, %union.anon.129, %struct.refcount_struct, [0 x i32], %union.anon.130 }
%union.anon.14 = type { i64 }
%union.anon.16 = type { i32 }
%union.anon.17 = type { i32 }
%union.anon.19 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.atomic64_t = type { i64 }
%union.anon.127 = type { i32 }
%union.anon.128 = type { %struct.hlist_node }
%union.anon.129 = type { i32 }
%union.anon.130 = type { i32 }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.93 }
%union.anon.93 = type { [6 x i32], [24 x i8] }

@ipv6_addr_label_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @ip6addrlbl_net_init, ptr null, ptr @ip6addrlbl_net_exit, ptr null, ptr null, i32 0 }, [32 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@__ipv6_addr_label.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"net/ipv6/addrlabel.c\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@ip6addrlbl_net_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"&net->ipv6.ip6addrlbl_table.lock\00", [63 x i8] zeroinitializer }, align 32
@ip6addrlbl_init_table = internal constant { [10 x %struct.ip6addrlbl_init_table], [40 x i8] } { [10 x %struct.ip6addrlbl_init_table] [%struct.ip6addrlbl_init_table { ptr @in6addr_any, i32 0, i32 1 }, %struct.ip6addrlbl_init_table { ptr @.compoundliteral, i32 7, i32 5 }, %struct.ip6addrlbl_init_table { ptr @.compoundliteral.6, i32 10, i32 11 }, %struct.ip6addrlbl_init_table { ptr @.compoundliteral.7, i32 16, i32 2 }, %struct.ip6addrlbl_init_table { ptr @.compoundliteral.8, i32 16, i32 12 }, %struct.ip6addrlbl_init_table { ptr @.compoundliteral.9, i32 32, i32 6 }, %struct.ip6addrlbl_init_table { ptr @.compoundliteral.10, i32 28, i32 7 }, %struct.ip6addrlbl_init_table { ptr @.compoundliteral.11, i32 96, i32 4 }, %struct.ip6addrlbl_init_table { ptr @in6addr_any, i32 96, i32 3 }, %struct.ip6addrlbl_init_table { ptr @in6addr_loopback, i32 128, i32 0 }], [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@in6addr_any = external dso_local constant %struct.in6_addr, align 4
@.compoundliteral = internal global { { { <{ i8, [15 x i8] }> } }, [16 x i8] } { { { <{ i8, [15 x i8] }> } } { { <{ i8, [15 x i8] }> } { <{ i8, [15 x i8] }> <{ i8 -4, [15 x i8] zeroinitializer }> } }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.6 = internal global { { { <{ i8, i8, [14 x i8] }> } }, [16 x i8] } { { { <{ i8, i8, [14 x i8] }> } } { { <{ i8, i8, [14 x i8] }> } { <{ i8, i8, [14 x i8] }> <{ i8 -2, i8 -64, [14 x i8] zeroinitializer }> } }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.7 = internal global { { { <{ i8, i8, [14 x i8] }> } }, [16 x i8] } { { { <{ i8, i8, [14 x i8] }> } } { { <{ i8, i8, [14 x i8] }> } { <{ i8, i8, [14 x i8] }> <{ i8 32, i8 2, [14 x i8] zeroinitializer }> } }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.8 = internal global { { { <{ i8, i8, [14 x i8] }> } }, [16 x i8] } { { { <{ i8, i8, [14 x i8] }> } } { { <{ i8, i8, [14 x i8] }> } { <{ i8, i8, [14 x i8] }> <{ i8 63, i8 -2, [14 x i8] zeroinitializer }> } }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.9 = internal global { { { <{ i8, i8, [14 x i8] }> } }, [16 x i8] } { { { <{ i8, i8, [14 x i8] }> } } { { <{ i8, i8, [14 x i8] }> } { <{ i8, i8, [14 x i8] }> <{ i8 32, i8 1, [14 x i8] zeroinitializer }> } }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.10 = internal global { { { <{ i8, i8, i8, i8, [12 x i8] }> } }, [16 x i8] } { { { <{ i8, i8, i8, i8, [12 x i8] }> } } { { <{ i8, i8, i8, i8, [12 x i8] }> } { <{ i8, i8, i8, i8, [12 x i8] }> <{ i8 32, i8 1, i8 0, i8 16, [12 x i8] zeroinitializer }> } }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.11 = internal global { { { [16 x i8] } }, [16 x i8] } { { { [16 x i8] } } { { [16 x i8] } { [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\FF\FF\00\00\00\00" } }, [16 x i8] zeroinitializer }, align 32
@in6addr_loopback = external dso_local constant %struct.in6_addr, align 4
@ifal_policy = internal constant { [3 x %struct.nla_policy], [40 x i8] } { [3 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 0, i8 0, i16 16, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 4, %union.anon.91 zeroinitializer }], [40 x i8] zeroinitializer }, align 32
@__nlmsg_parse.__msg = internal constant [22 x i8] c"Invalid header length\00", align 1
@ip6addrlbl_valid_get_req.__msg = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"ipv6: Invalid header for addrlabel get request\00", [49 x i8] zeroinitializer }, align 32
@ip6addrlbl_valid_get_req.__msg.12 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"ipv6: Invalid values in header for addrlabel get request\00", [39 x i8] zeroinitializer }, align 32
@ip6addrlbl_valid_get_req.__msg.13 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"ipv6: Unsupported attribute in addrlabel get request\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@ip6addrlbl_dump.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ip6addrlbl_valid_dump_req.__msg = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"ipv6: Invalid header for address label dump request\00", [44 x i8] zeroinitializer }, align 32
@ip6addrlbl_valid_dump_req.__msg.15 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"ipv6: Invalid values in header for address label dump request\00", [34 x i8] zeroinitializer }, align 32
@ip6addrlbl_valid_dump_req.__msg.16 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"ipv6: Invalid data after header for address label dump request\00", [33 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 72, i64 73]
@__sancov_gen_cov_switch_values.17 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 128, i64 4096]
@___asan_gen_.18 = private unnamed_addr constant [20 x i8] c"ipv6_addr_label_ops\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 352, i32 33 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 695, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 133, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 723, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 316, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant [22 x i8] c"ip6addrlbl_init_table\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 70, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.46 = private unnamed_addr constant [19 x i8] c".compoundliteral.6\00", align 1
@___asan_gen_.47 = private unnamed_addr constant [19 x i8] c".compoundliteral.7\00", align 1
@___asan_gen_.48 = private unnamed_addr constant [19 x i8] c".compoundliteral.8\00", align 1
@___asan_gen_.49 = private unnamed_addr constant [19 x i8] c".compoundliteral.9\00", align 1
@___asan_gen_.50 = private unnamed_addr constant [20 x i8] c".compoundliteral.10\00", align 1
@___asan_gen_.51 = private unnamed_addr constant [20 x i8] c".compoundliteral.11\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [12 x i8] c"ifal_policy\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 367, i32 32 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 543, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 553, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 570, i32 4 }
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.65 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 991, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 475, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 482, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.74 = private constant [24 x i8] c"../net/ipv6/addrlabel.c\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 487, i32 3 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @ipv6_addr_label_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @ip6addrlbl_net_init.__key, ptr @.str.5, ptr @ip6addrlbl_init_table, ptr @.compoundliteral, ptr @.compoundliteral.6, ptr @.compoundliteral.7, ptr @.compoundliteral.8, ptr @.compoundliteral.9, ptr @.compoundliteral.10, ptr @.compoundliteral.11, ptr @ifal_policy, ptr @ip6addrlbl_valid_get_req.__msg, ptr @ip6addrlbl_valid_get_req.__msg.12, ptr @ip6addrlbl_valid_get_req.__msg.13, ptr @.str.14, ptr @ip6addrlbl_valid_dump_req.__msg, ptr @ip6addrlbl_valid_dump_req.__msg.15, ptr @ip6addrlbl_valid_dump_req.__msg.16], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipv6_addr_label_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip6addrlbl_net_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip6addrlbl_init_table to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ifal_policy to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip6addrlbl_valid_get_req.__msg to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip6addrlbl_valid_get_req.__msg.12 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip6addrlbl_valid_get_req.__msg.13 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip6addrlbl_valid_dump_req.__msg to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip6addrlbl_valid_dump_req.__msg.15 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip6addrlbl_valid_dump_req.__msg.16 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipv6_addr_label(ptr noundef %net, ptr nocapture noundef readonly %addr, i32 noundef %type, i32 noundef %ifindex) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %type, 4240
  %0 = tail call i32 @llvm.read_register.i32(metadata !38) #8
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !48
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 696, ptr noundef nonnull @.str.1) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call fastcc ptr @__ipv6_addr_label(ptr noundef %net, ptr noundef %addr, i32 noundef %and, i32 noundef %ifindex)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %rcu_read_lock.exit.cond.end_crit_edge, label %cond.true

rcu_read_lock.exit.cond.end_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  %label1 = getelementptr inbounds %struct.ip6addrlbl_entry, ptr %call, i32 0, i32 4
  %4 = ptrtoint ptr %label1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %label1, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %rcu_read_lock.exit.cond.end_crit_edge
  %cond = phi i32 [ %5, %cond.true ], [ -1, %rcu_read_lock.exit.cond.end_crit_edge ]
  %call.i4 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i4, label %cond.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i7

cond.end.rcu_read_unlock.exit_crit_edge:          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i7:                                 ; preds = %cond.end
  %call1.i5 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i5)
  %tobool.not.i6 = icmp eq i32 %call1.i5, 0
  br i1 %tobool.not.i6, label %land.lhs.true.i7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i9

land.lhs.true.i7.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i7
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i9:                                ; preds = %land.lhs.true.i7
  %.b4.i8 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i8, label %land.lhs.true2.i9.rcu_read_unlock.exit_crit_edge, label %if.then.i10

land.lhs.true2.i9.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i9
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i10:                                      ; preds = %land.lhs.true2.i9
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 724, ptr noundef nonnull @.str.4) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i10, %land.lhs.true2.i9.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i7.rcu_read_unlock.exit_crit_edge, %cond.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !49
  %6 = tail call i32 @llvm.read_register.i32(metadata !38) #8
  %and.i.i.i.i.i11 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i11 to ptr
  %preempt_count.i.i.i.i12 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i12, align 4
  %sub.i.i.i = add i32 %9, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i12, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  ret i32 %cond
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__ipv6_addr_label(ptr noundef %net, ptr nocapture noundef readonly %addr, i32 noundef %type, i32 noundef %ifindex) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rcu_read_lock_any_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b37 = load i1, ptr @__ipv6_addr_label.__warned, align 1
  br i1 %.b37, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @__ipv6_addr_label.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 133, ptr noundef nonnull @.str.3) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %ip6addrlbl_table = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 38
  %0 = ptrtoint ptr %ip6addrlbl_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %ip6addrlbl_table, align 16
  %tobool10.not = icmp eq ptr %1, null
  %add.ptr = getelementptr i8, ptr %1, i32 -32
  %tobool12.not4247 = icmp eq ptr %add.ptr, null
  %tobool12.not42 = or i1 %tobool10.not, %tobool12.not4247
  br i1 %tobool12.not42, label %do.end.cleanup_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %p.043 = phi ptr [ %add.ptr27, %for.inc.for.body_crit_edge ], [ %add.ptr, %do.end.for.body_crit_edge ]
  %ifindex1.i = getelementptr inbounds %struct.ip6addrlbl_entry, ptr %p.043, i32 0, i32 2
  %2 = ptrtoint ptr %ifindex1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ifindex1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %ifindex)
  %cmp.not.i = icmp eq i32 %3, %ifindex
  %or.cond.i = or i1 %tobool.not.i, %cmp.not.i
  br i1 %or.cond.i, label %if.end.i, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end.i:                                         ; preds = %for.body
  %addrtype3.i = getelementptr inbounds %struct.ip6addrlbl_entry, ptr %p.043, i32 0, i32 3
  %4 = ptrtoint ptr %addrtype3.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addrtype3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not.i = icmp eq i32 %5, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %type)
  %cmp7.not.i = icmp eq i32 %5, %type
  %or.cond18.i = or i1 %tobool4.not.i, %cmp7.not.i
  br i1 %or.cond18.i, label %if.end9.i, label %if.end.i.for.inc_crit_edge

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end9.i:                                        ; preds = %if.end.i
  %prefixlen.i = getelementptr inbounds %struct.ip6addrlbl_entry, ptr %p.043, i32 0, i32 1
  %6 = ptrtoint ptr %prefixlen.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %prefixlen.i, align 4
  %shr.i.i = lshr i32 %7, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %7)
  %tobool.not.i.i = icmp ult i32 %7, 32
  br i1 %tobool.not.i.i, label %if.end9.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.end9.i.if.end.i.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.end9.i
  %shl.i.i = shl nuw nsw i32 %shr.i.i, 2
  %bcmp.i.i = tail call i32 @bcmp(ptr %addr, ptr nonnull %p.043, i32 %shl.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool3.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i.for.inc_crit_edge

land.lhs.true.i.i.for.inc_crit_edge:              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.end9.i.if.end.i.i_crit_edge
  %and.i.i = and i32 %7, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool4.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %land.lhs.true5.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true5.i.i:                               ; preds = %if.end.i.i
  %arrayidx.i.i = getelementptr i32, ptr %addr, i32 %shr.i.i
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i, align 4
  %arrayidx6.i.i = getelementptr i32, ptr %p.043, i32 %shr.i.i
  %10 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx6.i.i, align 4
  %xor.i.i = xor i32 %11, %9
  %sub.i.i = sub nuw nsw i32 32, %and.i.i
  %shl7.i.i = shl nsw i32 -1, %sub.i.i
  %and8.i.i = and i32 %xor.i.i, %shl7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i)
  %tobool9.not.i.i = icmp eq i32 %and8.i.i, 0
  br i1 %tobool9.not.i.i, label %land.lhs.true5.i.i.cleanup_crit_edge, label %land.lhs.true5.i.i.for.inc_crit_edge

land.lhs.true5.i.i.for.inc_crit_edge:             ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true5.i.i.cleanup_crit_edge:             ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true5.i.i.for.inc_crit_edge, %land.lhs.true.i.i.for.inc_crit_edge, %if.end.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %list = getelementptr inbounds %struct.ip6addrlbl_entry, ptr %p.043, i32 0, i32 5
  %12 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %list, align 4
  %tobool23.not = icmp eq ptr %13, null
  %add.ptr27 = getelementptr i8, ptr %13, i32 -32
  %tobool12.not48 = icmp eq ptr %add.ptr27, null
  %tobool12.not = or i1 %tobool23.not, %tobool12.not48
  br i1 %tobool12.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %land.lhs.true5.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %p.0.lcssa = phi ptr [ null, %do.end.cleanup_crit_edge ], [ %p.043, %land.lhs.true5.i.i.cleanup_crit_edge ], [ %p.043, %if.end.i.i.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %p.0.lcssa
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipv6_addr_label_init() local_unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_pernet_subsys(ptr noundef nonnull @ipv6_addr_label_ops) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipv6_addr_label_cleanup() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @ipv6_addr_label_ops) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipv6_addr_label_rtnl_register() local_unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_register_module(ptr noundef null, i32 noundef 10, i32 noundef 72, ptr noundef nonnull @ip6addrlbl_newdel, ptr noundef null, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @rtnl_register_module(ptr noundef null, i32 noundef 10, i32 noundef 73, ptr noundef nonnull @ip6addrlbl_newdel, ptr noundef null, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call i32 @rtnl_register_module(ptr noundef null, i32 noundef 10, i32 noundef 74, ptr noundef nonnull @ip6addrlbl_get, ptr noundef nonnull @ip6addrlbl_dump, i32 noundef 1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end4 ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_register_module(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip6addrlbl_newdel(ptr nocapture noundef readonly %skb, ptr noundef %nlh, ptr noundef %extack) #0 align 64 {
entry:
  %tb = alloca [3 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tb) #8
  %5 = ptrtoint ptr %tb to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %tb, align 4, !annotation !50
  %6 = getelementptr inbounds [3 x ptr], ptr %tb, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %6, align 4, !annotation !50
  %8 = getelementptr inbounds [3 x ptr], ptr %tb, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -1 to ptr), ptr %8, align 4, !annotation !50
  %10 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nlh, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %11)
  %cmp.i.i = icmp ult i32 %11, 28
  br i1 %cmp.i.i, label %do.body.i.i, label %nlmsg_parse_deprecated.exit

do.body.i.i:                                      ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nlmsg_parse.__msg) #8
  %tobool.not.i.i = icmp eq ptr %extack, null
  br i1 %tobool.not.i.i, label %do.body.i.i.cleanup_crit_edge, label %if.then1.i.i

do.body.i.i.cleanup_crit_edge:                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then1.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @__nlmsg_parse.__msg, ptr %extack, align 4
  br label %cleanup

nlmsg_parse_deprecated.exit:                      ; preds = %entry
  %add.ptr.i.i.i = getelementptr i8, ptr %nlh, i32 28
  %sub1.i.i.i = add i32 %11, -28
  %call5.i.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 2, ptr noundef %add.ptr.i.i.i, i32 noundef %sub1.i.i.i, ptr noundef nonnull @ifal_policy, i32 noundef 0, ptr noundef %extack) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %cmp = icmp slt i32 %call5.i.i, 0
  br i1 %cmp, label %nlmsg_parse_deprecated.exit.cleanup_crit_edge, label %if.end

nlmsg_parse_deprecated.exit.cleanup_crit_edge:    ; preds = %nlmsg_parse_deprecated.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %nlmsg_parse_deprecated.exit
  %add.ptr.i = getelementptr i8, ptr %nlh, i32 16
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %14)
  %cmp3.not = icmp eq i8 %14, 10
  br i1 %cmp3.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %ifal_prefixlen = getelementptr i8, ptr %nlh, i32 18
  %15 = ptrtoint ptr %ifal_prefixlen to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ifal_prefixlen, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %16)
  %cmp6 = icmp ugt i8 %16, -128
  br i1 %cmp6, label %lor.lhs.false.cleanup_crit_edge, label %if.end9

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false
  %17 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %6, align 4
  %tobool.not = icmp eq ptr %18, null
  br i1 %tobool.not, label %if.end9.cleanup_crit_edge, label %if.end11

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.end9
  %add.ptr.i63 = getelementptr i8, ptr %18, i32 4
  %19 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %8, align 4
  %tobool15.not = icmp eq ptr %20, null
  br i1 %tobool15.not, label %if.end11.cleanup_crit_edge, label %if.end17

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end17:                                         ; preds = %if.end11
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 4
  %21 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %cmp20 = icmp eq i32 %22, -1
  br i1 %cmp20, label %if.end17.cleanup_crit_edge, label %if.end23

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end23:                                         ; preds = %if.end17
  %nlmsg_type = getelementptr inbounds %struct.nlmsghdr, ptr %nlh, i32 0, i32 1
  %23 = ptrtoint ptr %nlmsg_type to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %nlmsg_type, align 4
  %25 = zext i16 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i16 %24, label %if.end23.cleanup_crit_edge [
    i16 72, label %sw.bb
    i16 73, label %sw.bb35
  ]

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end23
  %ifal_index = getelementptr i8, ptr %nlh, i32 20
  %26 = ptrtoint ptr %ifal_index to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ifal_index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool25.not = icmp eq i32 %27, 0
  br i1 %tobool25.not, label %sw.bb.if.end29_crit_edge, label %land.lhs.true

sw.bb.if.end29_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

land.lhs.true:                                    ; preds = %sw.bb
  %call27 = call fastcc zeroext i1 @addrlbl_ifindex_exists(ptr noundef %4, i32 noundef %27)
  br i1 %call27, label %land.lhs.true.if.end29_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.end29:                                         ; preds = %land.lhs.true.if.end29_crit_edge, %sw.bb.if.end29_crit_edge
  %28 = ptrtoint ptr %ifal_prefixlen to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %ifal_prefixlen, align 2
  %conv31 = zext i8 %29 to i32
  %30 = ptrtoint ptr %ifal_index to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ifal_index, align 4
  %nlmsg_flags = getelementptr inbounds %struct.nlmsghdr, ptr %nlh, i32 0, i32 2
  %32 = ptrtoint ptr %nlmsg_flags to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %nlmsg_flags, align 2
  %34 = and i16 %33, 256
  %and = zext i16 %34 to i32
  %call34 = call fastcc i32 @ip6addrlbl_add(ptr noundef %4, ptr noundef %add.ptr.i63, i32 noundef %conv31, i32 noundef %31, i32 noundef %22, i32 noundef %and)
  br label %cleanup

sw.bb35:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %conv37 = zext i8 %16 to i32
  %ifal_index38 = getelementptr i8, ptr %nlh, i32 20
  %35 = ptrtoint ptr %ifal_index38 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ifal_index38, align 4
  %call39 = call fastcc i32 @ip6addrlbl_del(ptr noundef %4, ptr noundef %add.ptr.i63, i32 noundef %conv37, i32 noundef %36)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb35, %if.end29, %land.lhs.true.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %nlmsg_parse_deprecated.exit.cleanup_crit_edge, %if.then1.i.i, %do.body.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5.i.i, %nlmsg_parse_deprecated.exit.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ], [ -22, %if.end11.cleanup_crit_edge ], [ -22, %if.end17.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ %call39, %sw.bb35 ], [ %call34, %if.end29 ], [ -95, %if.end23.cleanup_crit_edge ], [ -22, %if.then1.i.i ], [ -22, %do.body.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tb) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip6addrlbl_get(ptr noundef %in_skb, ptr noundef %nlh, ptr noundef %extack) #0 align 64 {
entry:
  %tb = alloca [3 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %in_skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tb) #8
  %5 = ptrtoint ptr %tb to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %tb, align 4, !annotation !50
  %6 = getelementptr inbounds [3 x ptr], ptr %tb, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %6, align 4, !annotation !50
  %8 = getelementptr inbounds [3 x ptr], ptr %tb, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -1 to ptr), ptr %8, align 4, !annotation !50
  %10 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nlh, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %11)
  %cmp.i = icmp ult i32 %11, 28
  br i1 %cmp.i, label %do.body.i, label %if.end2.i

do.body.i:                                        ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ip6addrlbl_valid_get_req.__msg) #8
  %tobool.not.i91 = icmp eq ptr %extack, null
  br i1 %tobool.not.i91, label %do.body.i.cleanup_crit_edge, label %if.then1.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then1.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @ip6addrlbl_valid_get_req.__msg, ptr %extack, align 4
  br label %cleanup

if.end2.i:                                        ; preds = %entry
  %call3.i = tail call zeroext i1 @netlink_strict_get_check(ptr noundef %in_skb) #8
  br i1 %call3.i, label %if.end6.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end2.i
  %13 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nlh, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %14)
  %cmp.i.i.i = icmp ult i32 %14, 28
  br i1 %cmp.i.i.i, label %do.body.i.i.i, label %if.end2.i.i.i

do.body.i.i.i:                                    ; preds = %if.then4.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nlmsg_parse.__msg) #8
  %tobool.not.i.i.i = icmp eq ptr %extack, null
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.cleanup_crit_edge, label %if.then1.i.i.i

do.body.i.i.i.cleanup_crit_edge:                  ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then1.i.i.i:                                   ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @__nlmsg_parse.__msg, ptr %extack, align 4
  br label %cleanup

if.end2.i.i.i:                                    ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i.i = getelementptr i8, ptr %nlh, i32 28
  %sub1.i.i.i.i = add i32 %14, -28
  %call5.i.i.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 2, ptr noundef %add.ptr.i.i.i.i, i32 noundef %sub1.i.i.i.i, ptr noundef nonnull @ifal_policy, i32 noundef 0, ptr noundef %extack) #8
  br label %ip6addrlbl_valid_get_req.exit

if.end6.i:                                        ; preds = %if.end2.i
  %__ifal_reserved.i = getelementptr i8, ptr %nlh, i32 17
  %16 = ptrtoint ptr %__ifal_reserved.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %__ifal_reserved.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool8.not.i = icmp eq i8 %17, 0
  br i1 %tobool8.not.i, label %lor.lhs.false.i, label %if.end6.i.do.body14.i_crit_edge

if.end6.i.do.body14.i_crit_edge:                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body14.i

lor.lhs.false.i:                                  ; preds = %if.end6.i
  %ifal_flags.i = getelementptr i8, ptr %nlh, i32 19
  %18 = ptrtoint ptr %ifal_flags.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ifal_flags.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool10.not.i = icmp eq i8 %19, 0
  br i1 %tobool10.not.i, label %lor.lhs.false11.i, label %lor.lhs.false.i.do.body14.i_crit_edge

lor.lhs.false.i.do.body14.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body14.i

lor.lhs.false11.i:                                ; preds = %lor.lhs.false.i
  %ifal_seq.i = getelementptr i8, ptr %nlh, i32 24
  %20 = ptrtoint ptr %ifal_seq.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ifal_seq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool12.not.i = icmp eq i32 %21, 0
  br i1 %tobool12.not.i, label %if.end22.i, label %lor.lhs.false11.i.do.body14.i_crit_edge

lor.lhs.false11.i.do.body14.i_crit_edge:          ; preds = %lor.lhs.false11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body14.i

do.body14.i:                                      ; preds = %lor.lhs.false11.i.do.body14.i_crit_edge, %lor.lhs.false.i.do.body14.i_crit_edge, %if.end6.i.do.body14.i_crit_edge
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ip6addrlbl_valid_get_req.__msg.12) #8
  %tobool16.not.i = icmp eq ptr %extack, null
  br i1 %tobool16.not.i, label %do.body14.i.cleanup_crit_edge, label %if.then17.i

do.body14.i.cleanup_crit_edge:                    ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then17.i:                                      ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @ip6addrlbl_valid_get_req.__msg.12, ptr %extack, align 4
  br label %cleanup

if.end22.i:                                       ; preds = %lor.lhs.false11.i
  %call23.i = call fastcc i32 @nlmsg_parse_deprecated_strict(ptr noundef %nlh, ptr noundef nonnull %tb, ptr noundef %extack) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %for.body.preheader.i, label %if.end22.i.ip6addrlbl_valid_get_req.exit_crit_edge

if.end22.i.ip6addrlbl_valid_get_req.exit_crit_edge: ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ip6addrlbl_valid_get_req.exit

for.body.preheader.i:                             ; preds = %if.end22.i
  %23 = ptrtoint ptr %tb to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tb, align 4
  %tobool29.not.i = icmp eq ptr %24, null
  br i1 %tobool29.not.i, label %for.cond.1.i, label %for.body.preheader.i.do.body32.i_crit_edge

for.body.preheader.i.do.body32.i_crit_edge:       ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body32.i

for.cond.1.i:                                     ; preds = %for.body.preheader.i
  %25 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %8, align 4
  %tobool29.not.2.i = icmp eq ptr %26, null
  br i1 %tobool29.not.2.i, label %for.cond.1.i.if.end_crit_edge, label %for.cond.1.i.do.body32.i_crit_edge

for.cond.1.i.do.body32.i_crit_edge:               ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body32.i

for.cond.1.i.if.end_crit_edge:                    ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.body32.i:                                      ; preds = %for.cond.1.i.do.body32.i_crit_edge, %for.body.preheader.i.do.body32.i_crit_edge
  call void @do_trace_netlink_extack(ptr noundef nonnull @ip6addrlbl_valid_get_req.__msg.13) #8
  %tobool34.not.i = icmp eq ptr %extack, null
  br i1 %tobool34.not.i, label %do.body32.i.cleanup_crit_edge, label %if.then35.i

do.body32.i.cleanup_crit_edge:                    ; preds = %do.body32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then35.i:                                      ; preds = %do.body32.i
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @ip6addrlbl_valid_get_req.__msg.13, ptr %extack, align 4
  br label %cleanup

ip6addrlbl_valid_get_req.exit:                    ; preds = %if.end22.i.ip6addrlbl_valid_get_req.exit_crit_edge, %if.end2.i.i.i
  %retval.0.i = phi i32 [ %call23.i, %if.end22.i.ip6addrlbl_valid_get_req.exit_crit_edge ], [ %call5.i.i.i, %if.end2.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %ip6addrlbl_valid_get_req.exit.cleanup_crit_edge, label %ip6addrlbl_valid_get_req.exit.if.end_crit_edge

ip6addrlbl_valid_get_req.exit.if.end_crit_edge:   ; preds = %ip6addrlbl_valid_get_req.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

ip6addrlbl_valid_get_req.exit.cleanup_crit_edge:  ; preds = %ip6addrlbl_valid_get_req.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %ip6addrlbl_valid_get_req.exit.if.end_crit_edge, %for.cond.1.i.if.end_crit_edge
  %add.ptr.i = getelementptr i8, ptr %nlh, i32 16
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %29)
  %cmp3.not = icmp eq i8 %29, 10
  br i1 %cmp3.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %ifal_prefixlen = getelementptr i8, ptr %nlh, i32 18
  %30 = ptrtoint ptr %ifal_prefixlen to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %ifal_prefixlen, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %31)
  %cmp6.not = icmp eq i8 %31, -128
  br i1 %cmp6.not, label %if.end9, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false
  %ifal_index = getelementptr i8, ptr %nlh, i32 20
  %32 = ptrtoint ptr %ifal_index to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ifal_index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not = icmp eq i32 %33, 0
  br i1 %tobool.not, label %if.end9.if.end13_crit_edge, label %land.lhs.true

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end9
  %call11 = call fastcc zeroext i1 @addrlbl_ifindex_exists(ptr noundef %4, i32 noundef %33)
  br i1 %call11, label %land.lhs.true.if.end13_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.end13:                                         ; preds = %land.lhs.true.if.end13_crit_edge, %if.end9.if.end13_crit_edge
  %34 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %6, align 4
  %tobool14.not = icmp eq ptr %35, null
  br i1 %tobool14.not, label %if.end13.cleanup_crit_edge, label %if.end16

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end13
  %add.ptr.i92 = getelementptr i8, ptr %35, i32 4
  %call.i.i = call ptr @__alloc_skb(i32 noundef 56, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #8
  %tobool21.not = icmp eq ptr %call.i.i, null
  br i1 %tobool21.not, label %if.end16.cleanup_crit_edge, label %if.end23

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end23:                                         ; preds = %if.end16
  %36 = call i32 @llvm.read_register.i32(metadata !38) #8
  %and.i.i.i.i.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %39, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !48
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %if.end23.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end23.rcu_read_lock.exit_crit_edge:            ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end23
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 696, ptr noundef nonnull @.str.1) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end23.rcu_read_lock.exit_crit_edge
  %call.i93 = call i32 @__ipv6_addr_type(ptr noundef %add.ptr.i92) #8
  %and.i = and i32 %call.i93, 65535
  %40 = ptrtoint ptr %ifal_index to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ifal_index, align 4
  %call26 = call fastcc ptr @__ipv6_addr_label(ptr noundef %4, ptr noundef %add.ptr.i92, i32 noundef %and.i, i32 noundef %41)
  %tobool27.not = icmp eq ptr %call26, null
  br i1 %tobool27.not, label %rcu_read_lock.exit.if.end30_crit_edge, label %if.then28

rcu_read_lock.exit.if.end30_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then28:                                        ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  %seq = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 36, i32 38, i32 2
  %42 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %seq, align 16
  %portid = getelementptr inbounds %struct.sk_buff, ptr %in_skb, i32 0, i32 3, i32 12
  %44 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %portid, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %nlh, i32 0, i32 3
  %46 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %nlmsg_seq, align 4
  %call29 = call fastcc i32 @ip6addrlbl_fill(ptr noundef nonnull %call.i.i, ptr noundef nonnull %call26, i32 noundef %43, i32 noundef %45, i32 noundef %47, i32 noundef 0)
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %rcu_read_lock.exit.if.end30_crit_edge
  %err.0 = phi i32 [ %call29, %if.then28 ], [ -3, %rcu_read_lock.exit.if.end30_crit_edge ]
  %call.i94 = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i94, label %if.end30.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i97

if.end30.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i97:                                ; preds = %if.end30
  %call1.i95 = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i95)
  %tobool.not.i96 = icmp eq i32 %call1.i95, 0
  br i1 %tobool.not.i96, label %land.lhs.true.i97.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i99

land.lhs.true.i97.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i97
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i99:                               ; preds = %land.lhs.true.i97
  %.b4.i98 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i98, label %land.lhs.true2.i99.rcu_read_unlock.exit_crit_edge, label %if.then.i100

land.lhs.true2.i99.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i99
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i100:                                     ; preds = %land.lhs.true2.i99
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 724, ptr noundef nonnull @.str.4) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i100, %land.lhs.true2.i99.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i97.rcu_read_unlock.exit_crit_edge, %if.end30.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !49
  %48 = call i32 @llvm.read_register.i32(metadata !38) #8
  %and.i.i.i.i.i101 = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i.i.i101 to ptr
  %preempt_count.i.i.i.i102 = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %preempt_count.i.i.i.i102 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %preempt_count.i.i.i.i102, align 4
  %sub.i.i.i = add i32 %51, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i102, align 4
  call void @rcu_read_unlock_strict() #8
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %cmp31 = icmp slt i32 %err.0, 0
  br i1 %cmp31, label %if.then33, label %if.else

if.then33:                                        ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 -90, i32 %err.0)
  %cmp34 = icmp eq i32 %err.0, -90
  br i1 %cmp34, label %do.end, label %if.then33.if.end50_crit_edge, !prof !51

if.then33.if.end50_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

do.end:                                           ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 625, i32 noundef 9, ptr noundef null) #8
  br label %if.end50

if.end50:                                         ; preds = %do.end, %if.then33.if.end50_crit_edge
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #8
  br label %cleanup

if.else:                                          ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #10
  %portid58 = getelementptr inbounds %struct.sk_buff, ptr %in_skb, i32 0, i32 3, i32 12
  %52 = ptrtoint ptr %portid58 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %portid58, align 4
  %call59 = call i32 @rtnl_unicast(ptr noundef nonnull %call.i.i, ptr noundef %4, i32 noundef %53) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end50, %if.end16.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %ip6addrlbl_valid_get_req.exit.cleanup_crit_edge, %if.then35.i, %do.body32.i.cleanup_crit_edge, %if.then17.i, %do.body14.i.cleanup_crit_edge, %if.then1.i.i.i, %do.body.i.i.i.cleanup_crit_edge, %if.then1.i, %do.body.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %ip6addrlbl_valid_get_req.exit.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end13.cleanup_crit_edge ], [ -105, %if.end16.cleanup_crit_edge ], [ %err.0, %if.end50 ], [ %call59, %if.else ], [ -22, %if.then1.i ], [ -22, %do.body.i.cleanup_crit_edge ], [ -22, %if.then17.i ], [ -22, %do.body14.i.cleanup_crit_edge ], [ -22, %if.then35.i ], [ -22, %do.body32.i.cleanup_crit_edge ], [ -22, %if.then1.i.i.i ], [ -22, %do.body.i.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tb) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip6addrlbl_dump(ptr noundef %skb, ptr nocapture noundef %cb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %7 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %strict_check = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 12
  %10 = ptrtoint ptr %strict_check to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %strict_check, align 4, !range !52
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then:                                          ; preds = %entry
  %extack = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 6
  %12 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %extack, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %15)
  %cmp.i = icmp ult i32 %15, 28
  br i1 %cmp.i, label %do.body.i, label %if.end2.i

do.body.i:                                        ; preds = %if.then
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ip6addrlbl_valid_dump_req.__msg) #8
  %tobool.not.i73 = icmp eq ptr %13, null
  br i1 %tobool.not.i73, label %do.body.i.cleanup_crit_edge, label %do.body.i.cleanup.sink.split.i_crit_edge

do.body.i.cleanup.sink.split.i_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end2.i:                                        ; preds = %if.then
  %__ifal_reserved.i = getelementptr i8, ptr %1, i32 17
  %16 = ptrtoint ptr %__ifal_reserved.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %__ifal_reserved.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool4.not.i = icmp eq i8 %17, 0
  br i1 %tobool4.not.i, label %lor.lhs.false.i, label %if.end2.i.do.body15.i_crit_edge

if.end2.i.do.body15.i_crit_edge:                  ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body15.i

lor.lhs.false.i:                                  ; preds = %if.end2.i
  %ifal_prefixlen.i = getelementptr i8, ptr %1, i32 18
  %18 = ptrtoint ptr %ifal_prefixlen.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ifal_prefixlen.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool6.not.i = icmp eq i8 %19, 0
  br i1 %tobool6.not.i, label %lor.lhs.false7.i, label %lor.lhs.false.i.do.body15.i_crit_edge

lor.lhs.false.i.do.body15.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body15.i

lor.lhs.false7.i:                                 ; preds = %lor.lhs.false.i
  %ifal_flags.i = getelementptr i8, ptr %1, i32 19
  %20 = ptrtoint ptr %ifal_flags.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %ifal_flags.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool9.not.i = icmp eq i8 %21, 0
  br i1 %tobool9.not.i, label %lor.lhs.false10.i, label %lor.lhs.false7.i.do.body15.i_crit_edge

lor.lhs.false7.i.do.body15.i_crit_edge:           ; preds = %lor.lhs.false7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body15.i

lor.lhs.false10.i:                                ; preds = %lor.lhs.false7.i
  %ifal_index.i = getelementptr i8, ptr %1, i32 20
  %22 = ptrtoint ptr %ifal_index.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ifal_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool11.not.i = icmp eq i32 %23, 0
  br i1 %tobool11.not.i, label %lor.lhs.false12.i, label %lor.lhs.false10.i.do.body15.i_crit_edge

lor.lhs.false10.i.do.body15.i_crit_edge:          ; preds = %lor.lhs.false10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body15.i

lor.lhs.false12.i:                                ; preds = %lor.lhs.false10.i
  %ifal_seq.i = getelementptr i8, ptr %1, i32 24
  %24 = ptrtoint ptr %ifal_seq.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ifal_seq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool13.not.i = icmp eq i32 %25, 0
  br i1 %tobool13.not.i, label %if.end23.i, label %lor.lhs.false12.i.do.body15.i_crit_edge

lor.lhs.false12.i.do.body15.i_crit_edge:          ; preds = %lor.lhs.false12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body15.i

do.body15.i:                                      ; preds = %lor.lhs.false12.i.do.body15.i_crit_edge, %lor.lhs.false10.i.do.body15.i_crit_edge, %lor.lhs.false7.i.do.body15.i_crit_edge, %lor.lhs.false.i.do.body15.i_crit_edge, %if.end2.i.do.body15.i_crit_edge
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ip6addrlbl_valid_dump_req.__msg.15) #8
  %tobool17.not.i = icmp eq ptr %13, null
  br i1 %tobool17.not.i, label %do.body15.i.cleanup_crit_edge, label %do.body15.i.cleanup.sink.split.i_crit_edge

do.body15.i.cleanup.sink.split.i_crit_edge:       ; preds = %do.body15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

do.body15.i.cleanup_crit_edge:                    ; preds = %do.body15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end23.i:                                       ; preds = %lor.lhs.false12.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %15)
  %tobool25.not.i = icmp eq i32 %15, 28
  br i1 %tobool25.not.i, label %if.end23.i.if.end4_crit_edge, label %do.body27.i

if.end23.i.if.end4_crit_edge:                     ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

do.body27.i:                                      ; preds = %if.end23.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ip6addrlbl_valid_dump_req.__msg.16) #8
  %tobool29.not.i = icmp eq ptr %13, null
  br i1 %tobool29.not.i, label %do.body27.i.cleanup_crit_edge, label %do.body27.i.cleanup.sink.split.i_crit_edge

do.body27.i.cleanup.sink.split.i_crit_edge:       ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

do.body27.i.cleanup_crit_edge:                    ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.sink.split.i:                             ; preds = %do.body27.i.cleanup.sink.split.i_crit_edge, %do.body15.i.cleanup.sink.split.i_crit_edge, %do.body.i.cleanup.sink.split.i_crit_edge
  %ip6addrlbl_valid_dump_req.__msg.16.sink.i = phi ptr [ @ip6addrlbl_valid_dump_req.__msg, %do.body.i.cleanup.sink.split.i_crit_edge ], [ @ip6addrlbl_valid_dump_req.__msg.15, %do.body15.i.cleanup.sink.split.i_crit_edge ], [ @ip6addrlbl_valid_dump_req.__msg.16, %do.body27.i.cleanup.sink.split.i_crit_edge ]
  %26 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %ip6addrlbl_valid_dump_req.__msg.16.sink.i, ptr %13, align 4
  br label %cleanup

if.end4:                                          ; preds = %if.end23.i.if.end4_crit_edge, %entry.if.end4_crit_edge
  %27 = tail call i32 @llvm.read_register.i32(metadata !38) #8
  %and.i.i.i.i.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %30, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !48
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %if.end4.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end4.rcu_read_lock.exit_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end4
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 696, ptr noundef nonnull @.str.1) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end4.rcu_read_lock.exit_crit_edge
  %call5 = tail call i32 @rcu_read_lock_any_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call7 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true9

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true9:                                   ; preds = %land.lhs.true
  %.b71 = load i1, ptr @ip6addrlbl_dump.__warned, align 1
  br i1 %.b71, label %land.lhs.true9.do.end_crit_edge, label %if.then11

land.lhs.true9.do.end_crit_edge:                  ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then11:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ip6addrlbl_dump.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 509, ptr noundef nonnull @.str.3) #8
  br label %do.end

do.end:                                           ; preds = %if.then11, %land.lhs.true9.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %ip6addrlbl_table = getelementptr inbounds %struct.net, ptr %6, i32 0, i32 36, i32 38
  %31 = ptrtoint ptr %ip6addrlbl_table to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %ip6addrlbl_table, align 16
  %tobool18.not = icmp eq ptr %32, null
  %add.ptr = getelementptr i8, ptr %32, i32 -32
  %seq = getelementptr inbounds %struct.net, ptr %6, i32 0, i32 36, i32 38, i32 2
  %tobool20.not8793 = icmp eq ptr %add.ptr, null
  %tobool20.not87 = or i1 %tobool18.not, %tobool20.not8793
  br i1 %tobool20.not87, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %1, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %if.end31.for.body_crit_edge, %for.body.lr.ph
  %p.090 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %add.ptr43, %if.end31.for.body_crit_edge ]
  %idx.088 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end31.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.088, i32 %9)
  %cmp21.not = icmp slt i32 %idx.088, %9
  br i1 %cmp21.not, label %for.body.if.end31_crit_edge, label %if.then22

for.body.if.end31_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then22:                                        ; preds = %for.body
  %33 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %seq, align 16
  %35 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cb, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %36, i32 0, i32 3, i32 12
  %37 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %portid, align 4
  %39 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %nlmsg_seq, align 4
  %call27 = tail call fastcc i32 @ip6addrlbl_fill(ptr noundef %skb, ptr noundef nonnull %p.090, i32 noundef %34, i32 noundef %38, i32 noundef %40, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.then22.for.end_crit_edge, label %if.then22.if.end31_crit_edge

if.then22.if.end31_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then22.for.end_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end31:                                         ; preds = %if.then22.if.end31_crit_edge, %for.body.if.end31_crit_edge
  %inc = add i32 %idx.088, 1
  %list = getelementptr inbounds %struct.ip6addrlbl_entry, ptr %p.090, i32 0, i32 5
  %41 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile ptr, ptr %list, align 4
  %tobool39.not = icmp eq ptr %42, null
  %add.ptr43 = getelementptr i8, ptr %42, i32 -32
  %tobool20.not94 = icmp eq ptr %add.ptr43, null
  %tobool20.not = or i1 %tobool39.not, %tobool20.not94
  br i1 %tobool20.not, label %if.end31.for.end_crit_edge, label %if.end31.for.body_crit_edge

if.end31.for.body_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end31.for.end_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.end31.for.end_crit_edge, %if.then22.for.end_crit_edge, %do.end.for.end_crit_edge
  %idx.0.lcssa = phi i32 [ 0, %do.end.for.end_crit_edge ], [ %idx.088, %if.then22.for.end_crit_edge ], [ %inc, %if.end31.for.end_crit_edge ]
  %call.i74 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i74, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i77

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i77:                                ; preds = %for.end
  %call1.i75 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i75)
  %tobool.not.i76 = icmp eq i32 %call1.i75, 0
  br i1 %tobool.not.i76, label %land.lhs.true.i77.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i79

land.lhs.true.i77.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i77
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i79:                               ; preds = %land.lhs.true.i77
  %.b4.i78 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i78, label %land.lhs.true2.i79.rcu_read_unlock.exit_crit_edge, label %if.then.i80

land.lhs.true2.i79.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i80:                                      ; preds = %land.lhs.true2.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 724, ptr noundef nonnull @.str.4) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i80, %land.lhs.true2.i79.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i77.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !49
  %43 = tail call i32 @llvm.read_register.i32(metadata !38) #8
  %and.i.i.i.i.i81 = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i.i.i81 to ptr
  %preempt_count.i.i.i.i82 = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %preempt_count.i.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %preempt_count.i.i.i.i82, align 4
  %sub.i.i.i = add i32 %46, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i82, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  %47 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %idx.0.lcssa, ptr %7, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %48 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %len, align 4
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %cleanup.sink.split.i, %do.body27.i.cleanup_crit_edge, %do.body15.i.cleanup_crit_edge, %do.body.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %49, %rcu_read_unlock.exit ], [ -22, %do.body.i.cleanup_crit_edge ], [ -22, %do.body15.i.cleanup_crit_edge ], [ -22, %do.body27.i.cleanup_crit_edge ], [ -22, %cleanup.sink.split.i ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip6addrlbl_net_init(ptr noundef %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ip6addrlbl_table = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 38
  %lock = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 38, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @ip6addrlbl_net_init.__key, i16 noundef signext 3) #8
  %0 = ptrtoint ptr %ip6addrlbl_table to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %ip6addrlbl_table, align 16
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.064, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry
  %i.064 = phi i32 [ 0, %entry ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr [10 x %struct.ip6addrlbl_init_table], ptr @ip6addrlbl_init_table, i32 0, i32 %i.064
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %prefixlen = getelementptr [10 x %struct.ip6addrlbl_init_table], ptr @ip6addrlbl_init_table, i32 0, i32 %i.064, i32 1
  %3 = ptrtoint ptr %prefixlen to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %prefixlen, align 4
  %label = getelementptr [10 x %struct.ip6addrlbl_init_table], ptr @ip6addrlbl_init_table, i32 0, i32 %i.064, i32 2
  %5 = ptrtoint ptr %label to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %label, align 4
  %call8 = tail call fastcc i32 @ip6addrlbl_add(ptr noundef %net, ptr noundef %2, i32 noundef %4, i32 noundef 0, i32 noundef %6, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %for.cond, label %err_ip6addrlbl_add

err_ip6addrlbl_add:                               ; preds = %for.body
  %7 = ptrtoint ptr %ip6addrlbl_table to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ip6addrlbl_table, align 16
  %tobool13.not = icmp eq ptr %8, null
  %add.ptr = getelementptr i8, ptr %8, i32 -32
  %tobool16.not6569 = icmp eq ptr %add.ptr, null
  %tobool16.not65 = or i1 %tobool13.not, %tobool16.not6569
  br i1 %tobool16.not65, label %err_ip6addrlbl_add.cleanup_crit_edge, label %err_ip6addrlbl_add.land.rhs_crit_edge

err_ip6addrlbl_add.land.rhs_crit_edge:            ; preds = %err_ip6addrlbl_add
  br label %land.rhs

err_ip6addrlbl_add.cleanup_crit_edge:             ; preds = %err_ip6addrlbl_add
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond15.backedge.thread:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  %rcu61 = getelementptr inbounds %struct.ip6addrlbl_entry, ptr %p.066, i32 0, i32 6
  tail call void @kvfree_call_rcu(ptr noundef %rcu61, ptr noundef nonnull inttoptr (i32 40 to ptr)) #8
  br label %cleanup

for.cond15.backedge:                              ; preds = %land.rhs
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %13, i32 0, i32 1
  %10 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %15, ptr %pprev14.i.i, align 4
  %11 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  %rcu = getelementptr inbounds %struct.ip6addrlbl_entry, ptr %p.066, i32 0, i32 6
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 40 to ptr)) #8
  %add.ptr37 = getelementptr i8, ptr %13, i32 -32
  %tobool16.not = icmp eq ptr %add.ptr37, null
  br i1 %tobool16.not, label %for.cond15.backedge.cleanup_crit_edge, label %for.cond15.backedge.land.rhs_crit_edge

for.cond15.backedge.land.rhs_crit_edge:           ; preds = %for.cond15.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

for.cond15.backedge.cleanup_crit_edge:            ; preds = %for.cond15.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.rhs:                                         ; preds = %for.cond15.backedge.land.rhs_crit_edge, %err_ip6addrlbl_add.land.rhs_crit_edge
  %p.066 = phi ptr [ %add.ptr37, %for.cond15.backedge.land.rhs_crit_edge ], [ %add.ptr, %err_ip6addrlbl_add.land.rhs_crit_edge ]
  %list = getelementptr inbounds %struct.ip6addrlbl_entry, ptr %p.066, i32 0, i32 5
  %12 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %list, align 4
  %pprev2.i.i = getelementptr inbounds %struct.ip6addrlbl_entry, ptr %p.066, i32 0, i32 5, i32 1
  %14 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pprev2.i.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %13, ptr %15, align 4
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %for.cond15.backedge.thread, label %for.cond15.backedge

cleanup:                                          ; preds = %for.cond15.backedge.cleanup_crit_edge, %for.cond15.backedge.thread, %err_ip6addrlbl_add.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ip6addrlbl_net_exit(ptr noundef %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ip6addrlbl_table = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 38
  %lock = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 38, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock) #8
  %0 = ptrtoint ptr %ip6addrlbl_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip6addrlbl_table, align 16
  %tobool.not = icmp eq ptr %1, null
  %add.ptr = getelementptr i8, ptr %1, i32 -32
  %tobool4.not3739 = icmp eq ptr %add.ptr, null
  %tobool4.not37 = or i1 %tobool.not, %tobool4.not3739
  br i1 %tobool4.not37, label %entry.for.end_crit_edge, label %entry.land.rhs_crit_edge

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond.backedge.thread:                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  %rcu35 = getelementptr inbounds %struct.ip6addrlbl_entry, ptr %p.038, i32 0, i32 6
  tail call void @kvfree_call_rcu(ptr noundef %rcu35, ptr noundef nonnull inttoptr (i32 40 to ptr)) #8
  br label %for.end

for.cond.backedge:                                ; preds = %land.rhs
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %6, i32 0, i32 1
  %3 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %8, ptr %pprev14.i.i, align 4
  %4 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  %rcu = getelementptr inbounds %struct.ip6addrlbl_entry, ptr %p.038, i32 0, i32 6
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 40 to ptr)) #8
  %add.ptr18 = getelementptr i8, ptr %6, i32 -32
  %tobool4.not = icmp eq ptr %add.ptr18, null
  br i1 %tobool4.not, label %for.cond.backedge.for.end_crit_edge, label %for.cond.backedge.land.rhs_crit_edge

for.cond.backedge.land.rhs_crit_edge:             ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

for.cond.backedge.for.end_crit_edge:              ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

land.rhs:                                         ; preds = %for.cond.backedge.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %p.038 = phi ptr [ %add.ptr18, %for.cond.backedge.land.rhs_crit_edge ], [ %add.ptr, %entry.land.rhs_crit_edge ]
  %list = getelementptr inbounds %struct.ip6addrlbl_entry, ptr %p.038, i32 0, i32 5
  %5 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %list, align 4
  %pprev2.i.i = getelementptr inbounds %struct.ip6addrlbl_entry, ptr %p.038, i32 0, i32 5, i32 1
  %7 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pprev2.i.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %6, ptr %8, align 4
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %for.cond.backedge.thread, label %for.cond.backedge

for.end:                                          ; preds = %for.cond.backedge.for.end_crit_edge, %for.cond.backedge.thread, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ip6addrlbl_add(ptr noundef %net, ptr noundef %prefix, i32 noundef %prefixlen, i32 noundef %ifindex, i32 noundef %label, i32 noundef %replace) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call i32 @__ipv6_addr_type(ptr noundef %prefix) #8
  %and.i = and i32 %call.i.i, 4240
  %0 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %and.i, label %entry.sw.epilog.i_crit_edge [
    i32 4096, label %sw.bb.i
    i32 128, label %sw.bb5.i
    i32 16, label %sw.bb9.i
  ]

entry.sw.epilog.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %prefixlen)
  %cmp.i = icmp sgt i32 %prefixlen, 96
  br i1 %cmp.i, label %sw.bb.i.if.then_crit_edge, label %if.end.i

sw.bb.i.if.then_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.end.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %prefixlen)
  %cmp2.not.i = icmp eq i32 %prefixlen, 96
  %spec.select.i = select i1 %cmp2.not.i, i32 4096, i32 0
  br label %sw.epilog.i

sw.bb5.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %prefixlen)
  %cmp6.not.i = icmp eq i32 %prefixlen, 96
  %spec.select37.i = select i1 %cmp6.not.i, i32 128, i32 0
  br label %sw.epilog.i

sw.bb9.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %prefixlen)
  %cmp10.not.i = icmp eq i32 %prefixlen, 128
  %spec.select38.i = select i1 %cmp10.not.i, i32 16, i32 0
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb9.i, %sw.bb5.i, %if.end.i, %entry.sw.epilog.i_crit_edge
  %addrtype.0.i = phi i32 [ %and.i, %entry.sw.epilog.i_crit_edge ], [ %spec.select.i, %if.end.i ], [ %spec.select37.i, %sw.bb5.i ], [ %spec.select38.i, %sw.bb9.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 48) #12
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %sw.epilog.i.if.then_crit_edge, label %if.end16.i

sw.epilog.i.if.then_crit_edge:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.end16.i:                                       ; preds = %sw.epilog.i
  %shr.i.i = ashr i32 %prefixlen, 3
  %and.i39.i = and i32 %prefixlen, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %prefixlen)
  %2 = icmp ugt i32 %prefixlen, 127
  %3 = sub nsw i32 16, %shr.i.i
  %4 = select i1 %2, i32 0, i32 %3
  %5 = getelementptr i8, ptr %call7.i.i, i32 %shr.i.i
  %6 = call ptr @memset(ptr %5, i32 0, i32 %4)
  %7 = call ptr @memcpy(ptr %call7.i.i, ptr %prefix, i32 %shr.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i39.i)
  %cmp.not.i.i = icmp eq i32 %and.i39.i, 0
  br i1 %cmp.not.i.i, label %if.end16.i.ip6addrlbl_alloc.exit_crit_edge, label %if.then.i.i

if.end16.i.ip6addrlbl_alloc.exit_crit_edge:       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ip6addrlbl_alloc.exit

if.then.i.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.i = getelementptr [16 x i8], ptr %prefix, i32 0, i32 %shr.i.i
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i.i, align 1
  %shr4.i.i = lshr i32 65280, %and.i39.i
  %10 = trunc i32 %shr4.i.i to i8
  %conv6.i.i = and i8 %9, %10
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv6.i.i, ptr %5, align 1
  br label %ip6addrlbl_alloc.exit

ip6addrlbl_alloc.exit:                            ; preds = %if.then.i.i, %if.end16.i.ip6addrlbl_alloc.exit_crit_edge
  %prefixlen18.i = getelementptr inbounds %struct.ip6addrlbl_entry, ptr %call7.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %prefixlen18.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %prefixlen, ptr %prefixlen18.i, align 8
  %ifindex19.i = getelementptr inbounds %struct.ip6addrlbl_entry, ptr %call7.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %ifindex19.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %ifindex, ptr %ifindex19.i, align 4
  %addrtype20.i = getelementptr inbounds %struct.ip6addrlbl_entry, ptr %call7.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %addrtype20.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %addrtype.0.i, ptr %addrtype20.i, align 8
  %label21.i = getelementptr inbounds %struct.ip6addrlbl_entry, ptr %call7.i.i, i32 0, i32 4
  %15 = ptrtoint ptr %label21.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %label, ptr %label21.i, align 4
  %list.i = getelementptr inbounds %struct.ip6addrlbl_entry, ptr %call7.i.i, i32 0, i32 5
  %16 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %list.i, align 8
  %pprev.i.i = getelementptr inbounds %struct.ip6addrlbl_entry, ptr %call7.i.i, i32 0, i32 5, i32 1
  %17 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %pprev.i.i, align 4
  %cmp.i16 = icmp ugt ptr %call7.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i16, label %ip6addrlbl_alloc.exit.if.then_crit_edge, label %if.end

ip6addrlbl_alloc.exit.if.then_crit_edge:          ; preds = %ip6addrlbl_alloc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %ip6addrlbl_alloc.exit.if.then_crit_edge, %sw.epilog.i.if.then_crit_edge, %sw.bb.i.if.then_crit_edge
  %retval.0.i24 = phi ptr [ %call7.i.i, %ip6addrlbl_alloc.exit.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %sw.epilog.i.if.then_crit_edge ], [ inttoptr (i32 -22 to ptr), %sw.bb.i.if.then_crit_edge ]
  %18 = ptrtoint ptr %retval.0.i24 to i32
  br label %cleanup

if.end:                                           ; preds = %ip6addrlbl_alloc.exit
  %lock = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 38, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock) #8
  %ip6addrlbl_table.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 38
  %19 = ptrtoint ptr %ip6addrlbl_table.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ip6addrlbl_table.i, align 16
  %tobool.not.i17 = icmp eq ptr %20, null
  %add.ptr.i = getelementptr i8, ptr %20, i32 -32
  %tobool2.not107109.i = icmp eq ptr %add.ptr.i, null
  %tobool2.not107.i = or i1 %tobool.not.i17, %tobool2.not107109.i
  br i1 %tobool2.not107.i, label %if.else51.i, label %land.rhs.lr.ph.i

land.rhs.lr.ph.i:                                 ; preds = %if.end
  %21 = ptrtoint ptr %prefixlen18.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %prefixlen18.i, align 8
  %arrayidx6.i.i = getelementptr [4 x i32], ptr %call7.i.i, i32 0, i32 1
  %arrayidx11.i.i = getelementptr [4 x i32], ptr %call7.i.i, i32 0, i32 2
  %arrayidx17.i.i = getelementptr [4 x i32], ptr %call7.i.i, i32 0, i32 3
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %if.end36.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %p.0108.i = phi ptr [ %add.ptr.i, %land.rhs.lr.ph.i ], [ %add.ptr43.i, %if.end36.i.land.rhs.i_crit_edge ]
  %list.i18 = getelementptr inbounds %struct.ip6addrlbl_entry, ptr %p.0108.i, i32 0, i32 5
  %23 = ptrtoint ptr %list.i18 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %list.i18, align 4
  %prefixlen.i = getelementptr inbounds %struct.ip6addrlbl_entry, ptr %p.0108.i, i32 0, i32 1
  %25 = ptrtoint ptr %prefixlen.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %prefixlen.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %22)
  %cmp.i19 = icmp eq i32 %26, %22
  br i1 %cmp.i19, label %land.lhs.true.i, label %lor.lhs.false.i

land.lhs.true.i:                                  ; preds = %land.rhs.i
  %ifindex.i = getelementptr inbounds %struct.ip6addrlbl_entry, ptr %p.0108.i, i32 0, i32 2
  %27 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ifindex.i, align 4
  %29 = ptrtoint ptr %ifindex19.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ifindex19.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp7.i = icmp eq i32 %28, %30
  br i1 %cmp7.i, label %land.lhs.true8.i, label %land.lhs.true.i.land.lhs.true26.i_crit_edge

land.lhs.true.i.land.lhs.true26.i_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true26.i

land.lhs.true8.i:                                 ; preds = %land.lhs.true.i
  %31 = ptrtoint ptr %p.0108.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %p.0108.i, align 4
  %33 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %call7.i.i, align 8
  %xor.i.i = xor i32 %34, %32
  %arrayidx4.i.i = getelementptr [4 x i32], ptr %p.0108.i, i32 0, i32 1
  %35 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx4.i.i, align 4
  %37 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx6.i.i, align 4
  %xor7.i.i = xor i32 %38, %36
  %or.i.i = or i32 %xor7.i.i, %xor.i.i
  %arrayidx9.i.i = getelementptr [4 x i32], ptr %p.0108.i, i32 0, i32 2
  %39 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx9.i.i, align 4
  %41 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx11.i.i, align 8
  %xor12.i.i = xor i32 %42, %40
  %or13.i.i = or i32 %or.i.i, %xor12.i.i
  %arrayidx15.i.i = getelementptr [4 x i32], ptr %p.0108.i, i32 0, i32 3
  %43 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx15.i.i, align 4
  %45 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx17.i.i, align 4
  %xor18.i.i = xor i32 %46, %44
  %or19.i.i = or i32 %or13.i.i, %xor18.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i.i)
  %cmp.i.i = icmp eq i32 %or19.i.i, 0
  br i1 %cmp.i.i, label %if.then.i, label %land.lhs.true8.i.land.lhs.true26.i_crit_edge

land.lhs.true8.i.land.lhs.true26.i_crit_edge:     ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true26.i

if.then.i:                                        ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %replace)
  %tobool10.not.i = icmp eq i32 %replace, 0
  br i1 %tobool10.not.i, label %if.then7, label %if.end.i21

if.end.i21:                                       ; preds = %if.then.i
  %47 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %24, ptr %list.i, align 8
  %pprev.i.i20 = getelementptr inbounds %struct.ip6addrlbl_entry, ptr %p.0108.i, i32 0, i32 5, i32 1
  %48 = ptrtoint ptr %pprev.i.i20 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pprev.i.i20, align 4
  %50 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %49, ptr %pprev.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !53
  %51 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pprev.i.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %list.i, ptr %52, align 4
  %tobool.not.i.i = icmp eq ptr %24, null
  br i1 %tobool.not.i.i, label %if.end.i21.hlist_replace_rcu.exit.i_crit_edge, label %do.body50.i.i

if.end.i21.hlist_replace_rcu.exit.i_crit_edge:    ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #10
  br label %hlist_replace_rcu.exit.i

do.body50.i.i:                                    ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %list.i, align 8
  %pprev53.i.i = getelementptr inbounds %struct.hlist_node, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %pprev53.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %list.i, ptr %pprev53.i.i, align 4
  br label %hlist_replace_rcu.exit.i

hlist_replace_rcu.exit.i:                         ; preds = %do.body50.i.i, %if.end.i21.hlist_replace_rcu.exit.i_crit_edge
  %57 = ptrtoint ptr %pprev.i.i20 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev.i.i20, align 4
  %rcu.i = getelementptr inbounds %struct.ip6addrlbl_entry, ptr %p.0108.i, i32 0, i32 6
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i, ptr noundef nonnull inttoptr (i32 40 to ptr)) #8
  br label %__ip6addrlbl_add.exit.thread

land.lhs.true26.i:                                ; preds = %land.lhs.true8.i.land.lhs.true26.i_crit_edge, %land.lhs.true.i.land.lhs.true26.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool28.not.i = icmp eq i32 %28, 0
  br i1 %tobool28.not.i, label %land.lhs.true26.i.if.then32.i_crit_edge, label %land.lhs.true26.i.if.end36.i_crit_edge

land.lhs.true26.i.if.end36.i_crit_edge:           ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36.i

land.lhs.true26.i.if.then32.i_crit_edge:          ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then32.i

lor.lhs.false.i:                                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %22)
  %cmp31.old.i = icmp slt i32 %26, %22
  br i1 %cmp31.old.i, label %lor.lhs.false.i.if.then32.i_crit_edge, label %lor.lhs.false.i.if.end36.i_crit_edge

lor.lhs.false.i.if.end36.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36.i

lor.lhs.false.i.if.then32.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then32.i

if.then32.i:                                      ; preds = %lor.lhs.false.i.if.then32.i_crit_edge, %land.lhs.true26.i.if.then32.i_crit_edge
  %pprev.i90.i = getelementptr inbounds %struct.ip6addrlbl_entry, ptr %p.0108.i, i32 0, i32 5, i32 1
  %58 = ptrtoint ptr %pprev.i90.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pprev.i90.i, align 4
  %60 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %59, ptr %pprev.i.i, align 4
  %61 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %list.i18, ptr %list.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !54
  %62 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pprev.i.i, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %list.i, ptr %63, align 4
  %65 = ptrtoint ptr %pprev.i90.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %list.i, ptr %pprev.i90.i, align 4
  br label %__ip6addrlbl_add.exit.thread

if.end36.i:                                       ; preds = %lor.lhs.false.i.if.end36.i_crit_edge, %land.lhs.true26.i.if.end36.i_crit_edge
  %tobool39.not.i = icmp eq ptr %24, null
  %add.ptr43.i = getelementptr i8, ptr %24, i32 -32
  %tobool2.not124.i = icmp eq ptr %add.ptr43.i, null
  %tobool2.not.i = or i1 %tobool39.not.i, %tobool2.not124.i
  br i1 %tobool2.not.i, label %if.then48.i, label %if.end36.i.land.rhs.i_crit_edge

if.end36.i.land.rhs.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i

if.then48.i:                                      ; preds = %if.end36.i
  %66 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %24, ptr %list.i, align 8
  %67 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %list.i18, ptr %pprev.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !55
  %68 = ptrtoint ptr %list.i18 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %list.i, ptr %list.i18, align 4
  %69 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %list.i, align 8
  %tobool.not.i92.i = icmp eq ptr %70, null
  br i1 %tobool.not.i92.i, label %if.then48.i.__ip6addrlbl_add.exit.thread_crit_edge, label %do.body47.i.i

if.then48.i.__ip6addrlbl_add.exit.thread_crit_edge: ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__ip6addrlbl_add.exit.thread

do.body47.i.i:                                    ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #10
  %pprev50.i.i = getelementptr inbounds %struct.hlist_node, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %pprev50.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile ptr %list.i, ptr %pprev50.i.i, align 4
  br label %__ip6addrlbl_add.exit.thread

if.else51.i:                                      ; preds = %if.end
  %72 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %20, ptr %list.i, align 8
  %73 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %ip6addrlbl_table.i, ptr %pprev.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !56
  %74 = ptrtoint ptr %ip6addrlbl_table.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr %list.i, ptr %ip6addrlbl_table.i, align 4
  br i1 %tobool.not.i17, label %if.else51.i.__ip6addrlbl_add.exit.thread_crit_edge, label %do.body49.i.i

if.else51.i.__ip6addrlbl_add.exit.thread_crit_edge: ; preds = %if.else51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__ip6addrlbl_add.exit.thread

do.body49.i.i:                                    ; preds = %if.else51.i
  call void @__sanitizer_cov_trace_pc() #10
  %pprev51.i.i = getelementptr inbounds %struct.hlist_node, ptr %20, i32 0, i32 1
  %75 = ptrtoint ptr %pprev51.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %list.i, ptr %pprev51.i.i, align 4
  br label %__ip6addrlbl_add.exit.thread

__ip6addrlbl_add.exit.thread:                     ; preds = %do.body49.i.i, %if.else51.i.__ip6addrlbl_add.exit.thread_crit_edge, %do.body47.i.i, %if.then48.i.__ip6addrlbl_add.exit.thread_crit_edge, %if.then32.i, %hlist_replace_rcu.exit.i
  %seq.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 38, i32 2
  %76 = ptrtoint ptr %seq.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %seq.i, align 16
  %inc.i = add i32 %77, 1
  store i32 %inc.i, ptr %seq.i, align 16
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  br label %cleanup

if.then7:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %__ip6addrlbl_add.exit.thread, %if.then
  %retval.0 = phi i32 [ %18, %if.then ], [ -17, %if.then7 ], [ 0, %__ip6addrlbl_add.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @addrlbl_ifindex_exists(ptr noundef %net, i32 noundef %ifindex) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !38) #8
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !48
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 696, ptr noundef nonnull @.str.1) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call ptr @dev_get_by_index_rcu(ptr noundef %net, i32 noundef %ifindex) #8
  %call.i1 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i1, label %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i4

rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i4:                                 ; preds = %rcu_read_lock.exit
  %call1.i2 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i2)
  %tobool.not.i3 = icmp eq i32 %call1.i2, 0
  br i1 %tobool.not.i3, label %land.lhs.true.i4.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i6

land.lhs.true.i4.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i4
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i6:                                ; preds = %land.lhs.true.i4
  %.b4.i5 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i5, label %land.lhs.true2.i6.rcu_read_unlock.exit_crit_edge, label %if.then.i7

land.lhs.true2.i6.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i6
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i7:                                       ; preds = %land.lhs.true2.i6
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 724, ptr noundef nonnull @.str.4) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i7, %land.lhs.true2.i6.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i4.rcu_read_unlock.exit_crit_edge, %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !49
  %4 = tail call i32 @llvm.read_register.i32(metadata !38) #8
  %and.i.i.i.i.i8 = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i8 to ptr
  %preempt_count.i.i.i.i9 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i9, align 4
  %sub.i.i.i = add i32 %7, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i9, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  %cmp = icmp ne ptr %call, null
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ip6addrlbl_del(ptr noundef %net, ptr nocapture noundef readonly %prefix, i32 noundef %prefixlen, i32 noundef %ifindex) unnamed_addr #0 align 64 {
entry:
  %prefix_buf = alloca %struct.in6_addr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %prefix_buf) #8
  %0 = getelementptr inbounds [4 x i32], ptr %prefix_buf, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i32], ptr %prefix_buf, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i32], ptr %prefix_buf, i32 0, i32 3
  %shr.i = ashr i32 %prefixlen, 3
  %and.i = and i32 %prefixlen, 7
  %3 = call ptr @memset(ptr %prefix_buf, i32 255, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %prefixlen)
  %4 = icmp ugt i32 %prefixlen, 127
  %5 = sub nsw i32 16, %shr.i
  %6 = select i1 %4, i32 0, i32 %5
  %7 = getelementptr i8, ptr %prefix_buf, i32 %shr.i
  %8 = call ptr @memset(ptr %7, i32 0, i32 %6)
  %9 = call ptr @memcpy(ptr %prefix_buf, ptr %prefix, i32 %shr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp.not.i, label %entry.ipv6_addr_prefix.exit_crit_edge, label %if.then.i

entry.ipv6_addr_prefix.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ipv6_addr_prefix.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr [16 x i8], ptr %prefix, i32 0, i32 %shr.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i, align 1
  %shr4.i = lshr i32 65280, %and.i
  %12 = trunc i32 %shr4.i to i8
  %conv6.i = and i8 %11, %12
  %arrayidx8.i = getelementptr [16 x i8], ptr %prefix_buf, i32 0, i32 %shr.i
  %13 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv6.i, ptr %arrayidx8.i, align 1
  br label %ipv6_addr_prefix.exit

ipv6_addr_prefix.exit:                            ; preds = %if.then.i, %entry.ipv6_addr_prefix.exit_crit_edge
  %lock = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 38, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock) #8
  %ip6addrlbl_table.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 38
  %14 = ptrtoint ptr %ip6addrlbl_table.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ip6addrlbl_table.i, align 16
  %tobool.not.i = icmp eq ptr %15, null
  %add.ptr.i = getelementptr i8, ptr %15, i32 -32
  %tobool2.not4446.i = icmp eq ptr %add.ptr.i, null
  %tobool2.not44.i = or i1 %tobool.not.i, %tobool2.not4446.i
  br i1 %tobool2.not44.i, label %ipv6_addr_prefix.exit.__ip6addrlbl_del.exit_crit_edge, label %ipv6_addr_prefix.exit.land.rhs.i_crit_edge

ipv6_addr_prefix.exit.land.rhs.i_crit_edge:       ; preds = %ipv6_addr_prefix.exit
  br label %land.rhs.i

ipv6_addr_prefix.exit.__ip6addrlbl_del.exit_crit_edge: ; preds = %ipv6_addr_prefix.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %__ip6addrlbl_del.exit

land.rhs.i:                                       ; preds = %for.inc.i.land.rhs.i_crit_edge, %ipv6_addr_prefix.exit.land.rhs.i_crit_edge
  %p.045.i = phi ptr [ %add.ptr26.i, %for.inc.i.land.rhs.i_crit_edge ], [ %add.ptr.i, %ipv6_addr_prefix.exit.land.rhs.i_crit_edge ]
  %list.i = getelementptr inbounds %struct.ip6addrlbl_entry, ptr %p.045.i, i32 0, i32 5
  %16 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %list.i, align 4
  %prefixlen5.i = getelementptr inbounds %struct.ip6addrlbl_entry, ptr %p.045.i, i32 0, i32 1
  %18 = ptrtoint ptr %prefixlen5.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %prefixlen5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %prefixlen)
  %cmp.i = icmp eq i32 %19, %prefixlen
  br i1 %cmp.i, label %land.lhs.true.i, label %land.rhs.i.for.inc.i_crit_edge

land.rhs.i.for.inc.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %land.rhs.i
  %ifindex6.i = getelementptr inbounds %struct.ip6addrlbl_entry, ptr %p.045.i, i32 0, i32 2
  %20 = ptrtoint ptr %ifindex6.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ifindex6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %ifindex)
  %cmp7.i = icmp eq i32 %21, %ifindex
  br i1 %cmp7.i, label %land.lhs.true8.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true8.i:                                 ; preds = %land.lhs.true.i
  %22 = ptrtoint ptr %p.045.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %p.045.i, align 4
  %24 = ptrtoint ptr %prefix_buf to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %prefix_buf, align 4
  %xor.i.i = xor i32 %25, %23
  %arrayidx4.i.i = getelementptr [4 x i32], ptr %p.045.i, i32 0, i32 1
  %26 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx4.i.i, align 4
  %28 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %0, align 4
  %xor7.i.i = xor i32 %29, %27
  %or.i.i = or i32 %xor7.i.i, %xor.i.i
  %arrayidx9.i.i = getelementptr [4 x i32], ptr %p.045.i, i32 0, i32 2
  %30 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx9.i.i, align 4
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %1, align 4
  %xor12.i.i = xor i32 %33, %31
  %or13.i.i = or i32 %or.i.i, %xor12.i.i
  %arrayidx15.i.i = getelementptr [4 x i32], ptr %p.045.i, i32 0, i32 3
  %34 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx15.i.i, align 4
  %36 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %2, align 4
  %xor18.i.i = xor i32 %37, %35
  %or19.i.i = or i32 %or13.i.i, %xor18.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i.i)
  %cmp.i.i = icmp eq i32 %or19.i.i, 0
  br i1 %cmp.i.i, label %if.then.i7, label %land.lhs.true8.i.for.inc.i_crit_edge

land.lhs.true8.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then.i7:                                       ; preds = %land.lhs.true8.i
  %pprev2.i.i.i = getelementptr inbounds %struct.ip6addrlbl_entry, ptr %p.045.i, i32 0, i32 5, i32 1
  %38 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pprev2.i.i.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %17, ptr %39, align 4
  %tobool.not.i.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i.i, label %if.then.i7.hlist_del_rcu.exit.i_crit_edge, label %do.body13.i.i.i

if.then.i7.hlist_del_rcu.exit.i_crit_edge:        ; preds = %if.then.i7
  call void @__sanitizer_cov_trace_pc() #10
  br label %hlist_del_rcu.exit.i

do.body13.i.i.i:                                  ; preds = %if.then.i7
  call void @__sanitizer_cov_trace_pc() #10
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %17, i32 0, i32 1
  %41 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %39, ptr %pprev14.i.i.i, align 4
  br label %hlist_del_rcu.exit.i

hlist_del_rcu.exit.i:                             ; preds = %do.body13.i.i.i, %if.then.i7.hlist_del_rcu.exit.i_crit_edge
  %42 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i, align 4
  %rcu.i = getelementptr inbounds %struct.ip6addrlbl_entry, ptr %p.045.i, i32 0, i32 6
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i, ptr noundef nonnull inttoptr (i32 40 to ptr)) #8
  br label %__ip6addrlbl_del.exit

for.inc.i:                                        ; preds = %land.lhs.true8.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %land.rhs.i.for.inc.i_crit_edge
  %tobool22.not.i = icmp eq ptr %17, null
  %add.ptr26.i = getelementptr i8, ptr %17, i32 -32
  %tobool2.not51.i = icmp eq ptr %add.ptr26.i, null
  %tobool2.not.i = or i1 %tobool22.not.i, %tobool2.not51.i
  br i1 %tobool2.not.i, label %for.inc.i.__ip6addrlbl_del.exit_crit_edge, label %for.inc.i.land.rhs.i_crit_edge

for.inc.i.land.rhs.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i

for.inc.i.__ip6addrlbl_del.exit_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__ip6addrlbl_del.exit

__ip6addrlbl_del.exit:                            ; preds = %for.inc.i.__ip6addrlbl_del.exit_crit_edge, %hlist_del_rcu.exit.i, %ipv6_addr_prefix.exit.__ip6addrlbl_del.exit_crit_edge
  %ret.0.i = phi i32 [ 0, %hlist_del_rcu.exit.i ], [ -3, %ipv6_addr_prefix.exit.__ip6addrlbl_del.exit_crit_edge ], [ -3, %for.inc.i.__ip6addrlbl_del.exit_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %prefix_buf) #8
  ret i32 %ret.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index_rcu(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ip6addrlbl_fill(ptr noundef %skb, ptr noundef %p, i32 noundef %lseq, i32 noundef %portid, i32 noundef %seq, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %0 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.i.not.i.i = icmp eq i32 %1, 0
  br i1 %tobool.i.not.i.i, label %skb_tailroom.exit.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  br i1 %cmp.i, label %skb_tailroom.exit.i.cleanup_crit_edge, label %nlmsg_put.exit, !prof !51

skb_tailroom.exit.i.cleanup_crit_edge:            ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

nlmsg_put.exit:                                   ; preds = %skb_tailroom.exit.i
  %call3.i = tail call ptr @__nlmsg_put(ptr noundef %skb, i32 noundef %portid, i32 noundef %seq, i32 noundef 72, i32 noundef 12, i32 noundef %flags) #8
  %tobool.not = icmp eq ptr %call3.i, null
  br i1 %tobool.not, label %nlmsg_put.exit.cleanup_crit_edge, label %if.end

nlmsg_put.exit.cleanup_crit_edge:                 ; preds = %nlmsg_put.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %nlmsg_put.exit
  %prefixlen = getelementptr inbounds %struct.ip6addrlbl_entry, ptr %p, i32 0, i32 1
  %6 = ptrtoint ptr %prefixlen to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %prefixlen, align 4
  %ifindex = getelementptr inbounds %struct.ip6addrlbl_entry, ptr %p, i32 0, i32 2
  %8 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ifindex, align 4
  %add.ptr.i.i = getelementptr i8, ptr %call3.i, i32 16
  %10 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 10, ptr %add.ptr.i.i, align 4
  %conv.i = trunc i32 %7 to i8
  %ifal_prefixlen.i = getelementptr i8, ptr %call3.i, i32 18
  %11 = ptrtoint ptr %ifal_prefixlen.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv.i, ptr %ifal_prefixlen.i, align 2
  %ifal_flags.i = getelementptr i8, ptr %call3.i, i32 19
  %12 = ptrtoint ptr %ifal_flags.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %ifal_flags.i, align 1
  %ifal_index.i = getelementptr i8, ptr %call3.i, i32 20
  %13 = ptrtoint ptr %ifal_index.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %9, ptr %ifal_index.i, align 4
  %ifal_seq.i = getelementptr i8, ptr %call3.i, i32 24
  %14 = ptrtoint ptr %ifal_seq.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %lseq, ptr %ifal_seq.i, align 4
  %call.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 16, ptr noundef %p) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.end.if.then.i.i_crit_edge, label %lor.lhs.false

if.end.if.then.i.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

lor.lhs.false:                                    ; preds = %if.end
  %label = getelementptr inbounds %struct.ip6addrlbl_entry, ptr %p, i32 0, i32 4
  %15 = ptrtoint ptr %label to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %label, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #8
  %17 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %tmp.i, align 4
  %call.i1 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1)
  %cmp3 = icmp slt i32 %call.i1, 0
  br i1 %cmp3, label %lor.lhs.false.if.then.i.i_crit_edge, label %if.end5

lor.lhs.false.if.then.i.i_crit_edge:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %lor.lhs.false.if.then.i.i_crit_edge, %if.end.if.then.i.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %18 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp ugt ptr %19, %call3.i
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.nlmsg_cancel.exit_crit_edge, !prof !51

if.then.i.i.nlmsg_cancel.exit_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nlmsg_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 991, i32 noundef 9, ptr noundef null) #8
  br label %nlmsg_cancel.exit

nlmsg_cancel.exit:                                ; preds = %do.end.i.i, %if.then.i.i.nlmsg_cancel.exit_crit_edge
  %20 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i2 = ptrtoint ptr %call3.i to i32
  %sub.ptr.rhs.cast.i.i3 = ptrtoint ptr %21 to i32
  %sub.ptr.sub.i.i4 = sub i32 %sub.ptr.lhs.cast.i.i2, %sub.ptr.rhs.cast.i.i3
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i4) #8
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %23 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %call3.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %24 = ptrtoint ptr %call3.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %sub.ptr.sub.i, ptr %call3.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %nlmsg_cancel.exit, %nlmsg_put.exit.cleanup_crit_edge, %skb_tailroom.exit.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %nlmsg_cancel.exit ], [ 0, %if.end5 ], [ -90, %nlmsg_put.exit.cleanup_crit_edge ], [ -90, %skb_tailroom.exit.i.cleanup_crit_edge ], [ -90, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_unicast(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @netlink_strict_get_check(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nlmsg_parse_deprecated_strict(ptr noundef %nlh, ptr noundef %tb, ptr noundef %extack) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nlh, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %1)
  %cmp.i = icmp ult i32 %1, 28
  br i1 %cmp.i, label %do.body.i, label %if.end2.i

do.body.i:                                        ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nlmsg_parse.__msg) #8
  %tobool.not.i = icmp eq ptr %extack, null
  br i1 %tobool.not.i, label %do.body.i.__nlmsg_parse.exit_crit_edge, label %if.then1.i

do.body.i.__nlmsg_parse.exit_crit_edge:           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__nlmsg_parse.exit

if.then1.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @__nlmsg_parse.__msg, ptr %extack, align 4
  br label %__nlmsg_parse.exit

if.end2.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i = getelementptr i8, ptr %nlh, i32 28
  %sub1.i.i = add i32 %1, -28
  %call5.i = tail call i32 @__nla_parse(ptr noundef %tb, i32 noundef 2, ptr noundef %add.ptr.i.i, i32 noundef %sub1.i.i, ptr noundef nonnull @ifal_policy, i32 noundef 3, ptr noundef %extack) #8
  br label %__nlmsg_parse.exit

__nlmsg_parse.exit:                               ; preds = %if.end2.i, %if.then1.i, %do.body.i.__nlmsg_parse.exit_crit_edge
  %retval.0.i = phi i32 [ %call5.i, %if.end2.i ], [ -22, %if.then1.i ], [ -22, %do.body.i.__nlmsg_parse.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__nlmsg_put(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nobuiltin nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !13, !15, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36}
!llvm.named.register.sp = !{!38}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../net/ipv6/addrlabel.c", i32 133, i32 2}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @ipv6_addr_label_ops, !12, !"ipv6_addr_label_ops", i1 false, i1 false}
!12 = !{!"../net/ipv6/addrlabel.c", i32 352, i32 33}
!13 = !{ptr @ip6addrlbl_net_init.__key, !14, !"__key", i1 false, i1 false}
!14 = !{!"../net/ipv6/addrlabel.c", i32 316, i32 2}
!15 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @ip6addrlbl_init_table, !17, !"ip6addrlbl_init_table", i1 false, i1 false}
!17 = !{!"../net/ipv6/addrlabel.c", i32 70, i32 3}
!18 = !{ptr @__nlmsg_parse.__msg, !19, !"__msg", i1 false, i1 false}
!19 = !{!"../include/net/netlink.h", i32 729, i32 3}
!20 = !{ptr @ifal_policy, !21, !"ifal_policy", i1 false, i1 false}
!21 = !{!"../net/ipv6/addrlabel.c", i32 367, i32 32}
!22 = !{ptr @ip6addrlbl_valid_get_req.__msg, !23, !"__msg", i1 false, i1 false}
!23 = !{!"../net/ipv6/addrlabel.c", i32 543, i32 3}
!24 = !{ptr @ip6addrlbl_valid_get_req.__msg.12, !25, !"__msg", i1 false, i1 false}
!25 = !{!"../net/ipv6/addrlabel.c", i32 553, i32 3}
!26 = !{ptr @ip6addrlbl_valid_get_req.__msg.13, !27, !"__msg", i1 false, i1 false}
!27 = !{!"../net/ipv6/addrlabel.c", i32 570, i32 4}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../include/net/netlink.h", i32 991, i32 3}
!30 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!31 = !{!"../net/ipv6/addrlabel.c", i32 509, i32 2}
!32 = !{ptr @ip6addrlbl_valid_dump_req.__msg, !33, !"__msg", i1 false, i1 false}
!33 = !{!"../net/ipv6/addrlabel.c", i32 475, i32 3}
!34 = !{ptr @ip6addrlbl_valid_dump_req.__msg.15, !35, !"__msg", i1 false, i1 false}
!35 = !{!"../net/ipv6/addrlabel.c", i32 482, i32 3}
!36 = !{ptr @ip6addrlbl_valid_dump_req.__msg.16, !37, !"__msg", i1 false, i1 false}
!37 = !{!"../net/ipv6/addrlabel.c", i32 487, i32 3}
!38 = !{!"sp"}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{i64 2149148530}
!49 = !{i64 2149148796}
!50 = !{!"auto-init"}
!51 = !{!"branch_weights", i32 1, i32 2000}
!52 = !{i8 0, i8 2}
!53 = !{i64 2151495711}
!54 = !{i64 2151559776}
!55 = !{i64 2151574777}
!56 = !{i64 2151531875}
