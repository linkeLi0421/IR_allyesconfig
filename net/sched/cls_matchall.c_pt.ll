; ModuleID = '/llk/IR_all_yes/net/sched/cls_matchall.c_pt.bc'
source_filename = "../net/sched/cls_matchall.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tcf_proto_ops = type { %struct.list_head, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.5 }
%union.anon.5 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.tcf_proto = type { ptr, ptr, ptr, i16, i32, ptr, ptr, ptr, %struct.spinlock, i8, %struct.refcount_struct, %struct.callback_head, %struct.hlist_node }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.9 }
%union.anon.9 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.callback_head = type { ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.cls_mall_head = type { %struct.tcf_exts, %struct.tcf_result, i32, i32, i32, ptr, %struct.rcu_work, i8 }
%struct.tcf_exts = type { i32, i32, ptr, ptr, ptr, i32, i32 }
%struct.tcf_result = type { %union.anon.119 }
%union.anon.119 = type { %struct.anon.120 }
%struct.anon.120 = type { i32, i32 }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.tc_cls_matchall_offload = type { %struct.flow_cls_common_offload, i32, ptr, %struct.flow_stats, i32 }
%struct.flow_cls_common_offload = type { i32, i16, i32, ptr }
%struct.flow_stats = type { i64, i64, i64, i64, i32, i8 }
%struct.tcf_chain = type { %struct.mutex, ptr, %struct.list_head, ptr, i32, i32, i32, i8, i8, ptr, ptr, %struct.callback_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tcf_block = type { %struct.mutex, %struct.list_head, i32, i32, %struct.refcount_struct, ptr, ptr, %struct.rw_semaphore, %struct.flow_block, %struct.list_head, i8, %struct.atomic_t, i32, i32, %struct.anon.100, %struct.callback_head, [128 x %struct.hlist_head], %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.flow_block = type { %struct.list_head }
%struct.anon.100 = type { ptr, %struct.list_head }
%struct.hlist_head = type { ptr }
%struct.Qdisc = type { ptr, ptr, i32, i32, ptr, ptr, %struct.hlist_node, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, [64 x i8], %struct.sk_buff_head, %struct.qdisc_skb_head, %struct.gnet_stats_basic_sync, %struct.gnet_stats_queue, i32, i32, ptr, %struct.sk_buff_head, [8 x i8], %struct.spinlock, %struct.spinlock, %struct.callback_head, ptr, [28 x i8], [0 x i32] }
%struct.qdisc_skb_head = type { ptr, ptr, i32, %struct.spinlock }
%struct.gnet_stats_basic_sync = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.gnet_stats_queue = type { i32, i32, i32, i32, i32 }
%struct.sk_buff_head = type { %union.anon.53, i32, %struct.spinlock }
%union.anon.53 = type { %struct.anon.54 }
%struct.anon.54 = type { ptr, ptr }
%struct.Qdisc_ops = type { ptr, ptr, [16 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Qdisc_class_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.47, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type { ptr, i32, i32, i32 }
%struct.rb_root = type { ptr }
%struct.raw_notifier_head = type { ptr }
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.netns_unix = type { i32, ptr }
%struct.netns_nexthop = type { %struct.rb_root, ptr, i32, i32, %struct.blocking_notifier_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.netns_ipv4 = type { %struct.inet_timewait_death_row, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i32, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i32, i32, i32, i32, %struct.local_ports, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, ptr, ptr, i32, %struct.atomic_t, i32, i32, i32, i8, i8, i8, i32, i32, i32, %struct.ping_group_range, %struct.atomic_t, ptr, i32, %struct.list_head, ptr, i32, i8, i8, ptr, i32, ptr, i32, %struct.atomic_t, %struct.siphash_key_t, [96 x i8] }
%struct.inet_timewait_death_row = type { %struct.atomic_t, [124 x i8], ptr, i32 }
%struct.local_ports = type { %struct.seqlock_t, [2 x i32], i8 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.52, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.52 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.tcf_walker = type { i32, i32, i32, i8, i32, ptr }
%struct.flow_rule = type { %struct.flow_match, %struct.flow_action }
%struct.flow_match = type { ptr, ptr, ptr }
%struct.flow_action = type { i32, [0 x %struct.flow_action_entry] }
%struct.flow_action_entry = type { i32, i32, i32, ptr, ptr, %union.anon.126, ptr }
%union.anon.126 = type { %struct.anon.131 }
%struct.anon.131 = type { i32, i64, i64, i64, i32 }
%struct.tc_matchall_pcnt = type { i64 }
%struct.sk_buff = type { %union.anon, %union.anon.102, %union.anon.103, [48 x i8], %union.anon.104, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.106, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.102 = type { ptr }
%union.anon.103 = type { i64 }
%union.anon.104 = type { %struct.anon.105 }
%struct.anon.105 = type { i32, ptr }
%union.anon.106 = type { %struct.anon.107 }
%struct.anon.107 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.108, i32, i32, i32, i16, i16, %union.anon.110, i32, %union.anon.111, %union.anon.112, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.108 = type { i32 }
%union.anon.110 = type { i32 }
%union.anon.111 = type { i32 }
%union.anon.112 = type { i16 }
%struct.tc_action_ops = type { %struct.list_head, [16 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tc_action = type { ptr, i32, ptr, i32, %struct.refcount_struct, %struct.atomic_t, i32, %struct.tcf_t, %struct.gnet_stats_basic_sync, %struct.gnet_stats_basic_sync, %struct.gnet_stats_queue, ptr, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, [12 x i8] }
%struct.tcf_t = type { i64, i64, i64, i64 }
%struct.tcmsg = type { i8, i8, i16, i32, i32, i32, i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }

@cls_mall_ops = internal global %struct.tcf_proto_ops { %struct.list_head zeroinitializer, [16 x i8] c"matchall\00\00\00\00\00\00\00\00", ptr @mall_classify, ptr @mall_init, ptr @mall_destroy, ptr @mall_get, ptr null, ptr @mall_change, ptr @mall_delete, ptr null, ptr @mall_walk, ptr @mall_reoffload, ptr null, ptr null, ptr @mall_bind_class, ptr null, ptr null, ptr @mall_dump, ptr null, ptr null, ptr null, i32 0 }, section ".data..read_mostly", align 4
@__initcall__kmod_cls_matchall__371_438_cls_mall_init6 = internal global ptr @cls_mall_init, section ".initcall6.init", align 4
@__exitcall_cls_mall_exit = internal global ptr @cls_mall_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author372 = internal constant [51 x i8] c"cls_matchall.author=Jiri Pirko <jiri@mellanox.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description373 = internal constant [46 x i8] c"cls_matchall.description=Match-all classifier\00", section ".modinfo", align 1
@__UNIQUE_ID_file374 = internal constant [41 x i8] c"cls_matchall.file=net/sched/cls_matchall\00", section ".modinfo", align 1
@__UNIQUE_ID_license375 = internal constant [28 x i8] c"cls_matchall.license=GPL v2\00", section ".modinfo", align 1
@mall_classify.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"net/sched/cls_matchall.c\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@mall_destroy.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@mall_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@mall_change.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@mall_policy = internal constant { [6 x %struct.nla_policy], [48 x i8] } { [6 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.5 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.5 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer], [48 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@qdisc_root_sleeping_lock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/net/sch_generic.h\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@mall_replace_hw_filter.__msg = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"cls_matchall: Failed to setup flow action\00", [54 x i8] zeroinitializer }, align 32
@mall_delete.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@mall_walk.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@mall_reoffload.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@mall_reoffload.__msg = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"cls_matchall: Failed to setup flow action\00", [54 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 30, i32 31 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 131, i32 31 }
@___asan_gen_.16 = private unnamed_addr constant [12 x i8] c"mall_policy\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 157, i32 32 }
@___asan_gen_.23 = private unnamed_addr constant [29 x i8] c"../include/net/sch_generic.h\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 596, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 105, i32 4 }
@___asan_gen_.28 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.29 = private constant [28 x i8] c"../net/sched/cls_matchall.c\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 309, i32 4 }
@___asan_gen_.31 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.32 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 991, i32 3 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__UNIQUE_ID_author372, ptr @__UNIQUE_ID_description373, ptr @__UNIQUE_ID_file374, ptr @__UNIQUE_ID_license375, ptr @__exitcall_cls_mall_exit, ptr @__initcall__kmod_cls_matchall__371_438_cls_mall_init6, ptr @cls_mall_exit, ptr @.str, ptr @.str.1, ptr @.str.3, ptr @mall_policy, ptr @.str.4, ptr @.str.5, ptr @mall_replace_hw_filter.__msg, ptr @mall_reoffload.__msg, ptr @.str.6], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mall_policy to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mall_replace_hw_filter.__msg to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mall_reoffload.__msg to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cls_mall_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @unregister_tcf_proto_ops(ptr noundef nonnull @cls_mall_ops) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_tcf_proto_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cls_mall_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_tcf_proto_ops(ptr noundef nonnull @cls_mall_ops) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mall_classify(ptr noundef %skb, ptr noundef %tp, ptr noundef %res) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %root = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 1
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %root, align 4
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
  %.b42 = load i1, ptr @mall_classify.__warned, align 1
  br i1 %.b42, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @mall_classify.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 30, ptr noundef nonnull @.str.1) #10
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %entry.do.end7_crit_edge
  %tobool9.not = icmp eq ptr %1, null
  br i1 %tobool9.not, label %do.end7.cleanup_crit_edge, label %if.end14, !prof !54

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14:                                         ; preds = %do.end7
  %flags = getelementptr inbounds %struct.cls_mall_head, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and.i = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end17, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end17:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %res18 = getelementptr inbounds %struct.cls_mall_head, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %res18 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %5 = load i64, ptr %res18, align 4
  %6 = ptrtoint ptr %res to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 %5, ptr %res, align 4
  %pf = getelementptr inbounds %struct.cls_mall_head, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pf, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !44) #10
  %and.i43 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i43 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %add = add i32 %15, %9
  %16 = inttoptr i32 %add to ptr
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %16, align 8
  %add31 = add i64 %18, 1
  store i64 %add31, ptr %16, align 8
  %actions.i = getelementptr inbounds %struct.tcf_exts, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %actions.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %actions.i, align 4
  %nr_actions.i = getelementptr inbounds %struct.tcf_exts, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %nr_actions.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nr_actions.i, align 4
  %call.i = tail call i32 @tcf_action_exec(ptr noundef %skb, ptr noundef %20, i32 noundef %22, ptr noundef %res) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end14.cleanup_crit_edge, %do.end7.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end17 ], [ -1, %do.end7.cleanup_crit_edge ], [ -1, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mall_init(ptr nocapture noundef readnone %tp) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mall_destroy(ptr noundef %tp, i1 noundef zeroext %rtnl_held, ptr noundef %extack) #2 align 64 {
entry:
  %old.i.i.i.i.i = alloca i32, align 4
  %cls_mall.i = alloca %struct.tc_cls_matchall_offload, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #10
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b23 = load i1, ptr @mall_destroy.__warned, align 1
  br i1 %.b23, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @mall_destroy.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 131, ptr noundef nonnull @.str.3) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %root = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 1
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root, align 4
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %chain.i = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 7
  %2 = ptrtoint ptr %chain.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chain.i, align 4
  %block.i = getelementptr inbounds %struct.tcf_chain, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %block.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %block.i, align 4
  %q1.i = getelementptr inbounds %struct.tcf_block, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %q1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %q1.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end6.tcf_unbind_filter.exit_crit_edge, label %if.end.i

if.end6.tcf_unbind_filter.exit_crit_edge:         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %tcf_unbind_filter.exit

if.end.i:                                         ; preds = %if.end6
  %res = getelementptr inbounds %struct.cls_mall_head, ptr %1, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %res, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !55
  tail call void @llvm.prefetch.p0(ptr %res, i32 1, i32 3, i32 1) #10
  %8 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %res) #10, !srcloc !56
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %8, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i, label %if.end.i.tcf_unbind_filter.exit_crit_edge, label %if.then.i.i

if.end.i.tcf_unbind_filter.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tcf_unbind_filter.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %ops.i.i = getelementptr inbounds %struct.Qdisc, ptr %7, i32 0, i32 4
  %9 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops.i.i, align 16
  %cl_ops.i.i = getelementptr inbounds %struct.Qdisc_ops, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %cl_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cl_ops.i.i, align 4
  %unbind_tcf.i.i = getelementptr inbounds %struct.Qdisc_class_ops, ptr %12, i32 0, i32 11
  %13 = ptrtoint ptr %unbind_tcf.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %unbind_tcf.i.i, align 4
  tail call void %14(ptr noundef nonnull %7, i32 noundef %asmresult.i.i.i.i) #10
  br label %tcf_unbind_filter.exit

tcf_unbind_filter.exit:                           ; preds = %if.then.i.i, %if.end.i.tcf_unbind_filter.exit_crit_edge, %if.end6.tcf_unbind_filter.exit_crit_edge
  %flags = getelementptr inbounds %struct.cls_mall_head, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags, align 4
  %and.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then8, label %tcf_unbind_filter.exit.if.end9_crit_edge

tcf_unbind_filter.exit.if.end9_crit_edge:         ; preds = %tcf_unbind_filter.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then8:                                         ; preds = %tcf_unbind_filter.exit
  %17 = ptrtoint ptr %1 to i32
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %cls_mall.i) #10
  %18 = call ptr @memset(ptr %cls_mall.i, i32 0, i32 72)
  %19 = ptrtoint ptr %chain.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %chain.i, align 4
  %block1.i = getelementptr inbounds %struct.tcf_chain, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %block1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %block1.i, align 4
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags, align 4
  %index.i.i = getelementptr inbounds %struct.tcf_chain, ptr %20, i32 0, i32 4
  %25 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %index.i.i, align 4
  %27 = ptrtoint ptr %cls_mall.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %cls_mall.i, align 8
  %protocol.i.i = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 3
  %28 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %protocol.i.i, align 4
  %protocol1.i.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_mall.i, i32 0, i32 1
  %30 = ptrtoint ptr %protocol1.i.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %protocol1.i.i, align 4
  %prio.i.i = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 4
  %31 = ptrtoint ptr %prio.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %prio.i.i, align 4
  %shr.i.i = lshr i32 %32, 16
  %prio2.i.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_mall.i, i32 0, i32 2
  %33 = ptrtoint ptr %prio2.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %shr.i.i, ptr %prio2.i.i, align 8
  %34 = and i32 %24, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %if.then8.mall_destroy_hw_filter.exit_crit_edge, label %if.then.i.i25

if.then8.mall_destroy_hw_filter.exit_crit_edge:   ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %mall_destroy_hw_filter.exit

if.then.i.i25:                                    ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  %extack3.i.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_mall.i, i32 0, i32 3
  %36 = ptrtoint ptr %extack3.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %extack, ptr %extack3.i.i, align 4
  br label %mall_destroy_hw_filter.exit

mall_destroy_hw_filter.exit:                      ; preds = %if.then.i.i25, %if.then8.mall_destroy_hw_filter.exit_crit_edge
  %command.i = getelementptr inbounds %struct.tc_cls_matchall_offload, ptr %cls_mall.i, i32 0, i32 1
  %37 = ptrtoint ptr %command.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %command.i, align 8
  %cookie2.i = getelementptr inbounds %struct.tc_cls_matchall_offload, ptr %cls_mall.i, i32 0, i32 4
  %38 = ptrtoint ptr %cookie2.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %17, ptr %cookie2.i, align 8
  %in_hw_count.i = getelementptr inbounds %struct.cls_mall_head, ptr %1, i32 0, i32 4
  %call.i = call i32 @tc_setup_cb_destroy(ptr noundef %22, ptr noundef %tp, i32 noundef 3, ptr noundef nonnull %cls_mall.i, i1 noundef zeroext false, ptr noundef %flags, ptr noundef %in_hw_count.i, i1 noundef zeroext true) #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cls_mall.i) #10
  br label %if.end9

if.end9:                                          ; preds = %mall_destroy_hw_filter.exit, %tcf_unbind_filter.exit.if.end9_crit_edge
  %net.i = getelementptr inbounds %struct.tcf_exts, ptr %1, i32 0, i32 3
  %39 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %net.i, align 4
  %count.i.i = getelementptr inbounds %struct.net, ptr %40, i32 0, i32 14, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #10
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %count.i.i, i32 noundef 4) #10
  %41 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %count.i.i, align 4
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %if.end9
  %43 = phi i32 [ %42, %if.end9 ], [ %asmresult3.i.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ]
  %44 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %old.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i.i.i.i.i = icmp eq i32 %43, 0
  br i1 %tobool.not.i.i.i.i.i, label %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %do.cond.i.i.i.i.i

do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i.i.i

do.cond.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i
  %add.i.i.i.i.i = add i32 %43, 1
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #10
  %call.i3.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i, i32 noundef 4) #10
  %45 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %old.i.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #10
  br label %do.body.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i:                          ; preds = %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i.i
  %47 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 %46, i32 %add.i.i.i.i.i, ptr elementtype(i32) %count.i.i) #10, !srcloc !58
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %47, 0
  %tobool.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i:   ; preds = %do.body.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %47, 1
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i, %46
  br i1 %cmp.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, !prof !59

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i.i.i

if.end4.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge
  %48 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %old.i.i.i.i.i, align 4
  %add5.i.i.i.i.i = add i32 %49, 1
  %50 = or i32 %add5.i.i.i.i.i, %49
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %50)
  %.not.i.i.i.i.i = icmp sgt i32 %50, -1
  br i1 %.not.i.i.i.i.i, label %if.end4.i.i.i.i.i.maybe_get_net.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !59

