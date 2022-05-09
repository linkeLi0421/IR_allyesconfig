; ModuleID = '/llk/IR_all_yes/net/sched/act_connmark.c_pt.bc'
source_filename = "../net/sched/act_connmark.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tc_action_ops = type { %struct.list_head, [16 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.nf_conn = type { %struct.nf_conntrack, %struct.spinlock, i32, %struct.nf_conntrack_zone, [2 x %struct.nf_conntrack_tuple_hash], i32, i16, %struct.possible_net_t, %struct.hlist_node, %struct.anon.113, ptr, i32, i32, ptr, %union.nf_conntrack_proto }
%struct.nf_conntrack = type { %struct.refcount_struct }
%struct.nf_conntrack_tuple_hash = type { %struct.hlist_nulls_node, %struct.nf_conntrack_tuple }
%struct.hlist_nulls_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.anon.113 = type {}
%union.nf_conntrack_proto = type { %struct.nf_ct_dccp, [48 x i8] }
%struct.nf_ct_dccp = type { [2 x i8], i8, i8, i8, i64 }
%struct.tcf_connmark_info = type { %struct.tc_action, ptr, i16, [10 x i8] }
%struct.tc_connmark = type { i32, i32, i32, i32, i32, i16 }
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

@act_connmark_ops = internal global { %struct.tc_action_ops, [48 x i8] } { %struct.tc_action_ops { %struct.list_head zeroinitializer, [16 x i8] c"connmark\00\00\00\00\00\00\00\00", i32 14, i32 288, ptr null, ptr @tcf_connmark_act, ptr @tcf_connmark_dump, ptr null, ptr @tcf_connmark_search, ptr @tcf_connmark_init, ptr @tcf_connmark_walker, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@connmark_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @connmark_init_net, ptr null, ptr null, ptr @connmark_exit_net, ptr @connmark_net_id, i32 8 }, [32 x i8] zeroinitializer }, align 32
@__initcall__kmod_act_connmark__610_261_connmark_init_module6 = internal global ptr @connmark_init_module, section ".initcall6.init", align 4
@__exitcall_connmark_cleanup_module = internal global ptr @connmark_cleanup_module, section ".exitcall.exit", align 4
@__UNIQUE_ID_author611 = internal constant [52 x i8] c"act_connmark.author=Felix Fietkau <nbd@openwrt.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description612 = internal constant [60 x i8] c"act_connmark.description=Connection tracking mark restoring\00", section ".modinfo", align 1
@__UNIQUE_ID_file613 = internal constant [41 x i8] c"act_connmark.file=net/sched/act_connmark\00", section ".modinfo", align 1
@__UNIQUE_ID_license614 = internal constant [25 x i8] c"act_connmark.license=GPL\00", section ".modinfo", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/if_vlan.h\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@connmark_net_id = internal global { i32, [28 x i8] } zeroinitializer, align 32
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@connmark_policy = internal constant { [4 x %struct.nla_policy], [32 x i8] } { [4 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 0, i8 0, i16 24, %union.anon.76 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer], [32 x i8] zeroinitializer }, align 32
@tc_action_net_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&tn->idrinfo->lock\00", [45 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"act_connmark_ops\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 220, i32 29 }
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"connmark_net_ops\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 244, i32 33 }
@___asan_gen_.19 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 271, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant [27 x i8] c"../include/linux/if_vlan.h\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 598, i32 8 }
@___asan_gen_.25 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 991, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant [16 x i8] c"connmark_net_id\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 28, i32 21 }
@___asan_gen_.34 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 45, i32 7 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 695, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 723, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant [16 x i8] c"connmark_policy\00", align 1
@___asan_gen_.46 = private constant [28 x i8] c"../net/sched/act_connmark.c\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 93, i32 32 }
@___asan_gen_.52 = private unnamed_addr constant [25 x i8] c"../include/net/act_api.h\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 156, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.57 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 378, i32 2 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @__UNIQUE_ID_author611, ptr @__UNIQUE_ID_description612, ptr @__UNIQUE_ID_file613, ptr @__UNIQUE_ID_license614, ptr @__exitcall_connmark_cleanup_module, ptr @__initcall__kmod_act_connmark__610_261_connmark_init_module6, ptr @connmark_cleanup_module, ptr @act_connmark_ops, ptr @connmark_net_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @connmark_net_id, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @connmark_policy, ptr @tc_action_net_init.__key, ptr @.str.8, ptr @xa_init_flags.__key, ptr @.str.9], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @act_connmark_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @connmark_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @connmark_net_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @connmark_policy to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_action_net_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @connmark_cleanup_module() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @tcf_unregister_action(ptr noundef nonnull @act_connmark_ops, ptr noundef nonnull @connmark_net_ops) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_unregister_action(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @connmark_init_module() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tcf_register_action(ptr noundef nonnull @act_connmark_ops, ptr noundef nonnull @connmark_net_ops) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_connmark_act(ptr noundef %skb, ptr noundef %a, ptr nocapture noundef readnone %res) #2 align 64 {
entry:
  %vhdr.i.i.i = alloca %struct.vlan_hdr, align 2
  %tuple = alloca %struct.nf_conntrack_tuple, align 4
  %zone = alloca %struct.nf_conntrack_zone, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %tuple) #9
  %0 = call ptr @memset(ptr %tuple, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %zone) #9
  %1 = getelementptr inbounds %struct.nf_conntrack_zone, ptr %zone, i32 0, i32 2
  %tcfa_lock = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 12
  %2 = ptrtoint ptr %zone to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %zone, align 4
  tail call void @_raw_spin_lock(ptr noundef %tcfa_lock) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %lastuse.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %lastuse.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %lastuse.i, align 8
  %conv.i = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %conv.i)
  %cmp.not.i = icmp eq i64 %5, %conv.i
  br i1 %cmp.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %lastuse.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %conv.i, ptr %lastuse.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %firstuse.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 7, i32 3
  %7 = ptrtoint ptr %firstuse.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %firstuse.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %tobool.not.i = icmp eq i64 %8, 0
  br i1 %tobool.not.i, label %if.then7.i, label %if.end.i.tcf_lastuse_update.exit_crit_edge, !prof !53

