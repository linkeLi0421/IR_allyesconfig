; ModuleID = '/llk/IR_all_yes/net/sched/act_ctinfo.c_pt.bc'
source_filename = "../net/sched/act_ctinfo.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tc_action_ops = type { %struct.list_head, [16 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.77 = type { i16, i16 }
%struct.nla_policy = type { i8, i8, i16, %union.anon.76 }
%union.anon.76 = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.vlan_hdr = type { i16, i16 }
%struct.nf_conntrack_tuple = type { %struct.nf_conntrack_man, %struct.anon.105 }
%struct.nf_conntrack_man = type { %union.nf_inet_addr, %union.nf_conntrack_man_proto, i16 }
%union.nf_inet_addr = type { [4 x i32] }
%union.nf_conntrack_man_proto = type { i16 }
%struct.anon.105 = type { %union.nf_inet_addr, %union.anon.106, i8, i8 }
%union.anon.106 = type { i16 }
%struct.nf_conntrack_zone = type { i16, i8, i8 }
%struct.tcf_ctinfo = type { %struct.tc_action, ptr, i64, i64, i64 }
%struct.tc_action = type { ptr, i32, ptr, i32, %struct.refcount_struct, %struct.atomic_t, i32, %struct.tcf_t, %struct.gnet_stats_basic_sync, %struct.gnet_stats_basic_sync, %struct.gnet_stats_queue, ptr, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, [12 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.tcf_t = type { i64, i64, i64, i64 }
%struct.gnet_stats_basic_sync = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.gnet_stats_queue = type { i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.tcf_ctinfo_params = type { %struct.callback_head, ptr, i32, i32, i32, i16, i8, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.nf_conntrack_tuple_hash = type { %struct.hlist_nulls_node, %struct.nf_conntrack_tuple }
%struct.hlist_nulls_node = type { ptr, ptr }
%struct.nf_conn = type { %struct.nf_conntrack, %struct.spinlock, i32, %struct.nf_conntrack_zone, [2 x %struct.nf_conntrack_tuple_hash], i32, i16, %struct.possible_net_t, %struct.hlist_node, %struct.anon.113, ptr, i32, i32, ptr, %union.nf_conntrack_proto }
%struct.nf_conntrack = type { %struct.refcount_struct }
%struct.possible_net_t = type { ptr }
%struct.anon.113 = type {}
%union.nf_conntrack_proto = type { %struct.nf_ct_dccp, [48 x i8] }
%struct.nf_ct_dccp = type { [2 x i8], i8, i8, i8, i64 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.tc_ctinfo = type { i32, i32, i32, i32, i32 }
%struct.nlattr = type { i16, i16 }
%struct.netlink_ext_ack = type { ptr, ptr, ptr, [20 x i8], i8 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.37, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.37 = type { %struct.anon.38 }
%struct.anon.38 = type { ptr, i32, i32, i32 }
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
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
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
%struct.tc_action_net = type { ptr, ptr }
%struct.tcf_idrinfo = type { %struct.mutex, %struct.idr, ptr }

@act_ctinfo_ops = internal global { %struct.tc_action_ops, [48 x i8] } { %struct.tc_action_ops { %struct.list_head zeroinitializer, [16 x i8] c"ctinfo\00\00\00\00\00\00\00\00\00\00", i32 27, i32 304, ptr null, ptr @tcf_ctinfo_act, ptr @tcf_ctinfo_dump, ptr @tcf_ctinfo_cleanup, ptr @tcf_ctinfo_search, ptr @tcf_ctinfo_init, ptr @tcf_ctinfo_walker, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@ctinfo_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @ctinfo_init_net, ptr null, ptr null, ptr @ctinfo_exit_net, ptr @ctinfo_net_id, i32 8 }, [32 x i8] zeroinitializer }, align 32
@__initcall__kmod_act_ctinfo__618_414_ctinfo_init_module6 = internal global ptr @ctinfo_init_module, section ".initcall6.init", align 4
@__exitcall_ctinfo_cleanup_module = internal global ptr @ctinfo_cleanup_module, section ".exitcall.exit", align 4
@__UNIQUE_ID_author619 = internal constant [73 x i8] c"act_ctinfo.author=Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>\00", section ".modinfo", align 1
@__UNIQUE_ID_description620 = internal constant [56 x i8] c"act_ctinfo.description=Connection tracking mark actions\00", section ".modinfo", align 1
@__UNIQUE_ID_file621 = internal constant [37 x i8] c"act_ctinfo.file=net/sched/act_ctinfo\00", section ".modinfo", align 1
@__UNIQUE_ID_license622 = internal constant [23 x i8] c"act_ctinfo.license=GPL\00", section ".modinfo", align 1
@tcf_ctinfo_act.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"net/sched/act_ctinfo.c\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/if_vlan.h\00", [40 x i8] zeroinitializer }, align 32
@tcf_ctinfo_dump.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@ctinfo_net_id = internal global { i32, [28 x i8] } zeroinitializer, align 32
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@tcf_ctinfo_init.__msg = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"act_ctinfo: ctinfo requires attributes to be passed\00", [44 x i8] zeroinitializer }, align 32
@tcf_ctinfo_init.__msg.10 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"act_ctinfo: Missing required TCA_CTINFO_ACT attribute\00", [42 x i8] zeroinitializer }, align 32
@tcf_ctinfo_init.__msg.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"dscp mask must be 6 contiguous bits\00", [60 x i8] zeroinitializer }, align 32
@tcf_ctinfo_init.__msg.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"dscp statemask must not overlap dscp mask\00", [54 x i8] zeroinitializer }, align 32
@tcf_ctinfo_init.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nla_parse_nested.__msg = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"NLA_F_NESTED is missing\00", [40 x i8] zeroinitializer }, align 32
@ctinfo_policy = internal constant { <{ %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, { i8, i8, i16, { %struct.anon.77 } }, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy }>, [40 x i8] } { <{ %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, { i8, i8, i16, { %struct.anon.77 } }, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy }> <{ %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, { i8, i8, i16, { %struct.anon.77 } } { i8 11, i8 1, i16 0, { %struct.anon.77 } { %struct.anon.77 { i16 20, i16 20 } } }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer }>, [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@tc_action_net_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&tn->idrinfo->lock\00", [45 x i8] zeroinitializer }, align 32
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@___asan_gen_.18 = private unnamed_addr constant [15 x i8] c"act_ctinfo_ops\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 372, i32 29 }
@___asan_gen_.21 = private unnamed_addr constant [15 x i8] c"ctinfo_net_ops\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 397, i32 33 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 92, i32 7 }
@___asan_gen_.31 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 271, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant [27 x i8] c"../include/linux/if_vlan.h\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 598, i32 8 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 295, i32 7 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 991, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant [14 x i8] c"ctinfo_net_id\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 28, i32 21 }
@___asan_gen_.46 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 45, i32 7 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 695, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 723, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 172, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 181, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 194, i32 4 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 203, i32 4 }
@___asan_gen_.69 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 1208, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant [14 x i8] c"ctinfo_policy\00", align 1
@___asan_gen_.73 = private constant [26 x i8] c"../net/sched/act_ctinfo.c\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 146, i32 32 }
@___asan_gen_.79 = private unnamed_addr constant [25 x i8] c"../include/net/act_api.h\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 156, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.85 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 378, i32 2 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__UNIQUE_ID_author619, ptr @__UNIQUE_ID_description620, ptr @__UNIQUE_ID_file621, ptr @__UNIQUE_ID_license622, ptr @__exitcall_ctinfo_cleanup_module, ptr @__initcall__kmod_act_ctinfo__618_414_ctinfo_init_module6, ptr @ctinfo_cleanup_module, ptr @act_ctinfo_ops, ptr @ctinfo_net_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @ctinfo_net_id, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @tcf_ctinfo_init.__msg, ptr @tcf_ctinfo_init.__msg.10, ptr @tcf_ctinfo_init.__msg.11, ptr @tcf_ctinfo_init.__msg.12, ptr @nla_parse_nested.__msg, ptr @ctinfo_policy, ptr @tc_action_net_init.__key, ptr @.str.14, ptr @xa_init_flags.__key, ptr @.str.15], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @act_ctinfo_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctinfo_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctinfo_net_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcf_ctinfo_init.__msg to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcf_ctinfo_init.__msg.10 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcf_ctinfo_init.__msg.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcf_ctinfo_init.__msg.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nla_parse_nested.__msg to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctinfo_policy to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_action_net_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ctinfo_cleanup_module() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @tcf_unregister_action(ptr noundef nonnull @act_ctinfo_ops, ptr noundef nonnull @ctinfo_net_ops) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_unregister_action(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ctinfo_init_module() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tcf_register_action(ptr noundef nonnull @act_ctinfo_ops, ptr noundef nonnull @ctinfo_net_ops) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_ctinfo_act(ptr noundef %skb, ptr noundef %a, ptr nocapture noundef readnone %res) #2 align 64 {
entry:
  %vhdr.i.i.i = alloca %struct.vlan_hdr, align 2
  %tuple = alloca %struct.nf_conntrack_tuple, align 4
  %zone = alloca %struct.nf_conntrack_zone, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %tuple) #10
  %0 = call ptr @memset(ptr %tuple, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %zone) #10
  %1 = getelementptr inbounds %struct.nf_conntrack_zone, ptr %zone, i32 0, i32 2
  %params = getelementptr inbounds %struct.tcf_ctinfo, ptr %a, i32 0, i32 1
  %2 = ptrtoint ptr %zone to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %zone, align 4
  %3 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %params, align 16
  %call = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b93 = load i1, ptr @tcf_ctinfo_act.__warned, align 1
  br i1 %.b93, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @tcf_ctinfo_act.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 92, ptr noundef nonnull @.str.1) #10
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %entry.do.end7_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %lastuse.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 7, i32 1
  %6 = ptrtoint ptr %lastuse.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %lastuse.i, align 8
  %conv.i = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %conv.i)
  %cmp.not.i = icmp eq i64 %7, %conv.i
  br i1 %cmp.not.i, label %do.end7.if.end.i_crit_edge, label %if.then.i

do.end7.if.end.i_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %lastuse.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %conv.i, ptr %lastuse.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %do.end7.if.end.i_crit_edge
  %firstuse.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 7, i32 3
  %9 = ptrtoint ptr %firstuse.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %firstuse.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %tobool.not.i = icmp eq i64 %10, 0
  br i1 %tobool.not.i, label %if.then7.i, label %if.end.i.tcf_lastuse_update.exit_crit_edge, !prof !73

if.end.i.tcf_lastuse_update.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tcf_lastuse_update.exit

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %firstuse.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %conv.i, ptr %firstuse.i, align 8
  br label %tcf_lastuse_update.exit

tcf_lastuse_update.exit:                          ; preds = %if.then7.i, %if.end.i.tcf_lastuse_update.exit_crit_edge
  %tcfa_bstats = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 8
  %cb.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %12 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cb.i.i.i, align 4
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %14 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %end.i.i.i, align 4
  %gso_size.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %gso_size.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %gso_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool.i.not.i = icmp eq i16 %17, 0
  br i1 %tobool.i.not.i, label %tcf_lastuse_update.exit.cond.end.i_crit_edge, label %cond.true.i

tcf_lastuse_update.exit.cond.end.i_crit_edge:     ; preds = %tcf_lastuse_update.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i