if.end4.i.i.i.i.i.maybe_get_net.exit.i_crit_edge: ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %maybe_get_net.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %count.i.i, i32 noundef 0) #10
  br label %maybe_get_net.exit.i

maybe_get_net.exit.i:                             ; preds = %if.then10.i.i.i.i.i, %if.end4.i.i.i.i.i.maybe_get_net.exit.i_crit_edge
  %51 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %old.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool12.i.i.i.not.i.i = icmp eq i32 %52, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #10
  %spec.select.i.i = select i1 %tobool12.i.i.i.not.i.i, ptr null, ptr %40
  %53 = ptrtoint ptr %net.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %spec.select.i.i, ptr %net.i, align 4
  %tobool.not.i26 = icmp eq ptr %spec.select.i.i, null
  br i1 %tobool.not.i26, label %maybe_get_net.exit.i.if.else_crit_edge, label %tcf_exts_get_net.exit

maybe_get_net.exit.i.if.else_crit_edge:           ; preds = %maybe_get_net.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

tcf_exts_get_net.exit:                            ; preds = %maybe_get_net.exit.i
  %ns_tracker.i = getelementptr inbounds %struct.tcf_exts, ptr %1, i32 0, i32 4
  %refcnt_tracker.i.i = getelementptr inbounds %struct.net, ptr %spec.select.i.i, i32 0, i32 15
  %call.i.i = call i32 @ref_tracker_alloc(ptr noundef %refcnt_tracker.i.i, ptr noundef %ns_tracker.i, i32 noundef 3264) #10
  %54 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %.pr = load ptr, ptr %net.i, align 4
  %cmp.i.not = icmp eq ptr %.pr, null
  br i1 %cmp.i.not, label %tcf_exts_get_net.exit.if.else_crit_edge, label %if.then11