if.end.i.tcf_lastuse_update.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tcf_lastuse_update.exit

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %firstuse.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %conv.i, ptr %firstuse.i, align 8
  br label %tcf_lastuse_update.exit

tcf_lastuse_update.exit:                          ; preds = %if.then7.i, %if.end.i.tcf_lastuse_update.exit_crit_edge
  %tcfa_bstats = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 8
  %cb.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %10 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cb.i.i.i, align 4
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %12 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %end.i.i.i, align 4
  %gso_size.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %gso_size.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %gso_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool.i.not.i = icmp eq i16 %15, 0
  br i1 %tobool.i.not.i, label %tcf_lastuse_update.exit.cond.end.i_crit_edge, label %cond.true.i

tcf_lastuse_update.exit.cond.end.i_crit_edge:     ; preds = %tcf_lastuse_update.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i

cond.true.i:                                      ; preds = %tcf_lastuse_update.exit
  call void @__sanitizer_cov_trace_pc() #11
  %gso_segs.i = getelementptr inbounds %struct.skb_shared_info, ptr %13, i32 0, i32 5
  %16 = ptrtoint ptr %gso_segs.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %gso_segs.i, align 2
  %conv4.i = zext i16 %17 to i32
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %tcf_lastuse_update.exit.cond.end.i_crit_edge
  %cond.i = phi i32 [ %conv4.i, %cond.true.i ], [ 1, %tcf_lastuse_update.exit.cond.end.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %18 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i.i.i.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i.i.i.i, label %cond.end.i.bstats_update.exit_crit_edge, label %land.lhs.true.i.i.i.i

cond.end.i.bstats_update.exit_crit_edge:          ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bstats_update.exit

land.lhs.true.i.i.i.i:                            ; preds = %cond.end.i
  %19 = tail call i32 @llvm.read_register.i32(metadata !43) #9
  %and.i.i.i.i.i.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %22, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !54
  %23 = tail call i32 @llvm.read_register.i32(metadata !43) #9
  %and.i.i.i.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %26
  %27 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %28, ptrtoint (ptr @lockdep_recursion to i32)
  %29 = inttoptr i32 %add.i.i.i.i to ptr
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %29, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !55
  %32 = tail call i32 @llvm.read_register.i32(metadata !43) #9
  %and.i.i.i7.i.i.i.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i7.i.i.i.i to ptr
  %preempt_count.i.i8.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %preempt_count.i.i8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %preempt_count.i.i8.i.i.i.i, align 4
  %sub.i.i.i.i.i = add i32 %35, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i8.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool20.not.i.i.i.i = icmp eq i32 %31, 0
  br i1 %tobool20.not.i.i.i.i, label %land.rhs.i.i.i.i, label %land.lhs.true.i.i.i.i.bstats_update.exit_crit_edge

land.lhs.true.i.i.i.i.bstats_update.exit_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bstats_update.exit

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  %36 = tail call i32 @llvm.read_register.i32(metadata !43) #9
  %and.i.i.i.i.i.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp.i.i.i.i = icmp eq i32 %39, 0
  br i1 %cmp.i.i.i.i, label %land.rhs22.i.i.i.i, label %land.rhs.i.i.i.i.bstats_update.exit_crit_edge

land.rhs.i.i.i.i.bstats_update.exit_crit_edge:    ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bstats_update.exit

land.rhs22.i.i.i.i:                               ; preds = %land.rhs.i.i.i.i
  %40 = tail call i32 @llvm.read_register.i32(metadata !43) #9
  %and.i.i.i9.i.i.i.i = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i9.i.i.i.i to ptr
  %preempt_count.i.i10.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i, align 4
  %add.i11.i.i.i.i = add i32 %43, 1
  store volatile i32 %add.i11.i.i.i.i, ptr %preempt_count.i.i10.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !56
  %44 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx46.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %45
  %46 = ptrtoint ptr %arrayidx46.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx46.i.i.i.i, align 4
  %add47.i.i.i.i = add i32 %47, ptrtoint (ptr @hardirqs_enabled to i32)
  %48 = inttoptr i32 %add47.i.i.i.i to ptr
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %48, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !57
  %51 = tail call i32 @llvm.read_register.i32(metadata !43) #9
  %and.i.i.i12.i.i.i.i = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i.i12.i.i.i.i to ptr
  %preempt_count.i.i13.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %preempt_count.i.i13.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %preempt_count.i.i13.i.i.i.i, align 4
  %sub.i14.i.i.i.i = add i32 %54, -1
  store volatile i32 %sub.i14.i.i.i.i, ptr %preempt_count.i.i13.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool54.not.i.i.i.i = icmp eq i32 %50, 0
  br i1 %tobool54.not.i.i.i.i, label %land.rhs22.i.i.i.i.bstats_update.exit_crit_edge, label %land.rhs58.i.i.i.i

land.rhs22.i.i.i.i.bstats_update.exit_crit_edge:  ; preds = %land.rhs22.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bstats_update.exit

land.rhs58.i.i.i.i:                               ; preds = %land.rhs22.i.i.i.i
  %.b1.i.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs58.i.i.i.i.bstats_update.exit_crit_edge, label %if.then.i.i.i.i, !prof !58

land.rhs58.i.i.i.i.bstats_update.exit_crit_edge:  ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bstats_update.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 271, i32 noundef 9, ptr noundef null) #9
  br label %bstats_update.exit