cond.true.i:                                      ; preds = %tcf_lastuse_update.exit
  call void @__sanitizer_cov_trace_pc() #12
  %gso_segs.i = getelementptr inbounds %struct.skb_shared_info, ptr %15, i32 0, i32 5
  %18 = ptrtoint ptr %gso_segs.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %gso_segs.i, align 2
  %conv4.i = zext i16 %19 to i32
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %tcf_lastuse_update.exit.cond.end.i_crit_edge
  %cond.i = phi i32 [ %conv4.i, %cond.true.i ], [ 1, %tcf_lastuse_update.exit.cond.end.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %20 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i.i.i.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i.i.i.i, label %cond.end.i.bstats_update.exit_crit_edge, label %land.lhs.true.i.i.i.i

cond.end.i.bstats_update.exit_crit_edge:          ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bstats_update.exit

land.lhs.true.i.i.i.i:                            ; preds = %cond.end.i
  %21 = tail call i32 @llvm.read_register.i32(metadata !63) #10
  %and.i.i.i.i.i.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %24, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !74
  %25 = tail call i32 @llvm.read_register.i32(metadata !63) #10
  %and.i.i.i.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %28
  %29 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %30, ptrtoint (ptr @lockdep_recursion to i32)
  %31 = inttoptr i32 %add.i.i.i.i to ptr
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %31, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !75
  %34 = tail call i32 @llvm.read_register.i32(metadata !63) #10
  %and.i.i.i7.i.i.i.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i7.i.i.i.i to ptr
  %preempt_count.i.i8.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %preempt_count.i.i8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %preempt_count.i.i8.i.i.i.i, align 4
  %sub.i.i.i.i.i = add i32 %37, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i8.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool20.not.i.i.i.i = icmp eq i32 %33, 0
  br i1 %tobool20.not.i.i.i.i, label %land.rhs.i.i.i.i, label %land.lhs.true.i.i.i.i.bstats_update.exit_crit_edge

land.lhs.true.i.i.i.i.bstats_update.exit_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bstats_update.exit

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  %38 = tail call i32 @llvm.read_register.i32(metadata !63) #10
  %and.i.i.i.i.i.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp.i.i.i.i = icmp eq i32 %41, 0
  br i1 %cmp.i.i.i.i, label %land.rhs22.i.i.i.i, label %land.rhs.i.i.i.i.bstats_update.exit_crit_edge

land.rhs.i.i.i.i.bstats_update.exit_crit_edge:    ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bstats_update.exit

land.rhs22.i.i.i.i:                               ; preds = %land.rhs.i.i.i.i
  %42 = tail call i32 @llvm.read_register.i32(metadata !63) #10
  %and.i.i.i9.i.i.i.i = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i9.i.i.i.i to ptr
  %preempt_count.i.i10.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i, align 4
  %add.i11.i.i.i.i = add i32 %45, 1
  store volatile i32 %add.i11.i.i.i.i, ptr %preempt_count.i.i10.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !76
  %46 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx46.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %47
  %48 = ptrtoint ptr %arrayidx46.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx46.i.i.i.i, align 4
  %add47.i.i.i.i = add i32 %49, ptrtoint (ptr @hardirqs_enabled to i32)
  %50 = inttoptr i32 %add47.i.i.i.i to ptr
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %50, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !77
  %53 = tail call i32 @llvm.read_register.i32(metadata !63) #10
  %and.i.i.i12.i.i.i.i = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i.i12.i.i.i.i to ptr
  %preempt_count.i.i13.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %preempt_count.i.i13.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %preempt_count.i.i13.i.i.i.i, align 4
  %sub.i14.i.i.i.i = add i32 %56, -1
  store volatile i32 %sub.i14.i.i.i.i, ptr %preempt_count.i.i13.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool54.not.i.i.i.i = icmp eq i32 %52, 0
  br i1 %tobool54.not.i.i.i.i, label %land.rhs22.i.i.i.i.bstats_update.exit_crit_edge, label %land.rhs58.i.i.i.i

land.rhs22.i.i.i.i.bstats_update.exit_crit_edge:  ; preds = %land.rhs22.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bstats_update.exit

land.rhs58.i.i.i.i:                               ; preds = %land.rhs22.i.i.i.i
  %.b1.i.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs58.i.i.i.i.bstats_update.exit_crit_edge, label %if.then.i.i.i.i, !prof !78

land.rhs58.i.i.i.i.bstats_update.exit_crit_edge:  ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bstats_update.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 271, i32 noundef 9, ptr noundef null) #10
  br label %bstats_update.exit

bstats_update.exit:                               ; preds = %if.then.i.i.i.i, %land.rhs58.i.i.i.i.bstats_update.exit_crit_edge, %land.rhs22.i.i.i.i.bstats_update.exit_crit_edge, %land.rhs.i.i.i.i.bstats_update.exit_crit_edge, %land.lhs.true.i.i.i.i.bstats_update.exit_crit_edge, %cond.end.i.bstats_update.exit_crit_edge
  %conv.i94 = zext i32 %13 to i64
  %syncp.i.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 8, i32 2
  %57 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %58, 1
  store i32 %inc.i.i.i.i.i.i, ptr %syncp.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !79
  %dep_map.i.i.i.i.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 8, i32 2, i32 0, i32 1
  %59 = tail call ptr @llvm.returnaddress(i32 0) #10
  %60 = ptrtoint ptr %59 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %60) #10
  %61 = ptrtoint ptr %tcfa_bstats to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %tcfa_bstats, align 8
  %add.i.i.i = add i64 %62, %conv.i94
  store i64 %add.i.i.i, ptr %tcfa_bstats, align 8
  %packets2.i.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 8, i32 1
  %conv.i7.i.i = zext i32 %cond.i to i64
  %63 = ptrtoint ptr %packets2.i.i to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %packets2.i.i, align 8
  %add.i8.i.i = add i64 %64, %conv.i7.i.i
  store i64 %add.i8.i.i, ptr %packets2.i.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i.i, i32 noundef %60) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !80
  %65 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i = add i32 %66, 1
  store i32 %inc.i.i.i.i.i, ptr %syncp.i.i, align 4
  %tcfa_action = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 6
  %67 = ptrtoint ptr %tcfa_action to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %tcfa_action, align 8
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %69 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %71 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %72 to i32
  %add.ptr.i.i = getelementptr i8, ptr %70, i32 %conv.i.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %73 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %74 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %protocol.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %75 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %protocol.i.i, align 8
  %mac_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %77 = ptrtoint ptr %mac_len.i.i.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %mac_len.i.i.i, align 4
  %conv.i.i.i = zext i16 %78 to i32
  %79 = zext i16 %76 to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values)
  switch i16 %76, label %bstats_update.exit.skb_protocol.exit_crit_edge [
    i16 -30552, label %bstats_update.exit.if.then.i.i.i_crit_edge
    i16 -32512, label %bstats_update.exit.if.then.i.i.i_crit_edge148
  ]

bstats_update.exit.if.then.i.i.i_crit_edge148:    ; preds = %bstats_update.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i.i

bstats_update.exit.if.then.i.i.i_crit_edge:       ; preds = %bstats_update.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i.i

bstats_update.exit.skb_protocol.exit_crit_edge:   ; preds = %bstats_update.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_protocol.exit

if.then.i.i.i:                                    ; preds = %bstats_update.exit.if.then.i.i.i_crit_edge, %bstats_update.exit.if.then.i.i.i_crit_edge148
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %78)
  %tobool.not.i.i.i = icmp eq i16 %78, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i.if.end26.i.i.i_crit_edge, label %if.then1.i.i.i

if.then.i.i.i.if.end26.i.i.i_crit_edge:           ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26.i.i.i

if.then1.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %78)
  %cmp.i.i.i = icmp ult i16 %78, 4
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.end25.i.i.i, !prof !73

do.end.i.i.i:                                     ; preds = %if.then1.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 598, i32 noundef 9, ptr noundef null) #10
  br label %out

if.end25.i.i.i:                                   ; preds = %if.then1.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i.i = add nsw i32 %conv.i.i.i, -4
  br label %if.end26.i.i.i

if.end26.i.i.i:                                   ; preds = %if.end25.i.i.i, %if.then.i.i.i.if.end26.i.i.i_crit_edge
  %vlan_depth.0.i.i.i = phi i32 [ %sub.i.i.i, %if.end25.i.i.i ], [ 14, %if.then.i.i.i.if.end26.i.i.i_crit_edge ]
  %80 = getelementptr inbounds %struct.vlan_hdr, ptr %vhdr.i.i.i, i32 0, i32 1
  %len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %data_len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %tobool2.not.i.i.i.i.i = icmp eq ptr %skb, null
  br label %do.body27.i.i.i

do.body27.i.i.i:                                  ; preds = %do.body27.backedge.i.i.i, %if.end26.i.i.i
  %vlan_depth.1.i.i.i = phi i32 [ %vlan_depth.0.i.i.i, %if.end26.i.i.i ], [ %add.i.i.i95, %do.body27.backedge.i.i.i ]
  %parse_depth.0.i.i.i = phi i32 [ 8, %if.end26.i.i.i ], [ %dec.i.i.i, %do.body27.backedge.i.i.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vhdr.i.i.i) #10
  %81 = ptrtoint ptr %vhdr.i.i.i to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 -1, ptr %vhdr.i.i.i, align 2, !annotation !81
  %82 = ptrtoint ptr %80 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 -1, ptr %80, align 2, !annotation !81
  %83 = ptrtoint ptr %len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %len.i.i.i.i.i, align 4
  %85 = ptrtoint ptr %data_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %data_len.i.i.i.i.i, align 8
  %87 = add i32 %vlan_depth.1.i.i.i, %86
  %sub.i1.i.i.i.i = sub i32 %84, %87
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i1.i.i.i.i)
  %cmp.i.i.i.i.i = icmp sgt i32 %sub.i1.i.i.i.i, 3
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %if.end.i.i.i.i.i, !prof !78

if.then.i.i.i.i.i:                                ; preds = %do.body27.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %88 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %89, i32 %vlan_depth.1.i.i.i
  br label %skb_header_pointer.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %do.body27.i.i.i
  br i1 %tobool2.not.i.i.i.i.i, label %if.end.i.i.i.i.i.cleanup.thread.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.i.i

if.end.i.i.i.i.i.cleanup.thread.i.i.i_crit_edge:  ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread.i.i.i

lor.lhs.false.i.i.i.i.i:                          ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %vlan_depth.1.i.i.i, ptr noundef nonnull %vhdr.i.i.i, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %cmp3.i.i.i.i.i = icmp slt i32 %call.i.i.i.i.i, 0
  %spec.select.i.i.i.i.i = select i1 %cmp3.i.i.i.i.i, ptr null, ptr %vhdr.i.i.i, !prof !73
  br label %skb_header_pointer.exit.i.i.i

skb_header_pointer.exit.i.i.i:                    ; preds = %lor.lhs.false.i.i.i.i.i, %if.then.i.i.i.i.i
  %retval.0.i.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i.i, %if.then.i.i.i.i.i ], [ %spec.select.i.i.i.i.i, %lor.lhs.false.i.i.i.i.i ]
  %tobool29.not.i.i.i = icmp eq ptr %retval.0.i.i.i.i.i, null
  %dec.i.i.i = add nsw i32 %parse_depth.0.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i)
  %tobool30.not.i.i.i = icmp eq i32 %dec.i.i.i, 0
  %90 = select i1 %tobool29.not.i.i.i, i1 true, i1 %tobool30.not.i.i.i, !prof !73
  br i1 %90, label %skb_header_pointer.exit.i.i.i.cleanup.thread.i.i.i_crit_edge, label %do.cond42.i.i.i, !prof !73

skb_header_pointer.exit.i.i.i.cleanup.thread.i.i.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread.i.i.i

cleanup.thread.i.i.i:                             ; preds = %skb_header_pointer.exit.i.i.i.cleanup.thread.i.i.i_crit_edge, %if.end.i.i.i.i.i.cleanup.thread.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i) #10
  br label %out

do.cond42.i.i.i:                                  ; preds = %skb_header_pointer.exit.i.i.i
  %h_vlan_encapsulated_proto.i.i.i = getelementptr inbounds %struct.vlan_hdr, ptr %retval.0.i.i.i.i.i, i32 0, i32 1
  %91 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %h_vlan_encapsulated_proto.i.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i) #10
  %93 = zext i16 %92 to i64
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values.16)
  switch i16 %92, label %do.cond42.i.i.i.skb_protocol.exit_crit_edge [
    i16 -30552, label %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge
    i16 -32512, label %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge149
  ]

do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge149: ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body27.backedge.i.i.i

do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge: ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body27.backedge.i.i.i

do.cond42.i.i.i.skb_protocol.exit_crit_edge:      ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_protocol.exit

do.body27.backedge.i.i.i:                         ; preds = %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge, %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge149
  %add.i.i.i95 = add nsw i32 %vlan_depth.1.i.i.i, 4
  br label %do.body27.i.i.i

skb_protocol.exit:                                ; preds = %do.cond42.i.i.i.skb_protocol.exit_crit_edge, %bstats_update.exit.skb_protocol.exit_crit_edge
  %retval.2.i.i.i = phi i16 [ %76, %bstats_update.exit.skb_protocol.exit_crit_edge ], [ %92, %do.cond42.i.i.i.skb_protocol.exit_crit_edge ]
  %94 = zext i16 %retval.2.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %94, ptr @__sancov_gen_cov_switch_values.17)
  switch i16 %retval.2.i.i.i, label %skb_protocol.exit.out_crit_edge [
    i16 2048, label %sw.bb
    i16 -31011, label %sw.bb20
  ]