tcf_exts_get_net.exit.if.else_crit_edge:          ; preds = %tcf_exts_get_net.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then11:                                        ; preds = %tcf_exts_get_net.exit
  call void @__sanitizer_cov_trace_pc() #12
  %rwork = getelementptr inbounds %struct.cls_mall_head, ptr %1, i32 0, i32 6
  %call12 = call zeroext i1 @tcf_queue_work(ptr noundef %rwork, ptr noundef nonnull @mall_destroy_work) #10
  br label %cleanup

if.else:                                          ; preds = %tcf_exts_get_net.exit.if.else_crit_edge, %maybe_get_net.exit.i.if.else_crit_edge
  call fastcc void @__mall_destroy(ptr noundef nonnull %1)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then11, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mall_get(ptr nocapture noundef readonly %tp, i32 noundef %handle) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #10
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b11 = load i1, ptr @mall_get.__warned, align 1
  br i1 %.b11, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @mall_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 149, ptr noundef nonnull @.str.3) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %root = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 1
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root, align 4
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %do.end.if.end8_crit_edge, label %land.lhs.true5

do.end.if.end8_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

land.lhs.true5:                                   ; preds = %do.end
  %handle6 = getelementptr inbounds %struct.cls_mall_head, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %handle6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %handle6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %handle)
  %cmp = icmp eq i32 %3, %handle
  br i1 %cmp, label %land.lhs.true5.cleanup_crit_edge, label %land.lhs.true5.if.end8_crit_edge

land.lhs.true5.if.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

land.lhs.true5.cleanup_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %land.lhs.true5.if.end8_crit_edge, %do.end.if.end8_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %land.lhs.true5.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.end8 ], [ %1, %land.lhs.true5.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mall_change(ptr noundef %net, ptr nocapture noundef readnone %in_skb, ptr noundef %tp, i32 noundef %base, i32 noundef %handle, ptr nocapture noundef readonly %tca, ptr nocapture noundef writeonly %arg, i32 noundef %flags, ptr noundef %extack) #2 align 64 {
entry:
  %tb = alloca [6 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #10
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b139 = load i1, ptr @mall_change.__warned, align 1
  br i1 %.b139, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @mall_change.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 189, ptr noundef nonnull @.str.3) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %root = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 1
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tb) #10
  %2 = getelementptr inbounds [6 x ptr], ptr %tb, i32 0, i32 3
  %arrayidx = getelementptr ptr, ptr %tca, i32 2
  %3 = call ptr @memset(ptr %tb, i32 255, i32 24)
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %tobool7.not = icmp eq ptr %1, null
  br i1 %tobool7.not, label %if.end9, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %5, align 2
  %conv.i.i = zext i16 %7 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 5, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @mall_policy, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %if.end9.cleanup_crit_edge, label %if.end13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %2, align 4
  %tobool15.not = icmp eq ptr %9, null
  br i1 %tobool15.not, label %if.end13.if.end22_crit_edge, label %if.then16

if.end13.if.end22_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then16:                                        ; preds = %if.end13
  %add.ptr.i.i140 = getelementptr i8, ptr %9, i32 4
  %10 = ptrtoint ptr %add.ptr.i.i140 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i.i140, align 4
  %and.i = and i32 %11, -20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and1.i = and i32 %11, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and1.i)
  %tobool2.not.i = icmp ne i32 %and1.i, 3
  %retval.0.i = and i1 %tobool.not.i, %tobool2.not.i
  br i1 %retval.0.i, label %if.then16.if.end22_crit_edge, label %if.then16.cleanup_crit_edge

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then16.if.end22_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.end22:                                         ; preds = %if.then16.if.end22_crit_edge, %if.end13.if.end22_crit_edge
  %userflags.0 = phi i32 [ %11, %if.then16.if.end22_crit_edge ], [ 0, %if.end13.if.end22_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 112) #13
  %tobool24.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool24.not, label %if.end22.cleanup_crit_edge, label %if.end26

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end26:                                         ; preds = %if.end22
  %13 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %call7.i.i, align 8
  %nr_actions.i = getelementptr inbounds %struct.tcf_exts, ptr %call7.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %nr_actions.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %nr_actions.i, align 4
  %net1.i = getelementptr inbounds %struct.tcf_exts, ptr %call7.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %net1.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %net, ptr %net1.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 128) #13
  %actions.i = getelementptr inbounds %struct.tcf_exts, ptr %call7.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %actions.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i.i.i, ptr %actions.i, align 8
  %tobool.not.i141 = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i141, label %if.end26.err_exts_init_crit_edge, label %if.end30

if.end26.err_exts_init_crit_edge:                 ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_exts_init

if.end30:                                         ; preds = %if.end26
  %action3.i = getelementptr inbounds %struct.tcf_exts, ptr %call7.i.i, i32 0, i32 5
  %18 = ptrtoint ptr %action3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %action3.i, align 4
  %police4.i = getelementptr inbounds %struct.tcf_exts, ptr %call7.i.i, i32 0, i32 6
  %19 = ptrtoint ptr %police4.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %police4.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %handle)
  %tobool31.not = icmp eq i32 %handle, 0
  %spec.store.select = select i1 %tobool31.not, i32 1, i32 %handle
  %handle34 = getelementptr inbounds %struct.cls_mall_head, ptr %call7.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %handle34 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %spec.store.select, ptr %handle34, align 4
  %flags35 = getelementptr inbounds %struct.cls_mall_head, ptr %call7.i.i, i32 0, i32 3
  %21 = ptrtoint ptr %flags35 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %userflags.0, ptr %flags35, align 8
  %call36 = call noalias ptr @__alloc_percpu(i32 noundef 8, i32 noundef 8) #14
  %pf = getelementptr inbounds %struct.cls_mall_head, ptr %call7.i.i, i32 0, i32 5
  %22 = ptrtoint ptr %pf to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call36, ptr %pf, align 8
  %tobool38.not = icmp eq ptr %call36, null
  br i1 %tobool38.not, label %if.end30.err_alloc_percpu_crit_edge, label %if.end40

if.end30.err_alloc_percpu_crit_edge:              ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_alloc_percpu

if.end40:                                         ; preds = %if.end30
  %arrayidx42 = getelementptr ptr, ptr %tca, i32 5
  %23 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx42, align 4
  %25 = ptrtoint ptr %flags35 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags35, align 8
  %call44 = call fastcc i32 @mall_set_parms(ptr noundef %net, ptr noundef %tp, ptr noundef nonnull %call7.i.i, i32 noundef %base, ptr noundef nonnull %tb, ptr noundef %24, i32 noundef %flags, i32 noundef %26, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.end40.err_set_parms_crit_edge

if.end40.err_set_parms_crit_edge:                 ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_set_parms

if.end47:                                         ; preds = %if.end40
  %27 = ptrtoint ptr %flags35 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags35, align 8
  %and.i143 = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i143)
  %tobool.i.not = icmp eq i32 %and.i143, 0
  br i1 %tobool.i.not, label %if.then50, label %if.end47.if.end55_crit_edge

if.end47.if.end55_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

if.then50:                                        ; preds = %if.end47
  %29 = ptrtoint ptr %call7.i.i to i32
  %call51 = call fastcc i32 @mall_replace_hw_filter(ptr noundef %tp, ptr noundef nonnull %call7.i.i, i32 noundef %29, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.then50.if.end55_crit_edge, label %if.then50.err_set_parms_crit_edge

if.then50.err_set_parms_crit_edge:                ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_set_parms

if.then50.if.end55_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

if.end55:                                         ; preds = %if.then50.if.end55_crit_edge, %if.end47.if.end55_crit_edge
  %30 = ptrtoint ptr %flags35 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags35, align 8
  %and.i144 = and i32 %31, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i144)
  %tobool.i145.not = icmp eq i32 %and.i144, 0
  br i1 %tobool.i145.not, label %if.then58, label %if.end55.if.end60_crit_edge

if.end55.if.end60_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

if.then58:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  %or = or i32 %31, 8
  %32 = ptrtoint ptr %flags35 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or, ptr %flags35, align 8
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %if.end55.if.end60_crit_edge
  %33 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %arg, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !60
  %34 = ptrtoint ptr %root to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %call7.i.i, ptr %root, align 4
  br label %cleanup

err_set_parms:                                    ; preds = %if.then50.err_set_parms_crit_edge, %if.end40.err_set_parms_crit_edge
  %err.0 = phi i32 [ %call44, %if.end40.err_set_parms_crit_edge ], [ %call51, %if.then50.err_set_parms_crit_edge ]
  %35 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pf, align 8
  call void @free_percpu(ptr noundef %36) #10
  br label %err_alloc_percpu

err_alloc_percpu:                                 ; preds = %err_set_parms, %if.end30.err_alloc_percpu_crit_edge
  %err.1 = phi i32 [ %err.0, %err_set_parms ], [ -12, %if.end30.err_alloc_percpu_crit_edge ]
  call void @tcf_exts_destroy(ptr noundef nonnull %call7.i.i) #10
  br label %err_exts_init