bstats_update.exit:                               ; preds = %if.then.i.i.i.i, %land.rhs58.i.i.i.i.bstats_update.exit_crit_edge, %land.rhs22.i.i.i.i.bstats_update.exit_crit_edge, %land.rhs.i.i.i.i.bstats_update.exit_crit_edge, %land.lhs.true.i.i.i.i.bstats_update.exit_crit_edge, %cond.end.i.bstats_update.exit_crit_edge
  %conv.i55 = zext i32 %11 to i64
  %syncp.i.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 8, i32 2
  %55 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %56, 1
  store i32 %inc.i.i.i.i.i.i, ptr %syncp.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  %dep_map.i.i.i.i.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 8, i32 2, i32 0, i32 1
  %57 = tail call ptr @llvm.returnaddress(i32 0) #9
  %58 = ptrtoint ptr %57 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %58) #9
  %59 = ptrtoint ptr %tcfa_bstats to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %tcfa_bstats, align 8
  %add.i.i.i = add i64 %60, %conv.i55
  store i64 %add.i.i.i, ptr %tcfa_bstats, align 8
  %packets2.i.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 8, i32 1
  %conv.i7.i.i = zext i32 %cond.i to i64
  %61 = ptrtoint ptr %packets2.i.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %packets2.i.i, align 8
  %add.i8.i.i = add i64 %62, %conv.i7.i.i
  store i64 %add.i8.i.i, ptr %packets2.i.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i.i, i32 noundef %58) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !60
  %63 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i = add i32 %64, 1
  store i32 %inc.i.i.i.i.i, ptr %syncp.i.i, align 4
  %protocol.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %65 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %protocol.i.i, align 8
  %mac_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %67 = ptrtoint ptr %mac_len.i.i.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %mac_len.i.i.i, align 4
  %conv.i.i.i = zext i16 %68 to i32
  %69 = zext i16 %66 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values)
  switch i16 %66, label %bstats_update.exit.skb_protocol.exit_crit_edge [
    i16 -30552, label %bstats_update.exit.if.then.i.i.i_crit_edge
    i16 -32512, label %bstats_update.exit.if.then.i.i.i_crit_edge64
  ]

bstats_update.exit.if.then.i.i.i_crit_edge64:     ; preds = %bstats_update.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i

bstats_update.exit.if.then.i.i.i_crit_edge:       ; preds = %bstats_update.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i

bstats_update.exit.skb_protocol.exit_crit_edge:   ; preds = %bstats_update.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_protocol.exit

if.then.i.i.i:                                    ; preds = %bstats_update.exit.if.then.i.i.i_crit_edge, %bstats_update.exit.if.then.i.i.i_crit_edge64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %68)
  %tobool.not.i.i.i = icmp eq i16 %68, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i.if.end26.i.i.i_crit_edge, label %if.then1.i.i.i

if.then.i.i.i.if.end26.i.i.i_crit_edge:           ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26.i.i.i

if.then1.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %68)
  %cmp.i.i.i = icmp ult i16 %68, 4
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.end25.i.i.i, !prof !53

do.end.i.i.i:                                     ; preds = %if.then1.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 598, i32 noundef 9, ptr noundef null) #9
  br label %out

if.end25.i.i.i:                                   ; preds = %if.then1.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i = add nsw i32 %conv.i.i.i, -4
  br label %if.end26.i.i.i

if.end26.i.i.i:                                   ; preds = %if.end25.i.i.i, %if.then.i.i.i.if.end26.i.i.i_crit_edge
  %vlan_depth.0.i.i.i = phi i32 [ %sub.i.i.i, %if.end25.i.i.i ], [ 14, %if.then.i.i.i.if.end26.i.i.i_crit_edge ]
  %70 = getelementptr inbounds %struct.vlan_hdr, ptr %vhdr.i.i.i, i32 0, i32 1
  %len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %data_len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %tobool2.not.i.i.i.i.i = icmp eq ptr %skb, null
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  br label %do.body27.i.i.i

do.body27.i.i.i:                                  ; preds = %do.body27.backedge.i.i.i, %if.end26.i.i.i
  %vlan_depth.1.i.i.i = phi i32 [ %vlan_depth.0.i.i.i, %if.end26.i.i.i ], [ %add.i.i.i56, %do.body27.backedge.i.i.i ]
  %parse_depth.0.i.i.i = phi i32 [ 8, %if.end26.i.i.i ], [ %dec.i.i.i, %do.body27.backedge.i.i.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vhdr.i.i.i) #9
  %71 = ptrtoint ptr %vhdr.i.i.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 -1, ptr %vhdr.i.i.i, align 2, !annotation !61
  %72 = ptrtoint ptr %70 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 -1, ptr %70, align 2, !annotation !61
  %73 = ptrtoint ptr %len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %len.i.i.i.i.i, align 4
  %75 = ptrtoint ptr %data_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %data_len.i.i.i.i.i, align 8
  %77 = add i32 %vlan_depth.1.i.i.i, %76
  %sub.i1.i.i.i.i = sub i32 %74, %77
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i1.i.i.i.i)
  %cmp.i.i.i.i.i = icmp sgt i32 %sub.i1.i.i.i.i, 3
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %if.end.i.i.i.i.i, !prof !58

if.then.i.i.i.i.i:                                ; preds = %do.body27.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %78 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %79, i32 %vlan_depth.1.i.i.i
  br label %skb_header_pointer.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %do.body27.i.i.i
  br i1 %tobool2.not.i.i.i.i.i, label %if.end.i.i.i.i.i.cleanup.thread.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.i.i

if.end.i.i.i.i.i.cleanup.thread.i.i.i_crit_edge:  ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread.i.i.i

lor.lhs.false.i.i.i.i.i:                          ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %vlan_depth.1.i.i.i, ptr noundef nonnull %vhdr.i.i.i, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %cmp3.i.i.i.i.i = icmp slt i32 %call.i.i.i.i.i, 0
  %spec.select.i.i.i.i.i = select i1 %cmp3.i.i.i.i.i, ptr null, ptr %vhdr.i.i.i, !prof !53
  br label %skb_header_pointer.exit.i.i.i