skb_protocol.exit.out_crit_edge:                  ; preds = %skb_protocol.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

sw.bb:                                            ; preds = %skb_protocol.exit
  %add = add i32 %sub.ptr.sub.i, 20
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %95 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %97 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %96, %98
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub.i.i)
  %cmp.not.i96 = icmp ugt i32 %add, %sub.i.i
  br i1 %cmp.not.i96, label %if.end.i97, label %sw.bb.sw.epilog_crit_edge, !prof !73

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.i97:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_cmp4(i32 %96, i32 %add)
  %cmp3.i = icmp ult i32 %96, %add
  br i1 %cmp3.i, label %if.end.i97.out_crit_edge, label %pskb_may_pull.exit, !prof !73

if.end.i97.out_crit_edge:                         ; preds = %if.end.i97
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

pskb_may_pull.exit:                               ; preds = %if.end.i97
  %sub.i = sub i32 %add, %sub.i.i
  %call13.i = call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #10
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.out_crit_edge, label %pskb_may_pull.exit.sw.epilog_crit_edge

pskb_may_pull.exit.sw.epilog_crit_edge:           ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

pskb_may_pull.exit.out_crit_edge:                 ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

sw.bb20:                                          ; preds = %skb_protocol.exit
  %add21 = add i32 %sub.ptr.sub.i, 40
  %len.i.i98 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %99 = ptrtoint ptr %len.i.i98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %len.i.i98, align 4
  %data_len.i.i99 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %101 = ptrtoint ptr %data_len.i.i99 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %data_len.i.i99, align 8
  %sub.i.i100 = sub i32 %100, %102
  call void @__sanitizer_cov_trace_cmp4(i32 %add21, i32 %sub.i.i100)
  %cmp.not.i101 = icmp ugt i32 %add21, %sub.i.i100
  br i1 %cmp.not.i101, label %if.end.i103, label %sw.bb20.sw.epilog_crit_edge, !prof !73

sw.bb20.sw.epilog_crit_edge:                      ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.i103:                                      ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_cmp4(i32 %100, i32 %add21)
  %cmp3.i102 = icmp ult i32 %100, %add21
  br i1 %cmp3.i102, label %if.end.i103.out_crit_edge, label %pskb_may_pull.exit109, !prof !73

if.end.i103.out_crit_edge:                        ; preds = %if.end.i103
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

pskb_may_pull.exit109:                            ; preds = %if.end.i103
  %sub.i104 = sub i32 %add21, %sub.i.i100
  %call13.i105 = call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i104) #10
  %cmp14.i106.not = icmp eq ptr %call13.i105, null
  br i1 %cmp14.i106.not, label %pskb_may_pull.exit109.out_crit_edge, label %pskb_may_pull.exit109.sw.epilog_crit_edge

pskb_may_pull.exit109.sw.epilog_crit_edge:        ; preds = %pskb_may_pull.exit109
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

pskb_may_pull.exit109.out_crit_edge:              ; preds = %pskb_may_pull.exit109
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

sw.epilog:                                        ; preds = %pskb_may_pull.exit109.sw.epilog_crit_edge, %sw.bb20.sw.epilog_crit_edge, %pskb_may_pull.exit.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %switch = phi i1 [ false, %sw.bb20.sw.epilog_crit_edge ], [ true, %sw.bb.sw.epilog_crit_edge ], [ false, %pskb_may_pull.exit109.sw.epilog_crit_edge ], [ true, %pskb_may_pull.exit.sw.epilog_crit_edge ]
  %proto.0 = phi i16 [ 10, %sw.bb20.sw.epilog_crit_edge ], [ 2, %sw.bb.sw.epilog_crit_edge ], [ 10, %pskb_may_pull.exit109.sw.epilog_crit_edge ], [ 2, %pskb_may_pull.exit.sw.epilog_crit_edge ]
  %wlen.0 = phi i32 [ %add21, %sw.bb20.sw.epilog_crit_edge ], [ %add, %sw.bb.sw.epilog_crit_edge ], [ %add21, %pskb_may_pull.exit109.sw.epilog_crit_edge ], [ %add, %pskb_may_pull.exit.sw.epilog_crit_edge ]
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %103 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %_nfct.i.i, align 8
  %and1.i = and i32 %104, -8
  %105 = inttoptr i32 %and1.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool26.not = icmp eq i32 %and1.i, 0
  br i1 %tobool26.not, label %if.then27, label %sw.epilog.if.end40_crit_edge

sw.epilog.if.end40_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.then27:                                        ; preds = %sw.epilog
  %106 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %head.i.i, align 8
  %108 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i112 = zext i16 %109 to i32
  %add.ptr.i.i113 = getelementptr i8, ptr %107, i32 %conv.i.i112
  %110 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i115 = ptrtoint ptr %add.ptr.i.i113 to i32
  %sub.ptr.rhs.cast.i116 = ptrtoint ptr %111 to i32
  %sub.ptr.sub.i117 = sub i32 %sub.ptr.lhs.cast.i115, %sub.ptr.rhs.cast.i116
  %net = getelementptr inbounds %struct.tcf_ctinfo_params, ptr %4, i32 0, i32 1
  %112 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %net, align 4
  %call30 = call zeroext i1 @nf_ct_get_tuplepr(ptr noundef %skb, i32 noundef %sub.ptr.sub.i117, i16 noundef zeroext %proto.0, ptr noundef %113, ptr noundef nonnull %tuple) #10
  br i1 %call30, label %if.end32, label %if.then27.out_crit_edge

if.then27.out_crit_edge:                          ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end32:                                         ; preds = %if.then27
  %zone33 = getelementptr inbounds %struct.tcf_ctinfo_params, ptr %4, i32 0, i32 5
  %114 = ptrtoint ptr %zone33 to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %zone33, align 4
  %116 = ptrtoint ptr %zone to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 %115, ptr %zone, align 4
  %117 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 3, ptr %1, align 1
  %118 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %net, align 4
  %call35 = call ptr @nf_conntrack_find_get(ptr noundef %119, ptr noundef nonnull %zone, ptr noundef nonnull %tuple) #10
  %tobool36.not = icmp eq ptr %call35, null
  br i1 %tobool36.not, label %if.end32.out_crit_edge, label %if.end38

if.end32.out_crit_edge:                           ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end38:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  %dir.i = getelementptr inbounds %struct.nf_conntrack_tuple_hash, ptr %call35, i32 0, i32 1, i32 1, i32 3
  %120 = ptrtoint ptr %dir.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %dir.i, align 1
  %conv.i118 = zext i8 %121 to i32
  %.neg.i = mul nsw i32 %conv.i118, -48
  %idx.neg.i = add nsw i32 %.neg.i, -56
  %add.ptr.i = getelementptr i8, ptr %call35, i32 %idx.neg.i
  br label %if.end40

if.end40:                                         ; preds = %if.end38, %sw.epilog.if.end40_crit_edge
  %ct.0 = phi ptr [ %105, %sw.epilog.if.end40_crit_edge ], [ %add.ptr.i, %if.end38 ]
  %thash.0 = phi ptr [ null, %sw.epilog.if.end40_crit_edge ], [ %call35, %if.end38 ]
  %mode = getelementptr inbounds %struct.tcf_ctinfo_params, ptr %4, i32 0, i32 6
  %122 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %mode, align 2
  %124 = and i8 %123, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %tobool42.not = icmp eq i8 %124, 0
  br i1 %tobool42.not, label %if.end40.if.end50_crit_edge, label %if.then43

if.end40.if.end50_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

if.then43:                                        ; preds = %if.end40
  %dscpstatemask = getelementptr inbounds %struct.tcf_ctinfo_params, ptr %4, i32 0, i32 3
  %125 = ptrtoint ptr %dscpstatemask to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %dscpstatemask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %tobool44.not = icmp eq i32 %126, 0
  br i1 %tobool44.not, label %if.then43.if.then48_crit_edge, label %lor.lhs.false

if.then43.if.then48_crit_edge:                    ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then48

lor.lhs.false:                                    ; preds = %if.then43
  %mark = getelementptr inbounds %struct.nf_conn, ptr %ct.0, i32 0, i32 11
  %127 = ptrtoint ptr %mark to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %mark, align 8
  %and46 = and i32 %128, %126
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %lor.lhs.false.if.end50_crit_edge, label %lor.lhs.false.if.then48_crit_edge

lor.lhs.false.if.then48_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then48

lor.lhs.false.if.end50_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

if.then48:                                        ; preds = %lor.lhs.false.if.then48_crit_edge, %if.then43.if.then48_crit_edge
  %mark.i = getelementptr inbounds %struct.nf_conn, ptr %ct.0, i32 0, i32 11
  %129 = ptrtoint ptr %mark.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %mark.i, align 8
  %dscpmask.i = getelementptr inbounds %struct.tcf_ctinfo_params, ptr %4, i32 0, i32 2
  %131 = ptrtoint ptr %dscpmask.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %dscpmask.i, align 4
  %and.i119 = and i32 %132, %130
  %dscpmaskshift.i = getelementptr inbounds %struct.tcf_ctinfo_params, ptr %4, i32 0, i32 7
  %133 = ptrtoint ptr %dscpmaskshift.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %dscpmaskshift.i, align 1
  %conv.i120 = zext i8 %134 to i32
  %shr.i = lshr i32 %and.i119, %conv.i120
  %shr.tr.i = trunc i32 %shr.i to i8
  %conv2.i = shl i8 %shr.tr.i, 2
  %135 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %head.i.i, align 8
  %137 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i.i121 = zext i16 %138 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %136, i32 %conv.i.i.i121
  br i1 %switch, label %sw.bb.i, label %sw.bb18.i

sw.bb.i:                                          ; preds = %if.then48
  %tos.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 1
  %139 = ptrtoint ptr %tos.i.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %tos.i.i, align 1
  %141 = and i8 %140, -4
  call void @__sanitizer_cov_trace_cmp1(i8 %141, i8 %conv2.i)
  %cmp.not.i122 = icmp eq i8 %141, %conv2.i
  br i1 %cmp.not.i122, label %sw.bb.i.if.end50_crit_edge, label %if.then.i124

sw.bb.i.if.end50_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

if.then.i124:                                     ; preds = %sw.bb.i
  %cloned.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %142 = ptrtoint ptr %cloned.i.i.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %bf.load.i.i.i = load i8, ptr %cloned.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i)
  %tobool.not.i.i.i123 = icmp sgt i8 %bf.load.i.i.i, -1
  br i1 %tobool.not.i.i.i123, label %if.then.i124.if.then14.i_crit_edge, label %skb_cloned.exit.i.i

if.then.i124.if.then14.i_crit_edge:               ; preds = %if.then.i124
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14.i

skb_cloned.exit.i.i:                              ; preds = %if.then.i124
  %143 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %end.i.i.i, align 4
  %dataref.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %144, i32 0, i32 10
  %call.i.i.i.i.i125 = call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i.i.i, i32 noundef 4) #10
  %145 = ptrtoint ptr %dataref.i.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load volatile i32, ptr %dataref.i.i.i, align 4
  %and.i.i.i = and i32 %146, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i.i)
  %cmp.i.not.i.i = icmp eq i32 %and.i.i.i, 1
  br i1 %cmp.i.not.i.i, label %skb_cloned.exit.i.i.if.then14.i_crit_edge, label %land.lhs.true.i.i

skb_cloned.exit.i.i.if.then14.i_crit_edge:        ; preds = %skb_cloned.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14.i

land.lhs.true.i.i:                                ; preds = %skb_cloned.exit.i.i
  %147 = ptrtoint ptr %cloned.i.i.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %bf.load.i.i.i.i = load i8, ptr %cloned.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i.i)
  %tobool.not.i.i.i.i126 = icmp sgt i8 %bf.load.i.i.i.i, -1
  br i1 %tobool.not.i.i.i.i126, label %land.lhs.true.i.i.skb_clone_writable.exit.i.i_crit_edge, label %skb_header_cloned.exit.i.i.i

land.lhs.true.i.i.skb_clone_writable.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_clone_writable.exit.i.i