err_exts_init:                                    ; preds = %err_alloc_percpu, %if.end26.err_exts_init_crit_edge
  %err.2 = phi i32 [ %err.1, %err_alloc_percpu ], [ -12, %if.end26.err_exts_init_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %err_exts_init, %if.end60, %if.end22.cleanup_crit_edge, %if.then16.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.2, %err_exts_init ], [ 0, %if.end60 ], [ -22, %do.end.cleanup_crit_edge ], [ -17, %if.end6.cleanup_crit_edge ], [ %call2.i, %if.end9.cleanup_crit_edge ], [ -22, %if.then16.cleanup_crit_edge ], [ -105, %if.end22.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tb) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mall_delete(ptr nocapture noundef readonly %tp, ptr nocapture noundef readnone %arg, ptr nocapture noundef writeonly %last, i1 noundef zeroext %rtnl_held, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #10
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b4 = load i1, ptr @mall_delete.__warned, align 1
  br i1 %.b4, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @mall_delete.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 262, ptr noundef nonnull @.str.3) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %root = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 1
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root, align 4
  %deleting = getelementptr inbounds %struct.cls_mall_head, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %deleting to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %deleting, align 4
  %3 = ptrtoint ptr %last to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %last, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mall_walk(ptr noundef %tp, ptr noundef %arg, i1 noundef zeroext %rtnl_held) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #10
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b24 = load i1, ptr @mall_walk.__warned, align 1
  br i1 %.b24, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @mall_walk.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 272, ptr noundef nonnull @.str.3) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %root = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 1
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root, align 4
  %count = getelementptr inbounds %struct.tcf_walker, ptr %arg, i32 0, i32 2
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 4
  %skip = getelementptr inbounds %struct.tcf_walker, ptr %arg, i32 0, i32 1
  %4 = ptrtoint ptr %skip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %skip, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp = icmp slt i32 %3, %5
  br i1 %cmp, label %do.end.skip14_crit_edge, label %if.end5

do.end.skip14_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %skip14

if.end5:                                          ; preds = %do.end
  %tobool6.not = icmp eq ptr %1, null
  br i1 %tobool6.not, label %if.end5.cleanup_crit_edge, label %lor.lhs.false

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end5
  %deleting = getelementptr inbounds %struct.cls_mall_head, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %deleting to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %deleting, align 4, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool7.not = icmp eq i8 %7, 0
  br i1 %tobool7.not, label %if.end9, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false
  %fn = getelementptr inbounds %struct.tcf_walker, ptr %arg, i32 0, i32 5
  %8 = ptrtoint ptr %fn to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fn, align 4
  %call10 = tail call i32 %9(ptr noundef %tp, ptr noundef nonnull %1, ptr noundef %arg) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %if.end9.skip14_crit_edge

if.end9.skip14_crit_edge:                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %skip14

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %arg, align 4
  br label %skip14

skip14:                                           ; preds = %if.then12, %if.end9.skip14_crit_edge, %do.end.skip14_crit_edge
  %11 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %count, align 4
  %inc = add i32 %12, 1
  store i32 %inc, ptr %count, align 4
  br label %cleanup

cleanup:                                          ; preds = %skip14, %lor.lhs.false.cleanup_crit_edge, %if.end5.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mall_reoffload(ptr noundef %tp, i1 noundef zeroext %add, ptr noundef %cb, ptr noundef %cb_priv, ptr noundef %extack) #2 align 64 {
entry:
  %cls_mall = alloca %struct.tc_cls_matchall_offload, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #10
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b64 = load i1, ptr @mall_reoffload.__warned, align 1
  br i1 %.b64, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @mall_reoffload.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 288, ptr noundef nonnull @.str.3) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %root = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 1
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %cls_mall) #10
  %2 = call ptr @memset(ptr %cls_mall, i32 0, i32 72)
  %chain = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 7
  %3 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chain, align 4
  %block4 = getelementptr inbounds %struct.tcf_chain, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %block4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %block4, align 4
  %flags = getelementptr inbounds %struct.cls_mall_head, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %and.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end7, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %call8 = tail call i32 @tcf_exts_num_actions(ptr noundef %1) #10
  %call9 = tail call ptr @flow_rule_alloc(i32 noundef %call8) #10
  %rule = getelementptr inbounds %struct.tc_cls_matchall_offload, ptr %cls_mall, i32 0, i32 2
  %9 = ptrtoint ptr %rule to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call9, ptr %rule, align 4
  %tobool11.not = icmp eq ptr %call9, null
  br i1 %tobool11.not, label %if.end7.cleanup_crit_edge, label %if.end13

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %12 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chain, align 4
  %index.i = getelementptr inbounds %struct.tcf_chain, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %index.i, align 4
  %16 = ptrtoint ptr %cls_mall to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %cls_mall, align 8
  %protocol.i = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 3
  %17 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %protocol.i, align 4
  %protocol1.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_mall, i32 0, i32 1
  %19 = ptrtoint ptr %protocol1.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %protocol1.i, align 4
  %prio.i = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 4
  %20 = ptrtoint ptr %prio.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %prio.i, align 4
  %shr.i = lshr i32 %21, 16
  %prio2.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_mall, i32 0, i32 2
  %22 = ptrtoint ptr %prio2.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %shr.i, ptr %prio2.i, align 8
  %23 = and i32 %11, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %if.end13.tc_cls_common_offload_init.exit_crit_edge, label %if.then.i

if.end13.tc_cls_common_offload_init.exit_crit_edge: ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %tc_cls_common_offload_init.exit

if.then.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %extack3.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_mall, i32 0, i32 3
  %25 = ptrtoint ptr %extack3.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %extack, ptr %extack3.i, align 4
  br label %tc_cls_common_offload_init.exit

tc_cls_common_offload_init.exit:                  ; preds = %if.then.i, %if.end13.tc_cls_common_offload_init.exit_crit_edge
  %not.add = xor i1 %add, true
  %cond = zext i1 %not.add to i32
  %command = getelementptr inbounds %struct.tc_cls_matchall_offload, ptr %cls_mall, i32 0, i32 1
  %26 = ptrtoint ptr %command to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %cond, ptr %command, align 8
  %27 = ptrtoint ptr %1 to i32
  %cookie = getelementptr inbounds %struct.tc_cls_matchall_offload, ptr %cls_mall, i32 0, i32 4
  %28 = ptrtoint ptr %cookie to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %cookie, align 8
  %action = getelementptr inbounds %struct.flow_rule, ptr %call9, i32 0, i32 1
  %call18 = tail call i32 @tc_setup_offload_action(ptr noundef %action, ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end34, label %if.then20

if.then20:                                        ; preds = %tc_cls_common_offload_init.exit
  %29 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rule, align 4
  tail call void @kfree(ptr noundef %30) #10
  br i1 %add, label %land.lhs.true23, label %if.then20.cleanup_crit_edge

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true23:                                  ; preds = %if.then20
  %31 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags, align 4
  %and.i65 = and i32 %32, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i65)
  %tobool.i66.not = icmp eq i32 %and.i65, 0
  br i1 %tobool.i66.not, label %land.lhs.true23.cleanup_crit_edge, label %do.body27

land.lhs.true23.cleanup_crit_edge:                ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body27:                                        ; preds = %land.lhs.true23
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mall_reoffload.__msg) #10
  %tobool28.not = icmp eq ptr %extack, null
  br i1 %tobool28.not, label %do.body27.cleanup_crit_edge, label %if.then29

do.body27.cleanup_crit_edge:                      ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then29:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @mall_reoffload.__msg, ptr %extack, align 4
  br label %cleanup

if.end34:                                         ; preds = %tc_cls_common_offload_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  %in_hw_count = getelementptr inbounds %struct.cls_mall_head, ptr %1, i32 0, i32 4
  %call37 = call i32 @tc_setup_cb_reoffload(ptr noundef %6, ptr noundef %tp, i1 noundef zeroext %add, ptr noundef %cb, i32 noundef 3, ptr noundef nonnull %cls_mall, ptr noundef %cb_priv, ptr noundef %flags, ptr noundef %in_hw_count) #10
  %34 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rule, align 4
  %action39 = getelementptr inbounds %struct.flow_rule, ptr %35, i32 0, i32 1
  call void @tc_cleanup_offload_action(ptr noundef %action39) #10
  %36 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rule, align 4
  call void @kfree(ptr noundef %37) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.then29, %do.body27.cleanup_crit_edge, %land.lhs.true23.cleanup_crit_edge, %if.then20.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end.cleanup_crit_edge ], [ -12, %if.end7.cleanup_crit_edge ], [ %call18, %if.then29 ], [ %call18, %do.body27.cleanup_crit_edge ], [ 0, %land.lhs.true23.cleanup_crit_edge ], [ 0, %if.then20.cleanup_crit_edge ], [ %call37, %if.end34 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cls_mall) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mall_bind_class(ptr noundef %fh, i32 noundef %classid, i32 noundef %cl, ptr noundef %q, i32 noundef %base) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fh, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %land.lhs.true

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

land.lhs.true:                                    ; preds = %entry
  %res = getelementptr inbounds %struct.cls_mall_head, ptr %fh, i32 0, i32 1
  %classid1 = getelementptr inbounds %struct.cls_mall_head, ptr %fh, i32 0, i32 1, i32 0, i32 0, i32 1
  %0 = ptrtoint ptr %classid1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %classid1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %classid)
  %cmp = icmp eq i32 %1, %classid
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cl)
  %tobool2.not = icmp eq i32 %cl, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.then
  %ops.i = getelementptr inbounds %struct.Qdisc, ptr %q, i32 0, i32 4
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 16
  %cl_ops.i = getelementptr inbounds %struct.Qdisc_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %cl_ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cl_ops.i, align 4
  %bind_tcf.i = getelementptr inbounds %struct.Qdisc_class_ops, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %bind_tcf.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bind_tcf.i, align 4
  %8 = ptrtoint ptr %classid1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %classid1, align 4
  %call.i = tail call i32 %7(ptr noundef %q, i32 noundef %base, i32 noundef %9) #10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %res, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !55
  tail call void @llvm.prefetch.p0(ptr %res, i32 1, i32 3, i32 1) #10
  %10 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %call.i, ptr %res) #10, !srcloc !56
  %asmresult.i.i.i = extractvalue { i32, i32 } %10, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %tobool.not.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i, label %if.then3.if.end6_crit_edge, label %if.then3.if.end6.sink.split_crit_edge

if.then3.if.end6.sink.split_crit_edge:            ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.sink.split