skb_header_pointer.exit.i.i.i:                    ; preds = %lor.lhs.false.i.i.i.i.i, %if.then.i.i.i.i.i
  %retval.0.i.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i.i, %if.then.i.i.i.i.i ], [ %spec.select.i.i.i.i.i, %lor.lhs.false.i.i.i.i.i ]
  %tobool29.not.i.i.i = icmp eq ptr %retval.0.i.i.i.i.i, null
  %dec.i.i.i = add nsw i32 %parse_depth.0.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i)
  %tobool30.not.i.i.i = icmp eq i32 %dec.i.i.i, 0
  %80 = select i1 %tobool29.not.i.i.i, i1 true, i1 %tobool30.not.i.i.i, !prof !53
  br i1 %80, label %skb_header_pointer.exit.i.i.i.cleanup.thread.i.i.i_crit_edge, label %do.cond42.i.i.i, !prof !53

skb_header_pointer.exit.i.i.i.cleanup.thread.i.i.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread.i.i.i

cleanup.thread.i.i.i:                             ; preds = %skb_header_pointer.exit.i.i.i.cleanup.thread.i.i.i_crit_edge, %if.end.i.i.i.i.i.cleanup.thread.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i) #9
  br label %out

do.cond42.i.i.i:                                  ; preds = %skb_header_pointer.exit.i.i.i
  %h_vlan_encapsulated_proto.i.i.i = getelementptr inbounds %struct.vlan_hdr, ptr %retval.0.i.i.i.i.i, i32 0, i32 1
  %81 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %h_vlan_encapsulated_proto.i.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i) #9
  %83 = zext i16 %82 to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values.10)
  switch i16 %82, label %do.cond42.i.i.i.skb_protocol.exit_crit_edge [
    i16 -30552, label %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge
    i16 -32512, label %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge65
  ]

do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge65: ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body27.backedge.i.i.i

do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge: ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body27.backedge.i.i.i

do.cond42.i.i.i.skb_protocol.exit_crit_edge:      ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_protocol.exit

do.body27.backedge.i.i.i:                         ; preds = %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge, %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge65
  %add.i.i.i56 = add nsw i32 %vlan_depth.1.i.i.i, 4
  br label %do.body27.i.i.i

skb_protocol.exit:                                ; preds = %do.cond42.i.i.i.skb_protocol.exit_crit_edge, %bstats_update.exit.skb_protocol.exit_crit_edge
  %retval.2.i.i.i = phi i16 [ %66, %bstats_update.exit.skb_protocol.exit_crit_edge ], [ %82, %do.cond42.i.i.i.skb_protocol.exit_crit_edge ]
  %84 = zext i16 %retval.2.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %84, ptr @__sancov_gen_cov_switch_values.11)
  switch i16 %retval.2.i.i.i, label %skb_protocol.exit.out_crit_edge [
    i16 2048, label %sw.bb
    i16 -31011, label %sw.bb4
  ]

skb_protocol.exit.out_crit_edge:                  ; preds = %skb_protocol.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

sw.bb:                                            ; preds = %skb_protocol.exit
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %85 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %86)
  %cmp = icmp ult i32 %86, 20
  br i1 %cmp, label %sw.bb.out_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb.out_crit_edge:                              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

sw.bb4:                                           ; preds = %skb_protocol.exit
  %len5 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %87 = ptrtoint ptr %len5 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %len5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %88)
  %cmp6 = icmp ult i32 %88, 40
  br i1 %cmp6, label %sw.bb4.out_crit_edge, label %sw.bb4.sw.epilog_crit_edge

sw.bb4.sw.epilog_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb4.out_crit_edge:                             ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

sw.epilog:                                        ; preds = %sw.bb4.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %proto.0 = phi i16 [ 2, %sw.bb.sw.epilog_crit_edge ], [ 10, %sw.bb4.sw.epilog_crit_edge ]
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %89 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %_nfct.i.i, align 8
  %and1.i = and i32 %90, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.end13, label %if.then11

if.then11:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %91 = inttoptr i32 %and1.i to ptr
  %mark = getelementptr inbounds %struct.nf_conn, ptr %91, i32 0, i32 11
  %92 = ptrtoint ptr %mark to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %mark, align 8
  %94 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %93, ptr %94, align 4
  %overlimits = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 10, i32 4
  %96 = ptrtoint ptr %overlimits to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %overlimits, align 16
  %inc = add i32 %97, 1
  store i32 %inc, ptr %overlimits, align 16
  br label %out

if.end13:                                         ; preds = %sw.epilog
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %98 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %100 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %101 to i32
  %add.ptr.i.i = getelementptr i8, ptr %99, i32 %conv.i.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %102 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %103 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %net = getelementptr inbounds %struct.tcf_connmark_info, ptr %a, i32 0, i32 1
  %104 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %net, align 16
  %call16 = call zeroext i1 @nf_ct_get_tuplepr(ptr noundef %skb, i32 noundef %sub.ptr.sub.i, i16 noundef zeroext %proto.0, ptr noundef %105, ptr noundef nonnull %tuple) #9
  br i1 %call16, label %if.end18, label %if.end13.out_crit_edge

if.end13.out_crit_edge:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end18:                                         ; preds = %if.end13
  %zone19 = getelementptr inbounds %struct.tcf_connmark_info, ptr %a, i32 0, i32 2
  %106 = ptrtoint ptr %zone19 to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %zone19, align 4
  %108 = ptrtoint ptr %zone to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %107, ptr %zone, align 4
  %109 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 3, ptr %1, align 1
  %110 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %net, align 16
  %call21 = call ptr @nf_conntrack_find_get(ptr noundef %111, ptr noundef nonnull %zone, ptr noundef nonnull %tuple) #9
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %if.end18.out_crit_edge, label %if.end24