skb_header_cloned.exit.i.i.i:                     ; preds = %land.lhs.true.i.i
  %148 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %end.i.i.i, align 4
  %dataref1.i.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %149, i32 0, i32 10
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i.i.i, i32 noundef 4) #10
  %150 = ptrtoint ptr %dataref1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load volatile i32, ptr %dataref1.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %151, 65535
  %shr.i.i.i.i = ashr i32 %151, 16
  %sub.i.i.i.i = sub nsw i32 %and.i.i.i.i, %shr.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i.i.i)
  %cmp.i.not.i.i.i = icmp eq i32 %sub.i.i.i.i, 1
  br i1 %cmp.i.not.i.i.i, label %skb_header_cloned.exit.i.i.i.skb_clone_writable.exit.i.i_crit_edge, label %skb_header_cloned.exit.i.i.i.skb_try_make_writable.exit.i_crit_edge

skb_header_cloned.exit.i.i.i.skb_try_make_writable.exit.i_crit_edge: ; preds = %skb_header_cloned.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_try_make_writable.exit.i

skb_header_cloned.exit.i.i.i.skb_clone_writable.exit.i.i_crit_edge: ; preds = %skb_header_cloned.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_clone_writable.exit.i.i

skb_clone_writable.exit.i.i:                      ; preds = %skb_header_cloned.exit.i.i.i.skb_clone_writable.exit.i.i_crit_edge, %land.lhs.true.i.i.skb_clone_writable.exit.i.i_crit_edge
  %152 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %data.i, align 4
  %154 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %153 to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %155 to i32
  %sub.ptr.sub.i.i.i.i = add i32 %wlen.0, %sub.ptr.lhs.cast.i.i.i.i
  %add.i.i.i128 = sub i32 %sub.ptr.sub.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  %hdr_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 9
  %156 = ptrtoint ptr %hdr_len.i.i.i to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %hdr_len.i.i.i, align 2
  %conv.i.i62.i = zext i16 %157 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i128, i32 %conv.i.i62.i)
  %cmp.i7.not.i.i = icmp ugt i32 %add.i.i.i128, %conv.i.i62.i
  br i1 %cmp.i7.not.i.i, label %skb_clone_writable.exit.i.i.skb_try_make_writable.exit.i_crit_edge, label %skb_clone_writable.exit.i.i.if.then14.i_crit_edge

skb_clone_writable.exit.i.i.if.then14.i_crit_edge: ; preds = %skb_clone_writable.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14.i

skb_clone_writable.exit.i.i.skb_try_make_writable.exit.i_crit_edge: ; preds = %skb_clone_writable.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_try_make_writable.exit.i

skb_try_make_writable.exit.i:                     ; preds = %skb_clone_writable.exit.i.i.skb_try_make_writable.exit.i_crit_edge, %skb_header_cloned.exit.i.i.i.skb_try_make_writable.exit.i_crit_edge
  %call3.i.i = call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.i.not.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.i.not.i, label %skb_try_make_writable.exit.i.if.then14.i_crit_edge, label %if.else.i, !prof !78

skb_try_make_writable.exit.i.if.then14.i_crit_edge: ; preds = %skb_try_make_writable.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14.i

if.then14.i:                                      ; preds = %skb_try_make_writable.exit.i.if.then14.i_crit_edge, %skb_clone_writable.exit.i.i.if.then14.i_crit_edge, %skb_cloned.exit.i.i.if.then14.i_crit_edge, %if.then.i124.if.then14.i_crit_edge
  %158 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %head.i.i, align 8
  %160 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i65.i = zext i16 %161 to i32
  %add.ptr.i.i66.i = getelementptr i8, ptr %159, i32 %conv.i.i65.i
  %check1.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i66.i, i32 0, i32 7
  %162 = ptrtoint ptr %check1.i.i to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %check1.i.i, align 2
  %conv.i.i129 = zext i16 %163 to i32
  %tos.i67.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i66.i, i32 0, i32 1
  %164 = ptrtoint ptr %tos.i67.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %tos.i67.i, align 1
  %conv2.i.i = zext i8 %165 to i32
  %add.i.i = add nuw nsw i32 %conv2.i.i, %conv.i.i129
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %add.i.i)
  %tobool.not.i.i = icmp ult i32 %add.i.i, 65535
  %add8.i.i = add nuw nsw i32 %add.i.i, 1
  %and10.i.i = and i32 %add8.i.i, 65535
  %check.0.i.i = select i1 %tobool.not.i.i, i32 %add.i.i, i32 %and10.i.i
  %and.i.i = and i8 %165, 3
  %or.i.i = or i8 %and.i.i, %conv2.i
  %conv11.i.i = zext i8 %or.i.i to i32
  %sub.i.i130 = sub nsw i32 %check.0.i.i, %conv11.i.i
  %shr12.i.i = lshr i32 %sub.i.i130, 16
  %add13.i.i = add nsw i32 %shr12.i.i, %sub.i.i130
  %conv14.i.i = trunc i32 %add13.i.i to i16
  %166 = ptrtoint ptr %check1.i.i to i32
  call void @__asan_store2_noabort(i32 %166)
  store i16 %conv14.i.i, ptr %check1.i.i, align 2
  %167 = ptrtoint ptr %tos.i67.i to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 %or.i.i, ptr %tos.i67.i, align 1
  %stats_dscp_set.i = getelementptr inbounds %struct.tcf_ctinfo, ptr %a, i32 0, i32 2
  %168 = ptrtoint ptr %stats_dscp_set.i to i32
  call void @__asan_load8_noabort(i32 %168)
  %169 = load i64, ptr %stats_dscp_set.i, align 8
  %inc.i = add i64 %169, 1
  store i64 %inc.i, ptr %stats_dscp_set.i, align 8
  br label %if.end50

if.else.i:                                        ; preds = %skb_try_make_writable.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %stats_dscp_error.i = getelementptr inbounds %struct.tcf_ctinfo, ptr %a, i32 0, i32 3
  %170 = ptrtoint ptr %stats_dscp_error.i to i32
  call void @__asan_load8_noabort(i32 %170)
  %171 = load i64, ptr %stats_dscp_error.i, align 16
  %inc16.i = add i64 %171, 1
  store i64 %inc16.i, ptr %stats_dscp_error.i, align 16
  br label %if.end50

sw.bb18.i:                                        ; preds = %if.then48
  %172 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %172)
  %173 = load i16, ptr %add.ptr.i.i.i, align 2
  %174 = lshr i16 %173, 4
  %conv1.i.i = trunc i16 %174 to i8
  %175 = and i8 %conv1.i.i, -4
  call void @__sanitizer_cov_trace_cmp1(i8 %175, i8 %conv2.i)
  %cmp26.not.i = icmp eq i8 %175, %conv2.i
  br i1 %cmp26.not.i, label %sw.bb18.i.if.end50_crit_edge, label %if.then28.i

sw.bb18.i.if.end50_crit_edge:                     ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

if.then28.i:                                      ; preds = %sw.bb18.i
  %cloned.i.i72.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %176 = ptrtoint ptr %cloned.i.i72.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %bf.load.i.i73.i = load i8, ptr %cloned.i.i72.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i73.i)
  %tobool.not.i.i74.i = icmp sgt i8 %bf.load.i.i73.i, -1
  br i1 %tobool.not.i.i74.i, label %if.then28.i.if.then39.i_crit_edge, label %skb_cloned.exit.i80.i

if.then28.i.if.then39.i_crit_edge:                ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then39.i

skb_cloned.exit.i80.i:                            ; preds = %if.then28.i
  %177 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %end.i.i.i, align 4
  %dataref.i.i76.i = getelementptr inbounds %struct.skb_shared_info, ptr %178, i32 0, i32 10
  %call.i.i.i.i77.i = call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i.i76.i, i32 noundef 4) #10
  %179 = ptrtoint ptr %dataref.i.i76.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load volatile i32, ptr %dataref.i.i76.i, align 4
  %and.i.i78.i = and i32 %180, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i78.i)
  %cmp.i.not.i79.i = icmp eq i32 %and.i.i78.i, 1
  br i1 %cmp.i.not.i79.i, label %skb_cloned.exit.i80.i.if.then39.i_crit_edge, label %land.lhs.true.i83.i

skb_cloned.exit.i80.i.if.then39.i_crit_edge:      ; preds = %skb_cloned.exit.i80.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then39.i

land.lhs.true.i83.i:                              ; preds = %skb_cloned.exit.i80.i
  %181 = ptrtoint ptr %cloned.i.i72.i to i32
  call void @__asan_load1_noabort(i32 %181)
  %bf.load.i.i.i81.i = load i8, ptr %cloned.i.i72.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i81.i)
  %tobool.not.i.i.i82.i = icmp sgt i8 %bf.load.i.i.i81.i, -1
  br i1 %tobool.not.i.i.i82.i, label %land.lhs.true.i83.i.skb_clone_writable.exit.i100.i_crit_edge, label %skb_header_cloned.exit.i.i90.i

land.lhs.true.i83.i.skb_clone_writable.exit.i100.i_crit_edge: ; preds = %land.lhs.true.i83.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_clone_writable.exit.i100.i

skb_header_cloned.exit.i.i90.i:                   ; preds = %land.lhs.true.i83.i
  %182 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %end.i.i.i, align 4
  %dataref1.i.i.i84.i = getelementptr inbounds %struct.skb_shared_info, ptr %183, i32 0, i32 10
  %call.i.i.i.i.i85.i = call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i.i84.i, i32 noundef 4) #10
  %184 = ptrtoint ptr %dataref1.i.i.i84.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load volatile i32, ptr %dataref1.i.i.i84.i, align 4
  %and.i.i.i86.i = and i32 %185, 65535
  %shr.i.i.i87.i = ashr i32 %185, 16
  %sub.i.i.i88.i = sub nsw i32 %and.i.i.i86.i, %shr.i.i.i87.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i.i88.i)
  %cmp.i.not.i.i89.i = icmp eq i32 %sub.i.i.i88.i, 1
  br i1 %cmp.i.not.i.i89.i, label %skb_header_cloned.exit.i.i90.i.skb_clone_writable.exit.i100.i_crit_edge, label %skb_header_cloned.exit.i.i90.i.skb_try_make_writable.exit105.i_crit_edge

skb_header_cloned.exit.i.i90.i.skb_try_make_writable.exit105.i_crit_edge: ; preds = %skb_header_cloned.exit.i.i90.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_try_make_writable.exit105.i

skb_header_cloned.exit.i.i90.i.skb_clone_writable.exit.i100.i_crit_edge: ; preds = %skb_header_cloned.exit.i.i90.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_clone_writable.exit.i100.i

skb_clone_writable.exit.i100.i:                   ; preds = %skb_header_cloned.exit.i.i90.i.skb_clone_writable.exit.i100.i_crit_edge, %land.lhs.true.i83.i.skb_clone_writable.exit.i100.i_crit_edge
  %186 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %data.i, align 4
  %188 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i93.i = ptrtoint ptr %187 to i32
  %sub.ptr.rhs.cast.i.i.i94.i = ptrtoint ptr %189 to i32
  %sub.ptr.sub.i.i.i95.i = add i32 %wlen.0, %sub.ptr.lhs.cast.i.i.i93.i
  %add.i.i96.i = sub i32 %sub.ptr.sub.i.i.i95.i, %sub.ptr.rhs.cast.i.i.i94.i
  %hdr_len.i.i97.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 9
  %190 = ptrtoint ptr %hdr_len.i.i97.i to i32
  call void @__asan_load2_noabort(i32 %190)
  %191 = load i16, ptr %hdr_len.i.i97.i, align 2
  %conv.i.i98.i = zext i16 %191 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i96.i, i32 %conv.i.i98.i)
  %cmp.i7.not.i99.i = icmp ugt i32 %add.i.i96.i, %conv.i.i98.i
  br i1 %cmp.i7.not.i99.i, label %skb_clone_writable.exit.i100.i.skb_try_make_writable.exit105.i_crit_edge, label %skb_clone_writable.exit.i100.i.if.then39.i_crit_edge

skb_clone_writable.exit.i100.i.if.then39.i_crit_edge: ; preds = %skb_clone_writable.exit.i100.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then39.i

skb_clone_writable.exit.i100.i.skb_try_make_writable.exit105.i_crit_edge: ; preds = %skb_clone_writable.exit.i100.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_try_make_writable.exit105.i