if.then3.if.end6_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.else:                                          ; preds = %if.then
  %call.i.i.i11 = tail call zeroext i1 @__kasan_check_write(ptr noundef %res, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !55
  tail call void @llvm.prefetch.p0(ptr %res, i32 1, i32 3, i32 1) #10
  %11 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %res) #10, !srcloc !56
  %asmresult.i.i.i12 = extractvalue { i32, i32 } %11, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i12)
  %cmp.not.i = icmp eq i32 %asmresult.i.i.i12, 0
  br i1 %cmp.not.i, label %if.else.if.end6_crit_edge, label %if.then.i16

if.else.if.end6_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then.i16:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %ops.i13 = getelementptr inbounds %struct.Qdisc, ptr %q, i32 0, i32 4
  br label %if.end6.sink.split

if.end6.sink.split:                               ; preds = %if.then.i16, %if.then3.if.end6.sink.split_crit_edge
  %ops.i13.sink = phi ptr [ %ops.i13, %if.then.i16 ], [ %ops.i, %if.then3.if.end6.sink.split_crit_edge ]
  %asmresult.i.i.i12.sink = phi i32 [ %asmresult.i.i.i12, %if.then.i16 ], [ %asmresult.i.i.i, %if.then3.if.end6.sink.split_crit_edge ]
  %12 = ptrtoint ptr %ops.i13.sink to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i13.sink, align 16
  %cl_ops.i14 = getelementptr inbounds %struct.Qdisc_ops, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %cl_ops.i14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cl_ops.i14, align 4
  %unbind_tcf.i15 = getelementptr inbounds %struct.Qdisc_class_ops, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %unbind_tcf.i15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %unbind_tcf.i15, align 4
  tail call void %17(ptr noundef %q, i32 noundef %asmresult.i.i.i12.sink) #10
  br label %if.end6

if.end6:                                          ; preds = %if.end6.sink.split, %if.else.if.end6_crit_edge, %if.then3.if.end6_crit_edge, %land.lhs.true.if.end6_crit_edge, %entry.if.end6_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mall_dump(ptr nocapture noundef readnone %net, ptr nocapture noundef readonly %tp, ptr noundef %fh, ptr noundef %skb, ptr nocapture noundef writeonly %t, i1 noundef zeroext %rtnl_held) #2 align 64 {
entry:
  %tmp.i71 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  %cls_mall.i = alloca %struct.tc_cls_matchall_offload, align 8
  %gpf = alloca %struct.tc_matchall_pcnt, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %gpf) #10
  %0 = ptrtoint ptr %gpf to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %gpf, align 8
  %tobool.not = icmp eq ptr %fh, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %1 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %len, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.cls_mall_head, ptr %fh, i32 0, i32 3
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  %and.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then1, label %if.end.if.end2_crit_edge

if.end.if.end2_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end2

if.then1:                                         ; preds = %if.end
  %5 = ptrtoint ptr %fh to i32
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %cls_mall.i) #10
  %6 = call ptr @memset(ptr %cls_mall.i, i32 0, i32 72)
  %chain.i = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 7
  %7 = ptrtoint ptr %chain.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chain.i, align 4
  %block1.i = getelementptr inbounds %struct.tcf_chain, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %block1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %block1.i, align 4
  %index.i.i = getelementptr inbounds %struct.tcf_chain, ptr %8, i32 0, i32 4
  %11 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %index.i.i, align 4
  %13 = ptrtoint ptr %cls_mall.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %cls_mall.i, align 8
  %protocol.i.i = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 3
  %14 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %protocol.i.i, align 4
  %protocol1.i.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_mall.i, i32 0, i32 1
  %16 = ptrtoint ptr %protocol1.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %protocol1.i.i, align 4
  %prio.i.i = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 4
  %17 = ptrtoint ptr %prio.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %prio.i.i, align 4
  %shr.i.i = lshr i32 %18, 16
  %prio2.i.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_mall.i, i32 0, i32 2
  %19 = ptrtoint ptr %prio2.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %shr.i.i, ptr %prio2.i.i, align 8
  %command.i = getelementptr inbounds %struct.tc_cls_matchall_offload, ptr %cls_mall.i, i32 0, i32 1
  %20 = ptrtoint ptr %command.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %command.i, align 8
  %cookie2.i = getelementptr inbounds %struct.tc_cls_matchall_offload, ptr %cls_mall.i, i32 0, i32 4
  %21 = ptrtoint ptr %cookie2.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %5, ptr %cookie2.i, align 8
  %call.i = call i32 @tc_setup_cb_call(ptr noundef %10, i32 noundef 3, ptr noundef nonnull %cls_mall.i, i1 noundef zeroext false, i1 noundef zeroext true) #10
  %stats.i = getelementptr inbounds %struct.tc_cls_matchall_offload, ptr %cls_mall.i, i32 0, i32 3
  %bytes.i = getelementptr inbounds %struct.tc_cls_matchall_offload, ptr %cls_mall.i, i32 0, i32 3, i32 1
  %22 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %bytes.i, align 8
  %24 = ptrtoint ptr %stats.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %stats.i, align 8
  %drops.i = getelementptr inbounds %struct.tc_cls_matchall_offload, ptr %cls_mall.i, i32 0, i32 3, i32 2
  %26 = ptrtoint ptr %drops.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %drops.i, align 8
  %lastused.i = getelementptr inbounds %struct.tc_cls_matchall_offload, ptr %cls_mall.i, i32 0, i32 3, i32 3
  %28 = ptrtoint ptr %lastused.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %lastused.i, align 8
  %used_hw_stats.i = getelementptr inbounds %struct.tc_cls_matchall_offload, ptr %cls_mall.i, i32 0, i32 3, i32 4
  %30 = ptrtoint ptr %used_hw_stats.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %used_hw_stats.i, align 8
  %conv.i = trunc i32 %31 to i8
  %used_hw_stats_valid.i = getelementptr inbounds %struct.tc_cls_matchall_offload, ptr %cls_mall.i, i32 0, i32 3, i32 5
  %32 = ptrtoint ptr %used_hw_stats_valid.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %used_hw_stats_valid.i, align 4, !range !61
  %nr_actions.i.i = getelementptr inbounds %struct.tcf_exts, ptr %fh, i32 0, i32 1
  %34 = ptrtoint ptr %nr_actions.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nr_actions.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp16.i.i = icmp sgt i32 %35, 0
  br i1 %cmp16.i.i, label %for.body.lr.ph.i.i, label %if.then1.mall_stats_hw_filter.exit_crit_edge

if.then1.mall_stats_hw_filter.exit_crit_edge:     ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #12
  br label %mall_stats_hw_filter.exit

for.body.lr.ph.i.i:                               ; preds = %if.then1
  %actions.i.i = getelementptr inbounds %struct.tcf_exts, ptr %fh, i32 0, i32 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.017.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %36 = ptrtoint ptr %actions.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %actions.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %37, i32 %i.017.i.i
  %38 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i = call i32 @tcf_action_update_hw_stats(ptr noundef %39) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.if.end.i.i_crit_edge, label %do.body.i.i

for.body.i.i.if.end.i.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

do.body.i.i:                                      ; preds = %for.body.i.i
  %40 = call i32 @llvm.read_register.i32(metadata !44) #10
  %and.i.i.i.i.i = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %43, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !62
  %44 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %39, align 16
  %stats_update.i.i.i = getelementptr inbounds %struct.tc_action_ops, ptr %45, i32 0, i32 11
  %46 = ptrtoint ptr %stats_update.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %stats_update.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %47, null
  br i1 %tobool.not.i.i.i, label %do.body.i.i.tcf_action_stats_update.exit.i.i_crit_edge, label %if.end.i.i.i

do.body.i.i.tcf_action_stats_update.exit.i.i_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tcf_action_stats_update.exit.i.i

if.end.i.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void %47(ptr noundef %39, i64 noundef %23, i64 noundef %25, i64 noundef %27, i64 noundef %29, i1 noundef zeroext true) #10
  br label %tcf_action_stats_update.exit.i.i

tcf_action_stats_update.exit.i.i:                 ; preds = %if.end.i.i.i, %do.body.i.i.tcf_action_stats_update.exit.i.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !63
  %48 = call i32 @llvm.read_register.i32(metadata !44) #10
  %and.i.i.i14.i.i = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i14.i.i to ptr
  %preempt_count.i.i15.i.i = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %preempt_count.i.i15.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %preempt_count.i.i15.i.i, align 4
  %sub.i.i.i = add i32 %51, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i15.i.i, align 4
  %used_hw_stats4.i.i = getelementptr inbounds %struct.tc_action, ptr %39, i32 0, i32 20
  %52 = ptrtoint ptr %used_hw_stats4.i.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv.i, ptr %used_hw_stats4.i.i, align 1
  %used_hw_stats_valid6.i.i = getelementptr inbounds %struct.tc_action, ptr %39, i32 0, i32 21
  %53 = ptrtoint ptr %used_hw_stats_valid6.i.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %33, ptr %used_hw_stats_valid6.i.i, align 2
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %tcf_action_stats_update.exit.i.i, %for.body.i.i.if.end.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.017.i.i, 1
  %54 = ptrtoint ptr %nr_actions.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %nr_actions.i.i, align 4
  %cmp.i.i = icmp slt i32 %inc.i.i, %55
  br i1 %cmp.i.i, label %if.end.i.i.for.body.i.i_crit_edge, label %if.end.i.i.mall_stats_hw_filter.exit_crit_edge

if.end.i.i.mall_stats_hw_filter.exit_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mall_stats_hw_filter.exit

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

mall_stats_hw_filter.exit:                        ; preds = %if.end.i.i.mall_stats_hw_filter.exit_crit_edge, %if.then1.mall_stats_hw_filter.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cls_mall.i) #10
  br label %if.end2