if.end18.out_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end24:                                         ; preds = %if.end18
  %dir.i = getelementptr inbounds %struct.nf_conntrack_tuple_hash, ptr %call21, i32 0, i32 1, i32 1, i32 3
  %112 = ptrtoint ptr %dir.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %dir.i, align 1
  %conv.i57 = zext i8 %113 to i32
  %.neg.i = mul nsw i32 %conv.i57, -48
  %idx.neg.i = add nsw i32 %.neg.i, -56
  %add.ptr.i = getelementptr i8, ptr %call21, i32 %idx.neg.i
  %overlimits28 = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 10, i32 4
  %114 = ptrtoint ptr %overlimits28 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %overlimits28, align 16
  %inc29 = add i32 %115, 1
  store i32 %inc29, ptr %overlimits28, align 16
  %mark30 = getelementptr inbounds %struct.nf_conn, ptr %add.ptr.i, i32 0, i32 11
  %116 = ptrtoint ptr %mark30 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %mark30, align 8
  %118 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %117, ptr %118, align 4
  %tobool.not.i58 = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i58, label %if.end24.out_crit_edge, label %land.lhs.true.i

if.end24.out_crit_edge:                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

land.lhs.true.i:                                  ; preds = %if.end24
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %add.ptr.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !62
  call void @llvm.prefetch.p0(ptr nonnull %add.ptr.i, i32 1, i32 3, i32 1) #9
  %120 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %add.ptr.i, ptr nonnull %add.ptr.i, i32 1, ptr nonnull elementtype(i32) %add.ptr.i) #9, !srcloc !63
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %120, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i59 = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i59, label %if.then.i60, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.out_crit_edge, label %if.then10.i.i.i.i, !prof !58

if.end5.i.i.i.i.out_crit_edge:                    ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef nonnull %add.ptr.i, i32 noundef 3) #9
  br label %out

if.then.i60:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !64
  call void @nf_ct_destroy(ptr noundef nonnull %add.ptr.i) #9
  br label %out

out:                                              ; preds = %if.then.i60, %if.then10.i.i.i.i, %if.end5.i.i.i.i.out_crit_edge, %if.end24.out_crit_edge, %if.end18.out_crit_edge, %if.end13.out_crit_edge, %if.then11, %sw.bb4.out_crit_edge, %sw.bb.out_crit_edge, %skb_protocol.exit.out_crit_edge, %cleanup.thread.i.i.i, %do.end.i.i.i
  call void @_raw_spin_unlock(ptr noundef %tcfa_lock) #9
  %tcfa_action = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 6
  %121 = ptrtoint ptr %tcfa_action to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %tcfa_action, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %zone) #9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %tuple) #9
  ret i32 %122
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_connmark_dump(ptr noundef %skb, ptr noundef %a, i32 noundef %bind, i32 noundef %ref) #3 align 64 {
entry:
  %opt = alloca %struct.tc_connmark, align 4
  %t = alloca %struct.tcf_t, align 8
  call void @__sanitizer_cov_trace_pc() #11
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %0 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail.i, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %opt) #9
  %2 = getelementptr inbounds i8, ptr %opt, i32 20
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4
  %tcfa_index = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 3
  %4 = ptrtoint ptr %tcfa_index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tcfa_index, align 4
  %6 = ptrtoint ptr %opt to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %opt, align 4
  %capab = getelementptr inbounds %struct.tc_connmark, ptr %opt, i32 0, i32 1
  %7 = ptrtoint ptr %capab to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %capab, align 4
  %action = getelementptr inbounds %struct.tc_connmark, ptr %opt, i32 0, i32 2
  %refcnt = getelementptr inbounds %struct.tc_connmark, ptr %opt, i32 0, i32 3
  %tcfa_refcnt = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tcfa_refcnt, i32 noundef 4) #9
  %8 = ptrtoint ptr %tcfa_refcnt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %tcfa_refcnt, align 4
  %sub = sub i32 %9, %ref
  %10 = ptrtoint ptr %refcnt to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %sub, ptr %refcnt, align 4
  %bindcnt = getelementptr inbounds %struct.tc_connmark, ptr %opt, i32 0, i32 4
  %tcfa_bindcnt = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tcfa_bindcnt, i32 noundef 4) #9
  %11 = ptrtoint ptr %tcfa_bindcnt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %tcfa_bindcnt, align 4
  %sub5 = sub i32 %12, %bind
  %13 = ptrtoint ptr %bindcnt to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %sub5, ptr %bindcnt, align 4
  %zone = getelementptr inbounds %struct.tc_connmark, ptr %opt, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %t) #9
  %14 = getelementptr inbounds %struct.tcf_t, ptr %t, i32 0, i32 2
  %15 = getelementptr inbounds %struct.tcf_t, ptr %t, i32 0, i32 3
  %tcfa_lock = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 12
  %16 = call ptr @memset(ptr %t, i32 255, i32 32)
  tail call void @_raw_spin_lock_bh(ptr noundef %tcfa_lock) #9
  %tcfa_action = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 6
  %17 = ptrtoint ptr %tcfa_action to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tcfa_action, align 8
  %19 = ptrtoint ptr %action to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %action, align 4
  %zone9 = getelementptr inbounds %struct.tcf_connmark_info, ptr %a, i32 0, i32 2
  %20 = ptrtoint ptr %zone9 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %zone9, align 4
  %22 = ptrtoint ptr %zone to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %zone, align 4
  %call11 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 24, ptr noundef nonnull %opt) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %if.end, label %entry.nla_put_failure_crit_edge

entry.nla_put_failure_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %nla_put_failure