skb_try_make_writable.exit105.i:                  ; preds = %skb_clone_writable.exit.i100.i.skb_try_make_writable.exit105.i_crit_edge, %skb_header_cloned.exit.i.i90.i.skb_try_make_writable.exit105.i_crit_edge
  %call3.i101.i = call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i101.i)
  %tobool4.i102.not.i = icmp eq i32 %call3.i101.i, 0
  br i1 %tobool4.i102.not.i, label %skb_try_make_writable.exit105.i.if.then39.i_crit_edge, label %if.else43.i, !prof !78

skb_try_make_writable.exit105.i.if.then39.i_crit_edge: ; preds = %skb_try_make_writable.exit105.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then39.i

if.then39.i:                                      ; preds = %skb_try_make_writable.exit105.i.if.then39.i_crit_edge, %skb_clone_writable.exit.i100.i.if.then39.i_crit_edge, %skb_cloned.exit.i80.i.if.then39.i_crit_edge, %if.then28.i.if.then39.i_crit_edge
  %192 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %head.i.i, align 8
  %194 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %194)
  %195 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i108.i = zext i16 %195 to i32
  %add.ptr.i.i109.i = getelementptr i8, ptr %193, i32 %conv.i.i108.i
  %196 = ptrtoint ptr %add.ptr.i.i109.i to i32
  call void @__asan_load2_noabort(i32 %196)
  %197 = load i16, ptr %add.ptr.i.i109.i, align 2
  %198 = and i16 %197, -4033
  %conv6.i.i = zext i8 %conv2.i to i16
  %shl7.i.i = shl nuw nsw i16 %conv6.i.i, 4
  %or10.i.i = or i16 %198, %shl7.i.i
  store i16 %or10.i.i, ptr %add.ptr.i.i109.i, align 2
  %stats_dscp_set41.i = getelementptr inbounds %struct.tcf_ctinfo, ptr %a, i32 0, i32 2
  %199 = ptrtoint ptr %stats_dscp_set41.i to i32
  call void @__asan_load8_noabort(i32 %199)
  %200 = load i64, ptr %stats_dscp_set41.i, align 8
  %inc42.i = add i64 %200, 1
  store i64 %inc42.i, ptr %stats_dscp_set41.i, align 8
  br label %if.end50

if.else43.i:                                      ; preds = %skb_try_make_writable.exit105.i
  call void @__sanitizer_cov_trace_pc() #12
  %stats_dscp_error44.i = getelementptr inbounds %struct.tcf_ctinfo, ptr %a, i32 0, i32 3
  %201 = ptrtoint ptr %stats_dscp_error44.i to i32
  call void @__asan_load8_noabort(i32 %201)
  %202 = load i64, ptr %stats_dscp_error44.i, align 16
  %inc45.i = add i64 %202, 1
  store i64 %inc45.i, ptr %stats_dscp_error44.i, align 16
  br label %if.end50

if.end50:                                         ; preds = %if.else43.i, %if.then39.i, %sw.bb18.i.if.end50_crit_edge, %if.else.i, %if.then14.i, %sw.bb.i.if.end50_crit_edge, %lor.lhs.false.if.end50_crit_edge, %if.end40.if.end50_crit_edge
  %203 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %mode, align 2
  %205 = and i8 %204, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %205)
  %tobool54.not = icmp eq i8 %205, 0
  br i1 %tobool54.not, label %if.end50.if.end56_crit_edge, label %if.then55

if.end50.if.end56_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

if.then55:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  %stats_cpmark_set.i = getelementptr inbounds %struct.tcf_ctinfo, ptr %a, i32 0, i32 4
  %206 = ptrtoint ptr %stats_cpmark_set.i to i32
  call void @__asan_load8_noabort(i32 %206)
  %207 = load i64, ptr %stats_cpmark_set.i, align 8
  %inc.i131 = add i64 %207, 1
  store i64 %inc.i131, ptr %stats_cpmark_set.i, align 8
  %mark.i132 = getelementptr inbounds %struct.nf_conn, ptr %ct.0, i32 0, i32 11
  %208 = ptrtoint ptr %mark.i132 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %mark.i132, align 8
  %cpmarkmask.i = getelementptr inbounds %struct.tcf_ctinfo_params, ptr %4, i32 0, i32 4
  %210 = ptrtoint ptr %cpmarkmask.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %cpmarkmask.i, align 4
  %and.i133 = and i32 %211, %209
  %212 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %213 = ptrtoint ptr %212 to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 %and.i133, ptr %212, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %if.end50.if.end56_crit_edge
  %tobool57.not = icmp eq ptr %thash.0, null
  %tobool.not.i134 = icmp eq ptr %ct.0, null
  %or.cond = select i1 %tobool57.not, i1 true, i1 %tobool.not.i134
  br i1 %or.cond, label %if.end56.out_crit_edge, label %land.lhs.true.i

if.end56.out_crit_edge:                           ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

land.lhs.true.i:                                  ; preds = %if.end56
  %call.i.i.i.i.i.i135 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %ct.0, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !82
  call void @llvm.prefetch.p0(ptr nonnull %ct.0, i32 1, i32 3, i32 1) #10
  %214 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %ct.0, ptr nonnull %ct.0, i32 1, ptr nonnull elementtype(i32) %ct.0) #10, !srcloc !83
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %214, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i136 = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i136, label %if.then.i137, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.out_crit_edge, label %if.then10.i.i.i.i, !prof !78

if.end5.i.i.i.i.out_crit_edge:                    ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef nonnull %ct.0, i32 noundef 3) #10
  br label %out

if.then.i137:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !84
  call void @nf_ct_destroy(ptr noundef nonnull %ct.0) #10
  br label %out

out:                                              ; preds = %if.then.i137, %if.then10.i.i.i.i, %if.end5.i.i.i.i.out_crit_edge, %if.end56.out_crit_edge, %if.end32.out_crit_edge, %if.then27.out_crit_edge, %pskb_may_pull.exit109.out_crit_edge, %if.end.i103.out_crit_edge, %pskb_may_pull.exit.out_crit_edge, %if.end.i97.out_crit_edge, %skb_protocol.exit.out_crit_edge, %cleanup.thread.i.i.i, %do.end.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %zone) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %tuple) #10
  ret i32 %68
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_ctinfo_dump(ptr noundef %skb, ptr noundef %a, i32 noundef %bind, i32 noundef %ref) #2 align 64 {
entry:
  %tmp.i111 = alloca i64, align 8
  %tmp.i109 = alloca i64, align 8
  %tmp.i107 = alloca i64, align 8
  %tmp.i105 = alloca i32, align 4
  %tmp.i103 = alloca i32, align 4
  %tmp.i101 = alloca i32, align 4
  %tmp.i = alloca i16, align 2
  %opt = alloca %struct.tc_ctinfo, align 4
  %t = alloca %struct.tcf_t, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %opt) #10
  %0 = getelementptr inbounds %struct.tc_ctinfo, ptr %opt, i32 0, i32 1
  %1 = getelementptr inbounds %struct.tc_ctinfo, ptr %opt, i32 0, i32 2
  %2 = getelementptr inbounds %struct.tc_ctinfo, ptr %opt, i32 0, i32 3
  %3 = getelementptr inbounds %struct.tc_ctinfo, ptr %opt, i32 0, i32 4
  %tcfa_index = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 3
  %4 = ptrtoint ptr %tcfa_index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tcfa_index, align 4
  %6 = ptrtoint ptr %opt to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %opt, align 4
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %0, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %1, align 4
  %tcfa_refcnt = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tcfa_refcnt, i32 noundef 4) #10
  %9 = ptrtoint ptr %tcfa_refcnt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %tcfa_refcnt, align 4
  %sub = sub i32 %10, %ref
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sub, ptr %2, align 4
  %tcfa_bindcnt = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tcfa_bindcnt, i32 noundef 4) #10
  %12 = ptrtoint ptr %tcfa_bindcnt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %tcfa_bindcnt, align 4
  %sub4 = sub i32 %13, %bind
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sub4, ptr %3, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %15 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tail.i, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %t) #10
  %17 = getelementptr inbounds %struct.tcf_t, ptr %t, i32 0, i32 1
  %18 = getelementptr inbounds %struct.tcf_t, ptr %t, i32 0, i32 2
  %19 = getelementptr inbounds %struct.tcf_t, ptr %t, i32 0, i32 3
  %tcfa_lock = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 12
  %20 = getelementptr inbounds i8, ptr %t, i32 16
  %21 = call ptr @memset(ptr %20, i32 255, i32 16)
  tail call void @_raw_spin_lock_bh(ptr noundef %tcfa_lock) #10
  %dep_map = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 12, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call10 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true12

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true12:                                  ; preds = %land.lhs.true
  %.b98 = load i1, ptr @tcf_ctinfo_dump.__warned, align 1
  br i1 %.b98, label %land.lhs.true12.do.end_crit_edge, label %if.then

land.lhs.true12.do.end_crit_edge:                 ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @tcf_ctinfo_dump.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 296, ptr noundef nonnull @.str.4) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true12.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %params = getelementptr inbounds %struct.tcf_ctinfo, ptr %a, i32 0, i32 1
  %22 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %params, align 16
  %tcfa_tm = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %24 = load volatile i32, ptr @jiffies, align 128
  %25 = ptrtoint ptr %tcfa_tm to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %tcfa_tm, align 8
  %27 = trunc i64 %26 to i32
  %conv1.i = sub i32 %24, %27
  %call.i99 = tail call i32 @jiffies_to_clock_t(i32 noundef %conv1.i) #10
  %conv2.i = sext i32 %call.i99 to i64
  %28 = ptrtoint ptr %t to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %conv2.i, ptr %t, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %29 = load volatile i32, ptr @jiffies, align 128
  %lastuse.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 7, i32 1
  %30 = ptrtoint ptr %lastuse.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %lastuse.i, align 8
  %32 = trunc i64 %31 to i32
  %conv6.i = sub i32 %29, %32
  %call7.i = tail call i32 @jiffies_to_clock_t(i32 noundef %conv6.i) #10
  %conv8.i = sext i32 %call7.i to i64
  %33 = ptrtoint ptr %17 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %conv8.i, ptr %17, align 8
  %firstuse.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 7, i32 3
  %34 = ptrtoint ptr %firstuse.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %firstuse.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %35)
  %tobool.not.i = icmp eq i64 %35, 0
  br i1 %tobool.not.i, label %do.end.tcf_tm_dump.exit_crit_edge, label %cond.true.i

do.end.tcf_tm_dump.exit_crit_edge:                ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %tcf_tm_dump.exit

cond.true.i:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %36 = load volatile i32, ptr @jiffies, align 128
  %37 = trunc i64 %35 to i32
  %conv13.i = sub i32 %36, %37
  %call14.i = tail call i32 @jiffies_to_clock_t(i32 noundef %conv13.i) #10
  br label %tcf_tm_dump.exit

tcf_tm_dump.exit:                                 ; preds = %cond.true.i, %do.end.tcf_tm_dump.exit_crit_edge
  %cond.i = phi i32 [ %call14.i, %cond.true.i ], [ 0, %do.end.tcf_tm_dump.exit_crit_edge ]
  %conv15.i = sext i32 %cond.i to i64
  %38 = ptrtoint ptr %19 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %conv15.i, ptr %19, align 8
  %expires.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 7, i32 2
  %39 = ptrtoint ptr %expires.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %expires.i, align 8
  %conv17.i = trunc i64 %40 to i32
  %call18.i = tail call i32 @jiffies_to_clock_t(i32 noundef %conv17.i) #10
  %conv19.i = sext i32 %call18.i to i64
  %41 = ptrtoint ptr %18 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %conv19.i, ptr %18, align 8
  %call15 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 2, i32 noundef 32, ptr noundef nonnull %t, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %tcf_tm_dump.exit.nla_put_failure_crit_edge

tcf_tm_dump.exit.nla_put_failure_crit_edge:       ; preds = %tcf_tm_dump.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure

if.end18:                                         ; preds = %tcf_tm_dump.exit
  %tcfa_action = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 6
  %42 = ptrtoint ptr %tcfa_action to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tcfa_action, align 8
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %1, align 4
  %call21 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 20, ptr noundef nonnull %opt) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end18.nla_put_failure_crit_edge

if.end18.nla_put_failure_crit_edge:               ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure

if.end24:                                         ; preds = %if.end18
  %zone = getelementptr inbounds %struct.tcf_ctinfo_params, ptr %23, i32 0, i32 5
  %45 = ptrtoint ptr %zone to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %zone, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i) #10
  %47 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %tmp.i, align 2
  %call.i100 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 2, ptr noundef nonnull %tmp.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i100)
  %tobool26.not = icmp eq i32 %call.i100, 0
  br i1 %tobool26.not, label %if.end28, label %if.end24.nla_put_failure_crit_edge

if.end24.nla_put_failure_crit_edge:               ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure

if.end28:                                         ; preds = %if.end24
  %mode = getelementptr inbounds %struct.tcf_ctinfo_params, ptr %23, i32 0, i32 6
  %48 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %mode, align 2
  %50 = and i8 %49, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool29.not = icmp eq i8 %50, 0
  br i1 %tobool29.not, label %if.end28.if.end39_crit_edge, label %if.then30

if.end28.if.end39_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.then30:                                        ; preds = %if.end28
  %dscpmask = getelementptr inbounds %struct.tcf_ctinfo_params, ptr %23, i32 0, i32 2
  %51 = ptrtoint ptr %dscpmask to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %dscpmask, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i101) #10
  %53 = ptrtoint ptr %tmp.i101 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %tmp.i101, align 4
  %call.i102 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %tmp.i101) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i101) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i102)
  %tobool32.not = icmp eq i32 %call.i102, 0
  br i1 %tobool32.not, label %if.end34, label %if.then30.nla_put_failure_crit_edge

if.then30.nla_put_failure_crit_edge:              ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure

if.end34:                                         ; preds = %if.then30
  %dscpstatemask = getelementptr inbounds %struct.tcf_ctinfo_params, ptr %23, i32 0, i32 3
  %54 = ptrtoint ptr %dscpstatemask to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %dscpstatemask, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i103) #10
  %56 = ptrtoint ptr %tmp.i103 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %tmp.i103, align 4
  %call.i104 = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %tmp.i103) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i103) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i104)
  %tobool36.not = icmp eq i32 %call.i104, 0
  br i1 %tobool36.not, label %if.end34.if.end39_crit_edge, label %if.end34.nla_put_failure_crit_edge

if.end34.nla_put_failure_crit_edge:               ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure

if.end34.if.end39_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.end39:                                         ; preds = %if.end34.if.end39_crit_edge, %if.end28.if.end39_crit_edge
  %57 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %mode, align 2
  %59 = and i8 %58, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool43.not = icmp eq i8 %59, 0
  br i1 %tobool43.not, label %if.end39.if.end49_crit_edge, label %if.then44

if.end39.if.end49_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

if.then44:                                        ; preds = %if.end39
  %cpmarkmask = getelementptr inbounds %struct.tcf_ctinfo_params, ptr %23, i32 0, i32 4
  %60 = ptrtoint ptr %cpmarkmask to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %cpmarkmask, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i105) #10
  %62 = ptrtoint ptr %tmp.i105 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %tmp.i105, align 4
  %call.i106 = call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef 4, ptr noundef nonnull %tmp.i105) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i105) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i106)
  %tobool46.not = icmp eq i32 %call.i106, 0
  br i1 %tobool46.not, label %if.then44.if.end49_crit_edge, label %if.then44.nla_put_failure_crit_edge

if.then44.nla_put_failure_crit_edge:              ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure

if.then44.if.end49_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

if.end49:                                         ; preds = %if.then44.if.end49_crit_edge, %if.end39.if.end49_crit_edge
  %stats_dscp_set = getelementptr inbounds %struct.tcf_ctinfo, ptr %a, i32 0, i32 2
  %63 = ptrtoint ptr %stats_dscp_set to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %stats_dscp_set, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i107) #10
  %65 = ptrtoint ptr %tmp.i107 to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %64, ptr %tmp.i107, align 8
  %call.i108 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 8, i32 noundef 8, ptr noundef nonnull %tmp.i107, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i107) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i108)
  %tobool51.not = icmp eq i32 %call.i108, 0
  br i1 %tobool51.not, label %if.end53, label %if.end49.nla_put_failure_crit_edge

if.end49.nla_put_failure_crit_edge:               ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure

if.end53:                                         ; preds = %if.end49
  %stats_dscp_error = getelementptr inbounds %struct.tcf_ctinfo, ptr %a, i32 0, i32 3
  %66 = ptrtoint ptr %stats_dscp_error to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %stats_dscp_error, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i109) #10
  %68 = ptrtoint ptr %tmp.i109 to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %67, ptr %tmp.i109, align 8
  %call.i110 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 9, i32 noundef 8, ptr noundef nonnull %tmp.i109, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i109) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i110)
  %tobool55.not = icmp eq i32 %call.i110, 0
  br i1 %tobool55.not, label %if.end57, label %if.end53.nla_put_failure_crit_edge

if.end53.nla_put_failure_crit_edge:               ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure

if.end57:                                         ; preds = %if.end53
  %stats_cpmark_set = getelementptr inbounds %struct.tcf_ctinfo, ptr %a, i32 0, i32 4
  %69 = ptrtoint ptr %stats_cpmark_set to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %stats_cpmark_set, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i111) #10
  %71 = ptrtoint ptr %tmp.i111 to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %70, ptr %tmp.i111, align 8
  %call.i112 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 10, i32 noundef 8, ptr noundef nonnull %tmp.i111, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i111) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i112)
  %tobool59.not = icmp eq i32 %call.i112, 0
  br i1 %tobool59.not, label %if.end61, label %if.end57.nla_put_failure_crit_edge

if.end57.nla_put_failure_crit_edge:               ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure

if.end61:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  call void @_raw_spin_unlock_bh(ptr noundef %tcfa_lock) #10
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %72 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %len, align 4
  br label %cleanup

nla_put_failure:                                  ; preds = %if.end57.nla_put_failure_crit_edge, %if.end53.nla_put_failure_crit_edge, %if.end49.nla_put_failure_crit_edge, %if.then44.nla_put_failure_crit_edge, %if.end34.nla_put_failure_crit_edge, %if.then30.nla_put_failure_crit_edge, %if.end24.nla_put_failure_crit_edge, %if.end18.nla_put_failure_crit_edge, %tcf_tm_dump.exit.nla_put_failure_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %tcfa_lock) #10
  %tobool.not.i113 = icmp eq ptr %16, null
  br i1 %tobool.not.i113, label %nla_put_failure.cleanup_crit_edge, label %if.then.i

nla_put_failure.cleanup_crit_edge:                ; preds = %nla_put_failure
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %nla_put_failure
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %74 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %data.i, align 4
  %cmp.i = icmp ugt ptr %75, %16
  br i1 %cmp.i, label %do.end.i, label %if.then.i.if.end.i_crit_edge, !prof !73

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 991, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i.if.end.i_crit_edge
  %76 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %16 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %77 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %nla_put_failure.cleanup_crit_edge, %if.end61
  %retval.0 = phi i32 [ %73, %if.end61 ], [ -1, %nla_put_failure.cleanup_crit_edge ], [ -1, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %t) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %opt) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcf_ctinfo_cleanup(ptr nocapture noundef readonly %a) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %params = getelementptr inbounds %struct.tcf_ctinfo, ptr %a, i32 0, i32 1
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %do.end6

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

do.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kvfree_call_rcu(ptr noundef nonnull %1, ptr noundef null) #10
  br label %if.end9

if.end9:                                          ; preds = %do.end6, %entry.if.end9_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_ctinfo_search(ptr noundef %net, ptr noundef %a, i32 noundef %index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ctinfo_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %call1 = tail call i32 @tcf_idr_search(ptr noundef %call, ptr noundef %a, i32 noundef %index) #10
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_ctinfo_init(ptr noundef %net, ptr noundef %nla, ptr noundef %est, ptr noundef %a, ptr noundef %tp, i32 noundef %flags, ptr noundef %extack) #2 align 64 {
entry:
  %index = alloca i32, align 4
  %tb = alloca [11 x ptr], align 4
  %goto_ch = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ctinfo_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %and = and i32 %flags, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #10
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %tb) #10
  %1 = call ptr @memset(ptr %tb, i32 255, i32 44)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %goto_ch) #10
  %2 = ptrtoint ptr %goto_ch to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %goto_ch, align 4
  %tobool1.not = icmp eq ptr %nla, null
  br i1 %tobool1.not, label %do.body, label %if.end4

do.body:                                          ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @tcf_ctinfo_init.__msg) #10
  %tobool2.not = icmp eq ptr %extack, null
  br i1 %tobool2.not, label %do.body.cleanup_crit_edge, label %if.then3

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @tcf_ctinfo_init.__msg, ptr %extack, align 4
  br label %cleanup

if.end4:                                          ; preds = %entry
  %nla_type.i = getelementptr inbounds %struct.nlattr, ptr %nla, i32 0, i32 1
  %4 = ptrtoint ptr %nla_type.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %nla_type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %5)
  %tobool.not.i = icmp sgt i16 %5, -1
  br i1 %tobool.not.i, label %do.body.i, label %nla_parse_nested.exit

do.body.i:                                        ; preds = %if.end4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nla_parse_nested.__msg) #10
  %tobool1.not.i = icmp eq ptr %extack, null
  br i1 %tobool1.not.i, label %do.body.i.cleanup_crit_edge, label %if.then2.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then2.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @nla_parse_nested.__msg, ptr %extack, align 4
  %bad_attr.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %7 = ptrtoint ptr %bad_attr.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %nla, ptr %bad_attr.i, align 4
  %policy3.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %8 = ptrtoint ptr %policy3.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %policy3.i, align 4
  br label %cleanup

nla_parse_nested.exit:                            ; preds = %if.end4
  %add.ptr.i.i = getelementptr i8, ptr %nla, i32 4
  %9 = ptrtoint ptr %nla to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %nla, align 2
  %conv.i.i = zext i16 %10 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call6.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 10, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @ctinfo_policy, i32 noundef 31, ptr noundef %extack) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp = icmp slt i32 %call6.i, 0
  br i1 %cmp, label %nla_parse_nested.exit.cleanup_crit_edge, label %if.end7

nla_parse_nested.exit.cleanup_crit_edge:          ; preds = %nla_parse_nested.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %nla_parse_nested.exit
  %arrayidx = getelementptr inbounds [11 x ptr], ptr %tb, i32 0, i32 3
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %tobool8.not = icmp eq ptr %12, null
  br i1 %tobool8.not, label %do.body10, label %if.end18

do.body10:                                        ; preds = %if.end7
  call void @do_trace_netlink_extack(ptr noundef nonnull @tcf_ctinfo_init.__msg.10) #10
  %tobool12.not = icmp eq ptr %extack, null
  br i1 %tobool12.not, label %do.body10.cleanup_crit_edge, label %if.then13

do.body10.cleanup_crit_edge:                      ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then13:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @tcf_ctinfo_init.__msg.10, ptr %extack, align 4
  br label %cleanup

if.end18:                                         ; preds = %if.end7
  %add.ptr.i = getelementptr i8, ptr %12, i32 4
  %arrayidx21 = getelementptr inbounds [11 x ptr], ptr %tb, i32 0, i32 5
  %14 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx21, align 4
  %tobool22.not = icmp eq ptr %15, null
  br i1 %tobool22.not, label %if.end18.if.end66_crit_edge, label %if.then23

if.end18.if.end66_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66

if.then23:                                        ; preds = %if.end18
  %add.ptr.i.i295 = getelementptr i8, ptr %15, i32 4
  %16 = ptrtoint ptr %add.ptr.i.i295 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr.i.i295, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool26.not = icmp eq i32 %17, 0
  %18 = call i32 @llvm.cttz.i32(i32 %17, i1 true) #10, !range !85
  %spec.select = select i1 %tobool26.not, i32 0, i32 %18
  %conv = trunc i32 %spec.select to i8
  %shr = lshr i32 %17, %spec.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %shr)
  %cmp30.not = icmp eq i32 %shr, 63
  br i1 %cmp30.not, label %if.end42, label %do.body33

do.body33:                                        ; preds = %if.then23
  call void @do_trace_netlink_extack(ptr noundef nonnull @tcf_ctinfo_init.__msg.11) #10
  %tobool35.not = icmp eq ptr %extack, null
  br i1 %tobool35.not, label %do.body33.cleanup_crit_edge, label %if.then36