if.end2:                                          ; preds = %mall_stats_hw_filter.exit, %if.end.if.end2_crit_edge
  %handle = getelementptr inbounds %struct.cls_mall_head, ptr %fh, i32 0, i32 2
  %56 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %handle, align 4
  %tcm_handle = getelementptr inbounds %struct.tcmsg, ptr %t, i32 0, i32 4
  %58 = ptrtoint ptr %tcm_handle to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %tcm_handle, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %59 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %tail.i.i, align 8
  %call1.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %tobool4.not79 = icmp eq ptr %60, null
  %tobool4.not = select i1 %cmp.i, i1 true, i1 %tobool4.not79
  br i1 %tobool4.not, label %if.end2.cleanup_crit_edge, label %if.end6

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end2
  %classid = getelementptr inbounds %struct.cls_mall_head, ptr %fh, i32 0, i32 1, i32 0, i32 0, i32 1
  %61 = ptrtoint ptr %classid to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %classid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool7.not = icmp eq i32 %62, 0
  br i1 %tobool7.not, label %if.end6.if.end13_crit_edge, label %land.lhs.true

if.end6.if.end13_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #10
  %63 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %tmp.i, align 4
  %call.i70 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70)
  %tobool11.not = icmp eq i32 %call.i70, 0
  br i1 %tobool11.not, label %land.lhs.true.if.end13_crit_edge, label %land.lhs.true.if.then.i.i_crit_edge

land.lhs.true.if.then.i.i_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.end13:                                         ; preds = %land.lhs.true.if.end13_crit_edge, %if.end6.if.end13_crit_edge
  %64 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool15.not = icmp eq i32 %65, 0
  br i1 %tobool15.not, label %if.end13.if.end21_crit_edge, label %land.lhs.true16

if.end13.if.end21_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

land.lhs.true16:                                  ; preds = %if.end13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i71) #10
  %66 = ptrtoint ptr %tmp.i71 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %tmp.i71, align 4
  %call.i72 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i71) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i71) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i72)
  %tobool19.not = icmp eq i32 %call.i72, 0
  br i1 %tobool19.not, label %land.lhs.true16.if.end21_crit_edge, label %land.lhs.true16.if.then.i.i_crit_edge

land.lhs.true16.if.then.i.i_crit_edge:            ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

land.lhs.true16.if.end21_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.end21:                                         ; preds = %land.lhs.true16.if.end21_crit_edge, %if.end13.if.end21_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %67 = load i32, ptr @nr_cpu_ids, align 4
  %call2280 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #15
  call void @__sanitizer_cov_trace_cmp4(i32 %call2280, i32 %67)
  %cmp81 = icmp ult i32 %call2280, %67
  br i1 %cmp81, label %for.body.lr.ph, label %if.end21.for.end_crit_edge

if.end21.for.end_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end21
  %pf23 = getelementptr inbounds %struct.cls_mall_head, ptr %fh, i32 0, i32 5
  %68 = ptrtoint ptr %pf23 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pf23, align 4
  %70 = ptrtoint ptr %69 to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %call2282 = phi i32 [ %call2280, %for.body.lr.ph ], [ %call22, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call2282
  %71 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx, align 4
  %add = add i32 %72, %70
  %73 = inttoptr i32 %add to ptr
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %73, align 8
  %76 = ptrtoint ptr %gpf to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %gpf, align 8
  %add26 = add i64 %77, %75
  store i64 %add26, ptr %gpf, align 8
  %call22 = call i32 @cpumask_next(i32 noundef %call2282, ptr noundef nonnull @__cpu_possible_mask) #15
  %cmp = icmp ult i32 %call22, %67
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end21.for.end_crit_edge
  %call27 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 4, i32 noundef 8, ptr noundef nonnull %gpf, i32 noundef 5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %for.end.if.then.i.i_crit_edge

for.end.if.then.i.i_crit_edge:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.end30:                                         ; preds = %for.end
  %call31 = call i32 @tcf_exts_dump(ptr noundef %skb, ptr noundef nonnull %fh) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.end30.if.then.i.i_crit_edge

if.end30.if.then.i.i_crit_edge:                   ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.end34:                                         ; preds = %if.end30
  %78 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %79 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %60 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i74 = trunc i32 %sub.ptr.sub.i to i16
  %80 = ptrtoint ptr %60 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %conv.i74, ptr %60, align 2
  %call37 = call i32 @tcf_exts_dump_stats(ptr noundef %skb, ptr noundef nonnull %fh) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.end34.if.then.i.i_crit_edge, label %if.end40

if.end34.if.then.i.i_crit_edge:                   ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.end40:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  %len41 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %81 = ptrtoint ptr %len41 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %len41, align 4
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end34.if.then.i.i_crit_edge, %if.end30.if.then.i.i_crit_edge, %for.end.if.then.i.i_crit_edge, %land.lhs.true16.if.then.i.i_crit_edge, %land.lhs.true.if.then.i.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %83 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i76 = icmp ugt ptr %84, %60
  br i1 %cmp.i.i76, label %do.end.i.i, label %if.then.i.i.if.end.i.i77_crit_edge, !prof !54

if.then.i.i.if.end.i.i77_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i77

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 991, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i.i77

if.end.i.i77:                                     ; preds = %do.end.i.i, %if.then.i.i.if.end.i.i77_crit_edge
  %85 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %60 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %86 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i77, %if.end40, %if.end2.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %82, %if.end40 ], [ %2, %if.then ], [ -1, %if.end.i.i77 ], [ -1, %if.end2.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %gpf) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_action_exec(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tcf_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mall_destroy_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -52
  tail call void @rtnl_lock() #10
  tail call fastcc void @__mall_destroy(ptr noundef %add.ptr)
  tail call void @rtnl_unlock() #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__mall_destroy(ptr noundef %head) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @tcf_exts_destroy(ptr noundef %head) #10
  %net.i = getelementptr inbounds %struct.tcf_exts, ptr %head, i32 0, i32 3
  %0 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.tcf_exts_put_net.exit_crit_edge, label %if.then.i

entry.tcf_exts_put_net.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %tcf_exts_put_net.exit

if.then.i:                                        ; preds = %entry
  %ns_tracker.i = getelementptr inbounds %struct.tcf_exts, ptr %head, i32 0, i32 4
  %refcnt_tracker.i.i.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 15
  %call.i.i.i = tail call i32 @ref_tracker_free(ptr noundef %refcnt_tracker.i.i.i, ptr noundef %ns_tracker.i) #10
  %count.i.i.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 14, i32 3
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !64
  tail call void @llvm.prefetch.p0(ptr %count.i.i.i, i32 1, i32 3, i32 1) #10
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i.i, ptr %count.i.i.i, i32 1, ptr elementtype(i32) %count.i.i.i) #10, !srcloc !65
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.tcf_exts_put_net.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !59

if.end5.i.i.i.i.i.i.tcf_exts_put_net.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tcf_exts_put_net.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %count.i.i.i, i32 noundef 3) #10
  br label %tcf_exts_put_net.exit

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !66
  tail call void @__put_net(ptr noundef nonnull %1) #10
  br label %tcf_exts_put_net.exit

tcf_exts_put_net.exit:                            ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.tcf_exts_put_net.exit_crit_edge, %entry.tcf_exts_put_net.exit_crit_edge
  %pf = getelementptr inbounds %struct.cls_mall_head, ptr %head, i32 0, i32 5
  %3 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pf, align 4
  tail call void @free_percpu(ptr noundef %4) #10
  tail call void @kfree(ptr noundef %head) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tc_setup_cb_destroy(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ref_tracker_alloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcf_exts_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ref_tracker_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_net(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mall_set_parms(ptr noundef %net, ptr noundef %tp, ptr noundef %head, i32 noundef %base, ptr noundef %tb, ptr noundef %est, i32 noundef %flags, i32 noundef %fl_flags, ptr noundef %extack) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tcf_exts_validate_ex(ptr noundef %net, ptr noundef %tp, ptr noundef %tb, ptr noundef %est, ptr noundef %head, i32 noundef %flags, i32 noundef %fl_flags, ptr noundef %extack) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr ptr, ptr %tb, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then1

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then1:                                         ; preds = %if.end
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i.i, align 4
  %res = getelementptr inbounds %struct.cls_mall_head, ptr %head, i32 0, i32 1
  %classid = getelementptr inbounds %struct.cls_mall_head, ptr %head, i32 0, i32 1, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %classid to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %classid, align 4
  %chain.i = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 7
  %5 = ptrtoint ptr %chain.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chain.i, align 4
  %block.i = getelementptr inbounds %struct.tcf_chain, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %block.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %block.i, align 4
  %q1.i = getelementptr inbounds %struct.tcf_block, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %q1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %q1.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.then1.cleanup_crit_edge, label %if.end.i

if.then1.cleanup_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.then1
  %flags.i.i = getelementptr inbounds %struct.Qdisc, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.end.i.sch_tree_lock.exit.i_crit_edge

if.end.i.sch_tree_lock.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sch_tree_lock.exit.i

if.else.i.i:                                      ; preds = %if.end.i
  %dev_queue.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %10, i32 0, i32 9
  %13 = ptrtoint ptr %dev_queue.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_queue.i.i.i.i, align 8
  %qdisc_sleeping.i.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %qdisc_sleeping.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %qdisc_sleeping.i.i.i.i, align 4
  %call1.i.i.i = tail call i32 @rtnl_is_locked() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.rhs.i.i.i, label %if.else.i.i.sch_tree_lock.exit.i_crit_edge

if.else.i.i.sch_tree_lock.exit.i_crit_edge:       ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sch_tree_lock.exit.i

land.rhs.i.i.i:                                   ; preds = %if.else.i.i
  %.b41.i.i.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i.i, label %land.rhs.i.i.i.sch_tree_lock.exit.i_crit_edge, label %if.then.i.i.i, !prof !59

land.rhs.i.i.i.sch_tree_lock.exit.i_crit_edge:    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sch_tree_lock.exit.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, i32 noundef 596) #10
  br label %sch_tree_lock.exit.i

sch_tree_lock.exit.i:                             ; preds = %if.then.i.i.i, %land.rhs.i.i.i.sch_tree_lock.exit.i_crit_edge, %if.else.i.i.sch_tree_lock.exit.i_crit_edge, %if.end.i.sch_tree_lock.exit.i_crit_edge
  %.sink.i.i = phi ptr [ %10, %if.end.i.sch_tree_lock.exit.i_crit_edge ], [ %16, %if.else.i.i.sch_tree_lock.exit.i_crit_edge ], [ %16, %land.rhs.i.i.i.sch_tree_lock.exit.i_crit_edge ], [ %16, %if.then.i.i.i ]
  %lock.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %.sink.i.i, i32 0, i32 17, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i.i.i.i) #10
  %ops.i.i = getelementptr inbounds %struct.Qdisc, ptr %10, i32 0, i32 4
  %17 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops.i.i, align 16
  %cl_ops.i.i = getelementptr inbounds %struct.Qdisc_ops, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %cl_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cl_ops.i.i, align 4
  %bind_tcf.i.i = getelementptr inbounds %struct.Qdisc_class_ops, ptr %20, i32 0, i32 10
  %21 = ptrtoint ptr %bind_tcf.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bind_tcf.i.i, align 4
  %23 = ptrtoint ptr %classid to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %classid, align 4
  %call.i.i = tail call i32 %22(ptr noundef nonnull %10, i32 noundef %base, i32 noundef %24) #10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %res, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !55
  tail call void @llvm.prefetch.p0(ptr %res, i32 1, i32 3, i32 1) #10
  %25 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %call.i.i, ptr %res) #10, !srcloc !56
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %25, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %tobool.not.i5.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool.not.i5.i, label %sch_tree_lock.exit.i.__tcf_bind_filter.exit.i_crit_edge, label %if.then.i.i