if.end:                                           ; preds = %entry
  %23 = getelementptr inbounds %struct.tcf_t, ptr %t, i32 0, i32 1
  %tcfa_tm = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %24 = load volatile i32, ptr @jiffies, align 128
  %25 = ptrtoint ptr %tcfa_tm to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %tcfa_tm, align 8
  %27 = trunc i64 %26 to i32
  %conv1.i = sub i32 %24, %27
  %call.i = call i32 @jiffies_to_clock_t(i32 noundef %conv1.i) #9
  %conv2.i = sext i32 %call.i to i64
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
  %call7.i = call i32 @jiffies_to_clock_t(i32 noundef %conv6.i) #9
  %conv8.i = sext i32 %call7.i to i64
  %33 = ptrtoint ptr %23 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %conv8.i, ptr %23, align 8
  %firstuse.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 7, i32 3
  %34 = ptrtoint ptr %firstuse.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %firstuse.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %35)
  %tobool.not.i = icmp eq i64 %35, 0
  br i1 %tobool.not.i, label %if.end.tcf_tm_dump.exit_crit_edge, label %cond.true.i

if.end.tcf_tm_dump.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %tcf_tm_dump.exit

cond.true.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %36 = load volatile i32, ptr @jiffies, align 128
  %37 = trunc i64 %35 to i32
  %conv13.i = sub i32 %36, %37
  %call14.i = call i32 @jiffies_to_clock_t(i32 noundef %conv13.i) #9
  br label %tcf_tm_dump.exit

tcf_tm_dump.exit:                                 ; preds = %cond.true.i, %if.end.tcf_tm_dump.exit_crit_edge
  %cond.i = phi i32 [ %call14.i, %cond.true.i ], [ 0, %if.end.tcf_tm_dump.exit_crit_edge ]
  %conv15.i = sext i32 %cond.i to i64
  %38 = ptrtoint ptr %15 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %conv15.i, ptr %15, align 8
  %expires.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 7, i32 2
  %39 = ptrtoint ptr %expires.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %expires.i, align 8
  %conv17.i = trunc i64 %40 to i32
  %call18.i = call i32 @jiffies_to_clock_t(i32 noundef %conv17.i) #9
  %conv19.i = sext i32 %call18.i to i64
  %41 = ptrtoint ptr %14 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %conv19.i, ptr %14, align 8
  %call13 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 2, i32 noundef 32, ptr noundef nonnull %t, i32 noundef 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %tcf_tm_dump.exit.nla_put_failure_crit_edge

tcf_tm_dump.exit.nla_put_failure_crit_edge:       ; preds = %tcf_tm_dump.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %nla_put_failure

if.end16:                                         ; preds = %tcf_tm_dump.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_spin_unlock_bh(ptr noundef %tcfa_lock) #9
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %42 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %len, align 4
  br label %cleanup

nla_put_failure:                                  ; preds = %tcf_tm_dump.exit.nla_put_failure_crit_edge, %entry.nla_put_failure_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %tcfa_lock) #9
  %tobool.not.i36 = icmp eq ptr %1, null
  br i1 %tobool.not.i36, label %nla_put_failure.cleanup_crit_edge, label %if.then.i

nla_put_failure.cleanup_crit_edge:                ; preds = %nla_put_failure
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %nla_put_failure
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %44 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %data.i, align 4
  %cmp.i = icmp ugt ptr %45, %1
  br i1 %cmp.i, label %do.end.i, label %if.then.i.if.end.i_crit_edge, !prof !53

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 991, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i.if.end.i_crit_edge
  %46 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %47 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %nla_put_failure.cleanup_crit_edge, %if.end16
  %retval.0 = phi i32 [ %43, %if.end16 ], [ -1, %nla_put_failure.cleanup_crit_edge ], [ -1, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %t) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %opt) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_connmark_search(ptr noundef %net, ptr noundef %a, i32 noundef %index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @connmark_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %call1 = tail call i32 @tcf_idr_search(ptr noundef %call, ptr noundef %a, i32 noundef %index) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_connmark_init(ptr noundef %net, ptr noundef %nla, ptr noundef %est, ptr noundef %a, ptr noundef %tp, i32 noundef %flags, ptr noundef %extack) #2 align 64 {
entry:
  %tb = alloca [4 x ptr], align 4
  %goto_ch = alloca ptr, align 4
  %index = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @connmark_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tb) #9
  %1 = getelementptr inbounds [4 x ptr], ptr %tb, i32 0, i32 1
  %and = and i32 %flags, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %2 = call ptr @memset(ptr %tb, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %goto_ch) #9
  %3 = ptrtoint ptr %goto_ch to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %goto_ch, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #9
  %tobool1.not = icmp eq ptr %nla, null
  br i1 %tobool1.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %nla, i32 4
  %4 = ptrtoint ptr %nla to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %nla, align 2
  %conv.i.i = zext i16 %5 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 3, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @connmark_policy, i32 noundef 0, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %add.ptr.i = getelementptr i8, ptr %7, i32 4
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i, align 4
  %10 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %index, align 4
  %and.lobit = lshr exact i32 %and, 17
  %call12 = call i32 @tcf_idr_check_alloc(ptr noundef %call, ptr noundef nonnull %index, ptr noundef %a, i32 noundef %and.lobit) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end7
  %11 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %index, align 4
  %call17 = call i32 @tcf_idr_create(ptr noundef %call, i32 noundef %12, ptr noundef %est, ptr noundef %a, ptr noundef nonnull @act_connmark_ops, i32 noundef %and.lobit, i1 noundef zeroext false, i32 noundef %flags) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.then19

if.then19:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index, align 4
  call void @tcf_idr_cleanup(ptr noundef %call, i32 noundef %14) #9
  br label %cleanup

if.end20:                                         ; preds = %if.then14
  %15 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %a, align 4
  %action = getelementptr i8, ptr %7, i32 12
  %17 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %action, align 4
  %call21 = call i32 @tcf_action_check_ctrlact(i32 noundef %18, ptr noundef %tp, ptr noundef nonnull %goto_ch, ptr noundef %extack) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.end20.release_idr_crit_edge, label %if.end25

if.end20.release_idr_crit_edge:                   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %release_idr