do.body33.cleanup_crit_edge:                      ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then36:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @tcf_ctinfo_init.__msg.11, ptr %extack, align 4
  %20 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx21, align 4
  %bad_attr = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %22 = ptrtoint ptr %bad_attr to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %bad_attr, align 4
  %policy = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %23 = ptrtoint ptr %policy to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %policy, align 4
  br label %cleanup

if.end42:                                         ; preds = %if.then23
  %arrayidx43 = getelementptr inbounds [11 x ptr], ptr %tb, i32 0, i32 6
  %24 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx43, align 4
  %tobool44.not = icmp eq ptr %25, null
  br i1 %tobool44.not, label %if.end42.cond.end49_crit_edge, label %cond.true45

if.end42.cond.end49_crit_edge:                    ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end49

cond.true45:                                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i296 = getelementptr i8, ptr %25, i32 4
  %26 = ptrtoint ptr %add.ptr.i.i296 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr.i.i296, align 4
  br label %cond.end49

cond.end49:                                       ; preds = %cond.true45, %if.end42.cond.end49_crit_edge
  %cond50 = phi i32 [ %27, %cond.true45 ], [ 0, %if.end42.cond.end49_crit_edge ]
  %and51 = and i32 %cond50, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %cond.end49.if.end66_crit_edge, label %do.body54

cond.end49.if.end66_crit_edge:                    ; preds = %cond.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66

do.body54:                                        ; preds = %cond.end49
  call void @do_trace_netlink_extack(ptr noundef nonnull @tcf_ctinfo_init.__msg.12) #10
  %tobool56.not = icmp eq ptr %extack, null
  br i1 %tobool56.not, label %do.body54.cleanup_crit_edge, label %if.then57

do.body54.cleanup_crit_edge:                      ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then57:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @tcf_ctinfo_init.__msg.12, ptr %extack, align 4
  %29 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx43, align 4
  %bad_attr60 = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %31 = ptrtoint ptr %bad_attr60 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %bad_attr60, align 4
  %policy61 = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %32 = ptrtoint ptr %policy61 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %policy61, align 4
  br label %cleanup

if.end66:                                         ; preds = %cond.end49.if.end66_crit_edge, %if.end18.if.end66_crit_edge
  %dscpmask.0 = phi i32 [ %17, %cond.end49.if.end66_crit_edge ], [ 0, %if.end18.if.end66_crit_edge ]
  %dscpstatemask.0 = phi i32 [ %cond50, %cond.end49.if.end66_crit_edge ], [ -1, %if.end18.if.end66_crit_edge ]
  %dscpmaskshift.0 = phi i8 [ %conv, %cond.end49.if.end66_crit_edge ], [ -1, %if.end18.if.end66_crit_edge ]
  %33 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr.i, align 4
  %35 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %index, align 4
  %and.lobit = lshr exact i32 %and, 17
  %call70 = call i32 @tcf_idr_check_alloc(ptr noundef %call, ptr noundef nonnull %index, ptr noundef %a, i32 noundef %and.lobit) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.then72, label %if.else

if.then72:                                        ; preds = %if.end66
  %36 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %index, align 4
  %call75 = call i32 @tcf_idr_create(ptr noundef %call, i32 noundef %37, ptr noundef %est, ptr noundef %a, ptr noundef nonnull @act_ctinfo_ops, i32 noundef %and.lobit, i1 noundef zeroext false, i32 noundef %flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.then72.if.end93_crit_edge, label %if.then77

if.then72.if.end93_crit_edge:                     ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end93

if.then77:                                        ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %index, align 4
  call void @tcf_idr_cleanup(ptr noundef %call, i32 noundef %39) #10
  br label %cleanup

if.else:                                          ; preds = %if.end66
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call70)
  %cmp79 = icmp slt i32 %call70, 1
  %brmerge = or i1 %tobool, %cmp79
  %call70.mux = select i1 %cmp79, i32 %call70, i32 0
  br i1 %brmerge, label %if.else.cleanup_crit_edge, label %if.end84

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end84:                                         ; preds = %if.else
  %and85 = and i32 %flags, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  br i1 %tobool86.not, label %if.then87, label %if.end84.if.end93_crit_edge

if.end84.if.end93_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end93

if.then87:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %a, align 4
  %call89 = call i32 @tcf_idr_release(ptr noundef %41, i1 noundef zeroext false) #10
  br label %cleanup

if.end93:                                         ; preds = %if.end84.if.end93_crit_edge, %if.then72.if.end93_crit_edge
  %ret.0 = phi i32 [ 0, %if.end84.if.end93_crit_edge ], [ 1, %if.then72.if.end93_crit_edge ]
  %action = getelementptr i8, ptr %12, i32 12
  %42 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %action, align 4
  %call94 = call i32 @tcf_action_check_ctrlact(i32 noundef %43, ptr noundef %tp, ptr noundef nonnull %goto_ch, ptr noundef %extack) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %cmp95 = icmp slt i32 %call94, 0
  br i1 %cmp95, label %if.end93.release_idr_crit_edge, label %if.end98

if.end93.release_idr_crit_edge:                   ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #12
  br label %release_idr

if.end98:                                         ; preds = %if.end93
  %44 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %a, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %46 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %46, i32 noundef 3520, i32 noundef 28) #13
  %tobool100.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool100.not, label %if.then104, label %if.end105, !prof !73

if.then104:                                       ; preds = %if.end98
  %47 = ptrtoint ptr %goto_ch to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %goto_ch, align 4
  %tobool209.not = icmp eq ptr %48, null
  br i1 %tobool209.not, label %if.then104.release_idr_crit_edge, label %if.then210

if.then104.release_idr_crit_edge:                 ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #12
  br label %release_idr

if.end105:                                        ; preds = %if.end98
  %net106 = getelementptr inbounds %struct.tcf_ctinfo_params, ptr %call7.i.i, i32 0, i32 1
  %49 = ptrtoint ptr %net106 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %net, ptr %net106, align 8
  %arrayidx107 = getelementptr inbounds [11 x ptr], ptr %tb, i32 0, i32 4
  %50 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx107, align 4
  %tobool108.not = icmp eq ptr %51, null
  br i1 %tobool108.not, label %if.end105.cond.end114_crit_edge, label %cond.true109

if.end105.cond.end114_crit_edge:                  ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end114

cond.true109:                                     ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i297 = getelementptr i8, ptr %51, i32 4
  %52 = ptrtoint ptr %add.ptr.i.i297 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %add.ptr.i.i297, align 2
  br label %cond.end114

cond.end114:                                      ; preds = %cond.true109, %if.end105.cond.end114_crit_edge
  %cond115 = phi i16 [ %53, %cond.true109 ], [ 0, %if.end105.cond.end114_crit_edge ]
  %zone = getelementptr inbounds %struct.tcf_ctinfo_params, ptr %call7.i.i, i32 0, i32 5
  %54 = ptrtoint ptr %zone to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %cond115, ptr %zone, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dscpmask.0)
  %tobool117.not = icmp eq i32 %dscpmask.0, 0
  br i1 %tobool117.not, label %cond.end114.if.end124_crit_edge, label %if.then118

cond.end114.if.end124_crit_edge:                  ; preds = %cond.end114
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end124

if.then118:                                       ; preds = %cond.end114
  call void @__sanitizer_cov_trace_pc() #12
  %dscpmask119 = getelementptr inbounds %struct.tcf_ctinfo_params, ptr %call7.i.i, i32 0, i32 2
  %55 = ptrtoint ptr %dscpmask119 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %dscpmask.0, ptr %dscpmask119, align 4
  %dscpmaskshift120 = getelementptr inbounds %struct.tcf_ctinfo_params, ptr %call7.i.i, i32 0, i32 7
  %56 = ptrtoint ptr %dscpmaskshift120 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %dscpmaskshift.0, ptr %dscpmaskshift120, align 1
  %dscpstatemask121 = getelementptr inbounds %struct.tcf_ctinfo_params, ptr %call7.i.i, i32 0, i32 3
  %57 = ptrtoint ptr %dscpstatemask121 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %dscpstatemask.0, ptr %dscpstatemask121, align 8
  %mode = getelementptr inbounds %struct.tcf_ctinfo_params, ptr %call7.i.i, i32 0, i32 6
  %58 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %mode, align 2
  %60 = or i8 %59, 1
  store i8 %60, ptr %mode, align 2
  br label %if.end124

if.end124:                                        ; preds = %if.then118, %cond.end114.if.end124_crit_edge
  %arrayidx125 = getelementptr inbounds [11 x ptr], ptr %tb, i32 0, i32 7
  %61 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx125, align 4
  %tobool126.not = icmp eq ptr %62, null
  br i1 %tobool126.not, label %if.end124.if.end134_crit_edge, label %if.then127

if.end124.if.end134_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end134

if.then127:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i298 = getelementptr i8, ptr %62, i32 4
  %63 = ptrtoint ptr %add.ptr.i.i298 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %add.ptr.i.i298, align 4
  %cpmarkmask = getelementptr inbounds %struct.tcf_ctinfo_params, ptr %call7.i.i, i32 0, i32 4
  %65 = ptrtoint ptr %cpmarkmask to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %cpmarkmask, align 4
  %mode130 = getelementptr inbounds %struct.tcf_ctinfo_params, ptr %call7.i.i, i32 0, i32 6
  %66 = ptrtoint ptr %mode130 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %mode130, align 2
  %68 = or i8 %67, 2
  store i8 %68, ptr %mode130, align 2
  br label %if.end134

if.end134:                                        ; preds = %if.then127, %if.end124.if.end134_crit_edge
  %tcfa_lock = getelementptr inbounds %struct.tc_action, ptr %45, i32 0, i32 12
  call void @_raw_spin_lock_bh(ptr noundef %tcfa_lock) #10
  %69 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %a, align 4
  %71 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %action, align 4
  %73 = ptrtoint ptr %goto_ch to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %goto_ch, align 4
  %call136 = call ptr @tcf_action_set_ctrlact(ptr noundef %70, i32 noundef %72, ptr noundef %74) #10
  %75 = ptrtoint ptr %goto_ch to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call136, ptr %goto_ch, align 4
  %dep_map = getelementptr inbounds %struct.tc_action, ptr %45, i32 0, i32 12, i32 0, i32 0, i32 4
  %call.i = call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool141.not = icmp eq i32 %call.i, 0
  br i1 %tobool141.not, label %land.lhs.true, label %if.end134.do.end149_crit_edge

if.end134.do.end149_crit_edge:                    ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end149

land.lhs.true:                                    ; preds = %if.end134
  %call142 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call142)
  %tobool143.not = icmp eq i32 %call142, 0
  br i1 %tobool143.not, label %land.lhs.true.do.end149_crit_edge, label %land.lhs.true144

land.lhs.true.do.end149_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end149

land.lhs.true144:                                 ; preds = %land.lhs.true
  %.b294 = load i1, ptr @tcf_ctinfo_init.__warned, align 1
  br i1 %.b294, label %land.lhs.true144.do.end149_crit_edge, label %if.then146

land.lhs.true144.do.end149_crit_edge:             ; preds = %land.lhs.true144
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end149

if.then146:                                       ; preds = %land.lhs.true144
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @tcf_ctinfo_init.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 263, ptr noundef nonnull @.str.4) #10
  br label %do.end149

do.end149:                                        ; preds = %if.then146, %land.lhs.true144.do.end149_crit_edge, %land.lhs.true.do.end149_crit_edge, %if.end134.do.end149_crit_edge
  %params = getelementptr inbounds %struct.tcf_ctinfo, ptr %45, i32 0, i32 1
  %76 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %params, align 16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !86
  %78 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %call7.i.i, ptr %params, align 16
  call void @_raw_spin_unlock_bh(ptr noundef %tcfa_lock) #10
  %79 = ptrtoint ptr %goto_ch to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %goto_ch, align 4
  %tobool194.not = icmp eq ptr %80, null
  br i1 %tobool194.not, label %do.end149.if.end196_crit_edge, label %if.then195

do.end149.if.end196_crit_edge:                    ; preds = %do.end149
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end196

if.then195:                                       ; preds = %do.end149
  call void @__sanitizer_cov_trace_pc() #12
  call void @tcf_chain_put_by_act(ptr noundef nonnull %80) #10
  br label %if.end196

if.end196:                                        ; preds = %if.then195, %do.end149.if.end196_crit_edge
  %tobool197.not = icmp eq ptr %77, null
  br i1 %tobool197.not, label %if.end196.cleanup_crit_edge, label %do.end204