sch_tree_lock.exit.i.__tcf_bind_filter.exit.i_crit_edge: ; preds = %sch_tree_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__tcf_bind_filter.exit.i

if.then.i.i:                                      ; preds = %sch_tree_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops.i.i, align 16
  %cl_ops3.i.i = getelementptr inbounds %struct.Qdisc_ops, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %cl_ops3.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cl_ops3.i.i, align 4
  %unbind_tcf.i.i = getelementptr inbounds %struct.Qdisc_class_ops, ptr %29, i32 0, i32 11
  %30 = ptrtoint ptr %unbind_tcf.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %unbind_tcf.i.i, align 4
  tail call void %31(ptr noundef nonnull %10, i32 noundef %asmresult.i.i.i.i) #10
  br label %__tcf_bind_filter.exit.i

__tcf_bind_filter.exit.i:                         ; preds = %if.then.i.i, %sch_tree_lock.exit.i.__tcf_bind_filter.exit.i_crit_edge
  %32 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags.i.i, align 8
  %and.i7.i = and i32 %33, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i7.i)
  %tobool.not.i8.i = icmp eq i32 %and.i7.i, 0
  br i1 %tobool.not.i8.i, label %if.else.i13.i, label %__tcf_bind_filter.exit.i.sch_tree_unlock.exit.i_crit_edge

__tcf_bind_filter.exit.i.sch_tree_unlock.exit.i_crit_edge: ; preds = %__tcf_bind_filter.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sch_tree_unlock.exit.i

if.else.i13.i:                                    ; preds = %__tcf_bind_filter.exit.i
  %dev_queue.i.i.i9.i = getelementptr inbounds %struct.Qdisc, ptr %10, i32 0, i32 9
  %34 = ptrtoint ptr %dev_queue.i.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev_queue.i.i.i9.i, align 8
  %qdisc_sleeping.i.i.i10.i = getelementptr inbounds %struct.netdev_queue, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %qdisc_sleeping.i.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %qdisc_sleeping.i.i.i10.i, align 4
  %call1.i.i11.i = tail call i32 @rtnl_is_locked() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i11.i)
  %tobool.not.i.i12.i = icmp eq i32 %call1.i.i11.i, 0
  br i1 %tobool.not.i.i12.i, label %land.rhs.i.i15.i, label %if.else.i13.i.sch_tree_unlock.exit.i_crit_edge

if.else.i13.i.sch_tree_unlock.exit.i_crit_edge:   ; preds = %if.else.i13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sch_tree_unlock.exit.i

land.rhs.i.i15.i:                                 ; preds = %if.else.i13.i
  %.b41.i.i14.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i14.i, label %land.rhs.i.i15.i.sch_tree_unlock.exit.i_crit_edge, label %if.then.i.i16.i, !prof !59

land.rhs.i.i15.i.sch_tree_unlock.exit.i_crit_edge: ; preds = %land.rhs.i.i15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sch_tree_unlock.exit.i

if.then.i.i16.i:                                  ; preds = %land.rhs.i.i15.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, i32 noundef 596) #10
  br label %sch_tree_unlock.exit.i

sch_tree_unlock.exit.i:                           ; preds = %if.then.i.i16.i, %land.rhs.i.i15.i.sch_tree_unlock.exit.i_crit_edge, %if.else.i13.i.sch_tree_unlock.exit.i_crit_edge, %__tcf_bind_filter.exit.i.sch_tree_unlock.exit.i_crit_edge
  %.sink.i17.i = phi ptr [ %10, %__tcf_bind_filter.exit.i.sch_tree_unlock.exit.i_crit_edge ], [ %37, %if.else.i13.i.sch_tree_unlock.exit.i_crit_edge ], [ %37, %land.rhs.i.i15.i.sch_tree_unlock.exit.i_crit_edge ], [ %37, %if.then.i.i16.i ]
  %lock.i.i.i18.i = getelementptr inbounds %struct.Qdisc, ptr %.sink.i17.i, i32 0, i32 17, i32 3
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i.i18.i) #10
  br label %cleanup

cleanup:                                          ; preds = %sch_tree_unlock.exit.i, %if.then1.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then1.cleanup_crit_edge ], [ 0, %sch_tree_unlock.exit.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mall_replace_hw_filter(ptr noundef %tp, ptr noundef %head, i32 noundef %cookie, ptr noundef %extack) unnamed_addr #2 align 64 {
entry:
  %cls_mall.i59 = alloca %struct.tc_cls_matchall_offload, align 8
  %cls_mall.i = alloca %struct.tc_cls_matchall_offload, align 8
  %cls_mall = alloca %struct.tc_cls_matchall_offload, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %cls_mall) #10
  %0 = call ptr @memset(ptr %cls_mall, i32 0, i32 72)
  %chain = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 7
  %1 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chain, align 4
  %block1 = getelementptr inbounds %struct.tcf_chain, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %block1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %block1, align 4
  %flags = getelementptr inbounds %struct.cls_mall_head, ptr %head, i32 0, i32 3
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %and.i = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  %call2 = tail call i32 @tcf_exts_num_actions(ptr noundef %head) #10
  %call3 = tail call ptr @flow_rule_alloc(i32 noundef %call2) #10
  %rule = getelementptr inbounds %struct.tc_cls_matchall_offload, ptr %cls_mall, i32 0, i32 2
  %7 = ptrtoint ptr %rule to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call3, ptr %rule, align 4
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %10 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chain, align 4
  %index.i = getelementptr inbounds %struct.tcf_chain, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index.i, align 4
  %14 = ptrtoint ptr %cls_mall to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %cls_mall, align 8
  %protocol.i = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 3
  %15 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %protocol.i, align 4
  %protocol1.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_mall, i32 0, i32 1
  %17 = ptrtoint ptr %protocol1.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %protocol1.i, align 4
  %prio.i = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 4
  %18 = ptrtoint ptr %prio.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %prio.i, align 4
  %shr.i = lshr i32 %19, 16
  %prio2.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_mall, i32 0, i32 2
  %20 = ptrtoint ptr %prio2.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %shr.i, ptr %prio2.i, align 8
  %21 = and i32 %9, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %if.end.tc_cls_common_offload_init.exit_crit_edge, label %if.then.i

if.end.tc_cls_common_offload_init.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %tc_cls_common_offload_init.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %extack3.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_mall, i32 0, i32 3
  %23 = ptrtoint ptr %extack3.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %extack, ptr %extack3.i, align 4
  br label %tc_cls_common_offload_init.exit

tc_cls_common_offload_init.exit:                  ; preds = %if.then.i, %if.end.tc_cls_common_offload_init.exit_crit_edge
  %command = getelementptr inbounds %struct.tc_cls_matchall_offload, ptr %cls_mall, i32 0, i32 1
  %24 = ptrtoint ptr %command to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %command, align 8
  %cookie6 = getelementptr inbounds %struct.tc_cls_matchall_offload, ptr %cls_mall, i32 0, i32 4
  %25 = ptrtoint ptr %cookie6 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %cookie, ptr %cookie6, align 8
  %action = getelementptr inbounds %struct.flow_rule, ptr %call3, i32 0, i32 1
  %call9 = tail call i32 @tc_setup_offload_action(ptr noundef %action, ptr noundef %head) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end19, label %if.then11