if.end25:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %a, align 4
  %21 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %action, align 4
  %23 = ptrtoint ptr %goto_ch to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %goto_ch, align 4
  %call27 = call ptr @tcf_action_set_ctrlact(ptr noundef %20, i32 noundef %22, ptr noundef %24) #9
  %net28 = getelementptr inbounds %struct.tcf_connmark_info, ptr %16, i32 0, i32 1
  %25 = ptrtoint ptr %net28 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %net, ptr %net28, align 16
  %zone = getelementptr i8, ptr %7, i32 24
  %26 = ptrtoint ptr %zone to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %zone, align 4
  %zone29 = getelementptr inbounds %struct.tcf_connmark_info, ptr %16, i32 0, i32 2
  %28 = ptrtoint ptr %zone29 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %zone29, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp30 = icmp sgt i32 %call12, 0
  br i1 %cmp30, label %if.then32, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then32:                                        ; preds = %if.else
  %29 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %a, align 4
  br i1 %tobool, label %if.then32.cleanup_crit_edge, label %if.end35

if.then32.cleanup_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end35:                                         ; preds = %if.then32
  %and36 = and i32 %flags, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.then38, label %if.end41

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  %call40 = call i32 @tcf_idr_release(ptr noundef %30, i1 noundef zeroext false) #9
  br label %cleanup

if.end41:                                         ; preds = %if.end35
  %action42 = getelementptr i8, ptr %7, i32 12
  %31 = ptrtoint ptr %action42 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %action42, align 4
  %call43 = call i32 @tcf_action_check_ctrlact(i32 noundef %32, ptr noundef %tp, ptr noundef nonnull %goto_ch, ptr noundef %extack) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %if.end41.release_idr_crit_edge, label %if.end47

if.end41.release_idr_crit_edge:                   ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %release_idr

if.end47:                                         ; preds = %if.end41
  %tcfa_lock = getelementptr inbounds %struct.tc_action, ptr %30, i32 0, i32 12
  call void @_raw_spin_lock_bh(ptr noundef %tcfa_lock) #9
  %33 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %a, align 4
  %35 = ptrtoint ptr %action42 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %action42, align 4
  %37 = ptrtoint ptr %goto_ch to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %goto_ch, align 4
  %call49 = call ptr @tcf_action_set_ctrlact(ptr noundef %34, i32 noundef %36, ptr noundef %38) #9
  %39 = ptrtoint ptr %goto_ch to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call49, ptr %goto_ch, align 4
  %zone50 = getelementptr i8, ptr %7, i32 24
  %40 = ptrtoint ptr %zone50 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %zone50, align 4
  %zone51 = getelementptr inbounds %struct.tcf_connmark_info, ptr %30, i32 0, i32 2
  %42 = ptrtoint ptr %zone51 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %zone51, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %tcfa_lock) #9
  %43 = ptrtoint ptr %goto_ch to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %goto_ch, align 4
  %tobool54.not = icmp eq ptr %44, null
  br i1 %tobool54.not, label %if.end47.cleanup_crit_edge, label %if.then55

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then55:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  call void @tcf_chain_put_by_act(ptr noundef nonnull %44) #9
  br label %cleanup

release_idr:                                      ; preds = %if.end41.release_idr_crit_edge, %if.end20.release_idr_crit_edge
  %err.0 = phi i32 [ %call43, %if.end41.release_idr_crit_edge ], [ %call21, %if.end20.release_idr_crit_edge ]
  %45 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %a, align 4
  %call60 = call i32 @tcf_idr_release(ptr noundef %46, i1 noundef zeroext %tobool) #9
  br label %cleanup