if.end196.cleanup_crit_edge:                      ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end204:                                        ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #12
  call void @kvfree_call_rcu(ptr noundef nonnull %77, ptr noundef null) #10
  br label %cleanup

if.then210:                                       ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #12
  call void @tcf_chain_put_by_act(ptr noundef nonnull %48) #10
  br label %release_idr

release_idr:                                      ; preds = %if.then210, %if.then104.release_idr_crit_edge, %if.end93.release_idr_crit_edge
  %err.0 = phi i32 [ %call94, %if.end93.release_idr_crit_edge ], [ -12, %if.then210 ], [ -12, %if.then104.release_idr_crit_edge ]
  %81 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %a, align 4
  %call213 = call i32 @tcf_idr_release(ptr noundef %82, i1 noundef zeroext %tobool) #10
  br label %cleanup

cleanup:                                          ; preds = %release_idr, %do.end204, %if.end196.cleanup_crit_edge, %if.then87, %if.else.cleanup_crit_edge, %if.then77, %if.then57, %do.body54.cleanup_crit_edge, %if.then36, %do.body33.cleanup_crit_edge, %if.then13, %do.body10.cleanup_crit_edge, %nla_parse_nested.exit.cleanup_crit_edge, %if.then2.i, %do.body.i.cleanup_crit_edge, %if.then3, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %release_idr ], [ -17, %if.then87 ], [ %call75, %if.then77 ], [ -22, %if.then3 ], [ -22, %do.body.cleanup_crit_edge ], [ %call6.i, %nla_parse_nested.exit.cleanup_crit_edge ], [ -22, %if.then13 ], [ -22, %do.body10.cleanup_crit_edge ], [ -22, %if.then36 ], [ -22, %do.body33.cleanup_crit_edge ], [ -22, %if.then57 ], [ -22, %do.body54.cleanup_crit_edge ], [ %call70.mux, %if.else.cleanup_crit_edge ], [ %ret.0, %do.end204 ], [ %ret.0, %if.end196.cleanup_crit_edge ], [ -22, %if.then2.i ], [ -22, %do.body.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %goto_ch) #10
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %tb) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_ctinfo_walker(ptr noundef %net, ptr noundef %skb, ptr noundef %cb, i32 noundef %type, ptr noundef %ops, ptr noundef %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ctinfo_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %call1 = tail call i32 @tcf_generic_walker(ptr noundef %call, ptr noundef %skb, ptr noundef %cb, i32 noundef %type, ptr noundef %ops, ptr noundef %extack) #10
  ret i32 %call1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nf_ct_get_tuplepr(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nf_conntrack_find_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put_64bit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_clock_t(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @net_generic(ptr noundef %net, i32 noundef %id) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = tail call i32 @llvm.read_register.i32(metadata !63) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !87
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %gen = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %4 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %gen, align 128
  %call = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b9 = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 45, ptr noundef nonnull @.str.1) #10
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %arrayidx = getelementptr [0 x ptr], ptr %5, i32 0, i32 %id
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call.i10 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i10, label %do.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i13

do.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i13:                                ; preds = %do.end7
  %call1.i11 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11)
  %tobool.not.i12 = icmp eq i32 %call1.i11, 0
  br i1 %tobool.not.i12, label %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i15

land.lhs.true.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i13
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i15:                               ; preds = %land.lhs.true.i13
  %.b4.i14 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14, label %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, label %if.then.i16

land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i16:                                      ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.9) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i16, %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !88
  %8 = tail call i32 @llvm.read_register.i32(metadata !63) #10
  %and.i.i.i.i.i17 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i17 to ptr
  %preempt_count.i.i.i.i18 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i18, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i18, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  ret ptr %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_idr_search(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_idr_check_alloc(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_idr_create(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcf_idr_cleanup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_idr_release(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_action_check_ctrlact(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tcf_action_set_ctrlact(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcf_chain_put_by_act(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_generic_walker(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ctinfo_init_net(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ctinfo_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 156) #13
  %2 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %call, align 4
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %entry.tc_action_net_init.exit_crit_edge, label %if.end.i

entry.tc_action_net_init.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %tc_action_net_init.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ops2.i = getelementptr inbounds %struct.tc_action_net, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %ops2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @act_ctinfo_ops, ptr %ops2.i, align 4
  %net4.i = getelementptr inbounds %struct.tcf_idrinfo, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %net4.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %net, ptr %net4.i, align 8
  tail call void @__mutex_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @tc_action_net_init.__key) #10
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call, align 4
  %action_idr.i = getelementptr inbounds %struct.tcf_idrinfo, ptr %6, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %action_idr.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #10
  %xa_flags.i.i.i.i = getelementptr inbounds %struct.tcf_idrinfo, ptr %6, i32 0, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %xa_flags.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 67108868, ptr %xa_flags.i.i.i.i, align 4
  %xa_head.i.i.i.i = getelementptr inbounds %struct.tcf_idrinfo, ptr %6, i32 0, i32 1, i32 0, i32 2
  %8 = ptrtoint ptr %xa_head.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %xa_head.i.i.i.i, align 4
  %idr_base.i.i.i = getelementptr inbounds %struct.tcf_idrinfo, ptr %6, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %idr_base.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %idr_base.i.i.i, align 4
  %idr_next.i.i.i = getelementptr inbounds %struct.tcf_idrinfo, ptr %6, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %idr_next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %idr_next.i.i.i, align 4
  br label %tc_action_net_init.exit

tc_action_net_init.exit:                          ; preds = %if.end.i, %entry.tc_action_net_init.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -12, %entry.tc_action_net_init.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ctinfo_exit_net(ptr noundef readonly %net_list) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ctinfo_net_id, align 4
  tail call void @rtnl_lock() #10
  %1 = ptrtoint ptr %net_list to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn12.i = load ptr, ptr %net_list, align 4
  %cmp.not13.i = icmp eq ptr %.pn12.i, %net_list
  br i1 %cmp.not13.i, label %entry.tc_action_net_exit.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.tc_action_net_exit.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %tc_action_net_exit.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn14.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn12.i, %entry.for.body.i_crit_edge ]
  %net.0.i = getelementptr i8, ptr %.pn14.i, i32 -116
  %call.i = tail call fastcc ptr @net_generic(ptr noundef %net.0.i, i32 noundef %0) #10
  %ops.i = getelementptr inbounds %struct.tc_action_net, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call.i, align 4
  tail call void @tcf_idrinfo_destroy(ptr noundef %3, ptr noundef %5) #10
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call.i, align 4
  tail call void @kfree(ptr noundef %7) #10
  %8 = ptrtoint ptr %.pn14.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn.i = load ptr, ptr %.pn14.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %net_list
  br i1 %cmp.not.i, label %for.body.i.tc_action_net_exit.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.tc_action_net_exit.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tc_action_net_exit.exit

tc_action_net_exit.exit:                          ; preds = %for.body.i.tc_action_net_exit.exit_crit_edge, %entry.tc_action_net_exit.exit_crit_edge
  tail call void @rtnl_unlock() #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcf_idrinfo_destroy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_register_action(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !16, !17, !19, !20, !22, !24, !25, !27, !29, !31, !32, !34, !35, !36, !38, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !60, !62}
!llvm.named.register.sp = !{!63}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @__initcall__kmod_act_ctinfo__618_414_ctinfo_init_module6, !1, !"__initcall__kmod_act_ctinfo__618_414_ctinfo_init_module6", i1 false, i1 false}
!1 = !{!"../net/sched/act_ctinfo.c", i32 414, i32 1}
!2 = !{ptr @__exitcall_ctinfo_cleanup_module, !3, !"__exitcall_ctinfo_cleanup_module", i1 false, i1 false}
!3 = !{!"../net/sched/act_ctinfo.c", i32 415, i32 1}
!4 = !{ptr @__UNIQUE_ID_author619, !5, !"__UNIQUE_ID_author619", i1 false, i1 false}
!5 = !{!"../net/sched/act_ctinfo.c", i32 416, i32 1}
!6 = !{ptr @__UNIQUE_ID_description620, !7, !"__UNIQUE_ID_description620", i1 false, i1 false}
!7 = !{!"../net/sched/act_ctinfo.c", i32 417, i32 1}
!8 = !{ptr @__UNIQUE_ID_file621, !9, !"__UNIQUE_ID_file621", i1 false, i1 false}
!9 = !{!"../net/sched/act_ctinfo.c", i32 418, i32 1}
!10 = !{ptr @__UNIQUE_ID_license622, !9, !"__UNIQUE_ID_license622", i1 false, i1 false}
!11 = !{ptr @act_ctinfo_ops, !12, !"act_ctinfo_ops", i1 false, i1 false}
!12 = !{!"../net/sched/act_ctinfo.c", i32 372, i32 29}
!13 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!14 = !{!"../net/sched/act_ctinfo.c", i32 92, i32 7}
!15 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!17 = distinct !{null, !18, !"__already_done", i1 false, i1 false}
!18 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../include/linux/if_vlan.h", i32 598, i32 8}
!22 = distinct !{null, !23, !"__warned", i1 false, i1 false}
!23 = !{!"../net/sched/act_ctinfo.c", i32 295, i32 7}
!24 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../include/net/netlink.h", i32 991, i32 3}
!27 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!28 = !{!"../net/sched/act_ctinfo.c", i32 367, i32 7}
!29 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!30 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!31 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!32 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!33 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!34 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!36 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!37 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!38 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @ctinfo_net_id, !40, !"ctinfo_net_id", i1 false, i1 false}
!40 = !{!"../net/sched/act_ctinfo.c", i32 28, i32 21}
!41 = !{ptr @tcf_ctinfo_init.__msg, !42, !"__msg", i1 false, i1 false}
!42 = !{!"../net/sched/act_ctinfo.c", i32 172, i32 3}
!43 = !{ptr @tcf_ctinfo_init.__msg.10, !44, !"__msg", i1 false, i1 false}
!44 = !{!"../net/sched/act_ctinfo.c", i32 181, i32 3}
!45 = !{ptr @tcf_ctinfo_init.__msg.11, !46, !"__msg", i1 false, i1 false}
!46 = !{!"../net/sched/act_ctinfo.c", i32 194, i32 4}
!47 = !{ptr @tcf_ctinfo_init.__msg.12, !48, !"__msg", i1 false, i1 false}
!48 = !{!"../net/sched/act_ctinfo.c", i32 203, i32 4}
!49 = distinct !{null, !50, !"__warned", i1 false, i1 false}
!50 = !{!"../net/sched/act_ctinfo.c", i32 262, i32 11}
!51 = !{ptr @nla_parse_nested.__msg, !52, !"__msg", i1 false, i1 false}
!52 = !{!"../include/net/netlink.h", i32 1208, i32 3}
!53 = !{ptr @ctinfo_policy, !54, !"ctinfo_policy", i1 false, i1 false}
!54 = !{!"../net/sched/act_ctinfo.c", i32 146, i32 32}
!55 = !{ptr @ctinfo_net_ops, !56, !"ctinfo_net_ops", i1 false, i1 false}
!56 = !{!"../net/sched/act_ctinfo.c", i32 397, i32 33}
!57 = !{ptr @tc_action_net_init.__key, !58, !"__key", i1 false, i1 false}
!58 = !{!"../include/net/act_api.h", i32 156, i32 2}
!59 = !{ptr @.str.14, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @xa_init_flags.__key, !61, !"__key", i1 false, i1 false}
!61 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!62 = !{ptr @.str.15, !61, !"<string literal>", i1 false, i1 false}
!63 = !{!"sp"}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{!"branch_weights", i32 1, i32 2000}
!74 = !{i64 2149873217}
!75 = !{i64 2149878149}
!76 = !{i64 2149899861}
!77 = !{i64 2149904753}
!78 = !{!"branch_weights", i32 2000, i32 1}
!79 = !{i64 2149981210}
!80 = !{i64 2149981535}
!81 = !{!"auto-init"}
!82 = !{i64 2148438614}
!83 = !{i64 2148353054, i64 2148353086, i64 2148353115, i64 2148353149, i64 2148353180, i64 2148353203}
!84 = !{i64 2149314728}
!85 = !{i32 0, i32 33}
!86 = !{i64 2158309804}
!87 = !{i64 2149365218}
!88 = !{i64 2149365484}