if.then11:                                        ; preds = %tc_cls_common_offload_init.exit
  %26 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rule, align 4
  tail call void @kfree(ptr noundef %27) #10
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %cls_mall.i) #10
  %28 = call ptr @memset(ptr %cls_mall.i, i32 0, i32 72)
  %29 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %chain, align 4
  %block1.i = getelementptr inbounds %struct.tcf_chain, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %block1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %block1.i, align 4
  %index.i.i = getelementptr inbounds %struct.tcf_chain, ptr %30, i32 0, i32 4
  %33 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %index.i.i, align 4
  %35 = ptrtoint ptr %cls_mall.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %cls_mall.i, align 8
  %36 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %protocol.i, align 4
  %protocol1.i.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_mall.i, i32 0, i32 1
  %38 = ptrtoint ptr %protocol1.i.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %protocol1.i.i, align 4
  %39 = ptrtoint ptr %prio.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %prio.i, align 4
  %shr.i.i = lshr i32 %40, 16
  %prio2.i.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_mall.i, i32 0, i32 2
  %41 = ptrtoint ptr %prio2.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %shr.i.i, ptr %prio2.i.i, align 8
  %command.i = getelementptr inbounds %struct.tc_cls_matchall_offload, ptr %cls_mall.i, i32 0, i32 1
  %42 = ptrtoint ptr %command.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %command.i, align 8
  %cookie2.i = getelementptr inbounds %struct.tc_cls_matchall_offload, ptr %cls_mall.i, i32 0, i32 4
  %43 = ptrtoint ptr %cookie2.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %cookie, ptr %cookie2.i, align 8
  %in_hw_count.i = getelementptr inbounds %struct.cls_mall_head, ptr %head, i32 0, i32 4
  %call.i = call i32 @tc_setup_cb_destroy(ptr noundef %32, ptr noundef %tp, i32 noundef 3, ptr noundef nonnull %cls_mall.i, i1 noundef zeroext false, ptr noundef %flags, ptr noundef %in_hw_count.i, i1 noundef zeroext true) #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cls_mall.i) #10
  br i1 %tobool.i, label %do.body, label %if.then11.cleanup_crit_edge

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %if.then11
  call void @do_trace_netlink_extack(ptr noundef nonnull @mall_replace_hw_filter.__msg) #10
  %tobool15.not = icmp eq ptr %extack, null
  br i1 %tobool15.not, label %do.body.cleanup_crit_edge, label %if.then16

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @mall_replace_hw_filter.__msg, ptr %extack, align 4
  br label %cleanup

if.end19:                                         ; preds = %tc_cls_common_offload_init.exit
  %in_hw_count = getelementptr inbounds %struct.cls_mall_head, ptr %head, i32 0, i32 4
  %call22 = call i32 @tc_setup_cb_add(ptr noundef %4, ptr noundef %tp, i32 noundef 3, ptr noundef nonnull %cls_mall, i1 noundef zeroext %tobool.i, ptr noundef %flags, ptr noundef %in_hw_count, i1 noundef zeroext true) #10
  %45 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rule, align 4
  %action24 = getelementptr inbounds %struct.flow_rule, ptr %46, i32 0, i32 1
  call void @tc_cleanup_offload_action(ptr noundef %action24) #10
  %47 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rule, align 4
  call void @kfree(ptr noundef %48) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool26.not = icmp eq i32 %call22, 0
  br i1 %tobool26.not, label %if.end28, label %if.then27

if.then27:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %cls_mall.i59) #10
  %49 = call ptr @memset(ptr %cls_mall.i59, i32 0, i32 72)
  %50 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %chain, align 4
  %block1.i61 = getelementptr inbounds %struct.tcf_chain, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %block1.i61 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %block1.i61, align 4
  %index.i.i63 = getelementptr inbounds %struct.tcf_chain, ptr %51, i32 0, i32 4
  %54 = ptrtoint ptr %index.i.i63 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %index.i.i63, align 4
  %56 = ptrtoint ptr %cls_mall.i59 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %cls_mall.i59, align 8
  %57 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %protocol.i, align 4
  %protocol1.i.i65 = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_mall.i59, i32 0, i32 1
  %59 = ptrtoint ptr %protocol1.i.i65 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %58, ptr %protocol1.i.i65, align 4
  %60 = ptrtoint ptr %prio.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %prio.i, align 4
  %shr.i.i67 = lshr i32 %61, 16
  %prio2.i.i68 = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_mall.i59, i32 0, i32 2
  %62 = ptrtoint ptr %prio2.i.i68 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %shr.i.i67, ptr %prio2.i.i68, align 8
  %command.i71 = getelementptr inbounds %struct.tc_cls_matchall_offload, ptr %cls_mall.i59, i32 0, i32 1
  %63 = ptrtoint ptr %command.i71 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 1, ptr %command.i71, align 8
  %cookie2.i72 = getelementptr inbounds %struct.tc_cls_matchall_offload, ptr %cls_mall.i59, i32 0, i32 4
  %64 = ptrtoint ptr %cookie2.i72 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %cookie, ptr %cookie2.i72, align 8
  %call.i74 = call i32 @tc_setup_cb_destroy(ptr noundef %53, ptr noundef %tp, i32 noundef 3, ptr noundef nonnull %cls_mall.i59, i1 noundef zeroext false, ptr noundef %flags, ptr noundef %in_hw_count, i1 noundef zeroext true) #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cls_mall.i59) #10
  br label %cleanup

if.end28:                                         ; preds = %if.end19
  br i1 %tobool.i, label %land.lhs.true, label %if.end28.if.end33_crit_edge

if.end28.if.end33_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

land.lhs.true:                                    ; preds = %if.end28
  %65 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %flags, align 4
  %and = and i32 %66, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool31.not = icmp eq i32 %and, 0
  br i1 %tobool31.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end33_crit_edge

land.lhs.true.if.end33_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end33:                                         ; preds = %land.lhs.true.if.end33_crit_edge, %if.end28.if.end33_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %land.lhs.true.cleanup_crit_edge, %if.then27, %if.then16, %do.body.cleanup_crit_edge, %if.then11.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call22, %if.then27 ], [ 0, %if.end33 ], [ -12, %entry.cleanup_crit_edge ], [ %call9, %if.then16 ], [ %call9, %do.body.cleanup_crit_edge ], [ 0, %if.then11.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cls_mall) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_exts_validate_ex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @flow_rule_alloc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_exts_num_actions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tc_setup_offload_action(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tc_setup_cb_add(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tc_cleanup_offload_action(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tc_setup_cb_reoffload(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put_64bit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_exts_dump(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_exts_dump_stats(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tc_setup_cb_call(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_action_update_hw_stats(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_tcf_proto_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !16, !17, !19, !21, !22, !24, !26, !28, !30, !31, !32, !34, !36, !38, !40, !42}
!llvm.named.register.sp = !{!44}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @__initcall__kmod_cls_matchall__371_438_cls_mall_init6, !1, !"__initcall__kmod_cls_matchall__371_438_cls_mall_init6", i1 false, i1 false}
!1 = !{!"../net/sched/cls_matchall.c", i32 438, i32 1}
!2 = !{ptr @__exitcall_cls_mall_exit, !3, !"__exitcall_cls_mall_exit", i1 false, i1 false}
!3 = !{!"../net/sched/cls_matchall.c", i32 439, i32 1}
!4 = !{ptr @__UNIQUE_ID_author372, !5, !"__UNIQUE_ID_author372", i1 false, i1 false}
!5 = !{!"../net/sched/cls_matchall.c", i32 441, i32 1}
!6 = !{ptr @__UNIQUE_ID_description373, !7, !"__UNIQUE_ID_description373", i1 false, i1 false}
!7 = !{!"../net/sched/cls_matchall.c", i32 442, i32 1}
!8 = !{ptr @__UNIQUE_ID_file374, !9, !"__UNIQUE_ID_file374", i1 false, i1 false}
!9 = !{!"../net/sched/cls_matchall.c", i32 443, i32 1}
!10 = !{ptr @__UNIQUE_ID_license375, !9, !"__UNIQUE_ID_license375", i1 false, i1 false}
!11 = !{ptr @cls_mall_ops, !12, !"cls_mall_ops", i1 false, i1 false}
!12 = !{!"../net/sched/cls_matchall.c", i32 413, i32 29}
!13 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!14 = !{!"../net/sched/cls_matchall.c", i32 30, i32 31}
!15 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!17 = distinct !{null, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/sched/cls_matchall.c", i32 39, i32 2}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../net/sched/cls_matchall.c", i32 131, i32 31}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = distinct !{null, !23, !"__warned", i1 false, i1 false}
!23 = !{!"../net/sched/cls_matchall.c", i32 149, i32 31}
!24 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!25 = !{!"../net/sched/cls_matchall.c", i32 189, i32 31}
!26 = !{ptr @mall_policy, !27, !"mall_policy", i1 false, i1 false}
!27 = !{!"../net/sched/cls_matchall.c", i32 157, i32 32}
!28 = distinct !{null, !29, !"__already_done", i1 false, i1 false}
!29 = !{!"../include/net/sch_generic.h", i32 596, i32 2}
!30 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @mall_replace_hw_filter.__msg, !33, !"__msg", i1 false, i1 false}
!33 = !{!"../net/sched/cls_matchall.c", i32 105, i32 4}
!34 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!35 = !{!"../net/sched/cls_matchall.c", i32 262, i32 31}
!36 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!37 = !{!"../net/sched/cls_matchall.c", i32 272, i32 31}
!38 = distinct !{null, !39, !"__warned", i1 false, i1 false}
!39 = !{!"../net/sched/cls_matchall.c", i32 288, i32 31}
!40 = !{ptr @mall_reoffload.__msg, !41, !"__msg", i1 false, i1 false}
!41 = !{!"../net/sched/cls_matchall.c", i32 309, i32 4}
!42 = !{ptr @.str.6, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../include/net/netlink.h", i32 991, i32 3}
!44 = !{!"sp"}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!54 = !{!"branch_weights", i32 1, i32 2000}
!55 = !{i64 2156389177}
!56 = !{i64 725109, i64 725126, i64 725150, i64 725176, i64 725194}
!57 = !{i64 2156389521}
!58 = !{i64 702077, i64 702101, i64 702122, i64 702139, i64 702156}
!59 = !{!"branch_weights", i32 2000, i32 1}
!60 = !{i64 2156416094}
!61 = !{i8 0, i8 2}
!62 = !{i64 2156391444}
!63 = !{i64 2156391541}
!64 = !{i64 2148307872}
!65 = !{i64 2148222336, i64 2148222368, i64 2148222397, i64 2148222431, i64 2148222462, i64 2148222485}
!66 = !{i64 2149314320}