cleanup:                                          ; preds = %release_idr, %if.then55, %if.end47.cleanup_crit_edge, %if.then38, %if.then32.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end25, %if.then19, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %release_idr ], [ -17, %if.then38 ], [ %call17, %if.then19 ], [ -22, %entry.cleanup_crit_edge ], [ %call2.i, %if.end.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ 0, %if.then32.cleanup_crit_edge ], [ %call12, %if.else.cleanup_crit_edge ], [ 1, %if.end25 ], [ 0, %if.then55 ], [ 0, %if.end47.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %goto_ch) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tb) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_connmark_walker(ptr noundef %net, ptr noundef %skb, ptr noundef %cb, i32 noundef %type, ptr noundef %ops, ptr noundef %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @connmark_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %call1 = tail call i32 @tcf_generic_walker(ptr noundef %call, ptr noundef %skb, ptr noundef %cb, i32 noundef %type, ptr noundef %ops, ptr noundef %extack) #9
  ret i32 %call1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nf_ct_get_tuplepr(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nf_conntrack_find_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put_64bit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_clock_t(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @net_generic(ptr noundef %net, i32 noundef %id) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = tail call i32 @llvm.read_register.i32(metadata !43) #9
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !65
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %gen = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %4 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %gen, align 128
  %call = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b9 = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 45, ptr noundef nonnull @.str.4) #9
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %arrayidx = getelementptr [0 x ptr], ptr %5, i32 0, i32 %id
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call.i10 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i10, label %do.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i13

do.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i13:                                ; preds = %do.end7
  %call1.i11 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11)
  %tobool.not.i12 = icmp eq i32 %call1.i11, 0
  br i1 %tobool.not.i12, label %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i15

land.lhs.true.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i13
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i15:                               ; preds = %land.lhs.true.i13
  %.b4.i14 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14, label %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, label %if.then.i16

land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i16:                                      ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i16, %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !66
  %8 = tail call i32 @llvm.read_register.i32(metadata !43) #9
  %and.i.i.i.i.i17 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i17 to ptr
  %preempt_count.i.i.i.i18 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i18, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i18, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret ptr %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_idr_search(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_idr_check_alloc(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_idr_create(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcf_idr_cleanup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_action_check_ctrlact(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tcf_action_set_ctrlact(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_idr_release(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcf_chain_put_by_act(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_generic_walker(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @connmark_init_net(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @connmark_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 156) #12
  %2 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %call, align 4
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %entry.tc_action_net_init.exit_crit_edge, label %if.end.i

entry.tc_action_net_init.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %tc_action_net_init.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ops2.i = getelementptr inbounds %struct.tc_action_net, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %ops2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @act_connmark_ops, ptr %ops2.i, align 4
  %net4.i = getelementptr inbounds %struct.tcf_idrinfo, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %net4.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %net, ptr %net4.i, align 8
  tail call void @__mutex_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @tc_action_net_init.__key) #9
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call, align 4
  %action_idr.i = getelementptr inbounds %struct.tcf_idrinfo, ptr %6, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %action_idr.i, ptr noundef nonnull @.str.9, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #9
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
define internal void @connmark_exit_net(ptr noundef readonly %net_list) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @connmark_net_id, align 4
  tail call void @rtnl_lock() #9
  %1 = ptrtoint ptr %net_list to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn12.i = load ptr, ptr %net_list, align 4
  %cmp.not13.i = icmp eq ptr %.pn12.i, %net_list
  br i1 %cmp.not13.i, label %entry.tc_action_net_exit.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.tc_action_net_exit.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %tc_action_net_exit.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn14.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn12.i, %entry.for.body.i_crit_edge ]
  %net.0.i = getelementptr i8, ptr %.pn14.i, i32 -116
  %call.i = tail call fastcc ptr @net_generic(ptr noundef %net.0.i, i32 noundef %0) #9
  %ops.i = getelementptr inbounds %struct.tc_action_net, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call.i, align 4
  tail call void @tcf_idrinfo_destroy(ptr noundef %3, ptr noundef %5) #9
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call.i, align 4
  tail call void @kfree(ptr noundef %7) #9
  %8 = ptrtoint ptr %.pn14.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn.i = load ptr, ptr %.pn14.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %net_list
  br i1 %cmp.not.i, label %for.body.i.tc_action_net_exit.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.tc_action_net_exit.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tc_action_net_exit.exit

tc_action_net_exit.exit:                          ; preds = %for.body.i.tc_action_net_exit.exit_crit_edge, %entry.tc_action_net_exit.exit_crit_edge
  tail call void @rtnl_unlock() #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

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
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !16, !18, !20, !22, !23, !24, !26, !27, !28, !30, !31, !33, !35, !37, !39, !40, !42}
!llvm.named.register.sp = !{!43}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !{ptr @__initcall__kmod_act_connmark__610_261_connmark_init_module6, !1, !"__initcall__kmod_act_connmark__610_261_connmark_init_module6", i1 false, i1 false}
!1 = !{!"../net/sched/act_connmark.c", i32 261, i32 1}
!2 = !{ptr @__exitcall_connmark_cleanup_module, !3, !"__exitcall_connmark_cleanup_module", i1 false, i1 false}
!3 = !{!"../net/sched/act_connmark.c", i32 262, i32 1}
!4 = !{ptr @__UNIQUE_ID_author611, !5, !"__UNIQUE_ID_author611", i1 false, i1 false}
!5 = !{!"../net/sched/act_connmark.c", i32 263, i32 1}
!6 = !{ptr @__UNIQUE_ID_description612, !7, !"__UNIQUE_ID_description612", i1 false, i1 false}
!7 = !{!"../net/sched/act_connmark.c", i32 264, i32 1}
!8 = !{ptr @__UNIQUE_ID_file613, !9, !"__UNIQUE_ID_file613", i1 false, i1 false}
!9 = !{!"../net/sched/act_connmark.c", i32 265, i32 1}
!10 = !{ptr @__UNIQUE_ID_license614, !9, !"__UNIQUE_ID_license614", i1 false, i1 false}
!11 = !{ptr @act_connmark_ops, !12, !"act_connmark_ops", i1 false, i1 false}
!12 = !{!"../net/sched/act_connmark.c", i32 220, i32 29}
!13 = distinct !{null, !14, !"__already_done", i1 false, i1 false}
!14 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!15 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../include/linux/if_vlan.h", i32 598, i32 8}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../include/net/netlink.h", i32 991, i32 3}
!20 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!21 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!22 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!24 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!25 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!26 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!28 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!29 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!30 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @connmark_net_id, !32, !"connmark_net_id", i1 false, i1 false}
!32 = !{!"../net/sched/act_connmark.c", i32 28, i32 21}
!33 = !{ptr @connmark_policy, !34, !"connmark_policy", i1 false, i1 false}
!34 = !{!"../net/sched/act_connmark.c", i32 93, i32 32}
!35 = !{ptr @connmark_net_ops, !36, !"connmark_net_ops", i1 false, i1 false}
!36 = !{!"../net/sched/act_connmark.c", i32 244, i32 33}
!37 = !{ptr @tc_action_net_init.__key, !38, !"__key", i1 false, i1 false}
!38 = !{!"../include/net/act_api.h", i32 156, i32 2}
!39 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @xa_init_flags.__key, !41, !"__key", i1 false, i1 false}
!41 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!42 = !{ptr @.str.9, !41, !"<string literal>", i1 false, i1 false}
!43 = !{!"sp"}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"min_enum_size", i32 4}
!46 = !{i32 8, !"branch-target-enforcement", i32 0}
!47 = !{i32 8, !"sign-return-address", i32 0}
!48 = !{i32 8, !"sign-return-address-all", i32 0}
!49 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!50 = !{i32 7, !"uwtable", i32 1}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!53 = !{!"branch_weights", i32 1, i32 2000}
!54 = !{i64 2149868960}
!55 = !{i64 2149873892}
!56 = !{i64 2149895604}
!57 = !{i64 2149900496}
!58 = !{!"branch_weights", i32 2000, i32 1}
!59 = !{i64 2149976953}
!60 = !{i64 2149977278}
!61 = !{!"auto-init"}
!62 = !{i64 2148434357}
!63 = !{i64 2148348797, i64 2148348829, i64 2148348858, i64 2148348892, i64 2148348923, i64 2148348946}
!64 = !{i64 2149310471}
!65 = !{i64 2149360961}
!66 = !{i64 2149361227}
