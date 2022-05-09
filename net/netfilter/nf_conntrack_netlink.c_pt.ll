; ModuleID = '/llk/IR_all_yes/net/netfilter/nf_conntrack_netlink.c_pt.bc'
source_filename = "../net/netfilter/nf_conntrack_netlink.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.nfnetlink_subsystem = type { ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nf_ct_event_notifier = type { ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.91 }
%union.anon.91 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.atomic_t = type { i32 }
%struct.nfnl_callback = type { ptr, ptr, i32, i16 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.netlink_dump_control = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nfnl_ct_hook = type { ptr, ptr, ptr, ptr, ptr }
%struct.nf_conn = type { %struct.nf_conntrack, %struct.spinlock, i32, %struct.nf_conntrack_zone, [2 x %struct.nf_conntrack_tuple_hash], i32, i16, %struct.possible_net_t, %struct.hlist_node, %struct.anon.162, ptr, i32, i32, ptr, %union.nf_conntrack_proto }
%struct.nf_conntrack = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.nf_conntrack_zone = type { i16, i8, i8 }
%struct.nf_conntrack_tuple_hash = type { %struct.hlist_nulls_node, %struct.nf_conntrack_tuple }
%struct.hlist_nulls_node = type { ptr, ptr }
%struct.nf_conntrack_tuple = type { %struct.nf_conntrack_man, %struct.anon.154 }
%struct.nf_conntrack_man = type { %union.nf_inet_addr, %union.nf_conntrack_man_proto, i16 }
%union.nf_inet_addr = type { [4 x i32] }
%union.nf_conntrack_man_proto = type { i16 }
%struct.anon.154 = type { %union.nf_inet_addr, %union.anon.155, i8, i8 }
%union.anon.155 = type { i16 }
%struct.possible_net_t = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.162 = type {}
%union.nf_conntrack_proto = type { %struct.nf_ct_dccp, [48 x i8] }
%struct.nf_ct_dccp = type { [2 x i8], i8, i8, i8, i64 }
%struct.nf_ct_event = type { ptr, i32, i32 }
%struct.nf_conntrack_l4proto = type { i8, i8, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.171, ptr }
%struct.anon.171 = type { ptr, ptr, i16, i16, ptr }
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
%struct.nf_conntrack_expect = type { %struct.hlist_node, %struct.hlist_node, %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple_mask, ptr, ptr, ptr, %struct.timer_list, %struct.refcount_struct, i32, i32, %union.nf_inet_addr, %union.nf_conntrack_man_proto, i32, %struct.callback_head }
%struct.nf_conntrack_tuple_mask = type { %struct.anon.163 }
%struct.anon.163 = type { %union.nf_inet_addr, %union.nf_conntrack_man_proto }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.callback_head = type { ptr, ptr }
%struct.nf_exp_event = type { ptr, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.nf_conn_tstamp = type { i64, i64 }
%struct.nf_conntrack_helper = type { %struct.hlist_node, [16 x i8], %struct.refcount_struct, ptr, ptr, %struct.nf_conntrack_tuple, ptr, ptr, ptr, ptr, i32, i32, i32, i16, [16 x i8] }
%struct.nf_ct_seqadj = type { i32, i32, i32 }
%struct.nf_conn_synproxy = type { i32, i32, i32 }
%struct.nf_conn_counter = type { %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.nf_ct_helper_expectfn = type { %struct.list_head, ptr, ptr }
%struct.nfnl_info = type { ptr, ptr, ptr, ptr, ptr }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.in6_addr = type { %union.anon.103 }
%union.anon.103 = type { [4 x i32] }
%struct.sock_common = type { %union.anon.14, %union.anon.16, %union.anon.17, i16, i8, i8, i32, %union.anon.19, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.135, [0 x i32], %union.anon.136, i16, i16, %union.anon.137, %struct.refcount_struct, [0 x i32], %union.anon.138 }
%union.anon.14 = type { i64 }
%union.anon.16 = type { i32 }
%union.anon.17 = type { i32 }
%union.anon.19 = type { %struct.hlist_node }
%union.anon.135 = type { i32 }
%union.anon.136 = type { %struct.hlist_node }
%union.anon.137 = type { i32 }
%union.anon.138 = type { i32 }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.93 }
%union.anon.93 = type { [6 x i32], [24 x i8] }
%struct.hlist_head = type { ptr }
%struct.nf_conn_help = type { ptr, %struct.hlist_head, [4 x i8], [4 x i8], [32 x i8] }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.147, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
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
%struct.ip_conntrack_stat = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nfgenmsg = type { i8, i8, i16 }
%struct.nf_conntrack_ecache = type { i32, i16, i16, i16, i8, i32 }
%struct.hlist_nulls_head = type { ptr }
%struct.ctnetlink_filter = type { i8, i32, i32, %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple, %struct.nf_conntrack_zone, %struct.ctnetlink_filter_u32, %struct.ctnetlink_filter_u32 }
%struct.ctnetlink_filter_u32 = type { i32, i32 }
%struct.nlattr = type { i16, i16 }
%struct.anon.158 = type { i8, i8 }
%struct.ct_pcpu = type { %struct.spinlock, %struct.hlist_nulls_head, %struct.hlist_nulls_head }

@__UNIQUE_ID_file588 = internal constant [61 x i8] c"nf_conntrack_netlink.file=net/netfilter/nf_conntrack_netlink\00", section ".modinfo", align 1
@__UNIQUE_ID_license589 = internal constant [33 x i8] c"nf_conntrack_netlink.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias613 = internal constant [48 x i8] c"nf_conntrack_netlink.alias=ip_conntrack_netlink\00", section ".modinfo", align 1
@__UNIQUE_ID_alias614 = internal constant [46 x i8] c"nf_conntrack_netlink.alias=nfnetlink-subsys-1\00", section ".modinfo", align 1
@__UNIQUE_ID_alias615 = internal constant [46 x i8] c"nf_conntrack_netlink.alias=nfnetlink-subsys-2\00", section ".modinfo", align 1
@ctnetlink_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @ctnetlink_net_init, ptr @ctnetlink_net_pre_exit, ptr null, ptr null, ptr null, i32 0 }, [32 x i8] zeroinitializer }, align 32
@ctnl_exp_subsys = internal constant { %struct.nfnetlink_subsystem, [32 x i8] } { %struct.nfnetlink_subsystem { ptr @.str.6, i8 2, i8 4, ptr @ctnl_exp_cb, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@ctnl_subsys = internal constant { %struct.nfnetlink_subsystem, [32 x i8] } { %struct.nfnetlink_subsystem { ptr @.str.11, i8 1, i8 8, ptr @ctnl_cb, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@nfnl_ct_hook = external dso_local global ptr, align 4
@__initcall__kmod_nf_conntrack_netlink__618_3923_ctnetlink_init6 = internal global ptr @ctnetlink_init, section ".initcall6.init", align 4
@__exitcall_ctnetlink_exit = internal global ptr @ctnetlink_exit, section ".exitcall.exit", align 4
@ctnl_notifier = internal global { %struct.nf_ct_event_notifier, [24 x i8] } { %struct.nf_ct_event_notifier { ptr @ctnetlink_conntrack_event, ptr @ctnetlink_expect_event }, [24 x i8] zeroinitializer }, align 32
@cta_ip_nla_policy = internal constant { [5 x %struct.nla_policy], [56 x i8] } { [5 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 16, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 16, %union.anon.91 zeroinitializer }], [56 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@ctnetlink_dump_helpinfo.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"net/netfilter/nf_conntrack_netlink.c\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@ctnetlink_exp_dump_expect.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nf_expect_get_id.exp_id_seed = internal global { %struct.siphash_key_t, [16 x i8] } zeroinitializer, align 32
@nf_expect_get_id.___done = internal global i8 0, section ".data.once", align 1
@nf_expect_get_id.___once_key = internal global { { { %struct.atomic_t, { ptr } } }, [24 x i8] } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } }, [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"conntrack_expect\00", [47 x i8] zeroinitializer }, align 32
@ctnl_exp_cb = internal constant { [4 x %struct.nfnl_callback], [32 x i8] } { [4 x %struct.nfnl_callback] [%struct.nfnl_callback { ptr @ctnetlink_new_expect, ptr @exp_nla_policy, i32 1, i16 11 }, %struct.nfnl_callback { ptr @ctnetlink_get_expect, ptr @exp_nla_policy, i32 1, i16 11 }, %struct.nfnl_callback { ptr @ctnetlink_del_expect, ptr @exp_nla_policy, i32 1, i16 11 }, %struct.nfnl_callback { ptr @ctnetlink_stat_exp_cpu, ptr null, i32 1, i16 0 }], [32 x i8] zeroinitializer }, align 32
@exp_nla_policy = internal constant { [12 x %struct.nla_policy], [32 x i8] } { [12 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 10, i8 0, i16 15, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 10, i8 0, i16 0, %union.anon.91 zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@nf_conntrack_expect_lock = external dso_local global %struct.spinlock, align 4
@tuple_nla_policy = internal constant { [4 x %struct.nla_policy], [32 x i8] } { [4 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.91 zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@proto_nla_policy = internal constant { <{ %struct.nla_policy, %struct.nla_policy, [8 x %struct.nla_policy] }>, [48 x i8] } { <{ %struct.nla_policy, %struct.nla_policy, [8 x %struct.nla_policy] }> <{ %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.91 zeroinitializer }, [8 x %struct.nla_policy] zeroinitializer }>, [48 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nfct-helper-%s\00", [17 x i8] zeroinitializer }, align 32
@exp_nat_nla_policy = internal constant { [3 x %struct.nla_policy], [40 x i8] } { [3 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.91 zeroinitializer }], [40 x i8] zeroinitializer }, align 32
@__const.ctnetlink_get_expect.c = private unnamed_addr constant %struct.netlink_dump_control { ptr null, ptr @ctnetlink_exp_dump_table, ptr @ctnetlink_exp_done, ptr null, ptr null, i32 0 }, align 4
@__const.ctnetlink_dump_exp_ct.c = private unnamed_addr constant %struct.netlink_dump_control { ptr null, ptr @ctnetlink_exp_ct_dump_table, ptr @ctnetlink_exp_done, ptr null, ptr null, i32 0 }, align 4
@ctnetlink_exp_ct_dump_table.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@nf_ct_expect_hsize = external dso_local local_unnamed_addr global i32, align 4
@ctnetlink_exp_dump_table.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nf_ct_expect_hash = external dso_local local_unnamed_addr global ptr, align 4
@__const.ctnetlink_stat_exp_cpu.c = private unnamed_addr constant %struct.netlink_dump_control { ptr null, ptr @ctnetlink_exp_stat_cpu_dump, ptr null, ptr null, ptr null, i32 0 }, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"conntrack\00", [22 x i8] zeroinitializer }, align 32
@ctnl_cb = internal constant { [8 x %struct.nfnl_callback], [32 x i8] } { [8 x %struct.nfnl_callback] [%struct.nfnl_callback { ptr @ctnetlink_new_conntrack, ptr @ct_nla_policy, i32 1, i16 26 }, %struct.nfnl_callback { ptr @ctnetlink_get_conntrack, ptr @ct_nla_policy, i32 1, i16 26 }, %struct.nfnl_callback { ptr @ctnetlink_del_conntrack, ptr @ct_nla_policy, i32 1, i16 26 }, %struct.nfnl_callback { ptr @ctnetlink_get_conntrack, ptr @ct_nla_policy, i32 1, i16 26 }, %struct.nfnl_callback { ptr @ctnetlink_stat_ct_cpu, ptr null, i32 1, i16 0 }, %struct.nfnl_callback { ptr @ctnetlink_stat_ct, ptr null, i32 1, i16 0 }, %struct.nfnl_callback { ptr @ctnetlink_get_ct_dying, ptr null, i32 1, i16 0 }, %struct.nfnl_callback { ptr @ctnetlink_get_ct_unconfirmed, ptr null, i32 1, i16 0 }], [32 x i8] zeroinitializer }, align 32
@ct_nla_policy = internal constant { [27 x %struct.nla_policy], [40 x i8] } { [27 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 11, i8 0, i16 16, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 11, i8 0, i16 16, %union.anon.91 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }], [40 x i8] zeroinitializer }, align 32
@help_nla_policy = internal constant { [3 x %struct.nla_policy], [40 x i8] } { [3 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 10, i8 0, i16 15, %union.anon.91 zeroinitializer }, %struct.nla_policy zeroinitializer], [40 x i8] zeroinitializer }, align 32
@nf_nat_hook = external dso_local global ptr, align 4
@ctnetlink_parse_nat_setup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"nf-nat\00", [25 x i8] zeroinitializer }, align 32
@ctnetlink_parse_nat_setup.__warned.13 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nf-nat-%u\00", [22 x i8] zeroinitializer }, align 32
@nf_ct_acct_ext_add.__UNIQUE_ID_ddebug587 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, i8 0, i8 10, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nf_conntrack_netlink\00", [43 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nf_ct_acct_ext_add\00", [45 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"include/net/netfilter/nf_conntrack_acct.h\00", [54 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to add accounting extension area\00", [56 x i8] zeroinitializer }, align 32
@seqadj_policy = internal constant { [4 x %struct.nla_policy], [32 x i8] } { [4 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@protoinfo_policy = internal constant { [4 x %struct.nla_policy], [32 x i8] } { [4 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.91 zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@synproxy_policy = internal constant { [4 x %struct.nla_policy], [32 x i8] } { [4 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@ctnetlink_change_helper.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cta_filter_nla_policy = internal constant { [3 x %struct.nla_policy], [40 x i8] } { [3 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }], [40 x i8] zeroinitializer }, align 32
@nla_parse_nested.__msg = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"NLA_F_NESTED is missing\00", [40 x i8] zeroinitializer }, align 32
@nf_conntrack_htable_size = external dso_local local_unnamed_addr global i32, align 4
@nf_conntrack_locks = external dso_local global [1024 x %struct.spinlock], align 4
@nf_conntrack_hash = external dso_local local_unnamed_addr global ptr, align 4
@__const.ctnetlink_stat_ct_cpu.c = private unnamed_addr constant %struct.netlink_dump_control { ptr null, ptr @ctnetlink_ct_stat_cpu_dump, ptr null, ptr null, ptr null, i32 0 }, align 4
@nf_conntrack_max = external dso_local local_unnamed_addr global i32, align 4
@__const.ctnetlink_get_ct_dying.c = private unnamed_addr constant %struct.netlink_dump_control { ptr null, ptr @ctnetlink_dump_dying, ptr @ctnetlink_done_list, ptr null, ptr null, i32 0 }, align 4
@__const.ctnetlink_get_ct_unconfirmed.c = private unnamed_addr constant %struct.netlink_dump_control { ptr null, ptr @ctnetlink_dump_unconfirmed, ptr @ctnetlink_done_list, ptr null, ptr null, i32 0 }, align 4
@ctnetlink_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 3883, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013ctnetlink_init: cannot register with nfnetlink.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ctnetlink_init\00", [17 x i8] zeroinitializer }, align 32
@ctnetlink_init._entry_ptr = internal global ptr @ctnetlink_init._entry, section ".printk_index", align 4
@ctnetlink_init._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.3, i32 3889, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013ctnetlink_init: cannot register exp with nfnetlink.\0A\00", [41 x i8] zeroinitializer }, align 32
@ctnetlink_init._entry_ptr.24 = internal global ptr @ctnetlink_init._entry.22, section ".printk_index", align 4
@ctnetlink_init._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.21, ptr @.str.3, i32 3895, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013ctnetlink_init: cannot register pernet operations\0A\00", [43 x i8] zeroinitializer }, align 32
@ctnetlink_init._entry_ptr.27 = internal global ptr @ctnetlink_init._entry.25, section ".printk_index", align 4
@ctnetlink_glue_hook = internal constant { %struct.nfnl_ct_hook, [44 x i8] } { %struct.nfnl_ct_hook { ptr @ctnetlink_glue_build_size, ptr @ctnetlink_glue_build, ptr @ctnetlink_glue_parse, ptr @ctnetlink_glue_attach_expect, ptr @ctnetlink_glue_seqadj }, [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 10]
@__sancov_gen_cov_switch_values.31 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 6, i64 17, i64 58]
@___asan_gen_.32 = private unnamed_addr constant [18 x i8] c"ctnetlink_net_ops\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 3872, i32 33 }
@___asan_gen_.35 = private unnamed_addr constant [16 x i8] c"ctnl_exp_subsys\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 3846, i32 41 }
@___asan_gen_.38 = private unnamed_addr constant [12 x i8] c"ctnl_subsys\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 3839, i32 41 }
@___asan_gen_.41 = private unnamed_addr constant [14 x i8] c"ctnl_notifier\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 3765, i32 36 }
@___asan_gen_.44 = private unnamed_addr constant [18 x i8] c"cta_ip_nla_policy\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 612, i32 32 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 695, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 723, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 222, i32 11 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 991, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant [12 x i8] c"exp_id_seed\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 3000, i32 31 }
@___asan_gen_.68 = private unnamed_addr constant [12 x i8] c"___once_key\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 3003, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 3847, i32 13 }
@___asan_gen_.74 = private unnamed_addr constant [12 x i8] c"ctnl_exp_cb\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 3814, i32 35 }
@___asan_gen_.77 = private unnamed_addr constant [15 x i8] c"exp_nla_policy\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 2638, i32 32 }
@___asan_gen_.80 = private unnamed_addr constant [17 x i8] c"tuple_nla_policy\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 1406, i32 32 }
@___asan_gen_.83 = private unnamed_addr constant [17 x i8] c"proto_nla_policy\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 1328, i32 32 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 3618, i32 8 }
@___asan_gen_.89 = private unnamed_addr constant [19 x i8] c"exp_nat_nla_policy\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 3475, i32 32 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 3234, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 3840, i32 13 }
@___asan_gen_.98 = private unnamed_addr constant [8 x i8] c"ctnl_cb\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 3771, i32 35 }
@___asan_gen_.101 = private unnamed_addr constant [14 x i8] c"ct_nla_policy\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 1519, i32 32 }
@___asan_gen_.104 = private unnamed_addr constant [16 x i8] c"help_nla_policy\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 1492, i32 32 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 1831, i32 7 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 1850, i32 7 }
@___asan_gen_.123 = private unnamed_addr constant [45 x i8] c"../include/net/netfilter/nf_conntrack_acct.h\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 41, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant [14 x i8] c"seqadj_policy\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 2052, i32 32 }
@___asan_gen_.128 = private unnamed_addr constant [17 x i8] c"protoinfo_policy\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 2026, i32 32 }
@___asan_gen_.131 = private unnamed_addr constant [16 x i8] c"synproxy_policy\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 2126, i32 32 }
@___asan_gen_.134 = private unnamed_addr constant [22 x i8] c"cta_filter_nla_policy\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 874, i32 32 }
@___asan_gen_.137 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.138 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 1208, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 3883, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 3889, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.158 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 3895, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant [20 x i8] c"ctnetlink_glue_hook\00", align 1
@___asan_gen_.162 = private constant [40 x i8] c"../net/netfilter/nf_conntrack_netlink.c\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 2926, i32 34 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @__UNIQUE_ID_alias613, ptr @__UNIQUE_ID_alias614, ptr @__UNIQUE_ID_alias615, ptr @__UNIQUE_ID_file588, ptr @__UNIQUE_ID_license589, ptr @__exitcall_ctnetlink_exit, ptr @__initcall__kmod_nf_conntrack_netlink__618_3923_ctnetlink_init6, ptr @ctnetlink_exit, ptr @ctnetlink_init._entry, ptr @ctnetlink_init._entry.22, ptr @ctnetlink_init._entry.25, ptr @ctnetlink_init._entry_ptr, ptr @ctnetlink_init._entry_ptr.24, ptr @ctnetlink_init._entry_ptr.27, ptr @ctnetlink_net_ops, ptr @ctnl_exp_subsys, ptr @ctnl_subsys, ptr @ctnl_notifier, ptr @cta_ip_nla_policy, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @nf_expect_get_id.exp_id_seed, ptr @nf_expect_get_id.___once_key, ptr @.str.6, ptr @ctnl_exp_cb, ptr @exp_nla_policy, ptr @tuple_nla_policy, ptr @proto_nla_policy, ptr @.str.8, ptr @exp_nat_nla_policy, ptr @.str.9, ptr @.str.11, ptr @ctnl_cb, ptr @ct_nla_policy, ptr @help_nla_policy, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @seqadj_policy, ptr @protoinfo_policy, ptr @synproxy_policy, ptr @cta_filter_nla_policy, ptr @nla_parse_nested.__msg, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @ctnetlink_glue_hook], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctnetlink_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctnl_exp_subsys to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctnl_subsys to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctnl_notifier to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cta_ip_nla_policy to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nf_expect_get_id.exp_id_seed to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nf_expect_get_id.___once_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctnl_exp_cb to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exp_nla_policy to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuple_nla_policy to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proto_nla_policy to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exp_nat_nla_policy to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctnl_cb to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ct_nla_policy to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @help_nla_policy to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seqadj_policy to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @protoinfo_policy to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synproxy_policy to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cta_filter_nla_policy to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nla_parse_nested.__msg to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctnetlink_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctnetlink_init._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctnetlink_init._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctnetlink_glue_hook to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ctnetlink_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @ctnetlink_net_ops) #16
  %call = tail call i32 @nfnetlink_subsys_unregister(ptr noundef nonnull @ctnl_exp_subsys) #16
  %call1 = tail call i32 @nfnetlink_subsys_unregister(ptr noundef nonnull @ctnl_subsys) #16
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @nfnl_ct_hook to i32))
  store volatile ptr null, ptr @nfnl_ct_hook, align 4
  tail call void @synchronize_rcu() #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfnetlink_subsys_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ctnetlink_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nfnetlink_subsys_register(ptr noundef nonnull @ctnl_subsys) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @nfnetlink_subsys_register(ptr noundef nonnull @ctnl_exp_subsys) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #19
  br label %err_unreg_subsys

if.end10:                                         ; preds = %if.end
  %call11 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @ctnetlink_net_ops) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %do.end16, label %do.body25

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #19
  %call32 = tail call i32 @nfnetlink_subsys_unregister(ptr noundef nonnull @ctnl_exp_subsys) #16
  br label %err_unreg_subsys

do.body25:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @nfnl_ct_hook to i32))
  store volatile ptr @ctnetlink_glue_hook, ptr @nfnl_ct_hook, align 4
  br label %cleanup

err_unreg_subsys:                                 ; preds = %do.end16, %do.end7
  %ret.0 = phi i32 [ %call2, %do.end7 ], [ %call11, %do.end16 ]
  %call33 = tail call i32 @nfnetlink_subsys_unregister(ptr noundef nonnull @ctnl_subsys) #16
  br label %cleanup

cleanup:                                          ; preds = %err_unreg_subsys, %do.body25, %do.end
  %retval.0 = phi i32 [ 0, %do.body25 ], [ %call, %do.end ], [ %ret.0, %err_unreg_subsys ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ctnetlink_net_init(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @nf_conntrack_register_notifier(ptr noundef %net, ptr noundef nonnull @ctnl_notifier) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ctnetlink_net_pre_exit(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @nf_conntrack_unregister_notifier(ptr noundef %net) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_conntrack_register_notifier(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ctnetlink_conntrack_event(i32 noundef %events, ptr nocapture noundef readonly %item) #2 align 64 {
entry:
  %tmp.i.i317 = alloca i32, align 4
  %tmp.i.i308 = alloca i32, align 4
  %tmp.i.i291 = alloca i16, align 2
  %tmp.i.i = alloca i16, align 2
  %len.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %item to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %item, align 4
  %and = and i32 %events, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10

if.else:                                          ; preds = %entry
  %and2 = and i32 %events, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.else5, label %if.else.if.end10_crit_edge

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10

if.else5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %events)
  %tobool6.not = icmp eq i32 %events, 0
  br i1 %tobool6.not, label %if.else5.cleanup_crit_edge, label %if.else5.if.end10_crit_edge

if.else5.if.end10_crit_edge:                      ; preds = %if.else5
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10

if.else5.cleanup_crit_edge:                       ; preds = %if.else5
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end10:                                         ; preds = %if.else5.if.end10_crit_edge, %if.else.if.end10_crit_edge, %entry.if.end10_crit_edge
  %type.0 = phi i32 [ 258, %entry.if.end10_crit_edge ], [ 256, %if.else.if.end10_crit_edge ], [ 256, %if.else5.if.end10_crit_edge ]
  %flags.0 = phi i32 [ 0, %entry.if.end10_crit_edge ], [ 1536, %if.else.if.end10_crit_edge ], [ 0, %if.else5.if.end10_crit_edge ]
  %group.0 = phi i32 [ 3, %entry.if.end10_crit_edge ], [ 1, %if.else.if.end10_crit_edge ], [ 2, %if.else5.if.end10_crit_edge ]
  %ct_net.i = getelementptr inbounds %struct.nf_conn, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %ct_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ct_net.i, align 4
  %report = getelementptr inbounds %struct.nf_ct_event, ptr %item, i32 0, i32 2
  %4 = ptrtoint ptr %report to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %report, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool11.not = icmp eq i32 %5, 0
  br i1 %tobool11.not, label %land.lhs.true, label %if.end10.if.end15_crit_edge

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end10
  %call12 = tail call i32 @nfnetlink_has_listeners(ptr noundef %3, i32 noundef %group.0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end15_crit_edge

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end15:                                         ; preds = %land.lhs.true.if.end15_crit_edge, %if.end10.if.end15_crit_edge
  %ext.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %ext.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ext.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i.i, label %if.end15.ctnetlink_timestamp_size.exit.i_crit_edge, label %nf_ct_ext_exist.exit.i51.i

if.end15.ctnetlink_timestamp_size.exit.i_crit_edge: ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  br label %ctnetlink_timestamp_size.exit.i

nf_ct_ext_exist.exit.i51.i:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i.i.i.i = getelementptr [10 x i8], ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.i.i.not.i.i = icmp eq i8 %9, 0
  %arrayidx.i.i.i48.i = getelementptr [10 x i8], ptr %7, i32 0, i32 5
  %10 = ptrtoint ptr %arrayidx.i.i.i48.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i.i.i48.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.i.i.not.i49.i = icmp eq i8 %11, 0
  %spec.select.i50.i = select i1 %tobool.i.i.not.i49.i, i32 0, i32 28
  %phi.bo65.i = select i1 %tobool.i.i.not.i.i, i32 188, i32 244
  %phi.bo.i = add nuw nsw i32 %phi.bo65.i, %spec.select.i50.i
  br label %ctnetlink_timestamp_size.exit.i

ctnetlink_timestamp_size.exit.i:                  ; preds = %nf_ct_ext_exist.exit.i51.i, %if.end15.ctnetlink_timestamp_size.exit.i_crit_edge
  %add17.i = phi i32 [ %phi.bo.i, %nf_ct_ext_exist.exit.i51.i ], [ 188, %if.end15.ctnetlink_timestamp_size.exit.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i.i) #16
  %12 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %len.i.i, align 4, !annotation !128
  %secmark.i.i = getelementptr inbounds %struct.nf_conn, ptr %1, i32 0, i32 12
  %13 = ptrtoint ptr %secmark.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %secmark.i.i, align 4
  %call.i.i = call i32 @security_secid_to_secctx(i32 noundef %14, ptr noundef null, ptr noundef nonnull %len.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %ctnetlink_timestamp_size.exit.i.ctnetlink_secctx_size.exit.i_crit_edge

ctnetlink_timestamp_size.exit.i.ctnetlink_secctx_size.exit.i_crit_edge: ; preds = %ctnetlink_timestamp_size.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ctnetlink_secctx_size.exit.i

if.end.i.i:                                       ; preds = %ctnetlink_timestamp_size.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %15 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len.i.i, align 4
  %17 = add i32 %16, 11
  %add.i.i = and i32 %17, -4
  br label %ctnetlink_secctx_size.exit.i

ctnetlink_secctx_size.exit.i:                     ; preds = %if.end.i.i, %ctnetlink_timestamp_size.exit.i.ctnetlink_secctx_size.exit.i_crit_edge
  %retval.0.i53.i = phi i32 [ %add.i.i, %if.end.i.i ], [ 0, %ctnetlink_timestamp_size.exit.i.ctnetlink_secctx_size.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i.i) #16
  %call.i54.i = call i32 @nla_policy_len(ptr noundef nonnull @cta_ip_nla_policy, i32 noundef 5) #16
  %protonum.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %1, i32 0, i32 4, i32 0, i32 1, i32 1, i32 2
  %18 = ptrtoint ptr %protonum.i.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %protonum.i.i.i, align 2
  %call2.i.i = call ptr @nf_ct_l4proto_find(i8 noundef zeroext %19) #16
  %nlattr_size.i.i = getelementptr inbounds %struct.nf_conntrack_l4proto, ptr %call2.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %nlattr_size.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %nlattr_size.i.i, align 2
  %nlattr_tuple_size.i.i = getelementptr inbounds %struct.nf_conntrack_l4proto, ptr %call2.i.i, i32 0, i32 7
  %22 = ptrtoint ptr %nlattr_tuple_size.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %nlattr_tuple_size.i.i, align 4
  %tobool.not.i55.i = icmp eq ptr %23, null
  br i1 %tobool.not.i55.i, label %ctnetlink_secctx_size.exit.i.ctnetlink_proto_size.exit.i_crit_edge, label %if.then.i.i

ctnetlink_secctx_size.exit.i.ctnetlink_proto_size.exit.i_crit_edge: ; preds = %ctnetlink_secctx_size.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ctnetlink_proto_size.exit.i

if.then.i.i:                                      ; preds = %ctnetlink_secctx_size.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %call4.i.i = call i32 %23() #16
  %mul5.i.i = mul i32 %call4.i.i, 3
  br label %ctnetlink_proto_size.exit.i

ctnetlink_proto_size.exit.i:                      ; preds = %if.then.i.i, %ctnetlink_secctx_size.exit.i.ctnetlink_proto_size.exit.i_crit_edge
  %len4.0.i.i = phi i32 [ %mul5.i.i, %if.then.i.i ], [ 0, %ctnetlink_secctx_size.exit.i.ctnetlink_proto_size.exit.i_crit_edge ]
  %24 = ptrtoint ptr %ext.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ext.i.i.i, align 8
  %tobool.not.i.i.i.i.i = icmp eq ptr %25, null
  br i1 %tobool.not.i.i.i.i.i, label %ctnetlink_proto_size.exit.i.ctnetlink_nlmsg_size.exit_crit_edge, label %nf_ct_ext_exist.exit.i.i.i.i

ctnetlink_proto_size.exit.i.ctnetlink_nlmsg_size.exit_crit_edge: ; preds = %ctnetlink_proto_size.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ctnetlink_nlmsg_size.exit

nf_ct_ext_exist.exit.i.i.i.i:                     ; preds = %ctnetlink_proto_size.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i.i.i.i.i.i = getelementptr [10 x i8], ptr %25, i32 0, i32 7
  %26 = ptrtoint ptr %arrayidx.i.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.i.i.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.i.i.not.i.i.i.i = icmp eq i8 %27, 0
  %conv.i.i.i.i = zext i8 %27 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %25, i32 %conv.i.i.i.i
  %tobool.not.i58.i = icmp eq ptr %add.ptr.i.i.i.i, null
  %or.cond.i.i = select i1 %tobool.i.i.not.i.i.i.i, i1 true, i1 %tobool.not.i58.i
  %spec.select.i59.i = select i1 %or.cond.i.i, i32 0, i32 20
  br label %ctnetlink_nlmsg_size.exit

ctnetlink_nlmsg_size.exit:                        ; preds = %nf_ct_ext_exist.exit.i.i.i.i, %ctnetlink_proto_size.exit.i.ctnetlink_nlmsg_size.exit_crit_edge
  %retval.0.i60.i = phi i32 [ 0, %ctnetlink_proto_size.exit.i.ctnetlink_nlmsg_size.exit_crit_edge ], [ %spec.select.i59.i, %nf_ct_ext_exist.exit.i.i.i.i ]
  %mul.i.i = mul i32 %call.i54.i, 3
  %conv.i.i = zext i16 %21 to i32
  %add6.i.i = add nuw nsw i32 %add17.i, 19
  %add27.i = add i32 %add6.i.i, %retval.0.i53.i
  %add37.i = add i32 %add27.i, %mul.i.i
  %add39.i = add i32 %add37.i, %conv.i.i
  %add41.i = add i32 %add39.i, %len4.0.i.i
  %sub.i.i = add i32 %add41.i, %retval.0.i60.i
  %and.i.i = and i32 %sub.i.i, -4
  %call.i.i280 = call ptr @__alloc_skb(i32 noundef %and.i.i, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #16
  %cmp = icmp eq ptr %call.i.i280, null
  br i1 %cmp, label %ctnetlink_nlmsg_size.exit.errout_crit_edge, label %if.end19

ctnetlink_nlmsg_size.exit.errout_crit_edge:       ; preds = %ctnetlink_nlmsg_size.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %errout

if.end19:                                         ; preds = %ctnetlink_nlmsg_size.exit
  %portid = getelementptr inbounds %struct.nf_ct_event, ptr %item, i32 0, i32 1
  %28 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %portid, align 4
  %l3num.i = getelementptr inbounds %struct.nf_conn, ptr %1, i32 0, i32 4, i32 0, i32 1, i32 0, i32 2
  %30 = ptrtoint ptr %l3num.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %l3num.i, align 2
  %conv23 = trunc i16 %31 to i8
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i280, i32 0, i32 7
  %32 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.i.not.i.i.i = icmp eq i32 %33, 0
  br i1 %tobool.i.not.i.i.i, label %skb_tailroom.exit.i.i, label %if.end19.nlmsg_failure_crit_edge

if.end19.nlmsg_failure_crit_edge:                 ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #18
  br label %nlmsg_failure

skb_tailroom.exit.i.i:                            ; preds = %if.end19
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i280, i32 0, i32 17
  %34 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %end.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i280, i32 0, i32 16
  %36 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %35 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %37 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.ptr.sub.i.i.i)
  %cmp.i.i = icmp slt i32 %sub.ptr.sub.i.i.i, 20
  br i1 %cmp.i.i, label %skb_tailroom.exit.i.i.nlmsg_failure_crit_edge, label %nlmsg_put.exit.i, !prof !129

skb_tailroom.exit.i.i.nlmsg_failure_crit_edge:    ; preds = %skb_tailroom.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nlmsg_failure

nlmsg_put.exit.i:                                 ; preds = %skb_tailroom.exit.i.i
  %call3.i.i = call ptr @__nlmsg_put(ptr noundef nonnull %call.i.i280, i32 noundef %29, i32 noundef 0, i32 noundef %type.0, i32 noundef 4, i32 noundef %flags.0) #16
  %tobool.not.i = icmp eq ptr %call3.i.i, null
  br i1 %tobool.not.i, label %nlmsg_put.exit.i.nlmsg_failure_crit_edge, label %if.end27

nlmsg_put.exit.i.nlmsg_failure_crit_edge:         ; preds = %nlmsg_put.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nlmsg_failure

if.end27:                                         ; preds = %nlmsg_put.exit.i
  %add.ptr.i.i.i = getelementptr i8, ptr %call3.i.i, i32 16
  %38 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv23, ptr %add.ptr.i.i.i, align 2
  %version1.i.i = getelementptr i8, ptr %call3.i.i, i32 17
  %39 = ptrtoint ptr %version1.i.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %version1.i.i, align 1
  %res_id2.i.i = getelementptr i8, ptr %call3.i.i, i32 18
  %40 = ptrtoint ptr %res_id2.i.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 0, ptr %res_id2.i.i, align 2
  %zone.i = getelementptr inbounds %struct.nf_conn, ptr %1, i32 0, i32 3
  %41 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i = call i32 @nla_put(ptr noundef nonnull %call.i.i280, i32 noundef 32769, i32 noundef 0, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i282 = icmp slt i32 %call1.i.i, 0
  %tobool30.not338 = icmp eq ptr %42, null
  %tobool30.not = select i1 %cmp.i.i282, i1 true, i1 %tobool30.not338
  br i1 %tobool30.not, label %if.end27.if.then.i.i327_crit_edge, label %if.end32

if.end27.if.then.i.i327_crit_edge:                ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i327

if.end32:                                         ; preds = %if.end27
  %tuple = getelementptr inbounds %struct.nf_conn, ptr %1, i32 0, i32 4, i32 0, i32 1
  %call33 = call fastcc i32 @ctnetlink_dump_tuples(ptr noundef nonnull %call.i.i280, ptr noundef %tuple)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.end32.if.then.i.i327_crit_edge, label %if.end37

if.end32.if.then.i.i327_crit_edge:                ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i327

if.end37:                                         ; preds = %if.end32
  %43 = ptrtoint ptr %zone.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %zone.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %cmp.i = icmp eq i16 %44, 0
  br i1 %cmp.i, label %if.end37.if.end42_crit_edge, label %lor.lhs.false.i

if.end37.if.end42_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end42

lor.lhs.false.i:                                  ; preds = %if.end37
  %dir2.i = getelementptr inbounds %struct.nf_conn, ptr %1, i32 0, i32 3, i32 2
  %45 = ptrtoint ptr %dir2.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %dir2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %46)
  %cmp4.not.i = icmp eq i8 %46, 1
  br i1 %cmp4.not.i, label %ctnetlink_dump_zone_id.exit, label %lor.lhs.false.i.if.end42_crit_edge

lor.lhs.false.i.if.end42_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end42

ctnetlink_dump_zone_id.exit:                      ; preds = %lor.lhs.false.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i.i) #16
  %47 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %44, ptr %tmp.i.i, align 2
  %call.i.i283 = call i32 @nla_put(ptr noundef nonnull %call.i.i280, i32 noundef 3, i32 noundef 2, ptr noundef nonnull %tmp.i.i) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i283)
  %tobool.not.i284.not = icmp eq i32 %call.i.i283, 0
  br i1 %tobool.not.i284.not, label %ctnetlink_dump_zone_id.exit.if.end42_crit_edge, label %ctnetlink_dump_zone_id.exit.if.then.i.i327_crit_edge

ctnetlink_dump_zone_id.exit.if.then.i.i327_crit_edge: ; preds = %ctnetlink_dump_zone_id.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i327

ctnetlink_dump_zone_id.exit.if.end42_crit_edge:   ; preds = %ctnetlink_dump_zone_id.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end42

if.end42:                                         ; preds = %ctnetlink_dump_zone_id.exit.if.end42_crit_edge, %lor.lhs.false.i.if.end42_crit_edge, %if.end37.if.end42_crit_edge
  %48 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %49 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %42 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %50 = ptrtoint ptr %42 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %conv.i, ptr %42, align 2
  %51 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i288 = call i32 @nla_put(ptr noundef nonnull %call.i.i280, i32 noundef 32770, i32 noundef 0, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i288)
  %cmp.i.i289 = icmp slt i32 %call1.i.i288, 0
  %tobool45.not339 = icmp eq ptr %51, null
  %tobool45.not = select i1 %cmp.i.i289, i1 true, i1 %tobool45.not339
  br i1 %tobool45.not, label %if.end42.if.then.i.i327_crit_edge, label %if.end47

if.end42.if.then.i.i327_crit_edge:                ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i327

if.end47:                                         ; preds = %if.end42
  %tuple50 = getelementptr %struct.nf_conn, ptr %1, i32 0, i32 4, i32 1, i32 1
  %call51 = call fastcc i32 @ctnetlink_dump_tuples(ptr noundef nonnull %call.i.i280, ptr noundef %tuple50)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %if.end47.if.then.i.i327_crit_edge, label %if.end55

if.end47.if.then.i.i327_crit_edge:                ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i327

if.end55:                                         ; preds = %if.end47
  %52 = ptrtoint ptr %zone.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %zone.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %cmp.i292 = icmp eq i16 %53, 0
  br i1 %cmp.i292, label %if.end55.if.end60_crit_edge, label %lor.lhs.false.i296

if.end55.if.end60_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end60

lor.lhs.false.i296:                               ; preds = %if.end55
  %dir2.i293 = getelementptr inbounds %struct.nf_conn, ptr %1, i32 0, i32 3, i32 2
  %54 = ptrtoint ptr %dir2.i293 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %dir2.i293, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %55)
  %cmp4.not.i295 = icmp eq i8 %55, 2
  br i1 %cmp4.not.i295, label %ctnetlink_dump_zone_id.exit302, label %lor.lhs.false.i296.if.end60_crit_edge

lor.lhs.false.i296.if.end60_crit_edge:            ; preds = %lor.lhs.false.i296
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end60

ctnetlink_dump_zone_id.exit302:                   ; preds = %lor.lhs.false.i296
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i.i291) #16
  %56 = ptrtoint ptr %tmp.i.i291 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %53, ptr %tmp.i.i291, align 2
  %call.i.i297 = call i32 @nla_put(ptr noundef nonnull %call.i.i280, i32 noundef 3, i32 noundef 2, ptr noundef nonnull %tmp.i.i291) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i.i291) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i297)
  %tobool.not.i298.not = icmp eq i32 %call.i.i297, 0
  br i1 %tobool.not.i298.not, label %ctnetlink_dump_zone_id.exit302.if.end60_crit_edge, label %ctnetlink_dump_zone_id.exit302.if.then.i.i327_crit_edge

ctnetlink_dump_zone_id.exit302.if.then.i.i327_crit_edge: ; preds = %ctnetlink_dump_zone_id.exit302
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i327

ctnetlink_dump_zone_id.exit302.if.end60_crit_edge: ; preds = %ctnetlink_dump_zone_id.exit302
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end60

if.end60:                                         ; preds = %ctnetlink_dump_zone_id.exit302.if.end60_crit_edge, %lor.lhs.false.i296.if.end60_crit_edge, %if.end55.if.end60_crit_edge
  %57 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i304 = ptrtoint ptr %58 to i32
  %sub.ptr.rhs.cast.i305 = ptrtoint ptr %51 to i32
  %sub.ptr.sub.i306 = sub i32 %sub.ptr.lhs.cast.i304, %sub.ptr.rhs.cast.i305
  %conv.i307 = trunc i32 %sub.ptr.sub.i306 to i16
  %59 = ptrtoint ptr %51 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %conv.i307, ptr %51, align 2
  %call62 = call fastcc i32 @ctnetlink_dump_zone_id(ptr noundef nonnull %call.i.i280, i32 noundef 18, ptr noundef %zone.i, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %cmp63 = icmp slt i32 %call62, 0
  br i1 %cmp63, label %if.end60.if.then.i.i327_crit_edge, label %if.end66

if.end60.if.then.i.i327_crit_edge:                ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i327

if.end66:                                         ; preds = %if.end60
  %call67 = call fastcc i32 @ctnetlink_dump_id(ptr noundef nonnull %call.i.i280, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %cmp68 = icmp slt i32 %call67, 0
  br i1 %cmp68, label %if.end66.if.then.i.i327_crit_edge, label %if.end71

if.end66.if.then.i.i327_crit_edge:                ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i327

if.end71:                                         ; preds = %if.end66
  %status.i = getelementptr inbounds %struct.nf_conn, ptr %1, i32 0, i32 5
  %60 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %status.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i308) #16
  %62 = ptrtoint ptr %tmp.i.i308 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %tmp.i.i308, align 4
  %call.i.i309 = call i32 @nla_put(ptr noundef nonnull %call.i.i280, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i.i308) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i308) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i309)
  %tobool.not.i310.not = icmp eq i32 %call.i.i309, 0
  br i1 %tobool.not.i310.not, label %if.end76, label %if.end71.if.then.i.i327_crit_edge

if.end71.if.then.i.i327_crit_edge:                ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i327

if.end76:                                         ; preds = %if.end71
  br i1 %tobool.not, label %if.else97, label %if.then79

if.then79:                                        ; preds = %if.end76
  %call80 = call fastcc i32 @ctnetlink_dump_timeout(ptr noundef nonnull %call.i.i280, ptr noundef %1, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %cmp81 = icmp slt i32 %call80, 0
  br i1 %cmp81, label %if.then79.if.then.i.i327_crit_edge, label %if.end84

if.then79.if.then.i.i327_crit_edge:               ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i327

if.end84:                                         ; preds = %if.then79
  %call85 = call fastcc i32 @ctnetlink_dump_acct(ptr noundef nonnull %call.i.i280, ptr noundef %1, i32 noundef %type.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %cmp86 = icmp slt i32 %call85, 0
  br i1 %cmp86, label %if.end84.if.then.i.i327_crit_edge, label %lor.lhs.false

if.end84.if.then.i.i327_crit_edge:                ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i327

lor.lhs.false:                                    ; preds = %if.end84
  %call88 = call fastcc i32 @ctnetlink_dump_timestamp(ptr noundef nonnull %call.i.i280, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %cmp89 = icmp slt i32 %call88, 0
  br i1 %cmp89, label %lor.lhs.false.if.then.i.i327_crit_edge, label %lor.lhs.false91

lor.lhs.false.if.then.i.i327_crit_edge:           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i327

lor.lhs.false91:                                  ; preds = %lor.lhs.false
  %call92 = call fastcc i32 @ctnetlink_dump_protoinfo(ptr noundef nonnull %call.i.i280, ptr noundef %1, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %cmp93 = icmp slt i32 %call92, 0
  br i1 %cmp93, label %lor.lhs.false91.if.then.i.i327_crit_edge, label %lor.lhs.false91.if.end164_crit_edge

lor.lhs.false91.if.end164_crit_edge:              ; preds = %lor.lhs.false91
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end164

lor.lhs.false91.if.then.i.i327_crit_edge:         ; preds = %lor.lhs.false91
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i327

if.else97:                                        ; preds = %if.end76
  %call98 = call fastcc i32 @ctnetlink_dump_timeout(ptr noundef nonnull %call.i.i280, ptr noundef %1, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %cmp99 = icmp slt i32 %call98, 0
  br i1 %cmp99, label %if.else97.if.then.i.i327_crit_edge, label %if.end102

if.else97.if.then.i.i327_crit_edge:               ; preds = %if.else97
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i327

if.end102:                                        ; preds = %if.else97
  %and103 = and i32 %events, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool104.not = icmp eq i32 %and103, 0
  br i1 %tobool104.not, label %if.end102.if.end110_crit_edge, label %land.lhs.true105

if.end102.if.end110_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end110

land.lhs.true105:                                 ; preds = %if.end102
  %call106 = call fastcc i32 @ctnetlink_dump_protoinfo(ptr noundef nonnull %call.i.i280, ptr noundef %1, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %cmp107 = icmp slt i32 %call106, 0
  br i1 %cmp107, label %land.lhs.true105.if.then.i.i327_crit_edge, label %land.lhs.true105.if.end110_crit_edge

land.lhs.true105.if.end110_crit_edge:             ; preds = %land.lhs.true105
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end110

land.lhs.true105.if.then.i.i327_crit_edge:        ; preds = %land.lhs.true105
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i327

if.end110:                                        ; preds = %land.lhs.true105.if.end110_crit_edge, %if.end102.if.end110_crit_edge
  %and111 = and i32 %events, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111)
  %tobool112.not = icmp eq i32 %and111, 0
  br i1 %tobool112.not, label %lor.lhs.false113, label %if.end110.land.lhs.true116_crit_edge

if.end110.land.lhs.true116_crit_edge:             ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true116

lor.lhs.false113:                                 ; preds = %if.end110
  %63 = ptrtoint ptr %ext.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ext.i.i.i, align 8
  %tobool.not.i.i.i313 = icmp eq ptr %64, null
  br i1 %tobool.not.i.i.i313, label %lor.lhs.false113.if.end121_crit_edge, label %nf_ct_ext_exist.exit.i.i

lor.lhs.false113.if.end121_crit_edge:             ; preds = %lor.lhs.false113
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end121

nf_ct_ext_exist.exit.i.i:                         ; preds = %lor.lhs.false113
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %64, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool.i.i.not.i.i314 = icmp eq i8 %66, 0
  %conv.i.i315 = zext i8 %66 to i32
  %add.ptr.i.i = getelementptr i8, ptr %64, i32 %conv.i.i315
  %tobool115.not = icmp eq ptr %add.ptr.i.i, null
  %or.cond = select i1 %tobool.i.i.not.i.i314, i1 true, i1 %tobool115.not
  br i1 %or.cond, label %nf_ct_ext_exist.exit.i.i.if.end121_crit_edge, label %nf_ct_ext_exist.exit.i.i.land.lhs.true116_crit_edge

nf_ct_ext_exist.exit.i.i.land.lhs.true116_crit_edge: ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true116

nf_ct_ext_exist.exit.i.i.if.end121_crit_edge:     ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end121

land.lhs.true116:                                 ; preds = %nf_ct_ext_exist.exit.i.i.land.lhs.true116_crit_edge, %if.end110.land.lhs.true116_crit_edge
  %call117 = call fastcc i32 @ctnetlink_dump_helpinfo(ptr noundef nonnull %call.i.i280, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %cmp118 = icmp slt i32 %call117, 0
  br i1 %cmp118, label %land.lhs.true116.if.then.i.i327_crit_edge, label %land.lhs.true116.if.end121_crit_edge

land.lhs.true116.if.end121_crit_edge:             ; preds = %land.lhs.true116
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end121

land.lhs.true116.if.then.i.i327_crit_edge:        ; preds = %land.lhs.true116
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i327

if.end121:                                        ; preds = %land.lhs.true116.if.end121_crit_edge, %nf_ct_ext_exist.exit.i.i.if.end121_crit_edge, %lor.lhs.false113.if.end121_crit_edge
  %and122 = and i32 %events, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122)
  %tobool123.not = icmp eq i32 %and122, 0
  br i1 %tobool123.not, label %lor.lhs.false124, label %if.end121.land.lhs.true126_crit_edge

if.end121.land.lhs.true126_crit_edge:             ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true126

lor.lhs.false124:                                 ; preds = %if.end121
  %67 = ptrtoint ptr %secmark.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %secmark.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool125.not = icmp eq i32 %68, 0
  br i1 %tobool125.not, label %lor.lhs.false124.if.end131_crit_edge, label %lor.lhs.false124.land.lhs.true126_crit_edge

lor.lhs.false124.land.lhs.true126_crit_edge:      ; preds = %lor.lhs.false124
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true126

lor.lhs.false124.if.end131_crit_edge:             ; preds = %lor.lhs.false124
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end131

land.lhs.true126:                                 ; preds = %lor.lhs.false124.land.lhs.true126_crit_edge, %if.end121.land.lhs.true126_crit_edge
  %call127 = call fastcc i32 @ctnetlink_dump_secctx(ptr noundef nonnull %call.i.i280, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127)
  %cmp128 = icmp slt i32 %call127, 0
  br i1 %cmp128, label %land.lhs.true126.if.then.i.i327_crit_edge, label %land.lhs.true126.if.end131_crit_edge

land.lhs.true126.if.end131_crit_edge:             ; preds = %land.lhs.true126
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end131

land.lhs.true126.if.then.i.i327_crit_edge:        ; preds = %land.lhs.true126
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i327

if.end131:                                        ; preds = %land.lhs.true126.if.end131_crit_edge, %lor.lhs.false124.if.end131_crit_edge
  %and132 = and i32 %events, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and132)
  %tobool133.not = icmp eq i32 %and132, 0
  br i1 %tobool133.not, label %if.end131.if.end139_crit_edge, label %land.lhs.true134

if.end131.if.end139_crit_edge:                    ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end139

land.lhs.true134:                                 ; preds = %if.end131
  %call135 = call fastcc i32 @ctnetlink_dump_labels(ptr noundef nonnull %call.i.i280, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135)
  %cmp136 = icmp slt i32 %call135, 0
  br i1 %cmp136, label %land.lhs.true134.if.then.i.i327_crit_edge, label %land.lhs.true134.if.end139_crit_edge

land.lhs.true134.if.end139_crit_edge:             ; preds = %land.lhs.true134
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end139

land.lhs.true134.if.then.i.i327_crit_edge:        ; preds = %land.lhs.true134
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i327

if.end139:                                        ; preds = %land.lhs.true134.if.end139_crit_edge, %if.end131.if.end139_crit_edge
  %and140 = and i32 %events, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and140)
  %tobool141.not = icmp eq i32 %and140, 0
  br i1 %tobool141.not, label %if.end139.if.end147_crit_edge, label %land.lhs.true142

if.end139.if.end147_crit_edge:                    ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end147

land.lhs.true142:                                 ; preds = %if.end139
  %call143 = call fastcc i32 @ctnetlink_dump_master(ptr noundef nonnull %call.i.i280, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143)
  %cmp144 = icmp slt i32 %call143, 0
  br i1 %cmp144, label %land.lhs.true142.if.then.i.i327_crit_edge, label %land.lhs.true142.if.end147_crit_edge

land.lhs.true142.if.end147_crit_edge:             ; preds = %land.lhs.true142
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end147

land.lhs.true142.if.then.i.i327_crit_edge:        ; preds = %land.lhs.true142
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i327

if.end147:                                        ; preds = %land.lhs.true142.if.end147_crit_edge, %if.end139.if.end147_crit_edge
  %and148 = and i32 %events, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and148)
  %tobool149.not = icmp eq i32 %and148, 0
  br i1 %tobool149.not, label %if.end147.if.end155_crit_edge, label %land.lhs.true150

if.end147.if.end155_crit_edge:                    ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end155

land.lhs.true150:                                 ; preds = %if.end147
  %call151 = call fastcc i32 @ctnetlink_dump_ct_seq_adj(ptr noundef nonnull %call.i.i280, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151)
  %cmp152 = icmp slt i32 %call151, 0
  br i1 %cmp152, label %land.lhs.true150.if.then.i.i327_crit_edge, label %land.lhs.true150.if.end155_crit_edge

land.lhs.true150.if.end155_crit_edge:             ; preds = %land.lhs.true150
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end155

land.lhs.true150.if.then.i.i327_crit_edge:        ; preds = %land.lhs.true150
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i327

if.end155:                                        ; preds = %land.lhs.true150.if.end155_crit_edge, %if.end147.if.end155_crit_edge
  %and156 = and i32 %events, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and156)
  %tobool157.not = icmp eq i32 %and156, 0
  br i1 %tobool157.not, label %if.end155.if.end164_crit_edge, label %land.lhs.true158

if.end155.if.end164_crit_edge:                    ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end164

land.lhs.true158:                                 ; preds = %if.end155
  %call159 = call fastcc i32 @ctnetlink_dump_ct_synproxy(ptr noundef nonnull %call.i.i280, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call159)
  %cmp160 = icmp slt i32 %call159, 0
  br i1 %cmp160, label %land.lhs.true158.if.then.i.i327_crit_edge, label %land.lhs.true158.if.end164_crit_edge

land.lhs.true158.if.end164_crit_edge:             ; preds = %land.lhs.true158
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end164

land.lhs.true158.if.then.i.i327_crit_edge:        ; preds = %land.lhs.true158
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i327

if.end164:                                        ; preds = %land.lhs.true158.if.end164_crit_edge, %if.end155.if.end164_crit_edge, %lor.lhs.false91.if.end164_crit_edge
  %and165 = and i32 %events, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and165)
  %tobool166.not = icmp eq i32 %and165, 0
  br i1 %tobool166.not, label %lor.lhs.false167, label %if.end164.land.lhs.true169_crit_edge

if.end164.land.lhs.true169_crit_edge:             ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true169

lor.lhs.false167:                                 ; preds = %if.end164
  %mark = getelementptr inbounds %struct.nf_conn, ptr %1, i32 0, i32 11
  %69 = ptrtoint ptr %mark to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %mark, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool168.not = icmp eq i32 %70, 0
  br i1 %tobool168.not, label %lor.lhs.false167.if.end174_crit_edge, label %lor.lhs.false167.land.lhs.true169_crit_edge

lor.lhs.false167.land.lhs.true169_crit_edge:      ; preds = %lor.lhs.false167
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true169

lor.lhs.false167.if.end174_crit_edge:             ; preds = %lor.lhs.false167
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end174

land.lhs.true169:                                 ; preds = %lor.lhs.false167.land.lhs.true169_crit_edge, %if.end164.land.lhs.true169_crit_edge
  %mark.i = getelementptr inbounds %struct.nf_conn, ptr %1, i32 0, i32 11
  %71 = ptrtoint ptr %mark.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %mark.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i317) #16
  %73 = ptrtoint ptr %tmp.i.i317 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %tmp.i.i317, align 4
  %call.i.i318 = call i32 @nla_put(ptr noundef nonnull %call.i.i280, i32 noundef 8, i32 noundef 4, ptr noundef nonnull %tmp.i.i317) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i317) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i318)
  %tobool.not.i319.not = icmp eq i32 %call.i.i318, 0
  br i1 %tobool.not.i319.not, label %land.lhs.true169.if.end174_crit_edge, label %land.lhs.true169.if.then.i.i327_crit_edge

land.lhs.true169.if.then.i.i327_crit_edge:        ; preds = %land.lhs.true169
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i327

land.lhs.true169.if.end174_crit_edge:             ; preds = %land.lhs.true169
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end174

if.end174:                                        ; preds = %land.lhs.true169.if.end174_crit_edge, %lor.lhs.false167.if.end174_crit_edge
  %74 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i322 = ptrtoint ptr %75 to i32
  %sub.ptr.rhs.cast.i323 = ptrtoint ptr %call3.i.i to i32
  %sub.ptr.sub.i324 = sub i32 %sub.ptr.lhs.cast.i322, %sub.ptr.rhs.cast.i323
  %76 = ptrtoint ptr %call3.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %sub.ptr.sub.i324, ptr %call3.i.i, align 4
  %77 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %portid, align 4
  %79 = ptrtoint ptr %report to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %report, align 4
  %call177 = call i32 @nfnetlink_send(ptr noundef nonnull %call.i.i280, ptr noundef %3, i32 noundef %78, i32 noundef %group.0, i32 noundef %80, i32 noundef 2592) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -105, i32 %call177)
  %switch.selectcmp.case1 = icmp eq i32 %call177, -105
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call177)
  %switch.selectcmp.case2 = icmp eq i32 %call177, -11
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %81 = select i1 %switch.selectcmp, i32 -105, i32 0
  br label %cleanup

if.then.i.i327:                                   ; preds = %land.lhs.true169.if.then.i.i327_crit_edge, %land.lhs.true158.if.then.i.i327_crit_edge, %land.lhs.true150.if.then.i.i327_crit_edge, %land.lhs.true142.if.then.i.i327_crit_edge, %land.lhs.true134.if.then.i.i327_crit_edge, %land.lhs.true126.if.then.i.i327_crit_edge, %land.lhs.true116.if.then.i.i327_crit_edge, %land.lhs.true105.if.then.i.i327_crit_edge, %if.else97.if.then.i.i327_crit_edge, %lor.lhs.false91.if.then.i.i327_crit_edge, %lor.lhs.false.if.then.i.i327_crit_edge, %if.end84.if.then.i.i327_crit_edge, %if.then79.if.then.i.i327_crit_edge, %if.end71.if.then.i.i327_crit_edge, %if.end66.if.then.i.i327_crit_edge, %if.end60.if.then.i.i327_crit_edge, %ctnetlink_dump_zone_id.exit302.if.then.i.i327_crit_edge, %if.end47.if.then.i.i327_crit_edge, %if.end42.if.then.i.i327_crit_edge, %ctnetlink_dump_zone_id.exit.if.then.i.i327_crit_edge, %if.end32.if.then.i.i327_crit_edge, %if.end27.if.then.i.i327_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i280, i32 0, i32 19
  %82 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i326 = icmp ugt ptr %83, %call3.i.i
  br i1 %cmp.i.i326, label %do.end.i.i, label %if.then.i.i327.nlmsg_cancel.exit_crit_edge, !prof !129

if.then.i.i327.nlmsg_cancel.exit_crit_edge:       ; preds = %if.then.i.i327
  call void @__sanitizer_cov_trace_pc() #18
  br label %nlmsg_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i327
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 991, i32 noundef 9, ptr noundef null) #16
  br label %nlmsg_cancel.exit

nlmsg_cancel.exit:                                ; preds = %do.end.i.i, %if.then.i.i327.nlmsg_cancel.exit_crit_edge
  %84 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %call3.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %85 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef nonnull %call.i.i280, i32 noundef %sub.ptr.sub.i.i) #16
  br label %nlmsg_failure

nlmsg_failure:                                    ; preds = %nlmsg_cancel.exit, %nlmsg_put.exit.i.nlmsg_failure_crit_edge, %skb_tailroom.exit.i.i.nlmsg_failure_crit_edge, %if.end19.nlmsg_failure_crit_edge
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i280, i32 noundef 0) #16
  br label %errout

errout:                                           ; preds = %nlmsg_failure, %ctnetlink_nlmsg_size.exit.errout_crit_edge
  %call185 = call i32 @nfnetlink_set_err(ptr noundef %3, i32 noundef 0, i32 noundef %group.0, i32 noundef -105) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call185)
  %cmp186 = icmp sgt i32 %call185, 0
  %. = select i1 %cmp186, i32 -105, i32 0
  br label %cleanup

cleanup:                                          ; preds = %errout, %if.end174, %land.lhs.true.cleanup_crit_edge, %if.else5.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.else5.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ %., %errout ], [ %81, %if.end174 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ctnetlink_expect_event(i32 noundef %events, ptr nocapture noundef readonly %item) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %item to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %item, align 4
  %master.i = getelementptr inbounds %struct.nf_conntrack_expect, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master.i, align 4
  %ct_net.i.i = getelementptr inbounds %struct.nf_conn, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %ct_net.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ct_net.i.i, align 4
  %and = and i32 %events, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

if.else:                                          ; preds = %entry
  %and2 = and i32 %events, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.else.cleanup_crit_edge, label %if.else.if.end6_crit_edge

if.else.if.end6_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end6:                                          ; preds = %if.else.if.end6_crit_edge, %entry.if.end6_crit_edge
  %type.0 = phi i32 [ 514, %entry.if.end6_crit_edge ], [ 512, %if.else.if.end6_crit_edge ]
  %group.0 = phi i32 [ 6, %entry.if.end6_crit_edge ], [ 4, %if.else.if.end6_crit_edge ]
  %flags.0 = phi i32 [ 0, %entry.if.end6_crit_edge ], [ 1536, %if.else.if.end6_crit_edge ]
  %report = getelementptr inbounds %struct.nf_exp_event, ptr %item, i32 0, i32 2
  %6 = ptrtoint ptr %report to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %report, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool7.not = icmp eq i32 %7, 0
  br i1 %tobool7.not, label %land.lhs.true, label %if.end6.if.end11_crit_edge

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end6
  %call8 = tail call i32 @nfnetlink_has_listeners(ptr noundef %5, i32 noundef %group.0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end11_crit_edge

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end11:                                         ; preds = %land.lhs.true.if.end11_crit_edge, %if.end6.if.end11_crit_edge
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #16
  %cmp = icmp eq ptr %call.i.i, null
  br i1 %cmp, label %if.end11.errout_crit_edge, label %if.end14

if.end11.errout_crit_edge:                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %errout

if.end14:                                         ; preds = %if.end11
  %portid = getelementptr inbounds %struct.nf_exp_event, ptr %item, i32 0, i32 1
  %8 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %portid, align 4
  %l3num = getelementptr inbounds %struct.nf_conntrack_expect, ptr %1, i32 0, i32 2, i32 0, i32 2
  %10 = ptrtoint ptr %l3num to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %l3num, align 2
  %conv17 = trunc i16 %11 to i8
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 7
  %12 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.i.not.i.i.i = icmp eq i32 %13, 0
  br i1 %tobool.i.not.i.i.i, label %skb_tailroom.exit.i.i, label %if.end14.nlmsg_failure_crit_edge

if.end14.nlmsg_failure_crit_edge:                 ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  br label %nlmsg_failure

skb_tailroom.exit.i.i:                            ; preds = %if.end14
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 17
  %14 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %end.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %16 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %15 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %17 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.ptr.sub.i.i.i)
  %cmp.i.i = icmp slt i32 %sub.ptr.sub.i.i.i, 20
  br i1 %cmp.i.i, label %skb_tailroom.exit.i.i.nlmsg_failure_crit_edge, label %nlmsg_put.exit.i, !prof !129

skb_tailroom.exit.i.i.nlmsg_failure_crit_edge:    ; preds = %skb_tailroom.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nlmsg_failure

nlmsg_put.exit.i:                                 ; preds = %skb_tailroom.exit.i.i
  %call3.i.i = tail call ptr @__nlmsg_put(ptr noundef nonnull %call.i.i, i32 noundef %9, i32 noundef 0, i32 noundef %type.0, i32 noundef 4, i32 noundef %flags.0) #16
  %tobool.not.i = icmp eq ptr %call3.i.i, null
  br i1 %tobool.not.i, label %nlmsg_put.exit.i.nlmsg_failure_crit_edge, label %if.end21

nlmsg_put.exit.i.nlmsg_failure_crit_edge:         ; preds = %nlmsg_put.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nlmsg_failure

if.end21:                                         ; preds = %nlmsg_put.exit.i
  %add.ptr.i.i.i = getelementptr i8, ptr %call3.i.i, i32 16
  %18 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv17, ptr %add.ptr.i.i.i, align 2
  %version1.i.i = getelementptr i8, ptr %call3.i.i, i32 17
  %19 = ptrtoint ptr %version1.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %version1.i.i, align 1
  %res_id2.i.i = getelementptr i8, ptr %call3.i.i, i32 18
  %20 = ptrtoint ptr %res_id2.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %res_id2.i.i, align 2
  %call22 = tail call fastcc i32 @ctnetlink_exp_dump_expect(ptr noundef nonnull %call.i.i, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.then.i.i, label %if.end26

if.end26:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  %21 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %22 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %call3.i.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %23 = ptrtoint ptr %call3.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %sub.ptr.sub.i, ptr %call3.i.i, align 4
  %24 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %portid, align 4
  %26 = ptrtoint ptr %report to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %report, align 4
  %call29 = tail call i32 @nfnetlink_send(ptr noundef nonnull %call.i.i, ptr noundef %5, i32 noundef %25, i32 noundef %group.0, i32 noundef %27, i32 noundef 2592) #16
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end21
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %28 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i56 = icmp ugt ptr %29, %call3.i.i
  br i1 %cmp.i.i56, label %do.end.i.i, label %if.then.i.i.nlmsg_cancel.exit_crit_edge, !prof !129

if.then.i.i.nlmsg_cancel.exit_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nlmsg_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 991, i32 noundef 9, ptr noundef null) #16
  br label %nlmsg_cancel.exit

nlmsg_cancel.exit:                                ; preds = %do.end.i.i, %if.then.i.i.nlmsg_cancel.exit_crit_edge
  %30 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %call3.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %31 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  tail call void @skb_trim(ptr noundef nonnull %call.i.i, i32 noundef %sub.ptr.sub.i.i) #16
  br label %nlmsg_failure

nlmsg_failure:                                    ; preds = %nlmsg_cancel.exit, %nlmsg_put.exit.i.nlmsg_failure_crit_edge, %skb_tailroom.exit.i.i.nlmsg_failure_crit_edge, %if.end14.nlmsg_failure_crit_edge
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #16
  br label %errout

errout:                                           ; preds = %nlmsg_failure, %if.end11.errout_crit_edge
  %call30 = tail call i32 @nfnetlink_set_err(ptr noundef %5, i32 noundef 0, i32 noundef 0, i32 noundef -105) #16
  br label %cleanup

cleanup:                                          ; preds = %errout, %if.end26, %land.lhs.true.cleanup_crit_edge, %if.else.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfnetlink_has_listeners(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ctnetlink_dump_tuples(ptr noundef %skb, ptr noundef %tuple) unnamed_addr #2 align 64 {
entry:
  %tmp.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !118) #16
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !130
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 696, ptr noundef nonnull @.str.1) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call fastcc i32 @ctnetlink_dump_tuples_ip(ptr noundef %skb, ptr noundef %tuple)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %if.then, label %rcu_read_lock.exit.if.end_crit_edge

rcu_read_lock.exit.if.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %rcu_read_lock.exit
  %protonum = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %tuple, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %protonum to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %protonum, align 2
  %call1 = tail call ptr @nf_ct_l4proto_find(i8 noundef zeroext %5) #16
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %6 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tail.i.i.i.i, align 8
  %call1.i.i.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 32770, i32 noundef 0, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call1.i.i.i, 0
  %tobool.not20.i = icmp eq ptr %7, null
  %tobool.not.i7 = select i1 %cmp.i.i.i, i1 true, i1 %tobool.not20.i
  br i1 %tobool.not.i7, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %8 = ptrtoint ptr %protonum to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %protonum, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i.i) #16
  %10 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %tmp.i.i, align 1
  %call.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %tmp.i.i) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end4.i:                                        ; preds = %if.end.i
  %tuple_to_nlattr.i = getelementptr inbounds %struct.nf_conntrack_l4proto, ptr %call1, i32 0, i32 6
  %11 = ptrtoint ptr %tuple_to_nlattr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tuple_to_nlattr.i, align 4
  %tobool5.not.i = icmp eq ptr %12, null
  br i1 %tobool5.not.i, label %if.end4.i.if.end11.i_crit_edge, label %if.then8.i, !prof !129

if.end4.i.if.end11.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11.i

if.then8.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #18
  %call10.i = call i32 %12(ptr noundef %skb, ptr noundef %tuple) #16
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then8.i, %if.end4.i.if.end11.i_crit_edge
  %ret.0.i = phi i32 [ %call10.i, %if.then8.i ], [ 0, %if.end4.i.if.end11.i_crit_edge ]
  %13 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tail.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %14 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv.i.i, ptr %7, align 2
  br label %if.end

if.end:                                           ; preds = %if.end11.i, %if.end.i.if.end_crit_edge, %if.then.if.end_crit_edge, %rcu_read_lock.exit.if.end_crit_edge
  %ret.0 = phi i32 [ %call, %rcu_read_lock.exit.if.end_crit_edge ], [ %ret.0.i, %if.end11.i ], [ -1, %if.end.i.if.end_crit_edge ], [ -1, %if.then.if.end_crit_edge ]
  %call.i8 = call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i8, label %if.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i11

if.end.rcu_read_unlock.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true.i11:                                ; preds = %if.end
  %call1.i9 = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i9)
  %tobool.not.i10 = icmp eq i32 %call1.i9, 0
  br i1 %tobool.not.i10, label %land.lhs.true.i11.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i13

land.lhs.true.i11.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i11
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true2.i13:                               ; preds = %land.lhs.true.i11
  %.b4.i12 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i12, label %land.lhs.true2.i13.rcu_read_unlock.exit_crit_edge, label %if.then.i14

land.lhs.true2.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i13
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

if.then.i14:                                      ; preds = %land.lhs.true2.i13
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 724, ptr noundef nonnull @.str.2) #16
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i14, %land.lhs.true2.i13.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i11.rcu_read_unlock.exit_crit_edge, %if.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !131
  %16 = call i32 @llvm.read_register.i32(metadata !118) #16
  %and.i.i.i.i.i15 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i15 to ptr
  %preempt_count.i.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i16, align 4
  %sub.i.i.i = add i32 %19, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i16, align 4
  call void @rcu_read_unlock_strict() #16
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ctnetlink_dump_zone_id(ptr noundef %skb, i32 noundef %attrtype, ptr nocapture noundef readonly %zone, i32 noundef %dir) unnamed_addr #2 align 64 {
entry:
  %tmp.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %zone to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %zone, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp = icmp eq i16 %1, 0
  br i1 %cmp, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %dir2 = getelementptr inbounds %struct.nf_conntrack_zone, ptr %zone, i32 0, i32 2
  %2 = ptrtoint ptr %dir2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dir2, align 1
  %conv3 = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3, i32 %dir)
  %cmp4.not = icmp eq i32 %conv3, %dir
  br i1 %cmp4.not, label %if.end, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i) #16
  %4 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %1, ptr %tmp.i, align 2
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef %attrtype, i32 noundef 2, ptr noundef nonnull %tmp.i) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp ne i32 %call.i, 0
  %. = sext i1 %tobool.not to i32
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.return_crit_edge ], [ 0, %entry.return_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ctnetlink_dump_id(ptr noundef %skb, ptr noundef %ct) unnamed_addr #2 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nf_ct_get_id(ptr noundef %ct) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #16
  %0 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 12, i32 noundef 4, ptr noundef nonnull %tmp.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp ne i32 %call.i, 0
  %. = sext i1 %tobool.not to i32
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ctnetlink_dump_timeout(ptr noundef %skb, ptr noundef %ct, i1 noundef zeroext %skip_zero) unnamed_addr #2 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %timeout1.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 2
  %0 = ptrtoint ptr %timeout1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %timeout1.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %1, %2
  %3 = tail call i32 @llvm.smax.i32(i32 %sub.i, i32 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %3)
  %4 = icmp ult i32 %3, 100
  %or.cond = select i1 %skip_zero, i1 %4, i1 false
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %div = udiv i32 %3, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #16
  %5 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %div, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef 4, ptr noundef nonnull %tmp.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp ne i32 %call.i, 0
  %. = sext i1 %tobool2.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ctnetlink_dump_acct(ptr noundef %skb, ptr nocapture noundef readonly %ct, i32 noundef %type) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %ext.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 13
  %0 = ptrtoint ptr %ext.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ext.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i, label %entry.cleanup_crit_edge, label %nf_ct_ext_exist.exit.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

nf_ct_ext_exist.exit.i.i:                         ; preds = %entry
  %arrayidx.i.i.i.i = getelementptr [10 x i8], ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.i.i.not.i.i = icmp eq i8 %3, 0
  br i1 %tobool.i.i.not.i.i, label %nf_ct_ext_exist.exit.i.i.cleanup_crit_edge, label %nf_conn_acct_find.exit

nf_ct_ext_exist.exit.i.i.cleanup_crit_edge:       ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

nf_conn_acct_find.exit:                           ; preds = %nf_ct_ext_exist.exit.i.i
  %conv.i.i = zext i8 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %tobool.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not, label %nf_conn_acct_find.exit.cleanup_crit_edge, label %if.end

nf_conn_acct_find.exit.cleanup_crit_edge:         ; preds = %nf_conn_acct_find.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %nf_conn_acct_find.exit
  %call1 = tail call fastcc i32 @dump_counters(ptr noundef %skb, ptr noundef nonnull %add.ptr.i.i, i32 noundef 0, i32 noundef %type)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %call4 = tail call fastcc i32 @dump_counters(ptr noundef %skb, ptr noundef nonnull %add.ptr.i.i, i32 noundef 1, i32 noundef %type)
  %call4.lobit = ashr i32 %call4, 31
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %nf_conn_acct_find.exit.cleanup_crit_edge, %nf_ct_ext_exist.exit.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %nf_conn_acct_find.exit.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ %call4.lobit, %if.end3 ], [ 0, %nf_ct_ext_exist.exit.i.i.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ctnetlink_dump_timestamp(ptr noundef %skb, ptr nocapture noundef readonly %ct) unnamed_addr #2 align 64 {
entry:
  %tmp.i21 = alloca i64, align 8
  %tmp.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %ext.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 13
  %0 = ptrtoint ptr %ext.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ext.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i, label %entry.cleanup_crit_edge, label %nf_ct_ext_exist.exit.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

nf_ct_ext_exist.exit.i.i:                         ; preds = %entry
  %arrayidx.i.i.i.i = getelementptr [10 x i8], ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.i.i.not.i.i = icmp eq i8 %3, 0
  br i1 %tobool.i.i.not.i.i, label %nf_ct_ext_exist.exit.i.i.cleanup_crit_edge, label %nf_conn_tstamp_find.exit

nf_ct_ext_exist.exit.i.i.cleanup_crit_edge:       ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

nf_conn_tstamp_find.exit:                         ; preds = %nf_ct_ext_exist.exit.i.i
  %conv.i.i = zext i8 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %tobool.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not, label %nf_conn_tstamp_find.exit.cleanup_crit_edge, label %if.end

nf_conn_tstamp_find.exit.cleanup_crit_edge:       ; preds = %nf_conn_tstamp_find.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %nf_conn_tstamp_find.exit
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 32788, i32 noundef 0, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %tobool2.not25 = icmp eq ptr %5, null
  %tobool2.not = select i1 %cmp.i.i, i1 true, i1 %tobool2.not25
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %add.ptr.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i) #16
  %8 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %tmp.i, align 8
  %call.i = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 1, i32 noundef 8, ptr noundef nonnull %tmp.i, i32 noundef 3) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %lor.lhs.false, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end4
  %stop = getelementptr inbounds %struct.nf_conn_tstamp, ptr %add.ptr.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %stop to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %stop, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %cmp.not = icmp eq i64 %10, 0
  br i1 %cmp.not, label %lor.lhs.false.if.end11_crit_edge, label %land.lhs.true

lor.lhs.false.if.end11_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

land.lhs.true:                                    ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i21) #16
  %11 = ptrtoint ptr %tmp.i21 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %tmp.i21, align 8
  %call.i22 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 2, i32 noundef 8, ptr noundef nonnull %tmp.i21, i32 noundef 3) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i21) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22)
  %tobool9.not = icmp eq i32 %call.i22, 0
  br i1 %tobool9.not, label %land.lhs.true.if.end11_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

if.end11:                                         ; preds = %land.lhs.true.if.end11_crit_edge, %lor.lhs.false.if.end11_crit_edge
  %12 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %13 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv.i, ptr %5, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %land.lhs.true.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %nf_conn_tstamp_find.exit.cleanup_crit_edge, %nf_ct_ext_exist.exit.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ 0, %nf_conn_tstamp_find.exit.cleanup_crit_edge ], [ -1, %if.end4.cleanup_crit_edge ], [ -1, %land.lhs.true.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ 0, %nf_ct_ext_exist.exit.i.i.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ctnetlink_dump_protoinfo(ptr noundef %skb, ptr noundef %ct, i1 noundef zeroext %destroy) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %protonum.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 0, i32 1, i32 1, i32 2
  %0 = ptrtoint ptr %protonum.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %protonum.i, align 2
  %call1 = tail call ptr @nf_ct_l4proto_find(i8 noundef zeroext %1) #16
  %to_nlattr = getelementptr inbounds %struct.nf_conntrack_l4proto, ptr %call1, i32 0, i32 4
  %2 = ptrtoint ptr %to_nlattr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %to_nlattr, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 32772, i32 noundef 0, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %tobool3.not18 = icmp eq ptr %5, null
  %tobool3.not = select i1 %cmp.i.i, i1 true, i1 %tobool3.not18
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %6 = ptrtoint ptr %to_nlattr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %to_nlattr, align 4
  %call8 = tail call i32 %7(ptr noundef %skb, ptr noundef nonnull %5, ptr noundef %ct, i1 noundef zeroext %destroy) #16
  %8 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %9 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.i, ptr %5, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.end5 ], [ 0, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ctnetlink_dump_helpinfo(ptr noundef %skb, ptr noundef %ct) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %ext.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 13
  %0 = ptrtoint ptr %ext.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ext.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i, label %entry.cleanup_crit_edge, label %nf_ct_ext_exist.exit.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

nf_ct_ext_exist.exit.i.i:                         ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.i.i.not.i.i = icmp eq i8 %3, 0
  br i1 %tobool.i.i.not.i.i, label %nf_ct_ext_exist.exit.i.i.cleanup_crit_edge, label %nfct_help.exit

nf_ct_ext_exist.exit.i.i.cleanup_crit_edge:       ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

nfct_help.exit:                                   ; preds = %nf_ct_ext_exist.exit.i.i
  %conv.i.i = zext i8 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %tobool.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not, label %nfct_help.exit.cleanup_crit_edge, label %if.end

nfct_help.exit.cleanup_crit_edge:                 ; preds = %nfct_help.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %nfct_help.exit
  %4 = tail call i32 @llvm.read_register.i32(metadata !118) #16
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !130
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 696, ptr noundef nonnull @.str.1) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %add.ptr.i.i, align 8
  %call3 = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end12_crit_edge

rcu_read_lock.exit.do.end12_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end12

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end12_crit_edge, label %land.lhs.true7

land.lhs.true.do.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end12

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b43 = load i1, ptr @ctnetlink_dump_helpinfo.__warned, align 1
  br i1 %.b43, label %land.lhs.true7.do.end12_crit_edge, label %if.then9

land.lhs.true7.do.end12_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end12

if.then9:                                         ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @ctnetlink_dump_helpinfo.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 222, ptr noundef nonnull @.str.4) #16
  br label %do.end12

do.end12:                                         ; preds = %if.then9, %land.lhs.true7.do.end12_crit_edge, %land.lhs.true.do.end12_crit_edge, %rcu_read_lock.exit.do.end12_crit_edge
  %tobool14.not = icmp eq ptr %9, null
  br i1 %tobool14.not, label %do.end12.out_crit_edge, label %if.end16

do.end12.out_crit_edge:                           ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end16:                                         ; preds = %do.end12
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %10 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 32773, i32 noundef 0, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %tobool18.not68 = icmp eq ptr %11, null
  %tobool18.not = select i1 %cmp.i.i, i1 true, i1 %tobool18.not68
  br i1 %tobool18.not, label %if.end16.nla_put_failure_crit_edge, label %if.end20

if.end16.nla_put_failure_crit_edge:               ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  br label %nla_put_failure

if.end20:                                         ; preds = %if.end16
  %name = getelementptr inbounds %struct.nf_conntrack_helper, ptr %9, i32 0, i32 1
  %call.i44 = tail call i32 @strlen(ptr noundef %name) #20
  %add.i = add i32 %call.i44, 1
  %call1.i45 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef %add.i, ptr noundef %name) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i45)
  %tobool22.not = icmp eq i32 %call1.i45, 0
  br i1 %tobool22.not, label %if.end24, label %if.end20.nla_put_failure_crit_edge

if.end20.nla_put_failure_crit_edge:               ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  br label %nla_put_failure

if.end24:                                         ; preds = %if.end20
  %to_nlattr = getelementptr inbounds %struct.nf_conntrack_helper, ptr %9, i32 0, i32 9
  %12 = ptrtoint ptr %to_nlattr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %to_nlattr, align 4
  %tobool25.not = icmp eq ptr %13, null
  br i1 %tobool25.not, label %if.end24.if.end29_crit_edge, label %if.then26

if.end24.if.end29_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #18
  %call28 = tail call i32 %13(ptr noundef %skb, ptr noundef %ct) #16
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.end24.if.end29_crit_edge
  %14 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %15 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv.i, ptr %11, align 2
  br label %out

out:                                              ; preds = %if.end29, %do.end12.out_crit_edge
  %call.i46 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i46, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i49

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true.i49:                                ; preds = %out
  %call1.i47 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i47)
  %tobool.not.i48 = icmp eq i32 %call1.i47, 0
  br i1 %tobool.not.i48, label %land.lhs.true.i49.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i51

land.lhs.true.i49.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i49
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true2.i51:                               ; preds = %land.lhs.true.i49
  %.b4.i50 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i50, label %land.lhs.true2.i51.rcu_read_unlock.exit_crit_edge, label %if.then.i52

land.lhs.true2.i51.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i51
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

if.then.i52:                                      ; preds = %land.lhs.true2.i51
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 724, ptr noundef nonnull @.str.2) #16
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i52, %land.lhs.true2.i51.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i49.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !131
  br label %cleanup.sink.split

nla_put_failure:                                  ; preds = %if.end20.nla_put_failure_crit_edge, %if.end16.nla_put_failure_crit_edge
  %call.i55 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i55, label %nla_put_failure.rcu_read_unlock.exit65_crit_edge, label %land.lhs.true.i58

nla_put_failure.rcu_read_unlock.exit65_crit_edge: ; preds = %nla_put_failure
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit65

land.lhs.true.i58:                                ; preds = %nla_put_failure
  %call1.i56 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i56)
  %tobool.not.i57 = icmp eq i32 %call1.i56, 0
  br i1 %tobool.not.i57, label %land.lhs.true.i58.rcu_read_unlock.exit65_crit_edge, label %land.lhs.true2.i60

land.lhs.true.i58.rcu_read_unlock.exit65_crit_edge: ; preds = %land.lhs.true.i58
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit65

land.lhs.true2.i60:                               ; preds = %land.lhs.true.i58
  %.b4.i59 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i59, label %land.lhs.true2.i60.rcu_read_unlock.exit65_crit_edge, label %if.then.i61

land.lhs.true2.i60.rcu_read_unlock.exit65_crit_edge: ; preds = %land.lhs.true2.i60
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit65

if.then.i61:                                      ; preds = %land.lhs.true2.i60
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 724, ptr noundef nonnull @.str.2) #16
  br label %rcu_read_unlock.exit65

rcu_read_unlock.exit65:                           ; preds = %if.then.i61, %land.lhs.true2.i60.rcu_read_unlock.exit65_crit_edge, %land.lhs.true.i58.rcu_read_unlock.exit65_crit_edge, %nla_put_failure.rcu_read_unlock.exit65_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !131
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %rcu_read_unlock.exit65, %rcu_read_unlock.exit
  %retval.0.ph = phi i32 [ 0, %rcu_read_unlock.exit ], [ -1, %rcu_read_unlock.exit65 ]
  %17 = tail call i32 @llvm.read_register.i32(metadata !118) #16
  %and.i.i.i.i.i53 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i53 to ptr
  %preempt_count.i.i.i.i54 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i.i.i54 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i.i.i54, align 4
  %sub.i.i.i64 = add i32 %20, -1
  store volatile i32 %sub.i.i.i64, ptr %preempt_count.i.i.i.i54, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %nfct_help.exit.cleanup_crit_edge, %nf_ct_ext_exist.exit.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %nfct_help.exit.cleanup_crit_edge ], [ 0, %nf_ct_ext_exist.exit.i.i.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ctnetlink_dump_secctx(ptr noundef %skb, ptr nocapture noundef readonly %ct) unnamed_addr #2 align 64 {
entry:
  %len = alloca i32, align 4
  %secctx = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #16
  %0 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %len, align 4, !annotation !128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %secctx) #16
  %1 = ptrtoint ptr %secctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %secctx, align 4, !annotation !128
  %secmark = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 12
  %2 = ptrtoint ptr %secmark to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %secmark, align 4
  %call = call i32 @security_secid_to_secctx(i32 noundef %3, ptr noundef nonnull %secctx, ptr noundef nonnull %len) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 32787, i32 noundef 0, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %tobool2.not17 = icmp eq ptr %5, null
  %tobool2.not = select i1 %cmp.i.i, i1 true, i1 %tobool2.not17
  br i1 %tobool2.not, label %if.end.nla_put_failure_crit_edge, label %if.end4

if.end.nla_put_failure_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %nla_put_failure

if.end4:                                          ; preds = %if.end
  %6 = ptrtoint ptr %secctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %secctx, align 4
  %call.i = call i32 @strlen(ptr noundef %7) #20
  %add.i = add i32 %call.i, 1
  %call1.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef %add.i, ptr noundef %7) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool6.not = icmp eq i32 %call1.i, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.nla_put_failure_crit_edge

if.end4.nla_put_failure_crit_edge:                ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %nla_put_failure

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  %8 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %9 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.i, ptr %5, align 2
  br label %nla_put_failure

nla_put_failure:                                  ; preds = %if.end8, %if.end4.nla_put_failure_crit_edge, %if.end.nla_put_failure_crit_edge
  %ret.0 = phi i32 [ -1, %if.end4.nla_put_failure_crit_edge ], [ 0, %if.end8 ], [ -1, %if.end.nla_put_failure_crit_edge ]
  %11 = ptrtoint ptr %secctx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %secctx, align 4
  %13 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len, align 4
  call void @security_release_secctx(ptr noundef %12, i32 noundef %14) #16
  br label %cleanup

cleanup:                                          ; preds = %nla_put_failure, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %nla_put_failure ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %secctx) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ctnetlink_dump_labels(ptr noundef %skb, ptr nocapture noundef readonly %ct) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %ext.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 13
  %0 = ptrtoint ptr %ext.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ext.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i, label %entry.cleanup_crit_edge, label %nf_ct_ext_exist.exit.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

nf_ct_ext_exist.exit.i.i:                         ; preds = %entry
  %arrayidx.i.i.i.i = getelementptr [10 x i8], ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.i.i.not.i.i = icmp eq i8 %3, 0
  br i1 %tobool.i.i.not.i.i, label %nf_ct_ext_exist.exit.i.i.cleanup_crit_edge, label %nf_ct_labels_find.exit

nf_ct_ext_exist.exit.i.i.cleanup_crit_edge:       ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

nf_ct_labels_find.exit:                           ; preds = %nf_ct_ext_exist.exit.i.i
  %conv.i.i = zext i8 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %tobool.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not, label %nf_ct_labels_find.exit.cleanup_crit_edge, label %do.body.preheader

nf_ct_labels_find.exit.cleanup_crit_edge:         ; preds = %nf_ct_labels_find.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.body.preheader:                                ; preds = %nf_ct_labels_find.exit
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %if.end4, label %do.body.preheader.if.then1_crit_edge

do.body.preheader.if.then1_crit_edge:             ; preds = %do.body.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then1

if.then1:                                         ; preds = %if.end4.2.if.then1_crit_edge, %if.end4.1.if.then1_crit_edge, %if.end4.if.then1_crit_edge, %do.body.preheader.if.then1_crit_edge
  %call3 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 22, i32 noundef 16, ptr noundef nonnull %add.ptr.i.i) #16
  br label %cleanup

if.end4:                                          ; preds = %do.body.preheader
  %arrayidx.1 = getelementptr [4 x i32], ptr %add.ptr.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not.1 = icmp eq i32 %7, 0
  br i1 %cmp.not.1, label %if.end4.1, label %if.end4.if.then1_crit_edge

if.end4.if.then1_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then1

if.end4.1:                                        ; preds = %if.end4
  %arrayidx.2 = getelementptr [4 x i32], ptr %add.ptr.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not.2 = icmp eq i32 %9, 0
  br i1 %cmp.not.2, label %if.end4.2, label %if.end4.1.if.then1_crit_edge

if.end4.1.if.then1_crit_edge:                     ; preds = %if.end4.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then1

if.end4.2:                                        ; preds = %if.end4.1
  %arrayidx.3 = getelementptr [4 x i32], ptr %add.ptr.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not.3 = icmp eq i32 %11, 0
  br i1 %cmp.not.3, label %if.end4.2.cleanup_crit_edge, label %if.end4.2.if.then1_crit_edge

if.end4.2.if.then1_crit_edge:                     ; preds = %if.end4.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then1

if.end4.2.cleanup_crit_edge:                      ; preds = %if.end4.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cleanup:                                          ; preds = %if.end4.2.cleanup_crit_edge, %if.then1, %nf_ct_labels_find.exit.cleanup_crit_edge, %nf_ct_ext_exist.exit.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then1 ], [ 0, %nf_ct_labels_find.exit.cleanup_crit_edge ], [ 0, %nf_ct_ext_exist.exit.i.i.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end4.2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ctnetlink_dump_master(ptr noundef %skb, ptr nocapture noundef readonly %ct) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 5
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status, align 8
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %2 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 32782, i32 noundef 0, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %tobool1.not12 = icmp eq ptr %3, null
  %tobool1.not = select i1 %cmp.i.i, i1 true, i1 %tobool1.not12
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %master = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 10
  %4 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %master, align 4
  %tuple = getelementptr inbounds %struct.nf_conn, ptr %5, i32 0, i32 4, i32 0, i32 1
  %call4 = tail call fastcc i32 @ctnetlink_dump_tuples(ptr noundef %skb, ptr noundef %tuple)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.end3.cleanup_crit_edge, label %if.end6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  %6 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %7 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv.i, ptr %3, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ 0, %entry.cleanup_crit_edge ], [ -1, %if.end3.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ctnetlink_dump_ct_seq_adj(ptr noundef %skb, ptr noundef %ct) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %ext.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 13
  %0 = ptrtoint ptr %ext.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ext.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i, label %entry.cleanup_crit_edge, label %nf_ct_ext_exist.exit.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

nf_ct_ext_exist.exit.i.i:                         ; preds = %entry
  %arrayidx.i.i.i.i = getelementptr [10 x i8], ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.i.i.not.i.i = icmp eq i8 %3, 0
  br i1 %tobool.i.i.not.i.i, label %nf_ct_ext_exist.exit.i.i.cleanup_crit_edge, label %nfct_seqadj.exit

nf_ct_ext_exist.exit.i.i.cleanup_crit_edge:       ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

nfct_seqadj.exit:                                 ; preds = %nf_ct_ext_exist.exit.i.i
  %conv.i.i = zext i8 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %status = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 5
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 8
  %and = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %tobool1.not = icmp eq ptr %add.ptr.i.i, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool1.not
  br i1 %or.cond, label %nfct_seqadj.exit.cleanup_crit_edge, label %if.end

nfct_seqadj.exit.cleanup_crit_edge:               ; preds = %nfct_seqadj.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %nfct_seqadj.exit
  %lock = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #16
  %call3 = tail call fastcc i32 @dump_ct_seq_adj(ptr noundef %skb, ptr noundef nonnull %add.ptr.i.i, i32 noundef 15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call3)
  %cmp = icmp eq i32 %call3, -1
  br i1 %cmp, label %if.end.err_crit_edge, label %if.end5

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %err

if.end5:                                          ; preds = %if.end
  %arrayidx7 = getelementptr [2 x %struct.nf_ct_seqadj], ptr %add.ptr.i.i, i32 0, i32 1
  %call8 = tail call fastcc i32 @dump_ct_seq_adj(ptr noundef %skb, ptr noundef %arrayidx7, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call8)
  %cmp9 = icmp eq i32 %call8, -1
  br i1 %cmp9, label %if.end5.err_crit_edge, label %if.end5.cleanup.sink.split_crit_edge

if.end5.cleanup.sink.split_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

if.end5.err_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %err

err:                                              ; preds = %if.end5.err_crit_edge, %if.end.err_crit_edge
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %err, %if.end5.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -1, %err ], [ 0, %if.end5.cleanup.sink.split_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #16
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %nfct_seqadj.exit.cleanup_crit_edge, %nf_ct_ext_exist.exit.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %nfct_seqadj.exit.cleanup_crit_edge ], [ 0, %nf_ct_ext_exist.exit.i.i.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ctnetlink_dump_ct_synproxy(ptr noundef %skb, ptr nocapture noundef readonly %ct) unnamed_addr #2 align 64 {
entry:
  %tmp.i26 = alloca i32, align 4
  %tmp.i24 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %ext.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 13
  %0 = ptrtoint ptr %ext.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ext.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i, label %entry.cleanup_crit_edge, label %nf_ct_ext_exist.exit.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

nf_ct_ext_exist.exit.i.i:                         ; preds = %entry
  %arrayidx.i.i.i.i = getelementptr [10 x i8], ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.i.i.not.i.i = icmp eq i8 %3, 0
  br i1 %tobool.i.i.not.i.i, label %nf_ct_ext_exist.exit.i.i.cleanup_crit_edge, label %nfct_synproxy.exit

nf_ct_ext_exist.exit.i.i.cleanup_crit_edge:       ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

nfct_synproxy.exit:                               ; preds = %nf_ct_ext_exist.exit.i.i
  %conv.i.i = zext i8 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %tobool.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not, label %nfct_synproxy.exit.cleanup_crit_edge, label %if.end

nfct_synproxy.exit.cleanup_crit_edge:             ; preds = %nfct_synproxy.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %nfct_synproxy.exit
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 32792, i32 noundef 0, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %tobool2.not30 = icmp eq ptr %5, null
  %tobool2.not = select i1 %cmp.i.i, i1 true, i1 %tobool2.not30
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #16
  %8 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %lor.lhs.false, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end4
  %its = getelementptr inbounds %struct.nf_conn_synproxy, ptr %add.ptr.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %its to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %its, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i24) #16
  %11 = ptrtoint ptr %tmp.i24 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %tmp.i24, align 4
  %call.i25 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i24) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i24) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25)
  %tobool8.not = icmp eq i32 %call.i25, 0
  br i1 %tobool8.not, label %lor.lhs.false9, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %tsoff = getelementptr inbounds %struct.nf_conn_synproxy, ptr %add.ptr.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %tsoff to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tsoff, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i26) #16
  %14 = ptrtoint ptr %tmp.i26 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %tmp.i26, align 4
  %call.i27 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i26) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i26) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27)
  %tobool11.not = icmp eq i32 %call.i27, 0
  br i1 %tobool11.not, label %if.end13, label %lor.lhs.false9.cleanup_crit_edge

lor.lhs.false9.cleanup_crit_edge:                 ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end13:                                         ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #18
  %15 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %16 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv.i, ptr %5, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %lor.lhs.false9.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %nfct_synproxy.exit.cleanup_crit_edge, %nf_ct_ext_exist.exit.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end13 ], [ 0, %nfct_synproxy.exit.cleanup_crit_edge ], [ -1, %if.end4.cleanup_crit_edge ], [ -1, %lor.lhs.false.cleanup_crit_edge ], [ -1, %lor.lhs.false9.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ 0, %nf_ct_ext_exist.exit.i.i.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfnetlink_send(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfnetlink_set_err(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_secid_to_secctx(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_policy_len(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nf_ct_l4proto_find(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__nlmsg_put(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ctnetlink_dump_tuples_ip(ptr noundef %skb, ptr noundef %tuple) unnamed_addr #2 align 64 {
entry:
  %tmp.i.i6.i = alloca i32, align 4
  %tmp.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %0 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 32769, i32 noundef 0, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %tobool.not18 = icmp eq ptr %1, null
  %tobool.not = select i1 %cmp.i.i, i1 true, i1 %tobool.not18
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %l3num = getelementptr inbounds %struct.nf_conntrack_man, ptr %tuple, i32 0, i32 2
  %2 = ptrtoint ptr %l3num to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %l3num, align 2
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i16 %3, label %if.end.sw.epilog_crit_edge [
    i16 2, label %sw.bb
    i16 10, label %sw.bb2
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %5 = ptrtoint ptr %tuple to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tuple, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i.i) #16
  %7 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %tmp.i.i.i, align 4
  %call.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i.i.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

lor.lhs.false.i:                                  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  %dst.i = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %tuple, i32 0, i32 1
  %8 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dst.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i6.i) #16
  %10 = ptrtoint ptr %tmp.i.i6.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %tmp.i.i6.i, align 4
  %call.i.i7.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i.i6.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i6.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i7.i)
  %tobool3.not.i = icmp eq i32 %call.i.i7.i, 0
  %spec.select.i = select i1 %tobool3.not.i, i32 0, i32 -90
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  %call.i.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 16, ptr noundef %tuple) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i12 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i12, label %lor.lhs.false.i16, label %sw.bb2.sw.epilog_crit_edge

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

lor.lhs.false.i16:                                ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #18
  %dst.i13 = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %tuple, i32 0, i32 1
  %call.i6.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 16, ptr noundef %dst.i13) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i)
  %tobool3.not.i14 = icmp eq i32 %call.i6.i, 0
  %spec.select.i15 = select i1 %tobool3.not.i14, i32 0, i32 -90
  br label %sw.epilog

sw.epilog:                                        ; preds = %lor.lhs.false.i16, %sw.bb2.sw.epilog_crit_edge, %lor.lhs.false.i, %sw.bb.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %if.end.sw.epilog_crit_edge ], [ -90, %sw.bb.sw.epilog_crit_edge ], [ %spec.select.i, %lor.lhs.false.i ], [ -90, %sw.bb2.sw.epilog_crit_edge ], [ %spec.select.i15, %lor.lhs.false.i16 ]
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

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_read_unlock() unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %call = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b4 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 724, ptr noundef nonnull @.str.2) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !131
  %0 = tail call i32 @llvm.read_register.i32(metadata !118) #16
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map)
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_ct_get_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dump_counters(ptr noundef %skb, ptr noundef %acct, i32 noundef %dir, i32 noundef %type) unnamed_addr #2 align 64 {
entry:
  %tmp.i44 = alloca i64, align 8
  %tmp.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dir)
  %tobool.not = icmp eq i32 %dir, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %type)
  %cmp = icmp eq i32 %type, 3
  %arrayidx = getelementptr %struct.nf_conn_counter, ptr %acct, i32 %dir
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 8) #16
  %call.i = tail call i64 @generic_atomic64_xchg(ptr noundef %arrayidx, i64 noundef 0) #16
  %bytes3 = getelementptr %struct.nf_conn_counter, ptr %acct, i32 %dir, i32 1
  %call.i.i37 = tail call zeroext i1 @__kasan_check_write(ptr noundef %bytes3, i32 noundef 8) #16
  %call.i38 = tail call i64 @generic_atomic64_xchg(ptr noundef %bytes3, i64 noundef 0) #16
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i39 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx, i32 noundef 8) #16
  %call.i40 = tail call i64 @generic_atomic64_read(ptr noundef %arrayidx) #16
  %bytes9 = getelementptr %struct.nf_conn_counter, ptr %acct, i32 %dir, i32 1
  %call.i.i41 = tail call zeroext i1 @__kasan_check_read(ptr noundef %bytes9, i32 noundef 8) #16
  %call.i42 = tail call i64 @generic_atomic64_read(ptr noundef %bytes9) #16
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %pkts.0 = phi i64 [ %call.i, %if.then ], [ %call.i40, %if.else ]
  %bytes.0 = phi i64 [ %call.i38, %if.then ], [ %call.i42, %if.else ]
  %or.i = select i1 %tobool.not, i32 32777, i32 32778
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %0 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef %or.i, i32 noundef 0, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %tobool12.not46 = icmp eq ptr %1, null
  %tobool12.not = select i1 %cmp.i.i, i1 true, i1 %tobool12.not46
  br i1 %tobool12.not, label %if.end.cleanup_crit_edge, label %if.end14

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end14:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i) #16
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %pkts.0, ptr %tmp.i, align 8
  %call.i43 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 1, i32 noundef 8, ptr noundef nonnull %tmp.i, i32 noundef 5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43)
  %tobool16.not = icmp eq i32 %call.i43, 0
  br i1 %tobool16.not, label %lor.lhs.false, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i44) #16
  %3 = ptrtoint ptr %tmp.i44 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %bytes.0, ptr %tmp.i44, align 8
  %call.i45 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 2, i32 noundef 8, ptr noundef nonnull %tmp.i44, i32 noundef 5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i44) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i45)
  %tobool18.not = icmp eq i32 %call.i45, 0
  br i1 %tobool18.not, label %if.end20, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end20:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  %4 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv.i, ptr %1, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %lor.lhs.false.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end20 ], [ -1, %if.end14.cleanup_crit_edge ], [ -1, %lor.lhs.false.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_xchg(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put_64bit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nla_put_string(ptr noundef %skb, i32 noundef %attrtype, ptr noundef %str) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %call = tail call i32 @strlen(ptr noundef %str) #21
  %add = add i32 %call, 1
  %call1 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef %attrtype, i32 noundef %add, ptr noundef %str) #16
  ret i32 %call1
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_release_secctx(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dump_ct_seq_adj(ptr noundef %skb, ptr nocapture noundef readonly %seq, i32 noundef %type) unnamed_addr #2 align 64 {
entry:
  %tmp.i20 = alloca i32, align 4
  %tmp.i18 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %or.i = or i32 %type, 32768
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %0 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef %or.i, i32 noundef 0, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %tobool.not22 = icmp eq ptr %1, null
  %tobool.not = select i1 %cmp.i.i, i1 true, i1 %tobool.not22
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %seq, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #16
  %4 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %offset_before = getelementptr inbounds %struct.nf_ct_seqadj, ptr %seq, i32 0, i32 1
  %5 = ptrtoint ptr %offset_before to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %offset_before, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i18) #16
  %7 = ptrtoint ptr %tmp.i18 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %tmp.i18, align 4
  %call.i19 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i18) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i18) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19)
  %tobool4.not = icmp eq i32 %call.i19, 0
  br i1 %tobool4.not, label %lor.lhs.false5, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %offset_after = getelementptr inbounds %struct.nf_ct_seqadj, ptr %seq, i32 0, i32 2
  %8 = ptrtoint ptr %offset_after to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offset_after, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i20) #16
  %10 = ptrtoint ptr %tmp.i20 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %tmp.i20, align 4
  %call.i21 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i20) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i20) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21)
  %tobool7.not = icmp eq i32 %call.i21, 0
  br i1 %tobool7.not, label %if.end9, label %lor.lhs.false5.cleanup_crit_edge

lor.lhs.false5.cleanup_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #18
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

cleanup:                                          ; preds = %if.end9, %lor.lhs.false5.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ -1, %if.end.cleanup_crit_edge ], [ -1, %lor.lhs.false.cleanup_crit_edge ], [ -1, %lor.lhs.false5.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ctnetlink_exp_dump_expect(ptr noundef %skb, ptr noundef %exp) unnamed_addr #2 align 64 {
entry:
  %tmp.i178 = alloca i32, align 4
  %tmp.i176 = alloca i32, align 4
  %tmp.i174 = alloca i32, align 4
  %tmp.i172 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  %tmp.i.i.i = alloca i8, align 1
  %m.i = alloca %struct.nf_conntrack_tuple, align 4
  %nat_tuple = alloca %struct.nf_conntrack_tuple, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %master1 = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 6
  %0 = ptrtoint ptr %master1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master1, align 4
  %expires = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %expires to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %expires, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %3, %4
  %div = sdiv i32 %sub, 100
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %nat_tuple) #16
  %5 = call ptr @memset(ptr %nat_tuple, i32 0, i32 40)
  %6 = tail call i32 @llvm.smax.i32(i32 %div, i32 0)
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %7 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tail.i.i.i.i, align 8
  %call1.i.i.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 32770, i32 noundef 0, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call1.i.i.i, 0
  %tobool.not8.i = icmp eq ptr %8, null
  %tobool.not.i = select i1 %cmp.i.i.i, i1 true, i1 %tobool.not8.i
  br i1 %tobool.not.i, label %entry.nla_put_failure_crit_edge, label %if.end.i

entry.nla_put_failure_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %nla_put_failure

if.end.i:                                         ; preds = %entry
  %tuple = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 2
  %call1.i = tail call fastcc i32 @ctnetlink_dump_tuples(ptr noundef %skb, ptr noundef %tuple) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %if.end.i.nla_put_failure_crit_edge, label %if.end5

if.end.i.nla_put_failure_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nla_put_failure

if.end5:                                          ; preds = %if.end.i
  %9 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tail.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %10 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %8 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv.i.i, ptr %8, align 2
  %mask = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %m.i) #16
  %12 = getelementptr inbounds i8, ptr %m.i, i32 20
  %13 = call ptr @memset(ptr %12, i32 255, i32 20)
  %14 = call ptr @memcpy(ptr %m.i, ptr %mask, i32 16)
  %u.i = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 3, i32 0, i32 1
  %15 = ptrtoint ptr %u.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %u.i, align 4
  %u5.i = getelementptr inbounds %struct.nf_conntrack_man, ptr %m.i, i32 0, i32 1
  %17 = ptrtoint ptr %u5.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %u5.i, align 4
  %l3num.i = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 2, i32 0, i32 2
  %18 = ptrtoint ptr %l3num.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %l3num.i, align 2
  %l3num8.i = getelementptr inbounds %struct.nf_conntrack_man, ptr %m.i, i32 0, i32 2
  %20 = ptrtoint ptr %l3num8.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %l3num8.i, align 2
  %protonum.i = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 2, i32 1, i32 2
  %21 = ptrtoint ptr %protonum.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %protonum.i, align 2
  %protonum10.i = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %m.i, i32 0, i32 1, i32 2
  %23 = ptrtoint ptr %protonum10.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %protonum10.i, align 2
  %24 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tail.i.i.i.i, align 8
  %call1.i.i.i128 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 32771, i32 noundef 0, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i128)
  %cmp.i.i.i129 = icmp slt i32 %call1.i.i.i128, 0
  %tobool.not45.i = icmp eq ptr %25, null
  %tobool.not.i130 = select i1 %cmp.i.i.i129, i1 true, i1 %tobool.not45.i
  br i1 %tobool.not.i130, label %if.end5.ctnetlink_exp_dump_mask.exit.thread_crit_edge, label %if.end.i131

if.end5.ctnetlink_exp_dump_mask.exit.thread_crit_edge: ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %ctnetlink_exp_dump_mask.exit.thread

if.end.i131:                                      ; preds = %if.end5
  %26 = tail call i32 @llvm.read_register.i32(metadata !118) #16
  %and.i.i.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %29, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !130
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i.i, label %if.end.i131.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.i131.rcu_read_lock.exit.i_crit_edge:       ; preds = %if.end.i131
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i131
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 696, ptr noundef nonnull @.str.1) #16
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end.i131.rcu_read_lock.exit.i_crit_edge
  %call11.i = call fastcc i32 @ctnetlink_dump_tuples_ip(ptr noundef %skb, ptr noundef nonnull %m.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call11.i)
  %cmp.i132 = icmp sgt i32 %call11.i, -1
  br i1 %cmp.i132, label %if.then12.i, label %rcu_read_lock.exit.i.if.end17.i_crit_edge

rcu_read_lock.exit.i.if.end17.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end17.i

if.then12.i:                                      ; preds = %rcu_read_lock.exit.i
  %30 = ptrtoint ptr %protonum.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %protonum.i, align 2
  %call15.i = call ptr @nf_ct_l4proto_find(i8 noundef zeroext %31) #16
  %32 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tail.i.i.i.i, align 8
  %call1.i.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 32770, i32 noundef 0, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %call1.i.i.i.i, 0
  %tobool.not20.i.i = icmp eq ptr %33, null
  %tobool.not.i35.i = select i1 %cmp.i.i.i.i, i1 true, i1 %tobool.not20.i.i
  br i1 %tobool.not.i35.i, label %if.then12.i.if.end17.i_crit_edge, label %if.end.i.i

if.then12.i.if.end17.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end17.i

if.end.i.i:                                       ; preds = %if.then12.i
  %34 = ptrtoint ptr %protonum10.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %protonum10.i, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i.i.i) #16
  %36 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %tmp.i.i.i, align 1
  %call.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %tmp.i.i.i) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool2.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end4.i.i, label %if.end.i.i.if.end17.i_crit_edge

if.end.i.i.if.end17.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end17.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  %tuple_to_nlattr.i.i = getelementptr inbounds %struct.nf_conntrack_l4proto, ptr %call15.i, i32 0, i32 6
  %37 = ptrtoint ptr %tuple_to_nlattr.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tuple_to_nlattr.i.i, align 4
  %tobool5.not.i.i = icmp eq ptr %38, null
  br i1 %tobool5.not.i.i, label %if.end4.i.i.if.end11.i.i_crit_edge, label %if.then8.i.i, !prof !129

if.end4.i.i.if.end11.i.i_crit_edge:               ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11.i.i

if.then8.i.i:                                     ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call10.i.i = call i32 %38(ptr noundef %skb, ptr noundef nonnull %m.i) #16
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %if.then8.i.i, %if.end4.i.i.if.end11.i.i_crit_edge
  %ret.0.i.i = phi i32 [ %call10.i.i, %if.then8.i.i ], [ 0, %if.end4.i.i.if.end11.i.i_crit_edge ]
  %39 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tail.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %40 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %33 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %conv.i.i.i = trunc i32 %sub.ptr.sub.i.i.i to i16
  %41 = ptrtoint ptr %33 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv.i.i.i, ptr %33, align 2
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.end11.i.i, %if.end.i.i.if.end17.i_crit_edge, %if.then12.i.if.end17.i_crit_edge, %rcu_read_lock.exit.i.if.end17.i_crit_edge
  %ret.0.i = phi i32 [ %call11.i, %rcu_read_lock.exit.i.if.end17.i_crit_edge ], [ %ret.0.i.i, %if.end11.i.i ], [ -1, %if.end.i.i.if.end17.i_crit_edge ], [ -1, %if.then12.i.if.end17.i_crit_edge ]
  %call.i36.i = call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i36.i, label %if.end17.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i39.i

if.end17.i.rcu_read_unlock.exit.i_crit_edge:      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit.i

land.lhs.true.i39.i:                              ; preds = %if.end17.i
  %call1.i37.i = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i37.i)
  %tobool.not.i38.i = icmp eq i32 %call1.i37.i, 0
  br i1 %tobool.not.i38.i, label %land.lhs.true.i39.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i41.i

land.lhs.true.i39.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i39.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i41.i:                             ; preds = %land.lhs.true.i39.i
  %.b4.i40.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i40.i, label %land.lhs.true2.i41.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i42.i

land.lhs.true2.i41.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i41.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit.i

if.then.i42.i:                                    ; preds = %land.lhs.true2.i41.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 724, ptr noundef nonnull @.str.2) #16
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i42.i, %land.lhs.true2.i41.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i39.i.rcu_read_unlock.exit.i_crit_edge, %if.end17.i.rcu_read_unlock.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !131
  %42 = call i32 @llvm.read_register.i32(metadata !118) #16
  %and.i.i.i.i.i43.i = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i.i.i43.i to ptr
  %preempt_count.i.i.i.i44.i = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %preempt_count.i.i.i.i44.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %preempt_count.i.i.i.i44.i, align 4
  %sub.i.i.i.i = add i32 %45, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i44.i, align 4
  call void @rcu_read_unlock_strict() #16
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp18.i = icmp slt i32 %ret.0.i, 0
  br i1 %cmp18.i, label %rcu_read_unlock.exit.i.ctnetlink_exp_dump_mask.exit.thread_crit_edge, label %if.end10, !prof !129

rcu_read_unlock.exit.i.ctnetlink_exp_dump_mask.exit.thread_crit_edge: ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ctnetlink_exp_dump_mask.exit.thread

ctnetlink_exp_dump_mask.exit.thread:              ; preds = %rcu_read_unlock.exit.i.ctnetlink_exp_dump_mask.exit.thread_crit_edge, %if.end5.ctnetlink_exp_dump_mask.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %m.i) #16
  br label %nla_put_failure

if.end10:                                         ; preds = %rcu_read_unlock.exit.i
  %46 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %tail.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i133 = ptrtoint ptr %47 to i32
  %sub.ptr.rhs.cast.i.i134 = ptrtoint ptr %25 to i32
  %sub.ptr.sub.i.i135 = sub i32 %sub.ptr.lhs.cast.i.i133, %sub.ptr.rhs.cast.i.i134
  %conv.i.i136 = trunc i32 %sub.ptr.sub.i.i135 to i16
  %48 = ptrtoint ptr %25 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv.i.i136, ptr %25, align 2
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %m.i) #16
  %49 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %tail.i.i.i.i, align 8
  %call1.i.i.i139 = call i32 @nla_put(ptr noundef %skb, i32 noundef 32769, i32 noundef 0, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i139)
  %cmp.i.i.i140 = icmp slt i32 %call1.i.i.i139, 0
  %tobool.not8.i141 = icmp eq ptr %50, null
  %tobool.not.i142 = select i1 %cmp.i.i.i140, i1 true, i1 %tobool.not8.i141
  br i1 %tobool.not.i142, label %if.end10.nla_put_failure_crit_edge, label %if.end.i145

if.end10.nla_put_failure_crit_edge:               ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %nla_put_failure

if.end.i145:                                      ; preds = %if.end10
  %tuple11 = getelementptr inbounds %struct.nf_conn, ptr %1, i32 0, i32 4, i32 0, i32 1
  %call1.i143 = call fastcc i32 @ctnetlink_dump_tuples(ptr noundef %skb, ptr noundef %tuple11) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i143)
  %cmp.i144 = icmp slt i32 %call1.i143, 0
  br i1 %cmp.i144, label %if.end.i145.nla_put_failure_crit_edge, label %if.end15

if.end.i145.nla_put_failure_crit_edge:            ; preds = %if.end.i145
  call void @__sanitizer_cov_trace_pc() #18
  br label %nla_put_failure

if.end15:                                         ; preds = %if.end.i145
  %51 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %tail.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i146 = ptrtoint ptr %52 to i32
  %sub.ptr.rhs.cast.i.i147 = ptrtoint ptr %50 to i32
  %sub.ptr.sub.i.i148 = sub i32 %sub.ptr.lhs.cast.i.i146, %sub.ptr.rhs.cast.i.i147
  %conv.i.i149 = trunc i32 %sub.ptr.sub.i.i148 to i16
  %53 = ptrtoint ptr %50 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %conv.i.i149, ptr %50, align 2
  %saved_addr = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 11
  %54 = ptrtoint ptr %saved_addr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %saved_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp.i153 = icmp eq i32 %55, 0
  br i1 %cmp.i153, label %land.lhs.true.i, label %if.end15.if.then18_crit_edge

if.end15.if.then18_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then18

land.lhs.true.i:                                  ; preds = %if.end15
  %arrayidx2.i = getelementptr %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 11, i32 0, i32 1
  %56 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp4.i = icmp eq i32 %57, 0
  br i1 %cmp4.i, label %land.lhs.true5.i, label %land.lhs.true.i.if.then18_crit_edge

land.lhs.true.i.if.then18_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then18

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %arrayidx6.i = getelementptr %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 11, i32 0, i32 2
  %58 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp8.i = icmp eq i32 %59, 0
  br i1 %cmp8.i, label %nf_inet_addr_cmp.exit, label %land.lhs.true5.i.if.then18_crit_edge

land.lhs.true5.i.if.then18_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then18

nf_inet_addr_cmp.exit:                            ; preds = %land.lhs.true5.i
  %arrayidx9.i = getelementptr %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 11, i32 0, i32 3
  %60 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp11.i.not = icmp eq i32 %61, 0
  br i1 %cmp11.i.not, label %lor.lhs.false, label %nf_inet_addr_cmp.exit.if.then18_crit_edge

nf_inet_addr_cmp.exit.if.then18_crit_edge:        ; preds = %nf_inet_addr_cmp.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then18

lor.lhs.false:                                    ; preds = %nf_inet_addr_cmp.exit
  %saved_proto = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 12
  %62 = ptrtoint ptr %saved_proto to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %saved_proto, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %tobool17.not = icmp eq i16 %63, 0
  br i1 %tobool17.not, label %lor.lhs.false.if.end39_crit_edge, label %lor.lhs.false.if.then18_crit_edge

lor.lhs.false.if.then18_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then18

lor.lhs.false.if.end39_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end39

if.then18:                                        ; preds = %lor.lhs.false.if.then18_crit_edge, %nf_inet_addr_cmp.exit.if.then18_crit_edge, %land.lhs.true5.i.if.then18_crit_edge, %land.lhs.true.i.if.then18_crit_edge, %if.end15.if.then18_crit_edge
  %64 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %tail.i.i.i.i, align 8
  %call1.i.i154 = call i32 @nla_put(ptr noundef %skb, i32 noundef 32778, i32 noundef 0, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i154)
  %cmp.i.i = icmp slt i32 %call1.i.i154, 0
  %tobool20.not195 = icmp eq ptr %65, null
  %tobool20.not = select i1 %cmp.i.i, i1 true, i1 %tobool20.not195
  br i1 %tobool20.not, label %if.then18.nla_put_failure_crit_edge, label %if.end22

if.then18.nla_put_failure_crit_edge:              ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #18
  br label %nla_put_failure

if.end22:                                         ; preds = %if.then18
  %dir = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 13
  %66 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %dir, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #16
  %68 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool24.not = icmp eq i32 %call.i, 0
  br i1 %tobool24.not, label %if.end26, label %if.end22.nla_put_failure_crit_edge

if.end22.nla_put_failure_crit_edge:               ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #18
  br label %nla_put_failure

if.end26:                                         ; preds = %if.end22
  %l3num.i155 = getelementptr inbounds %struct.nf_conn, ptr %1, i32 0, i32 4, i32 0, i32 1, i32 0, i32 2
  %69 = ptrtoint ptr %l3num.i155 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %l3num.i155, align 2
  %l3num = getelementptr inbounds %struct.nf_conntrack_man, ptr %nat_tuple, i32 0, i32 2
  %71 = ptrtoint ptr %l3num to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %70, ptr %l3num, align 2
  %72 = call ptr @memcpy(ptr %nat_tuple, ptr %saved_addr, i32 16)
  %protonum.i156 = getelementptr inbounds %struct.nf_conn, ptr %1, i32 0, i32 4, i32 0, i32 1, i32 1, i32 2
  %73 = ptrtoint ptr %protonum.i156 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %protonum.i156, align 2
  %protonum = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %nat_tuple, i32 0, i32 1, i32 2
  %75 = ptrtoint ptr %protonum to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %74, ptr %protonum, align 2
  %u = getelementptr inbounds %struct.nf_conntrack_man, ptr %nat_tuple, i32 0, i32 1
  %saved_proto32 = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 12
  %76 = ptrtoint ptr %saved_proto32 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %saved_proto32, align 4
  %78 = ptrtoint ptr %u to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %77, ptr %u, align 4
  %79 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %tail.i.i.i.i, align 8
  %call1.i.i.i158 = call i32 @nla_put(ptr noundef %skb, i32 noundef 32770, i32 noundef 0, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i158)
  %cmp.i.i.i159 = icmp slt i32 %call1.i.i.i158, 0
  %tobool.not8.i160 = icmp eq ptr %80, null
  %tobool.not.i161 = select i1 %cmp.i.i.i159, i1 true, i1 %tobool.not8.i160
  br i1 %tobool.not.i161, label %if.end26.nla_put_failure_crit_edge, label %if.end.i164

if.end26.nla_put_failure_crit_edge:               ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #18
  br label %nla_put_failure

if.end.i164:                                      ; preds = %if.end26
  %call1.i162 = call fastcc i32 @ctnetlink_dump_tuples(ptr noundef %skb, ptr noundef nonnull %nat_tuple) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i162)
  %cmp.i163 = icmp slt i32 %call1.i162, 0
  br i1 %cmp.i163, label %if.end.i164.nla_put_failure_crit_edge, label %if.end37

if.end.i164.nla_put_failure_crit_edge:            ; preds = %if.end.i164
  call void @__sanitizer_cov_trace_pc() #18
  br label %nla_put_failure

if.end37:                                         ; preds = %if.end.i164
  call void @__sanitizer_cov_trace_pc() #18
  %81 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %tail.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i165 = ptrtoint ptr %82 to i32
  %sub.ptr.rhs.cast.i.i166 = ptrtoint ptr %80 to i32
  %sub.ptr.sub.i.i167 = sub i32 %sub.ptr.lhs.cast.i.i165, %sub.ptr.rhs.cast.i.i166
  %conv.i.i168 = trunc i32 %sub.ptr.sub.i.i167 to i16
  %83 = ptrtoint ptr %80 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %conv.i.i168, ptr %80, align 2
  %84 = load ptr, ptr %tail.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %84 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %65 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %85 = ptrtoint ptr %65 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %conv.i, ptr %65, align 2
  br label %if.end39

if.end39:                                         ; preds = %if.end37, %lor.lhs.false.if.end39_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i172) #16
  %86 = ptrtoint ptr %tmp.i172 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %6, ptr %tmp.i172, align 4
  %call.i173 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i172) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i172) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i173)
  %tobool41.not = icmp eq i32 %call.i173, 0
  br i1 %tobool41.not, label %lor.lhs.false42, label %if.end39.nla_put_failure_crit_edge

if.end39.nla_put_failure_crit_edge:               ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #18
  br label %nla_put_failure

lor.lhs.false42:                                  ; preds = %if.end39
  %call43 = call fastcc i32 @nf_expect_get_id(ptr noundef %exp)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i174) #16
  %87 = ptrtoint ptr %tmp.i174 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %call43, ptr %tmp.i174, align 4
  %call.i175 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %tmp.i174) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i174) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i175)
  %tobool45.not = icmp eq i32 %call.i175, 0
  br i1 %tobool45.not, label %lor.lhs.false46, label %lor.lhs.false42.nla_put_failure_crit_edge

lor.lhs.false42.nla_put_failure_crit_edge:        ; preds = %lor.lhs.false42
  call void @__sanitizer_cov_trace_pc() #18
  br label %nla_put_failure

lor.lhs.false46:                                  ; preds = %lor.lhs.false42
  %flags = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 9
  %88 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %flags, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i176) #16
  %90 = ptrtoint ptr %tmp.i176 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %tmp.i176, align 4
  %call.i177 = call i32 @nla_put(ptr noundef %skb, i32 noundef 8, i32 noundef 4, ptr noundef nonnull %tmp.i176) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i176) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i177)
  %tobool48.not = icmp eq i32 %call.i177, 0
  br i1 %tobool48.not, label %lor.lhs.false49, label %lor.lhs.false46.nla_put_failure_crit_edge

lor.lhs.false46.nla_put_failure_crit_edge:        ; preds = %lor.lhs.false46
  call void @__sanitizer_cov_trace_pc() #18
  br label %nla_put_failure

lor.lhs.false49:                                  ; preds = %lor.lhs.false46
  %class = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 10
  %91 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %class, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i178) #16
  %93 = ptrtoint ptr %tmp.i178 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %tmp.i178, align 4
  %call.i179 = call i32 @nla_put(ptr noundef %skb, i32 noundef 9, i32 noundef 4, ptr noundef nonnull %tmp.i178) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i178) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i179)
  %tobool51.not = icmp eq i32 %call.i179, 0
  br i1 %tobool51.not, label %if.end53, label %lor.lhs.false49.nla_put_failure_crit_edge

lor.lhs.false49.nla_put_failure_crit_edge:        ; preds = %lor.lhs.false49
  call void @__sanitizer_cov_trace_pc() #18
  br label %nla_put_failure

if.end53:                                         ; preds = %lor.lhs.false49
  %ext.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %1, i32 0, i32 13
  %94 = ptrtoint ptr %ext.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %ext.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %95, null
  br i1 %tobool.not.i.i.i, label %if.end53.if.end76_crit_edge, label %nf_ct_ext_exist.exit.i.i

if.end53.if.end76_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end76

nf_ct_ext_exist.exit.i.i:                         ; preds = %if.end53
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %95, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool.i.i.not.i.i = icmp eq i8 %97, 0
  br i1 %tobool.i.i.not.i.i, label %nf_ct_ext_exist.exit.i.i.if.end76_crit_edge, label %nfct_help.exit

nf_ct_ext_exist.exit.i.i.if.end76_crit_edge:      ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end76

nfct_help.exit:                                   ; preds = %nf_ct_ext_exist.exit.i.i
  %conv.i.i180 = zext i8 %97 to i32
  %add.ptr.i.i = getelementptr i8, ptr %95, i32 %conv.i.i180
  %tobool55.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool55.not, label %nfct_help.exit.if.end76_crit_edge, label %if.then56

nfct_help.exit.if.end76_crit_edge:                ; preds = %nfct_help.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end76

if.then56:                                        ; preds = %nfct_help.exit
  %98 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile ptr, ptr %add.ptr.i.i, align 8
  %call59 = call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then56.do.end68_crit_edge

if.then56.do.end68_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then56
  %call61 = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b125 = load i1, ptr @ctnetlink_exp_dump_expect.__warned, align 1
  br i1 %.b125, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @ctnetlink_exp_dump_expect.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 3072, ptr noundef nonnull @.str.4) #16
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then56.do.end68_crit_edge
  %tobool70.not = icmp eq ptr %99, null
  br i1 %tobool70.not, label %do.end68.if.end76_crit_edge, label %land.lhs.true71

do.end68.if.end76_crit_edge:                      ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end76

land.lhs.true71:                                  ; preds = %do.end68
  %name = getelementptr inbounds %struct.nf_conntrack_helper, ptr %99, i32 0, i32 1
  %call72 = call fastcc i32 @nla_put_string(ptr noundef %skb, i32 noundef 6, ptr noundef %name)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %land.lhs.true71.if.end76_crit_edge, label %land.lhs.true71.nla_put_failure_crit_edge

land.lhs.true71.nla_put_failure_crit_edge:        ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #18
  br label %nla_put_failure

land.lhs.true71.if.end76_crit_edge:               ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end76

if.end76:                                         ; preds = %land.lhs.true71.if.end76_crit_edge, %do.end68.if.end76_crit_edge, %nfct_help.exit.if.end76_crit_edge, %nf_ct_ext_exist.exit.i.i.if.end76_crit_edge, %if.end53.if.end76_crit_edge
  %expectfn = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 4
  %100 = ptrtoint ptr %expectfn to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %expectfn, align 4
  %call77 = call ptr @nf_ct_helper_expectfn_find_by_symbol(ptr noundef %101) #16
  %cmp78.not = icmp eq ptr %call77, null
  br i1 %cmp78.not, label %if.end76.cleanup86_crit_edge, label %land.lhs.true80

if.end76.cleanup86_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup86

land.lhs.true80:                                  ; preds = %if.end76
  %name81 = getelementptr inbounds %struct.nf_ct_helper_expectfn, ptr %call77, i32 0, i32 1
  %102 = ptrtoint ptr %name81 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %name81, align 4
  %call82 = call fastcc i32 @nla_put_string(ptr noundef %skb, i32 noundef 11, ptr noundef %103)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %land.lhs.true80.cleanup86_crit_edge, label %land.lhs.true80.nla_put_failure_crit_edge

land.lhs.true80.nla_put_failure_crit_edge:        ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #18
  br label %nla_put_failure

land.lhs.true80.cleanup86_crit_edge:              ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup86

nla_put_failure:                                  ; preds = %land.lhs.true80.nla_put_failure_crit_edge, %land.lhs.true71.nla_put_failure_crit_edge, %lor.lhs.false49.nla_put_failure_crit_edge, %lor.lhs.false46.nla_put_failure_crit_edge, %lor.lhs.false42.nla_put_failure_crit_edge, %if.end39.nla_put_failure_crit_edge, %if.end.i164.nla_put_failure_crit_edge, %if.end26.nla_put_failure_crit_edge, %if.end22.nla_put_failure_crit_edge, %if.then18.nla_put_failure_crit_edge, %if.end.i145.nla_put_failure_crit_edge, %if.end10.nla_put_failure_crit_edge, %ctnetlink_exp_dump_mask.exit.thread, %if.end.i.nla_put_failure_crit_edge, %entry.nla_put_failure_crit_edge
  br label %cleanup86

cleanup86:                                        ; preds = %nla_put_failure, %land.lhs.true80.cleanup86_crit_edge, %if.end76.cleanup86_crit_edge
  %retval.0 = phi i32 [ -1, %nla_put_failure ], [ 0, %land.lhs.true80.cleanup86_crit_edge ], [ 0, %if.end76.cleanup86_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %nat_tuple) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nf_expect_get_id(ptr noundef %exp) unnamed_addr #2 align 64 {
entry:
  %___flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09b ${1:l}\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @nf_expect_get_id.___once_key, ptr blockaddress(@nf_expect_get_id, %if.then)) #16
          to label %if.end13 [label %if.then], !srcloc !132

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %___flags) #16
  %0 = ptrtoint ptr %___flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %___flags, align 4, !annotation !128
  %call3 = call zeroext i1 @__do_once_start(ptr noundef nonnull @nf_expect_get_id.___done, ptr noundef nonnull %___flags) #16
  br i1 %call3, label %if.then12, label %if.then.if.end_crit_edge, !prof !129

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then12:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  call void @get_random_bytes(ptr noundef nonnull @nf_expect_get_id.exp_id_seed, i32 noundef 16) #16
  call void @__do_once_done(ptr noundef nonnull @nf_expect_get_id.___done, ptr noundef nonnull @nf_expect_get_id.___once_key, ptr noundef nonnull %___flags, ptr noundef null) #16
  br label %if.end

if.end:                                           ; preds = %if.then12, %if.then.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %___flags) #16
  br label %if.end13

if.end13:                                         ; preds = %if.end, %entry
  %1 = ptrtoint ptr %exp to i32
  %helper = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 5
  %2 = ptrtoint ptr %helper to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %helper, align 4
  %4 = ptrtoint ptr %3 to i32
  %master = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 6
  %5 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %master, align 4
  %7 = ptrtoint ptr %6 to i32
  %tuple = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 2
  %call.i = call i64 @__siphash_unaligned(ptr noundef %tuple, i32 noundef 40, ptr noundef nonnull @nf_expect_get_id.exp_id_seed) #16
  %conv.i = zext i32 %4 to i64
  %shl.i = shl nuw i64 %conv.i, 32
  %conv1.i = zext i32 %1 to i64
  %or.i = or i64 %shl.i, %conv1.i
  %conv2.i = shl i64 %call.i, 32
  %conv4.i = zext i32 %7 to i64
  %or5.i = or i64 %conv2.i, %conv4.i
  %call.i25 = call i64 @siphash_2u64(i64 noundef %or.i, i64 noundef %or5.i, ptr noundef nonnull @nf_expect_get_id.exp_id_seed) #16
  %conv20 = trunc i64 %call.i25 to i32
  ret i32 %conv20
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nf_ct_helper_expectfn_find_by_symbol(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__do_once_start(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__do_once_done(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__siphash_unaligned(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @siphash_2u64(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_conntrack_unregister_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ctnetlink_new_expect(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %cda) #2 align 64 {
entry:
  %tuple.i = alloca %struct.nf_conntrack_tuple, align 4
  %mask.i = alloca %struct.nf_conntrack_tuple, align 4
  %master_tuple.i = alloca %struct.nf_conntrack_tuple, align 4
  %tuple = alloca %struct.nf_conntrack_tuple, align 4
  %zone = alloca %struct.nf_conntrack_zone, align 2
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %nfmsg = getelementptr inbounds %struct.nfnl_info, ptr %info, i32 0, i32 3
  %0 = ptrtoint ptr %nfmsg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nfmsg, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 2
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %tuple) #16
  %4 = call ptr @memset(ptr %tuple, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %zone) #16
  %5 = getelementptr inbounds %struct.nf_conntrack_zone, ptr %zone, i32 0, i32 1
  %6 = getelementptr inbounds %struct.nf_conntrack_zone, ptr %zone, i32 0, i32 2
  %arrayidx = getelementptr ptr, ptr %cda, i32 2
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx1 = getelementptr ptr, ptr %cda, i32 3
  %9 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx1, align 4
  %tobool2.not = icmp eq ptr %10, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %arrayidx4 = getelementptr ptr, ptr %cda, i32 1
  %11 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx4, align 4
  %tobool5.not = icmp eq ptr %12, null
  br i1 %tobool5.not, label %lor.lhs.false3.cleanup_crit_edge, label %if.end

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  %arrayidx6 = getelementptr ptr, ptr %cda, i32 7
  %13 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx6, align 4
  %15 = ptrtoint ptr %zone to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %zone, align 2
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %5, align 2
  %17 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 3, ptr %6, align 1
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.end.ctnetlink_parse_zone.exit_crit_edge, label %if.then.i

if.end.ctnetlink_parse_zone.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %ctnetlink_parse_zone.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i.i.i = getelementptr i8, ptr %14, i32 4
  %18 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %add.ptr.i.i.i, align 2
  %20 = ptrtoint ptr %zone to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %zone, align 2
  br label %ctnetlink_parse_zone.exit

ctnetlink_parse_zone.exit:                        ; preds = %if.then.i, %if.end.ctnetlink_parse_zone.exit_crit_edge
  %call.i = call fastcc i32 @ctnetlink_parse_tuple_filter(ptr noundef %cda, ptr noundef nonnull %tuple, i32 noundef 2, i8 noundef zeroext %3, ptr noundef null, i32 noundef 4095) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp10 = icmp slt i32 %call.i, 0
  br i1 %cmp10, label %ctnetlink_parse_zone.exit.cleanup_crit_edge, label %if.end12

ctnetlink_parse_zone.exit.cleanup_crit_edge:      ; preds = %ctnetlink_parse_zone.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end12:                                         ; preds = %ctnetlink_parse_zone.exit
  call void @_raw_spin_lock_bh(ptr noundef nonnull @nf_conntrack_expect_lock) #16
  %21 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %info, align 4
  %call13 = call ptr @__nf_ct_expect_find(ptr noundef %22, ptr noundef nonnull %zone, ptr noundef nonnull %tuple) #16
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.then15, label %if.end23

if.then15:                                        ; preds = %if.end12
  call void @_raw_spin_unlock_bh(ptr noundef nonnull @nf_conntrack_expect_lock) #16
  %nlh = getelementptr inbounds %struct.nfnl_info, ptr %info, i32 0, i32 2
  %23 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %nlh, align 4
  %nlmsg_flags = getelementptr inbounds %struct.nlmsghdr, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %nlmsg_flags to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %nlmsg_flags, align 2
  %27 = and i16 %26, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool16.not = icmp eq i16 %27, 0
  br i1 %tobool16.not, label %if.then15.cleanup_crit_edge, label %if.then17

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then17:                                        ; preds = %if.then15
  %28 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %info, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %30 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %portid, align 4
  %tobool.not.i54 = icmp eq ptr %24, null
  %32 = lshr i16 %26, 3
  %.lobit.i = and i16 %32, 1
  %33 = zext i16 %.lobit.i to i32
  %cond.i = select i1 %tobool.not.i54, i32 0, i32 %33
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %tuple.i) #16
  %34 = call ptr @memset(ptr %tuple.i, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %mask.i) #16
  %35 = call ptr @memset(ptr %mask.i, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %master_tuple.i) #16
  %36 = call ptr @memset(ptr %master_tuple.i, i32 255, i32 40)
  %call.i86.i = call fastcc i32 @ctnetlink_parse_tuple_filter(ptr noundef %cda, ptr noundef nonnull %tuple.i, i32 noundef 2, i8 noundef zeroext %3, ptr noundef null, i32 noundef 4095) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i86.i)
  %cmp.i = icmp slt i32 %call.i86.i, 0
  br i1 %cmp.i, label %if.then17.ctnetlink_create_expect.exit_crit_edge, label %if.end.i

if.then17.ctnetlink_create_expect.exit_crit_edge: ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #18
  br label %ctnetlink_create_expect.exit

if.end.i:                                         ; preds = %if.then17
  %call.i87.i = call fastcc i32 @ctnetlink_parse_tuple_filter(ptr noundef %cda, ptr noundef nonnull %mask.i, i32 noundef 3, i8 noundef zeroext %3, ptr noundef null, i32 noundef 4095) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i87.i)
  %cmp2.i = icmp slt i32 %call.i87.i, 0
  br i1 %cmp2.i, label %if.end.i.ctnetlink_create_expect.exit_crit_edge, label %if.end4.i

if.end.i.ctnetlink_create_expect.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ctnetlink_create_expect.exit

if.end4.i:                                        ; preds = %if.end.i
  %call.i88.i = call fastcc i32 @ctnetlink_parse_tuple_filter(ptr noundef %cda, ptr noundef nonnull %master_tuple.i, i32 noundef 1, i8 noundef zeroext %3, ptr noundef null, i32 noundef 4095) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i88.i)
  %cmp6.i = icmp slt i32 %call.i88.i, 0
  br i1 %cmp6.i, label %if.end4.i.ctnetlink_create_expect.exit_crit_edge, label %if.end8.i

if.end4.i.ctnetlink_create_expect.exit_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ctnetlink_create_expect.exit

if.end8.i:                                        ; preds = %if.end4.i
  %call9.i = call ptr @nf_conntrack_find_get(ptr noundef %29, ptr noundef nonnull %zone, ptr noundef nonnull %master_tuple.i) #16
  %tobool.not.i55 = icmp eq ptr %call9.i, null
  br i1 %tobool.not.i55, label %if.end8.i.ctnetlink_create_expect.exit_crit_edge, label %if.end11.i

if.end8.i.ctnetlink_create_expect.exit_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ctnetlink_create_expect.exit

if.end11.i:                                       ; preds = %if.end8.i
  %dir.i.i = getelementptr inbounds %struct.nf_conntrack_tuple_hash, ptr %call9.i, i32 0, i32 1, i32 1, i32 3
  %37 = ptrtoint ptr %dir.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %dir.i.i, align 1
  %conv.i.i = zext i8 %38 to i32
  %.neg.i.i = mul nsw i32 %conv.i.i, -48
  %idx.neg.i.i = add nsw i32 %.neg.i.i, -56
  %add.ptr.i.i = getelementptr i8, ptr %call9.i, i32 %idx.neg.i.i
  %39 = call i32 @llvm.read_register.i32(metadata !118) #16
  %and.i.i.i.i.i.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %42, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !130
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i.i = call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i.i, label %if.end11.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end11.i.rcu_read_lock.exit.i_crit_edge:        ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end11.i
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 696, ptr noundef nonnull @.str.1) #16
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end11.i.rcu_read_lock.exit.i_crit_edge
  %arrayidx.i = getelementptr ptr, ptr %cda, i32 6
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.i, align 4
  %tobool13.not.i = icmp eq ptr %44, null
  br i1 %tobool13.not.i, label %rcu_read_lock.exit.i.if.end34.i_crit_edge, label %if.then14.i

rcu_read_lock.exit.i.if.end34.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end34.i

if.then14.i:                                      ; preds = %rcu_read_lock.exit.i
  %add.ptr.i89.i = getelementptr i8, ptr %44, i32 4
  %conv.i = zext i8 %3 to i16
  %protonum.i.i = getelementptr inbounds %struct.nf_conn, ptr %add.ptr.i.i, i32 0, i32 4, i32 0, i32 1, i32 1, i32 2
  %45 = ptrtoint ptr %protonum.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %protonum.i.i, align 2
  %call18.i = call ptr @__nf_conntrack_helper_find(ptr noundef %add.ptr.i89.i, i16 noundef zeroext %conv.i, i8 noundef zeroext %46) #16
  %cmp19.i = icmp eq ptr %call18.i, null
  br i1 %cmp19.i, label %if.then21.i, label %if.then14.i.if.end34.i_crit_edge

if.then14.i.if.end34.i_crit_edge:                 ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end34.i

if.then21.i:                                      ; preds = %if.then14.i
  %call.i90.i = call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i90.i, label %if.then21.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i93.i

if.then21.i.rcu_read_unlock.exit.i_crit_edge:     ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit.i

land.lhs.true.i93.i:                              ; preds = %if.then21.i
  %call1.i91.i = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i91.i)
  %tobool.not.i92.i = icmp eq i32 %call1.i91.i, 0
  br i1 %tobool.not.i92.i, label %land.lhs.true.i93.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i95.i

land.lhs.true.i93.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i93.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i95.i:                             ; preds = %land.lhs.true.i93.i
  %.b4.i94.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i94.i, label %land.lhs.true2.i95.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i96.i

land.lhs.true2.i95.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i95.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit.i

if.then.i96.i:                                    ; preds = %land.lhs.true2.i95.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 724, ptr noundef nonnull @.str.2) #16
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i96.i, %land.lhs.true2.i95.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i93.i.rcu_read_unlock.exit.i_crit_edge, %if.then21.i.rcu_read_unlock.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !131
  %47 = call i32 @llvm.read_register.i32(metadata !118) #16
  %and.i.i.i.i.i97.i = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i.i.i.i97.i to ptr
  %preempt_count.i.i.i.i98.i = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %preempt_count.i.i.i.i98.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %preempt_count.i.i.i.i98.i, align 4
  %sub.i.i.i.i = add i32 %50, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i98.i, align 4
  call void @rcu_read_unlock_strict() #16
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  %call22.i = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.8, ptr noundef %add.ptr.i89.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %cmp23.i = icmp slt i32 %call22.i, 0
  br i1 %cmp23.i, label %rcu_read_unlock.exit.i.err_ct.i_crit_edge, label %if.end26.i

rcu_read_unlock.exit.i.err_ct.i_crit_edge:        ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_ct.i

if.end26.i:                                       ; preds = %rcu_read_unlock.exit.i
  %51 = call i32 @llvm.read_register.i32(metadata !118) #16
  %and.i.i.i.i.i75.i = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i.i.i.i75.i to ptr
  %preempt_count.i.i.i.i76.i = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %preempt_count.i.i.i.i76.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %preempt_count.i.i.i.i76.i, align 4
  %add.i.i.i77.i = add i32 %54, 1
  store volatile i32 %add.i.i.i77.i, ptr %preempt_count.i.i.i.i76.i, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !130
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i78.i = call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i78.i, label %if.end26.i.rcu_read_lock.exit85.i_crit_edge, label %land.lhs.true.i81.i

if.end26.i.rcu_read_lock.exit85.i_crit_edge:      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit85.i

land.lhs.true.i81.i:                              ; preds = %if.end26.i
  %call1.i79.i = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i79.i)
  %tobool.not.i80.i = icmp eq i32 %call1.i79.i, 0
  br i1 %tobool.not.i80.i, label %land.lhs.true.i81.i.rcu_read_lock.exit85.i_crit_edge, label %land.lhs.true2.i83.i

land.lhs.true.i81.i.rcu_read_lock.exit85.i_crit_edge: ; preds = %land.lhs.true.i81.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit85.i

land.lhs.true2.i83.i:                             ; preds = %land.lhs.true.i81.i
  %.b4.i82.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i82.i, label %land.lhs.true2.i83.i.rcu_read_lock.exit85.i_crit_edge, label %if.then.i84.i

land.lhs.true2.i83.i.rcu_read_lock.exit85.i_crit_edge: ; preds = %land.lhs.true2.i83.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit85.i

if.then.i84.i:                                    ; preds = %land.lhs.true2.i83.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 696, ptr noundef nonnull @.str.1) #16
  br label %rcu_read_lock.exit85.i

rcu_read_lock.exit85.i:                           ; preds = %if.then.i84.i, %land.lhs.true2.i83.i.rcu_read_lock.exit85.i_crit_edge, %land.lhs.true.i81.i.rcu_read_lock.exit85.i_crit_edge, %if.end26.i.rcu_read_lock.exit85.i_crit_edge
  %55 = ptrtoint ptr %protonum.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %protonum.i.i, align 2
  %call29.i = call ptr @__nf_conntrack_helper_find(ptr noundef %add.ptr.i89.i, i16 noundef zeroext %conv.i, i8 noundef zeroext %56) #16
  %tobool30.not.i = icmp eq ptr %call29.i, null
  br i1 %tobool30.not.i, label %if.end32.i, label %rcu_read_lock.exit85.i.err_rcu.i_crit_edge

rcu_read_lock.exit85.i.err_rcu.i_crit_edge:       ; preds = %rcu_read_lock.exit85.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_rcu.i

if.end32.i:                                       ; preds = %rcu_read_lock.exit85.i
  call void @__sanitizer_cov_trace_pc() #18
  call fastcc void @rcu_read_unlock() #16
  br label %err_ct.i

if.end34.i:                                       ; preds = %if.then14.i.if.end34.i_crit_edge, %rcu_read_lock.exit.i.if.end34.i_crit_edge
  %helper.1.i = phi ptr [ null, %rcu_read_lock.exit.i.if.end34.i_crit_edge ], [ %call18.i, %if.then14.i.if.end34.i_crit_edge ]
  %call35.i = call fastcc ptr @ctnetlink_alloc_expect(ptr noundef %cda, ptr noundef %add.ptr.i.i, ptr noundef %helper.1.i, ptr noundef nonnull %tuple.i, ptr noundef nonnull %mask.i) #16
  %cmp.i.i = icmp ugt ptr %call35.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then37.i, label %if.end39.i

if.then37.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #18
  %57 = ptrtoint ptr %call35.i to i32
  br label %err_rcu.i

if.end39.i:                                       ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #18
  %call40.i = call i32 @nf_ct_expect_related_report(ptr noundef %call35.i, i32 noundef %31, i32 noundef %cond.i, i32 noundef 0) #16
  call void @nf_ct_expect_put(ptr noundef %call35.i) #16
  br label %err_rcu.i

err_rcu.i:                                        ; preds = %if.end39.i, %if.then37.i, %rcu_read_lock.exit85.i.err_rcu.i_crit_edge
  %err.1.i = phi i32 [ %57, %if.then37.i ], [ %call40.i, %if.end39.i ], [ -11, %rcu_read_lock.exit85.i.err_rcu.i_crit_edge ]
  %call.i100.i = call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i100.i, label %err_rcu.i.rcu_read_unlock.exit110.i_crit_edge, label %land.lhs.true.i103.i

err_rcu.i.rcu_read_unlock.exit110.i_crit_edge:    ; preds = %err_rcu.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit110.i

land.lhs.true.i103.i:                             ; preds = %err_rcu.i
  %call1.i101.i = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i101.i)
  %tobool.not.i102.i = icmp eq i32 %call1.i101.i, 0
  br i1 %tobool.not.i102.i, label %land.lhs.true.i103.i.rcu_read_unlock.exit110.i_crit_edge, label %land.lhs.true2.i105.i

land.lhs.true.i103.i.rcu_read_unlock.exit110.i_crit_edge: ; preds = %land.lhs.true.i103.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit110.i

land.lhs.true2.i105.i:                            ; preds = %land.lhs.true.i103.i
  %.b4.i104.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i104.i, label %land.lhs.true2.i105.i.rcu_read_unlock.exit110.i_crit_edge, label %if.then.i106.i

land.lhs.true2.i105.i.rcu_read_unlock.exit110.i_crit_edge: ; preds = %land.lhs.true2.i105.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit110.i

if.then.i106.i:                                   ; preds = %land.lhs.true2.i105.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 724, ptr noundef nonnull @.str.2) #16
  br label %rcu_read_unlock.exit110.i

rcu_read_unlock.exit110.i:                        ; preds = %if.then.i106.i, %land.lhs.true2.i105.i.rcu_read_unlock.exit110.i_crit_edge, %land.lhs.true.i103.i.rcu_read_unlock.exit110.i_crit_edge, %err_rcu.i.rcu_read_unlock.exit110.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !131
  %58 = call i32 @llvm.read_register.i32(metadata !118) #16
  %and.i.i.i.i.i107.i = and i32 %58, -16384
  %59 = inttoptr i32 %and.i.i.i.i.i107.i to ptr
  %preempt_count.i.i.i.i108.i = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %preempt_count.i.i.i.i108.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %preempt_count.i.i.i.i108.i, align 4
  %sub.i.i.i109.i = add i32 %61, -1
  store volatile i32 %sub.i.i.i109.i, ptr %preempt_count.i.i.i.i108.i, align 4
  call void @rcu_read_unlock_strict() #16
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  br label %err_ct.i

err_ct.i:                                         ; preds = %rcu_read_unlock.exit110.i, %if.end32.i, %rcu_read_unlock.exit.i.err_ct.i_crit_edge
  %err.2.i = phi i32 [ %err.1.i, %rcu_read_unlock.exit110.i ], [ -95, %if.end32.i ], [ -95, %rcu_read_unlock.exit.i.err_ct.i_crit_edge ]
  %tobool.not.i111.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i111.i, label %err_ct.i.ctnetlink_create_expect.exit_crit_edge, label %land.lhs.true.i112.i

err_ct.i.ctnetlink_create_expect.exit_crit_edge:  ; preds = %err_ct.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ctnetlink_create_expect.exit

land.lhs.true.i112.i:                             ; preds = %err_ct.i
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %add.ptr.i.i, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !133
  call void @llvm.prefetch.p0(ptr nonnull %add.ptr.i.i, i32 1, i32 3, i32 1) #16
  %62 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %add.ptr.i.i, ptr nonnull %add.ptr.i.i, i32 1, ptr nonnull elementtype(i32) %add.ptr.i.i) #16, !srcloc !134
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %62, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i113.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %land.lhs.true.i112.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.ctnetlink_create_expect.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !135

if.end5.i.i.i.i.i.ctnetlink_create_expect.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ctnetlink_create_expect.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @refcount_warn_saturate(ptr noundef nonnull %add.ptr.i.i, i32 noundef 3) #16
  br label %ctnetlink_create_expect.exit

if.then.i113.i:                                   ; preds = %land.lhs.true.i112.i
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !136
  call void @nf_ct_destroy(ptr noundef nonnull %add.ptr.i.i) #16
  br label %ctnetlink_create_expect.exit

ctnetlink_create_expect.exit:                     ; preds = %if.then.i113.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.ctnetlink_create_expect.exit_crit_edge, %err_ct.i.ctnetlink_create_expect.exit_crit_edge, %if.end8.i.ctnetlink_create_expect.exit_crit_edge, %if.end4.i.ctnetlink_create_expect.exit_crit_edge, %if.end.i.ctnetlink_create_expect.exit_crit_edge, %if.then17.ctnetlink_create_expect.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i86.i, %if.then17.ctnetlink_create_expect.exit_crit_edge ], [ %call.i87.i, %if.end.i.ctnetlink_create_expect.exit_crit_edge ], [ %call.i88.i, %if.end4.i.ctnetlink_create_expect.exit_crit_edge ], [ -2, %if.end8.i.ctnetlink_create_expect.exit_crit_edge ], [ %err.2.i, %err_ct.i.ctnetlink_create_expect.exit_crit_edge ], [ %err.2.i, %if.end5.i.i.i.i.i.ctnetlink_create_expect.exit_crit_edge ], [ %err.2.i, %if.then10.i.i.i.i.i ], [ %err.2.i, %if.then.i113.i ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %master_tuple.i) #16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %mask.i) #16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %tuple.i) #16
  br label %cleanup

if.end23:                                         ; preds = %if.end12
  %nlh24 = getelementptr inbounds %struct.nfnl_info, ptr %info, i32 0, i32 2
  %63 = ptrtoint ptr %nlh24 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %nlh24, align 4
  %nlmsg_flags25 = getelementptr inbounds %struct.nlmsghdr, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %nlmsg_flags25 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %nlmsg_flags25, align 2
  %67 = and i16 %66, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %67)
  %tobool28.not = icmp eq i16 %67, 0
  br i1 %tobool28.not, label %if.then29, label %if.end23.if.end31_crit_edge

if.end23.if.end31_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end31

if.then29:                                        ; preds = %if.end23
  %arrayidx.i56 = getelementptr ptr, ptr %cda, i32 4
  %68 = ptrtoint ptr %arrayidx.i56 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx.i56, align 4
  %tobool.not.i57 = icmp eq ptr %69, null
  br i1 %tobool.not.i57, label %if.then29.if.end31_crit_edge, label %if.then.i59

if.then29.if.end31_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end31

if.then.i59:                                      ; preds = %if.then29
  %timeout.i = getelementptr inbounds %struct.nf_conntrack_expect, ptr %call13, i32 0, i32 7
  %call.i58 = call i32 @del_timer(ptr noundef %timeout.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i58)
  %tobool1.not.i = icmp eq i32 %call.i58, 0
  br i1 %tobool1.not.i, label %if.then.i59.if.end31_crit_edge, label %if.end.i61

if.then.i59.if.end31_crit_edge:                   ; preds = %if.then.i59
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end31

if.end.i61:                                       ; preds = %if.then.i59
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %70 = load volatile i32, ptr @jiffies, align 128
  %71 = ptrtoint ptr %arrayidx.i56 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx.i56, align 4
  %add.ptr.i.i.i60 = getelementptr i8, ptr %72, i32 4
  %73 = ptrtoint ptr %add.ptr.i.i.i60 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %add.ptr.i.i.i60, align 4
  %mul.i = mul i32 %74, 100
  %add.i = add i32 %mul.i, %70
  %expires.i = getelementptr inbounds %struct.nf_conntrack_expect, ptr %call13, i32 0, i32 7, i32 1
  %75 = ptrtoint ptr %expires.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %add.i, ptr %expires.i, align 4
  call void @add_timer(ptr noundef %timeout.i) #16
  br label %if.end31

if.end31:                                         ; preds = %if.end.i61, %if.then.i59.if.end31_crit_edge, %if.then29.if.end31_crit_edge, %if.end23.if.end31_crit_edge
  %err.1 = phi i32 [ -17, %if.end23.if.end31_crit_edge ], [ -62, %if.then.i59.if.end31_crit_edge ], [ 0, %if.end.i61 ], [ 0, %if.then29.if.end31_crit_edge ]
  call void @_raw_spin_unlock_bh(ptr noundef nonnull @nf_conntrack_expect_lock) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %ctnetlink_create_expect.exit, %if.then15.cleanup_crit_edge, %ctnetlink_parse_zone.exit.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %if.end31 ], [ -22, %lor.lhs.false3.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call.i, %ctnetlink_parse_zone.exit.cleanup_crit_edge ], [ %retval.0.i, %ctnetlink_create_expect.exit ], [ -2, %if.then15.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %zone) #16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %tuple) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ctnetlink_get_expect(ptr noundef %skb, ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %cda) #2 align 64 {
entry:
  %tuple.i = alloca %struct.nf_conntrack_tuple, align 4
  %zone.i = alloca %struct.nf_conntrack_zone, align 2
  %c.i = alloca %struct.netlink_dump_control, align 4
  %tuple = alloca %struct.nf_conntrack_tuple, align 4
  %zone = alloca %struct.nf_conntrack_zone, align 2
  %c = alloca %struct.netlink_dump_control, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %nfmsg = getelementptr inbounds %struct.nfnl_info, ptr %info, i32 0, i32 3
  %0 = ptrtoint ptr %nfmsg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nfmsg, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 2
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %tuple) #16
  %4 = call ptr @memset(ptr %tuple, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %zone) #16
  %nlh = getelementptr inbounds %struct.nfnl_info, ptr %info, i32 0, i32 2
  %5 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nlh, align 4
  %nlmsg_flags = getelementptr inbounds %struct.nlmsghdr, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %nlmsg_flags to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %nlmsg_flags, align 2
  %9 = and i16 %8, 768
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not = icmp eq i16 %9, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr ptr, ptr %cda, i32 1
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %tobool1.not = icmp eq ptr %11, null
  br i1 %tobool1.not, label %netlink_dump_start.exit, label %if.then2

if.then2:                                         ; preds = %if.then
  %12 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %info, align 4
  %sk = getelementptr inbounds %struct.nfnl_info, ptr %info, i32 0, i32 1
  %14 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sk, align 4
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 16
  %16 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %add.ptr.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %tuple.i) #16
  %18 = call ptr @memset(ptr %tuple.i, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %zone.i) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %c.i) #16
  %19 = call ptr @memcpy(ptr %c.i, ptr @__const.ctnetlink_dump_exp_ct.c, i32 24)
  %call.i.i = call fastcc i32 @ctnetlink_parse_tuple_filter(ptr noundef %cda, ptr noundef nonnull %tuple.i, i32 noundef 1, i8 noundef zeroext %17, ptr noundef null, i32 noundef 4095) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.then2.ctnetlink_dump_exp_ct.exit_crit_edge, label %if.end.i

if.then2.ctnetlink_dump_exp_ct.exit_crit_edge:    ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #18
  br label %ctnetlink_dump_exp_ct.exit

if.end.i:                                         ; preds = %if.then2
  %20 = getelementptr inbounds %struct.nf_conntrack_zone, ptr %zone.i, i32 0, i32 2
  %21 = getelementptr inbounds %struct.nf_conntrack_zone, ptr %zone.i, i32 0, i32 1
  %arrayidx.i = getelementptr ptr, ptr %cda, i32 7
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i, align 4
  %24 = ptrtoint ptr %zone.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %zone.i, align 2
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %21, align 2
  %26 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 3, ptr %20, align 1
  %tobool.not.i.i = icmp eq ptr %23, null
  br i1 %tobool.not.i.i, label %if.end.i.ctnetlink_parse_zone.exit.i_crit_edge, label %if.then.i.i

if.end.i.ctnetlink_parse_zone.exit.i_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ctnetlink_parse_zone.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i.i.i.i = getelementptr i8, ptr %23, i32 4
  %27 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %add.ptr.i.i.i.i, align 2
  %29 = ptrtoint ptr %zone.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %zone.i, align 2
  br label %ctnetlink_parse_zone.exit.i

ctnetlink_parse_zone.exit.i:                      ; preds = %if.then.i.i, %if.end.i.ctnetlink_parse_zone.exit.i_crit_edge
  %call6.i = call ptr @nf_conntrack_find_get(ptr noundef %13, ptr noundef nonnull %zone.i, ptr noundef nonnull %tuple.i) #16
  %tobool.not.i98 = icmp eq ptr %call6.i, null
  br i1 %tobool.not.i98, label %ctnetlink_parse_zone.exit.i.ctnetlink_dump_exp_ct.exit_crit_edge, label %if.end8.i

ctnetlink_parse_zone.exit.i.ctnetlink_dump_exp_ct.exit_crit_edge: ; preds = %ctnetlink_parse_zone.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ctnetlink_dump_exp_ct.exit

if.end8.i:                                        ; preds = %ctnetlink_parse_zone.exit.i
  %dir.i.i = getelementptr inbounds %struct.nf_conntrack_tuple_hash, ptr %call6.i, i32 0, i32 1, i32 1, i32 3
  %30 = ptrtoint ptr %dir.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %dir.i.i, align 1
  %conv.i.i = zext i8 %31 to i32
  %.neg.i.i = mul nsw i32 %conv.i.i, -48
  %idx.neg.i.i = add nsw i32 %.neg.i.i, -56
  %add.ptr.i1.i = getelementptr i8, ptr %call6.i, i32 %idx.neg.i.i
  %ext.i.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %add.ptr.i1.i, i32 0, i32 13
  %32 = ptrtoint ptr %ext.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ext.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %33, null
  br i1 %tobool.not.i.i.i.i, label %if.end8.i.if.then12.i_crit_edge, label %nf_ct_ext_exist.exit.i.i.i

if.end8.i.if.then12.i_crit_edge:                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then12.i

nf_ct_ext_exist.exit.i.i.i:                       ; preds = %if.end8.i
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %33, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.i.i.not.i.i.i = icmp eq i8 %35, 0
  %conv.i.i.i = zext i8 %35 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %33, i32 %conv.i.i.i
  %tobool11.not.i = icmp eq ptr %add.ptr.i.i.i, null
  %or.cond.i = select i1 %tobool.i.i.not.i.i.i, i1 true, i1 %tobool11.not.i
  br i1 %or.cond.i, label %nf_ct_ext_exist.exit.i.i.i.if.then12.i_crit_edge, label %if.end13.i

nf_ct_ext_exist.exit.i.i.i.if.then12.i_crit_edge: ; preds = %nf_ct_ext_exist.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then12.i

if.then12.i:                                      ; preds = %nf_ct_ext_exist.exit.i.i.i.if.then12.i_crit_edge, %if.end8.i.if.then12.i_crit_edge
  %tobool.not.i2.i = icmp eq ptr %add.ptr.i1.i, null
  br i1 %tobool.not.i2.i, label %if.then12.i.ctnetlink_dump_exp_ct.exit_crit_edge, label %land.lhs.true.i.i

if.then12.i.ctnetlink_dump_exp_ct.exit_crit_edge: ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ctnetlink_dump_exp_ct.exit

land.lhs.true.i.i:                                ; preds = %if.then12.i
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %add.ptr.i1.i, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !133
  call void @llvm.prefetch.p0(ptr nonnull %add.ptr.i1.i, i32 1, i32 3, i32 1) #16
  %36 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %add.ptr.i1.i, ptr nonnull %add.ptr.i1.i, i32 1, ptr nonnull elementtype(i32) %add.ptr.i1.i) #16, !srcloc !134
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i3.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.ctnetlink_dump_exp_ct.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !135

if.end5.i.i.i.i.i.ctnetlink_dump_exp_ct.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ctnetlink_dump_exp_ct.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @refcount_warn_saturate(ptr noundef nonnull %add.ptr.i1.i, i32 noundef 3) #16
  br label %ctnetlink_dump_exp_ct.exit

if.then.i3.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !136
  call void @nf_ct_destroy(ptr noundef nonnull %add.ptr.i1.i) #16
  br label %ctnetlink_dump_exp_ct.exit

if.end13.i:                                       ; preds = %nf_ct_ext_exist.exit.i.i.i
  %data.i = getelementptr inbounds %struct.netlink_dump_control, ptr %c.i, i32 0, i32 3
  %37 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %add.ptr.i1.i, ptr %data.i, align 4
  %module.i.i = getelementptr inbounds %struct.netlink_dump_control, ptr %c.i, i32 0, i32 4
  %38 = ptrtoint ptr %module.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %module.i.i, align 4
  %tobool.not.i4.i = icmp eq ptr %39, null
  br i1 %tobool.not.i4.i, label %if.then.i5.i, label %if.end13.i.netlink_dump_start.exit.i_crit_edge

if.end13.i.netlink_dump_start.exit.i_crit_edge:   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %netlink_dump_start.exit.i

if.then.i5.i:                                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #18
  %40 = ptrtoint ptr %module.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %module.i.i, align 4
  br label %netlink_dump_start.exit.i

netlink_dump_start.exit.i:                        ; preds = %if.then.i5.i, %if.end13.i.netlink_dump_start.exit.i_crit_edge
  %call.i6.i = call i32 @__netlink_dump_start(ptr noundef %15, ptr noundef %skb, ptr noundef %6, ptr noundef nonnull %c.i) #16
  %tobool.not.i7.i = icmp eq ptr %add.ptr.i1.i, null
  br i1 %tobool.not.i7.i, label %netlink_dump_start.exit.i.ctnetlink_dump_exp_ct.exit_crit_edge, label %land.lhs.true.i11.i

netlink_dump_start.exit.i.ctnetlink_dump_exp_ct.exit_crit_edge: ; preds = %netlink_dump_start.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ctnetlink_dump_exp_ct.exit

land.lhs.true.i11.i:                              ; preds = %netlink_dump_start.exit.i
  %call.i.i.i.i.i.i8.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %add.ptr.i1.i, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !133
  call void @llvm.prefetch.p0(ptr nonnull %add.ptr.i1.i, i32 1, i32 3, i32 1) #16
  %41 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %add.ptr.i1.i, ptr nonnull %add.ptr.i1.i, i32 1, ptr nonnull elementtype(i32) %add.ptr.i1.i) #16, !srcloc !134
  %asmresult.i.i.i.i.i.i.i9.i = extractvalue { i32, i32, i32 } %41, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i9.i)
  %cmp.i.i.i.i10.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i9.i, 1
  br i1 %cmp.i.i.i.i10.i, label %if.then.i15.i, label %if.end5.i.i.i.i13.i

if.end5.i.i.i.i13.i:                              ; preds = %land.lhs.true.i11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i9.i)
  %.not.i.i.i.i12.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i9.i, 0
  br i1 %.not.i.i.i.i12.i, label %if.end5.i.i.i.i13.i.ctnetlink_dump_exp_ct.exit_crit_edge, label %if.then10.i.i.i.i14.i, !prof !135

if.end5.i.i.i.i13.i.ctnetlink_dump_exp_ct.exit_crit_edge: ; preds = %if.end5.i.i.i.i13.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ctnetlink_dump_exp_ct.exit

if.then10.i.i.i.i14.i:                            ; preds = %if.end5.i.i.i.i13.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @refcount_warn_saturate(ptr noundef nonnull %add.ptr.i1.i, i32 noundef 3) #16
  br label %ctnetlink_dump_exp_ct.exit

if.then.i15.i:                                    ; preds = %land.lhs.true.i11.i
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !136
  call void @nf_ct_destroy(ptr noundef nonnull %add.ptr.i1.i) #16
  br label %ctnetlink_dump_exp_ct.exit

ctnetlink_dump_exp_ct.exit:                       ; preds = %if.then.i15.i, %if.then10.i.i.i.i14.i, %if.end5.i.i.i.i13.i.ctnetlink_dump_exp_ct.exit_crit_edge, %netlink_dump_start.exit.i.ctnetlink_dump_exp_ct.exit_crit_edge, %if.then.i3.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.ctnetlink_dump_exp_ct.exit_crit_edge, %if.then12.i.ctnetlink_dump_exp_ct.exit_crit_edge, %ctnetlink_parse_zone.exit.i.ctnetlink_dump_exp_ct.exit_crit_edge, %if.then2.ctnetlink_dump_exp_ct.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i.i, %if.then2.ctnetlink_dump_exp_ct.exit_crit_edge ], [ -2, %ctnetlink_parse_zone.exit.i.ctnetlink_dump_exp_ct.exit_crit_edge ], [ 0, %if.then12.i.ctnetlink_dump_exp_ct.exit_crit_edge ], [ 0, %if.end5.i.i.i.i.i.ctnetlink_dump_exp_ct.exit_crit_edge ], [ 0, %if.then10.i.i.i.i.i ], [ 0, %if.then.i3.i ], [ %call.i6.i, %netlink_dump_start.exit.i.ctnetlink_dump_exp_ct.exit_crit_edge ], [ %call.i6.i, %if.end5.i.i.i.i13.i.ctnetlink_dump_exp_ct.exit_crit_edge ], [ %call.i6.i, %if.then10.i.i.i.i14.i ], [ %call.i6.i, %if.then.i15.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %c.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %zone.i) #16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %tuple.i) #16
  br label %cleanup58

netlink_dump_start.exit:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %c) #16
  %42 = call ptr @memcpy(ptr %c, ptr @__const.ctnetlink_get_expect.c, i32 24)
  %sk4 = getelementptr inbounds %struct.nfnl_info, ptr %info, i32 0, i32 1
  %43 = ptrtoint ptr %sk4 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %sk4, align 4
  %module.i = getelementptr inbounds %struct.netlink_dump_control, ptr %c, i32 0, i32 4
  %45 = ptrtoint ptr %module.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %module.i, align 4
  %call.i101 = call i32 @__netlink_dump_start(ptr noundef %44, ptr noundef %skb, ptr noundef %6, ptr noundef nonnull %c) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %c) #16
  br label %cleanup58

if.end:                                           ; preds = %entry
  %46 = getelementptr inbounds %struct.nf_conntrack_zone, ptr %zone, i32 0, i32 2
  %47 = getelementptr inbounds %struct.nf_conntrack_zone, ptr %zone, i32 0, i32 1
  %arrayidx7 = getelementptr ptr, ptr %cda, i32 7
  %48 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx7, align 4
  %50 = ptrtoint ptr %zone to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 0, ptr %zone, align 2
  %51 = ptrtoint ptr %47 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %47, align 2
  %52 = ptrtoint ptr %46 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 3, ptr %46, align 1
  %tobool.not.i103 = icmp eq ptr %49, null
  br i1 %tobool.not.i103, label %if.end.ctnetlink_parse_zone.exit_crit_edge, label %if.then.i105

if.end.ctnetlink_parse_zone.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %ctnetlink_parse_zone.exit

if.then.i105:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i.i.i104 = getelementptr i8, ptr %49, i32 4
  %53 = ptrtoint ptr %add.ptr.i.i.i104 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %add.ptr.i.i.i104, align 2
  %55 = ptrtoint ptr %zone to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %54, ptr %zone, align 2
  br label %ctnetlink_parse_zone.exit

ctnetlink_parse_zone.exit:                        ; preds = %if.then.i105, %if.end.ctnetlink_parse_zone.exit_crit_edge
  %arrayidx12 = getelementptr ptr, ptr %cda, i32 2
  %56 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx12, align 4
  %tobool13.not = icmp eq ptr %57, null
  br i1 %tobool13.not, label %if.else16, label %ctnetlink_parse_zone.exit.if.end23_crit_edge

ctnetlink_parse_zone.exit.if.end23_crit_edge:     ; preds = %ctnetlink_parse_zone.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end23

if.else16:                                        ; preds = %ctnetlink_parse_zone.exit
  %arrayidx17 = getelementptr ptr, ptr %cda, i32 1
  %58 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx17, align 4
  %tobool18.not = icmp eq ptr %59, null
  br i1 %tobool18.not, label %if.else16.cleanup58_crit_edge, label %if.else16.if.end23_crit_edge

if.else16.if.end23_crit_edge:                     ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end23

if.else16.cleanup58_crit_edge:                    ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup58

if.end23:                                         ; preds = %if.else16.if.end23_crit_edge, %ctnetlink_parse_zone.exit.if.end23_crit_edge
  %.sink = phi i32 [ 2, %ctnetlink_parse_zone.exit.if.end23_crit_edge ], [ 1, %if.else16.if.end23_crit_edge ]
  %call.i108 = call fastcc i32 @ctnetlink_parse_tuple_filter(ptr noundef %cda, ptr noundef nonnull %tuple, i32 noundef %.sink, i8 noundef zeroext %3, ptr noundef null, i32 noundef 4095) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i108)
  %cmp24 = icmp slt i32 %call.i108, 0
  br i1 %cmp24, label %if.end23.cleanup58_crit_edge, label %if.end27

if.end23.cleanup58_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup58

if.end27:                                         ; preds = %if.end23
  %60 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %info, align 4
  %call29 = call ptr @nf_ct_expect_find_get(ptr noundef %61, ptr noundef nonnull %zone, ptr noundef nonnull %tuple) #16
  %tobool30.not = icmp eq ptr %call29, null
  br i1 %tobool30.not, label %if.end27.cleanup58_crit_edge, label %if.end32

if.end27.cleanup58_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup58

if.end32:                                         ; preds = %if.end27
  %arrayidx33 = getelementptr ptr, ptr %cda, i32 5
  %62 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx33, align 4
  %tobool34.not = icmp eq ptr %63, null
  br i1 %tobool34.not, label %if.end32.if.end43_crit_edge, label %if.then35

if.end32.if.end43_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end43

if.then35:                                        ; preds = %if.end32
  %add.ptr.i.i109 = getelementptr i8, ptr %63, i32 4
  %64 = ptrtoint ptr %add.ptr.i.i109 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %add.ptr.i.i109, align 4
  %call38 = call fastcc i32 @nf_expect_get_id(ptr noundef nonnull %call29)
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %call38)
  %cmp39.not = icmp eq i32 %65, %call38
  br i1 %cmp39.not, label %if.then35.if.end43_crit_edge, label %if.then41

if.then35.if.end43_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end43

if.then41:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #18
  call void @nf_ct_expect_put(ptr noundef nonnull %call29) #16
  br label %cleanup58

if.end43:                                         ; preds = %if.then35.if.end43_crit_edge, %if.end32.if.end43_crit_edge
  %call.i.i110 = call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #16
  %tobool45.not = icmp eq ptr %call.i.i110, null
  br i1 %tobool45.not, label %if.then46, label %if.end47

if.then46:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #18
  call void @nf_ct_expect_put(ptr noundef nonnull %call29) #16
  br label %cleanup58

if.end47:                                         ; preds = %if.end43
  %66 = call i32 @llvm.read_register.i32(metadata !118) #16
  %and.i.i.i.i.i = and i32 %66, -16384
  %67 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %69, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !130
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %if.end47.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end47.rcu_read_lock.exit_crit_edge:            ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end47
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 696, ptr noundef nonnull @.str.1) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end47.rcu_read_lock.exit_crit_edge
  %portid = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %70 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %portid, align 4
  %72 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %73, i32 0, i32 3
  %74 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %nlmsg_seq, align 4
  %call49 = call fastcc i32 @ctnetlink_exp_fill_info(ptr noundef nonnull %call.i.i110, i32 noundef %71, i32 noundef %75, ptr noundef nonnull %call29)
  %call.i111 = call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i111, label %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i114

rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true.i114:                               ; preds = %rcu_read_lock.exit
  %call1.i112 = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i112)
  %tobool.not.i113 = icmp eq i32 %call1.i112, 0
  br i1 %tobool.not.i113, label %land.lhs.true.i114.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i116

land.lhs.true.i114.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i114
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true2.i116:                              ; preds = %land.lhs.true.i114
  %.b4.i115 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i115, label %land.lhs.true2.i116.rcu_read_unlock.exit_crit_edge, label %if.then.i117

land.lhs.true2.i116.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i116
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

if.then.i117:                                     ; preds = %land.lhs.true2.i116
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 724, ptr noundef nonnull @.str.2) #16
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i117, %land.lhs.true2.i116.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i114.rcu_read_unlock.exit_crit_edge, %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !131
  %76 = call i32 @llvm.read_register.i32(metadata !118) #16
  %and.i.i.i.i.i118 = and i32 %76, -16384
  %77 = inttoptr i32 %and.i.i.i.i.i118 to ptr
  %preempt_count.i.i.i.i119 = getelementptr inbounds %struct.thread_info, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %preempt_count.i.i.i.i119 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %preempt_count.i.i.i.i119, align 4
  %sub.i.i.i = add i32 %79, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i119, align 4
  call void @rcu_read_unlock_strict() #16
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  call void @nf_ct_expect_put(ptr noundef nonnull %call29) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call49)
  %cmp50 = icmp slt i32 %call49, 1
  br i1 %cmp50, label %if.then52, label %if.end53

if.then52:                                        ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #18
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i110, i32 noundef 0) #16
  br label %cleanup58

if.end53:                                         ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #18
  %80 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %info, align 4
  %82 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %portid, align 4
  %call57 = call i32 @nfnetlink_unicast(ptr noundef nonnull %call.i.i110, ptr noundef %81, i32 noundef %83) #16
  br label %cleanup58

cleanup58:                                        ; preds = %if.end53, %if.then52, %if.then46, %if.then41, %if.end27.cleanup58_crit_edge, %if.end23.cleanup58_crit_edge, %if.else16.cleanup58_crit_edge, %netlink_dump_start.exit, %ctnetlink_dump_exp_ct.exit
  %retval.1 = phi i32 [ %retval.0.i, %ctnetlink_dump_exp_ct.exit ], [ %call.i101, %netlink_dump_start.exit ], [ -12, %if.then52 ], [ %call57, %if.end53 ], [ -12, %if.then46 ], [ -22, %if.else16.cleanup58_crit_edge ], [ %call.i108, %if.end23.cleanup58_crit_edge ], [ -2, %if.end27.cleanup58_crit_edge ], [ -2, %if.then41 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %zone) #16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %tuple) #16
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ctnetlink_del_expect(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %cda) #2 align 64 {
entry:
  %tuple = alloca %struct.nf_conntrack_tuple, align 4
  %zone = alloca %struct.nf_conntrack_zone, align 2
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %nfmsg = getelementptr inbounds %struct.nfnl_info, ptr %info, i32 0, i32 3
  %0 = ptrtoint ptr %nfmsg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nfmsg, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 2
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %tuple) #16
  %4 = call ptr @memset(ptr %tuple, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %zone) #16
  %arrayidx = getelementptr ptr, ptr %cda, i32 2
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %7 = getelementptr inbounds %struct.nf_conntrack_zone, ptr %zone, i32 0, i32 2
  %8 = getelementptr inbounds %struct.nf_conntrack_zone, ptr %zone, i32 0, i32 1
  %arrayidx1 = getelementptr ptr, ptr %cda, i32 7
  %9 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx1, align 4
  %11 = ptrtoint ptr %zone to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %zone, align 2
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %8, align 2
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 3, ptr %7, align 1
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.then.ctnetlink_parse_zone.exit_crit_edge, label %if.then.i

if.then.ctnetlink_parse_zone.exit_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %ctnetlink_parse_zone.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i.i.i = getelementptr i8, ptr %10, i32 4
  %14 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %add.ptr.i.i.i, align 2
  %16 = ptrtoint ptr %zone to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %zone, align 2
  br label %ctnetlink_parse_zone.exit

ctnetlink_parse_zone.exit:                        ; preds = %if.then.i, %if.then.ctnetlink_parse_zone.exit_crit_edge
  %call.i = call fastcc i32 @ctnetlink_parse_tuple_filter(ptr noundef %cda, ptr noundef nonnull %tuple, i32 noundef 2, i8 noundef zeroext %3, ptr noundef null, i32 noundef 4095) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4 = icmp slt i32 %call.i, 0
  br i1 %cmp4, label %ctnetlink_parse_zone.exit.cleanup43_crit_edge, label %if.end6

ctnetlink_parse_zone.exit.cleanup43_crit_edge:    ; preds = %ctnetlink_parse_zone.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup43

if.end6:                                          ; preds = %ctnetlink_parse_zone.exit
  %17 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %info, align 4
  %call7 = call ptr @nf_ct_expect_find_get(ptr noundef %18, ptr noundef nonnull %zone, ptr noundef nonnull %tuple) #16
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end6.cleanup43_crit_edge, label %if.end10

if.end6.cleanup43_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup43

if.end10:                                         ; preds = %if.end6
  %arrayidx11 = getelementptr ptr, ptr %cda, i32 5
  %19 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx11, align 4
  %tobool12.not = icmp eq ptr %20, null
  br i1 %tobool12.not, label %if.end10.if.end19_crit_edge, label %if.then13

if.end10.if.end19_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19

if.then13:                                        ; preds = %if.end10
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 4
  %21 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr.i.i, align 4
  %23 = ptrtoint ptr %call7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %23)
  %cmp16.not = icmp eq i32 %22, %23
  br i1 %cmp16.not, label %if.then13.if.end19_crit_edge, label %if.then17

if.then13.if.end19_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19

if.then17:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #18
  call void @nf_ct_expect_put(ptr noundef nonnull %call7) #16
  br label %cleanup43

if.end19:                                         ; preds = %if.then13.if.end19_crit_edge, %if.end10.if.end19_crit_edge
  call void @_raw_spin_lock_bh(ptr noundef nonnull @nf_conntrack_expect_lock) #16
  %timeout = getelementptr inbounds %struct.nf_conntrack_expect, ptr %call7, i32 0, i32 7
  %call20 = call i32 @del_timer(ptr noundef %timeout) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end19.if.end24_crit_edge, label %if.then22

if.end19.if.end24_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end24

if.then22:                                        ; preds = %if.end19
  %portid = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %24 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %portid, align 4
  %nlh = getelementptr inbounds %struct.nfnl_info, ptr %info, i32 0, i32 2
  %26 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %nlh, align 4
  %tobool.not.i72 = icmp eq ptr %27, null
  br i1 %tobool.not.i72, label %if.then22.nlmsg_report.exit_crit_edge, label %cond.true.i

if.then22.nlmsg_report.exit_crit_edge:            ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #18
  br label %nlmsg_report.exit

cond.true.i:                                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #18
  %nlmsg_flags.i = getelementptr inbounds %struct.nlmsghdr, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %nlmsg_flags.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %nlmsg_flags.i, align 2
  %30 = lshr i16 %29, 3
  %.lobit.i = and i16 %30, 1
  %31 = zext i16 %.lobit.i to i32
  br label %nlmsg_report.exit

nlmsg_report.exit:                                ; preds = %cond.true.i, %if.then22.nlmsg_report.exit_crit_edge
  %cond.i = phi i32 [ %31, %cond.true.i ], [ 0, %if.then22.nlmsg_report.exit_crit_edge ]
  call void @nf_ct_unlink_expect_report(ptr noundef nonnull %call7, i32 noundef %25, i32 noundef %cond.i) #16
  call void @nf_ct_expect_put(ptr noundef nonnull %call7) #16
  br label %if.end24

if.end24:                                         ; preds = %nlmsg_report.exit, %if.end19.if.end24_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef nonnull @nf_conntrack_expect_lock) #16
  call void @nf_ct_expect_put(ptr noundef nonnull %call7) #16
  br label %cleanup43

if.else:                                          ; preds = %entry
  %arrayidx25 = getelementptr ptr, ptr %cda, i32 6
  %32 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx25, align 4
  %tobool26.not = icmp eq ptr %33, null
  br i1 %tobool26.not, label %if.else35, label %if.then27

if.then27:                                        ; preds = %if.else
  %add.ptr.i = getelementptr i8, ptr %33, i32 4
  %34 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %info, align 4
  %portid32 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %36 = ptrtoint ptr %portid32 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %portid32, align 4
  %nlh33 = getelementptr inbounds %struct.nfnl_info, ptr %info, i32 0, i32 2
  %38 = ptrtoint ptr %nlh33 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %nlh33, align 4
  %tobool.not.i73 = icmp eq ptr %39, null
  br i1 %tobool.not.i73, label %if.then27.nlmsg_report.exit78_crit_edge, label %cond.true.i76

if.then27.nlmsg_report.exit78_crit_edge:          ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #18
  br label %nlmsg_report.exit78

cond.true.i76:                                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #18
  %nlmsg_flags.i74 = getelementptr inbounds %struct.nlmsghdr, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %nlmsg_flags.i74 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %nlmsg_flags.i74, align 2
  %42 = lshr i16 %41, 3
  %.lobit.i75 = and i16 %42, 1
  %43 = zext i16 %.lobit.i75 to i32
  br label %nlmsg_report.exit78

nlmsg_report.exit78:                              ; preds = %cond.true.i76, %if.then27.nlmsg_report.exit78_crit_edge
  %cond.i77 = phi i32 [ %43, %cond.true.i76 ], [ 0, %if.then27.nlmsg_report.exit78_crit_edge ]
  tail call void @nf_ct_expect_iterate_net(ptr noundef %35, ptr noundef nonnull @expect_iter_name, ptr noundef %add.ptr.i, i32 noundef %37, i32 noundef %cond.i77) #16
  br label %cleanup43

if.else35:                                        ; preds = %if.else
  %44 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %info, align 4
  %portid38 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %46 = ptrtoint ptr %portid38 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %portid38, align 4
  %nlh39 = getelementptr inbounds %struct.nfnl_info, ptr %info, i32 0, i32 2
  %48 = ptrtoint ptr %nlh39 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %nlh39, align 4
  %tobool.not.i79 = icmp eq ptr %49, null
  br i1 %tobool.not.i79, label %if.else35.nlmsg_report.exit84_crit_edge, label %cond.true.i82

if.else35.nlmsg_report.exit84_crit_edge:          ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #18
  br label %nlmsg_report.exit84

cond.true.i82:                                    ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #18
  %nlmsg_flags.i80 = getelementptr inbounds %struct.nlmsghdr, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %nlmsg_flags.i80 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %nlmsg_flags.i80, align 2
  %52 = lshr i16 %51, 3
  %.lobit.i81 = and i16 %52, 1
  %53 = zext i16 %.lobit.i81 to i32
  br label %nlmsg_report.exit84

nlmsg_report.exit84:                              ; preds = %cond.true.i82, %if.else35.nlmsg_report.exit84_crit_edge
  %cond.i83 = phi i32 [ %53, %cond.true.i82 ], [ 0, %if.else35.nlmsg_report.exit84_crit_edge ]
  tail call void @nf_ct_expect_iterate_net(ptr noundef %45, ptr noundef nonnull @expect_iter_all, ptr noundef null, i32 noundef %47, i32 noundef %cond.i83) #16
  br label %cleanup43

cleanup43:                                        ; preds = %nlmsg_report.exit84, %nlmsg_report.exit78, %if.end24, %if.then17, %if.end6.cleanup43_crit_edge, %ctnetlink_parse_zone.exit.cleanup43_crit_edge
  %retval.1 = phi i32 [ %call.i, %ctnetlink_parse_zone.exit.cleanup43_crit_edge ], [ -2, %if.end6.cleanup43_crit_edge ], [ -2, %if.then17 ], [ 0, %nlmsg_report.exit78 ], [ 0, %nlmsg_report.exit84 ], [ 0, %if.end24 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %zone) #16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %tuple) #16
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ctnetlink_stat_exp_cpu(ptr noundef %skb, ptr nocapture noundef readonly %info, ptr nocapture noundef readnone %cda) #2 align 64 {
entry:
  %c = alloca %struct.netlink_dump_control, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %nlh = getelementptr inbounds %struct.nfnl_info, ptr %info, i32 0, i32 2
  %0 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nlh, align 4
  %nlmsg_flags = getelementptr inbounds %struct.nlmsghdr, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %nlmsg_flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %nlmsg_flags, align 2
  %4 = and i16 %3, 768
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %netlink_dump_start.exit

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

netlink_dump_start.exit:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %c) #16
  %5 = call ptr @memcpy(ptr %c, ptr @__const.ctnetlink_stat_exp_cpu.c, i32 24)
  %sk = getelementptr inbounds %struct.nfnl_info, ptr %info, i32 0, i32 1
  %6 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sk, align 4
  %module.i = getelementptr inbounds %struct.netlink_dump_control, ptr %c, i32 0, i32 4
  %8 = ptrtoint ptr %module.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %module.i, align 4
  %call.i = call i32 @__netlink_dump_start(ptr noundef %7, ptr noundef %skb, ptr noundef %1, ptr noundef nonnull %c) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %c) #16
  br label %return

return:                                           ; preds = %netlink_dump_start.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call.i, %netlink_dump_start.exit ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__nf_ct_expect_find(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ctnetlink_parse_tuple_filter(ptr nocapture noundef readonly %cda, ptr noundef %tuple, i32 noundef %type, i8 noundef zeroext %l3num, ptr noundef %zone, i32 noundef %flags) unnamed_addr #2 align 64 {
entry:
  %tb.i91 = alloca [10 x ptr], align 4
  %tmp.i.i = alloca %struct.in6_addr, align 4
  %tmp13.i.i = alloca %struct.in6_addr, align 4
  %tb.i = alloca [5 x ptr], align 4
  %tb = alloca [4 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tb) #16
  %0 = getelementptr inbounds [4 x ptr], ptr %tb, i32 0, i32 1
  %1 = getelementptr inbounds [4 x ptr], ptr %tb, i32 0, i32 2
  %2 = getelementptr inbounds [4 x ptr], ptr %tb, i32 0, i32 3
  %3 = call ptr @memset(ptr %tb, i32 255, i32 16)
  %4 = call ptr @memset(ptr %tuple, i32 0, i32 40)
  %arrayidx = getelementptr ptr, ptr %cda, i32 %type
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %6, align 2
  %conv.i.i = zext i16 %8 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 3, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @tuple_nla_policy, i32 noundef 0, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = zext i8 %l3num to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.28)
  switch i8 %l3num, label %if.end.cleanup_crit_edge [
    i8 2, label %if.end.if.end7_crit_edge
    i8 10, label %if.end.if.end7_crit_edge119
  ]

if.end.if.end7_crit_edge119:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end7:                                          ; preds = %if.end.if.end7_crit_edge, %if.end.if.end7_crit_edge119
  %conv8 = zext i8 %l3num to i16
  %l3num9 = getelementptr inbounds %struct.nf_conntrack_man, ptr %tuple, i32 0, i32 2
  %10 = ptrtoint ptr %l3num9 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv8, ptr %l3num9, align 2
  %and = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and10 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  %11 = and i32 %flags, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %if.end7.if.end23_crit_edge, label %if.then12

if.end7.if.end23_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end23

if.then12:                                        ; preds = %if.end7
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %0, align 4
  %tobool14.not = icmp eq ptr %14, null
  br i1 %tobool14.not, label %if.then12.cleanup_crit_edge, label %if.end16

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end16:                                         ; preds = %if.then12
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tb.i) #16
  %15 = getelementptr inbounds [5 x ptr], ptr %tb.i, i32 0, i32 1
  %16 = getelementptr inbounds [5 x ptr], ptr %tb.i, i32 0, i32 2
  %17 = getelementptr inbounds [5 x ptr], ptr %tb.i, i32 0, i32 3
  %18 = getelementptr inbounds [5 x ptr], ptr %tb.i, i32 0, i32 4
  %add.ptr.i.i.i = getelementptr i8, ptr %14, i32 4
  %19 = call ptr @memset(ptr %tb.i, i32 255, i32 20)
  %20 = ptrtoint ptr %14 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %14, align 2
  %conv.i.i.i = zext i16 %21 to i32
  %sub.i.i.i = add nsw i32 %conv.i.i.i, -4
  %call2.i.i = call i32 @__nla_parse(ptr noundef nonnull %tb.i, i32 noundef 4, ptr noundef %add.ptr.i.i.i, i32 noundef %sub.i.i.i, ptr noundef null, i32 noundef 0, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp.i, label %if.end16.ctnetlink_parse_tuple_ip.exit.thread_crit_edge, label %if.end.i

if.end16.ctnetlink_parse_tuple_ip.exit.thread_crit_edge: ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  br label %ctnetlink_parse_tuple_ip.exit.thread

if.end.i:                                         ; preds = %if.end16
  %22 = ptrtoint ptr %14 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %14, align 2
  %conv.i.i.i.i = zext i16 %23 to i32
  %sub.i.i.i.i = add nsw i32 %conv.i.i.i.i, -4
  %call2.i.i.i = call i32 @__nla_validate(ptr noundef %add.ptr.i.i.i, i32 noundef %sub.i.i.i.i, i32 noundef 4, ptr noundef nonnull @cta_ip_nla_policy, i32 noundef 0, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool.not.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool.not.i, label %if.end3.i, label %ctnetlink_parse_tuple_ip.exit

if.end3.i:                                        ; preds = %if.end.i
  %24 = ptrtoint ptr %l3num9 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %l3num9, align 2
  %26 = zext i16 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.29)
  switch i16 %25, label %if.end3.i.ctnetlink_parse_tuple_ip.exit.thread112_crit_edge [
    i16 2, label %sw.bb.i
    i16 10, label %sw.bb6.i
  ]

if.end3.i.ctnetlink_parse_tuple_ip.exit.thread112_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ctnetlink_parse_tuple_ip.exit.thread112

sw.bb.i:                                          ; preds = %if.end3.i
  br i1 %tobool11.not, label %sw.bb.i.if.end4.i.i_crit_edge, label %if.then.i.i

sw.bb.i.if.end4.i.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.i.i

if.then.i.i:                                      ; preds = %sw.bb.i
  %27 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %15, align 4
  %tobool1.not.i.i = icmp eq ptr %28, null
  br i1 %tobool1.not.i.i, label %if.then.i.i.ctnetlink_parse_tuple_ip.exit.thread_crit_edge, label %if.end.i.i

if.then.i.i.ctnetlink_parse_tuple_ip.exit.thread_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ctnetlink_parse_tuple_ip.exit.thread

if.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i.i.i18.i = getelementptr i8, ptr %28, i32 4
  %29 = ptrtoint ptr %add.ptr.i.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr.i.i.i18.i, align 4
  %31 = ptrtoint ptr %tuple to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %tuple, align 4
  br label %if.end4.i.i

if.end4.i.i:                                      ; preds = %if.end.i.i, %sw.bb.i.if.end4.i.i_crit_edge
  br i1 %tobool.not, label %if.end4.i.i.ctnetlink_parse_tuple_ip.exit.thread112_crit_edge, label %if.then7.i.i

if.end4.i.i.ctnetlink_parse_tuple_ip.exit.thread112_crit_edge: ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ctnetlink_parse_tuple_ip.exit.thread112

if.then7.i.i:                                     ; preds = %if.end4.i.i
  %32 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %16, align 4
  %tobool9.not.i.i = icmp eq ptr %33, null
  br i1 %tobool9.not.i.i, label %if.then7.i.i.ctnetlink_parse_tuple_ip.exit.thread_crit_edge, label %if.end11.i.i

if.then7.i.i.ctnetlink_parse_tuple_ip.exit.thread_crit_edge: ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ctnetlink_parse_tuple_ip.exit.thread

if.end11.i.i:                                     ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i.i22.i.i = getelementptr i8, ptr %33, i32 4
  %34 = ptrtoint ptr %add.ptr.i.i22.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %add.ptr.i.i22.i.i, align 4
  %dst.i.i = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %tuple, i32 0, i32 1
  %36 = ptrtoint ptr %dst.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %dst.i.i, align 4
  br label %ctnetlink_parse_tuple_ip.exit.thread112

sw.bb6.i:                                         ; preds = %if.end3.i
  br i1 %tobool11.not, label %sw.bb6.i.if.end4.i27.i_crit_edge, label %if.then.i23.i

sw.bb6.i.if.end4.i27.i_crit_edge:                 ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.i27.i

if.then.i23.i:                                    ; preds = %sw.bb6.i
  %37 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %17, align 4
  %tobool1.not.i22.i = icmp eq ptr %38, null
  br i1 %tobool1.not.i22.i, label %if.then.i23.i.ctnetlink_parse_tuple_ip.exit.thread_crit_edge, label %if.end.i24.i

if.then.i23.i.ctnetlink_parse_tuple_ip.exit.thread_crit_edge: ; preds = %if.then.i23.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ctnetlink_parse_tuple_ip.exit.thread

if.end.i24.i:                                     ; preds = %if.then.i23.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i.i) #16
  %39 = call ptr @memset(ptr %tmp.i.i, i32 255, i32 16)
  %call.i.i.i = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i.i, ptr noundef nonnull %38, i32 noundef 16) #16
  %40 = call ptr @memcpy(ptr %tuple, ptr %tmp.i.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i.i) #16
  br label %if.end4.i27.i

if.end4.i27.i:                                    ; preds = %if.end.i24.i, %sw.bb6.i.if.end4.i27.i_crit_edge
  br i1 %tobool.not, label %if.end4.i27.i.ctnetlink_parse_tuple_ip.exit.thread112_crit_edge, label %if.then7.i30.i

if.end4.i27.i.ctnetlink_parse_tuple_ip.exit.thread112_crit_edge: ; preds = %if.end4.i27.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ctnetlink_parse_tuple_ip.exit.thread112

if.then7.i30.i:                                   ; preds = %if.end4.i27.i
  %41 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %18, align 4
  %tobool9.not.i29.i = icmp eq ptr %42, null
  br i1 %tobool9.not.i29.i, label %if.then7.i30.i.ctnetlink_parse_tuple_ip.exit.thread_crit_edge, label %if.end11.i32.i

if.then7.i30.i.ctnetlink_parse_tuple_ip.exit.thread_crit_edge: ; preds = %if.then7.i30.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ctnetlink_parse_tuple_ip.exit.thread

if.end11.i32.i:                                   ; preds = %if.then7.i30.i
  call void @__sanitizer_cov_trace_pc() #18
  %dst.i31.i = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %tuple, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp13.i.i) #16
  %43 = call ptr @memset(ptr %tmp13.i.i, i32 255, i32 16)
  %call.i21.i.i = call i32 @nla_memcpy(ptr noundef nonnull %tmp13.i.i, ptr noundef nonnull %42, i32 noundef 16) #16
  %44 = call ptr @memcpy(ptr %dst.i31.i, ptr %tmp13.i.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp13.i.i) #16
  br label %ctnetlink_parse_tuple_ip.exit.thread112

ctnetlink_parse_tuple_ip.exit.thread:             ; preds = %if.then7.i30.i.ctnetlink_parse_tuple_ip.exit.thread_crit_edge, %if.then.i23.i.ctnetlink_parse_tuple_ip.exit.thread_crit_edge, %if.then7.i.i.ctnetlink_parse_tuple_ip.exit.thread_crit_edge, %if.then.i.i.ctnetlink_parse_tuple_ip.exit.thread_crit_edge, %if.end16.ctnetlink_parse_tuple_ip.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -22, %if.then7.i30.i.ctnetlink_parse_tuple_ip.exit.thread_crit_edge ], [ -22, %if.then.i23.i.ctnetlink_parse_tuple_ip.exit.thread_crit_edge ], [ -22, %if.then7.i.i.ctnetlink_parse_tuple_ip.exit.thread_crit_edge ], [ -22, %if.then.i.i.ctnetlink_parse_tuple_ip.exit.thread_crit_edge ], [ %call2.i.i, %if.end16.ctnetlink_parse_tuple_ip.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tb.i) #16
  br label %cleanup

ctnetlink_parse_tuple_ip.exit.thread112:          ; preds = %if.end11.i32.i, %if.end4.i27.i.ctnetlink_parse_tuple_ip.exit.thread112_crit_edge, %if.end11.i.i, %if.end4.i.i.ctnetlink_parse_tuple_ip.exit.thread112_crit_edge, %if.end3.i.ctnetlink_parse_tuple_ip.exit.thread112_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tb.i) #16
  br label %if.end23

ctnetlink_parse_tuple_ip.exit:                    ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tb.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %cmp19 = icmp slt i32 %call2.i.i.i, 0
  br i1 %cmp19, label %ctnetlink_parse_tuple_ip.exit.cleanup_crit_edge, label %ctnetlink_parse_tuple_ip.exit.if.end23_crit_edge

ctnetlink_parse_tuple_ip.exit.if.end23_crit_edge: ; preds = %ctnetlink_parse_tuple_ip.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end23

ctnetlink_parse_tuple_ip.exit.cleanup_crit_edge:  ; preds = %ctnetlink_parse_tuple_ip.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end23:                                         ; preds = %ctnetlink_parse_tuple_ip.exit.if.end23_crit_edge, %ctnetlink_parse_tuple_ip.exit.thread112, %if.end7.if.end23_crit_edge
  %and24 = and i32 %flags, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.else, label %if.then26

if.then26:                                        ; preds = %if.end23
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 4
  %tobool28.not = icmp eq ptr %46, null
  br i1 %tobool28.not, label %if.then26.cleanup_crit_edge, label %if.end30

if.then26.cleanup_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end30:                                         ; preds = %if.then26
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %tb.i91) #16
  %47 = call ptr @memset(ptr %tb.i91, i32 255, i32 40)
  %add.ptr.i.i.i92 = getelementptr i8, ptr %46, i32 4
  %48 = ptrtoint ptr %46 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %46, align 2
  %conv.i.i.i93 = zext i16 %49 to i32
  %sub.i.i.i94 = add nsw i32 %conv.i.i.i93, -4
  %call2.i.i95 = call i32 @__nla_parse(ptr noundef nonnull %tb.i91, i32 noundef 9, ptr noundef %add.ptr.i.i.i92, i32 noundef %sub.i.i.i94, ptr noundef nonnull @proto_nla_policy, i32 noundef 0, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i95)
  %cmp.i96 = icmp slt i32 %call2.i.i95, 0
  br i1 %cmp.i96, label %if.end30.ctnetlink_parse_tuple_proto.exit.thread_crit_edge, label %if.end2.i

if.end30.ctnetlink_parse_tuple_proto.exit.thread_crit_edge: ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #18
  br label %ctnetlink_parse_tuple_proto.exit.thread

if.end2.i:                                        ; preds = %if.end30
  %arrayidx.i = getelementptr inbounds [10 x ptr], ptr %tb.i91, i32 0, i32 1
  %50 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.i, align 4
  %tobool3.not.i = icmp eq ptr %51, null
  br i1 %tobool3.not.i, label %if.end2.i.ctnetlink_parse_tuple_proto.exit.thread_crit_edge, label %if.end5.i

if.end2.i.ctnetlink_parse_tuple_proto.exit.thread_crit_edge: ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ctnetlink_parse_tuple_proto.exit.thread

if.end5.i:                                        ; preds = %if.end2.i
  %add.ptr.i.i34.i = getelementptr i8, ptr %51, i32 4
  %52 = ptrtoint ptr %add.ptr.i.i34.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %add.ptr.i.i34.i, align 1
  %protonum.i = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %tuple, i32 0, i32 1, i32 2
  %54 = ptrtoint ptr %protonum.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %protonum.i, align 2
  %55 = call i32 @llvm.read_register.i32(metadata !118) #16
  %and.i.i.i.i.i.i = and i32 %55, -16384
  %56 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %58, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !130
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i.i = call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i.i, label %if.end5.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end5.i.rcu_read_lock.exit.i_crit_edge:         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end5.i
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i99 = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i99, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i100

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i

if.then.i.i100:                                   ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 696, ptr noundef nonnull @.str.1) #16
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i100, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end5.i.rcu_read_lock.exit.i_crit_edge
  %59 = ptrtoint ptr %protonum.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %protonum.i, align 2
  %call10.i = call ptr @nf_ct_l4proto_find(i8 noundef zeroext %60) #16
  %nlattr_to_tuple.i = getelementptr inbounds %struct.nf_conntrack_l4proto, ptr %call10.i, i32 0, i32 8
  %61 = ptrtoint ptr %nlattr_to_tuple.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %nlattr_to_tuple.i, align 4
  %tobool11.not.i = icmp eq ptr %62, null
  br i1 %tobool11.not.i, label %rcu_read_lock.exit.i.if.end22.i_crit_edge, label %if.then14.i, !prof !129

rcu_read_lock.exit.i.if.end22.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end22.i

if.then14.i:                                      ; preds = %rcu_read_lock.exit.i
  %nla_policy.i = getelementptr inbounds %struct.nf_conntrack_l4proto, ptr %call10.i, i32 0, i32 9
  %63 = ptrtoint ptr %nla_policy.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %nla_policy.i, align 4
  %65 = ptrtoint ptr %46 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %46, align 2
  %conv.i.i.i.i101 = zext i16 %66 to i32
  %sub.i.i.i.i102 = add nsw i32 %conv.i.i.i.i101, -4
  %call2.i.i.i103 = call i32 @__nla_validate(ptr noundef %add.ptr.i.i.i92, i32 noundef %sub.i.i.i.i102, i32 noundef 9, ptr noundef %64, i32 noundef 0, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i103)
  %cmp16.i = icmp eq i32 %call2.i.i.i103, 0
  br i1 %cmp16.i, label %if.then17.i, label %if.then14.i.if.end22.i_crit_edge

if.then14.i.if.end22.i_crit_edge:                 ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end22.i

if.then17.i:                                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #18
  %67 = ptrtoint ptr %nlattr_to_tuple.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %nlattr_to_tuple.i, align 4
  %call20.i = call i32 %68(ptr noundef nonnull %tb.i91, ptr noundef %tuple, i32 noundef %flags) #16
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then17.i, %if.then14.i.if.end22.i_crit_edge, %rcu_read_lock.exit.i.if.end22.i_crit_edge
  %ret.0.i = phi i32 [ %call20.i, %if.then17.i ], [ %call2.i.i.i103, %if.then14.i.if.end22.i_crit_edge ], [ %call2.i.i95, %rcu_read_lock.exit.i.if.end22.i_crit_edge ]
  %call.i35.i = call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i35.i, label %if.end22.i.ctnetlink_parse_tuple_proto.exit_crit_edge, label %land.lhs.true.i38.i

if.end22.i.ctnetlink_parse_tuple_proto.exit_crit_edge: ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ctnetlink_parse_tuple_proto.exit

land.lhs.true.i38.i:                              ; preds = %if.end22.i
  %call1.i36.i = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i36.i)
  %tobool.not.i37.i = icmp eq i32 %call1.i36.i, 0
  br i1 %tobool.not.i37.i, label %land.lhs.true.i38.i.ctnetlink_parse_tuple_proto.exit_crit_edge, label %land.lhs.true2.i40.i

land.lhs.true.i38.i.ctnetlink_parse_tuple_proto.exit_crit_edge: ; preds = %land.lhs.true.i38.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ctnetlink_parse_tuple_proto.exit

land.lhs.true2.i40.i:                             ; preds = %land.lhs.true.i38.i
  %.b4.i39.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i39.i, label %land.lhs.true2.i40.i.ctnetlink_parse_tuple_proto.exit_crit_edge, label %if.then.i41.i

land.lhs.true2.i40.i.ctnetlink_parse_tuple_proto.exit_crit_edge: ; preds = %land.lhs.true2.i40.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ctnetlink_parse_tuple_proto.exit

if.then.i41.i:                                    ; preds = %land.lhs.true2.i40.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 724, ptr noundef nonnull @.str.2) #16
  br label %ctnetlink_parse_tuple_proto.exit

ctnetlink_parse_tuple_proto.exit.thread:          ; preds = %if.end2.i.ctnetlink_parse_tuple_proto.exit.thread_crit_edge, %if.end30.ctnetlink_parse_tuple_proto.exit.thread_crit_edge
  %retval.0.i104.ph = phi i32 [ -22, %if.end2.i.ctnetlink_parse_tuple_proto.exit.thread_crit_edge ], [ %call2.i.i95, %if.end30.ctnetlink_parse_tuple_proto.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %tb.i91) #16
  br label %cleanup

ctnetlink_parse_tuple_proto.exit:                 ; preds = %if.then.i41.i, %land.lhs.true2.i40.i.ctnetlink_parse_tuple_proto.exit_crit_edge, %land.lhs.true.i38.i.ctnetlink_parse_tuple_proto.exit_crit_edge, %if.end22.i.ctnetlink_parse_tuple_proto.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !131
  %69 = call i32 @llvm.read_register.i32(metadata !118) #16
  %and.i.i.i.i.i42.i = and i32 %69, -16384
  %70 = inttoptr i32 %and.i.i.i.i.i42.i to ptr
  %preempt_count.i.i.i.i43.i = getelementptr inbounds %struct.thread_info, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %preempt_count.i.i.i.i43.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %preempt_count.i.i.i.i43.i, align 4
  %sub.i.i.i44.i = add i32 %72, -1
  store volatile i32 %sub.i.i.i44.i, ptr %preempt_count.i.i.i.i43.i, align 4
  call void @rcu_read_unlock_strict() #16
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %tb.i91) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp33 = icmp slt i32 %ret.0.i, 0
  br i1 %cmp33, label %ctnetlink_parse_tuple_proto.exit.cleanup_crit_edge, label %ctnetlink_parse_tuple_proto.exit.if.end41_crit_edge

ctnetlink_parse_tuple_proto.exit.if.end41_crit_edge: ; preds = %ctnetlink_parse_tuple_proto.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end41

ctnetlink_parse_tuple_proto.exit.cleanup_crit_edge: ; preds = %ctnetlink_parse_tuple_proto.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.else:                                          ; preds = %if.end23
  %and37 = and i32 %flags, 4080
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.else.if.end41_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.else.if.end41_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end41

if.end41:                                         ; preds = %if.else.if.end41_crit_edge, %ctnetlink_parse_tuple_proto.exit.if.end41_crit_edge
  %and42 = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.end41.if.end57_crit_edge, label %land.lhs.true44

if.end41.if.end57_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end57

land.lhs.true44:                                  ; preds = %if.end41
  %73 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %2, align 4
  %tobool46.not = icmp eq ptr %74, null
  br i1 %tobool46.not, label %land.lhs.true44.if.end57_crit_edge, label %if.then47

land.lhs.true44.if.end57_crit_edge:               ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end57

if.then47:                                        ; preds = %land.lhs.true44
  %tobool48.not = icmp eq ptr %zone, null
  br i1 %tobool48.not, label %if.then47.cleanup_crit_edge, label %if.end50

if.then47.cleanup_crit_edge:                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end50:                                         ; preds = %if.then47
  %75 = ptrtoint ptr %zone to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %zone, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %76)
  %cmp.not.i = icmp eq i16 %76, 0
  br i1 %cmp.not.i, label %ctnetlink_parse_tuple_zone.exit, label %if.end50.cleanup_crit_edge

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

ctnetlink_parse_tuple_zone.exit:                  ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #18
  %77 = ptrtoint ptr %zone to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 0, ptr %zone, align 2
  %flags2.i.i.i = getelementptr inbounds %struct.nf_conntrack_zone, ptr %zone, i32 0, i32 1
  %78 = ptrtoint ptr %flags2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 0, ptr %flags2.i.i.i, align 2
  %dir3.i.i.i = getelementptr inbounds %struct.nf_conntrack_zone, ptr %zone, i32 0, i32 2
  %79 = ptrtoint ptr %dir3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 3, ptr %dir3.i.i.i, align 1
  %add.ptr.i.i.i.i = getelementptr i8, ptr %74, i32 4
  %80 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %add.ptr.i.i.i.i, align 2
  store i16 %81, ptr %zone, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type)
  %cmp6.i = icmp eq i32 %type, 2
  %..i = select i1 %cmp6.i, i8 2, i8 1
  %82 = ptrtoint ptr %dir3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %..i, ptr %dir3.i.i.i, align 1
  br label %if.end57

if.end57:                                         ; preds = %ctnetlink_parse_tuple_zone.exit, %land.lhs.true44.if.end57_crit_edge, %if.end41.if.end57_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type)
  %cmp58 = icmp eq i32 %type, 2
  %dir = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %tuple, i32 0, i32 1, i32 3
  br i1 %cmp58, label %if.then60, label %if.else61

if.then60:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #18
  %83 = ptrtoint ptr %dir to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 1, ptr %dir, align 1
  br label %cleanup

if.else61:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #18
  %84 = ptrtoint ptr %dir to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %dir, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.else61, %if.then60, %if.end50.cleanup_crit_edge, %if.then47.cleanup_crit_edge, %if.else.cleanup_crit_edge, %ctnetlink_parse_tuple_proto.exit.cleanup_crit_edge, %ctnetlink_parse_tuple_proto.exit.thread, %if.then26.cleanup_crit_edge, %ctnetlink_parse_tuple_ip.exit.cleanup_crit_edge, %ctnetlink_parse_tuple_ip.exit.thread, %if.then12.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2.i, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ -22, %if.then12.cleanup_crit_edge ], [ %call2.i.i.i, %ctnetlink_parse_tuple_ip.exit.cleanup_crit_edge ], [ -22, %if.then26.cleanup_crit_edge ], [ %ret.0.i, %ctnetlink_parse_tuple_proto.exit.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ -22, %if.then47.cleanup_crit_edge ], [ 0, %if.else61 ], [ 0, %if.then60 ], [ %retval.0.i.ph, %ctnetlink_parse_tuple_ip.exit.thread ], [ %retval.0.i104.ph, %ctnetlink_parse_tuple_proto.exit.thread ], [ -22, %if.end50.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tb) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_validate(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nf_conntrack_find_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__nf_conntrack_helper_find(ptr noundef, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ctnetlink_alloc_expect(ptr nocapture noundef readonly %cda, ptr noundef %ct, ptr noundef %helper, ptr nocapture noundef readonly %tuple, ptr nocapture noundef readonly %mask) unnamed_addr #2 align 64 {
entry:
  %tb.i = alloca [3 x ptr], align 4
  %nat_tuple.i = alloca %struct.nf_conntrack_tuple, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %ext.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 13
  %0 = ptrtoint ptr %ext.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ext.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i, label %entry.cleanup60_crit_edge, label %nf_ct_ext_exist.exit.i.i

entry.cleanup60_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup60

nf_ct_ext_exist.exit.i.i:                         ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.i.i.not.i.i = icmp eq i8 %3, 0
  %conv.i.i = zext i8 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %tobool.not = icmp eq ptr %add.ptr.i.i, null
  %or.cond107 = select i1 %tobool.i.i.not.i.i, i1 true, i1 %tobool.not
  br i1 %or.cond107, label %nf_ct_ext_exist.exit.i.i.cleanup60_crit_edge, label %if.end

nf_ct_ext_exist.exit.i.i.cleanup60_crit_edge:     ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup60

if.end:                                           ; preds = %nf_ct_ext_exist.exit.i.i
  %arrayidx = getelementptr ptr, ptr %cda, i32 9
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool2.not = icmp eq ptr %5, null
  %tobool3.not = icmp eq ptr %helper, null
  %or.cond = or i1 %tobool3.not, %tobool2.not
  br i1 %or.cond, label %if.end.if.end10_crit_edge, label %if.then4

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10

if.then4:                                         ; preds = %if.end
  %add.ptr.i.i98 = getelementptr i8, ptr %5, i32 4
  %6 = ptrtoint ptr %add.ptr.i.i98 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i.i98, align 4
  %expect_class_max = getelementptr inbounds %struct.nf_conntrack_helper, ptr %helper, i32 0, i32 10
  %8 = ptrtoint ptr %expect_class_max to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %expect_class_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp = icmp ugt i32 %7, %9
  br i1 %cmp, label %if.then4.cleanup60_crit_edge, label %if.then4.if.end10_crit_edge

if.then4.if.end10_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10

if.then4.cleanup60_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup60

if.end10:                                         ; preds = %if.then4.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %class.0 = phi i32 [ %7, %if.then4.if.end10_crit_edge ], [ 0, %if.end.if.end10_crit_edge ]
  %call11 = tail call ptr @nf_ct_expect_alloc(ptr noundef %ct) #16
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.end10.cleanup60_crit_edge, label %if.end15

if.end10.cleanup60_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup60

if.end15:                                         ; preds = %if.end10
  %arrayidx16 = getelementptr ptr, ptr %cda, i32 8
  %10 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx16, align 4
  %tobool17.not = icmp eq ptr %11, null
  br i1 %tobool17.not, label %if.end15.if.end23_crit_edge, label %if.then18

if.end15.if.end23_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end23

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i.i99 = getelementptr i8, ptr %11, i32 4
  %12 = ptrtoint ptr %add.ptr.i.i99 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i.i99, align 4
  %and = and i32 %13, -5
  br label %if.end23

if.end23:                                         ; preds = %if.then18, %if.end15.if.end23_crit_edge
  %and.sink = phi i32 [ %and, %if.then18 ], [ 0, %if.end15.if.end23_crit_edge ]
  %14 = getelementptr inbounds %struct.nf_conntrack_expect, ptr %call11, i32 0, i32 9
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and.sink, ptr %14, align 4
  %arrayidx24 = getelementptr ptr, ptr %cda, i32 11
  %16 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx24, align 4
  %tobool25.not = icmp eq ptr %17, null
  br i1 %tobool25.not, label %if.end23.if.end37_crit_edge, label %if.then26

if.end23.if.end37_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end37

if.then26:                                        ; preds = %if.end23
  %add.ptr.i = getelementptr i8, ptr %17, i32 4
  %call29 = tail call ptr @nf_ct_helper_expectfn_find_by_name(ptr noundef %add.ptr.i) #16
  %cmp30 = icmp eq ptr %call29, null
  br i1 %cmp30, label %if.then26.err_out_crit_edge, label %cleanup.thread

if.then26.err_out_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_out

cleanup.thread:                                   ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #18
  %expectfn = getelementptr inbounds %struct.nf_ct_helper_expectfn, ptr %call29, i32 0, i32 2
  %18 = ptrtoint ptr %expectfn to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %expectfn, align 4
  br label %if.end37

if.end37:                                         ; preds = %cleanup.thread, %if.end23.if.end37_crit_edge
  %.sink = phi ptr [ %19, %cleanup.thread ], [ null, %if.end23.if.end37_crit_edge ]
  %expectfn33 = getelementptr inbounds %struct.nf_conntrack_expect, ptr %call11, i32 0, i32 4
  %20 = ptrtoint ptr %expectfn33 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %.sink, ptr %expectfn33, align 4
  %class38 = getelementptr inbounds %struct.nf_conntrack_expect, ptr %call11, i32 0, i32 10
  %21 = ptrtoint ptr %class38 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %class.0, ptr %class38, align 4
  %master = getelementptr inbounds %struct.nf_conntrack_expect, ptr %call11, i32 0, i32 6
  %22 = ptrtoint ptr %master to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %ct, ptr %master, align 4
  %helper39 = getelementptr inbounds %struct.nf_conntrack_expect, ptr %call11, i32 0, i32 5
  %23 = ptrtoint ptr %helper39 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %helper, ptr %helper39, align 4
  %tuple40 = getelementptr inbounds %struct.nf_conntrack_expect, ptr %call11, i32 0, i32 2
  %24 = call ptr @memcpy(ptr %tuple40, ptr %tuple, i32 40)
  %mask41 = getelementptr inbounds %struct.nf_conntrack_expect, ptr %call11, i32 0, i32 3
  %25 = call ptr @memcpy(ptr %mask41, ptr %mask, i32 16)
  %u = getelementptr inbounds %struct.nf_conntrack_man, ptr %mask, i32 0, i32 1
  %26 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %u, align 4
  %u47 = getelementptr inbounds %struct.nf_conntrack_expect, ptr %call11, i32 0, i32 3, i32 0, i32 1
  %28 = ptrtoint ptr %u47 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %u47, align 4
  %arrayidx48 = getelementptr ptr, ptr %cda, i32 10
  %29 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx48, align 4
  %tobool49.not = icmp eq ptr %30, null
  br i1 %tobool49.not, label %if.end37.cleanup60_crit_edge, label %if.then50

if.end37.cleanup60_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup60

if.then50:                                        ; preds = %if.end37
  %l3num.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 0, i32 1, i32 0, i32 2
  %31 = ptrtoint ptr %l3num.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %l3num.i, align 2
  %conv = trunc i16 %32 to i8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tb.i) #16
  %33 = ptrtoint ptr %tb.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 -1 to ptr), ptr %tb.i, align 4, !annotation !128
  %34 = getelementptr inbounds [3 x ptr], ptr %tb.i, i32 0, i32 1
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 -1 to ptr), ptr %34, align 4, !annotation !128
  %36 = getelementptr inbounds [3 x ptr], ptr %tb.i, i32 0, i32 2
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 -1 to ptr), ptr %36, align 4, !annotation !128
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %nat_tuple.i) #16
  %38 = call ptr @memset(ptr %nat_tuple.i, i32 0, i32 40)
  %add.ptr.i.i.i = getelementptr i8, ptr %30, i32 4
  %39 = ptrtoint ptr %30 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %30, align 2
  %conv.i.i.i = zext i16 %40 to i32
  %sub.i.i.i = add nsw i32 %conv.i.i.i, -4
  %call2.i.i = call i32 @__nla_parse(ptr noundef nonnull %tb.i, i32 noundef 2, ptr noundef %add.ptr.i.i.i, i32 noundef %sub.i.i.i, ptr noundef nonnull @exp_nat_nla_policy, i32 noundef 0, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp.i, label %if.then50.ctnetlink_parse_expect_nat.exit.thread_crit_edge, label %if.end.i

if.then50.ctnetlink_parse_expect_nat.exit.thread_crit_edge: ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #18
  br label %ctnetlink_parse_expect_nat.exit.thread

if.end.i:                                         ; preds = %if.then50
  %41 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %34, align 4
  %tobool.not.i = icmp eq ptr %42, null
  br i1 %tobool.not.i, label %if.end.i.ctnetlink_parse_expect_nat.exit.thread_crit_edge, label %lor.lhs.false.i

if.end.i.ctnetlink_parse_expect_nat.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ctnetlink_parse_expect_nat.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end.i
  %43 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %36, align 4
  %tobool2.not.i = icmp eq ptr %44, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.ctnetlink_parse_expect_nat.exit.thread_crit_edge, label %if.end4.i

lor.lhs.false.i.ctnetlink_parse_expect_nat.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ctnetlink_parse_expect_nat.exit.thread

if.end4.i:                                        ; preds = %lor.lhs.false.i
  %call.i.i = call fastcc i32 @ctnetlink_parse_tuple_filter(ptr noundef nonnull %tb.i, ptr noundef nonnull %nat_tuple.i, i32 noundef 2, i8 noundef zeroext %conv, ptr noundef null, i32 noundef 4095) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp7.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp7.i, label %if.end4.i.ctnetlink_parse_expect_nat.exit.thread_crit_edge, label %ctnetlink_parse_expect_nat.exit

if.end4.i.ctnetlink_parse_expect_nat.exit.thread_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ctnetlink_parse_expect_nat.exit.thread

ctnetlink_parse_expect_nat.exit.thread:           ; preds = %if.end4.i.ctnetlink_parse_expect_nat.exit.thread_crit_edge, %lor.lhs.false.i.ctnetlink_parse_expect_nat.exit.thread_crit_edge, %if.end.i.ctnetlink_parse_expect_nat.exit.thread_crit_edge, %if.then50.ctnetlink_parse_expect_nat.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i.i, %if.end4.i.ctnetlink_parse_expect_nat.exit.thread_crit_edge ], [ -22, %if.end.i.ctnetlink_parse_expect_nat.exit.thread_crit_edge ], [ -22, %lor.lhs.false.i.ctnetlink_parse_expect_nat.exit.thread_crit_edge ], [ %call2.i.i, %if.then50.ctnetlink_parse_expect_nat.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %nat_tuple.i) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tb.i) #16
  br label %err_out

ctnetlink_parse_expect_nat.exit:                  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #18
  %saved_addr.i = getelementptr inbounds %struct.nf_conntrack_expect, ptr %call11, i32 0, i32 11
  %45 = call ptr @memcpy(ptr %saved_addr.i, ptr %nat_tuple.i, i32 16)
  %saved_proto.i = getelementptr inbounds %struct.nf_conntrack_expect, ptr %call11, i32 0, i32 12
  %u.i = getelementptr inbounds %struct.nf_conntrack_man, ptr %nat_tuple.i, i32 0, i32 1
  %46 = ptrtoint ptr %u.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %u.i, align 4
  %48 = ptrtoint ptr %saved_proto.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %saved_proto.i, align 4
  %49 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %34, align 4
  %add.ptr.i.i21.i = getelementptr i8, ptr %50, i32 4
  %51 = ptrtoint ptr %add.ptr.i.i21.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %add.ptr.i.i21.i, align 4
  %dir.i = getelementptr inbounds %struct.nf_conntrack_expect, ptr %call11, i32 0, i32 13
  %53 = ptrtoint ptr %dir.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %dir.i, align 4
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %nat_tuple.i) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tb.i) #16
  br label %cleanup60

err_out:                                          ; preds = %ctnetlink_parse_expect_nat.exit.thread, %if.then26.err_out_crit_edge
  %err.1 = phi i32 [ -22, %if.then26.err_out_crit_edge ], [ %retval.0.i.ph, %ctnetlink_parse_expect_nat.exit.thread ]
  call void @nf_ct_expect_put(ptr noundef nonnull %call11) #16
  %54 = inttoptr i32 %err.1 to ptr
  br label %cleanup60

cleanup60:                                        ; preds = %err_out, %ctnetlink_parse_expect_nat.exit, %if.end37.cleanup60_crit_edge, %if.end10.cleanup60_crit_edge, %if.then4.cleanup60_crit_edge, %nf_ct_ext_exist.exit.i.i.cleanup60_crit_edge, %entry.cleanup60_crit_edge
  %retval.0 = phi ptr [ %54, %err_out ], [ %call11, %ctnetlink_parse_expect_nat.exit ], [ %call11, %if.end37.cleanup60_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then4.cleanup60_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end10.cleanup60_crit_edge ], [ inttoptr (i32 -95 to ptr), %nf_ct_ext_exist.exit.i.i.cleanup60_crit_edge ], [ inttoptr (i32 -95 to ptr), %entry.cleanup60_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_ct_expect_related_report(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_expect_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nf_ct_put(ptr noundef %ct) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %tobool.not = icmp eq ptr %ct, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %ct, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !133
  tail call void @llvm.prefetch.p0(ptr nonnull %ct, i32 1, i32 3, i32 1) #16
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %ct, ptr nonnull %ct, i32 1, ptr nonnull elementtype(i32) %ct) #16, !srcloc !134
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !135

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef nonnull %ct, i32 noundef 3) #16
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !136
  tail call void @nf_ct_destroy(ptr noundef nonnull %ct) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nf_ct_expect_alloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nf_ct_helper_expectfn_find_by_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ctnetlink_exp_dump_table(ptr noundef %skb, ptr nocapture noundef %cb) #2 align 64 {
entry:
  %old.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %5 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nlh, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 16
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %add.ptr.i, align 2
  %9 = tail call i32 @llvm.read_register.i32(metadata !118) #16
  %and.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %12, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !130
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 696, ptr noundef nonnull @.str.1) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %13 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %arrayidx = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 1
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %16 = inttoptr i32 %15 to ptr
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %13, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nf_ct_expect_hsize to i32))
  %19 = load i32, ptr @nf_ct_expect_hsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %19)
  %cmp125 = icmp ult i32 %18, %19
  br i1 %cmp125, label %restart.preheader.lr.ph, label %rcu_read_lock.exit.out_crit_edge

rcu_read_lock.exit.out_crit_edge:                 ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

restart.preheader.lr.ph:                          ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool20.not = icmp eq i8 %8, 0
  %20 = zext i8 %8 to i16
  br label %restart

restart:                                          ; preds = %restart.backedge, %restart.preheader.lr.ph
  %call3 = call i32 @rcu_read_lock_any_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %land.lhs.true, label %restart.do.end_crit_edge

restart.do.end_crit_edge:                         ; preds = %restart
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true:                                    ; preds = %restart
  %call4 = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true6

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b107 = load i1, ptr @ctnetlink_exp_dump_table.__warned, align 1
  br i1 %.b107, label %land.lhs.true6.do.end_crit_edge, label %if.then

land.lhs.true6.do.end_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @ctnetlink_exp_dump_table.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 3183, ptr noundef nonnull @.str.9) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true6.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %restart.do.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nf_ct_expect_hash to i32))
  %21 = load ptr, ptr @nf_ct_expect_hash, align 4
  %22 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %13, align 4
  %arrayidx12 = getelementptr %struct.hlist_head, ptr %21, i32 %23
  %24 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %arrayidx12, align 4
  %tobool15.not = icmp eq ptr %25, null
  %add.ptr = getelementptr i8, ptr %25, i32 -8
  %tobool18.not122127 = icmp eq ptr %add.ptr, null
  %tobool18.not122 = or i1 %tobool15.not, %tobool18.not122127
  br i1 %tobool18.not122, label %do.end.for.end_crit_edge, label %do.end.for.body19_crit_edge

do.end.for.body19_crit_edge:                      ; preds = %do.end
  br label %for.body19

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body19:                                       ; preds = %for.inc.for.body19_crit_edge, %do.end.for.body19_crit_edge
  %exp.0123 = phi ptr [ %add.ptr65, %for.inc.for.body19_crit_edge ], [ %add.ptr, %do.end.for.body19_crit_edge ]
  br i1 %tobool20.not, label %for.body19.if.end27_crit_edge, label %land.lhs.true21

for.body19.if.end27_crit_edge:                    ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end27

land.lhs.true21:                                  ; preds = %for.body19
  %l3num = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp.0123, i32 0, i32 2, i32 0, i32 2
  %26 = ptrtoint ptr %l3num to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %l3num, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %27, i16 %20)
  %cmp24.not = icmp eq i16 %27, %20
  br i1 %cmp24.not, label %land.lhs.true21.if.end27_crit_edge, label %land.lhs.true21.for.inc_crit_edge

land.lhs.true21.for.inc_crit_edge:                ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

land.lhs.true21.if.end27_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end27

if.end27:                                         ; preds = %land.lhs.true21.if.end27_crit_edge, %for.body19.if.end27_crit_edge
  %master = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp.0123, i32 0, i32 6
  %28 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %master, align 4
  %ct_net.i = getelementptr inbounds %struct.nf_conn, ptr %29, i32 0, i32 7
  %30 = ptrtoint ptr %ct_net.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ct_net.i, align 4
  %cmp.i.not = icmp eq ptr %31, %4
  br i1 %cmp.i.not, label %if.end32, label %if.end27.for.inc_crit_edge

if.end27.for.inc_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end32:                                         ; preds = %if.end27
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool34.not = icmp eq i32 %33, 0
  br i1 %tobool34.not, label %if.end32.if.end41_crit_edge, label %if.then35

if.end32.if.end41_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end41

if.then35:                                        ; preds = %if.end32
  %cmp36.not = icmp eq ptr %exp.0123, %16
  br i1 %cmp36.not, label %if.end39, label %if.then35.for.inc_crit_edge

if.then35.for.inc_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end39:                                         ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #18
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %arrayidx, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.end39, %if.end32.if.end41_crit_edge
  %35 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cb, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %36, i32 0, i32 3, i32 12
  %37 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %portid, align 4
  %39 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %nlmsg_seq, align 4
  %call45 = call fastcc i32 @ctnetlink_exp_fill_info(ptr noundef %skb, i32 noundef %38, i32 noundef %42, ptr noundef nonnull %exp.0123)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %if.then48, label %if.end41.for.inc_crit_edge

if.end41.for.inc_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then48:                                        ; preds = %if.end41
  %use = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp.0123, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #16
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %use, i32 noundef 4) #16
  %43 = ptrtoint ptr %use to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %use, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %if.then48
  %45 = phi i32 [ %44, %if.then48 ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %46 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i.i.i = icmp eq i32 %45, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i109 = add i32 %45, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %use, i32 noundef 4) #16
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #16
  %47 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %use, i32 1, i32 3, i32 1) #16
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %49 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %use, ptr %use, i32 %48, i32 %add.i.i.i109, ptr elementtype(i32) %use) #16, !srcloc !137
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %49, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %49, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %48
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !135

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %50 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %51, 1
  %52 = or i32 %add5.i.i.i, %51
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %52)
  %.not.i.i.i = icmp sgt i32 %52, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !135

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @refcount_warn_saturate(ptr noundef %use, i32 noundef 0) #16
  %53 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %.pr = load i32, ptr %old.i.i.i, align 4
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %54 = phi i32 [ %51, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool12.i.i.i.not = icmp eq i32 %54, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #16
  br i1 %tobool12.i.i.i.not, label %refcount_inc_not_zero.exit.for.inc_crit_edge, label %if.end51

refcount_inc_not_zero.exit.for.inc_crit_edge:     ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end51:                                         ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #18
  %55 = ptrtoint ptr %exp.0123 to i32
  %56 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %arrayidx, align 4
  br label %out

for.inc:                                          ; preds = %refcount_inc_not_zero.exit.for.inc_crit_edge, %if.end41.for.inc_crit_edge, %if.then35.for.inc_crit_edge, %if.end27.for.inc_crit_edge, %land.lhs.true21.for.inc_crit_edge
  %hnode = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp.0123, i32 0, i32 1
  %57 = ptrtoint ptr %hnode to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile ptr, ptr %hnode, align 4
  %tobool61.not = icmp eq ptr %58, null
  %add.ptr65 = getelementptr i8, ptr %58, i32 -8
  %tobool18.not129 = icmp eq ptr %add.ptr65, null
  %tobool18.not = or i1 %tobool61.not, %tobool18.not129
  br i1 %tobool18.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body19_crit_edge

for.inc.for.body19_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body19

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  %59 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool70.not = icmp eq i32 %60, 0
  br i1 %tobool70.not, label %for.inc74, label %if.then71

if.then71:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  %61 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %arrayidx, align 4
  br label %restart.backedge

restart.backedge:                                 ; preds = %for.inc74.restart.backedge_crit_edge, %if.then71
  br label %restart

for.inc74:                                        ; preds = %for.end
  %62 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %13, align 4
  %inc = add i32 %63, 1
  store i32 %inc, ptr %13, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nf_ct_expect_hsize to i32))
  %64 = load i32, ptr @nf_ct_expect_hsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %64)
  %cmp = icmp ult i32 %inc, %64
  br i1 %cmp, label %for.inc74.restart.backedge_crit_edge, label %for.inc74.out_crit_edge

for.inc74.out_crit_edge:                          ; preds = %for.inc74
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

for.inc74.restart.backedge_crit_edge:             ; preds = %for.inc74
  call void @__sanitizer_cov_trace_pc() #18
  br label %restart.backedge

out:                                              ; preds = %for.inc74.out_crit_edge, %if.end51, %rcu_read_lock.exit.out_crit_edge
  %call.i110 = call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i110, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i113

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true.i113:                               ; preds = %out
  %call1.i111 = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i111)
  %tobool.not.i112 = icmp eq i32 %call1.i111, 0
  br i1 %tobool.not.i112, label %land.lhs.true.i113.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i115

land.lhs.true.i113.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i113
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true2.i115:                              ; preds = %land.lhs.true.i113
  %.b4.i114 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i114, label %land.lhs.true2.i115.rcu_read_unlock.exit_crit_edge, label %if.then.i116

land.lhs.true2.i115.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i115
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

if.then.i116:                                     ; preds = %land.lhs.true2.i115
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 724, ptr noundef nonnull @.str.2) #16
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i116, %land.lhs.true2.i115.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i113.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !131
  %65 = call i32 @llvm.read_register.i32(metadata !118) #16
  %and.i.i.i.i.i117 = and i32 %65, -16384
  %66 = inttoptr i32 %and.i.i.i.i.i117 to ptr
  %preempt_count.i.i.i.i118 = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %preempt_count.i.i.i.i118 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %preempt_count.i.i.i.i118, align 4
  %sub.i.i.i = add i32 %68, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i118, align 4
  call void @rcu_read_unlock_strict() #16
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool77.not = icmp eq i32 %15, 0
  br i1 %tobool77.not, label %rcu_read_unlock.exit.if.end79_crit_edge, label %if.then78

rcu_read_unlock.exit.if.end79_crit_edge:          ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end79

if.then78:                                        ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #18
  call void @nf_ct_expect_put(ptr noundef nonnull %16) #16
  br label %if.end79

if.end79:                                         ; preds = %if.then78, %rcu_read_unlock.exit.if.end79_crit_edge
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %69 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %len, align 4
  ret i32 %70
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ctnetlink_exp_done(ptr nocapture noundef readonly %cb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %2 = inttoptr i32 %1 to ptr
  tail call void @nf_ct_expect_put(ptr noundef nonnull %2) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nf_ct_expect_find_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ctnetlink_exp_fill_info(ptr noundef %skb, i32 noundef %portid, i32 noundef %seq, ptr noundef %exp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %portid)
  %tobool.not = icmp eq i32 %portid, 0
  %cond = select i1 %tobool.not, i32 0, i32 2
  %l3num = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 2, i32 0, i32 2
  %0 = ptrtoint ptr %l3num to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %l3num, align 2
  %conv2 = trunc i16 %1 to i8
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.not.i.i.i = icmp eq i32 %3, 0
  br i1 %tobool.i.not.i.i.i, label %skb_tailroom.exit.i.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

skb_tailroom.exit.i.i:                            ; preds = %entry
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %4 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %end.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %6 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.ptr.sub.i.i.i)
  %cmp.i.i = icmp slt i32 %sub.ptr.sub.i.i.i, 20
  br i1 %cmp.i.i, label %skb_tailroom.exit.i.i.cleanup_crit_edge, label %nlmsg_put.exit.i, !prof !129

skb_tailroom.exit.i.i.cleanup_crit_edge:          ; preds = %skb_tailroom.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

nlmsg_put.exit.i:                                 ; preds = %skb_tailroom.exit.i.i
  %call3.i.i = tail call ptr @__nlmsg_put(ptr noundef %skb, i32 noundef %portid, i32 noundef %seq, i32 noundef 512, i32 noundef 4, i32 noundef %cond) #16
  %tobool.not.i = icmp eq ptr %call3.i.i, null
  br i1 %tobool.not.i, label %nlmsg_put.exit.i.cleanup_crit_edge, label %if.end

nlmsg_put.exit.i.cleanup_crit_edge:               ; preds = %nlmsg_put.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %nlmsg_put.exit.i
  %add.ptr.i.i.i = getelementptr i8, ptr %call3.i.i, i32 16
  %8 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv2, ptr %add.ptr.i.i.i, align 2
  %version1.i.i = getelementptr i8, ptr %call3.i.i, i32 17
  %9 = ptrtoint ptr %version1.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %version1.i.i, align 1
  %res_id2.i.i = getelementptr i8, ptr %call3.i.i, i32 18
  %10 = ptrtoint ptr %res_id2.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %res_id2.i.i, align 2
  %call5 = tail call fastcc i32 @ctnetlink_exp_dump_expect(ptr noundef %skb, ptr noundef %exp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %if.then.i.i, label %if.end8

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %11 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %12 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %call3.i.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %13 = ptrtoint ptr %call3.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %sub.ptr.sub.i, ptr %call3.i.i, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len, align 4
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %16 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i1 = icmp ugt ptr %17, %call3.i.i
  br i1 %cmp.i.i1, label %do.end.i.i, label %if.then.i.i.if.end.i.i_crit_edge, !prof !129

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 991, i32 noundef 9, ptr noundef null) #16
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %18 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %call3.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %19 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  tail call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end8, %nlmsg_put.exit.i.cleanup_crit_edge, %skb_tailroom.exit.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %15, %if.end8 ], [ -1, %if.end.i.i ], [ -1, %entry.cleanup_crit_edge ], [ -1, %skb_tailroom.exit.i.i.cleanup_crit_edge ], [ -1, %nlmsg_put.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfnetlink_unicast(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ctnetlink_exp_ct_dump_table(ptr noundef %skb, ptr nocapture noundef %cb) #2 align 64 {
entry:
  %old.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %0 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nlh, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 16
  %data = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %ext.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %ext.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ext.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i.i, label %entry.nfct_help.exit_crit_edge, label %nf_ct_ext_exist.exit.i.i

entry.nfct_help.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %nfct_help.exit

nf_ct_ext_exist.exit.i.i:                         ; preds = %entry
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.i.i.not.i.i = icmp eq i8 %7, 0
  br i1 %tobool.i.i.not.i.i, label %nf_ct_ext_exist.exit.i.i.nfct_help.exit_crit_edge, label %if.end.i.i

nf_ct_ext_exist.exit.i.i.nfct_help.exit_crit_edge: ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nfct_help.exit

if.end.i.i:                                       ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %conv.i.i = zext i8 %7 to i32
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %conv.i.i
  br label %nfct_help.exit

nfct_help.exit:                                   ; preds = %if.end.i.i, %nf_ct_ext_exist.exit.i.i.nfct_help.exit_crit_edge, %entry.nfct_help.exit_crit_edge
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %if.end.i.i ], [ null, %nf_ct_ext_exist.exit.i.i.nfct_help.exit_crit_edge ], [ null, %entry.nfct_help.exit_crit_edge ]
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %add.ptr.i, align 2
  %10 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %if.end, label %nfct_help.exit.cleanup_crit_edge

nfct_help.exit.cleanup_crit_edge:                 ; preds = %nfct_help.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %nfct_help.exit
  %13 = tail call i32 @llvm.read_register.i32(metadata !118) #16
  %and.i.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %16, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !130
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 696, ptr noundef nonnull @.str.1) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %arrayidx2 = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 1
  %17 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx2, align 4
  %19 = inttoptr i32 %18 to ptr
  %expectations = getelementptr inbounds %struct.nf_conn_help, ptr %retval.0.i.i, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool19.not = icmp eq i8 %9, 0
  %20 = zext i8 %9 to i16
  br label %restart

restart:                                          ; preds = %if.then64, %rcu_read_lock.exit
  %call3 = call i32 @rcu_read_lock_any_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true, label %restart.do.end_crit_edge

restart.do.end_crit_edge:                         ; preds = %restart
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true:                                    ; preds = %restart
  %call5 = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true7

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b101 = load i1, ptr @ctnetlink_exp_ct_dump_table.__warned, align 1
  br i1 %.b101, label %land.lhs.true7.do.end_crit_edge, label %if.then9

land.lhs.true7.do.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.then9:                                         ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @ctnetlink_exp_ct_dump_table.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 3234, ptr noundef nonnull @.str.9) #16
  br label %do.end

do.end:                                           ; preds = %if.then9, %land.lhs.true7.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %restart.do.end_crit_edge
  %21 = ptrtoint ptr %expectations to i32
  call void @__asan_load4_noabort(i32 %21)
  %exp.0115 = load volatile ptr, ptr %expectations, align 4
  %tobool18.not116 = icmp eq ptr %exp.0115, null
  br i1 %tobool18.not116, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %exp.0117 = phi ptr [ %exp.0, %for.inc.for.body_crit_edge ], [ %exp.0115, %do.end.for.body_crit_edge ]
  br i1 %tobool19.not, label %for.body.if.end25_crit_edge, label %land.lhs.true20

for.body.if.end25_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end25

land.lhs.true20:                                  ; preds = %for.body
  %l3num = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp.0117, i32 0, i32 2, i32 0, i32 2
  %22 = ptrtoint ptr %l3num to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %l3num, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %23, i16 %20)
  %cmp.not = icmp eq i16 %23, %20
  br i1 %cmp.not, label %land.lhs.true20.if.end25_crit_edge, label %land.lhs.true20.for.inc_crit_edge

land.lhs.true20.for.inc_crit_edge:                ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

land.lhs.true20.if.end25_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end25

if.end25:                                         ; preds = %land.lhs.true20.if.end25_crit_edge, %for.body.if.end25_crit_edge
  %24 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool27.not = icmp eq i32 %25, 0
  br i1 %tobool27.not, label %if.end25.if.end34_crit_edge, label %if.then28

if.end25.if.end34_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end34

if.then28:                                        ; preds = %if.end25
  %cmp29.not = icmp eq ptr %exp.0117, %19
  br i1 %cmp29.not, label %if.end32, label %if.then28.for.inc_crit_edge

if.then28.for.inc_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end32:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #18
  %26 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %arrayidx2, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.end32, %if.end25.if.end34_crit_edge
  %27 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cb, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %28, i32 0, i32 3, i32 12
  %29 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %portid, align 4
  %31 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %nlmsg_seq, align 4
  %call38 = call fastcc i32 @ctnetlink_exp_fill_info(ptr noundef %skb, i32 noundef %30, i32 noundef %34, ptr noundef nonnull %exp.0117)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %if.then41, label %if.end34.for.inc_crit_edge

if.end34.for.inc_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then41:                                        ; preds = %if.end34
  %use = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp.0117, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #16
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %use, i32 noundef 4) #16
  %35 = ptrtoint ptr %use to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %use, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %if.then41
  %37 = phi i32 [ %36, %if.then41 ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %38 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i.i.i103 = icmp eq i32 %37, 0
  br i1 %tobool.not.i.i.i103, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i104 = add i32 %37, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %use, i32 noundef 4) #16
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #16
  %39 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %use, i32 1, i32 3, i32 1) #16
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %41 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %use, ptr %use, i32 %40, i32 %add.i.i.i104, ptr elementtype(i32) %use) #16, !srcloc !137
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %41, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %41, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %40
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !135

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %42 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %43, 1
  %44 = or i32 %add5.i.i.i, %43
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %44)
  %.not.i.i.i = icmp sgt i32 %44, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !135

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @refcount_warn_saturate(ptr noundef %use, i32 noundef 0) #16
  %45 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pr = load i32, ptr %old.i.i.i, align 4
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %46 = phi i32 [ %43, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool12.i.i.i.not = icmp eq i32 %46, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #16
  br i1 %tobool12.i.i.i.not, label %refcount_inc_not_zero.exit.for.inc_crit_edge, label %if.end44

refcount_inc_not_zero.exit.for.inc_crit_edge:     ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end44:                                         ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #18
  %47 = ptrtoint ptr %exp.0117 to i32
  %48 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %arrayidx2, align 4
  br label %out

for.inc:                                          ; preds = %refcount_inc_not_zero.exit.for.inc_crit_edge, %if.end34.for.inc_crit_edge, %if.then28.for.inc_crit_edge, %land.lhs.true20.for.inc_crit_edge
  %49 = ptrtoint ptr %exp.0117 to i32
  call void @__asan_load4_noabort(i32 %49)
  %exp.0 = load volatile ptr, ptr %exp.0117, align 4
  %tobool18.not = icmp eq ptr %exp.0, null
  br i1 %tobool18.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  %50 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx2, align 4
  %tobool63.not = icmp eq i32 %51, 0
  br i1 %tobool63.not, label %if.end66, label %if.then64

if.then64:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  %52 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %arrayidx2, align 4
  br label %restart

if.end66:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  %53 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %10, align 4
  br label %out

out:                                              ; preds = %if.end66, %if.end44
  %call.i105 = call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i105, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i108

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true.i108:                               ; preds = %out
  %call1.i106 = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i106)
  %tobool.not.i107 = icmp eq i32 %call1.i106, 0
  br i1 %tobool.not.i107, label %land.lhs.true.i108.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i110

land.lhs.true.i108.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i108
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true2.i110:                              ; preds = %land.lhs.true.i108
  %.b4.i109 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i109, label %land.lhs.true2.i110.rcu_read_unlock.exit_crit_edge, label %if.then.i111

land.lhs.true2.i110.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i110
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

if.then.i111:                                     ; preds = %land.lhs.true2.i110
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 724, ptr noundef nonnull @.str.2) #16
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i111, %land.lhs.true2.i110.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i108.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !131
  %54 = call i32 @llvm.read_register.i32(metadata !118) #16
  %and.i.i.i.i.i112 = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i.i.i.i112 to ptr
  %preempt_count.i.i.i.i113 = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %preempt_count.i.i.i.i113 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %preempt_count.i.i.i.i113, align 4
  %sub.i.i.i = add i32 %57, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i113, align 4
  call void @rcu_read_unlock_strict() #16
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool68.not = icmp eq i32 %18, 0
  br i1 %tobool68.not, label %rcu_read_unlock.exit.if.end70_crit_edge, label %if.then69

rcu_read_unlock.exit.if.end70_crit_edge:          ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end70

if.then69:                                        ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #18
  call void @nf_ct_expect_put(ptr noundef nonnull %19) #16
  br label %if.end70

if.end70:                                         ; preds = %if.then69, %rcu_read_unlock.exit.if.end70_crit_edge
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %58 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %len, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end70, %nfct_help.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %59, %if.end70 ], [ 0, %nfct_help.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__netlink_dump_start(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_unlink_expect_report(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_expect_iterate_net(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @expect_iter_name(ptr nocapture noundef readonly %exp, ptr nocapture noundef readonly %data) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 6
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %ext.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %ext.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ext.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i.i, label %entry.nfct_help.exit_crit_edge, label %nf_ct_ext_exist.exit.i.i

entry.nfct_help.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %nfct_help.exit

nf_ct_ext_exist.exit.i.i:                         ; preds = %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.i.i.not.i.i = icmp eq i8 %5, 0
  br i1 %tobool.i.i.not.i.i, label %nf_ct_ext_exist.exit.i.i.nfct_help.exit_crit_edge, label %if.end.i.i

nf_ct_ext_exist.exit.i.i.nfct_help.exit_crit_edge: ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nfct_help.exit

if.end.i.i:                                       ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %conv.i.i = zext i8 %5 to i32
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %conv.i.i
  br label %nfct_help.exit

nfct_help.exit:                                   ; preds = %if.end.i.i, %nf_ct_ext_exist.exit.i.i.nfct_help.exit_crit_edge, %entry.nfct_help.exit_crit_edge
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %if.end.i.i ], [ null, %nf_ct_ext_exist.exit.i.i.nfct_help.exit_crit_edge ], [ null, %entry.nfct_help.exit_crit_edge ]
  %6 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %retval.0.i.i, align 8
  %name1 = getelementptr inbounds %struct.nf_conntrack_helper, ptr %7, i32 0, i32 1
  %call2 = tail call i32 @strcmp(ptr noundef %name1, ptr noundef %data) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp eq i32 %call2, 0
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @expect_iter_all(ptr nocapture noundef readnone %exp, ptr nocapture noundef readnone %data) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 true
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ctnetlink_exp_stat_cpu_dump(ptr noundef %skb, ptr nocapture noundef %cb) #2 align 64 {
entry:
  %tmp.i28.i = alloca i32, align 4
  %tmp.i26.i = alloca i32, align 4
  %tmp.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  %5 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %8 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %8)
  %cmp = icmp eq i32 %7, %8
  br i1 %cmp, label %entry.cleanup15_crit_edge, label %for.cond.preheader

entry.cleanup15_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup15

for.cond.preheader:                               ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %9 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp235 = icmp ult i32 %7, %9
  br i1 %cmp235, label %cpu_possible.exit.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

cpu_possible.exit.lr.ph:                          ; preds = %for.cond.preheader
  %stat = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 40, i32 8
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %data_len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  br label %cpu_possible.exit

cpu_possible.exit:                                ; preds = %for.inc.cpu_possible.exit_crit_edge, %cpu_possible.exit.lr.ph
  %cpu.036 = phi i32 [ %7, %cpu_possible.exit.lr.ph ], [ %inc, %for.inc.cpu_possible.exit_crit_edge ]
  %div3.i.i.i = lshr i32 %cpu.036, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_possible_mask, i32 %div3.i.i.i
  %10 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %cpu.036, 31
  %12 = shl nuw i32 1, %and.i.i.i
  %13 = and i32 %11, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.i.not = icmp eq i32 %13, 0
  br i1 %tobool.i.not, label %cpu_possible.exit.for.inc_crit_edge, label %do.body

cpu_possible.exit.for.inc_crit_edge:              ; preds = %cpu_possible.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

do.body:                                          ; preds = %cpu_possible.exit
  %14 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %stat, align 4
  %16 = ptrtoint ptr %15 to i32
  %arrayidx7 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu.036
  %17 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx7, align 4
  %add = add i32 %18, %16
  %19 = inttoptr i32 %add to ptr
  %20 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cb, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 3, i32 12
  %22 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %portid, align 4
  %24 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nlmsg_seq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i = icmp eq i32 %23, 0
  %cond.i = select i1 %tobool.not.i, i32 0, i32 2
  %conv1.i = trunc i32 %cpu.036 to i16
  %28 = ptrtoint ptr %data_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %data_len.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.i.not.i.i.i.i = icmp eq i32 %29, 0
  br i1 %tobool.i.not.i.i.i.i, label %skb_tailroom.exit.i.i.i, label %do.body.for.end_crit_edge

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

skb_tailroom.exit.i.i.i:                          ; preds = %do.body
  %30 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %end.i.i.i.i, align 4
  %32 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tail.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %31 to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %33 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.ptr.sub.i.i.i.i)
  %cmp.i.i.i = icmp slt i32 %sub.ptr.sub.i.i.i.i, 20
  br i1 %cmp.i.i.i, label %skb_tailroom.exit.i.i.i.for.end_crit_edge, label %nlmsg_put.exit.i.i, !prof !129

skb_tailroom.exit.i.i.i.for.end_crit_edge:        ; preds = %skb_tailroom.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

nlmsg_put.exit.i.i:                               ; preds = %skb_tailroom.exit.i.i.i
  %call3.i.i.i = call ptr @__nlmsg_put(ptr noundef %skb, i32 noundef %23, i32 noundef %27, i32 noundef 259, i32 noundef 4, i32 noundef %cond.i) #16
  %tobool.not.i.i = icmp eq ptr %call3.i.i.i, null
  br i1 %tobool.not.i.i, label %nlmsg_put.exit.i.i.for.end_crit_edge, label %if.end.i

nlmsg_put.exit.i.i.for.end_crit_edge:             ; preds = %nlmsg_put.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

if.end.i:                                         ; preds = %nlmsg_put.exit.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %call3.i.i.i, i32 16
  %34 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %add.ptr.i.i.i.i, align 2
  %version1.i.i.i = getelementptr i8, ptr %call3.i.i.i, i32 17
  %35 = ptrtoint ptr %version1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %version1.i.i.i, align 1
  %res_id2.i.i.i = getelementptr i8, ptr %call3.i.i.i, i32 18
  %36 = ptrtoint ptr %res_id2.i.i.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv1.i, ptr %res_id2.i.i.i, align 2
  %expect_new.i = getelementptr inbounds %struct.ip_conntrack_stat, ptr %19, i32 0, i32 8
  %37 = ptrtoint ptr %expect_new.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %expect_new.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #16
  %39 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %tmp.i.i, align 4
  %call.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool5.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool5.not.i, label %lor.lhs.false.i, label %if.end.i.if.then.i.i.i_crit_edge

if.end.i.if.then.i.i.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %expect_create.i = getelementptr inbounds %struct.ip_conntrack_stat, ptr %19, i32 0, i32 9
  %40 = ptrtoint ptr %expect_create.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %expect_create.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i26.i) #16
  %42 = ptrtoint ptr %tmp.i26.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %tmp.i26.i, align 4
  %call.i27.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i26.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i26.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27.i)
  %tobool7.not.i = icmp eq i32 %call.i27.i, 0
  br i1 %tobool7.not.i, label %lor.lhs.false8.i, label %lor.lhs.false.i.if.then.i.i.i_crit_edge

lor.lhs.false.i.if.then.i.i.i_crit_edge:          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i.i

lor.lhs.false8.i:                                 ; preds = %lor.lhs.false.i
  %expect_delete.i = getelementptr inbounds %struct.ip_conntrack_stat, ptr %19, i32 0, i32 10
  %43 = ptrtoint ptr %expect_delete.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %expect_delete.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i28.i) #16
  %45 = ptrtoint ptr %tmp.i28.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %tmp.i28.i, align 4
  %call.i29.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i28.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i28.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i29.i)
  %tobool10.not.i = icmp eq i32 %call.i29.i, 0
  br i1 %tobool10.not.i, label %ctnetlink_exp_stat_fill_info.exit, label %lor.lhs.false8.i.if.then.i.i.i_crit_edge

lor.lhs.false8.i.if.then.i.i.i_crit_edge:         ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %lor.lhs.false8.i.if.then.i.i.i_crit_edge, %lor.lhs.false.i.if.then.i.i.i_crit_edge, %if.end.i.if.then.i.i.i_crit_edge
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %46 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i30.i = icmp ugt ptr %47, %call3.i.i.i
  br i1 %cmp.i.i30.i, label %do.end.i.i.i, label %if.then.i.i.i.if.end.i.i.i_crit_edge, !prof !129

if.then.i.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 991, i32 noundef 9, ptr noundef null) #16
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i.i, %if.then.i.i.i.if.end.i.i.i_crit_edge
  %48 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %call3.i.i.i to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %49 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i.i) #16
  br label %for.end

ctnetlink_exp_stat_fill_info.exit:                ; preds = %lor.lhs.false8.i
  %50 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %tail.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %51 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %call3.i.i.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %52 = ptrtoint ptr %call3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %sub.ptr.sub.i.i, ptr %call3.i.i.i, align 4
  %53 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp11 = icmp slt i32 %54, 0
  br i1 %cmp11, label %ctnetlink_exp_stat_fill_info.exit.for.end_crit_edge, label %ctnetlink_exp_stat_fill_info.exit.for.inc_crit_edge

ctnetlink_exp_stat_fill_info.exit.for.inc_crit_edge: ; preds = %ctnetlink_exp_stat_fill_info.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

ctnetlink_exp_stat_fill_info.exit.for.end_crit_edge: ; preds = %ctnetlink_exp_stat_fill_info.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.inc:                                          ; preds = %ctnetlink_exp_stat_fill_info.exit.for.inc_crit_edge, %cpu_possible.exit.for.inc_crit_edge
  %inc = add nuw i32 %cpu.036, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %55 = load i32, ptr @nr_cpu_ids, align 4
  %cmp2 = icmp ult i32 %inc, %55
  br i1 %cmp2, label %for.inc.cpu_possible.exit_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.inc.cpu_possible.exit_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_possible.exit

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %ctnetlink_exp_stat_fill_info.exit.for.end_crit_edge, %if.end.i.i.i, %nlmsg_put.exit.i.i.for.end_crit_edge, %skb_tailroom.exit.i.i.i.for.end_crit_edge, %do.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %cpu.034 = phi i32 [ %cpu.036, %if.end.i.i.i ], [ %7, %for.cond.preheader.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ], [ %cpu.036, %nlmsg_put.exit.i.i.for.end_crit_edge ], [ %cpu.036, %skb_tailroom.exit.i.i.i.for.end_crit_edge ], [ %cpu.036, %do.body.for.end_crit_edge ], [ %cpu.036, %ctnetlink_exp_stat_fill_info.exit.for.end_crit_edge ]
  %56 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %cpu.034, ptr %5, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %57 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %len, align 4
  br label %cleanup15

cleanup15:                                        ; preds = %for.end, %entry.cleanup15_crit_edge
  %retval.0 = phi i32 [ %58, %for.end ], [ 0, %entry.cleanup15_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ctnetlink_new_conntrack(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %info, ptr noundef readonly %cda) #2 align 64 {
entry:
  %otuple = alloca %struct.nf_conntrack_tuple, align 4
  %rtuple = alloca %struct.nf_conntrack_tuple, align 4
  %zone = alloca %struct.nf_conntrack_zone, align 2
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %otuple) #16
  %0 = call ptr @memset(ptr %otuple, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %rtuple) #16
  %1 = call ptr @memset(ptr %rtuple, i32 255, i32 40)
  %nfmsg = getelementptr inbounds %struct.nfnl_info, ptr %info, i32 0, i32 3
  %2 = ptrtoint ptr %nfmsg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nfmsg, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %zone) #16
  %6 = getelementptr inbounds %struct.nf_conntrack_zone, ptr %zone, i32 0, i32 1
  %7 = getelementptr inbounds %struct.nf_conntrack_zone, ptr %zone, i32 0, i32 2
  %arrayidx = getelementptr ptr, ptr %cda, i32 18
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %10 = ptrtoint ptr %zone to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %zone, align 2
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %6, align 2
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 3, ptr %7, align 1
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %entry.ctnetlink_parse_zone.exit_crit_edge, label %if.then.i

entry.ctnetlink_parse_zone.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %ctnetlink_parse_zone.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 4
  %13 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %add.ptr.i.i.i, align 2
  %15 = ptrtoint ptr %zone to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %zone, align 2
  br label %ctnetlink_parse_zone.exit

ctnetlink_parse_zone.exit:                        ; preds = %if.then.i, %entry.ctnetlink_parse_zone.exit_crit_edge
  %arrayidx1 = getelementptr ptr, ptr %cda, i32 1
  %16 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx1, align 4
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %ctnetlink_parse_zone.exit.if.end7_crit_edge, label %if.then2

ctnetlink_parse_zone.exit.if.end7_crit_edge:      ; preds = %ctnetlink_parse_zone.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7

if.then2:                                         ; preds = %ctnetlink_parse_zone.exit
  %call.i = call fastcc i32 @ctnetlink_parse_tuple_filter(ptr noundef %cda, ptr noundef nonnull %otuple, i32 noundef 1, i8 noundef zeroext %5, ptr noundef nonnull %zone, i32 noundef 4095) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4 = icmp slt i32 %call.i, 0
  br i1 %cmp4, label %if.then2.cleanup87_crit_edge, label %if.then2.if.end7_crit_edge

if.then2.if.end7_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7

if.then2.cleanup87_crit_edge:                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup87

if.end7:                                          ; preds = %if.then2.if.end7_crit_edge, %ctnetlink_parse_zone.exit.if.end7_crit_edge
  %arrayidx8 = getelementptr ptr, ptr %cda, i32 2
  %18 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx8, align 4
  %tobool9.not = icmp eq ptr %19, null
  br i1 %tobool9.not, label %if.end7.if.end15_crit_edge, label %if.then10

if.end7.if.end15_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15

if.then10:                                        ; preds = %if.end7
  %call.i134 = call fastcc i32 @ctnetlink_parse_tuple_filter(ptr noundef %cda, ptr noundef nonnull %rtuple, i32 noundef 2, i8 noundef zeroext %5, ptr noundef nonnull %zone, i32 noundef 4095) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i134)
  %cmp12 = icmp slt i32 %call.i134, 0
  br i1 %cmp12, label %if.then10.cleanup87_crit_edge, label %if.then10.if.end15_crit_edge

if.then10.if.end15_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15

if.then10.cleanup87_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup87

if.end15:                                         ; preds = %if.then10.if.end15_crit_edge, %if.end7.if.end15_crit_edge
  %20 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx1, align 4
  %tobool17.not = icmp eq ptr %21, null
  br i1 %tobool17.not, label %if.else, label %if.end15.if.end26_crit_edge

if.end15.if.end26_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26

if.else:                                          ; preds = %if.end15
  %22 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx8, align 4
  %tobool21.not = icmp eq ptr %23, null
  br i1 %tobool21.not, label %if.else.if.then28_crit_edge, label %if.else.if.end26_crit_edge

if.else.if.end26_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26

if.else.if.then28_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then28

if.end26:                                         ; preds = %if.else.if.end26_crit_edge, %if.end15.if.end26_crit_edge
  %rtuple.sink = phi ptr [ %otuple, %if.end15.if.end26_crit_edge ], [ %rtuple, %if.else.if.end26_crit_edge ]
  %24 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %info, align 4
  %call24 = call ptr @nf_conntrack_find_get(ptr noundef %25, ptr noundef nonnull %zone, ptr noundef nonnull %rtuple.sink) #16
  %cmp27 = icmp eq ptr %call24, null
  br i1 %cmp27, label %if.end26.if.then28_crit_edge, label %if.end68

if.end26.if.then28_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then28

if.then28:                                        ; preds = %if.end26.if.then28_crit_edge, %if.else.if.then28_crit_edge
  %nlh = getelementptr inbounds %struct.nfnl_info, ptr %info, i32 0, i32 2
  %26 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %nlh, align 4
  %nlmsg_flags = getelementptr inbounds %struct.nlmsghdr, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %nlmsg_flags to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %nlmsg_flags, align 2
  %30 = and i16 %29, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool29.not = icmp eq i16 %30, 0
  br i1 %tobool29.not, label %if.then28.cleanup87_crit_edge, label %if.then30

if.then28.cleanup87_crit_edge:                    ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup87

if.then30:                                        ; preds = %if.then28
  %31 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx1, align 4
  %tobool32.not = icmp eq ptr %32, null
  br i1 %tobool32.not, label %if.then30.cleanup87_crit_edge, label %lor.lhs.false

if.then30.cleanup87_crit_edge:                    ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup87

lor.lhs.false:                                    ; preds = %if.then30
  %33 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx8, align 4
  %tobool34.not = icmp eq ptr %34, null
  br i1 %tobool34.not, label %lor.lhs.false.cleanup87_crit_edge, label %if.end36

lor.lhs.false.cleanup87_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup87

if.end36:                                         ; preds = %lor.lhs.false
  %protonum = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %otuple, i32 0, i32 1, i32 2
  %35 = ptrtoint ptr %protonum to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %protonum, align 2
  %protonum39 = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %rtuple, i32 0, i32 1, i32 2
  %37 = ptrtoint ptr %protonum39 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %protonum39, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %36, i8 %38)
  %cmp41.not = icmp eq i8 %36, %38
  br i1 %cmp41.not, label %if.end44, label %if.end36.cleanup87_crit_edge

if.end36.cleanup87_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup87

if.end44:                                         ; preds = %if.end36
  %39 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %info, align 4
  %call46 = call fastcc ptr @ctnetlink_create_conntrack(ptr noundef %40, ptr noundef nonnull %zone, ptr noundef %cda, ptr noundef nonnull %otuple, ptr noundef nonnull %rtuple, i8 noundef zeroext %5)
  %cmp.i = icmp ugt ptr %call46, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then48, label %if.end50

if.then48:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #18
  %41 = ptrtoint ptr %call46 to i32
  br label %cleanup87

if.end50:                                         ; preds = %if.end44
  %status = getelementptr inbounds %struct.nf_conn, ptr %call46, i32 0, i32 5
  %42 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %status, align 4
  %and1.i = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool52.not = icmp eq i32 %and1.i, 0
  %. = select i1 %tobool52.not, i32 1, i32 2
  %arrayidx56 = getelementptr ptr, ptr %cda, i32 22
  %44 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx56, align 4
  %tobool57.not = icmp eq ptr %45, null
  br i1 %tobool57.not, label %if.end50.if.end62_crit_edge, label %land.lhs.true

if.end50.if.end62_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end62

land.lhs.true:                                    ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #18
  %call58 = call fastcc i32 @ctnetlink_attach_labels(ptr noundef %call46, ptr noundef %cda)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59 = icmp eq i32 %call58, 0
  %or = or i32 %., 1024
  %spec.select = select i1 %cmp59, i32 %or, i32 %.
  br label %if.end62

if.end62:                                         ; preds = %land.lhs.true, %if.end50.if.end62_crit_edge
  %events.1 = phi i32 [ %., %if.end50.if.end62_crit_edge ], [ %spec.select, %land.lhs.true ]
  %or63 = or i32 %events.1, 2552
  %portid = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %46 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %portid, align 4
  %48 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %nlh, align 4
  %tobool.not.i135 = icmp eq ptr %49, null
  br i1 %tobool.not.i135, label %if.end62.cleanup_crit_edge, label %cond.true.i

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cond.true.i:                                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #18
  %nlmsg_flags.i = getelementptr inbounds %struct.nlmsghdr, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %nlmsg_flags.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %nlmsg_flags.i, align 2
  %52 = lshr i16 %51, 3
  %.lobit.i = and i16 %52, 1
  %53 = zext i16 %.lobit.i to i32
  br label %cleanup

cleanup:                                          ; preds = %cond.true.i, %if.end62.cleanup_crit_edge
  %cond.i = phi i32 [ %53, %cond.true.i ], [ 0, %if.end62.cleanup_crit_edge ]
  %call66 = call i32 @nf_conntrack_eventmask_report(i32 noundef %or63, ptr noundef %call46, i32 noundef %47, i32 noundef %cond.i) #16
  call fastcc void @nf_ct_put(ptr noundef %call46)
  br label %cleanup87

if.end68:                                         ; preds = %if.end26
  %dir.i = getelementptr inbounds %struct.nf_conntrack_tuple_hash, ptr %call24, i32 0, i32 1, i32 1, i32 3
  %54 = ptrtoint ptr %dir.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %dir.i, align 1
  %conv.i = zext i8 %55 to i32
  %.neg.i = mul nsw i32 %conv.i, -48
  %idx.neg.i = add nsw i32 %.neg.i, -56
  %add.ptr.i = getelementptr i8, ptr %call24, i32 %idx.neg.i
  %nlh70 = getelementptr inbounds %struct.nfnl_info, ptr %info, i32 0, i32 2
  %56 = ptrtoint ptr %nlh70 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %nlh70, align 4
  %nlmsg_flags71 = getelementptr inbounds %struct.nlmsghdr, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %nlmsg_flags71 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %nlmsg_flags71, align 2
  %60 = and i16 %59, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %60)
  %tobool74.not = icmp eq i16 %60, 0
  br i1 %tobool74.not, label %if.then75, label %if.end68.if.end86_crit_edge

if.end68.if.end86_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end86

if.then75:                                        ; preds = %if.end68
  %arrayidx.i = getelementptr ptr, ptr %cda, i32 6
  %61 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i136 = icmp eq ptr %62, null
  br i1 %tobool.not.i136, label %lor.lhs.false.i, label %if.then75.if.end86_crit_edge

if.then75.if.end86_crit_edge:                     ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end86

lor.lhs.false.i:                                  ; preds = %if.then75
  %arrayidx1.i = getelementptr ptr, ptr %cda, i32 13
  %63 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx1.i, align 4
  %tobool2.not.i = icmp eq ptr %64, null
  br i1 %tobool2.not.i, label %lor.lhs.false3.i, label %lor.lhs.false.i.if.end86_crit_edge

lor.lhs.false.i.if.end86_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end86

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i
  %arrayidx4.i = getelementptr ptr, ptr %cda, i32 14
  %65 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx4.i, align 4
  %tobool5.not.i = icmp eq ptr %66, null
  br i1 %tobool5.not.i, label %if.end.i, label %lor.lhs.false3.i.if.end86_crit_edge

lor.lhs.false3.i.if.end86_crit_edge:              ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end86

if.end.i:                                         ; preds = %lor.lhs.false3.i
  %arrayidx6.i = getelementptr ptr, ptr %cda, i32 5
  %67 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx6.i, align 4
  %tobool7.not.i = icmp eq ptr %68, null
  br i1 %tobool7.not.i, label %if.end.i.if.end11.i_crit_edge, label %if.then8.i

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11.i

if.then8.i:                                       ; preds = %if.end.i
  %call.i137 = call fastcc i32 @ctnetlink_change_helper(ptr noundef %add.ptr.i, ptr noundef %cda) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i137)
  %cmp.i138 = icmp slt i32 %call.i137, 0
  br i1 %cmp.i138, label %if.then8.i.if.end86_crit_edge, label %if.then8.i.if.end11.i_crit_edge

if.then8.i.if.end11.i_crit_edge:                  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11.i

if.then8.i.if.end86_crit_edge:                    ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end86

if.end11.i:                                       ; preds = %if.then8.i.if.end11.i_crit_edge, %if.end.i.if.end11.i_crit_edge
  %arrayidx12.i = getelementptr ptr, ptr %cda, i32 7
  %69 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx12.i, align 4
  %tobool13.not.i = icmp eq ptr %70, null
  br i1 %tobool13.not.i, label %if.end11.i.if.end19.i_crit_edge, label %if.then14.i

if.end11.i.if.end19.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19.i

if.then14.i:                                      ; preds = %if.end11.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %70, i32 4
  %71 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %add.ptr.i.i.i.i, align 4
  %conv.i.i = zext i32 %72 to i64
  %mul.i.i = mul nuw nsw i64 %conv.i.i, 100
  %73 = call i64 @llvm.umin.i64(i64 %mul.i.i, i64 2147483647) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %74 = load volatile i32, ptr @jiffies, align 128
  %conv4.i.i = trunc i64 %73 to i32
  %add.i.i = add i32 %74, %conv4.i.i
  %timeout5.i.i = getelementptr inbounds %struct.nf_conn, ptr %add.ptr.i, i32 0, i32 2
  %75 = ptrtoint ptr %timeout5.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile i32 %add.i.i, ptr %timeout5.i.i, align 8
  %status.i.i = getelementptr inbounds %struct.nf_conn, ptr %add.ptr.i, i32 0, i32 5
  %76 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %status.i.i, align 4
  %.mask.i = and i32 %77, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i)
  %cmp16.not.i = icmp eq i32 %.mask.i, 0
  br i1 %cmp16.not.i, label %if.then14.i.if.end19.i_crit_edge, label %if.then14.i.if.end86_crit_edge

if.then14.i.if.end86_crit_edge:                   ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end86

if.then14.i.if.end19.i_crit_edge:                 ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then14.i.if.end19.i_crit_edge, %if.end11.i.if.end19.i_crit_edge
  %arrayidx20.i = getelementptr ptr, ptr %cda, i32 3
  %78 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx20.i, align 4
  %tobool21.not.i = icmp eq ptr %79, null
  br i1 %tobool21.not.i, label %if.end19.i.if.end27.i_crit_edge, label %if.then22.i

if.end19.i.if.end27.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end27.i

if.then22.i:                                      ; preds = %if.end19.i
  %call23.i = call fastcc i32 @ctnetlink_change_status(ptr noundef %add.ptr.i, ptr noundef %cda) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %cmp24.i = icmp slt i32 %call23.i, 0
  br i1 %cmp24.i, label %if.then22.i.if.end86_crit_edge, label %if.then22.i.if.end27.i_crit_edge

if.then22.i.if.end27.i_crit_edge:                 ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end27.i

if.then22.i.if.end86_crit_edge:                   ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end86

if.end27.i:                                       ; preds = %if.then22.i.if.end27.i_crit_edge, %if.end19.i.if.end27.i_crit_edge
  %arrayidx28.i = getelementptr ptr, ptr %cda, i32 4
  %80 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx28.i, align 4
  %tobool29.not.i = icmp eq ptr %81, null
  br i1 %tobool29.not.i, label %if.end27.i.if.end35.i_crit_edge, label %if.then30.i

if.end27.i.if.end35.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end35.i

if.then30.i:                                      ; preds = %if.end27.i
  %call31.i = call fastcc i32 @ctnetlink_change_protoinfo(ptr noundef %add.ptr.i, ptr noundef %cda) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %cmp32.i = icmp slt i32 %call31.i, 0
  br i1 %cmp32.i, label %if.then30.i.if.end86_crit_edge, label %if.then30.i.if.end35.i_crit_edge

if.then30.i.if.end35.i_crit_edge:                 ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end35.i

if.then30.i.if.end86_crit_edge:                   ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end86

if.end35.i:                                       ; preds = %if.then30.i.if.end35.i_crit_edge, %if.end27.i.if.end35.i_crit_edge
  %arrayidx36.i = getelementptr ptr, ptr %cda, i32 8
  %82 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx36.i, align 4
  %tobool37.not.i = icmp eq ptr %83, null
  br i1 %tobool37.not.i, label %if.end35.i.if.end39.i_crit_edge, label %if.then38.i

if.end35.i.if.end39.i_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end39.i

if.then38.i:                                      ; preds = %if.end35.i
  %arrayidx.i106.i = getelementptr ptr, ptr %cda, i32 21
  %84 = ptrtoint ptr %arrayidx.i106.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx.i106.i, align 4
  %tobool.not.i107.i = icmp eq ptr %85, null
  br i1 %tobool.not.i107.i, label %if.then38.i.if.end.i.i_crit_edge, label %if.then.i.i

if.then38.i.if.end.i.i_crit_edge:                 ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i.i.i108.i = getelementptr i8, ptr %85, i32 4
  %86 = ptrtoint ptr %add.ptr.i.i.i108.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %add.ptr.i.i.i108.i, align 4
  %neg.i.i = xor i32 %87, -1
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then38.i.if.end.i.i_crit_edge
  %mask.0.i.i = phi i32 [ %neg.i.i, %if.then.i.i ], [ 0, %if.then38.i.if.end.i.i_crit_edge ]
  %add.ptr.i.i14.i.i = getelementptr i8, ptr %83, i32 4
  %88 = ptrtoint ptr %add.ptr.i.i14.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %add.ptr.i.i14.i.i, align 4
  %mark4.i.i = getelementptr inbounds %struct.nf_conn, ptr %add.ptr.i, i32 0, i32 11
  %90 = ptrtoint ptr %mark4.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %mark4.i.i, align 8
  %and.i.i = and i32 %91, %mask.0.i.i
  %xor.i.i = xor i32 %and.i.i, %89
  call void @__sanitizer_cov_trace_cmp4(i32 %xor.i.i, i32 %91)
  %cmp.not.i.i = icmp eq i32 %xor.i.i, %91
  br i1 %cmp.not.i.i, label %if.end.i.i.if.end39.i_crit_edge, label %if.then6.i.i

if.end.i.i.if.end39.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end39.i

if.then6.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %92 = ptrtoint ptr %mark4.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %xor.i.i, ptr %mark4.i.i, align 8
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.then6.i.i, %if.end.i.i.if.end39.i_crit_edge, %if.end35.i.if.end39.i_crit_edge
  %arrayidx40.i = getelementptr ptr, ptr %cda, i32 15
  %93 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx40.i, align 4
  %tobool41.not.i = icmp eq ptr %94, null
  br i1 %tobool41.not.i, label %lor.lhs.false42.i, label %if.end39.i.if.then45.i_crit_edge

if.end39.i.if.then45.i_crit_edge:                 ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then45.i

lor.lhs.false42.i:                                ; preds = %if.end39.i
  %arrayidx43.i = getelementptr ptr, ptr %cda, i32 16
  %95 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx43.i, align 4
  %tobool44.not.i = icmp eq ptr %96, null
  br i1 %tobool44.not.i, label %lor.lhs.false42.i.if.end50.i_crit_edge, label %lor.lhs.false42.i.if.then45.i_crit_edge

lor.lhs.false42.i.if.then45.i_crit_edge:          ; preds = %lor.lhs.false42.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then45.i

lor.lhs.false42.i.if.end50.i_crit_edge:           ; preds = %lor.lhs.false42.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end50.i

if.then45.i:                                      ; preds = %lor.lhs.false42.i.if.then45.i_crit_edge, %if.end39.i.if.then45.i_crit_edge
  %call46.i = call fastcc i32 @ctnetlink_change_seq_adj(ptr noundef %add.ptr.i, ptr noundef %cda) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %cmp47.i = icmp slt i32 %call46.i, 0
  br i1 %cmp47.i, label %if.then45.i.if.end86_crit_edge, label %if.then45.i.if.end50.i_crit_edge

if.then45.i.if.end50.i_crit_edge:                 ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end50.i

if.then45.i.if.end86_crit_edge:                   ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end86

if.end50.i:                                       ; preds = %if.then45.i.if.end50.i_crit_edge, %lor.lhs.false42.i.if.end50.i_crit_edge
  %arrayidx51.i = getelementptr ptr, ptr %cda, i32 24
  %97 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %arrayidx51.i, align 4
  %tobool52.not.i = icmp eq ptr %98, null
  br i1 %tobool52.not.i, label %if.end50.i.if.end58.i_crit_edge, label %if.then53.i

if.end50.i.if.end58.i_crit_edge:                  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end58.i

if.then53.i:                                      ; preds = %if.end50.i
  %call54.i = call fastcc i32 @ctnetlink_change_synproxy(ptr noundef %add.ptr.i, ptr noundef %cda) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.i)
  %cmp55.i = icmp slt i32 %call54.i, 0
  br i1 %cmp55.i, label %if.then53.i.if.end86_crit_edge, label %if.then53.i.if.end58.i_crit_edge

if.then53.i.if.end58.i_crit_edge:                 ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end58.i

if.then53.i.if.end86_crit_edge:                   ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end86

if.end58.i:                                       ; preds = %if.then53.i.if.end58.i_crit_edge, %if.end50.i.if.end58.i_crit_edge
  %arrayidx59.i = getelementptr ptr, ptr %cda, i32 22
  %99 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %arrayidx59.i, align 4
  %tobool60.not.i = icmp eq ptr %100, null
  br i1 %tobool60.not.i, label %if.end58.i.if.then79_crit_edge, label %if.then61.i

if.end58.i.if.then79_crit_edge:                   ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then79

if.then61.i:                                      ; preds = %if.end58.i
  %call62.i = call fastcc i32 @ctnetlink_attach_labels(ptr noundef %add.ptr.i, ptr noundef %cda) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62.i)
  %cmp63.i = icmp slt i32 %call62.i, 0
  br i1 %cmp63.i, label %if.then61.i.if.end86_crit_edge, label %if.then61.i.if.then79_crit_edge

if.then61.i.if.then79_crit_edge:                  ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then79

if.then61.i.if.end86_crit_edge:                   ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end86

if.then79:                                        ; preds = %if.then61.i.if.then79_crit_edge, %if.end58.i.if.then79_crit_edge
  %portid81 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %101 = ptrtoint ptr %portid81 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %portid81, align 4
  %103 = ptrtoint ptr %nlh70 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %nlh70, align 4
  %tobool.not.i139 = icmp eq ptr %104, null
  br i1 %tobool.not.i139, label %if.then79.nlmsg_report.exit144_crit_edge, label %cond.true.i142

if.then79.nlmsg_report.exit144_crit_edge:         ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #18
  br label %nlmsg_report.exit144

cond.true.i142:                                   ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #18
  %nlmsg_flags.i140 = getelementptr inbounds %struct.nlmsghdr, ptr %104, i32 0, i32 2
  %105 = ptrtoint ptr %nlmsg_flags.i140 to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %nlmsg_flags.i140, align 2
  %107 = lshr i16 %106, 3
  %.lobit.i141 = and i16 %107, 1
  %108 = zext i16 %.lobit.i141 to i32
  br label %nlmsg_report.exit144

nlmsg_report.exit144:                             ; preds = %cond.true.i142, %if.then79.nlmsg_report.exit144_crit_edge
  %cond.i143 = phi i32 [ %108, %cond.true.i142 ], [ 0, %if.then79.nlmsg_report.exit144_crit_edge ]
  %call84 = call i32 @nf_conntrack_eventmask_report(i32 noundef 3576, ptr noundef %add.ptr.i, i32 noundef %102, i32 noundef %cond.i143) #16
  br label %if.end86

if.end86:                                         ; preds = %nlmsg_report.exit144, %if.then61.i.if.end86_crit_edge, %if.then53.i.if.end86_crit_edge, %if.then45.i.if.end86_crit_edge, %if.then30.i.if.end86_crit_edge, %if.then22.i.if.end86_crit_edge, %if.then14.i.if.end86_crit_edge, %if.then8.i.if.end86_crit_edge, %lor.lhs.false3.i.if.end86_crit_edge, %lor.lhs.false.i.if.end86_crit_edge, %if.then75.if.end86_crit_edge, %if.end68.if.end86_crit_edge
  %err.2 = phi i32 [ -17, %if.end68.if.end86_crit_edge ], [ 0, %nlmsg_report.exit144 ], [ %call62.i, %if.then61.i.if.end86_crit_edge ], [ %call54.i, %if.then53.i.if.end86_crit_edge ], [ %call46.i, %if.then45.i.if.end86_crit_edge ], [ %call31.i, %if.then30.i.if.end86_crit_edge ], [ %call23.i, %if.then22.i.if.end86_crit_edge ], [ -62, %if.then14.i.if.end86_crit_edge ], [ %call.i137, %if.then8.i.if.end86_crit_edge ], [ -95, %if.then75.if.end86_crit_edge ], [ -95, %lor.lhs.false.i.if.end86_crit_edge ], [ -95, %lor.lhs.false3.i.if.end86_crit_edge ]
  %tobool.not.i145 = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i145, label %if.end86.cleanup87_crit_edge, label %land.lhs.true.i

if.end86.cleanup87_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup87

land.lhs.true.i:                                  ; preds = %if.end86
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %add.ptr.i, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !133
  call void @llvm.prefetch.p0(ptr nonnull %add.ptr.i, i32 1, i32 3, i32 1) #16
  %109 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %add.ptr.i, ptr nonnull %add.ptr.i, i32 1, ptr nonnull elementtype(i32) %add.ptr.i) #16, !srcloc !134
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %109, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i146, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup87_crit_edge, label %if.then10.i.i.i.i, !prof !135

if.end5.i.i.i.i.cleanup87_crit_edge:              ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup87

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @refcount_warn_saturate(ptr noundef nonnull %add.ptr.i, i32 noundef 3) #16
  br label %cleanup87

if.then.i146:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !136
  call void @nf_ct_destroy(ptr noundef nonnull %add.ptr.i) #16
  br label %cleanup87

cleanup87:                                        ; preds = %if.then.i146, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup87_crit_edge, %if.end86.cleanup87_crit_edge, %cleanup, %if.then48, %if.end36.cleanup87_crit_edge, %lor.lhs.false.cleanup87_crit_edge, %if.then30.cleanup87_crit_edge, %if.then28.cleanup87_crit_edge, %if.then10.cleanup87_crit_edge, %if.then2.cleanup87_crit_edge
  %retval.1 = phi i32 [ %call.i, %if.then2.cleanup87_crit_edge ], [ %call.i134, %if.then10.cleanup87_crit_edge ], [ 0, %cleanup ], [ -2, %if.then28.cleanup87_crit_edge ], [ %err.2, %if.end86.cleanup87_crit_edge ], [ %err.2, %if.end5.i.i.i.i.cleanup87_crit_edge ], [ %err.2, %if.then10.i.i.i.i ], [ %err.2, %if.then.i146 ], [ -22, %if.end36.cleanup87_crit_edge ], [ -22, %if.then30.cleanup87_crit_edge ], [ -22, %lor.lhs.false.cleanup87_crit_edge ], [ %41, %if.then48 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %zone) #16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %rtuple) #16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %otuple) #16
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ctnetlink_get_conntrack(ptr noundef %skb, ptr nocapture noundef readonly %info, ptr noundef %cda) #2 align 64 {
entry:
  %tuple = alloca %struct.nf_conntrack_tuple, align 4
  %zone = alloca %struct.nf_conntrack_zone, align 2
  %c = alloca %struct.netlink_dump_control, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %nfmsg = getelementptr inbounds %struct.nfnl_info, ptr %info, i32 0, i32 3
  %0 = ptrtoint ptr %nfmsg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nfmsg, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 2
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %tuple) #16
  %4 = call ptr @memset(ptr %tuple, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %zone) #16
  %nlh = getelementptr inbounds %struct.nfnl_info, ptr %info, i32 0, i32 2
  %5 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nlh, align 4
  %nlmsg_flags = getelementptr inbounds %struct.nlmsghdr, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %nlmsg_flags to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %nlmsg_flags, align 2
  %9 = and i16 %8, 768
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not = icmp eq i16 %9, 0
  br i1 %tobool.not, label %if.end, label %netlink_dump_start.exit

netlink_dump_start.exit:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %c) #16
  %10 = getelementptr inbounds %struct.netlink_dump_control, ptr %c, i32 0, i32 1
  %11 = getelementptr inbounds %struct.netlink_dump_control, ptr %c, i32 0, i32 2
  %12 = getelementptr inbounds %struct.netlink_dump_control, ptr %c, i32 0, i32 3
  %13 = getelementptr inbounds %struct.netlink_dump_control, ptr %c, i32 0, i32 4
  %14 = getelementptr inbounds %struct.netlink_dump_control, ptr %c, i32 0, i32 5
  %15 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @ctnetlink_start, ptr %c, align 4
  %16 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @ctnetlink_dump_table, ptr %10, align 4
  %17 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @ctnetlink_done, ptr %11, align 4
  %18 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %cda, ptr %12, align 4
  %19 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %14, align 4
  %sk = getelementptr inbounds %struct.nfnl_info, ptr %info, i32 0, i32 1
  %20 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sk, align 4
  %22 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %13, align 4
  %call.i = call i32 @__netlink_dump_start(ptr noundef %21, ptr noundef %skb, ptr noundef %6, ptr noundef nonnull %c) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %c) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %23 = getelementptr inbounds %struct.nf_conntrack_zone, ptr %zone, i32 0, i32 2
  %24 = getelementptr inbounds %struct.nf_conntrack_zone, ptr %zone, i32 0, i32 1
  %arrayidx = getelementptr ptr, ptr %cda, i32 18
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx, align 4
  %27 = ptrtoint ptr %zone to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %zone, align 2
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %24, align 2
  %29 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 3, ptr %23, align 1
  %tobool.not.i74 = icmp eq ptr %26, null
  br i1 %tobool.not.i74, label %if.end.ctnetlink_parse_zone.exit_crit_edge, label %if.then.i75

if.end.ctnetlink_parse_zone.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %ctnetlink_parse_zone.exit

if.then.i75:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i.i.i = getelementptr i8, ptr %26, i32 4
  %30 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %add.ptr.i.i.i, align 2
  %32 = ptrtoint ptr %zone to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %zone, align 2
  br label %ctnetlink_parse_zone.exit

ctnetlink_parse_zone.exit:                        ; preds = %if.then.i75, %if.end.ctnetlink_parse_zone.exit_crit_edge
  %arrayidx6 = getelementptr ptr, ptr %cda, i32 1
  %33 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx6, align 4
  %tobool7.not = icmp eq ptr %34, null
  br i1 %tobool7.not, label %if.else, label %ctnetlink_parse_zone.exit.if.end16_crit_edge

ctnetlink_parse_zone.exit.if.end16_crit_edge:     ; preds = %ctnetlink_parse_zone.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16

if.else:                                          ; preds = %ctnetlink_parse_zone.exit
  %arrayidx10 = getelementptr ptr, ptr %cda, i32 2
  %35 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx10, align 4
  %tobool11.not = icmp eq ptr %36, null
  br i1 %tobool11.not, label %if.else.cleanup_crit_edge, label %if.else.if.end16_crit_edge

if.else.if.end16_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end16:                                         ; preds = %if.else.if.end16_crit_edge, %ctnetlink_parse_zone.exit.if.end16_crit_edge
  %.sink = phi i32 [ 1, %ctnetlink_parse_zone.exit.if.end16_crit_edge ], [ 2, %if.else.if.end16_crit_edge ]
  %call.i77 = call fastcc i32 @ctnetlink_parse_tuple_filter(ptr noundef %cda, ptr noundef nonnull %tuple, i32 noundef %.sink, i8 noundef zeroext %3, ptr noundef nonnull %zone, i32 noundef 4095) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i77)
  %cmp17 = icmp slt i32 %call.i77, 0
  br i1 %cmp17, label %if.end16.cleanup_crit_edge, label %if.end20

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %37 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %info, align 4
  %call21 = call ptr @nf_conntrack_find_get(ptr noundef %38, ptr noundef nonnull %zone, ptr noundef nonnull %tuple) #16
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %if.end20.cleanup_crit_edge, label %if.end24

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end24:                                         ; preds = %if.end20
  %dir.i = getelementptr inbounds %struct.nf_conntrack_tuple_hash, ptr %call21, i32 0, i32 1, i32 1, i32 3
  %39 = ptrtoint ptr %dir.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %dir.i, align 1
  %conv.i = zext i8 %40 to i32
  %.neg.i = mul nsw i32 %conv.i, -48
  %idx.neg.i = add nsw i32 %.neg.i, -56
  %add.ptr.i = getelementptr i8, ptr %call21, i32 %idx.neg.i
  %call.i.i = call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #16
  %tobool27.not = icmp eq ptr %call.i.i, null
  br i1 %tobool27.not, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end24
  %tobool.not.i78 = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i78, label %if.then28.cleanup_crit_edge, label %land.lhs.true.i

if.then28.cleanup_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.then28
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %add.ptr.i, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !133
  call void @llvm.prefetch.p0(ptr nonnull %add.ptr.i, i32 1, i32 3, i32 1) #16
  %41 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %add.ptr.i, ptr nonnull %add.ptr.i, i32 1, ptr nonnull elementtype(i32) %add.ptr.i) #16, !srcloc !134
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %41, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i79, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !135

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @refcount_warn_saturate(ptr noundef nonnull %add.ptr.i, i32 noundef 3) #16
  br label %cleanup

if.then.i79:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !136
  call void @nf_ct_destroy(ptr noundef nonnull %add.ptr.i) #16
  br label %cleanup

if.end29:                                         ; preds = %if.end24
  %portid = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %42 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %portid, align 4
  %44 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %nlmsg_seq, align 4
  %nlmsg_type = getelementptr inbounds %struct.nlmsghdr, ptr %45, i32 0, i32 1
  %48 = ptrtoint ptr %nlmsg_type to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %nlmsg_type, align 4
  %50 = and i16 %49, 255
  %and33 = zext i16 %50 to i32
  %call34 = call fastcc i32 @ctnetlink_fill_info(ptr noundef nonnull %call.i.i, i32 noundef %43, i32 noundef %47, i32 noundef %and33, ptr noundef %add.ptr.i, i1 noundef zeroext true, i32 noundef 0)
  %tobool.not.i80 = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i80, label %if.end29.nf_ct_put.exit89_crit_edge, label %land.lhs.true.i84

if.end29.nf_ct_put.exit89_crit_edge:              ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #18
  br label %nf_ct_put.exit89

land.lhs.true.i84:                                ; preds = %if.end29
  %call.i.i.i.i.i.i81 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %add.ptr.i, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !133
  call void @llvm.prefetch.p0(ptr nonnull %add.ptr.i, i32 1, i32 3, i32 1) #16
  %51 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %add.ptr.i, ptr nonnull %add.ptr.i, i32 1, ptr nonnull elementtype(i32) %add.ptr.i) #16, !srcloc !134
  %asmresult.i.i.i.i.i.i.i82 = extractvalue { i32, i32, i32 } %51, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i82)
  %cmp.i.i.i.i83 = icmp eq i32 %asmresult.i.i.i.i.i.i.i82, 1
  br i1 %cmp.i.i.i.i83, label %if.then.i88, label %if.end5.i.i.i.i86

if.end5.i.i.i.i86:                                ; preds = %land.lhs.true.i84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i82)
  %.not.i.i.i.i85 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i82, 0
  br i1 %.not.i.i.i.i85, label %if.end5.i.i.i.i86.nf_ct_put.exit89_crit_edge, label %if.then10.i.i.i.i87, !prof !135

if.end5.i.i.i.i86.nf_ct_put.exit89_crit_edge:     ; preds = %if.end5.i.i.i.i86
  call void @__sanitizer_cov_trace_pc() #18
  br label %nf_ct_put.exit89

if.then10.i.i.i.i87:                              ; preds = %if.end5.i.i.i.i86
  call void @__sanitizer_cov_trace_pc() #18
  call void @refcount_warn_saturate(ptr noundef nonnull %add.ptr.i, i32 noundef 3) #16
  br label %nf_ct_put.exit89

if.then.i88:                                      ; preds = %land.lhs.true.i84
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !136
  call void @nf_ct_destroy(ptr noundef nonnull %add.ptr.i) #16
  br label %nf_ct_put.exit89

nf_ct_put.exit89:                                 ; preds = %if.then.i88, %if.then10.i.i.i.i87, %if.end5.i.i.i.i86.nf_ct_put.exit89_crit_edge, %if.end29.nf_ct_put.exit89_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 1
  br i1 %cmp35, label %if.then37, label %if.end38

if.then37:                                        ; preds = %nf_ct_put.exit89
  call void @__sanitizer_cov_trace_pc() #18
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #16
  br label %cleanup

if.end38:                                         ; preds = %nf_ct_put.exit89
  call void @__sanitizer_cov_trace_pc() #18
  %52 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %info, align 4
  %54 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %portid, align 4
  %call42 = call i32 @nfnetlink_unicast(ptr noundef nonnull %call.i.i, ptr noundef %53, i32 noundef %55) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.then37, %if.then.i79, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.then28.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.else.cleanup_crit_edge, %netlink_dump_start.exit
  %retval.0 = phi i32 [ %call.i, %netlink_dump_start.exit ], [ -12, %if.then37 ], [ %call42, %if.end38 ], [ -22, %if.else.cleanup_crit_edge ], [ %call.i77, %if.end16.cleanup_crit_edge ], [ -2, %if.end20.cleanup_crit_edge ], [ -12, %if.then28.cleanup_crit_edge ], [ -12, %if.end5.i.i.i.i.cleanup_crit_edge ], [ -12, %if.then10.i.i.i.i ], [ -12, %if.then.i79 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %zone) #16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %tuple) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ctnetlink_del_conntrack(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %cda) #2 align 64 {
entry:
  %tuple = alloca %struct.nf_conntrack_tuple, align 4
  %zone = alloca %struct.nf_conntrack_zone, align 2
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %nfmsg = getelementptr inbounds %struct.nfnl_info, ptr %info, i32 0, i32 3
  %0 = ptrtoint ptr %nfmsg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nfmsg, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 2
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %tuple) #16
  %4 = call ptr @memset(ptr %tuple, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %zone) #16
  %5 = getelementptr inbounds %struct.nf_conntrack_zone, ptr %zone, i32 0, i32 1
  %6 = getelementptr inbounds %struct.nf_conntrack_zone, ptr %zone, i32 0, i32 2
  %arrayidx = getelementptr ptr, ptr %cda, i32 18
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %9 = ptrtoint ptr %zone to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %zone, align 2
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %5, align 2
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 3, ptr %6, align 1
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %entry.ctnetlink_parse_zone.exit_crit_edge, label %if.then.i

entry.ctnetlink_parse_zone.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %ctnetlink_parse_zone.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i.i.i = getelementptr i8, ptr %8, i32 4
  %12 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %add.ptr.i.i.i, align 2
  %14 = ptrtoint ptr %zone to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %zone, align 2
  br label %ctnetlink_parse_zone.exit

ctnetlink_parse_zone.exit:                        ; preds = %if.then.i, %entry.ctnetlink_parse_zone.exit_crit_edge
  %arrayidx1 = getelementptr ptr, ptr %cda, i32 1
  %15 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx1, align 4
  %tobool.not = icmp eq ptr %16, null
  br i1 %tobool.not, label %if.else, label %ctnetlink_parse_zone.exit.if.end16_crit_edge

ctnetlink_parse_zone.exit.if.end16_crit_edge:     ; preds = %ctnetlink_parse_zone.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16

if.else:                                          ; preds = %ctnetlink_parse_zone.exit
  %arrayidx4 = getelementptr ptr, ptr %cda, i32 2
  %17 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx4, align 4
  %tobool5.not = icmp eq ptr %18, null
  br i1 %tobool5.not, label %if.else8, label %if.else.if.end16_crit_edge

if.else.if.end16_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16

if.else8:                                         ; preds = %if.else
  %version = getelementptr inbounds %struct.nfgenmsg, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %version, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool10.not = icmp eq i8 %20, 0
  %spec.select = select i1 %tobool10.not, i8 0, i8 %3
  %21 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %info, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %23 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %portid, align 4
  %nlh = getelementptr inbounds %struct.nfnl_info, ptr %info, i32 0, i32 2
  %25 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %nlh, align 4
  %tobool.not.i79 = icmp eq ptr %26, null
  br i1 %tobool.not.i79, label %if.else8.nlmsg_report.exit_crit_edge, label %cond.true.i

if.else8.nlmsg_report.exit_crit_edge:             ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #18
  br label %nlmsg_report.exit

cond.true.i:                                      ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #18
  %nlmsg_flags.i = getelementptr inbounds %struct.nlmsghdr, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %nlmsg_flags.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %nlmsg_flags.i, align 2
  %29 = lshr i16 %28, 3
  %.lobit.i = and i16 %29, 1
  %30 = zext i16 %.lobit.i to i32
  br label %nlmsg_report.exit

nlmsg_report.exit:                                ; preds = %cond.true.i, %if.else8.nlmsg_report.exit_crit_edge
  %cond.i = phi i32 [ %30, %cond.true.i ], [ 0, %if.else8.nlmsg_report.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %spec.select)
  %tobool.not.i.i = icmp eq i8 %spec.select, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %nlmsg_report.exit.if.then.i81_crit_edge

nlmsg_report.exit.if.then.i81_crit_edge:          ; preds = %nlmsg_report.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i81

lor.lhs.false.i.i:                                ; preds = %nlmsg_report.exit
  %arrayidx.i.i = getelementptr ptr, ptr %cda, i32 8
  %31 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %32, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false2.i.i, label %lor.lhs.false.i.i.if.then.i81_crit_edge

lor.lhs.false.i.i.if.then.i81_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i81

lor.lhs.false2.i.i:                               ; preds = %lor.lhs.false.i.i
  %arrayidx3.i.i = getelementptr ptr, ptr %cda, i32 25
  %33 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx3.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %34, null
  br i1 %tobool4.not.i.i, label %ctnetlink_needs_filter.exit.i, label %lor.lhs.false2.i.i.if.then.i81_crit_edge

lor.lhs.false2.i.i.if.then.i81_crit_edge:         ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i81

ctnetlink_needs_filter.exit.i:                    ; preds = %lor.lhs.false2.i.i
  %arrayidx5.i.i = getelementptr ptr, ptr %cda, i32 3
  %35 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx5.i.i, align 4
  %tobool6.i.not.i = icmp eq ptr %36, null
  br i1 %tobool6.i.not.i, label %ctnetlink_needs_filter.exit.i.if.end7.i_crit_edge, label %ctnetlink_needs_filter.exit.i.if.then.i81_crit_edge

ctnetlink_needs_filter.exit.i.if.then.i81_crit_edge: ; preds = %ctnetlink_needs_filter.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i81

ctnetlink_needs_filter.exit.i.if.end7.i_crit_edge: ; preds = %ctnetlink_needs_filter.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7.i

if.then.i81:                                      ; preds = %ctnetlink_needs_filter.exit.i.if.then.i81_crit_edge, %lor.lhs.false2.i.i.if.then.i81_crit_edge, %lor.lhs.false.i.i.if.then.i81_crit_edge, %nlmsg_report.exit.if.then.i81_crit_edge
  %arrayidx.i = getelementptr ptr, ptr %cda, i32 25
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i80 = icmp eq ptr %38, null
  br i1 %tobool.not.i80, label %if.end.i, label %if.then.i81.cleanup47_crit_edge

if.then.i81.cleanup47_crit_edge:                  ; preds = %if.then.i81
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup47

if.end.i:                                         ; preds = %if.then.i81
  %call2.i = tail call fastcc ptr @ctnetlink_alloc_filter(ptr noundef %cda, i8 noundef zeroext %spec.select) #16
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then4.i, label %if.end.i.if.end7.i_crit_edge

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %39 = ptrtoint ptr %call2.i to i32
  br label %cleanup47

if.end7.i:                                        ; preds = %if.end.i.if.end7.i_crit_edge, %ctnetlink_needs_filter.exit.i.if.end7.i_crit_edge
  %filter.0.i = phi ptr [ %call2.i, %if.end.i.if.end7.i_crit_edge ], [ null, %ctnetlink_needs_filter.exit.i.if.end7.i_crit_edge ]
  tail call void @nf_ct_iterate_cleanup_net(ptr noundef %22, ptr noundef nonnull @ctnetlink_flush_iterate, ptr noundef %filter.0.i, i32 noundef %24, i32 noundef %cond.i) #16
  tail call void @kfree(ptr noundef %filter.0.i) #16
  br label %cleanup47

if.end16:                                         ; preds = %if.else.if.end16_crit_edge, %ctnetlink_parse_zone.exit.if.end16_crit_edge
  %.sink = phi i32 [ 1, %ctnetlink_parse_zone.exit.if.end16_crit_edge ], [ 2, %if.else.if.end16_crit_edge ]
  %call.i78 = call fastcc i32 @ctnetlink_parse_tuple_filter(ptr noundef %cda, ptr noundef nonnull %tuple, i32 noundef %.sink, i8 noundef zeroext %3, ptr noundef nonnull %zone, i32 noundef 4095) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78)
  %cmp17 = icmp slt i32 %call.i78, 0
  br i1 %cmp17, label %if.end16.cleanup47_crit_edge, label %if.end20

if.end16.cleanup47_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup47

if.end20:                                         ; preds = %if.end16
  %40 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %info, align 4
  %call22 = call ptr @nf_conntrack_find_get(ptr noundef %41, ptr noundef nonnull %zone, ptr noundef nonnull %tuple) #16
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %if.end20.cleanup47_crit_edge, label %if.end25

if.end20.cleanup47_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup47

if.end25:                                         ; preds = %if.end20
  %dir.i = getelementptr inbounds %struct.nf_conntrack_tuple_hash, ptr %call22, i32 0, i32 1, i32 1, i32 3
  %42 = ptrtoint ptr %dir.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %dir.i, align 1
  %conv.i = zext i8 %43 to i32
  %.neg.i = mul nsw i32 %conv.i, -48
  %idx.neg.i = add nsw i32 %.neg.i, -56
  %add.ptr.i = getelementptr i8, ptr %call22, i32 %idx.neg.i
  %status = getelementptr inbounds %struct.nf_conn, ptr %add.ptr.i, i32 0, i32 5
  %44 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %status, align 4
  %46 = and i32 %45, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool28.not = icmp eq i32 %46, 0
  br i1 %tobool28.not, label %if.end30, label %if.then29

if.then29:                                        ; preds = %if.end25
  %tobool.not.i82 = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i82, label %if.then29.cleanup47_crit_edge, label %land.lhs.true.i

if.then29.cleanup47_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup47

land.lhs.true.i:                                  ; preds = %if.then29
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %add.ptr.i, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !133
  call void @llvm.prefetch.p0(ptr nonnull %add.ptr.i, i32 1, i32 3, i32 1) #16
  %47 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %add.ptr.i, ptr nonnull %add.ptr.i, i32 1, ptr nonnull elementtype(i32) %add.ptr.i) #16, !srcloc !134
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %47, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i83, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup47_crit_edge, label %if.then10.i.i.i.i, !prof !135

if.end5.i.i.i.i.cleanup47_crit_edge:              ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup47

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @refcount_warn_saturate(ptr noundef nonnull %add.ptr.i, i32 noundef 3) #16
  br label %cleanup47

if.then.i83:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !136
  call void @nf_ct_destroy(ptr noundef nonnull %add.ptr.i) #16
  br label %cleanup47

if.end30:                                         ; preds = %if.end25
  %arrayidx31 = getelementptr ptr, ptr %cda, i32 12
  %48 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx31, align 4
  %tobool32.not = icmp eq ptr %49, null
  br i1 %tobool32.not, label %if.end30.if.end41_crit_edge, label %if.then33

if.end30.if.end41_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end41

if.then33:                                        ; preds = %if.end30
  %add.ptr.i.i = getelementptr i8, ptr %49, i32 4
  %50 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %add.ptr.i.i, align 4
  %call36 = call i32 @nf_ct_get_id(ptr noundef %add.ptr.i) #16
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %call36)
  %cmp37.not = icmp eq i32 %51, %call36
  br i1 %cmp37.not, label %if.then33.if.end41_crit_edge, label %if.then39

if.then33.if.end41_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end41

if.then39:                                        ; preds = %if.then33
  %tobool.not.i85 = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i85, label %if.then39.cleanup47_crit_edge, label %land.lhs.true.i89

if.then39.cleanup47_crit_edge:                    ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup47

land.lhs.true.i89:                                ; preds = %if.then39
  %call.i.i.i.i.i.i86 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %add.ptr.i, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !133
  call void @llvm.prefetch.p0(ptr nonnull %add.ptr.i, i32 1, i32 3, i32 1) #16
  %52 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %add.ptr.i, ptr nonnull %add.ptr.i, i32 1, ptr nonnull elementtype(i32) %add.ptr.i) #16, !srcloc !134
  %asmresult.i.i.i.i.i.i.i87 = extractvalue { i32, i32, i32 } %52, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i87)
  %cmp.i.i.i.i88 = icmp eq i32 %asmresult.i.i.i.i.i.i.i87, 1
  br i1 %cmp.i.i.i.i88, label %if.then.i93, label %if.end5.i.i.i.i91

if.end5.i.i.i.i91:                                ; preds = %land.lhs.true.i89
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i87)
  %.not.i.i.i.i90 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i87, 0
  br i1 %.not.i.i.i.i90, label %if.end5.i.i.i.i91.cleanup47_crit_edge, label %if.then10.i.i.i.i92, !prof !135

if.end5.i.i.i.i91.cleanup47_crit_edge:            ; preds = %if.end5.i.i.i.i91
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup47

if.then10.i.i.i.i92:                              ; preds = %if.end5.i.i.i.i91
  call void @__sanitizer_cov_trace_pc() #18
  call void @refcount_warn_saturate(ptr noundef nonnull %add.ptr.i, i32 noundef 3) #16
  br label %cleanup47

if.then.i93:                                      ; preds = %land.lhs.true.i89
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !136
  call void @nf_ct_destroy(ptr noundef nonnull %add.ptr.i) #16
  br label %cleanup47

if.end41:                                         ; preds = %if.then33.if.end41_crit_edge, %if.end30.if.end41_crit_edge
  %portid43 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %53 = ptrtoint ptr %portid43 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %portid43, align 4
  %nlh44 = getelementptr inbounds %struct.nfnl_info, ptr %info, i32 0, i32 2
  %55 = ptrtoint ptr %nlh44 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %nlh44, align 4
  %tobool.not.i96 = icmp eq ptr %56, null
  br i1 %tobool.not.i96, label %if.end41.nlmsg_report.exit101_crit_edge, label %cond.true.i99

if.end41.nlmsg_report.exit101_crit_edge:          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #18
  br label %nlmsg_report.exit101

cond.true.i99:                                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #18
  %nlmsg_flags.i97 = getelementptr inbounds %struct.nlmsghdr, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %nlmsg_flags.i97 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %nlmsg_flags.i97, align 2
  %59 = lshr i16 %58, 3
  %.lobit.i98 = and i16 %59, 1
  %60 = zext i16 %.lobit.i98 to i32
  br label %nlmsg_report.exit101

nlmsg_report.exit101:                             ; preds = %cond.true.i99, %if.end41.nlmsg_report.exit101_crit_edge
  %cond.i100 = phi i32 [ %60, %cond.true.i99 ], [ 0, %if.end41.nlmsg_report.exit101_crit_edge ]
  %call46 = call zeroext i1 @nf_ct_delete(ptr noundef %add.ptr.i, i32 noundef %54, i32 noundef %cond.i100) #16
  %tobool.not.i102 = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i102, label %nlmsg_report.exit101.cleanup47_crit_edge, label %land.lhs.true.i106

nlmsg_report.exit101.cleanup47_crit_edge:         ; preds = %nlmsg_report.exit101
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup47

land.lhs.true.i106:                               ; preds = %nlmsg_report.exit101
  %call.i.i.i.i.i.i103 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %add.ptr.i, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !133
  call void @llvm.prefetch.p0(ptr nonnull %add.ptr.i, i32 1, i32 3, i32 1) #16
  %61 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %add.ptr.i, ptr nonnull %add.ptr.i, i32 1, ptr nonnull elementtype(i32) %add.ptr.i) #16, !srcloc !134
  %asmresult.i.i.i.i.i.i.i104 = extractvalue { i32, i32, i32 } %61, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i104)
  %cmp.i.i.i.i105 = icmp eq i32 %asmresult.i.i.i.i.i.i.i104, 1
  br i1 %cmp.i.i.i.i105, label %if.then.i110, label %if.end5.i.i.i.i108

if.end5.i.i.i.i108:                               ; preds = %land.lhs.true.i106
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i104)
  %.not.i.i.i.i107 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i104, 0
  br i1 %.not.i.i.i.i107, label %if.end5.i.i.i.i108.cleanup47_crit_edge, label %if.then10.i.i.i.i109, !prof !135

if.end5.i.i.i.i108.cleanup47_crit_edge:           ; preds = %if.end5.i.i.i.i108
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup47

if.then10.i.i.i.i109:                             ; preds = %if.end5.i.i.i.i108
  call void @__sanitizer_cov_trace_pc() #18
  call void @refcount_warn_saturate(ptr noundef nonnull %add.ptr.i, i32 noundef 3) #16
  br label %cleanup47

if.then.i110:                                     ; preds = %land.lhs.true.i106
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !136
  call void @nf_ct_destroy(ptr noundef nonnull %add.ptr.i) #16
  br label %cleanup47

cleanup47:                                        ; preds = %if.then.i110, %if.then10.i.i.i.i109, %if.end5.i.i.i.i108.cleanup47_crit_edge, %nlmsg_report.exit101.cleanup47_crit_edge, %if.then.i93, %if.then10.i.i.i.i92, %if.end5.i.i.i.i91.cleanup47_crit_edge, %if.then39.cleanup47_crit_edge, %if.then.i83, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup47_crit_edge, %if.then29.cleanup47_crit_edge, %if.end20.cleanup47_crit_edge, %if.end16.cleanup47_crit_edge, %if.end7.i, %if.then4.i, %if.then.i81.cleanup47_crit_edge
  %retval.1 = phi i32 [ %call.i78, %if.end16.cleanup47_crit_edge ], [ -2, %if.end20.cleanup47_crit_edge ], [ %39, %if.then4.i ], [ 0, %if.end7.i ], [ -95, %if.then.i81.cleanup47_crit_edge ], [ -16, %if.then29.cleanup47_crit_edge ], [ -16, %if.end5.i.i.i.i.cleanup47_crit_edge ], [ -16, %if.then10.i.i.i.i ], [ -16, %if.then.i83 ], [ -2, %if.then39.cleanup47_crit_edge ], [ -2, %if.end5.i.i.i.i91.cleanup47_crit_edge ], [ -2, %if.then10.i.i.i.i92 ], [ -2, %if.then.i93 ], [ 0, %nlmsg_report.exit101.cleanup47_crit_edge ], [ 0, %if.end5.i.i.i.i108.cleanup47_crit_edge ], [ 0, %if.then10.i.i.i.i109 ], [ 0, %if.then.i110 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %zone) #16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %tuple) #16
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ctnetlink_stat_ct_cpu(ptr noundef %skb, ptr nocapture noundef readonly %info, ptr nocapture noundef readnone %cda) #2 align 64 {
entry:
  %c = alloca %struct.netlink_dump_control, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %nlh = getelementptr inbounds %struct.nfnl_info, ptr %info, i32 0, i32 2
  %0 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nlh, align 4
  %nlmsg_flags = getelementptr inbounds %struct.nlmsghdr, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %nlmsg_flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %nlmsg_flags, align 2
  %4 = and i16 %3, 768
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %netlink_dump_start.exit

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

netlink_dump_start.exit:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %c) #16
  %5 = call ptr @memcpy(ptr %c, ptr @__const.ctnetlink_stat_ct_cpu.c, i32 24)
  %sk = getelementptr inbounds %struct.nfnl_info, ptr %info, i32 0, i32 1
  %6 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sk, align 4
  %module.i = getelementptr inbounds %struct.netlink_dump_control, ptr %c, i32 0, i32 4
  %8 = ptrtoint ptr %module.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %module.i, align 4
  %call.i = call i32 @__netlink_dump_start(ptr noundef %7, ptr noundef %skb, ptr noundef %1, ptr noundef nonnull %c) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %c) #16
  br label %return

return:                                           ; preds = %netlink_dump_start.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call.i, %netlink_dump_start.exit ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ctnetlink_stat_ct(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %info, ptr nocapture noundef readnone %cda) #2 align 64 {
entry:
  %tmp.i1.i = alloca i32, align 4
  %tmp.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #16
  %cmp = icmp eq ptr %call.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %portid = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %0 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %portid, align 4
  %nlh = getelementptr inbounds %struct.nfnl_info, ptr %info, i32 0, i32 2
  %2 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nlmsg_seq, align 4
  %6 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %skc_net.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  %cond.i = select i1 %tobool.not.i, i32 0, i32 2
  %data_len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 7
  %11 = ptrtoint ptr %data_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data_len.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.i.not.i.i.i.i = icmp eq i32 %12, 0
  br i1 %tobool.i.not.i.i.i.i, label %skb_tailroom.exit.i.i.i, label %if.end.if.then6_crit_edge

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then6

skb_tailroom.exit.i.i.i:                          ; preds = %if.end
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 17
  %13 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %end.i.i.i.i, align 4
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %15 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tail.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %14 to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %16 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.ptr.sub.i.i.i.i)
  %cmp.i.i.i = icmp slt i32 %sub.ptr.sub.i.i.i.i, 20
  br i1 %cmp.i.i.i, label %skb_tailroom.exit.i.i.i.if.then6_crit_edge, label %nlmsg_put.exit.i.i, !prof !129

skb_tailroom.exit.i.i.i.if.then6_crit_edge:       ; preds = %skb_tailroom.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then6

nlmsg_put.exit.i.i:                               ; preds = %skb_tailroom.exit.i.i.i
  %call3.i.i.i = tail call ptr @__nlmsg_put(ptr noundef nonnull %call.i.i, i32 noundef %1, i32 noundef %5, i32 noundef 261, i32 noundef 4, i32 noundef %cond.i) #16
  %tobool.not.i.i = icmp eq ptr %call3.i.i.i, null
  br i1 %tobool.not.i.i, label %nlmsg_put.exit.i.i.if.then6_crit_edge, label %if.end.i

nlmsg_put.exit.i.i.if.then6_crit_edge:            ; preds = %nlmsg_put.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then6

if.end.i:                                         ; preds = %nlmsg_put.exit.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %call3.i.i.i, i32 16
  %17 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 0, ptr %add.ptr.i.i.i.i, align 2
  %call3.i = tail call i32 @nf_conntrack_count(ptr noundef %10) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #16
  %18 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call3.i, ptr %tmp.i.i, align 4
  %call.i.i19 = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i19)
  %tobool5.not.i = icmp eq i32 %call.i.i19, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %if.end.i.if.then.i.i.i_crit_edge

if.end.i.if.then.i.i.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i.i

if.end7.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nf_conntrack_max to i32))
  %19 = load i32, ptr @nf_conntrack_max, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i1.i) #16
  %20 = ptrtoint ptr %tmp.i1.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %tmp.i1.i, align 4
  %call.i2.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i1.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i1.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.i)
  %tobool9.not.i = icmp eq i32 %call.i2.i, 0
  br i1 %tobool9.not.i, label %ctnetlink_stat_ct_fill_info.exit, label %if.end7.i.if.then.i.i.i_crit_edge

if.end7.i.if.then.i.i.i_crit_edge:                ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end7.i.if.then.i.i.i_crit_edge, %if.end.i.if.then.i.i.i_crit_edge
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %21 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i3.i = icmp ugt ptr %22, %call3.i.i.i
  br i1 %cmp.i.i3.i, label %do.end.i.i.i, label %if.then.i.i.i.if.end.i.i.i_crit_edge, !prof !129

if.then.i.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 991, i32 noundef 9, ptr noundef null) #16
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i.i, %if.then.i.i.i.if.end.i.i.i_crit_edge
  %23 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %call3.i.i.i to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %24 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @skb_trim(ptr noundef nonnull %call.i.i, i32 noundef %sub.ptr.sub.i.i.i) #16
  br label %if.then6

ctnetlink_stat_ct_fill_info.exit:                 ; preds = %if.end7.i
  %25 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tail.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %26 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %call3.i.i.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %27 = ptrtoint ptr %call3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %sub.ptr.sub.i.i, ptr %call3.i.i.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %28 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp4 = icmp slt i32 %29, 1
  br i1 %cmp4, label %ctnetlink_stat_ct_fill_info.exit.if.then6_crit_edge, label %if.end7

ctnetlink_stat_ct_fill_info.exit.if.then6_crit_edge: ; preds = %ctnetlink_stat_ct_fill_info.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then6

if.then6:                                         ; preds = %ctnetlink_stat_ct_fill_info.exit.if.then6_crit_edge, %if.end.i.i.i, %nlmsg_put.exit.i.i.if.then6_crit_edge, %skb_tailroom.exit.i.i.i.if.then6_crit_edge, %if.end.if.then6_crit_edge
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #16
  br label %cleanup

if.end7:                                          ; preds = %ctnetlink_stat_ct_fill_info.exit
  call void @__sanitizer_cov_trace_pc() #18
  %30 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %info, align 4
  %32 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %portid, align 4
  %call10 = call i32 @nfnetlink_unicast(ptr noundef nonnull %call.i.i, ptr noundef %31, i32 noundef %33) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then6 ], [ %call10, %if.end7 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ctnetlink_get_ct_dying(ptr noundef %skb, ptr nocapture noundef readonly %info, ptr nocapture noundef readnone %cda) #2 align 64 {
entry:
  %c = alloca %struct.netlink_dump_control, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %nlh = getelementptr inbounds %struct.nfnl_info, ptr %info, i32 0, i32 2
  %0 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nlh, align 4
  %nlmsg_flags = getelementptr inbounds %struct.nlmsghdr, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %nlmsg_flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %nlmsg_flags, align 2
  %4 = and i16 %3, 768
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %netlink_dump_start.exit

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

netlink_dump_start.exit:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %c) #16
  %5 = call ptr @memcpy(ptr %c, ptr @__const.ctnetlink_get_ct_dying.c, i32 24)
  %sk = getelementptr inbounds %struct.nfnl_info, ptr %info, i32 0, i32 1
  %6 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sk, align 4
  %module.i = getelementptr inbounds %struct.netlink_dump_control, ptr %c, i32 0, i32 4
  %8 = ptrtoint ptr %module.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %module.i, align 4
  %call.i = call i32 @__netlink_dump_start(ptr noundef %7, ptr noundef %skb, ptr noundef %1, ptr noundef nonnull %c) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %c) #16
  br label %return

return:                                           ; preds = %netlink_dump_start.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call.i, %netlink_dump_start.exit ], [ -95, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ctnetlink_get_ct_unconfirmed(ptr noundef %skb, ptr nocapture noundef readonly %info, ptr nocapture noundef readnone %cda) #2 align 64 {
entry:
  %c = alloca %struct.netlink_dump_control, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %nlh = getelementptr inbounds %struct.nfnl_info, ptr %info, i32 0, i32 2
  %0 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nlh, align 4
  %nlmsg_flags = getelementptr inbounds %struct.nlmsghdr, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %nlmsg_flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %nlmsg_flags, align 2
  %4 = and i16 %3, 768
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %netlink_dump_start.exit

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

netlink_dump_start.exit:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %c) #16
  %5 = call ptr @memcpy(ptr %c, ptr @__const.ctnetlink_get_ct_unconfirmed.c, i32 24)
  %sk = getelementptr inbounds %struct.nfnl_info, ptr %info, i32 0, i32 1
  %6 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sk, align 4
  %module.i = getelementptr inbounds %struct.netlink_dump_control, ptr %c, i32 0, i32 4
  %8 = ptrtoint ptr %module.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %module.i, align 4
  %call.i = call i32 @__netlink_dump_start(ptr noundef %7, ptr noundef %skb, ptr noundef %1, ptr noundef nonnull %c) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %c) #16
  br label %return

return:                                           ; preds = %netlink_dump_start.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call.i, %netlink_dump_start.exit ], [ -95, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ctnetlink_create_conntrack(ptr noundef %net, ptr noundef %zone, ptr nocapture noundef readonly %cda, ptr noundef %otuple, ptr noundef %rtuple, i8 noundef zeroext %u3) unnamed_addr #2 align 64 {
entry:
  %tb.i277 = alloca [4 x ptr], align 4
  %tb.i = alloca [3 x ptr], align 4
  %master = alloca %struct.nf_conntrack_tuple, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nf_conntrack_alloc(ptr noundef %net, ptr noundef %zone, ptr noundef %otuple, ptr noundef %rtuple, i32 noundef 2592) #16
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup158_crit_edge, label %if.end

entry.cleanup158_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup158

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr ptr, ptr %cda, i32 7
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.err1_crit_edge, label %if.end4

if.end.err1_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %err1

if.end4:                                          ; preds = %if.end
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i.i, align 4
  %conv = zext i32 %3 to i64
  %mul = mul nuw nsw i64 %conv, 100
  %4 = tail call i64 @llvm.umin.i64(i64 %mul, i64 2147483647)
  %conv10 = trunc i64 %4 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %5, %conv10
  %timeout11 = getelementptr inbounds %struct.nf_conn, ptr %call, i32 0, i32 2
  %6 = ptrtoint ptr %timeout11 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add, ptr %timeout11, align 8
  %7 = tail call i32 @llvm.read_register.i32(metadata !118) #16
  %and.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %10, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !130
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %if.end4.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end4.rcu_read_lock.exit_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end4
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 696, ptr noundef nonnull @.str.1) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end4.rcu_read_lock.exit_crit_edge
  %arrayidx12 = getelementptr ptr, ptr %cda, i32 5
  %11 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx12, align 4
  %tobool13.not = icmp eq ptr %12, null
  br i1 %tobool13.not, label %if.else63, label %if.then14

if.then14:                                        ; preds = %rcu_read_lock.exit
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tb.i) #16
  %13 = ptrtoint ptr %tb.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 -1 to ptr), ptr %tb.i, align 4, !annotation !128
  %14 = getelementptr inbounds [3 x ptr], ptr %tb.i, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 -1 to ptr), ptr %14, align 4, !annotation !128
  %16 = getelementptr inbounds [3 x ptr], ptr %tb.i, i32 0, i32 2
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 -1 to ptr), ptr %16, align 4, !annotation !128
  %add.ptr.i.i.i = getelementptr i8, ptr %12, i32 4
  %18 = ptrtoint ptr %12 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %12, align 2
  %conv.i.i.i = zext i16 %19 to i32
  %sub.i.i.i = add nsw i32 %conv.i.i.i, -4
  %call2.i.i = call i32 @__nla_parse(ptr noundef nonnull %tb.i, i32 noundef 2, ptr noundef %add.ptr.i.i.i, i32 noundef %sub.i.i.i, ptr noundef nonnull @help_nla_policy, i32 noundef 0, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp.i243 = icmp slt i32 %call2.i.i, 0
  br i1 %cmp.i243, label %if.then14.ctnetlink_parse_help.exit.thread_crit_edge, label %if.end.i

if.then14.ctnetlink_parse_help.exit.thread_crit_edge: ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #18
  br label %ctnetlink_parse_help.exit.thread

if.end.i:                                         ; preds = %if.then14
  %20 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %14, align 4
  %tobool.not.i244 = icmp eq ptr %21, null
  br i1 %tobool.not.i244, label %if.end.i.ctnetlink_parse_help.exit.thread_crit_edge, label %if.end2.i

if.end.i.ctnetlink_parse_help.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ctnetlink_parse_help.exit.thread

if.end2.i:                                        ; preds = %if.end.i
  %add.ptr.i.i245 = getelementptr i8, ptr %21, i32 4
  %22 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %16, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tb.i) #16
  %l3num.i = getelementptr inbounds %struct.nf_conn, ptr %call, i32 0, i32 4, i32 0, i32 1, i32 0, i32 2
  %24 = ptrtoint ptr %l3num.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %l3num.i, align 2
  %protonum.i = getelementptr inbounds %struct.nf_conn, ptr %call, i32 0, i32 4, i32 0, i32 1, i32 1, i32 2
  %26 = ptrtoint ptr %protonum.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %protonum.i, align 2
  %call23 = call ptr @__nf_conntrack_helper_find(ptr noundef %add.ptr.i.i245, i16 noundef zeroext %25, i8 noundef zeroext %27) #16
  %cmp24 = icmp eq ptr %call23, null
  br i1 %cmp24, label %if.then26, label %if.else

ctnetlink_parse_help.exit.thread:                 ; preds = %if.end.i.ctnetlink_parse_help.exit.thread_crit_edge, %if.then14.ctnetlink_parse_help.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -22, %if.end.i.ctnetlink_parse_help.exit.thread_crit_edge ], [ %call2.i.i, %if.then14.ctnetlink_parse_help.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tb.i) #16
  br label %err2

if.then26:                                        ; preds = %if.end2.i
  %call.i246 = call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i246, label %if.then26.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i249

if.then26.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true.i249:                               ; preds = %if.then26
  %call1.i247 = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i247)
  %tobool.not.i248 = icmp eq i32 %call1.i247, 0
  br i1 %tobool.not.i248, label %land.lhs.true.i249.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i251

land.lhs.true.i249.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i249
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true2.i251:                              ; preds = %land.lhs.true.i249
  %.b4.i250 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i250, label %land.lhs.true2.i251.rcu_read_unlock.exit_crit_edge, label %if.then.i252

land.lhs.true2.i251.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i251
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

if.then.i252:                                     ; preds = %land.lhs.true2.i251
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 724, ptr noundef nonnull @.str.2) #16
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i252, %land.lhs.true2.i251.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i249.rcu_read_unlock.exit_crit_edge, %if.then26.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !131
  %28 = call i32 @llvm.read_register.i32(metadata !118) #16
  %and.i.i.i.i.i253 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i.i253 to ptr
  %preempt_count.i.i.i.i254 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i.i.i254 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i.i.i254, align 4
  %sub.i.i.i255 = add i32 %31, -1
  store volatile i32 %sub.i.i.i255, ptr %preempt_count.i.i.i.i254, align 4
  call void @rcu_read_unlock_strict() #16
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  %call27 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.8, ptr noundef %add.ptr.i.i245) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %rcu_read_unlock.exit.err1_crit_edge, label %if.end31

rcu_read_unlock.exit.err1_crit_edge:              ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %err1

if.end31:                                         ; preds = %rcu_read_unlock.exit
  %32 = call i32 @llvm.read_register.i32(metadata !118) #16
  %and.i.i.i.i.i232 = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i.i.i232 to ptr
  %preempt_count.i.i.i.i233 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %preempt_count.i.i.i.i233 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %preempt_count.i.i.i.i233, align 4
  %add.i.i.i234 = add i32 %35, 1
  store volatile i32 %add.i.i.i234, ptr %preempt_count.i.i.i.i233, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !130
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i235 = call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i235, label %if.end31.rcu_read_lock.exit242_crit_edge, label %land.lhs.true.i238

if.end31.rcu_read_lock.exit242_crit_edge:         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit242

land.lhs.true.i238:                               ; preds = %if.end31
  %call1.i236 = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i236)
  %tobool.not.i237 = icmp eq i32 %call1.i236, 0
  br i1 %tobool.not.i237, label %land.lhs.true.i238.rcu_read_lock.exit242_crit_edge, label %land.lhs.true2.i240

land.lhs.true.i238.rcu_read_lock.exit242_crit_edge: ; preds = %land.lhs.true.i238
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit242

land.lhs.true2.i240:                              ; preds = %land.lhs.true.i238
  %.b4.i239 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i239, label %land.lhs.true2.i240.rcu_read_lock.exit242_crit_edge, label %if.then.i241

land.lhs.true2.i240.rcu_read_lock.exit242_crit_edge: ; preds = %land.lhs.true2.i240
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit242

if.then.i241:                                     ; preds = %land.lhs.true2.i240
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 696, ptr noundef nonnull @.str.1) #16
  br label %rcu_read_lock.exit242

rcu_read_lock.exit242:                            ; preds = %if.then.i241, %land.lhs.true2.i240.rcu_read_lock.exit242_crit_edge, %land.lhs.true.i238.rcu_read_lock.exit242_crit_edge, %if.end31.rcu_read_lock.exit242_crit_edge
  %36 = ptrtoint ptr %l3num.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %l3num.i, align 2
  %38 = ptrtoint ptr %protonum.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %protonum.i, align 2
  %call34 = call ptr @__nf_conntrack_helper_find(ptr noundef %add.ptr.i.i245, i16 noundef zeroext %37, i8 noundef zeroext %39) #16
  %tobool35.not = icmp eq ptr %call34, null
  br i1 %tobool35.not, label %if.end37, label %rcu_read_lock.exit242.err2_crit_edge

rcu_read_lock.exit242.err2_crit_edge:             ; preds = %rcu_read_lock.exit242
  call void @__sanitizer_cov_trace_pc() #18
  br label %err2

if.end37:                                         ; preds = %rcu_read_lock.exit242
  call void @__sanitizer_cov_trace_pc() #18
  call fastcc void @rcu_read_unlock()
  br label %err1

if.else:                                          ; preds = %if.end2.i
  %call38 = call ptr @nf_ct_helper_ext_add(ptr noundef %call, i32 noundef 2592) #16
  %cmp39 = icmp eq ptr %call38, null
  br i1 %cmp39, label %if.else.err2_crit_edge, label %if.end42

if.else.err2_crit_edge:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %err2

if.end42:                                         ; preds = %if.else
  %from_nlattr = getelementptr inbounds %struct.nf_conntrack_helper, ptr %call23, i32 0, i32 8
  %40 = ptrtoint ptr %from_nlattr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %from_nlattr, align 4
  %tobool43.not = icmp eq ptr %41, null
  br i1 %tobool43.not, label %if.end42.cleanup59_crit_edge, label %if.then44

if.end42.cleanup59_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup59

if.then44:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #18
  %call46 = call i32 %41(ptr noundef %23, ptr noundef %call) #16
  br label %cleanup59

cleanup59:                                        ; preds = %if.then44, %if.end42.cleanup59_crit_edge
  %status = getelementptr inbounds %struct.nf_conn, ptr %call, i32 0, i32 5
  %42 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %status, align 8
  %or = or i32 %43, 8192
  store i32 %or, ptr %status, align 8
  %44 = ptrtoint ptr %call38 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %call23, ptr %call38, align 8
  br label %if.end69

if.else63:                                        ; preds = %rcu_read_lock.exit
  %call64 = tail call i32 @__nf_ct_try_assign_helper(ptr noundef %call, ptr noundef null, i32 noundef 2592) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %cmp65 = icmp slt i32 %call64, 0
  br i1 %cmp65, label %if.else63.err2_crit_edge, label %if.else63.if.end69_crit_edge

if.else63.if.end69_crit_edge:                     ; preds = %if.else63
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end69

if.else63.err2_crit_edge:                         ; preds = %if.else63
  call void @__sanitizer_cov_trace_pc() #18
  br label %err2

if.end69:                                         ; preds = %if.else63.if.end69_crit_edge, %cleanup59
  %arrayidx.i = getelementptr ptr, ptr %cda, i32 13
  %45 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i258 = icmp eq ptr %46, null
  br i1 %tobool.not.i258, label %land.lhs.true.i259, label %if.end69.if.end.i262_crit_edge

if.end69.if.end.i262_crit_edge:                   ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i262

land.lhs.true.i259:                               ; preds = %if.end69
  %arrayidx1.i = getelementptr ptr, ptr %cda, i32 6
  %47 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx1.i, align 4
  %tobool2.not.i = icmp eq ptr %48, null
  br i1 %tobool2.not.i, label %land.lhs.true.i259.if.end74_crit_edge, label %land.lhs.true.i259.if.end.i262_crit_edge

land.lhs.true.i259.if.end.i262_crit_edge:         ; preds = %land.lhs.true.i259
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i262

land.lhs.true.i259.if.end74_crit_edge:            ; preds = %land.lhs.true.i259
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end74

if.end.i262:                                      ; preds = %land.lhs.true.i259.if.end.i262_crit_edge, %if.end69.if.end.i262_crit_edge
  %call.i260 = call fastcc i32 @ctnetlink_parse_nat_setup(ptr noundef %call, i32 noundef 1, ptr noundef %46) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i260)
  %cmp.i261 = icmp slt i32 %call.i260, 0
  br i1 %cmp.i261, label %if.end.i262.err2_crit_edge, label %ctnetlink_setup_nat.exit

if.end.i262.err2_crit_edge:                       ; preds = %if.end.i262
  call void @__sanitizer_cov_trace_pc() #18
  br label %err2

ctnetlink_setup_nat.exit:                         ; preds = %if.end.i262
  %arrayidx6.i = getelementptr ptr, ptr %cda, i32 6
  %49 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx6.i, align 4
  %call7.i = call fastcc i32 @ctnetlink_parse_nat_setup(ptr noundef %call, i32 noundef 0, ptr noundef %50) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp71 = icmp slt i32 %call7.i, 0
  br i1 %cmp71, label %ctnetlink_setup_nat.exit.err2_crit_edge, label %ctnetlink_setup_nat.exit.if.end74_crit_edge

ctnetlink_setup_nat.exit.if.end74_crit_edge:      ; preds = %ctnetlink_setup_nat.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end74

ctnetlink_setup_nat.exit.err2_crit_edge:          ; preds = %ctnetlink_setup_nat.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %err2

if.end74:                                         ; preds = %ctnetlink_setup_nat.exit.if.end74_crit_edge, %land.lhs.true.i259.if.end74_crit_edge
  %ct_net.i.i = getelementptr inbounds %struct.nf_conn, ptr %call, i32 0, i32 7
  %51 = ptrtoint ptr %ct_net.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ct_net.i.i, align 4
  %sysctl_acct.i = getelementptr inbounds %struct.net, ptr %52, i32 0, i32 40, i32 3
  %53 = ptrtoint ptr %sysctl_acct.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %sysctl_acct.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool.not.i264 = icmp eq i8 %54, 0
  br i1 %tobool.not.i264, label %if.end74.nf_ct_acct_ext_add.exit_crit_edge, label %if.end.i265

if.end74.nf_ct_acct_ext_add.exit_crit_edge:       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #18
  br label %nf_ct_acct_ext_add.exit

if.end.i265:                                      ; preds = %if.end74
  %call2.i = call ptr @nf_ct_ext_add(ptr noundef %call, i32 noundef 3, i32 noundef 2592) #16
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %do.body.i, label %if.end.i265.nf_ct_acct_ext_add.exit_crit_edge

if.end.i265.nf_ct_acct_ext_add.exit_crit_edge:    ; preds = %if.end.i265
  call void @__sanitizer_cov_trace_pc() #18
  br label %nf_ct_acct_ext_add.exit

do.body.i:                                        ; preds = %if.end.i265
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nf_ct_acct_ext_add.__UNIQUE_ID_ddebug587, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ctnetlink_create_conntrack, %if.then9.i)) #16
          to label %nf_ct_acct_ext_add.exit [label %if.then9.i], !srcloc !138

if.then9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nf_ct_acct_ext_add.__UNIQUE_ID_ddebug587, ptr noundef nonnull @.str.18) #16
  br label %nf_ct_acct_ext_add.exit

nf_ct_acct_ext_add.exit:                          ; preds = %if.then9.i, %do.body.i, %if.end.i265.nf_ct_acct_ext_add.exit_crit_edge, %if.end74.nf_ct_acct_ext_add.exit_crit_edge
  %55 = ptrtoint ptr %ct_net.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ct_net.i.i, align 4
  %sysctl_tstamp.i = getelementptr inbounds %struct.net, ptr %56, i32 0, i32 40, i32 5
  %57 = ptrtoint ptr %sysctl_tstamp.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %sysctl_tstamp.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool.not.i267 = icmp eq i8 %58, 0
  br i1 %tobool.not.i267, label %nf_ct_acct_ext_add.exit.nf_ct_tstamp_ext_add.exit_crit_edge, label %if.end.i269

nf_ct_acct_ext_add.exit.nf_ct_tstamp_ext_add.exit_crit_edge: ; preds = %nf_ct_acct_ext_add.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %nf_ct_tstamp_ext_add.exit

if.end.i269:                                      ; preds = %nf_ct_acct_ext_add.exit
  call void @__sanitizer_cov_trace_pc() #18
  %call2.i268 = call ptr @nf_ct_ext_add(ptr noundef %call, i32 noundef 5, i32 noundef 2592) #16
  br label %nf_ct_tstamp_ext_add.exit

nf_ct_tstamp_ext_add.exit:                        ; preds = %if.end.i269, %nf_ct_acct_ext_add.exit.nf_ct_tstamp_ext_add.exit_crit_edge
  %59 = ptrtoint ptr %ct_net.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ct_net.i.i, align 4
  %sysctl_events.i = getelementptr inbounds %struct.net, ptr %60, i32 0, i32 40, i32 2
  %61 = ptrtoint ptr %sysctl_events.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %sysctl_events.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool4.not.i = icmp eq i8 %62, 0
  %not.tobool4.not.i = xor i1 %tobool4.not.i, true
  %expmask.addr.0.i = sext i1 %not.tobool4.not.i to i16
  br i1 %tobool4.not.i, label %nf_ct_tstamp_ext_add.exit.nf_ct_ecache_ext_add.exit_crit_edge, label %if.end9.i

nf_ct_tstamp_ext_add.exit.nf_ct_ecache_ext_add.exit_crit_edge: ; preds = %nf_ct_tstamp_ext_add.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %nf_ct_ecache_ext_add.exit

if.end9.i:                                        ; preds = %nf_ct_tstamp_ext_add.exit
  %call10.i = call ptr @nf_ct_ext_add(ptr noundef %call, i32 noundef 4, i32 noundef 2592) #16
  %tobool11.not.i = icmp eq ptr %call10.i, null
  br i1 %tobool11.not.i, label %if.end9.i.nf_ct_ecache_ext_add.exit_crit_edge, label %if.then12.i

if.end9.i.nf_ct_ecache_ext_add.exit_crit_edge:    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nf_ct_ecache_ext_add.exit

if.then12.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #18
  %ctmask13.i = getelementptr inbounds %struct.nf_conntrack_ecache, ptr %call10.i, i32 0, i32 2
  %63 = ptrtoint ptr %ctmask13.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %expmask.addr.0.i, ptr %ctmask13.i, align 2
  %expmask14.i = getelementptr inbounds %struct.nf_conntrack_ecache, ptr %call10.i, i32 0, i32 3
  %64 = ptrtoint ptr %expmask14.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %expmask.addr.0.i, ptr %expmask14.i, align 4
  br label %nf_ct_ecache_ext_add.exit

nf_ct_ecache_ext_add.exit:                        ; preds = %if.then12.i, %if.end9.i.nf_ct_ecache_ext_add.exit_crit_edge, %nf_ct_tstamp_ext_add.exit.nf_ct_ecache_ext_add.exit_crit_edge
  %65 = ptrtoint ptr %ct_net.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ct_net.i.i, align 4
  %labels_used.i = getelementptr inbounds %struct.net, ptr %66, i32 0, i32 40, i32 11
  %67 = ptrtoint ptr %labels_used.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %labels_used.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp.i272 = icmp eq i32 %68, 0
  br i1 %cmp.i272, label %nf_ct_ecache_ext_add.exit.nf_ct_labels_ext_add.exit_crit_edge, label %if.end.i274

nf_ct_ecache_ext_add.exit.nf_ct_labels_ext_add.exit_crit_edge: ; preds = %nf_ct_ecache_ext_add.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %nf_ct_labels_ext_add.exit

if.end.i274:                                      ; preds = %nf_ct_ecache_ext_add.exit
  call void @__sanitizer_cov_trace_pc() #18
  %call2.i273 = call ptr @nf_ct_ext_add(ptr noundef %call, i32 noundef 7, i32 noundef 2592) #16
  br label %nf_ct_labels_ext_add.exit

nf_ct_labels_ext_add.exit:                        ; preds = %if.end.i274, %nf_ct_ecache_ext_add.exit.nf_ct_labels_ext_add.exit_crit_edge
  %call.i275 = call ptr @nf_ct_ext_add(ptr noundef %call, i32 noundef 2, i32 noundef 2592) #16
  %call.i276 = call ptr @nf_ct_ext_add(ptr noundef %call, i32 noundef 8, i32 noundef 2592) #16
  %status81 = getelementptr inbounds %struct.nf_conn, ptr %call, i32 0, i32 5
  %69 = ptrtoint ptr %status81 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %status81, align 8
  %or82 = or i32 %70, 8
  store i32 %or82, ptr %status81, align 8
  %arrayidx83 = getelementptr ptr, ptr %cda, i32 3
  %71 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx83, align 4
  %tobool84.not = icmp eq ptr %72, null
  br i1 %tobool84.not, label %nf_ct_labels_ext_add.exit.if.end91_crit_edge, label %if.then85

nf_ct_labels_ext_add.exit.if.end91_crit_edge:     ; preds = %nf_ct_labels_ext_add.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end91

if.then85:                                        ; preds = %nf_ct_labels_ext_add.exit
  %call86 = call fastcc i32 @ctnetlink_change_status(ptr noundef %call, ptr noundef %cda)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %cmp87 = icmp slt i32 %call86, 0
  br i1 %cmp87, label %if.then85.err2_crit_edge, label %if.then85.if.end91_crit_edge

if.then85.if.end91_crit_edge:                     ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end91

if.then85.err2_crit_edge:                         ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #18
  br label %err2

if.end91:                                         ; preds = %if.then85.if.end91_crit_edge, %nf_ct_labels_ext_add.exit.if.end91_crit_edge
  %arrayidx92 = getelementptr ptr, ptr %cda, i32 15
  %73 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx92, align 4
  %tobool93.not = icmp eq ptr %74, null
  br i1 %tobool93.not, label %lor.lhs.false, label %if.end91.if.then96_crit_edge

if.end91.if.then96_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then96

lor.lhs.false:                                    ; preds = %if.end91
  %arrayidx94 = getelementptr ptr, ptr %cda, i32 16
  %75 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx94, align 4
  %tobool95.not = icmp eq ptr %76, null
  br i1 %tobool95.not, label %lor.lhs.false.if.end102_crit_edge, label %lor.lhs.false.if.then96_crit_edge

lor.lhs.false.if.then96_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then96

lor.lhs.false.if.end102_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end102

if.then96:                                        ; preds = %lor.lhs.false.if.then96_crit_edge, %if.end91.if.then96_crit_edge
  %call97 = call fastcc i32 @ctnetlink_change_seq_adj(ptr noundef %call, ptr noundef %cda)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %cmp98 = icmp slt i32 %call97, 0
  br i1 %cmp98, label %if.then96.err2_crit_edge, label %if.then96.if.end102_crit_edge

if.then96.if.end102_crit_edge:                    ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end102

if.then96.err2_crit_edge:                         ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #18
  br label %err2

if.end102:                                        ; preds = %if.then96.if.end102_crit_edge, %lor.lhs.false.if.end102_crit_edge
  %proto = getelementptr inbounds %struct.nf_conn, ptr %call, i32 0, i32 14
  %77 = call ptr @memset(ptr %proto, i32 0, i32 64)
  %arrayidx103 = getelementptr ptr, ptr %cda, i32 4
  %78 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx103, align 4
  %tobool104.not = icmp eq ptr %79, null
  br i1 %tobool104.not, label %if.end102.if.end111_crit_edge, label %if.then105

if.end102.if.end111_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end111

if.then105:                                       ; preds = %if.end102
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tb.i277) #16
  %add.ptr.i.i.i279 = getelementptr i8, ptr %79, i32 4
  %80 = call ptr @memset(ptr %tb.i277, i32 255, i32 16)
  %81 = ptrtoint ptr %79 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %79, align 2
  %conv.i.i.i280 = zext i16 %82 to i32
  %sub.i.i.i281 = add nsw i32 %conv.i.i.i280, -4
  %call2.i.i282 = call i32 @__nla_parse(ptr noundef nonnull %tb.i277, i32 noundef 3, ptr noundef %add.ptr.i.i.i279, i32 noundef %sub.i.i.i281, ptr noundef nonnull @protoinfo_policy, i32 noundef 0, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i282)
  %cmp.i283 = icmp slt i32 %call2.i.i282, 0
  br i1 %cmp.i283, label %ctnetlink_change_protoinfo.exit.thread, label %if.end.i286

ctnetlink_change_protoinfo.exit.thread:           ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tb.i277) #16
  br label %err2

if.end.i286:                                      ; preds = %if.then105
  %protonum.i.i = getelementptr inbounds %struct.nf_conn, ptr %call, i32 0, i32 4, i32 0, i32 1, i32 1, i32 2
  %83 = ptrtoint ptr %protonum.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %protonum.i.i, align 2
  %call2.i284 = call ptr @nf_ct_l4proto_find(i8 noundef zeroext %84) #16
  %from_nlattr.i = getelementptr inbounds %struct.nf_conntrack_l4proto, ptr %call2.i284, i32 0, i32 5
  %85 = ptrtoint ptr %from_nlattr.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %from_nlattr.i, align 4
  %tobool.not.i285 = icmp eq ptr %86, null
  br i1 %tobool.not.i285, label %ctnetlink_change_protoinfo.exit.thread325, label %ctnetlink_change_protoinfo.exit

ctnetlink_change_protoinfo.exit.thread325:        ; preds = %if.end.i286
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tb.i277) #16
  br label %if.end111

ctnetlink_change_protoinfo.exit:                  ; preds = %if.end.i286
  %call6.i = call i32 %86(ptr noundef nonnull %tb.i277, ptr noundef %call) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tb.i277) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp107 = icmp slt i32 %call6.i, 0
  br i1 %cmp107, label %ctnetlink_change_protoinfo.exit.err2_crit_edge, label %ctnetlink_change_protoinfo.exit.if.end111_crit_edge

ctnetlink_change_protoinfo.exit.if.end111_crit_edge: ; preds = %ctnetlink_change_protoinfo.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end111

ctnetlink_change_protoinfo.exit.err2_crit_edge:   ; preds = %ctnetlink_change_protoinfo.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %err2

if.end111:                                        ; preds = %ctnetlink_change_protoinfo.exit.if.end111_crit_edge, %ctnetlink_change_protoinfo.exit.thread325, %if.end102.if.end111_crit_edge
  %arrayidx112 = getelementptr ptr, ptr %cda, i32 24
  %87 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx112, align 4
  %tobool113.not = icmp eq ptr %88, null
  br i1 %tobool113.not, label %if.end111.if.end120_crit_edge, label %if.then114

if.end111.if.end120_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end120

if.then114:                                       ; preds = %if.end111
  %call115 = call fastcc i32 @ctnetlink_change_synproxy(ptr noundef %call, ptr noundef %cda)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %cmp116 = icmp slt i32 %call115, 0
  br i1 %cmp116, label %if.then114.err2_crit_edge, label %if.then114.if.end120_crit_edge

if.then114.if.end120_crit_edge:                   ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end120

if.then114.err2_crit_edge:                        ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #18
  br label %err2

if.end120:                                        ; preds = %if.then114.if.end120_crit_edge, %if.end111.if.end120_crit_edge
  %arrayidx121 = getelementptr ptr, ptr %cda, i32 8
  %89 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx121, align 4
  %tobool122.not = icmp eq ptr %90, null
  br i1 %tobool122.not, label %if.end120.if.end124_crit_edge, label %if.then123

if.end120.if.end124_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end124

if.then123:                                       ; preds = %if.end120
  %arrayidx.i288 = getelementptr ptr, ptr %cda, i32 21
  %91 = ptrtoint ptr %arrayidx.i288 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx.i288, align 4
  %tobool.not.i289 = icmp eq ptr %92, null
  br i1 %tobool.not.i289, label %if.then123.if.end.i292_crit_edge, label %if.then.i291

if.then123.if.end.i292_crit_edge:                 ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i292

if.then.i291:                                     ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i.i.i290 = getelementptr i8, ptr %92, i32 4
  %93 = ptrtoint ptr %add.ptr.i.i.i290 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %add.ptr.i.i.i290, align 4
  %neg.i = xor i32 %94, -1
  br label %if.end.i292

if.end.i292:                                      ; preds = %if.then.i291, %if.then123.if.end.i292_crit_edge
  %mask.0.i = phi i32 [ %neg.i, %if.then.i291 ], [ 0, %if.then123.if.end.i292_crit_edge ]
  %add.ptr.i.i14.i = getelementptr i8, ptr %90, i32 4
  %95 = ptrtoint ptr %add.ptr.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %add.ptr.i.i14.i, align 4
  %mark4.i = getelementptr inbounds %struct.nf_conn, ptr %call, i32 0, i32 11
  %97 = ptrtoint ptr %mark4.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %mark4.i, align 8
  %and.i = and i32 %98, %mask.0.i
  %xor.i = xor i32 %and.i, %96
  call void @__sanitizer_cov_trace_cmp4(i32 %xor.i, i32 %98)
  %cmp.not.i = icmp eq i32 %xor.i, %98
  br i1 %cmp.not.i, label %if.end.i292.if.end124_crit_edge, label %if.then6.i

if.end.i292.if.end124_crit_edge:                  ; preds = %if.end.i292
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end124

if.then6.i:                                       ; preds = %if.end.i292
  call void @__sanitizer_cov_trace_pc() #18
  %99 = ptrtoint ptr %mark4.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %xor.i, ptr %mark4.i, align 8
  br label %if.end124

if.end124:                                        ; preds = %if.then6.i, %if.end.i292.if.end124_crit_edge, %if.end120.if.end124_crit_edge
  %arrayidx125 = getelementptr ptr, ptr %cda, i32 14
  %100 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %arrayidx125, align 4
  %tobool126.not = icmp eq ptr %101, null
  br i1 %tobool126.not, label %if.end124.if.end146_crit_edge, label %if.then127

if.end124.if.end146_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end146

if.then127:                                       ; preds = %if.end124
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %master) #16
  %102 = call ptr @memset(ptr %master, i32 255, i32 40)
  %call.i293 = call fastcc i32 @ctnetlink_parse_tuple_filter(ptr noundef %cda, ptr noundef nonnull %master, i32 noundef 14, i8 noundef zeroext %u3, ptr noundef null, i32 noundef 4095) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i293)
  %cmp129 = icmp slt i32 %call.i293, 0
  br i1 %cmp129, label %if.then127.cleanup141.thread_crit_edge, label %if.end132

if.then127.cleanup141.thread_crit_edge:           ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup141.thread

if.end132:                                        ; preds = %if.then127
  %call133 = call ptr @nf_conntrack_find_get(ptr noundef %net, ptr noundef %zone, ptr noundef nonnull %master) #16
  %cmp134 = icmp eq ptr %call133, null
  br i1 %cmp134, label %if.end132.cleanup141.thread_crit_edge, label %cleanup141

if.end132.cleanup141.thread_crit_edge:            ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup141.thread

cleanup141.thread:                                ; preds = %if.end132.cleanup141.thread_crit_edge, %if.then127.cleanup141.thread_crit_edge
  %err.2.ph = phi i32 [ -2, %if.end132.cleanup141.thread_crit_edge ], [ %call.i293, %if.then127.cleanup141.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %master) #16
  br label %err2

cleanup141:                                       ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #18
  %dir.i = getelementptr inbounds %struct.nf_conntrack_tuple_hash, ptr %call133, i32 0, i32 1, i32 1, i32 3
  %103 = ptrtoint ptr %dir.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %dir.i, align 1
  %conv.i = zext i8 %104 to i32
  %.neg.i = mul nsw i32 %conv.i, -48
  %idx.neg.i = add nsw i32 %.neg.i, -56
  %add.ptr.i = getelementptr i8, ptr %call133, i32 %idx.neg.i
  %105 = ptrtoint ptr %status81 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %status81, align 4
  %or.i = or i32 %106, 1
  store i32 %or.i, ptr %status81, align 4
  %master140 = getelementptr inbounds %struct.nf_conn, ptr %call, i32 0, i32 10
  %107 = ptrtoint ptr %master140 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %add.ptr.i, ptr %master140, align 4
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %master) #16
  br label %if.end146

if.end146:                                        ; preds = %cleanup141, %if.end124.if.end146_crit_edge
  %ext.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %call, i32 0, i32 13
  %108 = ptrtoint ptr %ext.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %ext.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %109, null
  br i1 %tobool.not.i.i.i, label %if.end146.if.end151_crit_edge, label %nf_ct_ext_exist.exit.i.i

if.end146.if.end151_crit_edge:                    ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end151

nf_ct_ext_exist.exit.i.i:                         ; preds = %if.end146
  %arrayidx.i.i.i.i = getelementptr [10 x i8], ptr %109, i32 0, i32 5
  %110 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool.i.i.not.i.i = icmp eq i8 %111, 0
  br i1 %tobool.i.i.not.i.i, label %nf_ct_ext_exist.exit.i.i.if.end151_crit_edge, label %nf_conn_tstamp_find.exit

nf_ct_ext_exist.exit.i.i.if.end151_crit_edge:     ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end151

nf_conn_tstamp_find.exit:                         ; preds = %nf_ct_ext_exist.exit.i.i
  %conv.i.i = zext i8 %111 to i32
  %add.ptr.i.i294 = getelementptr i8, ptr %109, i32 %conv.i.i
  %tobool148.not = icmp eq ptr %add.ptr.i.i294, null
  br i1 %tobool148.not, label %nf_conn_tstamp_find.exit.if.end151_crit_edge, label %if.then149

nf_conn_tstamp_find.exit.if.end151_crit_edge:     ; preds = %nf_conn_tstamp_find.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end151

if.then149:                                       ; preds = %nf_conn_tstamp_find.exit
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i = call i64 @ktime_get_with_offset(i32 noundef 0) #16
  %112 = ptrtoint ptr %add.ptr.i.i294 to i32
  call void @__asan_store8_noabort(i32 %112)
  store i64 %call.i.i, ptr %add.ptr.i.i294, align 8
  br label %if.end151

if.end151:                                        ; preds = %if.then149, %nf_conn_tstamp_find.exit.if.end151_crit_edge, %nf_ct_ext_exist.exit.i.i.if.end151_crit_edge, %if.end146.if.end151_crit_edge
  %call152 = call i32 @nf_conntrack_hash_check_insert(ptr noundef %call) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call152)
  %cmp153 = icmp slt i32 %call152, 0
  br i1 %cmp153, label %if.end151.err2_crit_edge, label %if.end156

if.end151.err2_crit_edge:                         ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #18
  br label %err2

if.end156:                                        ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #18
  call fastcc void @rcu_read_unlock()
  br label %cleanup158

err2:                                             ; preds = %if.end151.err2_crit_edge, %cleanup141.thread, %if.then114.err2_crit_edge, %ctnetlink_change_protoinfo.exit.err2_crit_edge, %ctnetlink_change_protoinfo.exit.thread, %if.then96.err2_crit_edge, %if.then85.err2_crit_edge, %ctnetlink_setup_nat.exit.err2_crit_edge, %if.end.i262.err2_crit_edge, %if.else63.err2_crit_edge, %if.else.err2_crit_edge, %rcu_read_lock.exit242.err2_crit_edge, %ctnetlink_parse_help.exit.thread
  %err.3 = phi i32 [ %call7.i, %ctnetlink_setup_nat.exit.err2_crit_edge ], [ %call86, %if.then85.err2_crit_edge ], [ %call97, %if.then96.err2_crit_edge ], [ %call6.i, %ctnetlink_change_protoinfo.exit.err2_crit_edge ], [ %call115, %if.then114.err2_crit_edge ], [ %call152, %if.end151.err2_crit_edge ], [ %call64, %if.else63.err2_crit_edge ], [ %call2.i.i282, %ctnetlink_change_protoinfo.exit.thread ], [ %err.2.ph, %cleanup141.thread ], [ %retval.0.i.ph, %ctnetlink_parse_help.exit.thread ], [ -12, %if.else.err2_crit_edge ], [ -11, %rcu_read_lock.exit242.err2_crit_edge ], [ %call.i260, %if.end.i262.err2_crit_edge ]
  %call.i295 = call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i295, label %err2.rcu_read_unlock.exit305_crit_edge, label %land.lhs.true.i298

err2.rcu_read_unlock.exit305_crit_edge:           ; preds = %err2
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit305

land.lhs.true.i298:                               ; preds = %err2
  %call1.i296 = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i296)
  %tobool.not.i297 = icmp eq i32 %call1.i296, 0
  br i1 %tobool.not.i297, label %land.lhs.true.i298.rcu_read_unlock.exit305_crit_edge, label %land.lhs.true2.i300

land.lhs.true.i298.rcu_read_unlock.exit305_crit_edge: ; preds = %land.lhs.true.i298
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit305

land.lhs.true2.i300:                              ; preds = %land.lhs.true.i298
  %.b4.i299 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i299, label %land.lhs.true2.i300.rcu_read_unlock.exit305_crit_edge, label %if.then.i301

land.lhs.true2.i300.rcu_read_unlock.exit305_crit_edge: ; preds = %land.lhs.true2.i300
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit305

if.then.i301:                                     ; preds = %land.lhs.true2.i300
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 724, ptr noundef nonnull @.str.2) #16
  br label %rcu_read_unlock.exit305

rcu_read_unlock.exit305:                          ; preds = %if.then.i301, %land.lhs.true2.i300.rcu_read_unlock.exit305_crit_edge, %land.lhs.true.i298.rcu_read_unlock.exit305_crit_edge, %err2.rcu_read_unlock.exit305_crit_edge
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !131
  %113 = call i32 @llvm.read_register.i32(metadata !118) #16
  %and.i.i.i.i.i302 = and i32 %113, -16384
  %114 = inttoptr i32 %and.i.i.i.i.i302 to ptr
  %preempt_count.i.i.i.i303 = getelementptr inbounds %struct.thread_info, ptr %114, i32 0, i32 1
  %115 = ptrtoint ptr %preempt_count.i.i.i.i303 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load volatile i32, ptr %preempt_count.i.i.i.i303, align 4
  %sub.i.i.i304 = add i32 %116, -1
  store volatile i32 %sub.i.i.i304, ptr %preempt_count.i.i.i.i303, align 4
  call void @rcu_read_unlock_strict() #16
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  br label %err1

err1:                                             ; preds = %rcu_read_unlock.exit305, %if.end37, %rcu_read_unlock.exit.err1_crit_edge, %if.end.err1_crit_edge
  %err.4 = phi i32 [ %err.3, %rcu_read_unlock.exit305 ], [ -22, %if.end.err1_crit_edge ], [ -95, %if.end37 ], [ -95, %rcu_read_unlock.exit.err1_crit_edge ]
  call void @nf_conntrack_free(ptr noundef %call) #16
  %117 = inttoptr i32 %err.4 to ptr
  br label %cleanup158

cleanup158:                                       ; preds = %err1, %if.end156, %entry.cleanup158_crit_edge
  %retval.0 = phi ptr [ %117, %err1 ], [ %call, %if.end156 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup158_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ctnetlink_attach_labels(ptr noundef %ct, ptr nocapture noundef readonly %cda) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr ptr, ptr %cda, i32 22
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 2
  %conv.i = zext i16 %3 to i32
  %sub.i = add nsw i32 %conv.i, -4
  %arrayidx1 = getelementptr ptr, ptr %cda, i32 23
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx1, align 4
  %and = and i32 %conv.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %if.end.if.end13_crit_edge, label %if.then3

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13

if.then3:                                         ; preds = %if.end
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %5, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %7)
  %cmp = icmp ne i16 %7, 4
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %3)
  %cmp8.not = icmp eq i16 %7, %3
  %or.cond = select i1 %cmp, i1 %cmp8.not, i1 false
  br i1 %or.cond, label %if.end10, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end10:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i = getelementptr i8, ptr %5, i32 4
  br label %if.end13

if.end13:                                         ; preds = %if.end10, %if.end.if.end13_crit_edge
  %mask.0 = phi ptr [ %add.ptr.i, %if.end10 ], [ null, %if.end.if.end13_crit_edge ]
  %div27 = lshr i32 %sub.i, 2
  %add.ptr.i32 = getelementptr i8, ptr %1, i32 4
  %call16 = tail call i32 @nf_connlabels_replace(ptr noundef %ct, ptr noundef %add.ptr.i32, ptr noundef %mask.0, i32 noundef %div27) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %if.end13 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_conntrack_eventmask_report(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nf_conntrack_alloc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nf_ct_helper_ext_add(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nf_ct_try_assign_helper(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ctnetlink_change_status(ptr noundef %ct, ptr nocapture noundef readonly %cda) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr ptr, ptr %cda, i32 3
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i.i, align 4
  %status1 = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 5
  %4 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status1, align 8
  %xor = xor i32 %5, %3
  %and = and i32 %xor, 521
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %and2 = and i32 %xor, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp ne i32 %and2, 0
  %and4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  %or.cond = select i1 %tobool3.not, i1 %tobool5.not, i1 false
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %and8 = and i32 %xor, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp ne i32 %and8, 0
  %and11 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  %or.cond22 = select i1 %tobool9.not, i1 %tobool12.not, i1 false
  br i1 %or.cond22, label %if.end7.cleanup_crit_edge, label %for.inc.i

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.inc.i:                                        ; preds = %if.end7
  %and2.i.1 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.1)
  %tobool.not.i.1 = icmp eq i32 %and2.i.1, 0
  br i1 %tobool.not.i.1, label %for.inc.i.for.inc.i.1_crit_edge, label %if.then.i.1

for.inc.i.for.inc.i.1_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.1

if.then.i.1:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_set_bit(i32 noundef 1, ptr noundef %status1) #16
  br label %for.inc.i.1

for.inc.i.1:                                      ; preds = %if.then.i.1, %for.inc.i.for.inc.i.1_crit_edge
  %and2.i.2 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.2)
  %tobool.not.i.2 = icmp eq i32 %and2.i.2, 0
  br i1 %tobool.not.i.2, label %for.inc.i.1.for.inc.i.9_crit_edge, label %if.then.i.2

for.inc.i.1.for.inc.i.9_crit_edge:                ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.9

if.then.i.2:                                      ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_set_bit(i32 noundef 2, ptr noundef %status1) #16
  br label %for.inc.i.9

for.inc.i.9:                                      ; preds = %if.then.i.2, %for.inc.i.1.for.inc.i.9_crit_edge
  %and2.i.10 = and i32 %3, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.10)
  %tobool.not.i.10 = icmp eq i32 %and2.i.10, 0
  br i1 %tobool.not.i.10, label %for.inc.i.9.for.inc.i.12_crit_edge, label %if.then.i.10

for.inc.i.9.for.inc.i.12_crit_edge:               ; preds = %for.inc.i.9
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.12

if.then.i.10:                                     ; preds = %for.inc.i.9
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_set_bit(i32 noundef 10, ptr noundef %status1) #16
  br label %for.inc.i.12

for.inc.i.12:                                     ; preds = %if.then.i.10, %for.inc.i.9.for.inc.i.12_crit_edge
  %and2.i.13 = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.13)
  %tobool.not.i.13 = icmp eq i32 %and2.i.13, 0
  br i1 %tobool.not.i.13, label %for.inc.i.12.cleanup_crit_edge, label %if.then.i.13

for.inc.i.12.cleanup_crit_edge:                   ; preds = %for.inc.i.12
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then.i.13:                                     ; preds = %for.inc.i.12
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_set_bit(i32 noundef 13, ptr noundef %status1) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.13, %for.inc.i.12.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %entry.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ], [ -16, %if.end7.cleanup_crit_edge ], [ 0, %if.then.i.13 ], [ 0, %for.inc.i.12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ctnetlink_change_seq_adj(ptr noundef %ct, ptr nocapture noundef readonly %cda) unnamed_addr #2 align 64 {
entry:
  %cda.i37 = alloca [4 x ptr], align 4
  %cda.i = alloca [4 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %ext.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 13
  %0 = ptrtoint ptr %ext.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ext.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i, label %entry.cleanup_crit_edge, label %nf_ct_ext_exist.exit.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

nf_ct_ext_exist.exit.i.i:                         ; preds = %entry
  %arrayidx.i.i.i.i = getelementptr [10 x i8], ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.i.i.not.i.i = icmp eq i8 %3, 0
  br i1 %tobool.i.i.not.i.i, label %nf_ct_ext_exist.exit.i.i.cleanup_crit_edge, label %nfct_seqadj.exit

nf_ct_ext_exist.exit.i.i.cleanup_crit_edge:       ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

nfct_seqadj.exit:                                 ; preds = %nf_ct_ext_exist.exit.i.i
  %conv.i.i = zext i8 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %tobool.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not, label %nfct_seqadj.exit.cleanup_crit_edge, label %if.end

nfct_seqadj.exit.cleanup_crit_edge:               ; preds = %nfct_seqadj.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %nfct_seqadj.exit
  %lock = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #16
  %arrayidx = getelementptr ptr, ptr %cda, i32 15
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %if.end.if.end8_crit_edge, label %if.then2

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cda.i) #16
  %6 = getelementptr inbounds [4 x ptr], ptr %cda.i, i32 0, i32 2
  %7 = getelementptr inbounds [4 x ptr], ptr %cda.i, i32 0, i32 3
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 4
  %8 = call ptr @memset(ptr %cda.i, i32 255, i32 16)
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %5, align 2
  %conv.i.i.i = zext i16 %10 to i32
  %sub.i.i.i = add nsw i32 %conv.i.i.i, -4
  %call2.i.i = call i32 @__nla_parse(ptr noundef nonnull %cda.i, i32 noundef 3, ptr noundef %add.ptr.i.i.i, i32 noundef %sub.i.i.i, ptr noundef nonnull @seqadj_policy, i32 noundef 0, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp.i, label %if.then2.change_seq_adj.exit.thread_crit_edge, label %if.end.i

if.then2.change_seq_adj.exit.thread_crit_edge:    ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #18
  br label %change_seq_adj.exit.thread

if.end.i:                                         ; preds = %if.then2
  %11 = getelementptr inbounds [4 x ptr], ptr %cda.i, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end.i.change_seq_adj.exit.thread_crit_edge, label %if.end2.i

if.end.i.change_seq_adj.exit.thread_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %change_seq_adj.exit.thread

if.end2.i:                                        ; preds = %if.end.i
  %add.ptr.i.i23.i = getelementptr i8, ptr %13, i32 4
  %14 = ptrtoint ptr %add.ptr.i.i23.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i.i23.i, align 4
  %16 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %add.ptr.i.i, align 4
  %17 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %6, align 4
  %tobool6.not.i = icmp eq ptr %18, null
  br i1 %tobool6.not.i, label %if.end2.i.change_seq_adj.exit.thread_crit_edge, label %if.end8.i

if.end2.i.change_seq_adj.exit.thread_crit_edge:   ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %change_seq_adj.exit.thread

if.end8.i:                                        ; preds = %if.end2.i
  %add.ptr.i.i24.i = getelementptr i8, ptr %18, i32 4
  %19 = ptrtoint ptr %add.ptr.i.i24.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr.i.i24.i, align 4
  %offset_before.i = getelementptr inbounds %struct.nf_ct_seqadj, ptr %add.ptr.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %offset_before.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %offset_before.i, align 4
  %22 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %7, align 4
  %tobool12.not.i = icmp eq ptr %23, null
  br i1 %tobool12.not.i, label %if.end8.i.change_seq_adj.exit.thread_crit_edge, label %if.end7

if.end8.i.change_seq_adj.exit.thread_crit_edge:   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %change_seq_adj.exit.thread

change_seq_adj.exit.thread:                       ; preds = %if.end8.i.change_seq_adj.exit.thread_crit_edge, %if.end2.i.change_seq_adj.exit.thread_crit_edge, %if.end.i.change_seq_adj.exit.thread_crit_edge, %if.then2.change_seq_adj.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -22, %if.end8.i.change_seq_adj.exit.thread_crit_edge ], [ -22, %if.end2.i.change_seq_adj.exit.thread_crit_edge ], [ -22, %if.end.i.change_seq_adj.exit.thread_crit_edge ], [ %call2.i.i, %if.then2.change_seq_adj.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cda.i) #16
  br label %cleanup.sink.split

if.end7:                                          ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i.i25.i = getelementptr i8, ptr %23, i32 4
  %24 = ptrtoint ptr %add.ptr.i.i25.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr.i.i25.i, align 4
  %offset_after.i = getelementptr inbounds %struct.nf_ct_seqadj, ptr %add.ptr.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %offset_after.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %offset_after.i, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cda.i) #16
  %status = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 5
  call void @_set_bit(i32 noundef 6, ptr noundef %status) #16
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %if.end.if.end8_crit_edge
  %arrayidx9 = getelementptr ptr, ptr %cda, i32 16
  %27 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx9, align 4
  %tobool10.not = icmp eq ptr %28, null
  br i1 %tobool10.not, label %if.end8.cleanup.sink.split_crit_edge, label %if.then11

if.end8.cleanup.sink.split_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

if.then11:                                        ; preds = %if.end8
  %arrayidx13 = getelementptr [2 x %struct.nf_ct_seqadj], ptr %add.ptr.i.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cda.i37) #16
  %29 = getelementptr inbounds [4 x ptr], ptr %cda.i37, i32 0, i32 2
  %30 = getelementptr inbounds [4 x ptr], ptr %cda.i37, i32 0, i32 3
  %add.ptr.i.i.i38 = getelementptr i8, ptr %28, i32 4
  %31 = call ptr @memset(ptr %cda.i37, i32 255, i32 16)
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %28, align 2
  %conv.i.i.i39 = zext i16 %33 to i32
  %sub.i.i.i40 = add nsw i32 %conv.i.i.i39, -4
  %call2.i.i41 = call i32 @__nla_parse(ptr noundef nonnull %cda.i37, i32 noundef 3, ptr noundef %add.ptr.i.i.i38, i32 noundef %sub.i.i.i40, ptr noundef nonnull @seqadj_policy, i32 noundef 0, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i41)
  %cmp.i42 = icmp slt i32 %call2.i.i41, 0
  br i1 %cmp.i42, label %if.then11.change_seq_adj.exit56.thread_crit_edge, label %if.end.i44

if.then11.change_seq_adj.exit56.thread_crit_edge: ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #18
  br label %change_seq_adj.exit56.thread

if.end.i44:                                       ; preds = %if.then11
  %34 = getelementptr inbounds [4 x ptr], ptr %cda.i37, i32 0, i32 1
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %tobool.not.i43 = icmp eq ptr %36, null
  br i1 %tobool.not.i43, label %if.end.i44.change_seq_adj.exit56.thread_crit_edge, label %if.end2.i47

if.end.i44.change_seq_adj.exit56.thread_crit_edge: ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #18
  br label %change_seq_adj.exit56.thread

if.end2.i47:                                      ; preds = %if.end.i44
  %add.ptr.i.i23.i45 = getelementptr i8, ptr %36, i32 4
  %37 = ptrtoint ptr %add.ptr.i.i23.i45 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %add.ptr.i.i23.i45, align 4
  %39 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %arrayidx13, align 4
  %40 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %29, align 4
  %tobool6.not.i46 = icmp eq ptr %41, null
  br i1 %tobool6.not.i46, label %if.end2.i47.change_seq_adj.exit56.thread_crit_edge, label %if.end8.i51

if.end2.i47.change_seq_adj.exit56.thread_crit_edge: ; preds = %if.end2.i47
  call void @__sanitizer_cov_trace_pc() #18
  br label %change_seq_adj.exit56.thread

if.end8.i51:                                      ; preds = %if.end2.i47
  %add.ptr.i.i24.i48 = getelementptr i8, ptr %41, i32 4
  %42 = ptrtoint ptr %add.ptr.i.i24.i48 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %add.ptr.i.i24.i48, align 4
  %offset_before.i49 = getelementptr inbounds %struct.nf_ct_seqadj, ptr %arrayidx13, i32 0, i32 1
  %44 = ptrtoint ptr %offset_before.i49 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %offset_before.i49, align 4
  %45 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %30, align 4
  %tobool12.not.i50 = icmp eq ptr %46, null
  br i1 %tobool12.not.i50, label %if.end8.i51.change_seq_adj.exit56.thread_crit_edge, label %if.end18

if.end8.i51.change_seq_adj.exit56.thread_crit_edge: ; preds = %if.end8.i51
  call void @__sanitizer_cov_trace_pc() #18
  br label %change_seq_adj.exit56.thread

change_seq_adj.exit56.thread:                     ; preds = %if.end8.i51.change_seq_adj.exit56.thread_crit_edge, %if.end2.i47.change_seq_adj.exit56.thread_crit_edge, %if.end.i44.change_seq_adj.exit56.thread_crit_edge, %if.then11.change_seq_adj.exit56.thread_crit_edge
  %retval.0.i55.ph = phi i32 [ -22, %if.end8.i51.change_seq_adj.exit56.thread_crit_edge ], [ -22, %if.end2.i47.change_seq_adj.exit56.thread_crit_edge ], [ -22, %if.end.i44.change_seq_adj.exit56.thread_crit_edge ], [ %call2.i.i41, %if.then11.change_seq_adj.exit56.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cda.i37) #16
  br label %cleanup.sink.split

if.end18:                                         ; preds = %if.end8.i51
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i.i25.i52 = getelementptr i8, ptr %46, i32 4
  %47 = ptrtoint ptr %add.ptr.i.i25.i52 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %add.ptr.i.i25.i52, align 4
  %offset_after.i53 = getelementptr inbounds %struct.nf_ct_seqadj, ptr %arrayidx13, i32 0, i32 2
  %49 = ptrtoint ptr %offset_after.i53 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %offset_after.i53, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cda.i37) #16
  %status19 = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 5
  call void @_set_bit(i32 noundef 6, ptr noundef %status19) #16
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end18, %change_seq_adj.exit56.thread, %if.end8.cleanup.sink.split_crit_edge, %change_seq_adj.exit.thread
  %retval.0.ph = phi i32 [ 0, %if.end18 ], [ 0, %if.end8.cleanup.sink.split_crit_edge ], [ %retval.0.i.ph, %change_seq_adj.exit.thread ], [ %retval.0.i55.ph, %change_seq_adj.exit56.thread ]
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #16
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %nfct_seqadj.exit.cleanup_crit_edge, %nf_ct_ext_exist.exit.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %nfct_seqadj.exit.cleanup_crit_edge ], [ 0, %nf_ct_ext_exist.exit.i.i.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ctnetlink_change_protoinfo(ptr noundef %ct, ptr nocapture noundef readonly %cda) unnamed_addr #2 align 64 {
entry:
  %tb = alloca [4 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr ptr, ptr %cda, i32 4
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tb) #16
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %2 = call ptr @memset(ptr %tb, i32 255, i32 16)
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %1, align 2
  %conv.i.i = zext i16 %4 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 3, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @protoinfo_policy, i32 noundef 0, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %protonum.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 0, i32 1, i32 1, i32 2
  %5 = ptrtoint ptr %protonum.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %protonum.i, align 2
  %call2 = call ptr @nf_ct_l4proto_find(i8 noundef zeroext %6) #16
  %from_nlattr = getelementptr inbounds %struct.nf_conntrack_l4proto, ptr %call2, i32 0, i32 5
  %7 = ptrtoint ptr %from_nlattr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %from_nlattr, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %call6 = call i32 %8(ptr noundef nonnull %tb, ptr noundef %ct) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2.i, %entry.cleanup_crit_edge ], [ %call6, %if.then3 ], [ %call2.i, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tb) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ctnetlink_change_synproxy(ptr nocapture noundef readonly %ct, ptr nocapture noundef readonly %cda) unnamed_addr #2 align 64 {
entry:
  %tb = alloca [4 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %ext.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 13
  %0 = ptrtoint ptr %ext.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ext.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i, label %entry.nfct_synproxy.exit.thread_crit_edge, label %nf_ct_ext_exist.exit.i.i

entry.nfct_synproxy.exit.thread_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %nfct_synproxy.exit.thread

nf_ct_ext_exist.exit.i.i:                         ; preds = %entry
  %arrayidx.i.i.i.i = getelementptr [10 x i8], ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.i.i.not.i.i = icmp eq i8 %3, 0
  br i1 %tobool.i.i.not.i.i, label %nf_ct_ext_exist.exit.i.i.nfct_synproxy.exit.thread_crit_edge, label %nfct_synproxy.exit

nf_ct_ext_exist.exit.i.i.nfct_synproxy.exit.thread_crit_edge: ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nfct_synproxy.exit.thread

nfct_synproxy.exit.thread:                        ; preds = %nf_ct_ext_exist.exit.i.i.nfct_synproxy.exit.thread_crit_edge, %entry.nfct_synproxy.exit.thread_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tb) #16
  br label %cleanup

nfct_synproxy.exit:                               ; preds = %nf_ct_ext_exist.exit.i.i
  %conv.i.i = zext i8 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tb) #16
  %4 = getelementptr inbounds [4 x ptr], ptr %tb, i32 0, i32 1
  %5 = getelementptr inbounds [4 x ptr], ptr %tb, i32 0, i32 2
  %6 = getelementptr inbounds [4 x ptr], ptr %tb, i32 0, i32 3
  %tobool.not = icmp eq ptr %add.ptr.i.i, null
  %7 = call ptr @memset(ptr %tb, i32 255, i32 16)
  br i1 %tobool.not, label %nfct_synproxy.exit.cleanup_crit_edge, label %if.end

nfct_synproxy.exit.cleanup_crit_edge:             ; preds = %nfct_synproxy.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %nfct_synproxy.exit
  %arrayidx = getelementptr ptr, ptr %cda, i32 24
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %add.ptr.i.i25 = getelementptr i8, ptr %9, i32 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %9, align 2
  %conv.i.i26 = zext i16 %11 to i32
  %sub.i.i = add nsw i32 %conv.i.i26, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 3, ptr noundef %add.ptr.i.i25, i32 noundef %sub.i.i, ptr noundef nonnull @synproxy_policy, i32 noundef 0, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %4, align 4
  %tobool5.not = icmp eq ptr %13, null
  br i1 %tobool5.not, label %if.end3.cleanup_crit_edge, label %lor.lhs.false

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end3
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %5, align 4
  %tobool7.not = icmp eq ptr %15, null
  br i1 %tobool7.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false8

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %16 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %6, align 4
  %tobool10.not = icmp eq ptr %17, null
  br i1 %tobool10.not, label %lor.lhs.false8.cleanup_crit_edge, label %if.end12

lor.lhs.false8.cleanup_crit_edge:                 ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end12:                                         ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i.i27 = getelementptr i8, ptr %13, i32 4
  %18 = ptrtoint ptr %add.ptr.i.i27 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr.i.i27, align 4
  %20 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %add.ptr.i.i, align 4
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %5, align 4
  %add.ptr.i.i28 = getelementptr i8, ptr %22, i32 4
  %23 = ptrtoint ptr %add.ptr.i.i28 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr.i.i28, align 4
  %its = getelementptr inbounds %struct.nf_conn_synproxy, ptr %add.ptr.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %its to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %its, align 4
  %26 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %6, align 4
  %add.ptr.i.i29 = getelementptr i8, ptr %27, i32 4
  %28 = ptrtoint ptr %add.ptr.i.i29 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %add.ptr.i.i29, align 4
  %tsoff = getelementptr inbounds %struct.nf_conn_synproxy, ptr %add.ptr.i.i, i32 0, i32 2
  %30 = ptrtoint ptr %tsoff to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %tsoff, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %lor.lhs.false8.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %nfct_synproxy.exit.cleanup_crit_edge, %nfct_synproxy.exit.thread
  %retval.0 = phi i32 [ 0, %if.end12 ], [ 0, %nfct_synproxy.exit.cleanup_crit_edge ], [ %call2.i, %if.end.cleanup_crit_edge ], [ -22, %lor.lhs.false8.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ 0, %nfct_synproxy.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tb) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_conntrack_hash_check_insert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_conntrack_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ctnetlink_parse_nat_setup(ptr noundef %ct, i32 noundef %manip, ptr noundef %attr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nf_nat_hook to i32))
  %0 = load volatile ptr, ptr @nf_nat_hook, align 4
  %call = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end7

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b52 = load i1, ptr @ctnetlink_parse_nat_setup.__warned, align 1
  br i1 %.b52, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @ctnetlink_parse_nat_setup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1826, ptr noundef nonnull @.str.4) #16
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %entry.do.end7_crit_edge
  %tobool9.not = icmp eq ptr %0, null
  br i1 %tobool9.not, label %if.then10, label %if.end34

if.then10:                                        ; preds = %do.end7
  %call.i86 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i86, label %if.then10.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i89

if.then10.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true.i89:                                ; preds = %if.then10
  %call1.i87 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i87)
  %tobool.not.i88 = icmp eq i32 %call1.i87, 0
  br i1 %tobool.not.i88, label %land.lhs.true.i89.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i91

land.lhs.true.i89.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i89
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true2.i91:                               ; preds = %land.lhs.true.i89
  %.b4.i90 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i90, label %land.lhs.true2.i91.rcu_read_unlock.exit_crit_edge, label %if.then.i92

land.lhs.true2.i91.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i91
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

if.then.i92:                                      ; preds = %land.lhs.true2.i91
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 724, ptr noundef nonnull @.str.2) #16
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i92, %land.lhs.true2.i91.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i89.rcu_read_unlock.exit_crit_edge, %if.then10.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !131
  %1 = tail call i32 @llvm.read_register.i32(metadata !118) #16
  %and.i.i.i.i.i93 = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i93 to ptr
  %preempt_count.i.i.i.i94 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i94 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i94, align 4
  %sub.i.i.i = add i32 %4, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i94, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  tail call void @nfnl_unlock(i8 noundef zeroext 1) #16
  %call11 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.12) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  tail call void @nfnl_lock(i8 noundef zeroext 1) #16
  %5 = tail call i32 @llvm.read_register.i32(metadata !118) #16
  %and.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %8, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %cmp, label %if.then12, label %if.end13

if.then12:                                        ; preds = %rcu_read_unlock.exit
  br i1 %call.i, label %if.then12.cleanup_crit_edge, label %land.lhs.true.i

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.then12
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.cleanup_crit_edge, label %if.then.i

land.lhs.true2.i.cleanup_crit_edge:               ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 696, ptr noundef nonnull @.str.1) #16
  br label %cleanup

if.end13:                                         ; preds = %rcu_read_unlock.exit
  br i1 %call.i, label %if.end13.rcu_read_lock.exit63_crit_edge, label %land.lhs.true.i59

if.end13.rcu_read_lock.exit63_crit_edge:          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit63

land.lhs.true.i59:                                ; preds = %if.end13
  %call1.i57 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i57)
  %tobool.not.i58 = icmp eq i32 %call1.i57, 0
  br i1 %tobool.not.i58, label %land.lhs.true.i59.rcu_read_lock.exit63_crit_edge, label %land.lhs.true2.i61

land.lhs.true.i59.rcu_read_lock.exit63_crit_edge: ; preds = %land.lhs.true.i59
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit63

land.lhs.true2.i61:                               ; preds = %land.lhs.true.i59
  %.b4.i60 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i60, label %land.lhs.true2.i61.rcu_read_lock.exit63_crit_edge, label %if.then.i62

land.lhs.true2.i61.rcu_read_lock.exit63_crit_edge: ; preds = %land.lhs.true2.i61
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit63

if.then.i62:                                      ; preds = %land.lhs.true2.i61
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 696, ptr noundef nonnull @.str.1) #16
  br label %rcu_read_lock.exit63

rcu_read_lock.exit63:                             ; preds = %if.then.i62, %land.lhs.true2.i61.rcu_read_lock.exit63_crit_edge, %land.lhs.true.i59.rcu_read_lock.exit63_crit_edge, %if.end13.rcu_read_lock.exit63_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nf_nat_hook to i32))
  %9 = load volatile ptr, ptr @nf_nat_hook, align 4
  %call19 = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %land.lhs.true21, label %rcu_read_lock.exit63.do.end29_crit_edge

rcu_read_lock.exit63.do.end29_crit_edge:          ; preds = %rcu_read_lock.exit63
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end29

land.lhs.true21:                                  ; preds = %rcu_read_lock.exit63
  %call22 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %land.lhs.true21.do.end29_crit_edge, label %land.lhs.true24

land.lhs.true21.do.end29_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end29

land.lhs.true24:                                  ; preds = %land.lhs.true21
  %.b5051 = load i1, ptr @ctnetlink_parse_nat_setup.__warned.13, align 1
  br i1 %.b5051, label %land.lhs.true24.do.end29_crit_edge, label %if.then26

land.lhs.true24.do.end29_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end29

if.then26:                                        ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @ctnetlink_parse_nat_setup.__warned.13, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1838, ptr noundef nonnull @.str.4) #16
  br label %do.end29

do.end29:                                         ; preds = %if.then26, %land.lhs.true24.do.end29_crit_edge, %land.lhs.true21.do.end29_crit_edge, %rcu_read_lock.exit63.do.end29_crit_edge
  %tobool31.not = icmp eq ptr %9, null
  %. = select i1 %tobool31.not, i32 -95, i32 -11
  br label %cleanup

if.end34:                                         ; preds = %do.end7
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %0, align 4
  %call35 = tail call i32 %11(ptr noundef %ct, i32 noundef %manip, ptr noundef %attr) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call35)
  %cmp36 = icmp eq i32 %call35, -11
  br i1 %cmp36, label %if.then37, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then37:                                        ; preds = %if.end34
  %call.i95 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i95, label %if.then37.rcu_read_unlock.exit105_crit_edge, label %land.lhs.true.i98

if.then37.rcu_read_unlock.exit105_crit_edge:      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit105

land.lhs.true.i98:                                ; preds = %if.then37
  %call1.i96 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i96)
  %tobool.not.i97 = icmp eq i32 %call1.i96, 0
  br i1 %tobool.not.i97, label %land.lhs.true.i98.rcu_read_unlock.exit105_crit_edge, label %land.lhs.true2.i100

land.lhs.true.i98.rcu_read_unlock.exit105_crit_edge: ; preds = %land.lhs.true.i98
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit105

land.lhs.true2.i100:                              ; preds = %land.lhs.true.i98
  %.b4.i99 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i99, label %land.lhs.true2.i100.rcu_read_unlock.exit105_crit_edge, label %if.then.i101

land.lhs.true2.i100.rcu_read_unlock.exit105_crit_edge: ; preds = %land.lhs.true2.i100
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit105

if.then.i101:                                     ; preds = %land.lhs.true2.i100
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 724, ptr noundef nonnull @.str.2) #16
  br label %rcu_read_unlock.exit105

rcu_read_unlock.exit105:                          ; preds = %if.then.i101, %land.lhs.true2.i100.rcu_read_unlock.exit105_crit_edge, %land.lhs.true.i98.rcu_read_unlock.exit105_crit_edge, %if.then37.rcu_read_unlock.exit105_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !131
  %12 = tail call i32 @llvm.read_register.i32(metadata !118) #16
  %and.i.i.i.i.i102 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i102 to ptr
  %preempt_count.i.i.i.i103 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i103 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i103, align 4
  %sub.i.i.i104 = add i32 %15, -1
  store volatile i32 %sub.i.i.i104, ptr %preempt_count.i.i.i.i103, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  tail call void @nfnl_unlock(i8 noundef zeroext 1) #16
  %l3num.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 0, i32 1, i32 0, i32 2
  %16 = ptrtoint ptr %l3num.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %l3num.i, align 2
  %conv = zext i16 %17 to i32
  %call39 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.14, i32 noundef %conv) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp slt i32 %call39, 0
  tail call void @nfnl_lock(i8 noundef zeroext 1) #16
  %18 = tail call i32 @llvm.read_register.i32(metadata !118) #16
  %and.i.i.i.i.i64 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i64 to ptr
  %preempt_count.i.i.i.i65 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i65 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i65, align 4
  %add.i.i.i66 = add i32 %21, 1
  store volatile i32 %add.i.i.i66, ptr %preempt_count.i.i.i.i65, align 4
  tail call void asm sideeffect "", "~{memory}"() #16
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i67 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %cmp40, label %if.then42, label %if.end43

if.then42:                                        ; preds = %rcu_read_unlock.exit105
  br i1 %call.i67, label %if.then42.cleanup_crit_edge, label %land.lhs.true.i70

if.then42.cleanup_crit_edge:                      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true.i70:                                ; preds = %if.then42
  %call1.i68 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i68)
  %tobool.not.i69 = icmp eq i32 %call1.i68, 0
  br i1 %tobool.not.i69, label %land.lhs.true.i70.cleanup_crit_edge, label %land.lhs.true2.i72

land.lhs.true.i70.cleanup_crit_edge:              ; preds = %land.lhs.true.i70
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true2.i72:                               ; preds = %land.lhs.true.i70
  %.b4.i71 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i71, label %land.lhs.true2.i72.cleanup_crit_edge, label %if.then.i73

land.lhs.true2.i72.cleanup_crit_edge:             ; preds = %land.lhs.true2.i72
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then.i73:                                      ; preds = %land.lhs.true2.i72
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 696, ptr noundef nonnull @.str.1) #16
  br label %cleanup

if.end43:                                         ; preds = %rcu_read_unlock.exit105
  br i1 %call.i67, label %if.end43.cleanup_crit_edge, label %land.lhs.true.i81

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true.i81:                                ; preds = %if.end43
  %call1.i79 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i79)
  %tobool.not.i80 = icmp eq i32 %call1.i79, 0
  br i1 %tobool.not.i80, label %land.lhs.true.i81.cleanup_crit_edge, label %land.lhs.true2.i83

land.lhs.true.i81.cleanup_crit_edge:              ; preds = %land.lhs.true.i81
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true2.i83:                               ; preds = %land.lhs.true.i81
  %.b4.i82 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i82, label %land.lhs.true2.i83.cleanup_crit_edge, label %if.then.i84

land.lhs.true2.i83.cleanup_crit_edge:             ; preds = %land.lhs.true2.i83
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then.i84:                                      ; preds = %land.lhs.true2.i83
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 696, ptr noundef nonnull @.str.1) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then.i84, %land.lhs.true2.i83.cleanup_crit_edge, %land.lhs.true.i81.cleanup_crit_edge, %if.end43.cleanup_crit_edge, %if.then.i73, %land.lhs.true2.i72.cleanup_crit_edge, %land.lhs.true.i70.cleanup_crit_edge, %if.then42.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %do.end29, %if.then.i, %land.lhs.true2.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %if.then12.cleanup_crit_edge
  %retval.0 = phi i32 [ %., %do.end29 ], [ %call35, %if.end34.cleanup_crit_edge ], [ -95, %if.then12.cleanup_crit_edge ], [ -95, %land.lhs.true.i.cleanup_crit_edge ], [ -95, %land.lhs.true2.i.cleanup_crit_edge ], [ -95, %if.then.i ], [ -95, %if.then42.cleanup_crit_edge ], [ -95, %land.lhs.true.i70.cleanup_crit_edge ], [ -95, %land.lhs.true2.i72.cleanup_crit_edge ], [ -95, %if.then.i73 ], [ -11, %if.end43.cleanup_crit_edge ], [ -11, %land.lhs.true.i81.cleanup_crit_edge ], [ -11, %land.lhs.true2.i83.cleanup_crit_edge ], [ -11, %if.then.i84 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfnl_unlock(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfnl_lock(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nf_ct_ext_add(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_connlabels_replace(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ctnetlink_change_helper(ptr noundef %ct, ptr nocapture noundef readonly %cda) unnamed_addr #2 align 64 {
entry:
  %tb.i = alloca [3 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %ext.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 13
  %0 = ptrtoint ptr %ext.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ext.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i, label %entry.nfct_help.exit_crit_edge, label %nf_ct_ext_exist.exit.i.i

entry.nfct_help.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %nfct_help.exit

nf_ct_ext_exist.exit.i.i:                         ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.i.i.not.i.i = icmp eq i8 %3, 0
  br i1 %tobool.i.i.not.i.i, label %nf_ct_ext_exist.exit.i.i.nfct_help.exit_crit_edge, label %if.end.i.i

nf_ct_ext_exist.exit.i.i.nfct_help.exit_crit_edge: ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nfct_help.exit

if.end.i.i:                                       ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %conv.i.i = zext i8 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  br label %nfct_help.exit

nfct_help.exit:                                   ; preds = %if.end.i.i, %nf_ct_ext_exist.exit.i.i.nfct_help.exit_crit_edge, %entry.nfct_help.exit_crit_edge
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %if.end.i.i ], [ null, %nf_ct_ext_exist.exit.i.i.nfct_help.exit_crit_edge ], [ null, %entry.nfct_help.exit_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %cda, i32 5
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tb.i) #16
  %6 = ptrtoint ptr %tb.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %tb.i, align 4, !annotation !128
  %7 = getelementptr inbounds [3 x ptr], ptr %tb.i, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %7, align 4, !annotation !128
  %9 = getelementptr inbounds [3 x ptr], ptr %tb.i, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 -1 to ptr), ptr %9, align 4, !annotation !128
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 4
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %5, align 2
  %conv.i.i.i = zext i16 %12 to i32
  %sub.i.i.i = add nsw i32 %conv.i.i.i, -4
  %call2.i.i = call i32 @__nla_parse(ptr noundef nonnull %tb.i, i32 noundef 2, ptr noundef %add.ptr.i.i.i, i32 noundef %sub.i.i.i, ptr noundef nonnull @help_nla_policy, i32 noundef 0, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp.i, label %nfct_help.exit.ctnetlink_parse_help.exit.thread_crit_edge, label %if.end.i

nfct_help.exit.ctnetlink_parse_help.exit.thread_crit_edge: ; preds = %nfct_help.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %ctnetlink_parse_help.exit.thread

if.end.i:                                         ; preds = %nfct_help.exit
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %7, align 4
  %tobool.not.i104 = icmp eq ptr %14, null
  br i1 %tobool.not.i104, label %if.end.i.ctnetlink_parse_help.exit.thread_crit_edge, label %if.end2.i

if.end.i.ctnetlink_parse_help.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ctnetlink_parse_help.exit.thread

if.end2.i:                                        ; preds = %if.end.i
  %add.ptr.i.i105 = getelementptr i8, ptr %14, i32 4
  %15 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tb.i) #16
  %master = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 10
  %17 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %master, align 4
  %tobool.not = icmp eq ptr %18, null
  br i1 %tobool.not, label %if.end25, label %if.then2

ctnetlink_parse_help.exit.thread:                 ; preds = %if.end.i.ctnetlink_parse_help.exit.thread_crit_edge, %nfct_help.exit.ctnetlink_parse_help.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -22, %if.end.i.ctnetlink_parse_help.exit.thread_crit_edge ], [ %call2.i.i, %nfct_help.exit.ctnetlink_parse_help.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tb.i) #16
  br label %cleanup

if.then2:                                         ; preds = %if.end2.i
  %tobool3.not = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool3.not, label %if.then2.cleanup_crit_edge, label %if.then4

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then4:                                         ; preds = %if.then2
  %19 = call i32 @llvm.read_register.i32(metadata !118) #16
  %and.i.i.i.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %22, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !130
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %if.then4.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then4.rcu_read_lock.exit_crit_edge:            ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then4
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 696, ptr noundef nonnull @.str.1) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then4.rcu_read_lock.exit_crit_edge
  %23 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %retval.0.i.i, align 8
  %call7 = call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end16_crit_edge

rcu_read_lock.exit.do.end16_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end16

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call9 = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true.do.end16_crit_edge, label %land.lhs.true11

land.lhs.true.do.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end16

land.lhs.true11:                                  ; preds = %land.lhs.true
  %.b92 = load i1, ptr @ctnetlink_change_helper.__warned, align 1
  br i1 %.b92, label %land.lhs.true11.do.end16_crit_edge, label %if.then13

land.lhs.true11.do.end16_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end16

if.then13:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @ctnetlink_change_helper.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1951, ptr noundef nonnull @.str.4) #16
  br label %do.end16

do.end16:                                         ; preds = %if.then13, %land.lhs.true11.do.end16_crit_edge, %land.lhs.true.do.end16_crit_edge, %rcu_read_lock.exit.do.end16_crit_edge
  %tobool18.not = icmp eq ptr %24, null
  br i1 %tobool18.not, label %do.end16.if.end23_crit_edge, label %land.lhs.true19

do.end16.if.end23_crit_edge:                      ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end23

land.lhs.true19:                                  ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #18
  %name = getelementptr inbounds %struct.nf_conntrack_helper, ptr %24, i32 0, i32 1
  %call20 = call i32 @strcmp(ptr noundef %name, ptr noundef %add.ptr.i.i105) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  %spec.select = select i1 %tobool21.not, i32 0, i32 -16
  br label %if.end23

if.end23:                                         ; preds = %land.lhs.true19, %do.end16.if.end23_crit_edge
  %err.0 = phi i32 [ -16, %do.end16.if.end23_crit_edge ], [ %spec.select, %land.lhs.true19 ]
  %call.i106 = call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i106, label %if.end23.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i109

if.end23.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true.i109:                               ; preds = %if.end23
  %call1.i107 = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i107)
  %tobool.not.i108 = icmp eq i32 %call1.i107, 0
  br i1 %tobool.not.i108, label %land.lhs.true.i109.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i111

land.lhs.true.i109.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i109
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true2.i111:                              ; preds = %land.lhs.true.i109
  %.b4.i110 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i110, label %land.lhs.true2.i111.rcu_read_unlock.exit_crit_edge, label %if.then.i112

land.lhs.true2.i111.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i111
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

if.then.i112:                                     ; preds = %land.lhs.true2.i111
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 724, ptr noundef nonnull @.str.2) #16
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i112, %land.lhs.true2.i111.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i109.rcu_read_unlock.exit_crit_edge, %if.end23.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !131
  %25 = call i32 @llvm.read_register.i32(metadata !118) #16
  %and.i.i.i.i.i113 = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i.i.i113 to ptr
  %preempt_count.i.i.i.i114 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %preempt_count.i.i.i.i114 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %preempt_count.i.i.i.i114, align 4
  %sub.i.i.i115 = add i32 %28, -1
  store volatile i32 %sub.i.i.i115, ptr %preempt_count.i.i.i.i114, align 4
  call void @rcu_read_unlock_strict() #16
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  br label %cleanup

if.end25:                                         ; preds = %if.end2.i
  %29 = ptrtoint ptr %add.ptr.i.i105 to i32
  call void @__asan_load1_noabort(i32 %29)
  %strcmpload = load i8, ptr %add.ptr.i.i105, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %strcmpload)
  %tobool27.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool27.not, label %if.then28, label %if.end48

if.then28:                                        ; preds = %if.end25
  %tobool29.not = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool29.not, label %if.then28.cleanup_crit_edge, label %land.lhs.true30

if.then28.cleanup_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true30:                                  ; preds = %if.then28
  %30 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %retval.0.i.i, align 8
  %tobool32.not = icmp eq ptr %31, null
  br i1 %tobool32.not, label %land.lhs.true30.cleanup_crit_edge, label %if.then33

land.lhs.true30.cleanup_crit_edge:                ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then33:                                        ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #18
  call void @nf_ct_remove_expectations(ptr noundef %ct) #16
  %32 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr null, ptr %retval.0.i.i, align 8
  br label %cleanup

if.end48:                                         ; preds = %if.end25
  %33 = call i32 @llvm.read_register.i32(metadata !118) #16
  %and.i.i.i.i.i93 = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i.i93 to ptr
  %preempt_count.i.i.i.i94 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i.i94 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i.i94, align 4
  %add.i.i.i95 = add i32 %36, 1
  store volatile i32 %add.i.i.i95, ptr %preempt_count.i.i.i.i94, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !130
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i96 = call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i96, label %if.end48.rcu_read_lock.exit103_crit_edge, label %land.lhs.true.i99

if.end48.rcu_read_lock.exit103_crit_edge:         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit103

land.lhs.true.i99:                                ; preds = %if.end48
  %call1.i97 = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i97)
  %tobool.not.i98 = icmp eq i32 %call1.i97, 0
  br i1 %tobool.not.i98, label %land.lhs.true.i99.rcu_read_lock.exit103_crit_edge, label %land.lhs.true2.i101

land.lhs.true.i99.rcu_read_lock.exit103_crit_edge: ; preds = %land.lhs.true.i99
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit103

land.lhs.true2.i101:                              ; preds = %land.lhs.true.i99
  %.b4.i100 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i100, label %land.lhs.true2.i101.rcu_read_lock.exit103_crit_edge, label %if.then.i102

land.lhs.true2.i101.rcu_read_lock.exit103_crit_edge: ; preds = %land.lhs.true2.i101
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit103

if.then.i102:                                     ; preds = %land.lhs.true2.i101
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 696, ptr noundef nonnull @.str.1) #16
  br label %rcu_read_lock.exit103

rcu_read_lock.exit103:                            ; preds = %if.then.i102, %land.lhs.true2.i101.rcu_read_lock.exit103_crit_edge, %land.lhs.true.i99.rcu_read_lock.exit103_crit_edge, %if.end48.rcu_read_lock.exit103_crit_edge
  %l3num.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 0, i32 1, i32 0, i32 2
  %37 = ptrtoint ptr %l3num.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %l3num.i, align 2
  %protonum.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 0, i32 1, i32 1, i32 2
  %39 = ptrtoint ptr %protonum.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %protonum.i, align 2
  %call51 = call ptr @__nf_conntrack_helper_find(ptr noundef %add.ptr.i.i105, i16 noundef zeroext %38, i8 noundef zeroext %40) #16
  %cmp52 = icmp eq ptr %call51, null
  br i1 %cmp52, label %if.then53, label %if.end54

if.then53:                                        ; preds = %rcu_read_lock.exit103
  %call.i116 = call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i116, label %if.then53.rcu_read_unlock.exit126_crit_edge, label %land.lhs.true.i119

if.then53.rcu_read_unlock.exit126_crit_edge:      ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit126

land.lhs.true.i119:                               ; preds = %if.then53
  %call1.i117 = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i117)
  %tobool.not.i118 = icmp eq i32 %call1.i117, 0
  br i1 %tobool.not.i118, label %land.lhs.true.i119.rcu_read_unlock.exit126_crit_edge, label %land.lhs.true2.i121

land.lhs.true.i119.rcu_read_unlock.exit126_crit_edge: ; preds = %land.lhs.true.i119
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit126

land.lhs.true2.i121:                              ; preds = %land.lhs.true.i119
  %.b4.i120 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i120, label %land.lhs.true2.i121.rcu_read_unlock.exit126_crit_edge, label %if.then.i122

land.lhs.true2.i121.rcu_read_unlock.exit126_crit_edge: ; preds = %land.lhs.true2.i121
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit126

if.then.i122:                                     ; preds = %land.lhs.true2.i121
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 724, ptr noundef nonnull @.str.2) #16
  br label %rcu_read_unlock.exit126

rcu_read_unlock.exit126:                          ; preds = %if.then.i122, %land.lhs.true2.i121.rcu_read_unlock.exit126_crit_edge, %land.lhs.true.i119.rcu_read_unlock.exit126_crit_edge, %if.then53.rcu_read_unlock.exit126_crit_edge
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !131
  %41 = call i32 @llvm.read_register.i32(metadata !118) #16
  %and.i.i.i.i.i123 = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i.i.i123 to ptr
  %preempt_count.i.i.i.i124 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %preempt_count.i.i.i.i124 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %preempt_count.i.i.i.i124, align 4
  %sub.i.i.i125 = add i32 %44, -1
  store volatile i32 %sub.i.i.i125, ptr %preempt_count.i.i.i.i124, align 4
  call void @rcu_read_unlock_strict() #16
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  br label %cleanup

if.end54:                                         ; preds = %rcu_read_lock.exit103
  %tobool55.not = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool55.not, label %if.end54.if.end67_crit_edge, label %if.then56

if.end54.if.end67_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end67

if.then56:                                        ; preds = %if.end54
  %45 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %retval.0.i.i, align 8
  %cmp58 = icmp eq ptr %46, %call51
  br i1 %cmp58, label %if.then59, label %if.then56.if.end67_crit_edge

if.then56.if.end67_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end67

if.then59:                                        ; preds = %if.then56
  %from_nlattr = getelementptr inbounds %struct.nf_conntrack_helper, ptr %call51, i32 0, i32 8
  %47 = ptrtoint ptr %from_nlattr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %from_nlattr, align 4
  %tobool60.not = icmp eq ptr %48, null
  br i1 %tobool60.not, label %if.then59.if.end67_crit_edge, label %if.then61

if.then59.if.end67_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end67

if.then61:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #18
  %call63 = call i32 %48(ptr noundef %16, ptr noundef %ct) #16
  br label %if.end67

if.end67:                                         ; preds = %if.then61, %if.then59.if.end67_crit_edge, %if.then56.if.end67_crit_edge, %if.end54.if.end67_crit_edge
  %err.2 = phi i32 [ 0, %if.then61 ], [ 0, %if.then59.if.end67_crit_edge ], [ -16, %if.then56.if.end67_crit_edge ], [ -95, %if.end54.if.end67_crit_edge ]
  %call.i127 = call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i127, label %if.end67.rcu_read_unlock.exit137_crit_edge, label %land.lhs.true.i130

if.end67.rcu_read_unlock.exit137_crit_edge:       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit137

land.lhs.true.i130:                               ; preds = %if.end67
  %call1.i128 = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i128)
  %tobool.not.i129 = icmp eq i32 %call1.i128, 0
  br i1 %tobool.not.i129, label %land.lhs.true.i130.rcu_read_unlock.exit137_crit_edge, label %land.lhs.true2.i132

land.lhs.true.i130.rcu_read_unlock.exit137_crit_edge: ; preds = %land.lhs.true.i130
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit137

land.lhs.true2.i132:                              ; preds = %land.lhs.true.i130
  %.b4.i131 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i131, label %land.lhs.true2.i132.rcu_read_unlock.exit137_crit_edge, label %if.then.i133

land.lhs.true2.i132.rcu_read_unlock.exit137_crit_edge: ; preds = %land.lhs.true2.i132
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit137

if.then.i133:                                     ; preds = %land.lhs.true2.i132
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 724, ptr noundef nonnull @.str.2) #16
  br label %rcu_read_unlock.exit137

rcu_read_unlock.exit137:                          ; preds = %if.then.i133, %land.lhs.true2.i132.rcu_read_unlock.exit137_crit_edge, %land.lhs.true.i130.rcu_read_unlock.exit137_crit_edge, %if.end67.rcu_read_unlock.exit137_crit_edge
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !131
  %49 = call i32 @llvm.read_register.i32(metadata !118) #16
  %and.i.i.i.i.i134 = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i.i.i134 to ptr
  %preempt_count.i.i.i.i135 = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %preempt_count.i.i.i.i135 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %preempt_count.i.i.i.i135, align 4
  %sub.i.i.i136 = add i32 %52, -1
  store volatile i32 %sub.i.i.i136, ptr %preempt_count.i.i.i.i135, align 4
  call void @rcu_read_unlock_strict() #16
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit137, %rcu_read_unlock.exit126, %if.then33, %land.lhs.true30.cleanup_crit_edge, %if.then28.cleanup_crit_edge, %rcu_read_unlock.exit, %if.then2.cleanup_crit_edge, %ctnetlink_parse_help.exit.thread
  %retval.0 = phi i32 [ -95, %rcu_read_unlock.exit126 ], [ %err.2, %rcu_read_unlock.exit137 ], [ %err.0, %rcu_read_unlock.exit ], [ -16, %if.then2.cleanup_crit_edge ], [ 0, %if.then33 ], [ 0, %land.lhs.true30.cleanup_crit_edge ], [ 0, %if.then28.cleanup_crit_edge ], [ %retval.0.i.ph, %ctnetlink_parse_help.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_remove_expectations(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ctnetlink_start(ptr nocapture noundef %cb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 4
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %2 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nlh, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 16
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %add.ptr.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

lor.lhs.false.i:                                  ; preds = %entry
  %arrayidx.i = getelementptr ptr, ptr %1, i32 8
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %lor.lhs.false2.i, label %lor.lhs.false.i.if.then_crit_edge

lor.lhs.false.i.if.then_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %arrayidx3.i = getelementptr ptr, ptr %1, i32 25
  %8 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx3.i, align 4
  %tobool4.not.i = icmp eq ptr %9, null
  br i1 %tobool4.not.i, label %ctnetlink_needs_filter.exit, label %lor.lhs.false2.i.if.then_crit_edge

lor.lhs.false2.i.if.then_crit_edge:               ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

ctnetlink_needs_filter.exit:                      ; preds = %lor.lhs.false2.i
  %arrayidx5.i = getelementptr ptr, ptr %1, i32 3
  %10 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx5.i, align 4
  %tobool6.i.not = icmp eq ptr %11, null
  br i1 %tobool6.i.not, label %ctnetlink_needs_filter.exit.if.end6_crit_edge, label %ctnetlink_needs_filter.exit.if.then_crit_edge

ctnetlink_needs_filter.exit.if.then_crit_edge:    ; preds = %ctnetlink_needs_filter.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

ctnetlink_needs_filter.exit.if.end6_crit_edge:    ; preds = %ctnetlink_needs_filter.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

if.then:                                          ; preds = %ctnetlink_needs_filter.exit.if.then_crit_edge, %lor.lhs.false2.i.if.then_crit_edge, %lor.lhs.false.i.if.then_crit_edge, %entry.if.then_crit_edge
  %call2 = tail call fastcc ptr @ctnetlink_alloc_filter(ptr noundef %1, i8 noundef zeroext %5)
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %12 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %ctnetlink_needs_filter.exit.if.end6_crit_edge
  %filter.0 = phi ptr [ %call2, %if.then.if.end6_crit_edge ], [ null, %ctnetlink_needs_filter.exit.if.end6_crit_edge ]
  %13 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %filter.0, ptr %data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4
  %retval.0 = phi i32 [ %12, %if.then4 ], [ 0, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ctnetlink_dump_table(ptr noundef %skb, ptr nocapture noundef %cb) #2 align 64 {
entry:
  %old.i.i.i = alloca i32, align 4
  %nf_ct_evict = alloca [8 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 4
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %tobool.not = icmp eq ptr %1, null
  %cond = select i1 %tobool.not, i32 0, i32 32
  %2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %skc_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %nf_ct_evict) #16
  %7 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %arrayidx = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 1
  %8 = call ptr @memset(ptr %nf_ct_evict, i32 255, i32 32)
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %11 = inttoptr i32 %10 to ptr
  tail call fastcc void @local_bh_disable()
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %7, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nf_conntrack_htable_size to i32))
  %14 = load i32, ptr @nf_conntrack_htable_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %14)
  %cmp204 = icmp ult i32 %13, %14
  br i1 %cmp204, label %restart.preheader.lr.ph, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

restart.preheader.lr.ph:                          ; preds = %entry
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  br label %restart

restart:                                          ; preds = %restart.backedge, %restart.preheader.lr.ph
  %i.1 = phi i32 [ 0, %restart.preheader.lr.ph ], [ %i.3.lcssa, %restart.backedge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1)
  %tobool2.not197 = icmp eq i32 %i.1, 0
  br i1 %tobool2.not197, label %restart.while.end_crit_edge, label %restart.while.body_crit_edge

restart.while.body_crit_edge:                     ; preds = %restart
  br label %while.body

restart.while.end_crit_edge:                      ; preds = %restart
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.body:                                       ; preds = %nf_ct_put.exit.while.body_crit_edge, %restart.while.body_crit_edge
  %i.2198 = phi i32 [ %dec, %nf_ct_put.exit.while.body_crit_edge ], [ %i.1, %restart.while.body_crit_edge ]
  %dec = add i32 %i.2198, -1
  %arrayidx3 = getelementptr [8 x ptr], ptr %nf_ct_evict, i32 0, i32 %dec
  %15 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx3, align 4
  %timeout.i.i = getelementptr inbounds %struct.nf_conn, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %timeout.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %18, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i)
  %cmp.i.i = icmp slt i32 %sub.i.i, 1
  br i1 %cmp.i.i, label %land.lhs.true.i, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.lhs.true.i:                                  ; preds = %while.body
  %status.i.i = getelementptr inbounds %struct.nf_conn, ptr %16, i32 0, i32 5
  %20 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %status.i.i, align 4
  %22 = and i32 %21, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.if.end_crit_edge, label %nf_ct_should_gc.exit

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

nf_ct_should_gc.exit:                             ; preds = %land.lhs.true.i
  %23 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %status.i.i, align 4
  %25 = and i32 %24, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool3.not.i = icmp eq i32 %25, 0
  br i1 %tobool3.not.i, label %if.then, label %nf_ct_should_gc.exit.if.end_crit_edge

nf_ct_should_gc.exit.if.end_crit_edge:            ; preds = %nf_ct_should_gc.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %nf_ct_should_gc.exit
  call void @__sanitizer_cov_trace_pc() #18
  %call.i = call zeroext i1 @nf_ct_delete(ptr noundef %16, i32 noundef 0, i32 noundef 0) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %nf_ct_should_gc.exit.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge, %while.body.if.end_crit_edge
  %tobool.not.i143 = icmp eq ptr %16, null
  br i1 %tobool.not.i143, label %if.end.nf_ct_put.exit_crit_edge, label %land.lhs.true.i144

if.end.nf_ct_put.exit_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %nf_ct_put.exit

land.lhs.true.i144:                               ; preds = %if.end
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %16, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !133
  call void @llvm.prefetch.p0(ptr nonnull %16, i32 1, i32 3, i32 1) #16
  %26 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %16, ptr nonnull %16, i32 1, ptr nonnull elementtype(i32) %16) #16, !srcloc !134
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.nf_ct_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !135

if.end5.i.i.i.i.nf_ct_put.exit_crit_edge:         ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nf_ct_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @refcount_warn_saturate(ptr noundef nonnull %16, i32 noundef 3) #16
  br label %nf_ct_put.exit

if.then.i:                                        ; preds = %land.lhs.true.i144
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !136
  call void @nf_ct_destroy(ptr noundef nonnull %16) #16
  br label %nf_ct_put.exit

nf_ct_put.exit:                                   ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.nf_ct_put.exit_crit_edge, %if.end.nf_ct_put.exit_crit_edge
  %tobool2.not = icmp eq i32 %dec, 0
  br i1 %tobool2.not, label %nf_ct_put.exit.while.end_crit_edge, label %nf_ct_put.exit.while.body_crit_edge

nf_ct_put.exit.while.body_crit_edge:              ; preds = %nf_ct_put.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

nf_ct_put.exit.while.end_crit_edge:               ; preds = %nf_ct_put.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.end:                                        ; preds = %nf_ct_put.exit.while.end_crit_edge, %restart.while.end_crit_edge
  %27 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %7, align 4
  %rem = srem i32 %28, 1024
  %arrayidx9 = getelementptr [1024 x %struct.spinlock], ptr @nf_conntrack_locks, i32 0, i32 %rem
  call void @nf_conntrack_lock(ptr noundef %arrayidx9) #16
  %29 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %7, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nf_conntrack_htable_size to i32))
  %31 = load i32, ptr @nf_conntrack_htable_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %31)
  %cmp11.not = icmp ult i32 %30, %31
  br i1 %cmp11.not, label %if.end13, label %while.end.out.sink.split_crit_edge

while.end.out.sink.split_crit_edge:               ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %out.sink.split

if.end13:                                         ; preds = %while.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nf_conntrack_hash to i32))
  %32 = load ptr, ptr @nf_conntrack_hash, align 4
  %arrayidx15 = getelementptr %struct.hlist_nulls_head, ptr %32, i32 %30
  %33 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %33)
  %n.0199 = load ptr, ptr %arrayidx15, align 4
  %34 = ptrtoint ptr %n.0199 to i32
  %and.i200 = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i200)
  %tobool18.not201 = icmp eq i32 %and.i200, 0
  br i1 %tobool18.not201, label %if.end13.for.body21_crit_edge, label %if.end13.for.end_crit_edge

if.end13.for.end_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

if.end13.for.body21_crit_edge:                    ; preds = %if.end13
  br label %for.body21

for.body21:                                       ; preds = %for.inc.for.body21_crit_edge, %if.end13.for.body21_crit_edge
  %n.0203 = phi ptr [ %n.0, %for.inc.for.body21_crit_edge ], [ %n.0199, %if.end13.for.body21_crit_edge ]
  %i.3202 = phi i32 [ %i.4, %for.inc.for.body21_crit_edge ], [ 0, %if.end13.for.body21_crit_edge ]
  %dir.i = getelementptr inbounds %struct.nf_conntrack_tuple_hash, ptr %n.0203, i32 0, i32 1, i32 1, i32 3
  %35 = ptrtoint ptr %dir.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %dir.i, align 1
  %conv.i = zext i8 %36 to i32
  %.neg.i = mul nsw i32 %conv.i, -48
  %idx.neg.i = add nsw i32 %.neg.i, -56
  %add.ptr.i = getelementptr i8, ptr %n.0203, i32 %idx.neg.i
  %timeout.i = getelementptr inbounds %struct.nf_conn, ptr %add.ptr.i, i32 0, i32 2
  %37 = ptrtoint ptr %timeout.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %timeout.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %39 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %38, %39
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 1
  br i1 %cmp.i, label %if.then24, label %if.end30

if.then24:                                        ; preds = %for.body21
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %i.3202)
  %cmp25 = icmp ult i32 %i.3202, 8
  br i1 %cmp25, label %land.lhs.true, label %if.then24.for.inc_crit_edge

if.then24.for.inc_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

land.lhs.true:                                    ; preds = %if.then24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #16
  %call.i.i.i.i.i.i145 = call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr.i, i32 noundef 4) #16
  %40 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %add.ptr.i, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %land.lhs.true
  %42 = phi i32 [ %41, %land.lhs.true ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %43 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i.i.i = icmp eq i32 %42, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i = add i32 %42, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr.i, i32 noundef 4) #16
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #16
  %44 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %add.ptr.i, i32 1, i32 3, i32 1) #16
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %46 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %add.ptr.i, ptr %add.ptr.i, i32 %45, i32 %add.i.i.i, ptr elementtype(i32) %add.ptr.i) #16, !srcloc !137
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %46, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %46, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %45
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !135

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %47 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %48, 1
  %49 = or i32 %add5.i.i.i, %48
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %49)
  %.not.i.i.i = icmp sgt i32 %49, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !135

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @refcount_warn_saturate(ptr noundef %add.ptr.i, i32 noundef 0) #16
  %50 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %.pr = load i32, ptr %old.i.i.i, align 4
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %51 = phi i32 [ %48, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool12.i.i.i.not = icmp eq i32 %51, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #16
  br i1 %tobool12.i.i.i.not, label %refcount_inc_not_zero.exit.for.inc_crit_edge, label %if.then27

refcount_inc_not_zero.exit.for.inc_crit_edge:     ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then27:                                        ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #18
  %inc = add i32 %i.3202, 1
  %arrayidx28 = getelementptr [8 x ptr], ptr %nf_ct_evict, i32 0, i32 %i.3202
  %52 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %add.ptr.i, ptr %arrayidx28, align 4
  br label %for.inc

if.end30:                                         ; preds = %for.body21
  %ct_net.i = getelementptr inbounds %struct.nf_conn, ptr %add.ptr.i, i32 0, i32 7
  %53 = ptrtoint ptr %ct_net.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ct_net.i, align 4
  %cmp.i146 = icmp eq ptr %6, %54
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp36.not = icmp eq i8 %36, 0
  %or.cond = select i1 %cmp.i146, i1 %cmp36.not, i1 false
  br i1 %or.cond, label %if.end39, label %if.end30.for.inc_crit_edge

if.end30.for.inc_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end39:                                         ; preds = %if.end30
  %55 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool41.not = icmp eq i32 %56, 0
  br i1 %tobool41.not, label %if.end39.if.end48_crit_edge, label %if.then42

if.end39.if.end48_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end48

if.then42:                                        ; preds = %if.end39
  %cmp43.not = icmp eq ptr %add.ptr.i, %11
  br i1 %cmp43.not, label %if.end46, label %if.then42.for.inc_crit_edge

if.then42.for.inc_crit_edge:                      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end46:                                         ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #18
  %57 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %arrayidx, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end46, %if.end39.if.end48_crit_edge
  %58 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data, align 4
  %cmp.i148 = icmp eq ptr %59, null
  br i1 %cmp.i148, label %if.end48.if.end53_crit_edge, label %if.end.i

if.end48.if.end53_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end53

if.end.i:                                         ; preds = %if.end48
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %59, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool.not.i149 = icmp eq i8 %61, 0
  br i1 %tobool.not.i149, label %if.end.i.if.end7.i_crit_edge, label %land.lhs.true.i150

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7.i

land.lhs.true.i150:                               ; preds = %if.end.i
  %l3num.i.i = getelementptr inbounds %struct.nf_conn, ptr %add.ptr.i, i32 0, i32 4, i32 0, i32 1, i32 0, i32 2
  %62 = ptrtoint ptr %l3num.i.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %l3num.i.i, align 2
  %64 = zext i8 %61 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %63, i16 %64)
  %cmp4.not.i = icmp eq i16 %63, %64
  br i1 %cmp4.not.i, label %land.lhs.true.i150.if.end7.i_crit_edge, label %land.lhs.true.i150.for.inc_crit_edge

land.lhs.true.i150.for.inc_crit_edge:             ; preds = %land.lhs.true.i150
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

land.lhs.true.i150.if.end7.i_crit_edge:           ; preds = %land.lhs.true.i150
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7.i

if.end7.i:                                        ; preds = %land.lhs.true.i150.if.end7.i_crit_edge, %if.end.i.if.end7.i_crit_edge
  %orig_flags.i = getelementptr inbounds %struct.ctnetlink_filter, ptr %59, i32 0, i32 1
  %65 = ptrtoint ptr %orig_flags.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %orig_flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool8.not.i = icmp eq i32 %66, 0
  br i1 %tobool8.not.i, label %if.end7.i.if.end18.i_crit_edge, label %if.then9.i

if.end7.i.if.end18.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18.i

if.then9.i:                                       ; preds = %if.end7.i
  %tuple10.i = getelementptr inbounds %struct.nf_conn, ptr %add.ptr.i, i32 0, i32 4, i32 0, i32 1
  %orig.i = getelementptr inbounds %struct.ctnetlink_filter, ptr %59, i32 0, i32 3
  %conv13.i = zext i8 %61 to i32
  %call14.i = call fastcc i32 @ctnetlink_filter_match_tuple(ptr noundef %orig.i, ptr noundef %tuple10.i, i32 noundef %66, i32 noundef %conv13.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.then9.i.for.inc_crit_edge, label %if.then9.i.if.end18.i_crit_edge

if.then9.i.if.end18.i_crit_edge:                  ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18.i

if.then9.i.for.inc_crit_edge:                     ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end18.i:                                       ; preds = %if.then9.i.if.end18.i_crit_edge, %if.end7.i.if.end18.i_crit_edge
  %reply_flags.i = getelementptr inbounds %struct.ctnetlink_filter, ptr %59, i32 0, i32 2
  %67 = ptrtoint ptr %reply_flags.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %reply_flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool19.not.i = icmp eq i32 %68, 0
  br i1 %tobool19.not.i, label %if.end18.i.if.end31.i_crit_edge, label %if.then20.i

if.end18.i.if.end31.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end31.i

if.then20.i:                                      ; preds = %if.end18.i
  %tuple23.i = getelementptr %struct.nf_conn, ptr %add.ptr.i, i32 0, i32 4, i32 1, i32 1
  %reply.i = getelementptr inbounds %struct.ctnetlink_filter, ptr %59, i32 0, i32 4
  %conv26.i = zext i8 %61 to i32
  %call27.i = call fastcc i32 @ctnetlink_filter_match_tuple(ptr noundef %reply.i, ptr noundef %tuple23.i, i32 noundef %68, i32 noundef %conv26.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %if.then20.i.for.inc_crit_edge, label %if.then20.i.if.end31.i_crit_edge

if.then20.i.if.end31.i_crit_edge:                 ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end31.i

if.then20.i.for.inc_crit_edge:                    ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end31.i:                                       ; preds = %if.then20.i.if.end31.i_crit_edge, %if.end18.i.if.end31.i_crit_edge
  %mark.i = getelementptr inbounds %struct.nf_conn, ptr %add.ptr.i, i32 0, i32 11
  %69 = ptrtoint ptr %mark.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %mark.i, align 8
  %mark32.i = getelementptr inbounds %struct.ctnetlink_filter, ptr %59, i32 0, i32 6
  %mask.i = getelementptr inbounds %struct.ctnetlink_filter, ptr %59, i32 0, i32 6, i32 1
  %71 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %mask.i, align 4
  %and.i151 = and i32 %72, %70
  %73 = ptrtoint ptr %mark32.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %mark32.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i151, i32 %74)
  %cmp34.not.i = icmp eq i32 %and.i151, %74
  br i1 %cmp34.not.i, label %do.end.i, label %if.end31.i.for.inc_crit_edge

if.end31.i.for.inc_crit_edge:                     ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

do.end.i:                                         ; preds = %if.end31.i
  %status38.i = getelementptr inbounds %struct.nf_conn, ptr %add.ptr.i, i32 0, i32 5
  %75 = ptrtoint ptr %status38.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %status38.i, align 8
  %status39.i = getelementptr inbounds %struct.ctnetlink_filter, ptr %59, i32 0, i32 7
  %mask40.i = getelementptr inbounds %struct.ctnetlink_filter, ptr %59, i32 0, i32 7, i32 1
  %77 = ptrtoint ptr %mask40.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %mask40.i, align 4
  %and41.i = and i32 %78, %76
  %79 = ptrtoint ptr %status39.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %status39.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and41.i, i32 %80)
  %cmp44.not.i = icmp eq i32 %and41.i, %80
  br i1 %cmp44.not.i, label %do.end.i.if.end53_crit_edge, label %do.end.i.for.inc_crit_edge

do.end.i.for.inc_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

do.end.i.if.end53_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end53

if.end53:                                         ; preds = %do.end.i.if.end53_crit_edge, %if.end48.if.end53_crit_edge
  %81 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %cb, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %82, i32 0, i32 3, i32 12
  %83 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %portid, align 4
  %85 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %86, i32 0, i32 3
  %87 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %nlmsg_seq, align 4
  %nlmsg_type = getelementptr inbounds %struct.nlmsghdr, ptr %86, i32 0, i32 1
  %89 = ptrtoint ptr %nlmsg_type to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %nlmsg_type, align 4
  %91 = and i16 %90, 255
  %and = zext i16 %91 to i32
  %call58 = call fastcc i32 @ctnetlink_fill_info(ptr noundef %skb, i32 noundef %84, i32 noundef %88, i32 noundef %and, ptr noundef %add.ptr.i, i1 noundef zeroext true, i32 noundef %cond)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59 = icmp slt i32 %call58, 0
  br i1 %cmp59, label %if.then61, label %if.end53.for.inc_crit_edge

if.end53.for.inc_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then61:                                        ; preds = %if.end53
  %tobool.not.i152 = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i152, label %if.then61.nf_conntrack_get.exit_crit_edge, label %if.then.i155

if.then61.nf_conntrack_get.exit_crit_edge:        ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #18
  br label %nf_conntrack_get.exit

if.then.i155:                                     ; preds = %if.then61
  %call.i.i.i.i.i.i153 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %add.ptr.i, i32 noundef 4) #16
  call void @llvm.prefetch.p0(ptr nonnull %add.ptr.i, i32 1, i32 3, i32 1) #16
  %92 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %add.ptr.i, ptr nonnull %add.ptr.i, i32 1, ptr nonnull elementtype(i32) %add.ptr.i) #16, !srcloc !139
  %asmresult.i.i.i.i.i.i154 = extractvalue { i32, i32, i32 } %92, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i154)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i154, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i155.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !129

if.then.i155.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.then.i155
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i155
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i154, 1
  %93 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i154
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %93)
  %.not.i.i.i.i156 = icmp sgt i32 %93, -1
  br i1 %.not.i.i.i.i156, label %if.else.i.i.i.i.nf_conntrack_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !135

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.nf_conntrack_get.exit_crit_edge:  ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nf_conntrack_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i155.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i155.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef nonnull %add.ptr.i, i32 noundef %.sink.i.i.i.i) #16
  br label %nf_conntrack_get.exit

nf_conntrack_get.exit:                            ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.nf_conntrack_get.exit_crit_edge, %if.then61.nf_conntrack_get.exit_crit_edge
  %94 = ptrtoint ptr %add.ptr.i to i32
  %95 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %arrayidx, align 4
  br label %out.sink.split

for.inc:                                          ; preds = %if.end53.for.inc_crit_edge, %do.end.i.for.inc_crit_edge, %if.end31.i.for.inc_crit_edge, %if.then20.i.for.inc_crit_edge, %if.then9.i.for.inc_crit_edge, %land.lhs.true.i150.for.inc_crit_edge, %if.then42.for.inc_crit_edge, %if.end30.for.inc_crit_edge, %if.then27, %refcount_inc_not_zero.exit.for.inc_crit_edge, %if.then24.for.inc_crit_edge
  %i.4 = phi i32 [ %inc, %if.then27 ], [ %i.3202, %refcount_inc_not_zero.exit.for.inc_crit_edge ], [ %i.3202, %if.then24.for.inc_crit_edge ], [ %i.3202, %if.then42.for.inc_crit_edge ], [ %i.3202, %if.end53.for.inc_crit_edge ], [ %i.3202, %if.end30.for.inc_crit_edge ], [ %i.3202, %land.lhs.true.i150.for.inc_crit_edge ], [ %i.3202, %if.then9.i.for.inc_crit_edge ], [ %i.3202, %if.then20.i.for.inc_crit_edge ], [ %i.3202, %if.end31.i.for.inc_crit_edge ], [ %i.3202, %do.end.i.for.inc_crit_edge ]
  %96 = ptrtoint ptr %n.0203 to i32
  call void @__asan_load4_noabort(i32 %96)
  %n.0 = load ptr, ptr %n.0203, align 4
  %97 = ptrtoint ptr %n.0 to i32
  %and.i = and i32 %97, 1
  %tobool18.not = icmp eq i32 %and.i, 0
  br i1 %tobool18.not, label %for.inc.for.body21_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.inc.for.body21_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body21

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end13.for.end_crit_edge
  %i.3.lcssa = phi i32 [ 0, %if.end13.for.end_crit_edge ], [ %i.4, %for.inc.for.end_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %arrayidx9) #16
  %98 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool66.not = icmp eq i32 %99, 0
  br i1 %tobool66.not, label %for.inc70, label %if.then67

if.then67:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  %100 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 0, ptr %arrayidx, align 4
  br label %restart.backedge

restart.backedge:                                 ; preds = %for.inc70.restart.backedge_crit_edge, %if.then67
  br label %restart

for.inc70:                                        ; preds = %for.end
  %101 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %7, align 4
  %inc72 = add i32 %102, 1
  store i32 %inc72, ptr %7, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nf_conntrack_htable_size to i32))
  %103 = load i32, ptr @nf_conntrack_htable_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc72, i32 %103)
  %cmp = icmp ult i32 %inc72, %103
  br i1 %cmp, label %for.inc70.restart.backedge_crit_edge, label %for.inc70.out_crit_edge

for.inc70.out_crit_edge:                          ; preds = %for.inc70
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

for.inc70.restart.backedge_crit_edge:             ; preds = %for.inc70
  call void @__sanitizer_cov_trace_pc() #18
  br label %restart.backedge

out.sink.split:                                   ; preds = %nf_conntrack_get.exit, %while.end.out.sink.split_crit_edge
  %i.5.ph = phi i32 [ %i.3202, %nf_conntrack_get.exit ], [ 0, %while.end.out.sink.split_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %arrayidx9) #16
  br label %out

out:                                              ; preds = %out.sink.split, %for.inc70.out_crit_edge, %entry.out_crit_edge
  %i.5 = phi i32 [ 0, %entry.out_crit_edge ], [ %i.5.ph, %out.sink.split ], [ %i.3.lcssa, %for.inc70.out_crit_edge ]
  call fastcc void @local_bh_enable()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool74.not = icmp eq i32 %10, 0
  br i1 %tobool74.not, label %out.if.end82_crit_edge, label %if.then75

out.if.end82_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end82

if.then75:                                        ; preds = %out
  %104 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx, align 4
  %106 = inttoptr i32 %105 to ptr
  %cmp77 = icmp eq ptr %106, %11
  br i1 %cmp77, label %if.then79, label %if.then75.land.lhs.true.i162_crit_edge

if.then75.land.lhs.true.i162_crit_edge:           ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true.i162

if.then79:                                        ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #18
  %107 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 0, ptr %arrayidx, align 4
  br label %land.lhs.true.i162

land.lhs.true.i162:                               ; preds = %if.then79, %if.then75.land.lhs.true.i162_crit_edge
  %call.i.i.i.i.i.i159 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %11, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !133
  call void @llvm.prefetch.p0(ptr nonnull %11, i32 1, i32 3, i32 1) #16
  %108 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %11, ptr nonnull %11, i32 1, ptr nonnull elementtype(i32) %11) #16, !srcloc !134
  %asmresult.i.i.i.i.i.i.i160 = extractvalue { i32, i32, i32 } %108, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i160)
  %cmp.i.i.i.i161 = icmp eq i32 %asmresult.i.i.i.i.i.i.i160, 1
  br i1 %cmp.i.i.i.i161, label %if.then.i166, label %if.end5.i.i.i.i164

if.end5.i.i.i.i164:                               ; preds = %land.lhs.true.i162
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i160)
  %.not.i.i.i.i163 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i160, 0
  br i1 %.not.i.i.i.i163, label %if.end5.i.i.i.i164.if.end82_crit_edge, label %if.then10.i.i.i.i165, !prof !135

if.end5.i.i.i.i164.if.end82_crit_edge:            ; preds = %if.end5.i.i.i.i164
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end82

if.then10.i.i.i.i165:                             ; preds = %if.end5.i.i.i.i164
  call void @__sanitizer_cov_trace_pc() #18
  call void @refcount_warn_saturate(ptr noundef nonnull %11, i32 noundef 3) #16
  br label %if.end82

if.then.i166:                                     ; preds = %land.lhs.true.i162
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !136
  call void @nf_ct_destroy(ptr noundef nonnull %11) #16
  br label %if.end82

if.end82:                                         ; preds = %if.then.i166, %if.then10.i.i.i.i165, %if.end5.i.i.i.i164.if.end82_crit_edge, %out.if.end82_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.5)
  %tobool84.not207 = icmp eq i32 %i.5, 0
  br i1 %tobool84.not207, label %if.end82.while.end94_crit_edge, label %if.end82.while.body85_crit_edge

if.end82.while.body85_crit_edge:                  ; preds = %if.end82
  br label %while.body85

if.end82.while.end94_crit_edge:                   ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end94

while.body85:                                     ; preds = %nf_ct_put.exit189.while.body85_crit_edge, %if.end82.while.body85_crit_edge
  %i.6208 = phi i32 [ %dec86, %nf_ct_put.exit189.while.body85_crit_edge ], [ %i.5, %if.end82.while.body85_crit_edge ]
  %dec86 = add i32 %i.6208, -1
  %arrayidx87 = getelementptr [8 x ptr], ptr %nf_ct_evict, i32 0, i32 %dec86
  %109 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %arrayidx87, align 4
  %timeout.i.i169 = getelementptr inbounds %struct.nf_conn, ptr %110, i32 0, i32 2
  %111 = ptrtoint ptr %timeout.i.i169 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load volatile i32, ptr %timeout.i.i169, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %113 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i170 = sub i32 %112, %113
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i170)
  %cmp.i.i171 = icmp slt i32 %sub.i.i170, 1
  br i1 %cmp.i.i171, label %land.lhs.true.i174, label %while.body85.if.end92_crit_edge

while.body85.if.end92_crit_edge:                  ; preds = %while.body85
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end92

land.lhs.true.i174:                               ; preds = %while.body85
  %status.i.i172 = getelementptr inbounds %struct.nf_conn, ptr %110, i32 0, i32 5
  %114 = ptrtoint ptr %status.i.i172 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load volatile i32, ptr %status.i.i172, align 4
  %116 = and i32 %115, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool.not.i173 = icmp eq i32 %116, 0
  br i1 %tobool.not.i173, label %land.lhs.true.i174.if.end92_crit_edge, label %nf_ct_should_gc.exit177

land.lhs.true.i174.if.end92_crit_edge:            ; preds = %land.lhs.true.i174
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end92

nf_ct_should_gc.exit177:                          ; preds = %land.lhs.true.i174
  %117 = ptrtoint ptr %status.i.i172 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load volatile i32, ptr %status.i.i172, align 4
  %119 = and i32 %118, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %tobool3.not.i175 = icmp eq i32 %119, 0
  br i1 %tobool3.not.i175, label %if.then89, label %nf_ct_should_gc.exit177.if.end92_crit_edge

nf_ct_should_gc.exit177.if.end92_crit_edge:       ; preds = %nf_ct_should_gc.exit177
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end92

if.then89:                                        ; preds = %nf_ct_should_gc.exit177
  call void @__sanitizer_cov_trace_pc() #18
  %call.i178 = call zeroext i1 @nf_ct_delete(ptr noundef %110, i32 noundef 0, i32 noundef 0) #16
  br label %if.end92

if.end92:                                         ; preds = %if.then89, %nf_ct_should_gc.exit177.if.end92_crit_edge, %land.lhs.true.i174.if.end92_crit_edge, %while.body85.if.end92_crit_edge
  %tobool.not.i179 = icmp eq ptr %110, null
  br i1 %tobool.not.i179, label %if.end92.nf_ct_put.exit189_crit_edge, label %land.lhs.true.i183

if.end92.nf_ct_put.exit189_crit_edge:             ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #18
  br label %nf_ct_put.exit189

land.lhs.true.i183:                               ; preds = %if.end92
  %call.i.i.i.i.i.i180 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %110, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !133
  call void @llvm.prefetch.p0(ptr nonnull %110, i32 1, i32 3, i32 1) #16
  %120 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %110, ptr nonnull %110, i32 1, ptr nonnull elementtype(i32) %110) #16, !srcloc !134
  %asmresult.i.i.i.i.i.i.i181 = extractvalue { i32, i32, i32 } %120, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i181)
  %cmp.i.i.i.i182 = icmp eq i32 %asmresult.i.i.i.i.i.i.i181, 1
  br i1 %cmp.i.i.i.i182, label %if.then.i187, label %if.end5.i.i.i.i185

if.end5.i.i.i.i185:                               ; preds = %land.lhs.true.i183
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i181)
  %.not.i.i.i.i184 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i181, 0
  br i1 %.not.i.i.i.i184, label %if.end5.i.i.i.i185.nf_ct_put.exit189_crit_edge, label %if.then10.i.i.i.i186, !prof !135

if.end5.i.i.i.i185.nf_ct_put.exit189_crit_edge:   ; preds = %if.end5.i.i.i.i185
  call void @__sanitizer_cov_trace_pc() #18
  br label %nf_ct_put.exit189

if.then10.i.i.i.i186:                             ; preds = %if.end5.i.i.i.i185
  call void @__sanitizer_cov_trace_pc() #18
  call void @refcount_warn_saturate(ptr noundef nonnull %110, i32 noundef 3) #16
  br label %nf_ct_put.exit189

if.then.i187:                                     ; preds = %land.lhs.true.i183
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !136
  call void @nf_ct_destroy(ptr noundef nonnull %110) #16
  br label %nf_ct_put.exit189

nf_ct_put.exit189:                                ; preds = %if.then.i187, %if.then10.i.i.i.i186, %if.end5.i.i.i.i185.nf_ct_put.exit189_crit_edge, %if.end92.nf_ct_put.exit189_crit_edge
  %tobool84.not = icmp eq i32 %dec86, 0
  br i1 %tobool84.not, label %nf_ct_put.exit189.while.end94_crit_edge, label %nf_ct_put.exit189.while.body85_crit_edge

nf_ct_put.exit189.while.body85_crit_edge:         ; preds = %nf_ct_put.exit189
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body85

nf_ct_put.exit189.while.end94_crit_edge:          ; preds = %nf_ct_put.exit189
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end94

while.end94:                                      ; preds = %nf_ct_put.exit189.while.end94_crit_edge, %if.end82.while.end94_crit_edge
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %121 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %len, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %nf_ct_evict) #16
  ret i32 %122
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ctnetlink_done(ptr nocapture noundef readonly %cb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.lhs.true.i:                                  ; preds = %entry
  %2 = inttoptr i32 %1 to ptr
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %2, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !133
  tail call void @llvm.prefetch.p0(ptr nonnull %2, i32 1, i32 3, i32 1) #16
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %2, ptr nonnull %2, i32 1, ptr nonnull elementtype(i32) %2) #16, !srcloc !134
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i, !prof !135

if.end5.i.i.i.i.if.end_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef nonnull %2, i32 noundef 3) #16
  br label %if.end

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !136
  tail call void @nf_ct_destroy(ptr noundef nonnull %2) #16
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  %data = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 4
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  tail call void @kfree(ptr noundef %5) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ctnetlink_fill_info(ptr noundef %skb, i32 noundef %portid, i32 noundef %seq, i32 noundef %type, ptr noundef %ct, i1 noundef zeroext %extinfo, i32 noundef %flags) unnamed_addr #2 align 64 {
entry:
  %tmp.i.i52.i = alloca i32, align 4
  %tmp.i.i46.i = alloca i32, align 4
  %tmp.i.i42.i = alloca i32, align 4
  %tmp.i.i38.i = alloca i32, align 4
  %tmp.i.i.i = alloca i32, align 4
  %tmp.i.i114 = alloca i16, align 2
  %tmp.i.i97 = alloca i16, align 2
  %tmp.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %portid)
  %tobool.not = icmp eq i32 %portid, 0
  %or = or i32 %flags, 2
  %spec.select = select i1 %tobool.not, i32 %flags, i32 %or
  %l3num.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 0, i32 1, i32 0, i32 2
  %0 = ptrtoint ptr %l3num.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %l3num.i, align 2
  %conv2 = trunc i16 %1 to i8
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.not.i.i.i = icmp eq i32 %3, 0
  br i1 %tobool.i.not.i.i.i, label %skb_tailroom.exit.i.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

skb_tailroom.exit.i.i:                            ; preds = %entry
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %4 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %end.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %6 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.ptr.sub.i.i.i)
  %cmp.i.i = icmp slt i32 %sub.ptr.sub.i.i.i, 20
  br i1 %cmp.i.i, label %skb_tailroom.exit.i.i.cleanup_crit_edge, label %nlmsg_put.exit.i, !prof !129

skb_tailroom.exit.i.i.cleanup_crit_edge:          ; preds = %skb_tailroom.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

nlmsg_put.exit.i:                                 ; preds = %skb_tailroom.exit.i.i
  %call3.i.i = tail call ptr @__nlmsg_put(ptr noundef %skb, i32 noundef %portid, i32 noundef %seq, i32 noundef 256, i32 noundef 4, i32 noundef %spec.select) #16
  %tobool.not.i = icmp eq ptr %call3.i.i, null
  br i1 %tobool.not.i, label %nlmsg_put.exit.i.cleanup_crit_edge, label %if.end6

nlmsg_put.exit.i.cleanup_crit_edge:               ; preds = %nlmsg_put.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end6:                                          ; preds = %nlmsg_put.exit.i
  %add.ptr.i.i.i = getelementptr i8, ptr %call3.i.i, i32 16
  %8 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv2, ptr %add.ptr.i.i.i, align 2
  %version1.i.i = getelementptr i8, ptr %call3.i.i, i32 17
  %9 = ptrtoint ptr %version1.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %version1.i.i, align 1
  %res_id2.i.i = getelementptr i8, ptr %call3.i.i, i32 18
  %10 = ptrtoint ptr %res_id2.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %res_id2.i.i, align 2
  %zone.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 3
  %11 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 32769, i32 noundef 0, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i89 = icmp slt i32 %call1.i.i, 0
  %tobool9.not157 = icmp eq ptr %12, null
  %tobool9.not = select i1 %cmp.i.i89, i1 true, i1 %tobool9.not157
  br i1 %tobool9.not, label %if.end6.if.then.i.i_crit_edge, label %if.end11

if.end6.if.then.i.i_crit_edge:                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i

if.end11:                                         ; preds = %if.end6
  %tuple = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 0, i32 1
  %call12 = tail call fastcc i32 @ctnetlink_dump_tuples(ptr noundef %skb, ptr noundef %tuple)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp = icmp slt i32 %call12, 0
  br i1 %cmp, label %if.end11.if.then.i.i_crit_edge, label %if.end15

if.end11.if.then.i.i_crit_edge:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i

if.end15:                                         ; preds = %if.end11
  %13 = ptrtoint ptr %zone.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %zone.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %cmp.i = icmp eq i16 %14, 0
  br i1 %cmp.i, label %if.end15.if.end20_crit_edge, label %lor.lhs.false.i

if.end15.if.end20_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end20

lor.lhs.false.i:                                  ; preds = %if.end15
  %dir2.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 3, i32 2
  %15 = ptrtoint ptr %dir2.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %dir2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %16)
  %cmp4.not.i = icmp eq i8 %16, 1
  br i1 %cmp4.not.i, label %ctnetlink_dump_zone_id.exit, label %lor.lhs.false.i.if.end20_crit_edge

lor.lhs.false.i.if.end20_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end20

ctnetlink_dump_zone_id.exit:                      ; preds = %lor.lhs.false.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i.i) #16
  %17 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %14, ptr %tmp.i.i, align 2
  %call.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 2, ptr noundef nonnull %tmp.i.i) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i90.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i90.not, label %ctnetlink_dump_zone_id.exit.if.end20_crit_edge, label %ctnetlink_dump_zone_id.exit.if.then.i.i_crit_edge

ctnetlink_dump_zone_id.exit.if.then.i.i_crit_edge: ; preds = %ctnetlink_dump_zone_id.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i

ctnetlink_dump_zone_id.exit.if.end20_crit_edge:   ; preds = %ctnetlink_dump_zone_id.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end20

if.end20:                                         ; preds = %ctnetlink_dump_zone_id.exit.if.end20_crit_edge, %lor.lhs.false.i.if.end20_crit_edge, %if.end15.if.end20_crit_edge
  %18 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %19 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %12 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %20 = ptrtoint ptr %12 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv.i, ptr %12, align 2
  %21 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i94 = call i32 @nla_put(ptr noundef %skb, i32 noundef 32770, i32 noundef 0, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i94)
  %cmp.i.i95 = icmp slt i32 %call1.i.i94, 0
  %tobool23.not158 = icmp eq ptr %21, null
  %tobool23.not = select i1 %cmp.i.i95, i1 true, i1 %tobool23.not158
  br i1 %tobool23.not, label %if.end20.if.then.i.i_crit_edge, label %if.end25

if.end20.if.then.i.i_crit_edge:                   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i

if.end25:                                         ; preds = %if.end20
  %tuple28 = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 1, i32 1
  %call29 = call fastcc i32 @ctnetlink_dump_tuples(ptr noundef %skb, ptr noundef %tuple28)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.end25.if.then.i.i_crit_edge, label %if.end33

if.end25.if.then.i.i_crit_edge:                   ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i

if.end33:                                         ; preds = %if.end25
  %22 = ptrtoint ptr %zone.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %zone.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %cmp.i98 = icmp eq i16 %23, 0
  br i1 %cmp.i98, label %if.end33.if.end38_crit_edge, label %lor.lhs.false.i102

if.end33.if.end38_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end38

lor.lhs.false.i102:                               ; preds = %if.end33
  %dir2.i99 = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 3, i32 2
  %24 = ptrtoint ptr %dir2.i99 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %dir2.i99, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %25)
  %cmp4.not.i101 = icmp eq i8 %25, 2
  br i1 %cmp4.not.i101, label %ctnetlink_dump_zone_id.exit108, label %lor.lhs.false.i102.if.end38_crit_edge

lor.lhs.false.i102.if.end38_crit_edge:            ; preds = %lor.lhs.false.i102
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end38

ctnetlink_dump_zone_id.exit108:                   ; preds = %lor.lhs.false.i102
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i.i97) #16
  %26 = ptrtoint ptr %tmp.i.i97 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %23, ptr %tmp.i.i97, align 2
  %call.i.i103 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 2, ptr noundef nonnull %tmp.i.i97) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i.i97) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i103)
  %tobool.not.i104.not = icmp eq i32 %call.i.i103, 0
  br i1 %tobool.not.i104.not, label %ctnetlink_dump_zone_id.exit108.if.end38_crit_edge, label %ctnetlink_dump_zone_id.exit108.if.then.i.i_crit_edge

ctnetlink_dump_zone_id.exit108.if.then.i.i_crit_edge: ; preds = %ctnetlink_dump_zone_id.exit108
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i

ctnetlink_dump_zone_id.exit108.if.end38_crit_edge: ; preds = %ctnetlink_dump_zone_id.exit108
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end38

if.end38:                                         ; preds = %ctnetlink_dump_zone_id.exit108.if.end38_crit_edge, %lor.lhs.false.i102.if.end38_crit_edge, %if.end33.if.end38_crit_edge
  %27 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i110 = ptrtoint ptr %28 to i32
  %sub.ptr.rhs.cast.i111 = ptrtoint ptr %21 to i32
  %sub.ptr.sub.i112 = sub i32 %sub.ptr.lhs.cast.i110, %sub.ptr.rhs.cast.i111
  %conv.i113 = trunc i32 %sub.ptr.sub.i112 to i16
  %29 = ptrtoint ptr %21 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv.i113, ptr %21, align 2
  %30 = ptrtoint ptr %zone.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %zone.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %cmp.i115 = icmp eq i16 %31, 0
  br i1 %cmp.i115, label %if.end38.if.end44_crit_edge, label %lor.lhs.false.i119

if.end38.if.end44_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end44

lor.lhs.false.i119:                               ; preds = %if.end38
  %dir2.i116 = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 3, i32 2
  %32 = ptrtoint ptr %dir2.i116 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %dir2.i116, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %33)
  %cmp4.not.i118 = icmp eq i8 %33, 3
  br i1 %cmp4.not.i118, label %ctnetlink_dump_zone_id.exit125, label %lor.lhs.false.i119.if.end44_crit_edge

lor.lhs.false.i119.if.end44_crit_edge:            ; preds = %lor.lhs.false.i119
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end44

ctnetlink_dump_zone_id.exit125:                   ; preds = %lor.lhs.false.i119
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i.i114) #16
  %34 = ptrtoint ptr %tmp.i.i114 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %31, ptr %tmp.i.i114, align 2
  %call.i.i120 = call i32 @nla_put(ptr noundef %skb, i32 noundef 18, i32 noundef 2, ptr noundef nonnull %tmp.i.i114) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i.i114) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i120)
  %tobool.not.i121.not = icmp eq i32 %call.i.i120, 0
  br i1 %tobool.not.i121.not, label %ctnetlink_dump_zone_id.exit125.if.end44_crit_edge, label %ctnetlink_dump_zone_id.exit125.if.then.i.i_crit_edge

ctnetlink_dump_zone_id.exit125.if.then.i.i_crit_edge: ; preds = %ctnetlink_dump_zone_id.exit125
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i

ctnetlink_dump_zone_id.exit125.if.end44_crit_edge: ; preds = %ctnetlink_dump_zone_id.exit125
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end44

if.end44:                                         ; preds = %ctnetlink_dump_zone_id.exit125.if.end44_crit_edge, %lor.lhs.false.i119.if.end44_crit_edge, %if.end38.if.end44_crit_edge
  %status.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 5
  %35 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %status.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i.i) #16
  %37 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %tmp.i.i.i, align 4
  %call.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i.i.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.not.i, label %lor.lhs.false.i126, label %if.end44.if.then.i.i_crit_edge

if.end44.if.then.i.i_crit_edge:                   ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i

lor.lhs.false.i126:                               ; preds = %if.end44
  %mark.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 11
  %38 = ptrtoint ptr %mark.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mark.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i38.i) #16
  %40 = ptrtoint ptr %tmp.i.i38.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %tmp.i.i38.i, align 4
  %call.i.i39.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 8, i32 noundef 4, ptr noundef nonnull %tmp.i.i38.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i38.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i39.i)
  %tobool.not.i40.not.i = icmp eq i32 %call.i.i39.i, 0
  br i1 %tobool.not.i40.not.i, label %lor.lhs.false3.i, label %lor.lhs.false.i126.if.then.i.i_crit_edge

lor.lhs.false.i126.if.then.i.i_crit_edge:         ; preds = %lor.lhs.false.i126
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i126
  %call4.i = call fastcc i32 @ctnetlink_dump_secctx(ptr noundef %skb, ptr noundef %ct) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %lor.lhs.false3.i.if.then.i.i_crit_edge, label %lor.lhs.false6.i

lor.lhs.false3.i.if.then.i.i_crit_edge:           ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i

lor.lhs.false6.i:                                 ; preds = %lor.lhs.false3.i
  %call.i.i127 = call i32 @nf_ct_get_id(ptr noundef %ct) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i42.i) #16
  %41 = ptrtoint ptr %tmp.i.i42.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %call.i.i127, ptr %tmp.i.i42.i, align 4
  %call.i.i43.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 12, i32 noundef 4, ptr noundef nonnull %tmp.i.i42.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i42.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i43.i)
  %tobool.not.i44.not.i = icmp eq i32 %call.i.i43.i, 0
  br i1 %tobool.not.i44.not.i, label %lor.lhs.false9.i, label %lor.lhs.false6.i.if.then.i.i_crit_edge

lor.lhs.false6.i.if.then.i.i_crit_edge:           ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i

lor.lhs.false9.i:                                 ; preds = %lor.lhs.false6.i
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %ct, i32 noundef 4) #16
  %42 = ptrtoint ptr %ct to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %ct, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i46.i) #16
  %44 = ptrtoint ptr %tmp.i.i46.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %tmp.i.i46.i, align 4
  %call.i.i47.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 11, i32 noundef 4, ptr noundef nonnull %tmp.i.i46.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i46.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i47.i)
  %tobool.not.i48.not.i = icmp eq i32 %call.i.i47.i, 0
  br i1 %tobool.not.i48.not.i, label %lor.lhs.false12.i, label %lor.lhs.false9.i.if.then.i.i_crit_edge

lor.lhs.false9.i.if.then.i.i_crit_edge:           ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i

lor.lhs.false12.i:                                ; preds = %lor.lhs.false9.i
  %45 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %status.i.i, align 8
  %and.i.i = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i51.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i51.i, label %lor.lhs.false12.i.if.end.i133_crit_edge, label %if.end.i.i

lor.lhs.false12.i.if.end.i133_crit_edge:          ; preds = %lor.lhs.false12.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i133

if.end.i.i:                                       ; preds = %lor.lhs.false12.i
  %47 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 32782, i32 noundef 0, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %call1.i.i.i.i, 0
  %tobool1.not12.i.i = icmp eq ptr %48, null
  %tobool1.not.i.i = select i1 %cmp.i.i.i.i, i1 true, i1 %tobool1.not12.i.i
  br i1 %tobool1.not.i.i, label %if.end.i.i.if.then.i.i_crit_edge, label %if.end3.i.i

if.end.i.i.if.then.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i

if.end3.i.i:                                      ; preds = %if.end.i.i
  %master.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 10
  %49 = ptrtoint ptr %master.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %master.i.i, align 4
  %tuple.i.i = getelementptr inbounds %struct.nf_conn, ptr %50, i32 0, i32 4, i32 0, i32 1
  %call4.i.i = call fastcc i32 @ctnetlink_dump_tuples(ptr noundef %skb, ptr noundef %tuple.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %cmp.i.i128 = icmp slt i32 %call4.i.i, 0
  br i1 %cmp.i.i128, label %if.end3.i.i.if.then.i.i_crit_edge, label %if.end6.i.i

if.end3.i.i.if.then.i.i_crit_edge:                ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i

if.end6.i.i:                                      ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %51 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i129 = ptrtoint ptr %52 to i32
  %sub.ptr.rhs.cast.i.i.i130 = ptrtoint ptr %48 to i32
  %sub.ptr.sub.i.i.i131 = sub i32 %sub.ptr.lhs.cast.i.i.i129, %sub.ptr.rhs.cast.i.i.i130
  %conv.i.i.i = trunc i32 %sub.ptr.sub.i.i.i131 to i16
  %53 = ptrtoint ptr %48 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %conv.i.i.i, ptr %48, align 2
  br label %if.end.i133

if.end.i133:                                      ; preds = %if.end6.i.i, %lor.lhs.false12.i.if.end.i133_crit_edge
  %54 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %status.i.i, align 4
  %56 = and i32 %55, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.not.i132 = icmp eq i32 %56, 0
  br i1 %tobool.not.i132, label %land.lhs.true.i, label %if.end.i133.if.end49_crit_edge

if.end.i133.if.end49_crit_edge:                   ; preds = %if.end.i133
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end49

land.lhs.true.i:                                  ; preds = %if.end.i133
  %timeout1.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 2
  %57 = ptrtoint ptr %timeout1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %timeout1.i.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %59 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i.i = sub i32 %58, %59
  %60 = call i32 @llvm.smax.i32(i32 %sub.i.i.i, i32 0) #16
  %div.i.i = udiv i32 %60, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i52.i) #16
  %61 = ptrtoint ptr %tmp.i.i52.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %div.i.i, ptr %tmp.i.i52.i, align 4
  %call.i.i53.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef 4, ptr noundef nonnull %tmp.i.i52.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i52.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i53.i)
  %tobool2.not.i.not.i = icmp eq i32 %call.i.i53.i, 0
  br i1 %tobool2.not.i.not.i, label %lor.lhs.false18.i, label %land.lhs.true.i.if.then.i.i_crit_edge

land.lhs.true.i.if.then.i.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i

lor.lhs.false18.i:                                ; preds = %land.lhs.true.i
  %protonum.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 0, i32 1, i32 1, i32 2
  %62 = ptrtoint ptr %protonum.i.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %protonum.i.i.i, align 2
  %call1.i.i134 = call ptr @nf_ct_l4proto_find(i8 noundef zeroext %63) #16
  %to_nlattr.i.i = getelementptr inbounds %struct.nf_conntrack_l4proto, ptr %call1.i.i134, i32 0, i32 4
  %64 = ptrtoint ptr %to_nlattr.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %to_nlattr.i.i, align 4
  %tobool.not.i57.i = icmp eq ptr %65, null
  br i1 %tobool.not.i57.i, label %lor.lhs.false18.i.if.end49_crit_edge, label %if.end.i61.i

lor.lhs.false18.i.if.end49_crit_edge:             ; preds = %lor.lhs.false18.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end49

if.end.i61.i:                                     ; preds = %lor.lhs.false18.i
  %66 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i.i59.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 32772, i32 noundef 0, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i59.i)
  %cmp.i.i.i60.i = icmp slt i32 %call1.i.i.i59.i, 0
  %tobool3.not18.i.i = icmp eq ptr %67, null
  %tobool3.not.i.i = select i1 %cmp.i.i.i60.i, i1 true, i1 %tobool3.not18.i.i
  br i1 %tobool3.not.i.i, label %if.end.i61.i.if.then.i.i_crit_edge, label %ctnetlink_dump_protoinfo.exit.i

if.end.i61.i.if.then.i.i_crit_edge:               ; preds = %if.end.i61.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i

ctnetlink_dump_protoinfo.exit.i:                  ; preds = %if.end.i61.i
  %68 = ptrtoint ptr %to_nlattr.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %to_nlattr.i.i, align 4
  %call8.i.i = call i32 %69(ptr noundef %skb, ptr noundef nonnull %67, ptr noundef %ct, i1 noundef zeroext false) #16
  %70 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i62.i = ptrtoint ptr %71 to i32
  %sub.ptr.rhs.cast.i.i63.i = ptrtoint ptr %67 to i32
  %sub.ptr.sub.i.i64.i = sub i32 %sub.ptr.lhs.cast.i.i62.i, %sub.ptr.rhs.cast.i.i63.i
  %conv.i.i65.i = trunc i32 %sub.ptr.sub.i.i64.i to i16
  %72 = ptrtoint ptr %67 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %conv.i.i65.i, ptr %67, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %cmp20.i = icmp slt i32 %call8.i.i, 0
  br i1 %cmp20.i, label %ctnetlink_dump_protoinfo.exit.i.if.then.i.i_crit_edge, label %ctnetlink_dump_protoinfo.exit.i.if.end49_crit_edge

ctnetlink_dump_protoinfo.exit.i.if.end49_crit_edge: ; preds = %ctnetlink_dump_protoinfo.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end49

ctnetlink_dump_protoinfo.exit.i.if.then.i.i_crit_edge: ; preds = %ctnetlink_dump_protoinfo.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i

if.end49:                                         ; preds = %ctnetlink_dump_protoinfo.exit.i.if.end49_crit_edge, %lor.lhs.false18.i.if.end49_crit_edge, %if.end.i133.if.end49_crit_edge
  br i1 %extinfo, label %land.lhs.true, label %if.end49.if.end56_crit_edge

if.end49.if.end56_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end56

land.lhs.true:                                    ; preds = %if.end49
  %call52 = call fastcc i32 @ctnetlink_dump_extinfo(ptr noundef %skb, ptr noundef %ct, i32 noundef %type)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %cmp53 = icmp slt i32 %call52, 0
  br i1 %cmp53, label %land.lhs.true.if.then.i.i_crit_edge, label %land.lhs.true.if.end56_crit_edge

land.lhs.true.if.end56_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end56

land.lhs.true.if.then.i.i_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i

if.end56:                                         ; preds = %land.lhs.true.if.end56_crit_edge, %if.end49.if.end56_crit_edge
  %73 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i137 = ptrtoint ptr %74 to i32
  %sub.ptr.rhs.cast.i138 = ptrtoint ptr %call3.i.i to i32
  %sub.ptr.sub.i139 = sub i32 %sub.ptr.lhs.cast.i137, %sub.ptr.rhs.cast.i138
  %75 = ptrtoint ptr %call3.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %sub.ptr.sub.i139, ptr %call3.i.i, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %76 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %len, align 4
  br label %cleanup

if.then.i.i:                                      ; preds = %land.lhs.true.if.then.i.i_crit_edge, %ctnetlink_dump_protoinfo.exit.i.if.then.i.i_crit_edge, %if.end.i61.i.if.then.i.i_crit_edge, %land.lhs.true.i.if.then.i.i_crit_edge, %if.end3.i.i.if.then.i.i_crit_edge, %if.end.i.i.if.then.i.i_crit_edge, %lor.lhs.false9.i.if.then.i.i_crit_edge, %lor.lhs.false6.i.if.then.i.i_crit_edge, %lor.lhs.false3.i.if.then.i.i_crit_edge, %lor.lhs.false.i126.if.then.i.i_crit_edge, %if.end44.if.then.i.i_crit_edge, %ctnetlink_dump_zone_id.exit125.if.then.i.i_crit_edge, %ctnetlink_dump_zone_id.exit108.if.then.i.i_crit_edge, %if.end25.if.then.i.i_crit_edge, %if.end20.if.then.i.i_crit_edge, %ctnetlink_dump_zone_id.exit.if.then.i.i_crit_edge, %if.end11.if.then.i.i_crit_edge, %if.end6.if.then.i.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %78 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i140 = icmp ugt ptr %79, %call3.i.i
  br i1 %cmp.i.i140, label %do.end.i.i, label %if.then.i.i.if.end.i.i141_crit_edge, !prof !129

if.then.i.i.if.end.i.i141_crit_edge:              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i141

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 991, i32 noundef 9, ptr noundef null) #16
  br label %if.end.i.i141

if.end.i.i141:                                    ; preds = %do.end.i.i, %if.then.i.i.if.end.i.i141_crit_edge
  %80 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %call3.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %81 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i141, %if.end56, %nlmsg_put.exit.i.cleanup_crit_edge, %skb_tailroom.exit.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %77, %if.end56 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %skb_tailroom.exit.i.i.cleanup_crit_edge ], [ -1, %nlmsg_put.exit.i.cleanup_crit_edge ], [ -1, %if.end.i.i141 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ctnetlink_alloc_filter(ptr nocapture noundef readonly %cda, i8 noundef zeroext %family) unnamed_addr #2 align 64 {
entry:
  %tb.i = alloca [3 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 112) #22
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %family, ptr %call7.i.i, align 8
  %arrayidx.i = getelementptr ptr, ptr %cda, i32 8
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.else8.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  %mark = getelementptr inbounds %struct.ctnetlink_filter, ptr %call7.i.i, i32 0, i32 6
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 4
  %4 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i.i.i, align 4
  %6 = ptrtoint ptr %mark to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %mark, align 8
  %arrayidx2.i = getelementptr ptr, ptr %cda, i32 21
  %7 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx2.i, align 4
  %tobool3.not.i = icmp eq ptr %8, null
  br i1 %tobool3.not.i, label %if.then.i.if.end13.sink.split.i_crit_edge, label %if.then4.i

if.then.i.if.end13.sink.split.i_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13.sink.split.i

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i.i21.i = getelementptr i8, ptr %8, i32 4
  %9 = ptrtoint ptr %add.ptr.i.i21.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i.i21.i, align 4
  br label %if.end13.sink.split.i

if.else8.i:                                       ; preds = %if.end
  %arrayidx9.i = getelementptr ptr, ptr %cda, i32 21
  %11 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx9.i, align 4
  %tobool10.not.i = icmp eq ptr %12, null
  br i1 %tobool10.not.i, label %if.else8.i.if.end5_crit_edge, label %if.else8.i.err_filter_crit_edge

if.else8.i.err_filter_crit_edge:                  ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_filter

if.else8.i.if.end5_crit_edge:                     ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5

if.end13.sink.split.i:                            ; preds = %if.then4.i, %if.then.i.if.end13.sink.split.i_crit_edge
  %.sink.i = phi i32 [ %10, %if.then4.i ], [ -1, %if.then.i.if.end13.sink.split.i_crit_edge ]
  %mask.i = getelementptr inbounds %struct.ctnetlink_filter, ptr %call7.i.i, i32 0, i32 6, i32 1
  %13 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %.sink.i, ptr %mask.i, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.end13.sink.split.i, %if.else8.i.if.end5_crit_edge
  %arrayidx.i86 = getelementptr ptr, ptr %cda, i32 3
  %14 = ptrtoint ptr %arrayidx.i86 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i86, align 4
  %tobool.not.i87 = icmp eq ptr %15, null
  br i1 %tobool.not.i87, label %if.else12.i, label %if.then.i91

if.then.i91:                                      ; preds = %if.end5
  %status = getelementptr inbounds %struct.ctnetlink_filter, ptr %call7.i.i, i32 0, i32 7
  %add.ptr.i.i.i88 = getelementptr i8, ptr %15, i32 4
  %16 = ptrtoint ptr %add.ptr.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr.i.i.i88, align 4
  %18 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %status, align 8
  %arrayidx2.i89 = getelementptr ptr, ptr %cda, i32 26
  %19 = ptrtoint ptr %arrayidx2.i89 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx2.i89, align 4
  %tobool3.not.i90 = icmp eq ptr %20, null
  br i1 %tobool3.not.i90, label %if.then.i91.if.end.i_crit_edge, label %if.then4.i92

if.then.i91.if.end.i_crit_edge:                   ; preds = %if.then.i91
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

if.then4.i92:                                     ; preds = %if.then.i91
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i.i27.i = getelementptr i8, ptr %20, i32 4
  %21 = ptrtoint ptr %add.ptr.i.i27.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr.i.i27.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then4.i92, %if.then.i91.if.end.i_crit_edge
  %.sink.i93 = phi i32 [ %22, %if.then4.i92 ], [ %17, %if.then.i91.if.end.i_crit_edge ]
  %23 = getelementptr inbounds %struct.ctnetlink_filter, ptr %call7.i.i, i32 0, i32 7, i32 1
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %.sink.i93, ptr %23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.sink.i93)
  %cmp.i = icmp eq i32 %.sink.i93, 0
  br i1 %cmp.i, label %if.end.i.err_filter_crit_edge, label %if.end.i.if.end9_crit_edge

if.end.i.if.end9_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9

if.end.i.err_filter_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_filter

if.else12.i:                                      ; preds = %if.end5
  %arrayidx13.i = getelementptr ptr, ptr %cda, i32 26
  %25 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx13.i, align 4
  %tobool14.not.i = icmp eq ptr %26, null
  br i1 %tobool14.not.i, label %if.else12.i.if.end9_crit_edge, label %if.else12.i.err_filter_crit_edge

if.else12.i.err_filter_crit_edge:                 ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_filter

if.else12.i.if.end9_crit_edge:                    ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9

if.end9:                                          ; preds = %if.else12.i.if.end9_crit_edge, %if.end.i.if.end9_crit_edge
  %arrayidx = getelementptr ptr, ptr %cda, i32 25
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx, align 4
  %tobool10.not = icmp eq ptr %28, null
  br i1 %tobool10.not, label %if.end9.cleanup_crit_edge, label %if.end12

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  %arrayidx13 = getelementptr ptr, ptr %cda, i32 18
  %29 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx13, align 4
  %zone = getelementptr inbounds %struct.ctnetlink_filter, ptr %call7.i.i, i32 0, i32 5
  %31 = ptrtoint ptr %zone to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %zone, align 4
  %flags2.i.i = getelementptr inbounds %struct.ctnetlink_filter, ptr %call7.i.i, i32 0, i32 5, i32 1
  %32 = ptrtoint ptr %flags2.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %flags2.i.i, align 2
  %dir3.i.i = getelementptr inbounds %struct.ctnetlink_filter, ptr %call7.i.i, i32 0, i32 5, i32 2
  %33 = ptrtoint ptr %dir3.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 3, ptr %dir3.i.i, align 1
  %tobool.not.i95 = icmp eq ptr %30, null
  br i1 %tobool.not.i95, label %if.end12.ctnetlink_parse_zone.exit_crit_edge, label %if.then.i97

if.end12.ctnetlink_parse_zone.exit_crit_edge:     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  br label %ctnetlink_parse_zone.exit

if.then.i97:                                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i.i.i96 = getelementptr i8, ptr %30, i32 4
  %34 = ptrtoint ptr %add.ptr.i.i.i96 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %add.ptr.i.i.i96, align 2
  %36 = ptrtoint ptr %zone to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %zone, align 4
  br label %ctnetlink_parse_zone.exit

ctnetlink_parse_zone.exit:                        ; preds = %if.then.i97, %if.end12.ctnetlink_parse_zone.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tb.i) #16
  %37 = ptrtoint ptr %tb.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 -1 to ptr), ptr %tb.i, align 4, !annotation !128
  %38 = getelementptr inbounds [3 x ptr], ptr %tb.i, i32 0, i32 1
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr inttoptr (i32 -1 to ptr), ptr %38, align 4, !annotation !128
  %40 = getelementptr inbounds [3 x ptr], ptr %tb.i, i32 0, i32 2
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr inttoptr (i32 -1 to ptr), ptr %40, align 4, !annotation !128
  %nla_type.i.i = getelementptr inbounds %struct.nlattr, ptr %28, i32 0, i32 1
  %42 = ptrtoint ptr %nla_type.i.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %nla_type.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %43)
  %tobool.not.i.i = icmp sgt i16 %43, -1
  br i1 %tobool.not.i.i, label %nla_parse_nested.exit.thread.i, label %nla_parse_nested.exit.i

nla_parse_nested.exit.thread.i:                   ; preds = %ctnetlink_parse_zone.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nla_parse_nested.__msg) #16
  br label %ctnetlink_parse_filter.exit.thread

nla_parse_nested.exit.i:                          ; preds = %ctnetlink_parse_zone.exit
  %add.ptr.i.i.i99 = getelementptr i8, ptr %28, i32 4
  %44 = ptrtoint ptr %28 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %28, align 2
  %conv.i.i.i = zext i16 %45 to i32
  %sub.i.i.i = add nsw i32 %conv.i.i.i, -4
  %call6.i.i = call i32 @__nla_parse(ptr noundef nonnull %tb.i, i32 noundef 2, ptr noundef %add.ptr.i.i.i99, i32 noundef %sub.i.i.i, ptr noundef nonnull @cta_filter_nla_policy, i32 noundef 31, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool.not.i100 = icmp eq i32 %call6.i.i, 0
  br i1 %tobool.not.i100, label %if.end.i101, label %ctnetlink_parse_filter.exit

if.end.i101:                                      ; preds = %nla_parse_nested.exit.i
  %46 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %38, align 4
  %tobool1.not.i = icmp eq ptr %47, null
  br i1 %tobool1.not.i, label %if.end.i101.if.end9.i_crit_edge, label %if.then2.i

if.end.i101.if.end9.i_crit_edge:                  ; preds = %if.end.i101
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9.i

if.then2.i:                                       ; preds = %if.end.i101
  %add.ptr.i.i27.i102 = getelementptr i8, ptr %47, i32 4
  %48 = ptrtoint ptr %add.ptr.i.i27.i102 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %add.ptr.i.i27.i102, align 4
  %orig_flags.i = getelementptr inbounds %struct.ctnetlink_filter, ptr %call7.i.i, i32 0, i32 1
  %50 = ptrtoint ptr %orig_flags.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %orig_flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %49)
  %tobool6.not.i = icmp ult i32 %49, 4096
  br i1 %tobool6.not.i, label %if.then2.i.if.end9.i_crit_edge, label %if.then2.i.ctnetlink_parse_filter.exit.thread_crit_edge

if.then2.i.ctnetlink_parse_filter.exit.thread_crit_edge: ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ctnetlink_parse_filter.exit.thread

if.then2.i.if.end9.i_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then2.i.if.end9.i_crit_edge, %if.end.i101.if.end9.i_crit_edge
  %51 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %40, align 4
  %tobool11.not.i = icmp eq ptr %52, null
  br i1 %tobool11.not.i, label %if.end9.i.ctnetlink_parse_filter.exit.thread110_crit_edge, label %if.then12.i

if.end9.i.ctnetlink_parse_filter.exit.thread110_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ctnetlink_parse_filter.exit.thread110

if.then12.i:                                      ; preds = %if.end9.i
  %add.ptr.i.i28.i = getelementptr i8, ptr %52, i32 4
  %53 = ptrtoint ptr %add.ptr.i.i28.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %add.ptr.i.i28.i, align 4
  %reply_flags.i = getelementptr inbounds %struct.ctnetlink_filter, ptr %call7.i.i, i32 0, i32 2
  %55 = ptrtoint ptr %reply_flags.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %reply_flags.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %54)
  %tobool17.not.i = icmp ult i32 %54, 4096
  br i1 %tobool17.not.i, label %if.then12.i.ctnetlink_parse_filter.exit.thread110_crit_edge, label %if.then12.i.ctnetlink_parse_filter.exit.thread_crit_edge

if.then12.i.ctnetlink_parse_filter.exit.thread_crit_edge: ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ctnetlink_parse_filter.exit.thread

if.then12.i.ctnetlink_parse_filter.exit.thread110_crit_edge: ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ctnetlink_parse_filter.exit.thread110

ctnetlink_parse_filter.exit.thread110:            ; preds = %if.then12.i.ctnetlink_parse_filter.exit.thread110_crit_edge, %if.end9.i.ctnetlink_parse_filter.exit.thread110_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tb.i) #16
  br label %if.end22

ctnetlink_parse_filter.exit.thread:               ; preds = %if.then12.i.ctnetlink_parse_filter.exit.thread_crit_edge, %if.then2.i.ctnetlink_parse_filter.exit.thread_crit_edge, %nla_parse_nested.exit.thread.i
  %retval.0.i103.ph = phi i32 [ -22, %nla_parse_nested.exit.thread.i ], [ -95, %if.then12.i.ctnetlink_parse_filter.exit.thread_crit_edge ], [ -95, %if.then2.i.ctnetlink_parse_filter.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tb.i) #16
  br label %err_filter

ctnetlink_parse_filter.exit:                      ; preds = %nla_parse_nested.exit.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tb.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %cmp20 = icmp slt i32 %call6.i.i, 0
  br i1 %cmp20, label %ctnetlink_parse_filter.exit.err_filter_crit_edge, label %ctnetlink_parse_filter.exit.if.end22_crit_edge

ctnetlink_parse_filter.exit.if.end22_crit_edge:   ; preds = %ctnetlink_parse_filter.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end22

ctnetlink_parse_filter.exit.err_filter_crit_edge: ; preds = %ctnetlink_parse_filter.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_filter

if.end22:                                         ; preds = %ctnetlink_parse_filter.exit.if.end22_crit_edge, %ctnetlink_parse_filter.exit.thread110
  %orig_flags = getelementptr inbounds %struct.ctnetlink_filter, ptr %call7.i.i, i32 0, i32 1
  %56 = ptrtoint ptr %orig_flags to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %orig_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool23.not = icmp eq i32 %57, 0
  br i1 %tobool23.not, label %if.end22.if.end36_crit_edge, label %if.then24

if.end22.if.end36_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end36

if.then24:                                        ; preds = %if.end22
  %arrayidx25 = getelementptr ptr, ptr %cda, i32 1
  %58 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx25, align 4
  %tobool26.not = icmp eq ptr %59, null
  br i1 %tobool26.not, label %if.then24.err_filter_crit_edge, label %if.end28

if.then24.err_filter_crit_edge:                   ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_filter

if.end28:                                         ; preds = %if.then24
  %orig = getelementptr inbounds %struct.ctnetlink_filter, ptr %call7.i.i, i32 0, i32 3
  %60 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %call7.i.i, align 8
  %call32 = call fastcc i32 @ctnetlink_parse_tuple_filter(ptr noundef %cda, ptr noundef %orig, i32 noundef 1, i8 noundef zeroext %61, ptr noundef %zone, i32 noundef %57)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.end28.err_filter_crit_edge, label %if.end28.if.end36_crit_edge

if.end28.if.end36_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end36

if.end28.err_filter_crit_edge:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_filter

if.end36:                                         ; preds = %if.end28.if.end36_crit_edge, %if.end22.if.end36_crit_edge
  %reply_flags = getelementptr inbounds %struct.ctnetlink_filter, ptr %call7.i.i, i32 0, i32 2
  %62 = ptrtoint ptr %reply_flags to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %reply_flags, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool37.not = icmp eq i32 %63, 0
  br i1 %tobool37.not, label %if.end36.cleanup_crit_edge, label %if.then38

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then38:                                        ; preds = %if.end36
  %arrayidx39 = getelementptr ptr, ptr %cda, i32 2
  %64 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx39, align 4
  %tobool40.not = icmp eq ptr %65, null
  br i1 %tobool40.not, label %if.then38.err_filter_crit_edge, label %if.end42

if.then38.err_filter_crit_edge:                   ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_filter

if.end42:                                         ; preds = %if.then38
  %reply = getelementptr inbounds %struct.ctnetlink_filter, ptr %call7.i.i, i32 0, i32 4
  %66 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %call7.i.i, align 8
  %call46 = call fastcc i32 @ctnetlink_parse_tuple_filter(ptr noundef %cda, ptr noundef %reply, i32 noundef 2, i8 noundef zeroext %67, ptr noundef %zone, i32 noundef %63)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %if.end42.err_filter_crit_edge, label %if.end42.cleanup_crit_edge

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end42.err_filter_crit_edge:                    ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_filter

err_filter:                                       ; preds = %if.end42.err_filter_crit_edge, %if.then38.err_filter_crit_edge, %if.end28.err_filter_crit_edge, %if.then24.err_filter_crit_edge, %ctnetlink_parse_filter.exit.err_filter_crit_edge, %ctnetlink_parse_filter.exit.thread, %if.else12.i.err_filter_crit_edge, %if.end.i.err_filter_crit_edge, %if.else8.i.err_filter_crit_edge
  %err.0 = phi i32 [ %call6.i.i, %ctnetlink_parse_filter.exit.err_filter_crit_edge ], [ %call32, %if.end28.err_filter_crit_edge ], [ %call46, %if.end42.err_filter_crit_edge ], [ -22, %if.then24.err_filter_crit_edge ], [ -22, %if.then38.err_filter_crit_edge ], [ -22, %if.else8.i.err_filter_crit_edge ], [ %retval.0.i103.ph, %ctnetlink_parse_filter.exit.thread ], [ -22, %if.end.i.err_filter_crit_edge ], [ -22, %if.else12.i.err_filter_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #16
  %68 = inttoptr i32 %err.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err_filter, %if.end42.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %68, %err_filter ], [ %call7.i.i, %if.end9.cleanup_crit_edge ], [ %call7.i.i, %if.end42.cleanup_crit_edge ], [ %call7.i.i, %if.end36.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_conntrack_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nf_ct_delete(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @ctnetlink_filter_match_tuple(ptr nocapture noundef readonly %filter_tuple, ptr nocapture noundef readonly %ct_tuple, i32 noundef %flags, i32 noundef %family) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %family to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %family, label %entry.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 10, label %sw.bb12
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.bb.if.end_crit_edge, label %land.lhs.true

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.lhs.true:                                    ; preds = %sw.bb
  %1 = ptrtoint ptr %filter_tuple to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %filter_tuple, align 4
  %3 = ptrtoint ptr %ct_tuple to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ct_tuple, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %4)
  %cmp.not = icmp eq i32 %2, %4
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %sw.bb.if.end_crit_edge
  %and3 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.sw.epilog_crit_edge, label %land.lhs.true5

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

land.lhs.true5:                                   ; preds = %if.end
  %dst = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %filter_tuple, i32 0, i32 1
  %5 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dst, align 4
  %dst7 = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %ct_tuple, i32 0, i32 1
  %7 = ptrtoint ptr %dst7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dst7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp9.not = icmp eq i32 %6, %8
  br i1 %cmp9.not, label %land.lhs.true5.sw.epilog_crit_edge, label %land.lhs.true5.return_crit_edge

land.lhs.true5.return_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

land.lhs.true5.sw.epilog_crit_edge:               ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  %and13 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %sw.bb12.if.end22_crit_edge, label %land.lhs.true15

sw.bb12.if.end22_crit_edge:                       ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end22

land.lhs.true15:                                  ; preds = %sw.bb12
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(16) %filter_tuple, ptr noundef dereferenceable(16) %ct_tuple, i32 16) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool20.not = icmp eq i32 %bcmp, 0
  br i1 %tobool20.not, label %land.lhs.true15.return_crit_edge, label %land.lhs.true15.if.end22_crit_edge

land.lhs.true15.if.end22_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end22

land.lhs.true15.return_crit_edge:                 ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end22:                                         ; preds = %land.lhs.true15.if.end22_crit_edge, %sw.bb12.if.end22_crit_edge
  %and23 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end22.sw.epilog_crit_edge, label %land.lhs.true25

if.end22.sw.epilog_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

land.lhs.true25:                                  ; preds = %if.end22
  %dst26 = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %filter_tuple, i32 0, i32 1
  %dst28 = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %ct_tuple, i32 0, i32 1
  %bcmp205 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %dst26, ptr noundef dereferenceable(16) %dst28, i32 16) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp205)
  %tobool31.not = icmp eq i32 %bcmp205, 0
  br i1 %tobool31.not, label %land.lhs.true25.return_crit_edge, label %land.lhs.true25.sw.epilog_crit_edge

land.lhs.true25.sw.epilog_crit_edge:              ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

land.lhs.true25.return_crit_edge:                 ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.epilog:                                        ; preds = %land.lhs.true25.sw.epilog_crit_edge, %if.end22.sw.epilog_crit_edge, %land.lhs.true5.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %and34 = and i32 %flags, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %sw.epilog.if.end44_crit_edge, label %land.lhs.true36

sw.epilog.if.end44_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end44

land.lhs.true36:                                  ; preds = %sw.epilog
  %protonum = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %filter_tuple, i32 0, i32 1, i32 2
  %9 = ptrtoint ptr %protonum to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %protonum, align 2
  %protonum39 = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %ct_tuple, i32 0, i32 1, i32 2
  %11 = ptrtoint ptr %protonum39 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %protonum39, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %12)
  %cmp41.not = icmp eq i8 %10, %12
  br i1 %cmp41.not, label %land.lhs.true36.if.end44_crit_edge, label %land.lhs.true36.return_crit_edge

land.lhs.true36.return_crit_edge:                 ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

land.lhs.true36.if.end44_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end44

if.end44:                                         ; preds = %land.lhs.true36.if.end44_crit_edge, %sw.epilog.if.end44_crit_edge
  %protonum46 = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %ct_tuple, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %protonum46 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %protonum46, align 2
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.31)
  switch i8 %14, label %if.end44.sw.epilog166_crit_edge [
    i8 6, label %if.end44.sw.bb48_crit_edge
    i8 17, label %if.end44.sw.bb48_crit_edge206
    i8 1, label %sw.bb77
    i8 58, label %sw.bb120
  ]

if.end44.sw.bb48_crit_edge206:                    ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb48

if.end44.sw.bb48_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb48

if.end44.sw.epilog166_crit_edge:                  ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog166

sw.bb48:                                          ; preds = %if.end44.sw.bb48_crit_edge, %if.end44.sw.bb48_crit_edge206
  %and49 = and i32 %flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %sw.bb48.if.end61_crit_edge, label %land.lhs.true51

sw.bb48.if.end61_crit_edge:                       ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end61

land.lhs.true51:                                  ; preds = %sw.bb48
  %u = getelementptr inbounds %struct.nf_conntrack_man, ptr %filter_tuple, i32 0, i32 1
  %16 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %u, align 4
  %u55 = getelementptr inbounds %struct.nf_conntrack_man, ptr %ct_tuple, i32 0, i32 1
  %18 = ptrtoint ptr %u55 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %u55, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %17, i16 %19)
  %cmp58.not = icmp eq i16 %17, %19
  br i1 %cmp58.not, label %land.lhs.true51.if.end61_crit_edge, label %land.lhs.true51.return_crit_edge

land.lhs.true51.return_crit_edge:                 ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

land.lhs.true51.if.end61_crit_edge:               ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end61

if.end61:                                         ; preds = %land.lhs.true51.if.end61_crit_edge, %sw.bb48.if.end61_crit_edge
  %and62 = and i32 %flags, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %if.end61.sw.epilog166_crit_edge, label %land.lhs.true64

if.end61.sw.epilog166_crit_edge:                  ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog166

land.lhs.true64:                                  ; preds = %if.end61
  %u66 = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %filter_tuple, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %u66 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %u66, align 4
  %u70 = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %ct_tuple, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %u70 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %u70, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %21, i16 %23)
  %cmp73.not = icmp eq i16 %21, %23
  br i1 %cmp73.not, label %land.lhs.true64.sw.epilog166_crit_edge, label %land.lhs.true64.return_crit_edge

land.lhs.true64.return_crit_edge:                 ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

land.lhs.true64.sw.epilog166_crit_edge:           ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog166

sw.bb77:                                          ; preds = %if.end44
  %and78 = and i32 %flags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %sw.bb77.if.end91_crit_edge, label %land.lhs.true80

sw.bb77.if.end91_crit_edge:                       ; preds = %sw.bb77
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end91

land.lhs.true80:                                  ; preds = %sw.bb77
  %u82 = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %filter_tuple, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %u82 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %u82, align 4
  %u85 = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %ct_tuple, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %u85 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %u85, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %27)
  %cmp88.not = icmp eq i8 %25, %27
  br i1 %cmp88.not, label %land.lhs.true80.if.end91_crit_edge, label %land.lhs.true80.return_crit_edge

land.lhs.true80.return_crit_edge:                 ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

land.lhs.true80.if.end91_crit_edge:               ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end91

if.end91:                                         ; preds = %land.lhs.true80.if.end91_crit_edge, %sw.bb77.if.end91_crit_edge
  %and92 = and i32 %flags, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  br i1 %tobool93.not, label %if.end91.if.end105_crit_edge, label %land.lhs.true94

if.end91.if.end105_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end105

land.lhs.true94:                                  ; preds = %if.end91
  %u96 = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %filter_tuple, i32 0, i32 1, i32 1
  %code = getelementptr inbounds %struct.anon.158, ptr %u96, i32 0, i32 1
  %28 = ptrtoint ptr %code to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %code, align 1
  %u99 = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %ct_tuple, i32 0, i32 1, i32 1
  %code100 = getelementptr inbounds %struct.anon.158, ptr %u99, i32 0, i32 1
  %30 = ptrtoint ptr %code100 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %code100, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %29, i8 %31)
  %cmp102.not = icmp eq i8 %29, %31
  br i1 %cmp102.not, label %land.lhs.true94.if.end105_crit_edge, label %land.lhs.true94.return_crit_edge

land.lhs.true94.return_crit_edge:                 ; preds = %land.lhs.true94
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

land.lhs.true94.if.end105_crit_edge:              ; preds = %land.lhs.true94
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end105

if.end105:                                        ; preds = %land.lhs.true94.if.end105_crit_edge, %if.end91.if.end105_crit_edge
  %and106 = and i32 %flags, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106)
  %tobool107.not = icmp eq i32 %and106, 0
  br i1 %tobool107.not, label %if.end105.sw.epilog166_crit_edge, label %land.lhs.true108

if.end105.sw.epilog166_crit_edge:                 ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog166

land.lhs.true108:                                 ; preds = %if.end105
  %u110 = getelementptr inbounds %struct.nf_conntrack_man, ptr %filter_tuple, i32 0, i32 1
  %32 = ptrtoint ptr %u110 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %u110, align 4
  %u113 = getelementptr inbounds %struct.nf_conntrack_man, ptr %ct_tuple, i32 0, i32 1
  %34 = ptrtoint ptr %u113 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %u113, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %33, i16 %35)
  %cmp116.not = icmp eq i16 %33, %35
  br i1 %cmp116.not, label %land.lhs.true108.sw.epilog166_crit_edge, label %land.lhs.true108.return_crit_edge

land.lhs.true108.return_crit_edge:                ; preds = %land.lhs.true108
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

land.lhs.true108.sw.epilog166_crit_edge:          ; preds = %land.lhs.true108
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog166

sw.bb120:                                         ; preds = %if.end44
  %and121 = and i32 %flags, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and121)
  %tobool122.not = icmp eq i32 %and121, 0
  br i1 %tobool122.not, label %sw.bb120.if.end135_crit_edge, label %land.lhs.true123

sw.bb120.if.end135_crit_edge:                     ; preds = %sw.bb120
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end135

land.lhs.true123:                                 ; preds = %sw.bb120
  %u125 = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %filter_tuple, i32 0, i32 1, i32 1
  %36 = ptrtoint ptr %u125 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %u125, align 4
  %u129 = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %ct_tuple, i32 0, i32 1, i32 1
  %38 = ptrtoint ptr %u129 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %u129, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %37, i8 %39)
  %cmp132.not = icmp eq i8 %37, %39
  br i1 %cmp132.not, label %land.lhs.true123.if.end135_crit_edge, label %land.lhs.true123.return_crit_edge

land.lhs.true123.return_crit_edge:                ; preds = %land.lhs.true123
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

land.lhs.true123.if.end135_crit_edge:             ; preds = %land.lhs.true123
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end135

if.end135:                                        ; preds = %land.lhs.true123.if.end135_crit_edge, %sw.bb120.if.end135_crit_edge
  %and136 = and i32 %flags, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and136)
  %tobool137.not = icmp eq i32 %and136, 0
  br i1 %tobool137.not, label %if.end135.if.end150_crit_edge, label %land.lhs.true138

if.end135.if.end150_crit_edge:                    ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end150

land.lhs.true138:                                 ; preds = %if.end135
  %u140 = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %filter_tuple, i32 0, i32 1, i32 1
  %code141 = getelementptr inbounds %struct.anon.158, ptr %u140, i32 0, i32 1
  %40 = ptrtoint ptr %code141 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %code141, align 1
  %u144 = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %ct_tuple, i32 0, i32 1, i32 1
  %code145 = getelementptr inbounds %struct.anon.158, ptr %u144, i32 0, i32 1
  %42 = ptrtoint ptr %code145 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %code145, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %41, i8 %43)
  %cmp147.not = icmp eq i8 %41, %43
  br i1 %cmp147.not, label %land.lhs.true138.if.end150_crit_edge, label %land.lhs.true138.return_crit_edge

land.lhs.true138.return_crit_edge:                ; preds = %land.lhs.true138
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

land.lhs.true138.if.end150_crit_edge:             ; preds = %land.lhs.true138
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end150

if.end150:                                        ; preds = %land.lhs.true138.if.end150_crit_edge, %if.end135.if.end150_crit_edge
  %and151 = and i32 %flags, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and151)
  %tobool152.not = icmp eq i32 %and151, 0
  br i1 %tobool152.not, label %if.end150.sw.epilog166_crit_edge, label %land.lhs.true153

if.end150.sw.epilog166_crit_edge:                 ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog166

land.lhs.true153:                                 ; preds = %if.end150
  %u155 = getelementptr inbounds %struct.nf_conntrack_man, ptr %filter_tuple, i32 0, i32 1
  %44 = ptrtoint ptr %u155 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %u155, align 4
  %u159 = getelementptr inbounds %struct.nf_conntrack_man, ptr %ct_tuple, i32 0, i32 1
  %46 = ptrtoint ptr %u159 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %u159, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %45, i16 %47)
  %cmp162.not = icmp eq i16 %45, %47
  br i1 %cmp162.not, label %land.lhs.true153.sw.epilog166_crit_edge, label %land.lhs.true153.return_crit_edge

land.lhs.true153.return_crit_edge:                ; preds = %land.lhs.true153
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

land.lhs.true153.sw.epilog166_crit_edge:          ; preds = %land.lhs.true153
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog166

sw.epilog166:                                     ; preds = %land.lhs.true153.sw.epilog166_crit_edge, %if.end150.sw.epilog166_crit_edge, %land.lhs.true108.sw.epilog166_crit_edge, %if.end105.sw.epilog166_crit_edge, %land.lhs.true64.sw.epilog166_crit_edge, %if.end61.sw.epilog166_crit_edge, %if.end44.sw.epilog166_crit_edge
  br label %return

return:                                           ; preds = %sw.epilog166, %land.lhs.true153.return_crit_edge, %land.lhs.true138.return_crit_edge, %land.lhs.true123.return_crit_edge, %land.lhs.true108.return_crit_edge, %land.lhs.true94.return_crit_edge, %land.lhs.true80.return_crit_edge, %land.lhs.true64.return_crit_edge, %land.lhs.true51.return_crit_edge, %land.lhs.true36.return_crit_edge, %land.lhs.true25.return_crit_edge, %land.lhs.true15.return_crit_edge, %land.lhs.true5.return_crit_edge, %land.lhs.true.return_crit_edge
  %retval.0 = phi i32 [ 1, %sw.epilog166 ], [ 0, %land.lhs.true.return_crit_edge ], [ 0, %land.lhs.true5.return_crit_edge ], [ 0, %land.lhs.true15.return_crit_edge ], [ 0, %land.lhs.true25.return_crit_edge ], [ 0, %land.lhs.true36.return_crit_edge ], [ 0, %land.lhs.true51.return_crit_edge ], [ 0, %land.lhs.true64.return_crit_edge ], [ 0, %land.lhs.true80.return_crit_edge ], [ 0, %land.lhs.true94.return_crit_edge ], [ 0, %land.lhs.true108.return_crit_edge ], [ 0, %land.lhs.true123.return_crit_edge ], [ 0, %land.lhs.true138.return_crit_edge ], [ 0, %land.lhs.true153.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ctnetlink_dump_extinfo(ptr noundef %skb, ptr noundef %ct, i32 noundef %type) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %ext.i.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 13
  %0 = ptrtoint ptr %ext.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ext.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i.i, label %entry.lor.lhs.false_crit_edge, label %nf_ct_ext_exist.exit.i.i.i

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false

nf_ct_ext_exist.exit.i.i.i:                       ; preds = %entry
  %arrayidx.i.i.i.i.i = getelementptr [10 x i8], ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.i.i.not.i.i.i = icmp eq i8 %3, 0
  br i1 %tobool.i.i.not.i.i.i, label %nf_ct_ext_exist.exit.i.i.i.lor.lhs.false_crit_edge, label %nf_conn_acct_find.exit.i

nf_ct_ext_exist.exit.i.i.i.lor.lhs.false_crit_edge: ; preds = %nf_ct_ext_exist.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false

nf_conn_acct_find.exit.i:                         ; preds = %nf_ct_ext_exist.exit.i.i.i
  %conv.i.i.i = zext i8 %3 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 %conv.i.i.i
  %tobool.not.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool.not.i, label %nf_conn_acct_find.exit.i.lor.lhs.false_crit_edge, label %if.end.i

nf_conn_acct_find.exit.i.lor.lhs.false_crit_edge: ; preds = %nf_conn_acct_find.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false

if.end.i:                                         ; preds = %nf_conn_acct_find.exit.i
  %call1.i = tail call fastcc i32 @dump_counters(ptr noundef %skb, ptr noundef nonnull %add.ptr.i.i.i, i32 noundef 0, i32 noundef %type) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %if.end.i.return_crit_edge, label %ctnetlink_dump_acct.exit

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

ctnetlink_dump_acct.exit:                         ; preds = %if.end.i
  %call4.i = tail call fastcc i32 @dump_counters(ptr noundef %skb, ptr noundef nonnull %add.ptr.i.i.i, i32 noundef 1, i32 noundef %type) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp = icmp slt i32 %call4.i, 0
  br i1 %cmp, label %ctnetlink_dump_acct.exit.return_crit_edge, label %ctnetlink_dump_acct.exit.lor.lhs.false_crit_edge

ctnetlink_dump_acct.exit.lor.lhs.false_crit_edge: ; preds = %ctnetlink_dump_acct.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false

ctnetlink_dump_acct.exit.return_crit_edge:        ; preds = %ctnetlink_dump_acct.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

lor.lhs.false:                                    ; preds = %ctnetlink_dump_acct.exit.lor.lhs.false_crit_edge, %nf_conn_acct_find.exit.i.lor.lhs.false_crit_edge, %nf_ct_ext_exist.exit.i.i.i.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %call1 = tail call fastcc i32 @ctnetlink_dump_timestamp(ptr noundef %skb, ptr noundef %ct)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %lor.lhs.false.return_crit_edge, label %lor.lhs.false3

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = tail call fastcc i32 @ctnetlink_dump_helpinfo(ptr noundef %skb, ptr noundef %ct)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %lor.lhs.false3.return_crit_edge, label %lor.lhs.false6

lor.lhs.false3.return_crit_edge:                  ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %4 = ptrtoint ptr %ext.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ext.i.i.i.i, align 8
  %tobool.not.i.i.i.i26 = icmp eq ptr %5, null
  br i1 %tobool.not.i.i.i.i26, label %lor.lhs.false6.lor.lhs.false12_crit_edge, label %nf_ct_ext_exist.exit.i.i.i29

lor.lhs.false6.lor.lhs.false12_crit_edge:         ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false12

nf_ct_ext_exist.exit.i.i.i29:                     ; preds = %lor.lhs.false6
  %arrayidx.i.i.i.i.i27 = getelementptr [10 x i8], ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %arrayidx.i.i.i.i.i27 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i.i.i.i.i27, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.i.i.not.i.i.i28 = icmp eq i8 %7, 0
  br i1 %tobool.i.i.not.i.i.i28, label %nf_ct_ext_exist.exit.i.i.i29.lor.lhs.false9_crit_edge, label %nf_ct_labels_find.exit.i

nf_ct_ext_exist.exit.i.i.i29.lor.lhs.false9_crit_edge: ; preds = %nf_ct_ext_exist.exit.i.i.i29
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false9

nf_ct_labels_find.exit.i:                         ; preds = %nf_ct_ext_exist.exit.i.i.i29
  %conv.i.i.i30 = zext i8 %7 to i32
  %add.ptr.i.i.i31 = getelementptr i8, ptr %5, i32 %conv.i.i.i30
  %tobool.not.i32 = icmp eq ptr %add.ptr.i.i.i31, null
  br i1 %tobool.not.i32, label %nf_ct_labels_find.exit.i.lor.lhs.false9_crit_edge, label %do.body.preheader.i

nf_ct_labels_find.exit.i.lor.lhs.false9_crit_edge: ; preds = %nf_ct_labels_find.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false9

do.body.preheader.i:                              ; preds = %nf_ct_labels_find.exit.i
  %8 = ptrtoint ptr %add.ptr.i.i.i31 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i.i.i31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not.i = icmp eq i32 %9, 0
  br i1 %cmp.not.i, label %if.end4.i, label %do.body.preheader.i.ctnetlink_dump_labels.exit_crit_edge

do.body.preheader.i.ctnetlink_dump_labels.exit_crit_edge: ; preds = %do.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ctnetlink_dump_labels.exit

if.end4.i:                                        ; preds = %do.body.preheader.i
  %arrayidx.1.i = getelementptr [4 x i32], ptr %add.ptr.i.i.i31, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not.1.i = icmp eq i32 %11, 0
  br i1 %cmp.not.1.i, label %if.end4.1.i, label %if.end4.i.ctnetlink_dump_labels.exit_crit_edge

if.end4.i.ctnetlink_dump_labels.exit_crit_edge:   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ctnetlink_dump_labels.exit

if.end4.1.i:                                      ; preds = %if.end4.i
  %arrayidx.2.i = getelementptr [4 x i32], ptr %add.ptr.i.i.i31, i32 0, i32 2
  %12 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.not.2.i = icmp eq i32 %13, 0
  br i1 %cmp.not.2.i, label %if.end4.2.i, label %if.end4.1.i.ctnetlink_dump_labels.exit_crit_edge

if.end4.1.i.ctnetlink_dump_labels.exit_crit_edge: ; preds = %if.end4.1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ctnetlink_dump_labels.exit

if.end4.2.i:                                      ; preds = %if.end4.1.i
  %arrayidx.3.i = getelementptr [4 x i32], ptr %add.ptr.i.i.i31, i32 0, i32 3
  %14 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.not.3.i = icmp eq i32 %15, 0
  br i1 %cmp.not.3.i, label %if.end4.2.i.lor.lhs.false9_crit_edge, label %if.end4.2.i.ctnetlink_dump_labels.exit_crit_edge

if.end4.2.i.ctnetlink_dump_labels.exit_crit_edge: ; preds = %if.end4.2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ctnetlink_dump_labels.exit

if.end4.2.i.lor.lhs.false9_crit_edge:             ; preds = %if.end4.2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false9

ctnetlink_dump_labels.exit:                       ; preds = %if.end4.2.i.ctnetlink_dump_labels.exit_crit_edge, %if.end4.1.i.ctnetlink_dump_labels.exit_crit_edge, %if.end4.i.ctnetlink_dump_labels.exit_crit_edge, %do.body.preheader.i.ctnetlink_dump_labels.exit_crit_edge
  %call3.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 22, i32 noundef 16, ptr noundef nonnull %add.ptr.i.i.i31) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp8 = icmp slt i32 %call3.i, 0
  br i1 %cmp8, label %ctnetlink_dump_labels.exit.return_crit_edge, label %ctnetlink_dump_labels.exit.lor.lhs.false9_crit_edge

ctnetlink_dump_labels.exit.lor.lhs.false9_crit_edge: ; preds = %ctnetlink_dump_labels.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false9

ctnetlink_dump_labels.exit.return_crit_edge:      ; preds = %ctnetlink_dump_labels.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

lor.lhs.false9:                                   ; preds = %ctnetlink_dump_labels.exit.lor.lhs.false9_crit_edge, %if.end4.2.i.lor.lhs.false9_crit_edge, %nf_ct_labels_find.exit.i.lor.lhs.false9_crit_edge, %nf_ct_ext_exist.exit.i.i.i29.lor.lhs.false9_crit_edge
  %16 = ptrtoint ptr %ext.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr = load ptr, ptr %ext.i.i.i.i, align 8
  %tobool.not.i.i.i.i35 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i.i.i.i35, label %lor.lhs.false9.lor.lhs.false12_crit_edge, label %nf_ct_ext_exist.exit.i.i.i38

lor.lhs.false9.lor.lhs.false12_crit_edge:         ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false12

nf_ct_ext_exist.exit.i.i.i38:                     ; preds = %lor.lhs.false9
  %arrayidx.i.i.i.i.i36 = getelementptr [10 x i8], ptr %.pr, i32 0, i32 2
  %17 = ptrtoint ptr %arrayidx.i.i.i.i.i36 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.i.i.i.i.i36, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.i.i.not.i.i.i37 = icmp eq i8 %18, 0
  br i1 %tobool.i.i.not.i.i.i37, label %nf_ct_ext_exist.exit.i.i.i38.lor.lhs.false12_crit_edge, label %nfct_seqadj.exit.i

nf_ct_ext_exist.exit.i.i.i38.lor.lhs.false12_crit_edge: ; preds = %nf_ct_ext_exist.exit.i.i.i38
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false12

nfct_seqadj.exit.i:                               ; preds = %nf_ct_ext_exist.exit.i.i.i38
  %conv.i.i.i39 = zext i8 %18 to i32
  %add.ptr.i.i.i40 = getelementptr i8, ptr %.pr, i32 %conv.i.i.i39
  %status.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 5
  %19 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %status.i, align 8
  %and.i = and i32 %20, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i41 = icmp eq i32 %and.i, 0
  %tobool1.not.i = icmp eq ptr %add.ptr.i.i.i40, null
  %or.cond.i = select i1 %tobool.not.i41, i1 true, i1 %tobool1.not.i
  br i1 %or.cond.i, label %nfct_seqadj.exit.i.lor.lhs.false12_crit_edge, label %if.end.i44

nfct_seqadj.exit.i.lor.lhs.false12_crit_edge:     ; preds = %nfct_seqadj.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false12

if.end.i44:                                       ; preds = %nfct_seqadj.exit.i
  %lock.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #16
  %call3.i42 = tail call fastcc i32 @dump_ct_seq_adj(ptr noundef %skb, ptr noundef nonnull %add.ptr.i.i.i40, i32 noundef 15) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call3.i42)
  %cmp.i43 = icmp eq i32 %call3.i42, -1
  br i1 %cmp.i43, label %if.end.i44.ctnetlink_dump_ct_seq_adj.exit.thread55_crit_edge, label %if.end5.i

if.end.i44.ctnetlink_dump_ct_seq_adj.exit.thread55_crit_edge: ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #18
  br label %ctnetlink_dump_ct_seq_adj.exit.thread55

if.end5.i:                                        ; preds = %if.end.i44
  %arrayidx7.i = getelementptr [2 x %struct.nf_ct_seqadj], ptr %add.ptr.i.i.i40, i32 0, i32 1
  %call8.i = tail call fastcc i32 @dump_ct_seq_adj(ptr noundef %skb, ptr noundef %arrayidx7.i, i32 noundef 16) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call8.i)
  %cmp9.i = icmp eq i32 %call8.i, -1
  br i1 %cmp9.i, label %if.end5.i.ctnetlink_dump_ct_seq_adj.exit.thread55_crit_edge, label %ctnetlink_dump_ct_seq_adj.exit

if.end5.i.ctnetlink_dump_ct_seq_adj.exit.thread55_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ctnetlink_dump_ct_seq_adj.exit.thread55

ctnetlink_dump_ct_seq_adj.exit.thread55:          ; preds = %if.end5.i.ctnetlink_dump_ct_seq_adj.exit.thread55_crit_edge, %if.end.i44.ctnetlink_dump_ct_seq_adj.exit.thread55_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #16
  br label %return

ctnetlink_dump_ct_seq_adj.exit:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #16
  br label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %ctnetlink_dump_ct_seq_adj.exit, %nfct_seqadj.exit.i.lor.lhs.false12_crit_edge, %nf_ct_ext_exist.exit.i.i.i38.lor.lhs.false12_crit_edge, %lor.lhs.false9.lor.lhs.false12_crit_edge, %lor.lhs.false6.lor.lhs.false12_crit_edge
  %call13 = tail call fastcc i32 @ctnetlink_dump_ct_synproxy(ptr noundef %skb, ptr noundef %ct)
  %call13.lobit = ashr i32 %call13, 31
  br label %return

return:                                           ; preds = %lor.lhs.false12, %ctnetlink_dump_ct_seq_adj.exit.thread55, %ctnetlink_dump_labels.exit.return_crit_edge, %lor.lhs.false3.return_crit_edge, %lor.lhs.false.return_crit_edge, %ctnetlink_dump_acct.exit.return_crit_edge, %if.end.i.return_crit_edge
  %retval.0 = phi i32 [ -1, %ctnetlink_dump_labels.exit.return_crit_edge ], [ -1, %lor.lhs.false3.return_crit_edge ], [ -1, %lor.lhs.false.return_crit_edge ], [ -1, %ctnetlink_dump_acct.exit.return_crit_edge ], [ %call13.lobit, %lor.lhs.false12 ], [ -1, %ctnetlink_dump_ct_seq_adj.exit.thread55 ], [ -1, %if.end.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_iterate_cleanup_net(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ctnetlink_flush_iterate(ptr noundef %ct, ptr noundef readonly %data) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end:                                           ; preds = %entry
  %cmp.i = icmp eq ptr %data, null
  br i1 %cmp.i, label %if.end.return_crit_edge, label %if.end.i

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end.i:                                         ; preds = %if.end
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %if.end.i.if.end7.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %l3num.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 0, i32 1, i32 0, i32 2
  %5 = ptrtoint ptr %l3num.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %l3num.i.i, align 2
  %7 = zext i8 %4 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %6, i16 %7)
  %cmp4.not.i = icmp eq i16 %6, %7
  br i1 %cmp4.not.i, label %land.lhs.true.i.if.end7.i_crit_edge, label %land.lhs.true.i.ignore_entry.i_crit_edge

land.lhs.true.i.ignore_entry.i_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ignore_entry.i

land.lhs.true.i.if.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7.i

if.end7.i:                                        ; preds = %land.lhs.true.i.if.end7.i_crit_edge, %if.end.i.if.end7.i_crit_edge
  %orig_flags.i = getelementptr inbounds %struct.ctnetlink_filter, ptr %data, i32 0, i32 1
  %8 = ptrtoint ptr %orig_flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %orig_flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool8.not.i = icmp eq i32 %9, 0
  br i1 %tobool8.not.i, label %if.end7.i.if.end18.i_crit_edge, label %if.then9.i

if.end7.i.if.end18.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18.i

if.then9.i:                                       ; preds = %if.end7.i
  %tuple10.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 0, i32 1
  %orig.i = getelementptr inbounds %struct.ctnetlink_filter, ptr %data, i32 0, i32 3
  %conv13.i = zext i8 %4 to i32
  %call14.i = tail call fastcc i32 @ctnetlink_filter_match_tuple(ptr noundef %orig.i, ptr noundef %tuple10.i, i32 noundef %9, i32 noundef %conv13.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.then9.i.ignore_entry.i_crit_edge, label %if.then9.i.if.end18.i_crit_edge

if.then9.i.if.end18.i_crit_edge:                  ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18.i

if.then9.i.ignore_entry.i_crit_edge:              ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ignore_entry.i

if.end18.i:                                       ; preds = %if.then9.i.if.end18.i_crit_edge, %if.end7.i.if.end18.i_crit_edge
  %reply_flags.i = getelementptr inbounds %struct.ctnetlink_filter, ptr %data, i32 0, i32 2
  %10 = ptrtoint ptr %reply_flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reply_flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool19.not.i = icmp eq i32 %11, 0
  br i1 %tobool19.not.i, label %if.end18.i.if.end31.i_crit_edge, label %if.then20.i

if.end18.i.if.end31.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end31.i

if.then20.i:                                      ; preds = %if.end18.i
  %tuple23.i = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 1, i32 1
  %reply.i = getelementptr inbounds %struct.ctnetlink_filter, ptr %data, i32 0, i32 4
  %conv26.i = zext i8 %4 to i32
  %call27.i = tail call fastcc i32 @ctnetlink_filter_match_tuple(ptr noundef %reply.i, ptr noundef %tuple23.i, i32 noundef %11, i32 noundef %conv26.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %if.then20.i.ignore_entry.i_crit_edge, label %if.then20.i.if.end31.i_crit_edge

if.then20.i.if.end31.i_crit_edge:                 ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end31.i

if.then20.i.ignore_entry.i_crit_edge:             ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ignore_entry.i

if.end31.i:                                       ; preds = %if.then20.i.if.end31.i_crit_edge, %if.end18.i.if.end31.i_crit_edge
  %mark.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 11
  %12 = ptrtoint ptr %mark.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mark.i, align 8
  %mark32.i = getelementptr inbounds %struct.ctnetlink_filter, ptr %data, i32 0, i32 6
  %mask.i = getelementptr inbounds %struct.ctnetlink_filter, ptr %data, i32 0, i32 6, i32 1
  %14 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mask.i, align 4
  %and.i = and i32 %15, %13
  %16 = ptrtoint ptr %mark32.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mark32.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %17)
  %cmp34.not.i = icmp eq i32 %and.i, %17
  br i1 %cmp34.not.i, label %do.end.i, label %if.end31.i.ignore_entry.i_crit_edge

if.end31.i.ignore_entry.i_crit_edge:              ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ignore_entry.i

do.end.i:                                         ; preds = %if.end31.i
  %18 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %status, align 8
  %status39.i = getelementptr inbounds %struct.ctnetlink_filter, ptr %data, i32 0, i32 7
  %mask40.i = getelementptr inbounds %struct.ctnetlink_filter, ptr %data, i32 0, i32 7, i32 1
  %20 = ptrtoint ptr %mask40.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mask40.i, align 4
  %and41.i = and i32 %21, %19
  %22 = ptrtoint ptr %status39.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %status39.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and41.i, i32 %23)
  %cmp44.not.i = icmp eq i32 %and41.i, %23
  br i1 %cmp44.not.i, label %do.end.i.return_crit_edge, label %do.end.i.ignore_entry.i_crit_edge

do.end.i.ignore_entry.i_crit_edge:                ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ignore_entry.i

do.end.i.return_crit_edge:                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

ignore_entry.i:                                   ; preds = %do.end.i.ignore_entry.i_crit_edge, %if.end31.i.ignore_entry.i_crit_edge, %if.then20.i.ignore_entry.i_crit_edge, %if.then9.i.ignore_entry.i_crit_edge, %land.lhs.true.i.ignore_entry.i_crit_edge
  br label %return

return:                                           ; preds = %ignore_entry.i, %do.end.i.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 0, %ignore_entry.i ], [ 1, %do.end.i.return_crit_edge ], [ 1, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ctnetlink_ct_stat_cpu_dump(ptr noundef %skb, ptr nocapture noundef %cb) #2 align 64 {
entry:
  %tmp.i76.i = alloca i32, align 4
  %tmp.i74.i = alloca i32, align 4
  %tmp.i72.i = alloca i32, align 4
  %tmp.i70.i = alloca i32, align 4
  %tmp.i68.i = alloca i32, align 4
  %tmp.i66.i = alloca i32, align 4
  %tmp.i64.i = alloca i32, align 4
  %tmp.i62.i = alloca i32, align 4
  %tmp.i60.i = alloca i32, align 4
  %tmp.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  %5 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %8 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %8)
  %cmp = icmp eq i32 %7, %8
  br i1 %cmp, label %entry.cleanup16_crit_edge, label %for.cond.preheader

entry.cleanup16_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup16

for.cond.preheader:                               ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %9 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp236 = icmp ult i32 %7, %9
  br i1 %cmp236, label %cpu_possible.exit.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

cpu_possible.exit.lr.ph:                          ; preds = %for.cond.preheader
  %stat = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 40, i32 8
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %data_len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  br label %cpu_possible.exit

cpu_possible.exit:                                ; preds = %for.inc.cpu_possible.exit_crit_edge, %cpu_possible.exit.lr.ph
  %cpu.037 = phi i32 [ %7, %cpu_possible.exit.lr.ph ], [ %inc, %for.inc.cpu_possible.exit_crit_edge ]
  %div3.i.i.i = lshr i32 %cpu.037, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_possible_mask, i32 %div3.i.i.i
  %10 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %cpu.037, 31
  %12 = shl nuw i32 1, %and.i.i.i
  %13 = and i32 %11, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.i.not = icmp eq i32 %13, 0
  br i1 %tobool.i.not, label %cpu_possible.exit.for.inc_crit_edge, label %do.body

cpu_possible.exit.for.inc_crit_edge:              ; preds = %cpu_possible.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

do.body:                                          ; preds = %cpu_possible.exit
  %14 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %stat, align 4
  %16 = ptrtoint ptr %15 to i32
  %arrayidx7 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu.037
  %17 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx7, align 4
  %add = add i32 %18, %16
  %19 = inttoptr i32 %add to ptr
  %20 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cb, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 3, i32 12
  %22 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %portid, align 4
  %24 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nlmsg_seq, align 4
  %conv = trunc i32 %cpu.037 to i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i = icmp eq i32 %23, 0
  %cond.i = select i1 %tobool.not.i, i32 0, i32 2
  %28 = ptrtoint ptr %data_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %data_len.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.i.not.i.i.i.i = icmp eq i32 %29, 0
  br i1 %tobool.i.not.i.i.i.i, label %skb_tailroom.exit.i.i.i, label %do.body.for.end_crit_edge

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

skb_tailroom.exit.i.i.i:                          ; preds = %do.body
  %30 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %end.i.i.i.i, align 4
  %32 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tail.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %31 to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %33 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.ptr.sub.i.i.i.i)
  %cmp.i.i.i = icmp slt i32 %sub.ptr.sub.i.i.i.i, 20
  br i1 %cmp.i.i.i, label %skb_tailroom.exit.i.i.i.for.end_crit_edge, label %nlmsg_put.exit.i.i, !prof !129

skb_tailroom.exit.i.i.i.for.end_crit_edge:        ; preds = %skb_tailroom.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

nlmsg_put.exit.i.i:                               ; preds = %skb_tailroom.exit.i.i.i
  %call3.i.i.i = call ptr @__nlmsg_put(ptr noundef %skb, i32 noundef %23, i32 noundef %27, i32 noundef 260, i32 noundef 4, i32 noundef %cond.i) #16
  %tobool.not.i.i = icmp eq ptr %call3.i.i.i, null
  br i1 %tobool.not.i.i, label %nlmsg_put.exit.i.i.for.end_crit_edge, label %if.end.i

nlmsg_put.exit.i.i.for.end_crit_edge:             ; preds = %nlmsg_put.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

if.end.i:                                         ; preds = %nlmsg_put.exit.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %call3.i.i.i, i32 16
  %34 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %add.ptr.i.i.i.i, align 2
  %version1.i.i.i = getelementptr i8, ptr %call3.i.i.i, i32 17
  %35 = ptrtoint ptr %version1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %version1.i.i.i, align 1
  %res_id2.i.i.i = getelementptr i8, ptr %call3.i.i.i, i32 18
  %36 = ptrtoint ptr %res_id2.i.i.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv, ptr %res_id2.i.i.i, align 2
  %37 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %19, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #16
  %39 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %tmp.i.i, align 4
  %call.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not.i, label %lor.lhs.false.i, label %if.end.i.if.then.i.i.i_crit_edge

if.end.i.if.then.i.i.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %invalid.i = getelementptr inbounds %struct.ip_conntrack_stat, ptr %19, i32 0, i32 1
  %40 = ptrtoint ptr %invalid.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %invalid.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i60.i) #16
  %42 = ptrtoint ptr %tmp.i60.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %tmp.i60.i, align 4
  %call.i61.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i60.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i60.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61.i)
  %tobool6.not.i = icmp eq i32 %call.i61.i, 0
  br i1 %tobool6.not.i, label %lor.lhs.false7.i, label %lor.lhs.false.i.if.then.i.i.i_crit_edge

lor.lhs.false.i.if.then.i.i.i_crit_edge:          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i.i

lor.lhs.false7.i:                                 ; preds = %lor.lhs.false.i
  %insert.i = getelementptr inbounds %struct.ip_conntrack_stat, ptr %19, i32 0, i32 2
  %43 = ptrtoint ptr %insert.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %insert.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i62.i) #16
  %45 = ptrtoint ptr %tmp.i62.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %tmp.i62.i, align 4
  %call.i63.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 8, i32 noundef 4, ptr noundef nonnull %tmp.i62.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i62.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i63.i)
  %tobool9.not.i = icmp eq i32 %call.i63.i, 0
  br i1 %tobool9.not.i, label %lor.lhs.false10.i, label %lor.lhs.false7.i.if.then.i.i.i_crit_edge

lor.lhs.false7.i.if.then.i.i.i_crit_edge:         ; preds = %lor.lhs.false7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i.i

lor.lhs.false10.i:                                ; preds = %lor.lhs.false7.i
  %insert_failed.i = getelementptr inbounds %struct.ip_conntrack_stat, ptr %19, i32 0, i32 3
  %46 = ptrtoint ptr %insert_failed.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %insert_failed.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i64.i) #16
  %48 = ptrtoint ptr %tmp.i64.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %tmp.i64.i, align 4
  %call.i65.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 9, i32 noundef 4, ptr noundef nonnull %tmp.i64.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i64.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i65.i)
  %tobool12.not.i = icmp eq i32 %call.i65.i, 0
  br i1 %tobool12.not.i, label %lor.lhs.false13.i, label %lor.lhs.false10.i.if.then.i.i.i_crit_edge

lor.lhs.false10.i.if.then.i.i.i_crit_edge:        ; preds = %lor.lhs.false10.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i.i

lor.lhs.false13.i:                                ; preds = %lor.lhs.false10.i
  %drop.i = getelementptr inbounds %struct.ip_conntrack_stat, ptr %19, i32 0, i32 5
  %49 = ptrtoint ptr %drop.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %drop.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i66.i) #16
  %51 = ptrtoint ptr %tmp.i66.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %tmp.i66.i, align 4
  %call.i67.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 10, i32 noundef 4, ptr noundef nonnull %tmp.i66.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i66.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67.i)
  %tobool15.not.i = icmp eq i32 %call.i67.i, 0
  br i1 %tobool15.not.i, label %lor.lhs.false16.i, label %lor.lhs.false13.i.if.then.i.i.i_crit_edge

lor.lhs.false13.i.if.then.i.i.i_crit_edge:        ; preds = %lor.lhs.false13.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i.i

lor.lhs.false16.i:                                ; preds = %lor.lhs.false13.i
  %early_drop.i = getelementptr inbounds %struct.ip_conntrack_stat, ptr %19, i32 0, i32 6
  %52 = ptrtoint ptr %early_drop.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %early_drop.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i68.i) #16
  %54 = ptrtoint ptr %tmp.i68.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %tmp.i68.i, align 4
  %call.i69.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 11, i32 noundef 4, ptr noundef nonnull %tmp.i68.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i68.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69.i)
  %tobool18.not.i = icmp eq i32 %call.i69.i, 0
  br i1 %tobool18.not.i, label %lor.lhs.false19.i, label %lor.lhs.false16.i.if.then.i.i.i_crit_edge

lor.lhs.false16.i.if.then.i.i.i_crit_edge:        ; preds = %lor.lhs.false16.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i.i

lor.lhs.false19.i:                                ; preds = %lor.lhs.false16.i
  %error.i = getelementptr inbounds %struct.ip_conntrack_stat, ptr %19, i32 0, i32 7
  %55 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %error.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i70.i) #16
  %57 = ptrtoint ptr %tmp.i70.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %tmp.i70.i, align 4
  %call.i71.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 12, i32 noundef 4, ptr noundef nonnull %tmp.i70.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i70.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i71.i)
  %tobool21.not.i = icmp eq i32 %call.i71.i, 0
  br i1 %tobool21.not.i, label %lor.lhs.false22.i, label %lor.lhs.false19.i.if.then.i.i.i_crit_edge

lor.lhs.false19.i.if.then.i.i.i_crit_edge:        ; preds = %lor.lhs.false19.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i.i

lor.lhs.false22.i:                                ; preds = %lor.lhs.false19.i
  %search_restart.i = getelementptr inbounds %struct.ip_conntrack_stat, ptr %19, i32 0, i32 11
  %58 = ptrtoint ptr %search_restart.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %search_restart.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i72.i) #16
  %60 = ptrtoint ptr %tmp.i72.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %tmp.i72.i, align 4
  %call.i73.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 13, i32 noundef 4, ptr noundef nonnull %tmp.i72.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i72.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i73.i)
  %tobool24.not.i = icmp eq i32 %call.i73.i, 0
  br i1 %tobool24.not.i, label %lor.lhs.false25.i, label %lor.lhs.false22.i.if.then.i.i.i_crit_edge

lor.lhs.false22.i.if.then.i.i.i_crit_edge:        ; preds = %lor.lhs.false22.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i.i

lor.lhs.false25.i:                                ; preds = %lor.lhs.false22.i
  %clash_resolve.i = getelementptr inbounds %struct.ip_conntrack_stat, ptr %19, i32 0, i32 4
  %61 = ptrtoint ptr %clash_resolve.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %clash_resolve.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i74.i) #16
  %63 = ptrtoint ptr %tmp.i74.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %tmp.i74.i, align 4
  %call.i75.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 14, i32 noundef 4, ptr noundef nonnull %tmp.i74.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i74.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75.i)
  %tobool27.not.i = icmp eq i32 %call.i75.i, 0
  br i1 %tobool27.not.i, label %lor.lhs.false28.i, label %lor.lhs.false25.i.if.then.i.i.i_crit_edge

lor.lhs.false25.i.if.then.i.i.i_crit_edge:        ; preds = %lor.lhs.false25.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i.i

lor.lhs.false28.i:                                ; preds = %lor.lhs.false25.i
  %chaintoolong.i = getelementptr inbounds %struct.ip_conntrack_stat, ptr %19, i32 0, i32 12
  %64 = ptrtoint ptr %chaintoolong.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %chaintoolong.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i76.i) #16
  %66 = ptrtoint ptr %tmp.i76.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %tmp.i76.i, align 4
  %call.i77.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 15, i32 noundef 4, ptr noundef nonnull %tmp.i76.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i76.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i77.i)
  %tobool30.not.i = icmp eq i32 %call.i77.i, 0
  br i1 %tobool30.not.i, label %ctnetlink_ct_stat_cpu_fill_info.exit, label %lor.lhs.false28.i.if.then.i.i.i_crit_edge

lor.lhs.false28.i.if.then.i.i.i_crit_edge:        ; preds = %lor.lhs.false28.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %lor.lhs.false28.i.if.then.i.i.i_crit_edge, %lor.lhs.false25.i.if.then.i.i.i_crit_edge, %lor.lhs.false22.i.if.then.i.i.i_crit_edge, %lor.lhs.false19.i.if.then.i.i.i_crit_edge, %lor.lhs.false16.i.if.then.i.i.i_crit_edge, %lor.lhs.false13.i.if.then.i.i.i_crit_edge, %lor.lhs.false10.i.if.then.i.i.i_crit_edge, %lor.lhs.false7.i.if.then.i.i.i_crit_edge, %lor.lhs.false.i.if.then.i.i.i_crit_edge, %if.end.i.if.then.i.i.i_crit_edge
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %67 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i78.i = icmp ugt ptr %68, %call3.i.i.i
  br i1 %cmp.i.i78.i, label %do.end.i.i.i, label %if.then.i.i.i.if.end.i.i.i_crit_edge, !prof !129

if.then.i.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 991, i32 noundef 9, ptr noundef null) #16
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i.i, %if.then.i.i.i.if.end.i.i.i_crit_edge
  %69 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %call3.i.i.i to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %70 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i.i) #16
  br label %for.end

ctnetlink_ct_stat_cpu_fill_info.exit:             ; preds = %lor.lhs.false28.i
  %71 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %tail.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %72 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %call3.i.i.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %73 = ptrtoint ptr %call3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %sub.ptr.sub.i.i, ptr %call3.i.i.i, align 4
  %74 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp11 = icmp slt i32 %75, 0
  br i1 %cmp11, label %ctnetlink_ct_stat_cpu_fill_info.exit.for.end_crit_edge, label %ctnetlink_ct_stat_cpu_fill_info.exit.for.inc_crit_edge

ctnetlink_ct_stat_cpu_fill_info.exit.for.inc_crit_edge: ; preds = %ctnetlink_ct_stat_cpu_fill_info.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

ctnetlink_ct_stat_cpu_fill_info.exit.for.end_crit_edge: ; preds = %ctnetlink_ct_stat_cpu_fill_info.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.inc:                                          ; preds = %ctnetlink_ct_stat_cpu_fill_info.exit.for.inc_crit_edge, %cpu_possible.exit.for.inc_crit_edge
  %inc = add nuw i32 %cpu.037, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %76 = load i32, ptr @nr_cpu_ids, align 4
  %cmp2 = icmp ult i32 %inc, %76
  br i1 %cmp2, label %for.inc.cpu_possible.exit_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.inc.cpu_possible.exit_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_possible.exit

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %ctnetlink_ct_stat_cpu_fill_info.exit.for.end_crit_edge, %if.end.i.i.i, %nlmsg_put.exit.i.i.for.end_crit_edge, %skb_tailroom.exit.i.i.i.for.end_crit_edge, %do.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %cpu.035 = phi i32 [ %cpu.037, %if.end.i.i.i ], [ %7, %for.cond.preheader.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ], [ %cpu.037, %nlmsg_put.exit.i.i.for.end_crit_edge ], [ %cpu.037, %skb_tailroom.exit.i.i.i.for.end_crit_edge ], [ %cpu.037, %do.body.for.end_crit_edge ], [ %cpu.037, %ctnetlink_ct_stat_cpu_fill_info.exit.for.end_crit_edge ]
  %77 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %cpu.035, ptr %5, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %78 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %len, align 4
  br label %cleanup16

cleanup16:                                        ; preds = %for.end, %entry.cleanup16_crit_edge
  %retval.0 = phi i32 [ %79, %for.end ], [ 0, %entry.cleanup16_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_conntrack_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ctnetlink_dump_dying(ptr noundef %skb, ptr nocapture noundef %cb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ctnetlink_dump_list(ptr noundef %skb, ptr noundef %cb, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ctnetlink_done_list(ptr nocapture noundef readonly %cb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.lhs.true.i:                                  ; preds = %entry
  %2 = inttoptr i32 %1 to ptr
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %2, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !133
  tail call void @llvm.prefetch.p0(ptr nonnull %2, i32 1, i32 3, i32 1) #16
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %2, ptr nonnull %2, i32 1, ptr nonnull elementtype(i32) %2) #16, !srcloc !134
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i, !prof !135

if.end5.i.i.i.i.if.end_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef nonnull %2, i32 noundef 3) #16
  br label %if.end

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !136
  tail call void @nf_ct_destroy(ptr noundef nonnull %2) #16
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ctnetlink_dump_list(ptr noundef %skb, ptr nocapture noundef %cb, i1 noundef zeroext %dying) unnamed_addr #2 align 64 {
entry:
  %old.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %0 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nlh, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 16
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %add.ptr.i, align 2
  %4 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %skc_net.i, align 4
  %9 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %arrayidx = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 2
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup66_crit_edge

entry.cleanup66_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup66

if.end:                                           ; preds = %entry
  %arrayidx2 = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx2, align 4
  %14 = inttoptr i32 %13 to ptr
  %15 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %9, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %17 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %17)
  %cmp118 = icmp ult i32 %16, %17
  br i1 %cmp118, label %cpu_possible.exit.lr.ph, label %if.end.for.end61_crit_edge

if.end.for.end61_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end61

cpu_possible.exit.lr.ph:                          ; preds = %if.end
  %pcpu_lists = getelementptr inbounds %struct.net, ptr %8, i32 0, i32 40, i32 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool20.not = icmp eq i8 %3, 0
  %18 = zext i8 %3 to i16
  br label %cpu_possible.exit

cpu_possible.exit:                                ; preds = %for.inc60.cpu_possible.exit_crit_edge, %cpu_possible.exit.lr.ph
  %cpu.0119 = phi i32 [ %16, %cpu_possible.exit.lr.ph ], [ %inc, %for.inc60.cpu_possible.exit_crit_edge ]
  %div3.i.i.i = lshr i32 %cpu.0119, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_possible_mask, i32 %div3.i.i.i
  %19 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %cpu.0119, 31
  %21 = shl nuw i32 1, %and.i.i.i
  %22 = and i32 %20, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.i.not = icmp eq i32 %22, 0
  br i1 %tobool.i.not, label %cpu_possible.exit.for.inc60_crit_edge, label %do.body

cpu_possible.exit.for.inc60_crit_edge:            ; preds = %cpu_possible.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc60

do.body:                                          ; preds = %cpu_possible.exit
  %23 = ptrtoint ptr %pcpu_lists to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pcpu_lists, align 8
  %25 = ptrtoint ptr %24 to i32
  %arrayidx9 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu.0119
  %26 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx9, align 4
  %add = add i32 %27, %25
  %28 = inttoptr i32 %add to ptr
  call void @_raw_spin_lock_bh(ptr noundef %28) #16
  %dying11 = getelementptr inbounds %struct.ct_pcpu, ptr %28, i32 0, i32 2
  %unconfirmed = getelementptr inbounds %struct.ct_pcpu, ptr %28, i32 0, i32 1
  %cond = select i1 %dying, ptr %dying11, ptr %unconfirmed
  br label %restart

restart:                                          ; preds = %if.then56, %do.body
  %29 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %29)
  %n.0114 = load ptr, ptr %cond, align 4
  %30 = ptrtoint ptr %n.0114 to i32
  %and.i115 = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i115)
  %tobool14.not116 = icmp eq i32 %and.i115, 0
  br i1 %tobool14.not116, label %restart.for.body18_crit_edge, label %restart.for.end_crit_edge

restart.for.end_crit_edge:                        ; preds = %restart
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

restart.for.body18_crit_edge:                     ; preds = %restart
  br label %for.body18

for.body18:                                       ; preds = %for.inc.for.body18_crit_edge, %restart.for.body18_crit_edge
  %n.0117 = phi ptr [ %n.0, %for.inc.for.body18_crit_edge ], [ %n.0114, %restart.for.body18_crit_edge ]
  %dir.i = getelementptr inbounds %struct.nf_conntrack_tuple_hash, ptr %n.0117, i32 0, i32 1, i32 1, i32 3
  %31 = ptrtoint ptr %dir.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %dir.i, align 1
  %conv.i = zext i8 %32 to i32
  %.neg.i = mul nsw i32 %conv.i, -48
  %idx.neg.i = add nsw i32 %.neg.i, -56
  %add.ptr.i109 = getelementptr i8, ptr %n.0117, i32 %idx.neg.i
  br i1 %tobool20.not, label %for.body18.if.end27_crit_edge, label %land.lhs.true

for.body18.if.end27_crit_edge:                    ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end27

land.lhs.true:                                    ; preds = %for.body18
  %l3num.i = getelementptr inbounds %struct.nf_conn, ptr %add.ptr.i109, i32 0, i32 4, i32 0, i32 1, i32 0, i32 2
  %33 = ptrtoint ptr %l3num.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %l3num.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %34, i16 %18)
  %cmp24.not = icmp eq i16 %34, %18
  br i1 %cmp24.not, label %land.lhs.true.if.end27_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end27

if.end27:                                         ; preds = %land.lhs.true.if.end27_crit_edge, %for.body18.if.end27_crit_edge
  %35 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool29.not = icmp eq i32 %36, 0
  br i1 %tobool29.not, label %if.end27.if.end36_crit_edge, label %if.then30

if.end27.if.end36_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end36

if.then30:                                        ; preds = %if.end27
  %cmp31.not = icmp eq ptr %add.ptr.i109, %14
  br i1 %cmp31.not, label %if.end34, label %if.then30.for.inc_crit_edge

if.then30.for.inc_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end34:                                         ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #18
  %37 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %arrayidx2, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.end34, %if.end27.if.end36_crit_edge
  %38 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cb, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %39, i32 0, i32 3, i32 12
  %40 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %portid, align 4
  %42 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %nlmsg_seq, align 4
  %nlmsg_type = getelementptr inbounds %struct.nlmsghdr, ptr %43, i32 0, i32 1
  %46 = ptrtoint ptr %nlmsg_type to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %nlmsg_type, align 4
  %48 = and i16 %47, 255
  %and = zext i16 %48 to i32
  %call43 = call fastcc i32 @ctnetlink_fill_info(ptr noundef %skb, i32 noundef %41, i32 noundef %45, i32 noundef %and, ptr noundef %add.ptr.i109, i1 noundef zeroext %dying, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %if.then46, label %if.end36.for.inc_crit_edge

if.end36.for.inc_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then46:                                        ; preds = %if.end36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #16
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr.i109, i32 noundef 4) #16
  %49 = ptrtoint ptr %add.ptr.i109 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %add.ptr.i109, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %if.then46
  %51 = phi i32 [ %50, %if.then46 ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %52 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i.i.i = icmp eq i32 %51, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i = add i32 %51, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr.i109, i32 noundef 4) #16
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #16
  %53 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %add.ptr.i109, i32 1, i32 3, i32 1) #16
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %55 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %add.ptr.i109, ptr %add.ptr.i109, i32 %54, i32 %add.i.i.i, ptr elementtype(i32) %add.ptr.i109) #16, !srcloc !137
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %55, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %55, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %54
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !135

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %56 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %57, 1
  %58 = or i32 %add5.i.i.i, %57
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %58)
  %.not.i.i.i = icmp sgt i32 %58, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !135

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @refcount_warn_saturate(ptr noundef %add.ptr.i109, i32 noundef 0) #16
  %59 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %.pr = load i32, ptr %old.i.i.i, align 4
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %60 = phi i32 [ %57, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool12.i.i.i.not = icmp eq i32 %60, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #16
  br i1 %tobool12.i.i.i.not, label %refcount_inc_not_zero.exit.for.inc_crit_edge, label %cleanup

refcount_inc_not_zero.exit.for.inc_crit_edge:     ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

for.inc:                                          ; preds = %refcount_inc_not_zero.exit.for.inc_crit_edge, %if.end36.for.inc_crit_edge, %if.then30.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge
  %61 = ptrtoint ptr %n.0117 to i32
  call void @__asan_load4_noabort(i32 %61)
  %n.0 = load ptr, ptr %n.0117, align 4
  %62 = ptrtoint ptr %n.0 to i32
  %and.i = and i32 %62, 1
  %tobool14.not = icmp eq i32 %and.i, 0
  br i1 %tobool14.not, label %for.inc.for.body18_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.inc.for.body18_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body18

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %restart.for.end_crit_edge
  %63 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx2, align 4
  %tobool55.not = icmp eq i32 %64, 0
  br i1 %tobool55.not, label %if.end58, label %if.then56

if.then56:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  %65 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %arrayidx2, align 4
  br label %restart

if.end58:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  call void @_raw_spin_unlock_bh(ptr noundef %28) #16
  br label %for.inc60

cleanup:                                          ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #18
  %66 = inttoptr i32 %add to ptr
  %67 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %cpu.0119, ptr %9, align 4
  %68 = ptrtoint ptr %add.ptr.i109 to i32
  %69 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %arrayidx2, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %66) #16
  br label %out

for.inc60:                                        ; preds = %if.end58, %cpu_possible.exit.for.inc60_crit_edge
  %inc = add nuw i32 %cpu.0119, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %70 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %inc, %70
  br i1 %cmp, label %for.inc60.cpu_possible.exit_crit_edge, label %for.inc60.for.end61_crit_edge

for.inc60.for.end61_crit_edge:                    ; preds = %for.inc60
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end61

for.inc60.cpu_possible.exit_crit_edge:            ; preds = %for.inc60
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_possible.exit

for.end61:                                        ; preds = %for.inc60.for.end61_crit_edge, %if.end.for.end61_crit_edge
  %71 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 1, ptr %arrayidx, align 4
  br label %out

out:                                              ; preds = %for.end61, %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool63.not = icmp eq i32 %13, 0
  br i1 %tobool63.not, label %out.if.end65_crit_edge, label %land.lhs.true.i

out.if.end65_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end65

land.lhs.true.i:                                  ; preds = %out
  %call.i.i.i.i.i.i110 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %14, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !133
  call void @llvm.prefetch.p0(ptr nonnull %14, i32 1, i32 3, i32 1) #16
  %72 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %14, ptr nonnull %14, i32 1, ptr nonnull elementtype(i32) %14) #16, !srcloc !134
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %72, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end65_crit_edge, label %if.then10.i.i.i.i, !prof !135

if.end5.i.i.i.i.if.end65_crit_edge:               ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end65

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @refcount_warn_saturate(ptr noundef nonnull %14, i32 noundef 3) #16
  br label %if.end65

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !136
  call void @nf_ct_destroy(ptr noundef nonnull %14) #16
  br label %if.end65

if.end65:                                         ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end65_crit_edge, %out.if.end65_crit_edge
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %73 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %len, align 4
  br label %cleanup66

cleanup66:                                        ; preds = %if.end65, %entry.cleanup66_crit_edge
  %retval.0 = phi i32 [ %74, %if.end65 ], [ 0, %entry.cleanup66_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ctnetlink_dump_unconfirmed(ptr noundef %skb, ptr nocapture noundef %cb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ctnetlink_dump_list(ptr noundef %skb, ptr noundef %cb, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfnetlink_subsys_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ctnetlink_glue_build_size(ptr nocapture noundef readonly %ct) #2 align 64 {
entry:
  %len.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i) #16
  %0 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %len.i, align 4, !annotation !128
  %secmark.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 12
  %1 = ptrtoint ptr %secmark.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %secmark.i, align 4
  %call.i = call i32 @security_secid_to_secctx(i32 noundef %2, ptr noundef null, ptr noundef nonnull %len.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.ctnetlink_secctx_size.exit_crit_edge

entry.ctnetlink_secctx_size.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %ctnetlink_secctx_size.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %3 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len.i, align 4
  %5 = add i32 %4, 123
  %phi.bo = and i32 %5, -4
  br label %ctnetlink_secctx_size.exit

ctnetlink_secctx_size.exit:                       ; preds = %if.end.i, %entry.ctnetlink_secctx_size.exit_crit_edge
  %retval.0.i = phi i32 [ %phi.bo, %if.end.i ], [ 112, %entry.ctnetlink_secctx_size.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #16
  %ext.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 13
  %6 = ptrtoint ptr %ext.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ext.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %ctnetlink_secctx_size.exit.ctnetlink_timestamp_size.exit_crit_edge, label %nf_ct_ext_exist.exit.i51

ctnetlink_secctx_size.exit.ctnetlink_timestamp_size.exit_crit_edge: ; preds = %ctnetlink_secctx_size.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %ctnetlink_timestamp_size.exit

nf_ct_ext_exist.exit.i51:                         ; preds = %ctnetlink_secctx_size.exit
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i.i.i = getelementptr [10 x i8], ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.i.i.not.i = icmp eq i8 %9, 0
  %spec.select.i = select i1 %tobool.i.i.not.i, i32 0, i32 56
  %add24 = add i32 %spec.select.i, %retval.0.i
  %arrayidx.i.i.i48 = getelementptr [10 x i8], ptr %7, i32 0, i32 5
  %10 = ptrtoint ptr %arrayidx.i.i.i48 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i.i.i48, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.i.i.not.i49 = icmp eq i8 %11, 0
  %spec.select.i50 = select i1 %tobool.i.i.not.i49, i32 0, i32 28
  br label %ctnetlink_timestamp_size.exit

ctnetlink_timestamp_size.exit:                    ; preds = %nf_ct_ext_exist.exit.i51, %ctnetlink_secctx_size.exit.ctnetlink_timestamp_size.exit_crit_edge
  %add2459 = phi i32 [ %add24, %nf_ct_ext_exist.exit.i51 ], [ %retval.0.i, %ctnetlink_secctx_size.exit.ctnetlink_timestamp_size.exit_crit_edge ]
  %retval.0.i52 = phi i32 [ %spec.select.i50, %nf_ct_ext_exist.exit.i51 ], [ 0, %ctnetlink_secctx_size.exit.ctnetlink_timestamp_size.exit_crit_edge ]
  %call.i53 = call i32 @nla_policy_len(ptr noundef nonnull @cta_ip_nla_policy, i32 noundef 5) #16
  %protonum.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 0, i32 1, i32 1, i32 2
  %12 = ptrtoint ptr %protonum.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %protonum.i.i, align 2
  %call2.i = call ptr @nf_ct_l4proto_find(i8 noundef zeroext %13) #16
  %nlattr_size.i = getelementptr inbounds %struct.nf_conntrack_l4proto, ptr %call2.i, i32 0, i32 2
  %14 = ptrtoint ptr %nlattr_size.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %nlattr_size.i, align 2
  %nlattr_tuple_size.i = getelementptr inbounds %struct.nf_conntrack_l4proto, ptr %call2.i, i32 0, i32 7
  %16 = ptrtoint ptr %nlattr_tuple_size.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %nlattr_tuple_size.i, align 4
  %tobool.not.i54 = icmp eq ptr %17, null
  br i1 %tobool.not.i54, label %ctnetlink_timestamp_size.exit.ctnetlink_proto_size.exit_crit_edge, label %if.then.i

ctnetlink_timestamp_size.exit.ctnetlink_proto_size.exit_crit_edge: ; preds = %ctnetlink_timestamp_size.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %ctnetlink_proto_size.exit

if.then.i:                                        ; preds = %ctnetlink_timestamp_size.exit
  call void @__sanitizer_cov_trace_pc() #18
  %call4.i = call i32 %17() #16
  %mul5.i = mul i32 %call4.i, 3
  br label %ctnetlink_proto_size.exit

ctnetlink_proto_size.exit:                        ; preds = %if.then.i, %ctnetlink_timestamp_size.exit.ctnetlink_proto_size.exit_crit_edge
  %len4.0.i = phi i32 [ %mul5.i, %if.then.i ], [ 0, %ctnetlink_timestamp_size.exit.ctnetlink_proto_size.exit_crit_edge ]
  %mul.i = mul i32 %call.i53, 3
  %conv.i = zext i16 %15 to i32
  %add.i55 = add i32 %add2459, 72
  %add6.i = add i32 %add.i55, %retval.0.i52
  %add26 = add i32 %add6.i, %mul.i
  %add36 = add i32 %add26, %conv.i
  %add38 = add i32 %add36, %len4.0.i
  ret i32 %add38
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ctnetlink_glue_build(ptr noundef %skb, ptr noundef %ct, i32 noundef %ctinfo, i16 noundef zeroext %ct_attr, i16 noundef zeroext %ct_info_attr) #2 align 64 {
entry:
  %tmp.i.i = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  %tmp.i.i174.i = alloca i32, align 4
  %tmp.i.i170.i = alloca i32, align 4
  %tmp.i.i166.i = alloca i32, align 4
  %tmp.i.i154.i = alloca i16, align 2
  %tmp.i.i137.i = alloca i16, align 2
  %tmp.i.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = or i16 %ct_attr, -32768
  %or.i = zext i16 %0 to i32
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %1 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef %or.i, i32 noundef 0, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %tobool.not98 = icmp eq ptr %2, null
  %tobool.not = select i1 %cmp.i.i, i1 true, i1 %tobool.not98
  br i1 %tobool.not, label %entry.nla_put_failure_crit_edge, label %if.end

entry.nla_put_failure_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %nla_put_failure

if.end:                                           ; preds = %entry
  %zone.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 3
  %3 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 32769, i32 noundef 0, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call1.i.i.i, 0
  %tobool.not184.i = icmp eq ptr %4, null
  %tobool.not.i = select i1 %cmp.i.i.i, i1 true, i1 %tobool.not184.i
  br i1 %tobool.not.i, label %if.end.nla_put_failure_crit_edge, label %if.end.i

if.end.nla_put_failure_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %nla_put_failure

if.end.i:                                         ; preds = %if.end
  %tuple.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 0, i32 1
  %call2.i = tail call fastcc i32 @ctnetlink_dump_tuples(ptr noundef %skb, ptr noundef %tuple.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %if.end.i.nla_put_failure_crit_edge, label %if.end4.i

if.end.i.nla_put_failure_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nla_put_failure

if.end4.i:                                        ; preds = %if.end.i
  %5 = ptrtoint ptr %zone.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %zone.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp.i.i15 = icmp eq i16 %6, 0
  br i1 %cmp.i.i15, label %if.end4.i.if.end8.i_crit_edge, label %lor.lhs.false.i.i

if.end4.i.if.end8.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8.i

lor.lhs.false.i.i:                                ; preds = %if.end4.i
  %dir2.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 3, i32 2
  %7 = ptrtoint ptr %dir2.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %dir2.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp4.not.i.i = icmp eq i8 %8, 1
  br i1 %cmp4.not.i.i, label %ctnetlink_dump_zone_id.exit.i, label %lor.lhs.false.i.i.if.end8.i_crit_edge

lor.lhs.false.i.i.if.end8.i_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8.i

ctnetlink_dump_zone_id.exit.i:                    ; preds = %lor.lhs.false.i.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i.i.i) #16
  %9 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %6, ptr %tmp.i.i.i, align 2
  %call.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 2, ptr noundef nonnull %tmp.i.i.i) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.not.i, label %ctnetlink_dump_zone_id.exit.i.if.end8.i_crit_edge, label %ctnetlink_dump_zone_id.exit.i.nla_put_failure_crit_edge

ctnetlink_dump_zone_id.exit.i.nla_put_failure_crit_edge: ; preds = %ctnetlink_dump_zone_id.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nla_put_failure

ctnetlink_dump_zone_id.exit.i.if.end8.i_crit_edge: ; preds = %ctnetlink_dump_zone_id.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8.i

if.end8.i:                                        ; preds = %ctnetlink_dump_zone_id.exit.i.if.end8.i_crit_edge, %lor.lhs.false.i.i.if.end8.i_crit_edge, %if.end4.i.if.end8.i_crit_edge
  %10 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %11 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %4 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i.i, ptr %4, align 2
  %13 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i134.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 32770, i32 noundef 0, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i134.i)
  %cmp.i.i135.i = icmp slt i32 %call1.i.i134.i, 0
  %tobool11.not185.i = icmp eq ptr %13, null
  %tobool11.not.i = select i1 %cmp.i.i135.i, i1 true, i1 %tobool11.not185.i
  br i1 %tobool11.not.i, label %if.end8.i.nla_put_failure_crit_edge, label %if.end13.i

if.end8.i.nla_put_failure_crit_edge:              ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nla_put_failure

if.end13.i:                                       ; preds = %if.end8.i
  %tuple16.i = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 1, i32 1
  %call17.i = call fastcc i32 @ctnetlink_dump_tuples(ptr noundef %skb, ptr noundef %tuple16.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %cmp18.i = icmp slt i32 %call17.i, 0
  br i1 %cmp18.i, label %if.end13.i.nla_put_failure_crit_edge, label %if.end20.i

if.end13.i.nla_put_failure_crit_edge:             ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nla_put_failure

if.end20.i:                                       ; preds = %if.end13.i
  %14 = ptrtoint ptr %zone.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %zone.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp.i138.i = icmp eq i16 %15, 0
  br i1 %cmp.i138.i, label %if.end20.i.if.end24.i_crit_edge, label %lor.lhs.false.i142.i

if.end20.i.if.end24.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end24.i

lor.lhs.false.i142.i:                             ; preds = %if.end20.i
  %dir2.i139.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 3, i32 2
  %16 = ptrtoint ptr %dir2.i139.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %dir2.i139.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %17)
  %cmp4.not.i141.i = icmp eq i8 %17, 2
  br i1 %cmp4.not.i141.i, label %ctnetlink_dump_zone_id.exit148.i, label %lor.lhs.false.i142.i.if.end24.i_crit_edge

lor.lhs.false.i142.i.if.end24.i_crit_edge:        ; preds = %lor.lhs.false.i142.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end24.i

ctnetlink_dump_zone_id.exit148.i:                 ; preds = %lor.lhs.false.i142.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i.i137.i) #16
  %18 = ptrtoint ptr %tmp.i.i137.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %15, ptr %tmp.i.i137.i, align 2
  %call.i.i143.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 2, ptr noundef nonnull %tmp.i.i137.i) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i.i137.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i143.i)
  %tobool.not.i144.not.i = icmp eq i32 %call.i.i143.i, 0
  br i1 %tobool.not.i144.not.i, label %ctnetlink_dump_zone_id.exit148.i.if.end24.i_crit_edge, label %ctnetlink_dump_zone_id.exit148.i.nla_put_failure_crit_edge

ctnetlink_dump_zone_id.exit148.i.nla_put_failure_crit_edge: ; preds = %ctnetlink_dump_zone_id.exit148.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nla_put_failure

ctnetlink_dump_zone_id.exit148.i.if.end24.i_crit_edge: ; preds = %ctnetlink_dump_zone_id.exit148.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end24.i

if.end24.i:                                       ; preds = %ctnetlink_dump_zone_id.exit148.i.if.end24.i_crit_edge, %lor.lhs.false.i142.i.if.end24.i_crit_edge, %if.end20.i.if.end24.i_crit_edge
  %19 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i150.i = ptrtoint ptr %20 to i32
  %sub.ptr.rhs.cast.i151.i = ptrtoint ptr %13 to i32
  %sub.ptr.sub.i152.i = sub i32 %sub.ptr.lhs.cast.i150.i, %sub.ptr.rhs.cast.i151.i
  %conv.i153.i = trunc i32 %sub.ptr.sub.i152.i to i16
  %21 = ptrtoint ptr %13 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv.i153.i, ptr %13, align 2
  %22 = ptrtoint ptr %zone.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %zone.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %cmp.i155.i = icmp eq i16 %23, 0
  br i1 %cmp.i155.i, label %if.end24.i.if.end29.i_crit_edge, label %lor.lhs.false.i159.i

if.end24.i.if.end29.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29.i

lor.lhs.false.i159.i:                             ; preds = %if.end24.i
  %dir2.i156.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 3, i32 2
  %24 = ptrtoint ptr %dir2.i156.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %dir2.i156.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %25)
  %cmp4.not.i158.i = icmp eq i8 %25, 3
  br i1 %cmp4.not.i158.i, label %ctnetlink_dump_zone_id.exit165.i, label %lor.lhs.false.i159.i.if.end29.i_crit_edge

lor.lhs.false.i159.i.if.end29.i_crit_edge:        ; preds = %lor.lhs.false.i159.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29.i

ctnetlink_dump_zone_id.exit165.i:                 ; preds = %lor.lhs.false.i159.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i.i154.i) #16
  %26 = ptrtoint ptr %tmp.i.i154.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %23, ptr %tmp.i.i154.i, align 2
  %call.i.i160.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 18, i32 noundef 2, ptr noundef nonnull %tmp.i.i154.i) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i.i154.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i160.i)
  %tobool.not.i161.not.i = icmp eq i32 %call.i.i160.i, 0
  br i1 %tobool.not.i161.not.i, label %ctnetlink_dump_zone_id.exit165.i.if.end29.i_crit_edge, label %ctnetlink_dump_zone_id.exit165.i.nla_put_failure_crit_edge

ctnetlink_dump_zone_id.exit165.i.nla_put_failure_crit_edge: ; preds = %ctnetlink_dump_zone_id.exit165.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nla_put_failure

ctnetlink_dump_zone_id.exit165.i.if.end29.i_crit_edge: ; preds = %ctnetlink_dump_zone_id.exit165.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29.i

if.end29.i:                                       ; preds = %ctnetlink_dump_zone_id.exit165.i.if.end29.i_crit_edge, %lor.lhs.false.i159.i.if.end29.i_crit_edge, %if.end24.i.if.end29.i_crit_edge
  %call.i.i = call i32 @nf_ct_get_id(ptr noundef %ct) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i166.i) #16
  %27 = ptrtoint ptr %tmp.i.i166.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call.i.i, ptr %tmp.i.i166.i, align 4
  %call.i.i167.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 12, i32 noundef 4, ptr noundef nonnull %tmp.i.i166.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i166.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i167.i)
  %tobool.not.i168.not.i = icmp eq i32 %call.i.i167.i, 0
  br i1 %tobool.not.i168.not.i, label %if.end33.i, label %if.end29.i.nla_put_failure_crit_edge

if.end29.i.nla_put_failure_crit_edge:             ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nla_put_failure

if.end33.i:                                       ; preds = %if.end29.i
  %status.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 5
  %28 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %status.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i170.i) #16
  %30 = ptrtoint ptr %tmp.i.i170.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %tmp.i.i170.i, align 4
  %call.i.i171.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i.i170.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i170.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i171.i)
  %tobool.not.i172.not.i = icmp eq i32 %call.i.i171.i, 0
  br i1 %tobool.not.i172.not.i, label %if.end37.i, label %if.end33.i.nla_put_failure_crit_edge

if.end33.i.nla_put_failure_crit_edge:             ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nla_put_failure

if.end37.i:                                       ; preds = %if.end33.i
  %timeout1.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 2
  %31 = ptrtoint ptr %timeout1.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %timeout1.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %33 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %32, %33
  %34 = call i32 @llvm.smax.i32(i32 %sub.i.i, i32 0) #16
  %div.i = udiv i32 %34, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #16
  %35 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %div.i, ptr %tmp.i.i, align 4
  %call.i.i74 = call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i74)
  %tobool2.not.i.not = icmp eq i32 %call.i.i74, 0
  br i1 %tobool2.not.i.not, label %if.end41.i, label %if.end37.i.nla_put_failure_crit_edge

if.end37.i.nla_put_failure_crit_edge:             ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nla_put_failure

if.end41.i:                                       ; preds = %if.end37.i
  %protonum.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 0, i32 1, i32 1, i32 2
  %36 = ptrtoint ptr %protonum.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %protonum.i.i, align 2
  %call1.i61 = call ptr @nf_ct_l4proto_find(i8 noundef zeroext %37) #16
  %to_nlattr.i = getelementptr inbounds %struct.nf_conntrack_l4proto, ptr %call1.i61, i32 0, i32 4
  %38 = ptrtoint ptr %to_nlattr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %to_nlattr.i, align 4
  %tobool.not.i62 = icmp eq ptr %39, null
  br i1 %tobool.not.i62, label %if.end41.i.if.end45.i_crit_edge, label %if.end.i66

if.end41.i.if.end45.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end45.i

if.end.i66:                                       ; preds = %if.end41.i
  %40 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i.i64 = call i32 @nla_put(ptr noundef %skb, i32 noundef 32772, i32 noundef 0, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i64)
  %cmp.i.i.i65 = icmp slt i32 %call1.i.i.i64, 0
  %tobool3.not18.i = icmp eq ptr %41, null
  %tobool3.not.i = select i1 %cmp.i.i.i65, i1 true, i1 %tobool3.not18.i
  br i1 %tobool3.not.i, label %if.end.i66.nla_put_failure_crit_edge, label %ctnetlink_dump_protoinfo.exit

if.end.i66.nla_put_failure_crit_edge:             ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #18
  br label %nla_put_failure

ctnetlink_dump_protoinfo.exit:                    ; preds = %if.end.i66
  %42 = ptrtoint ptr %to_nlattr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %to_nlattr.i, align 4
  %call8.i67 = call i32 %43(ptr noundef %skb, ptr noundef nonnull %41, ptr noundef %ct, i1 noundef zeroext false) #16
  %44 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i68 = ptrtoint ptr %45 to i32
  %sub.ptr.rhs.cast.i.i69 = ptrtoint ptr %41 to i32
  %sub.ptr.sub.i.i70 = sub i32 %sub.ptr.lhs.cast.i.i68, %sub.ptr.rhs.cast.i.i69
  %conv.i.i71 = trunc i32 %sub.ptr.sub.i.i70 to i16
  %46 = ptrtoint ptr %41 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv.i.i71, ptr %41, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i67)
  %cmp43.i = icmp slt i32 %call8.i67, 0
  br i1 %cmp43.i, label %ctnetlink_dump_protoinfo.exit.nla_put_failure_crit_edge, label %ctnetlink_dump_protoinfo.exit.if.end45.i_crit_edge

ctnetlink_dump_protoinfo.exit.if.end45.i_crit_edge: ; preds = %ctnetlink_dump_protoinfo.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end45.i

ctnetlink_dump_protoinfo.exit.nla_put_failure_crit_edge: ; preds = %ctnetlink_dump_protoinfo.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %nla_put_failure

if.end45.i:                                       ; preds = %ctnetlink_dump_protoinfo.exit.if.end45.i_crit_edge, %if.end41.i.if.end45.i_crit_edge
  %ext.i.i.i.i48 = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 13
  %47 = ptrtoint ptr %ext.i.i.i.i48 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ext.i.i.i.i48, align 8
  %tobool.not.i.i.i.i49 = icmp eq ptr %48, null
  br i1 %tobool.not.i.i.i.i49, label %if.end45.i.lor.lhs.false.i_crit_edge, label %nf_ct_ext_exist.exit.i.i.i52

if.end45.i.lor.lhs.false.i_crit_edge:             ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false.i

nf_ct_ext_exist.exit.i.i.i52:                     ; preds = %if.end45.i
  %arrayidx.i.i.i.i.i50 = getelementptr [10 x i8], ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %arrayidx.i.i.i.i.i50 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx.i.i.i.i.i50, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.i.i.not.i.i.i51 = icmp eq i8 %50, 0
  br i1 %tobool.i.i.not.i.i.i51, label %nf_ct_ext_exist.exit.i.i.i52.lor.lhs.false.i_crit_edge, label %nf_conn_acct_find.exit.i

nf_ct_ext_exist.exit.i.i.i52.lor.lhs.false.i_crit_edge: ; preds = %nf_ct_ext_exist.exit.i.i.i52
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false.i

nf_conn_acct_find.exit.i:                         ; preds = %nf_ct_ext_exist.exit.i.i.i52
  %conv.i.i.i53 = zext i8 %50 to i32
  %add.ptr.i.i.i54 = getelementptr i8, ptr %48, i32 %conv.i.i.i53
  %tobool.not.i55 = icmp eq ptr %add.ptr.i.i.i54, null
  br i1 %tobool.not.i55, label %nf_conn_acct_find.exit.i.lor.lhs.false.i_crit_edge, label %if.end.i57

nf_conn_acct_find.exit.i.lor.lhs.false.i_crit_edge: ; preds = %nf_conn_acct_find.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false.i

if.end.i57:                                       ; preds = %nf_conn_acct_find.exit.i
  %call1.i = call fastcc i32 @dump_counters(ptr noundef %skb, ptr noundef nonnull %add.ptr.i.i.i54, i32 noundef 0, i32 noundef 1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i56 = icmp slt i32 %call1.i, 0
  br i1 %cmp.i56, label %if.end.i57.nla_put_failure_crit_edge, label %ctnetlink_dump_acct.exit

if.end.i57.nla_put_failure_crit_edge:             ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_pc() #18
  br label %nla_put_failure

ctnetlink_dump_acct.exit:                         ; preds = %if.end.i57
  %call4.i58 = call fastcc i32 @dump_counters(ptr noundef %skb, ptr noundef nonnull %add.ptr.i.i.i54, i32 noundef 1, i32 noundef 1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i58)
  %cmp47.i = icmp slt i32 %call4.i58, 0
  br i1 %cmp47.i, label %ctnetlink_dump_acct.exit.nla_put_failure_crit_edge, label %ctnetlink_dump_acct.exit.lor.lhs.false.i_crit_edge

ctnetlink_dump_acct.exit.lor.lhs.false.i_crit_edge: ; preds = %ctnetlink_dump_acct.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false.i

ctnetlink_dump_acct.exit.nla_put_failure_crit_edge: ; preds = %ctnetlink_dump_acct.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %nla_put_failure

lor.lhs.false.i:                                  ; preds = %ctnetlink_dump_acct.exit.lor.lhs.false.i_crit_edge, %nf_conn_acct_find.exit.i.lor.lhs.false.i_crit_edge, %nf_ct_ext_exist.exit.i.i.i52.lor.lhs.false.i_crit_edge, %if.end45.i.lor.lhs.false.i_crit_edge
  %call48.i = call fastcc i32 @ctnetlink_dump_timestamp(ptr noundef %skb, ptr noundef %ct) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i)
  %cmp49.i = icmp slt i32 %call48.i, 0
  br i1 %cmp49.i, label %lor.lhs.false.i.nla_put_failure_crit_edge, label %if.end51.i

lor.lhs.false.i.nla_put_failure_crit_edge:        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nla_put_failure

if.end51.i:                                       ; preds = %lor.lhs.false.i
  %call52.i = call fastcc i32 @ctnetlink_dump_helpinfo(ptr noundef %skb, ptr noundef %ct) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i)
  %cmp53.i = icmp slt i32 %call52.i, 0
  br i1 %cmp53.i, label %if.end51.i.nla_put_failure_crit_edge, label %if.end55.i

if.end51.i.nla_put_failure_crit_edge:             ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nla_put_failure

if.end55.i:                                       ; preds = %if.end51.i
  %secmark.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 12
  %51 = ptrtoint ptr %secmark.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %secmark.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool56.not.i = icmp eq i32 %52, 0
  br i1 %tobool56.not.i, label %if.end55.i.if.end60.i_crit_edge, label %land.lhs.true.i

if.end55.i.if.end60.i_crit_edge:                  ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end60.i

land.lhs.true.i:                                  ; preds = %if.end55.i
  %call57.i = call fastcc i32 @ctnetlink_dump_secctx(ptr noundef %skb, ptr noundef %ct) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i)
  %cmp58.i = icmp slt i32 %call57.i, 0
  br i1 %cmp58.i, label %land.lhs.true.i.nla_put_failure_crit_edge, label %land.lhs.true.i.if.end60.i_crit_edge

land.lhs.true.i.if.end60.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end60.i

land.lhs.true.i.nla_put_failure_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nla_put_failure

if.end60.i:                                       ; preds = %land.lhs.true.i.if.end60.i_crit_edge, %if.end55.i.if.end60.i_crit_edge
  %master.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 10
  %53 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %master.i, align 4
  %tobool61.not.i = icmp eq ptr %54, null
  br i1 %tobool61.not.i, label %if.end60.i.if.end66.i_crit_edge, label %land.lhs.true62.i

if.end60.i.if.end66.i_crit_edge:                  ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end66.i

land.lhs.true62.i:                                ; preds = %if.end60.i
  %55 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %status.i.i, align 8
  %and.i33 = and i32 %56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i33)
  %tobool.not.i34 = icmp eq i32 %and.i33, 0
  br i1 %tobool.not.i34, label %land.lhs.true62.i.if.end66.i_crit_edge, label %if.end.i39

land.lhs.true62.i.if.end66.i_crit_edge:           ; preds = %land.lhs.true62.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end66.i

if.end.i39:                                       ; preds = %land.lhs.true62.i
  %57 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i.i36 = call i32 @nla_put(ptr noundef %skb, i32 noundef 32782, i32 noundef 0, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i36)
  %cmp.i.i.i37 = icmp slt i32 %call1.i.i.i36, 0
  %tobool1.not12.i = icmp eq ptr %58, null
  %tobool1.not.i38 = select i1 %cmp.i.i.i37, i1 true, i1 %tobool1.not12.i
  br i1 %tobool1.not.i38, label %if.end.i39.nla_put_failure_crit_edge, label %if.end3.i

if.end.i39.nla_put_failure_crit_edge:             ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #18
  br label %nla_put_failure

if.end3.i:                                        ; preds = %if.end.i39
  %59 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %master.i, align 4
  %tuple.i41 = getelementptr inbounds %struct.nf_conn, ptr %60, i32 0, i32 4, i32 0, i32 1
  %call4.i = call fastcc i32 @ctnetlink_dump_tuples(ptr noundef %skb, ptr noundef %tuple.i41) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i42 = icmp slt i32 %call4.i, 0
  br i1 %cmp.i42, label %if.end3.i.nla_put_failure_crit_edge, label %if.end6.i

if.end3.i.nla_put_failure_crit_edge:              ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nla_put_failure

if.end6.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #18
  %61 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i43 = ptrtoint ptr %62 to i32
  %sub.ptr.rhs.cast.i.i44 = ptrtoint ptr %58 to i32
  %sub.ptr.sub.i.i45 = sub i32 %sub.ptr.lhs.cast.i.i43, %sub.ptr.rhs.cast.i.i44
  %conv.i.i46 = trunc i32 %sub.ptr.sub.i.i45 to i16
  %63 = ptrtoint ptr %58 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %conv.i.i46, ptr %58, align 2
  br label %if.end66.i

if.end66.i:                                       ; preds = %if.end6.i, %land.lhs.true62.i.if.end66.i_crit_edge, %if.end60.i.if.end66.i_crit_edge
  %64 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %status.i.i, align 8
  %and.i = and i32 %65, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool67.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool67.not.i, label %if.end66.i.if.end72.i_crit_edge, label %land.lhs.true68.i

if.end66.i.if.end72.i_crit_edge:                  ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end72.i

land.lhs.true68.i:                                ; preds = %if.end66.i
  %66 = ptrtoint ptr %ext.i.i.i.i48 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ext.i.i.i.i48, align 8
  %tobool.not.i.i.i.i20 = icmp eq ptr %67, null
  br i1 %tobool.not.i.i.i.i20, label %land.lhs.true68.i.if.end72.i_crit_edge, label %nf_ct_ext_exist.exit.i.i.i23

land.lhs.true68.i.if.end72.i_crit_edge:           ; preds = %land.lhs.true68.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end72.i

nf_ct_ext_exist.exit.i.i.i23:                     ; preds = %land.lhs.true68.i
  %arrayidx.i.i.i.i.i21 = getelementptr [10 x i8], ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %arrayidx.i.i.i.i.i21 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx.i.i.i.i.i21, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool.i.i.not.i.i.i22 = icmp eq i8 %69, 0
  br i1 %tobool.i.i.not.i.i.i22, label %nf_ct_ext_exist.exit.i.i.i23.if.end72.i_crit_edge, label %nfct_seqadj.exit.i

nf_ct_ext_exist.exit.i.i.i23.if.end72.i_crit_edge: ; preds = %nf_ct_ext_exist.exit.i.i.i23
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end72.i

nfct_seqadj.exit.i:                               ; preds = %nf_ct_ext_exist.exit.i.i.i23
  %conv.i.i.i24 = zext i8 %69 to i32
  %add.ptr.i.i.i25 = getelementptr i8, ptr %67, i32 %conv.i.i.i24
  %tobool1.not.i = icmp eq ptr %add.ptr.i.i.i25, null
  br i1 %tobool1.not.i, label %nfct_seqadj.exit.i.if.end72.i_crit_edge, label %if.end.i30

nfct_seqadj.exit.i.if.end72.i_crit_edge:          ; preds = %nfct_seqadj.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end72.i

if.end.i30:                                       ; preds = %nfct_seqadj.exit.i
  %lock.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 1
  call void @_raw_spin_lock_bh(ptr noundef %lock.i) #16
  %call3.i28 = call fastcc i32 @dump_ct_seq_adj(ptr noundef %skb, ptr noundef nonnull %add.ptr.i.i.i25, i32 noundef 15) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call3.i28)
  %cmp.i29 = icmp eq i32 %call3.i28, -1
  br i1 %cmp.i29, label %if.end.i30.ctnetlink_dump_ct_seq_adj.exit.thread91_crit_edge, label %if.end5.i

if.end.i30.ctnetlink_dump_ct_seq_adj.exit.thread91_crit_edge: ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #18
  br label %ctnetlink_dump_ct_seq_adj.exit.thread91

if.end5.i:                                        ; preds = %if.end.i30
  %arrayidx7.i = getelementptr [2 x %struct.nf_ct_seqadj], ptr %add.ptr.i.i.i25, i32 0, i32 1
  %call8.i = call fastcc i32 @dump_ct_seq_adj(ptr noundef %skb, ptr noundef %arrayidx7.i, i32 noundef 16) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call8.i)
  %cmp9.i = icmp eq i32 %call8.i, -1
  br i1 %cmp9.i, label %if.end5.i.ctnetlink_dump_ct_seq_adj.exit.thread91_crit_edge, label %ctnetlink_dump_ct_seq_adj.exit

if.end5.i.ctnetlink_dump_ct_seq_adj.exit.thread91_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ctnetlink_dump_ct_seq_adj.exit.thread91

ctnetlink_dump_ct_seq_adj.exit.thread91:          ; preds = %if.end5.i.ctnetlink_dump_ct_seq_adj.exit.thread91_crit_edge, %if.end.i30.ctnetlink_dump_ct_seq_adj.exit.thread91_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #16
  br label %nla_put_failure

ctnetlink_dump_ct_seq_adj.exit:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #16
  br label %if.end72.i

if.end72.i:                                       ; preds = %ctnetlink_dump_ct_seq_adj.exit, %nfct_seqadj.exit.i.if.end72.i_crit_edge, %nf_ct_ext_exist.exit.i.i.i23.if.end72.i_crit_edge, %land.lhs.true68.i.if.end72.i_crit_edge, %if.end66.i.if.end72.i_crit_edge
  %call73.i = call fastcc i32 @ctnetlink_dump_ct_synproxy(ptr noundef %skb, ptr noundef %ct) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73.i)
  %cmp74.i = icmp slt i32 %call73.i, 0
  br i1 %cmp74.i, label %if.end72.i.nla_put_failure_crit_edge, label %if.end76.i

if.end72.i.nla_put_failure_crit_edge:             ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nla_put_failure

if.end76.i:                                       ; preds = %if.end72.i
  %mark.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 11
  %70 = ptrtoint ptr %mark.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %mark.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool77.not.i = icmp eq i32 %71, 0
  br i1 %tobool77.not.i, label %if.end76.i.if.end82.i_crit_edge, label %land.lhs.true78.i

if.end76.i.if.end82.i_crit_edge:                  ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end82.i

land.lhs.true78.i:                                ; preds = %if.end76.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i174.i) #16
  %72 = ptrtoint ptr %tmp.i.i174.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %tmp.i.i174.i, align 4
  %call.i.i175.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 8, i32 noundef 4, ptr noundef nonnull %tmp.i.i174.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i174.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i175.i)
  %tobool.not.i176.not.i = icmp eq i32 %call.i.i175.i, 0
  br i1 %tobool.not.i176.not.i, label %land.lhs.true78.i.if.end82.i_crit_edge, label %land.lhs.true78.i.nla_put_failure_crit_edge

land.lhs.true78.i.nla_put_failure_crit_edge:      ; preds = %land.lhs.true78.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nla_put_failure

land.lhs.true78.i.if.end82.i_crit_edge:           ; preds = %land.lhs.true78.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end82.i

if.end82.i:                                       ; preds = %land.lhs.true78.i.if.end82.i_crit_edge, %if.end76.i.if.end82.i_crit_edge
  %73 = ptrtoint ptr %ext.i.i.i.i48 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ext.i.i.i.i48, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %74, null
  br i1 %tobool.not.i.i.i.i, label %if.end82.i.if.end4_crit_edge, label %nf_ct_ext_exist.exit.i.i.i

if.end82.i.if.end4_crit_edge:                     ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4

nf_ct_ext_exist.exit.i.i.i:                       ; preds = %if.end82.i
  %arrayidx.i.i.i.i.i = getelementptr [10 x i8], ptr %74, i32 0, i32 7
  %75 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx.i.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool.i.i.not.i.i.i = icmp eq i8 %76, 0
  br i1 %tobool.i.i.not.i.i.i, label %nf_ct_ext_exist.exit.i.i.i.if.end4_crit_edge, label %nf_ct_labels_find.exit.i

nf_ct_ext_exist.exit.i.i.i.if.end4_crit_edge:     ; preds = %nf_ct_ext_exist.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4

nf_ct_labels_find.exit.i:                         ; preds = %nf_ct_ext_exist.exit.i.i.i
  %conv.i.i.i = zext i8 %76 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %74, i32 %conv.i.i.i
  %tobool.not.i16 = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool.not.i16, label %nf_ct_labels_find.exit.i.if.end4_crit_edge, label %do.body.preheader.i

nf_ct_labels_find.exit.i.if.end4_crit_edge:       ; preds = %nf_ct_labels_find.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4

do.body.preheader.i:                              ; preds = %nf_ct_labels_find.exit.i
  %77 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %add.ptr.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp.not.i = icmp eq i32 %78, 0
  br i1 %cmp.not.i, label %if.end4.i17, label %do.body.preheader.i.ctnetlink_dump_labels.exit_crit_edge

do.body.preheader.i.ctnetlink_dump_labels.exit_crit_edge: ; preds = %do.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ctnetlink_dump_labels.exit

if.end4.i17:                                      ; preds = %do.body.preheader.i
  %arrayidx.1.i = getelementptr [4 x i32], ptr %add.ptr.i.i.i, i32 0, i32 1
  %79 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp.not.1.i = icmp eq i32 %80, 0
  br i1 %cmp.not.1.i, label %if.end4.1.i, label %if.end4.i17.ctnetlink_dump_labels.exit_crit_edge

if.end4.i17.ctnetlink_dump_labels.exit_crit_edge: ; preds = %if.end4.i17
  call void @__sanitizer_cov_trace_pc() #18
  br label %ctnetlink_dump_labels.exit

if.end4.1.i:                                      ; preds = %if.end4.i17
  %arrayidx.2.i = getelementptr [4 x i32], ptr %add.ptr.i.i.i, i32 0, i32 2
  %81 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp.not.2.i = icmp eq i32 %82, 0
  br i1 %cmp.not.2.i, label %if.end4.2.i, label %if.end4.1.i.ctnetlink_dump_labels.exit_crit_edge

if.end4.1.i.ctnetlink_dump_labels.exit_crit_edge: ; preds = %if.end4.1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ctnetlink_dump_labels.exit

if.end4.2.i:                                      ; preds = %if.end4.1.i
  %arrayidx.3.i = getelementptr [4 x i32], ptr %add.ptr.i.i.i, i32 0, i32 3
  %83 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp.not.3.i = icmp eq i32 %84, 0
  br i1 %cmp.not.3.i, label %if.end4.2.i.if.end4_crit_edge, label %if.end4.2.i.ctnetlink_dump_labels.exit_crit_edge

if.end4.2.i.ctnetlink_dump_labels.exit_crit_edge: ; preds = %if.end4.2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ctnetlink_dump_labels.exit

if.end4.2.i.if.end4_crit_edge:                    ; preds = %if.end4.2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4

ctnetlink_dump_labels.exit:                       ; preds = %if.end4.2.i.ctnetlink_dump_labels.exit_crit_edge, %if.end4.1.i.ctnetlink_dump_labels.exit_crit_edge, %if.end4.i17.ctnetlink_dump_labels.exit_crit_edge, %do.body.preheader.i.ctnetlink_dump_labels.exit_crit_edge
  %call3.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 22, i32 noundef 16, ptr noundef nonnull %add.ptr.i.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp84.i = icmp slt i32 %call3.i, 0
  br i1 %cmp84.i, label %ctnetlink_dump_labels.exit.nla_put_failure_crit_edge, label %ctnetlink_dump_labels.exit.if.end4_crit_edge

ctnetlink_dump_labels.exit.if.end4_crit_edge:     ; preds = %ctnetlink_dump_labels.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4

ctnetlink_dump_labels.exit.nla_put_failure_crit_edge: ; preds = %ctnetlink_dump_labels.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %nla_put_failure

if.end4:                                          ; preds = %ctnetlink_dump_labels.exit.if.end4_crit_edge, %if.end4.2.i.if.end4_crit_edge, %nf_ct_labels_find.exit.i.if.end4_crit_edge, %nf_ct_ext_exist.exit.i.i.i.if.end4_crit_edge, %if.end82.i.if.end4_crit_edge
  %85 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %86 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %2 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %87 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %conv.i, ptr %2, align 2
  %conv6 = zext i16 %ct_info_attr to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #16
  %88 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %ctinfo, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef %conv6, i32 noundef 4, ptr noundef nonnull %tmp.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not = icmp eq i32 %call.i, 0
  br i1 %tobool8.not, label %if.end4.cleanup_crit_edge, label %if.end4.nla_put_failure_crit_edge

if.end4.nla_put_failure_crit_edge:                ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %nla_put_failure

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

nla_put_failure:                                  ; preds = %if.end4.nla_put_failure_crit_edge, %ctnetlink_dump_labels.exit.nla_put_failure_crit_edge, %land.lhs.true78.i.nla_put_failure_crit_edge, %if.end72.i.nla_put_failure_crit_edge, %ctnetlink_dump_ct_seq_adj.exit.thread91, %if.end3.i.nla_put_failure_crit_edge, %if.end.i39.nla_put_failure_crit_edge, %land.lhs.true.i.nla_put_failure_crit_edge, %if.end51.i.nla_put_failure_crit_edge, %lor.lhs.false.i.nla_put_failure_crit_edge, %ctnetlink_dump_acct.exit.nla_put_failure_crit_edge, %if.end.i57.nla_put_failure_crit_edge, %ctnetlink_dump_protoinfo.exit.nla_put_failure_crit_edge, %if.end.i66.nla_put_failure_crit_edge, %if.end37.i.nla_put_failure_crit_edge, %if.end33.i.nla_put_failure_crit_edge, %if.end29.i.nla_put_failure_crit_edge, %ctnetlink_dump_zone_id.exit165.i.nla_put_failure_crit_edge, %ctnetlink_dump_zone_id.exit148.i.nla_put_failure_crit_edge, %if.end13.i.nla_put_failure_crit_edge, %if.end8.i.nla_put_failure_crit_edge, %ctnetlink_dump_zone_id.exit.i.nla_put_failure_crit_edge, %if.end.i.nla_put_failure_crit_edge, %if.end.nla_put_failure_crit_edge, %entry.nla_put_failure_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %nla_put_failure, %if.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ -28, %nla_put_failure ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ctnetlink_glue_parse(ptr noundef %attr, ptr noundef %ct) #2 align 64 {
entry:
  %cda = alloca [27 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 108, ptr nonnull %cda) #16
  %0 = call ptr @memset(ptr %cda, i32 255, i32 108)
  %add.ptr.i.i = getelementptr i8, ptr %attr, i32 4
  %1 = ptrtoint ptr %attr to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %attr, align 2
  %conv.i.i = zext i16 %2 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %cda, i32 noundef 26, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @ct_nla_policy, i32 noundef 0, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx.i = getelementptr inbounds ptr, ptr %cda, i32 7
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.end.if.end2.i_crit_edge, label %if.then.i

if.end.if.end2.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end2.i

if.then.i:                                        ; preds = %if.end
  %add.ptr.i.i.i.i = getelementptr i8, ptr %4, i32 4
  %5 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr.i.i.i.i, align 4
  %conv.i.i5 = zext i32 %6 to i64
  %mul.i.i = mul nuw nsw i64 %conv.i.i5, 100
  %7 = call i64 @llvm.umin.i64(i64 %mul.i.i, i64 2147483647) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %conv4.i.i = trunc i64 %7 to i32
  %add.i.i = add i32 %8, %conv4.i.i
  %timeout5.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 2
  %9 = ptrtoint ptr %timeout5.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 %add.i.i, ptr %timeout5.i.i, align 8
  %status.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 5
  %10 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %status.i.i, align 4
  %.mask.i = and i32 %11, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i)
  %cmp.not.i = icmp eq i32 %.mask.i, 0
  br i1 %cmp.not.i, label %if.then.i.if.end2.i_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then.i.if.end2.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end2.i

if.end2.i:                                        ; preds = %if.then.i.if.end2.i_crit_edge, %if.end.if.end2.i_crit_edge
  %arrayidx3.i = getelementptr inbounds ptr, ptr %cda, i32 3
  %12 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx3.i, align 4
  %tobool4.not.i = icmp eq ptr %13, null
  br i1 %tobool4.not.i, label %if.end2.i.if.end10.i_crit_edge, label %if.then5.i

if.end2.i.if.end10.i_crit_edge:                   ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10.i

if.then5.i:                                       ; preds = %if.end2.i
  %add.ptr.i.i.i52.i = getelementptr i8, ptr %13, i32 4
  %14 = ptrtoint ptr %add.ptr.i.i.i52.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i.i.i52.i, align 4
  %status1.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 5
  %16 = ptrtoint ptr %status1.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %status1.i.i, align 8
  %xor.i.i = xor i32 %17, %15
  %and.i.i = and i32 %xor.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i53.i = icmp ne i32 %and.i.i, 0
  %and2.i.i = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool3.not.i.i = icmp eq i32 %and2.i.i, 0
  %or.cond.i.i = select i1 %tobool.not.i53.i, i1 %tobool3.not.i.i, i1 false
  br i1 %or.cond.i.i, label %if.then5.i.cleanup_crit_edge, label %if.end.i.i

if.then5.i.cleanup_crit_edge:                     ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i.i:                                       ; preds = %if.then5.i
  %and4.i.i = and i32 %xor.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i)
  %tobool5.not.i.i = icmp ne i32 %and4.i.i, 0
  %and7.i.i = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i)
  %tobool8.not.i.i = icmp eq i32 %and7.i.i, 0
  %or.cond18.i.i = select i1 %tobool5.not.i.i, i1 %tobool8.not.i.i, i1 false
  br i1 %or.cond18.i.i, label %if.end.i.i.cleanup_crit_edge, label %if.end10.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end10.i.i:                                     ; preds = %if.end.i.i
  %neg.i.i = xor i32 %15, -1
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.end10.i.i
  %bit.017.i.i.i = phi i32 [ 0, %if.end10.i.i ], [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %shl.i.i.i = shl nuw nsw i32 1, %bit.017.i.i.i
  %and.i.i.i = and i32 %shl.i.i.i, -56314
  %and2.i.i.i = and i32 %and.i.i.i, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @_set_bit(i32 noundef %bit.017.i.i.i, ptr noundef %status1.i.i) #16
  br label %for.inc.i.i.i

if.else.i.i.i:                                    ; preds = %for.body.i.i.i
  %and4.i.i.i = and i32 %and.i.i.i, %neg.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i.i)
  %tobool5.not.i.i.i = icmp eq i32 %and4.i.i.i, 0
  br i1 %tobool5.not.i.i.i, label %if.else.i.i.i.for.inc.i.i.i_crit_edge, label %if.then6.i.i.i

if.else.i.i.i.for.inc.i.i.i_crit_edge:            ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i.i

if.then6.i.i.i:                                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @_clear_bit(i32 noundef %bit.017.i.i.i, ptr noundef %status1.i.i) #16
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %if.then6.i.i.i, %if.else.i.i.i.for.inc.i.i.i_crit_edge, %if.then.i.i.i
  %inc.i.i.i = add nuw nsw i32 %bit.017.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 16
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.if.end10.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i.i

for.inc.i.i.i.if.end10.i_crit_edge:               ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10.i

if.end10.i:                                       ; preds = %for.inc.i.i.i.if.end10.i_crit_edge, %if.end2.i.if.end10.i_crit_edge
  %arrayidx11.i = getelementptr inbounds ptr, ptr %cda, i32 5
  %18 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx11.i, align 4
  %tobool12.not.i = icmp eq ptr %19, null
  br i1 %tobool12.not.i, label %if.end10.i.if.end18.i_crit_edge, label %if.then13.i

if.end10.i.if.end18.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18.i

if.then13.i:                                      ; preds = %if.end10.i
  %call14.i = call fastcc i32 @ctnetlink_change_helper(ptr noundef %ct, ptr noundef nonnull %cda) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp15.i = icmp slt i32 %call14.i, 0
  br i1 %cmp15.i, label %if.then13.i.cleanup_crit_edge, label %if.then13.i.if.end18.i_crit_edge

if.then13.i.if.end18.i_crit_edge:                 ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18.i

if.then13.i.cleanup_crit_edge:                    ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end18.i:                                       ; preds = %if.then13.i.if.end18.i_crit_edge, %if.end10.i.if.end18.i_crit_edge
  %arrayidx19.i = getelementptr inbounds ptr, ptr %cda, i32 22
  %20 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx19.i, align 4
  %tobool20.not.i = icmp eq ptr %21, null
  br i1 %tobool20.not.i, label %if.end18.i.if.end26.i_crit_edge, label %if.then21.i

if.end18.i.if.end26.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26.i

if.then21.i:                                      ; preds = %if.end18.i
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %21, align 2
  %conv.i.i.i = zext i16 %23 to i32
  %sub.i.i.i = add nsw i32 %conv.i.i.i, -4
  %arrayidx1.i.i = getelementptr inbounds ptr, ptr %cda, i32 23
  %24 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx1.i.i, align 4
  %and.i55.i = and i32 %conv.i.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i55.i)
  %tobool.not.i56.i = icmp eq i32 %and.i55.i, 0
  br i1 %tobool.not.i56.i, label %if.end.i57.i, label %if.then21.i.cleanup_crit_edge

if.then21.i.cleanup_crit_edge:                    ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i57.i:                                     ; preds = %if.then21.i
  %tobool2.not.i.i = icmp eq ptr %25, null
  br i1 %tobool2.not.i.i, label %if.end.i57.i.ctnetlink_attach_labels.exit.i_crit_edge, label %if.then3.i.i

if.end.i57.i.ctnetlink_attach_labels.exit.i_crit_edge: ; preds = %if.end.i57.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ctnetlink_attach_labels.exit.i

if.then3.i.i:                                     ; preds = %if.end.i57.i
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %25, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %27)
  %cmp.i.i = icmp ne i16 %27, 4
  call void @__sanitizer_cov_trace_cmp2(i16 %27, i16 %23)
  %cmp8.not.i.i = icmp eq i16 %27, %23
  %or.cond.i58.i = select i1 %cmp.i.i, i1 %cmp8.not.i.i, i1 false
  br i1 %or.cond.i58.i, label %if.end10.i59.i, label %if.then3.i.i.cleanup_crit_edge

if.then3.i.i.cleanup_crit_edge:                   ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end10.i59.i:                                   ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i.i.i = getelementptr i8, ptr %25, i32 4
  br label %ctnetlink_attach_labels.exit.i

ctnetlink_attach_labels.exit.i:                   ; preds = %if.end10.i59.i, %if.end.i57.i.ctnetlink_attach_labels.exit.i_crit_edge
  %mask.0.i.i = phi ptr [ %add.ptr.i.i.i, %if.end10.i59.i ], [ null, %if.end.i57.i.ctnetlink_attach_labels.exit.i_crit_edge ]
  %div27.i.i = lshr i32 %sub.i.i.i, 2
  %add.ptr.i32.i.i = getelementptr i8, ptr %21, i32 4
  %call16.i.i = call i32 @nf_connlabels_replace(ptr noundef %ct, ptr noundef %add.ptr.i32.i.i, ptr noundef %mask.0.i.i, i32 noundef %div27.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.i)
  %cmp23.i = icmp slt i32 %call16.i.i, 0
  br i1 %cmp23.i, label %ctnetlink_attach_labels.exit.i.cleanup_crit_edge, label %ctnetlink_attach_labels.exit.i.if.end26.i_crit_edge

ctnetlink_attach_labels.exit.i.if.end26.i_crit_edge: ; preds = %ctnetlink_attach_labels.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26.i

ctnetlink_attach_labels.exit.i.cleanup_crit_edge: ; preds = %ctnetlink_attach_labels.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end26.i:                                       ; preds = %ctnetlink_attach_labels.exit.i.if.end26.i_crit_edge, %if.end18.i.if.end26.i_crit_edge
  %arrayidx27.i = getelementptr inbounds ptr, ptr %cda, i32 8
  %28 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx27.i, align 4
  %tobool28.not.i = icmp eq ptr %29, null
  br i1 %tobool28.not.i, label %if.end26.i.cleanup_crit_edge, label %if.then29.i

if.end26.i.cleanup_crit_edge:                     ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then29.i:                                      ; preds = %if.end26.i
  %arrayidx.i61.i = getelementptr inbounds ptr, ptr %cda, i32 21
  %30 = ptrtoint ptr %arrayidx.i61.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i61.i, align 4
  %tobool.not.i62.i = icmp eq ptr %31, null
  br i1 %tobool.not.i62.i, label %if.then29.i.if.end.i68.i_crit_edge, label %if.then.i.i

if.then29.i.if.end.i68.i_crit_edge:               ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i68.i

if.then.i.i:                                      ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i.i.i63.i = getelementptr i8, ptr %31, i32 4
  %32 = ptrtoint ptr %add.ptr.i.i.i63.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr.i.i.i63.i, align 4
  %neg.i64.i = xor i32 %33, -1
  br label %if.end.i68.i

if.end.i68.i:                                     ; preds = %if.then.i.i, %if.then29.i.if.end.i68.i_crit_edge
  %mask.0.i65.i = phi i32 [ %neg.i64.i, %if.then.i.i ], [ 0, %if.then29.i.if.end.i68.i_crit_edge ]
  %add.ptr.i.i14.i.i = getelementptr i8, ptr %29, i32 4
  %34 = ptrtoint ptr %add.ptr.i.i14.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %add.ptr.i.i14.i.i, align 4
  %mark4.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 11
  %36 = ptrtoint ptr %mark4.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mark4.i.i, align 8
  %and.i66.i = and i32 %37, %mask.0.i65.i
  %xor.i67.i = xor i32 %and.i66.i, %35
  call void @__sanitizer_cov_trace_cmp4(i32 %xor.i67.i, i32 %37)
  %cmp.not.i.i = icmp eq i32 %xor.i67.i, %37
  br i1 %cmp.not.i.i, label %if.end.i68.i.cleanup_crit_edge, label %if.then6.i.i

if.end.i68.i.cleanup_crit_edge:                   ; preds = %if.end.i68.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then6.i.i:                                     ; preds = %if.end.i68.i
  call void @__sanitizer_cov_trace_pc() #18
  %38 = ptrtoint ptr %mark4.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %xor.i67.i, ptr %mark4.i.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then6.i.i, %if.end.i68.i.cleanup_crit_edge, %if.end26.i.cleanup_crit_edge, %ctnetlink_attach_labels.exit.i.cleanup_crit_edge, %if.then3.i.i.cleanup_crit_edge, %if.then21.i.cleanup_crit_edge, %if.then13.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %if.then5.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2.i, %entry.cleanup_crit_edge ], [ -62, %if.then.i.cleanup_crit_edge ], [ %call14.i, %if.then13.i.cleanup_crit_edge ], [ %call16.i.i, %ctnetlink_attach_labels.exit.i.cleanup_crit_edge ], [ 0, %if.end26.i.cleanup_crit_edge ], [ 0, %if.end.i68.i.cleanup_crit_edge ], [ 0, %if.then6.i.i ], [ -16, %if.then5.i.cleanup_crit_edge ], [ -16, %if.end.i.i.cleanup_crit_edge ], [ -22, %if.then21.i.cleanup_crit_edge ], [ -22, %if.then3.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 108, ptr nonnull %cda) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ctnetlink_glue_attach_expect(ptr noundef %attr, ptr noundef %ct, i32 noundef %portid, i32 noundef %report) #2 align 64 {
entry:
  %cda = alloca [12 x ptr], align 4
  %tuple = alloca %struct.nf_conntrack_tuple, align 4
  %mask = alloca %struct.nf_conntrack_tuple, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cda) #16
  %0 = call ptr @memset(ptr %cda, i32 255, i32 48)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %tuple) #16
  %1 = call ptr @memset(ptr %tuple, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %mask) #16
  %2 = call ptr @memset(ptr %mask, i32 255, i32 40)
  %add.ptr.i.i = getelementptr i8, ptr %attr, i32 4
  %3 = ptrtoint ptr %attr to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %attr, align 2
  %conv.i.i = zext i16 %4 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %cda, i32 noundef 11, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @exp_nla_policy, i32 noundef 0, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %entry.cleanup23_crit_edge, label %if.end

entry.cleanup23_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup23

if.end:                                           ; preds = %entry
  %l3num.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 0, i32 1, i32 0, i32 2
  %5 = ptrtoint ptr %l3num.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %l3num.i.i, align 2
  %conv.i = trunc i16 %6 to i8
  %call.i.i = call fastcc i32 @ctnetlink_parse_tuple_filter(ptr noundef nonnull %cda, ptr noundef nonnull %tuple, i32 noundef 2, i8 noundef zeroext %conv.i, ptr noundef null, i32 noundef 4095) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.end.cleanup23_crit_edge, label %ctnetlink_glue_exp_parse.exit

if.end.cleanup23_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup23

ctnetlink_glue_exp_parse.exit:                    ; preds = %if.end
  %7 = ptrtoint ptr %l3num.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %l3num.i.i, align 2
  %conv4.i = trunc i16 %8 to i8
  %call.i10.i = call fastcc i32 @ctnetlink_parse_tuple_filter(ptr noundef nonnull %cda, ptr noundef nonnull %mask, i32 noundef 3, i8 noundef zeroext %conv4.i, ptr noundef null, i32 noundef 4095) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10.i)
  %cmp3 = icmp slt i32 %call.i10.i, 0
  br i1 %cmp3, label %ctnetlink_glue_exp_parse.exit.cleanup23_crit_edge, label %if.end5

ctnetlink_glue_exp_parse.exit.cleanup23_crit_edge: ; preds = %ctnetlink_glue_exp_parse.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup23

if.end5:                                          ; preds = %ctnetlink_glue_exp_parse.exit
  %arrayidx = getelementptr inbounds [12 x ptr], ptr %cda, i32 0, i32 6
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %if.end5.if.end15_crit_edge, label %if.then6

if.end5.if.end15_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15

if.then6:                                         ; preds = %if.end5
  %add.ptr.i = getelementptr i8, ptr %10, i32 4
  %11 = ptrtoint ptr %l3num.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %l3num.i.i, align 2
  %protonum.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 0, i32 1, i32 1, i32 2
  %13 = ptrtoint ptr %protonum.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %protonum.i, align 2
  %call11 = call ptr @__nf_conntrack_helper_find(ptr noundef %add.ptr.i, i16 noundef zeroext %12, i8 noundef zeroext %14) #16
  %cmp12 = icmp eq ptr %call11, null
  br i1 %cmp12, label %if.then6.cleanup23_crit_edge, label %if.then6.if.end15_crit_edge

if.then6.if.end15_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15

if.then6.cleanup23_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup23

if.end15:                                         ; preds = %if.then6.if.end15_crit_edge, %if.end5.if.end15_crit_edge
  %helper.0 = phi ptr [ %call11, %if.then6.if.end15_crit_edge ], [ null, %if.end5.if.end15_crit_edge ]
  %call17 = call fastcc ptr @ctnetlink_alloc_expect(ptr noundef nonnull %cda, ptr noundef %ct, ptr noundef %helper.0, ptr noundef nonnull %tuple, ptr noundef nonnull %mask)
  %cmp.i40 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i40, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  %15 = ptrtoint ptr %call17 to i32
  br label %cleanup23

if.end21:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  %call22 = call i32 @nf_ct_expect_related_report(ptr noundef %call17, i32 noundef %portid, i32 noundef %report, i32 noundef 0) #16
  call void @nf_ct_expect_put(ptr noundef %call17) #16
  br label %cleanup23

cleanup23:                                        ; preds = %if.end21, %if.then19, %if.then6.cleanup23_crit_edge, %ctnetlink_glue_exp_parse.exit.cleanup23_crit_edge, %if.end.cleanup23_crit_edge, %entry.cleanup23_crit_edge
  %retval.1 = phi i32 [ %15, %if.then19 ], [ %call22, %if.end21 ], [ -95, %if.then6.cleanup23_crit_edge ], [ %call2.i, %entry.cleanup23_crit_edge ], [ %call.i10.i, %ctnetlink_glue_exp_parse.exit.cleanup23_crit_edge ], [ %call.i.i, %if.end.cleanup23_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %mask) #16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %tuple) #16
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cda) #16
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ctnetlink_glue_seqadj(ptr noundef %skb, ptr noundef %ct, i32 noundef %ctinfo, i32 noundef %diff) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 5
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status, align 8
  %and = and i32 %1, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @nf_ct_tcp_seqadj_set(ptr noundef %skb, ptr noundef %ct, i32 noundef %ctinfo, i32 noundef %diff) #16
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_tcp_seqadj_set(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #15

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { argmemonly nofree nounwind readonly willreturn }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { cold nounwind }
attributes #20 = { nobuiltin nounwind }
attributes #21 = { nobuiltin }
attributes #22 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !22, !23, !25, !26, !28, !29, !30, !32, !34, !36, !38, !40, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !60, !62, !64, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !84, !85, !86, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !106, !107, !108, !110, !111, !112, !114, !115, !116}
!llvm.named.register.sp = !{!118}
!llvm.module.flags = !{!119, !120, !121, !122, !123, !124, !125, !126}
!llvm.ident = !{!127}

!0 = !{ptr @__UNIQUE_ID_file588, !1, !"__UNIQUE_ID_file588", i1 false, i1 false}
!1 = !{!"../net/netfilter/nf_conntrack_netlink.c", i32 59, i32 1}
!2 = !{ptr @__UNIQUE_ID_license589, !1, !"__UNIQUE_ID_license589", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias613, !4, !"__UNIQUE_ID_alias613", i1 false, i1 false}
!4 = !{!"../net/netfilter/nf_conntrack_netlink.c", i32 3853, i32 1}
!5 = !{ptr @__UNIQUE_ID_alias614, !6, !"__UNIQUE_ID_alias614", i1 false, i1 false}
!6 = !{!"../net/netfilter/nf_conntrack_netlink.c", i32 3854, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias615, !8, !"__UNIQUE_ID_alias615", i1 false, i1 false}
!8 = !{!"../net/netfilter/nf_conntrack_netlink.c", i32 3855, i32 1}
!9 = !{ptr @__initcall__kmod_nf_conntrack_netlink__618_3923_ctnetlink_init6, !10, !"__initcall__kmod_nf_conntrack_netlink__618_3923_ctnetlink_init6", i1 false, i1 false}
!10 = !{!"../net/netfilter/nf_conntrack_netlink.c", i32 3923, i32 1}
!11 = !{ptr @__exitcall_ctnetlink_exit, !12, !"__exitcall_ctnetlink_exit", i1 false, i1 false}
!12 = !{!"../net/netfilter/nf_conntrack_netlink.c", i32 3924, i32 1}
!13 = !{ptr @ctnetlink_net_ops, !14, !"ctnetlink_net_ops", i1 false, i1 false}
!14 = !{!"../net/netfilter/nf_conntrack_netlink.c", i32 3872, i32 33}
!15 = !{ptr @ctnl_notifier, !16, !"ctnl_notifier", i1 false, i1 false}
!16 = !{!"../net/netfilter/nf_conntrack_netlink.c", i32 3765, i32 36}
!17 = !{ptr @cta_ip_nla_policy, !18, !"cta_ip_nla_policy", i1 false, i1 false}
!18 = !{!"../net/netfilter/nf_conntrack_netlink.c", i32 612, i32 32}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!21 = !{ptr @.str, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!25 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!26 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!27 = !{!"../net/netfilter/nf_conntrack_netlink.c", i32 222, i32 11}
!28 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../include/net/netlink.h", i32 991, i32 3}
!32 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!33 = !{!"../net/netfilter/nf_conntrack_netlink.c", i32 3072, i32 12}
!34 = distinct !{null, !35, !"any_addr", i1 false, i1 false}
!35 = !{!"../net/netfilter/nf_conntrack_netlink.c", i32 2996, i32 33}
!36 = !{ptr @nf_expect_get_id.exp_id_seed, !37, !"exp_id_seed", i1 false, i1 false}
!37 = !{!"../net/netfilter/nf_conntrack_netlink.c", i32 3000, i32 31}
!38 = !{ptr @nf_expect_get_id.___done, !39, !"___done", i1 false, i1 false}
!39 = !{!"../net/netfilter/nf_conntrack_netlink.c", i32 3003, i32 2}
!40 = !{ptr @nf_expect_get_id.___once_key, !39, !"___once_key", i1 false, i1 false}
!41 = !{ptr @.str.6, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../net/netfilter/nf_conntrack_netlink.c", i32 3847, i32 13}
!43 = !{ptr @ctnl_exp_subsys, !44, !"ctnl_exp_subsys", i1 false, i1 false}
!44 = !{!"../net/netfilter/nf_conntrack_netlink.c", i32 3846, i32 41}
!45 = !{ptr @ctnl_exp_cb, !46, !"ctnl_exp_cb", i1 false, i1 false}
!46 = !{!"../net/netfilter/nf_conntrack_netlink.c", i32 3814, i32 35}
!47 = !{ptr @tuple_nla_policy, !48, !"tuple_nla_policy", i1 false, i1 false}
!48 = !{!"../net/netfilter/nf_conntrack_netlink.c", i32 1406, i32 32}
!49 = !{ptr @proto_nla_policy, !50, !"proto_nla_policy", i1 false, i1 false}
!50 = !{!"../net/netfilter/nf_conntrack_netlink.c", i32 1328, i32 32}
!51 = !{ptr @.str.8, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../net/netfilter/nf_conntrack_netlink.c", i32 3618, i32 8}
!53 = !{ptr @exp_nat_nla_policy, !54, !"exp_nat_nla_policy", i1 false, i1 false}
!54 = !{!"../net/netfilter/nf_conntrack_netlink.c", i32 3475, i32 32}
!55 = !{ptr @exp_nla_policy, !56, !"exp_nla_policy", i1 false, i1 false}
!56 = !{!"../net/netfilter/nf_conntrack_netlink.c", i32 2638, i32 32}
!57 = distinct !{null, !58, !"__warned", i1 false, i1 false}
!58 = !{!"../net/netfilter/nf_conntrack_netlink.c", i32 3234, i32 2}
!59 = !{ptr @.str.9, !58, !"<string literal>", i1 false, i1 false}
!60 = distinct !{null, !61, !"__warned", i1 false, i1 false}
!61 = !{!"../net/netfilter/nf_conntrack_netlink.c", i32 3182, i32 3}
!62 = distinct !{null, !63, !"__already_done", i1 false, i1 false}
!63 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!64 = distinct !{null, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.11, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../net/netfilter/nf_conntrack_netlink.c", i32 3840, i32 13}
!67 = !{ptr @ctnl_subsys, !68, !"ctnl_subsys", i1 false, i1 false}
!68 = !{!"../net/netfilter/nf_conntrack_netlink.c", i32 3839, i32 41}
!69 = !{ptr @ctnl_cb, !70, !"ctnl_cb", i1 false, i1 false}
!70 = !{!"../net/netfilter/nf_conntrack_netlink.c", i32 3771, i32 35}
!71 = !{ptr @help_nla_policy, !72, !"help_nla_policy", i1 false, i1 false}
!72 = !{!"../net/netfilter/nf_conntrack_netlink.c", i32 1492, i32 32}
!73 = distinct !{null, !74, !"__warned", i1 false, i1 false}
!74 = !{!"../net/netfilter/nf_conntrack_netlink.c", i32 1826, i32 13}
!75 = !{ptr @.str.12, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../net/netfilter/nf_conntrack_netlink.c", i32 1831, i32 7}
!77 = distinct !{null, !78, !"__warned", i1 false, i1 false}
!78 = !{!"../net/netfilter/nf_conntrack_netlink.c", i32 1838, i32 14}
!79 = !{ptr @.str.14, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../net/netfilter/nf_conntrack_netlink.c", i32 1850, i32 7}
!81 = !{ptr @.str.15, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../include/net/netfilter/nf_conntrack_acct.h", i32 41, i32 3}
!83 = !{ptr @.str.16, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.17, !82, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.18, !82, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @nf_ct_acct_ext_add.__UNIQUE_ID_ddebug587, !82, !"__UNIQUE_ID_ddebug587", i1 false, i1 false}
!87 = !{ptr @seqadj_policy, !88, !"seqadj_policy", i1 false, i1 false}
!88 = !{!"../net/netfilter/nf_conntrack_netlink.c", i32 2052, i32 32}
!89 = !{ptr @protoinfo_policy, !90, !"protoinfo_policy", i1 false, i1 false}
!90 = !{!"../net/netfilter/nf_conntrack_netlink.c", i32 2026, i32 32}
!91 = !{ptr @synproxy_policy, !92, !"synproxy_policy", i1 false, i1 false}
!92 = !{!"../net/netfilter/nf_conntrack_netlink.c", i32 2126, i32 32}
!93 = distinct !{null, !94, !"__warned", i1 false, i1 false}
!94 = !{!"../net/netfilter/nf_conntrack_netlink.c", i32 1951, i32 13}
!95 = distinct !{null, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../net/netfilter/nf_conntrack_netlink.c", i32 1960, i32 24}
!97 = !{ptr @ct_nla_policy, !98, !"ct_nla_policy", i1 false, i1 false}
!98 = !{!"../net/netfilter/nf_conntrack_netlink.c", i32 1519, i32 32}
!99 = !{ptr @nla_parse_nested.__msg, !100, !"__msg", i1 false, i1 false}
!100 = !{!"../include/net/netlink.h", i32 1208, i32 3}
!101 = !{ptr @cta_filter_nla_policy, !102, !"cta_filter_nla_policy", i1 false, i1 false}
!102 = !{!"../net/netfilter/nf_conntrack_netlink.c", i32 874, i32 32}
!103 = !{ptr @.str.20, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../net/netfilter/nf_conntrack_netlink.c", i32 3883, i32 3}
!105 = !{ptr @.str.21, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @ctnetlink_init._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @ctnetlink_init._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.23, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../net/netfilter/nf_conntrack_netlink.c", i32 3889, i32 3}
!110 = !{ptr @ctnetlink_init._entry.22, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @ctnetlink_init._entry_ptr.24, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.26, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../net/netfilter/nf_conntrack_netlink.c", i32 3895, i32 3}
!114 = !{ptr @ctnetlink_init._entry.25, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @ctnetlink_init._entry_ptr.27, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @ctnetlink_glue_hook, !117, !"ctnetlink_glue_hook", i1 false, i1 false}
!117 = !{!"../net/netfilter/nf_conntrack_netlink.c", i32 2926, i32 34}
!118 = !{!"sp"}
!119 = !{i32 1, !"wchar_size", i32 2}
!120 = !{i32 1, !"min_enum_size", i32 4}
!121 = !{i32 8, !"branch-target-enforcement", i32 0}
!122 = !{i32 8, !"sign-return-address", i32 0}
!123 = !{i32 8, !"sign-return-address-all", i32 0}
!124 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!125 = !{i32 7, !"uwtable", i32 1}
!126 = !{i32 7, !"frame-pointer", i32 2}
!127 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!128 = !{!"auto-init"}
!129 = !{!"branch_weights", i32 1, i32 2000}
!130 = !{i64 2149450825}
!131 = !{i64 2149451091}
!132 = !{i64 2149048446, i64 2149048451, i64 2149048472, i64 2149048516, i64 2149048550, i64 2149048571}
!133 = !{i64 2148536705}
!134 = !{i64 2148451145, i64 2148451177, i64 2148451206, i64 2148451240, i64 2148451271, i64 2148451294}
!135 = !{!"branch_weights", i32 2000, i32 1}
!136 = !{i64 2149400335}
!137 = !{i64 931683, i64 931707, i64 931728, i64 931745, i64 931762}
!138 = !{i64 2149048043, i64 2149048048, i64 2149048061, i64 2149048105, i64 2149048139, i64 2149048160}
!139 = !{i64 2148448680, i64 2148448712, i64 2148448741, i64 2148448775, i64 2148448806, i64 2148448829}
