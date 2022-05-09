; ModuleID = '/llk/IR_all_yes/net/sched/cls_rsvp6.c_pt.bc'
source_filename = "../net/sched/cls_rsvp6.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tcf_proto_ops = type { %struct.list_head, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.27 }
%union.anon.27 = type { i32 }
%struct.tcf_proto = type { ptr, ptr, ptr, i16, i32, ptr, ptr, ptr, %struct.spinlock, i8, %struct.refcount_struct, %struct.callback_head, %struct.hlist_node }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.callback_head = type { ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.127, %union.anon.128, [48 x i8], %union.anon.129, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.131, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.127 = type { ptr }
%union.anon.128 = type { i64 }
%union.anon.129 = type { %struct.anon.130 }
%struct.anon.130 = type { i32, ptr }
%union.anon.131 = type { %struct.anon.132 }
%struct.anon.132 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.133, i32, i32, i32, i16, i16, %union.anon.135, i32, %union.anon.136, %union.anon.137, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.133 = type { i32 }
%union.anon.135 = type { i32 }
%union.anon.136 = type { i32 }
%union.anon.137 = type { i16 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.26 }
%union.anon.26 = type { [4 x i32] }
%struct.rsvp_head = type { [8 x i32], i32, i8, [256 x ptr], %struct.callback_head }
%struct.rsvp_session = type { ptr, [4 x i32], %struct.tc_rsvp_gpi, i8, i8, [17 x ptr], %struct.callback_head }
%struct.tc_rsvp_gpi = type { i32, i32, i32 }
%struct.rsvp_filter = type { ptr, [4 x i32], %struct.tc_rsvp_gpi, i8, %struct.tcf_result, %struct.tcf_exts, i32, ptr, %struct.rcu_work }
%struct.tcf_result = type { %union.anon.144 }
%union.anon.144 = type { %struct.anon.145 }
%struct.anon.145 = type { i32, i32 }
%struct.tcf_exts = type { i32, i32, ptr, ptr, ptr, i32, i32 }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tc_rsvp_pinfo = type { %struct.tc_rsvp_gpi, %struct.tc_rsvp_gpi, i8, i8, i8, i8 }
%struct.tcf_walker = type { i32, i32, i32, i8, i32, ptr }
%struct.Qdisc = type { ptr, ptr, i32, i32, ptr, ptr, %struct.hlist_node, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, [64 x i8], %struct.sk_buff_head, %struct.qdisc_skb_head, %struct.gnet_stats_basic_sync, %struct.gnet_stats_queue, i32, i32, ptr, %struct.sk_buff_head, [8 x i8], %struct.spinlock, %struct.spinlock, %struct.callback_head, ptr, [28 x i8], [0 x i32] }
%struct.qdisc_skb_head = type { ptr, ptr, i32, %struct.spinlock }
%struct.gnet_stats_basic_sync = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.gnet_stats_queue = type { i32, i32, i32, i32, i32 }
%struct.sk_buff_head = type { %union.anon.94, i32, %struct.spinlock }
%union.anon.94 = type { %struct.anon.95 }
%struct.anon.95 = type { ptr, ptr }
%struct.Qdisc_ops = type { ptr, ptr, [16 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Qdisc_class_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tcmsg = type { i8, i8, i16, i32, i32, i32, i32 }
%struct.tcf_chain = type { %struct.mutex, ptr, %struct.list_head, ptr, i32, i32, i32, i8, i8, ptr, ptr, %struct.callback_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tcf_block = type { %struct.mutex, %struct.list_head, i32, i32, %struct.refcount_struct, ptr, ptr, %struct.rw_semaphore, %struct.flow_block, %struct.list_head, i8, %struct.atomic_t, i32, i32, %struct.anon.125, %struct.callback_head, [128 x %struct.hlist_head], %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.flow_block = type { %struct.list_head }
%struct.anon.125 = type { ptr, %struct.list_head }
%struct.hlist_head = type { ptr }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.96, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.96 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }

@cls_rsvp6_ops = internal global %struct.tcf_proto_ops { %struct.list_head zeroinitializer, [16 x i8] c"rsvp6\00\00\00\00\00\00\00\00\00\00\00", ptr @rsvp_classify, ptr @rsvp_init, ptr @rsvp_destroy, ptr @rsvp_get, ptr null, ptr @rsvp_change, ptr @rsvp_delete, ptr null, ptr @rsvp_walk, ptr null, ptr null, ptr null, ptr @rsvp_bind_class, ptr null, ptr null, ptr @rsvp_dump, ptr null, ptr null, ptr null, i32 0 }, section ".data..read_mostly", align 4
@__initcall__kmod_cls_rsvp6__539_775_init_rsvp6 = internal global ptr @init_rsvp, section ".initcall6.init", align 4
@__exitcall_exit_rsvp = internal global ptr @exit_rsvp, section ".exitcall.exit", align 4
@__UNIQUE_ID_file540 = internal constant [35 x i8] c"cls_rsvp6.file=net/sched/cls_rsvp6\00", section ".modinfo", align 1
@__UNIQUE_ID_license541 = internal constant [22 x i8] c"cls_rsvp6.license=GPL\00", section ".modinfo", align 1
@rsvp_classify.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"net/sched/cls_rsvp.h\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rsvp_classify.__warned.2 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rsvp_classify.__warned.3 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rsvp_classify.__warned.4 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rsvp_classify.__warned.5 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rsvp_classify.__warned.6 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rsvp_classify.__warned.7 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rsvp_destroy.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@rsvp_destroy.__warned.9 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rsvp_destroy.__warned.10 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rsvp_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rsvp_get.__warned.11 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rsvp_get.__warned.12 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rsvp_get.__warned.13 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rsvp_get.__warned.14 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rsvp_change.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rsvp_policy = internal constant { [7 x %struct.nla_policy], [40 x i8] } { [7 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.27 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 16, %union.anon.27 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 16, %union.anon.27 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 28, %union.anon.27 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer], [40 x i8] zeroinitializer }, align 32
@rsvp_change.__warned.15 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rsvp_change.__warned.16 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rsvp_change.__warned.17 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rsvp_change.__warned.18 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rsvp_change.__warned.19 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@qdisc_root_sleeping_lock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/net/sch_generic.h\00", [38 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@rsvp_replace.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rsvp_replace.__warned.22 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rsvp_replace.__warned.23 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rsvp_replace.__warned.24 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@gen_handle.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tunnel_recycle.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tunnel_recycle.__warned.26 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tunnel_recycle.__warned.27 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tunnel_recycle.__warned.28 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rsvp_delete.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rsvp_delete.__warned.29 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rsvp_delete.__warned.30 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rsvp_delete.__warned.31 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rsvp_delete.__warned.32 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rsvp_walk.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rsvp_walk.__warned.33 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rsvp_walk.__warned.34 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rsvp_walk.__warned.35 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rsvp_walk.__warned.36 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.37 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 20]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 32]
@___asan_gen_ = private constant [25 x i8] c"../net/sched/cls_rsvp6.c\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 130, i32 27 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 314, i32 27 }
@___asan_gen_.48 = private unnamed_addr constant [12 x i8] c"rsvp_policy\00", align 1
@___asan_gen_.49 = private unnamed_addr constant [24 x i8] c"../net/sched/cls_rsvp.h\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 464, i32 32 }
@___asan_gen_.55 = private unnamed_addr constant [29 x i8] c"../include/net/sch_generic.h\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 596, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 991, i32 3 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_file540, ptr @__UNIQUE_ID_license541, ptr @__exitcall_exit_rsvp, ptr @__initcall__kmod_cls_rsvp6__539_775_init_rsvp6, ptr @exit_rsvp, ptr @.str, ptr @.str.1, ptr @.str.8, ptr @rsvp_policy, ptr @.str.20, ptr @.str.21, ptr @.str.37], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsvp_policy to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_rsvp() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @unregister_tcf_proto_ops(ptr noundef nonnull @cls_rsvp6_ops) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_tcf_proto_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_rsvp() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_tcf_proto_ops(ptr noundef nonnull @cls_rsvp6_ops) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsvp_classify(ptr noundef %skb, ptr noundef %tp, ptr noundef %res) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %root = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 1
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %root, align 4
  %call = tail call i32 @rcu_read_lock_bh_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b327 = load i1, ptr @rsvp_classify.__warned, align 1
  br i1 %.b327, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rsvp_classify.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 130, ptr noundef nonnull @.str.1) #8
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %entry.do.end7_crit_edge
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %2 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %4 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %5 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 %conv.i.i.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %add.i = add i32 %sub.ptr.sub.i.i, 40
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %8 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len.i.i.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %10 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i.i = sub i32 %9, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %sub.i.i.i)
  %cmp.not.i.i = icmp ugt i32 %add.i, %sub.i.i.i
  br i1 %cmp.not.i.i, label %if.end.i.i, label %do.end7.if.end12_crit_edge, !prof !111

do.end7.if.end12_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.end.i.i:                                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %add.i)
  %cmp3.i.i = icmp ult i32 %9, %add.i
  br i1 %cmp3.i.i, label %if.end.i.i.cleanup249_crit_edge, label %pskb_network_may_pull.exit, !prof !111

if.end.i.i.cleanup249_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup249

pskb_network_may_pull.exit:                       ; preds = %if.end.i.i
  %sub.i.i = sub i32 %add.i, %sub.i.i.i
  %call13.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i) #8
  %cmp14.i.i.not = icmp eq ptr %call13.i.i, null
  br i1 %cmp14.i.i.not, label %pskb_network_may_pull.exit.cleanup249_crit_edge, label %pskb_network_may_pull.exit.if.end12_crit_edge

pskb_network_may_pull.exit.if.end12_crit_edge:    ; preds = %pskb_network_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

pskb_network_may_pull.exit.cleanup249_crit_edge:  ; preds = %pskb_network_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup249

if.end12:                                         ; preds = %pskb_network_may_pull.exit.if.end12_crit_edge, %do.end7.if.end12_crit_edge
  %12 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %head.i.i.i, align 8
  %14 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i = zext i16 %15 to i32
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 %conv.i.i
  br label %restart

restart:                                          ; preds = %if.end145, %if.end12
  %nhptr.0 = phi ptr [ %add.ptr.i.i, %if.end12 ], [ %add.ptr151, %if.end145 ]
  %tunnelid.0 = phi i8 [ 0, %if.end12 ], [ %conv147, %if.end145 ]
  %retval.0 = phi i32 [ undef, %if.end12 ], [ %retval.3, %if.end145 ]
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %nhptr.0, i32 0, i32 5
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %nhptr.0, i32 0, i32 6
  %nexthdr = getelementptr inbounds %struct.ipv6hdr, ptr %nhptr.0, i32 0, i32 3
  %16 = ptrtoint ptr %nexthdr to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %nexthdr, align 2
  %add.ptr = getelementptr i8, ptr %nhptr.0, i32 40
  %arrayidx.i = getelementptr %struct.ipv6hdr, ptr %nhptr.0, i32 0, i32 6, i32 0, i32 0, i32 3
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i, align 4
  %shr.i = lshr i32 %19, 16
  %xor.i = xor i32 %shr.i, %19
  %shr1.i = lshr i32 %xor.i, 8
  %xor2.i = xor i32 %shr1.i, %xor.i
  %xor2.masked.i = and i32 %xor2.i, 255
  %xor3.masked10.i = xor i8 %17, %tunnelid.0
  %xor3.masked.i = zext i8 %xor3.masked10.i to i32
  %and.i = xor i32 %xor2.masked.i, %xor3.masked.i
  %arrayidx.i329 = getelementptr %struct.ipv6hdr, ptr %nhptr.0, i32 0, i32 5, i32 0, i32 0, i32 3
  %20 = ptrtoint ptr %arrayidx.i329 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i329, align 4
  %shr.i330 = lshr i32 %21, 16
  %xor.i331 = xor i32 %shr.i330, %21
  %shr1.i332 = lshr i32 %xor.i331, 8
  %xor2.i333 = xor i32 %shr1.i332, %xor.i331
  %shr3.i = lshr i32 %xor2.i333, 4
  %xor4.i = xor i32 %shr3.i, %xor2.i333
  %and.i334 = and i32 %xor4.i, 15
  %arrayidx22 = getelementptr %struct.rsvp_head, ptr %1, i32 0, i32 3, i32 %and.i
  %22 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %arrayidx22, align 4
  %call24 = tail call i32 @rcu_read_lock_bh_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %land.lhs.true26, label %restart.do.end34_crit_edge

restart.do.end34_crit_edge:                       ; preds = %restart
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end34

land.lhs.true26:                                  ; preds = %restart
  %call27 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %land.lhs.true26.do.end34_crit_edge, label %land.lhs.true29

land.lhs.true26.do.end34_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end34

land.lhs.true29:                                  ; preds = %land.lhs.true26
  %.b315326 = load i1, ptr @rsvp_classify.__warned.2, align 1
  br i1 %.b315326, label %land.lhs.true29.do.end34_crit_edge, label %if.then31

land.lhs.true29.do.end34_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end34

if.then31:                                        ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rsvp_classify.__warned.2, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 170, ptr noundef nonnull @.str.1) #8
  br label %do.end34

do.end34:                                         ; preds = %if.then31, %land.lhs.true29.do.end34_crit_edge, %land.lhs.true26.do.end34_crit_edge, %restart.do.end34_crit_edge
  %tobool36.not354 = icmp eq ptr %23, null
  br i1 %tobool36.not354, label %do.end34.cleanup249_crit_edge, label %for.body.lr.ph

do.end34.cleanup249_crit_edge:                    ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup249

for.body.lr.ph:                                   ; preds = %do.end34
  %arrayidx57 = getelementptr %struct.ipv6hdr, ptr %nhptr.0, i32 0, i32 6, i32 0, i32 0, i32 1
  %arrayidx63 = getelementptr %struct.ipv6hdr, ptr %nhptr.0, i32 0, i32 6, i32 0, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %do.end246.for.body_crit_edge, %for.body.lr.ph
  %s.0355 = phi ptr [ %23, %for.body.lr.ph ], [ %107, %do.end246.for.body_crit_edge ]
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i, align 4
  %dst38 = getelementptr inbounds %struct.rsvp_session, ptr %s.0355, i32 0, i32 1
  %arrayidx39 = getelementptr %struct.rsvp_session, ptr %s.0355, i32 0, i32 1, i32 3
  %26 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx39, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp = icmp eq i32 %25, %27
  br i1 %cmp, label %land.lhs.true40, label %for.body.for.inc229_crit_edge

for.body.for.inc229_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc229

land.lhs.true40:                                  ; preds = %for.body
  %protocol41 = getelementptr inbounds %struct.rsvp_session, ptr %s.0355, i32 0, i32 3
  %28 = ptrtoint ptr %protocol41 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %protocol41, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %29)
  %cmp43 = icmp eq i8 %17, %29
  br i1 %cmp43, label %land.lhs.true45, label %land.lhs.true40.for.inc229_crit_edge

land.lhs.true40.for.inc229_crit_edge:             ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc229

land.lhs.true45:                                  ; preds = %land.lhs.true40
  %dpi = getelementptr inbounds %struct.rsvp_session, ptr %s.0355, i32 0, i32 2
  %mask = getelementptr inbounds %struct.rsvp_session, ptr %s.0355, i32 0, i32 2, i32 1
  %30 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mask, align 4
  %offset = getelementptr inbounds %struct.rsvp_session, ptr %s.0355, i32 0, i32 2, i32 2
  %32 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %offset, align 4
  %add.ptr47 = getelementptr i8, ptr %add.ptr, i32 %33
  %34 = ptrtoint ptr %add.ptr47 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %add.ptr47, align 4
  %36 = ptrtoint ptr %dpi to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dpi, align 4
  %xor = xor i32 %37, %35
  %and = and i32 %xor, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool49.not = icmp eq i32 %and, 0
  br i1 %tobool49.not, label %land.lhs.true50, label %land.lhs.true45.for.inc229_crit_edge

land.lhs.true45.for.inc229_crit_edge:             ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc229

land.lhs.true50:                                  ; preds = %land.lhs.true45
  %38 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %daddr, align 4
  %40 = ptrtoint ptr %dst38 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dst38, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %41)
  %cmp54 = icmp eq i32 %39, %41
  br i1 %cmp54, label %land.lhs.true56, label %land.lhs.true50.for.inc229_crit_edge

land.lhs.true50.for.inc229_crit_edge:             ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc229

land.lhs.true56:                                  ; preds = %land.lhs.true50
  %42 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx57, align 4
  %arrayidx59 = getelementptr %struct.rsvp_session, ptr %s.0355, i32 0, i32 1, i32 1
  %44 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx59, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %45)
  %cmp60 = icmp eq i32 %43, %45
  br i1 %cmp60, label %land.lhs.true62, label %land.lhs.true56.for.inc229_crit_edge

land.lhs.true56.for.inc229_crit_edge:             ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc229

land.lhs.true62:                                  ; preds = %land.lhs.true56
  %46 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx63, align 4
  %arrayidx65 = getelementptr %struct.rsvp_session, ptr %s.0355, i32 0, i32 1, i32 2
  %48 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx65, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %49)
  %cmp66 = icmp eq i32 %47, %49
  br i1 %cmp66, label %land.lhs.true68, label %land.lhs.true62.for.inc229_crit_edge

land.lhs.true62.for.inc229_crit_edge:             ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc229

land.lhs.true68:                                  ; preds = %land.lhs.true62
  %tunnelid70 = getelementptr inbounds %struct.rsvp_session, ptr %s.0355, i32 0, i32 4
  %50 = ptrtoint ptr %tunnelid70 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %tunnelid70, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %tunnelid.0, i8 %51)
  %cmp72 = icmp eq i8 %tunnelid.0, %51
  br i1 %cmp72, label %if.then74, label %land.lhs.true68.for.inc229_crit_edge

land.lhs.true68.for.inc229_crit_edge:             ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc229

if.then74:                                        ; preds = %land.lhs.true68
  %arrayidx80 = getelementptr %struct.rsvp_session, ptr %s.0355, i32 0, i32 5, i32 %and.i334
  %52 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile ptr, ptr %arrayidx80, align 4
  %call82 = tail call i32 @rcu_read_lock_bh_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %land.lhs.true84, label %if.then74.do.end92_crit_edge

if.then74.do.end92_crit_edge:                     ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end92

land.lhs.true84:                                  ; preds = %if.then74
  %call85 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %land.lhs.true84.do.end92_crit_edge, label %land.lhs.true87

land.lhs.true84.do.end92_crit_edge:               ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end92

land.lhs.true87:                                  ; preds = %land.lhs.true84
  %.b316325 = load i1, ptr @rsvp_classify.__warned.3, align 1
  br i1 %.b316325, label %land.lhs.true87.do.end92_crit_edge, label %if.then89

land.lhs.true87.do.end92_crit_edge:               ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end92

if.then89:                                        ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rsvp_classify.__warned.3, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 183, ptr noundef nonnull @.str.1) #8
  br label %do.end92

do.end92:                                         ; preds = %if.then89, %land.lhs.true87.do.end92_crit_edge, %land.lhs.true84.do.end92_crit_edge, %if.then74.do.end92_crit_edge
  %tobool95.not357 = icmp eq ptr %53, null
  br i1 %tobool95.not357, label %do.end92.for.end_crit_edge, label %for.body96.lr.ph

do.end92.for.end_crit_edge:                       ; preds = %do.end92
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body96.lr.ph:                                 ; preds = %do.end92
  %arrayidx119 = getelementptr %struct.ipv6hdr, ptr %nhptr.0, i32 0, i32 5, i32 0, i32 0, i32 1
  %arrayidx125 = getelementptr %struct.ipv6hdr, ptr %nhptr.0, i32 0, i32 5, i32 0, i32 0, i32 2
  br label %for.body96

for.body96:                                       ; preds = %do.end168.for.body96_crit_edge, %for.body96.lr.ph
  %retval.1360 = phi i32 [ %retval.0, %for.body96.lr.ph ], [ %retval.4, %do.end168.for.body96_crit_edge ]
  %f.0358 = phi ptr [ %53, %for.body96.lr.ph ], [ %92, %do.end168.for.body96_crit_edge ]
  %54 = ptrtoint ptr %arrayidx.i329 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx.i329, align 4
  %src98 = getelementptr inbounds %struct.rsvp_filter, ptr %f.0358, i32 0, i32 1
  %arrayidx99 = getelementptr %struct.rsvp_filter, ptr %f.0358, i32 0, i32 1, i32 3
  %56 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx99, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %57)
  %cmp100 = icmp eq i32 %55, %57
  br i1 %cmp100, label %land.lhs.true102, label %for.body96.for.inc_crit_edge

for.body96.for.inc_crit_edge:                     ; preds = %for.body96
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true102:                                 ; preds = %for.body96
  %spi = getelementptr inbounds %struct.rsvp_filter, ptr %f.0358, i32 0, i32 2
  %mask103 = getelementptr inbounds %struct.rsvp_filter, ptr %f.0358, i32 0, i32 2, i32 1
  %58 = ptrtoint ptr %mask103 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %mask103, align 4
  %offset105 = getelementptr inbounds %struct.rsvp_filter, ptr %f.0358, i32 0, i32 2, i32 2
  %60 = ptrtoint ptr %offset105 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %offset105, align 4
  %add.ptr106 = getelementptr i8, ptr %add.ptr, i32 %61
  %62 = ptrtoint ptr %add.ptr106 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %add.ptr106, align 4
  %64 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %spi, align 4
  %xor109 = xor i32 %65, %63
  %and110 = and i32 %xor109, %59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110)
  %tobool111.not = icmp eq i32 %and110, 0
  br i1 %tobool111.not, label %land.lhs.true112, label %land.lhs.true102.for.inc_crit_edge

land.lhs.true102.for.inc_crit_edge:               ; preds = %land.lhs.true102
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true112:                                 ; preds = %land.lhs.true102
  %66 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %saddr, align 4
  %68 = ptrtoint ptr %src98 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %src98, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %69)
  %cmp116 = icmp eq i32 %67, %69
  br i1 %cmp116, label %land.lhs.true118, label %land.lhs.true112.for.inc_crit_edge

land.lhs.true112.for.inc_crit_edge:               ; preds = %land.lhs.true112
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true118:                                 ; preds = %land.lhs.true112
  %70 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx119, align 4
  %arrayidx121 = getelementptr %struct.rsvp_filter, ptr %f.0358, i32 0, i32 1, i32 1
  %72 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx121, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %73)
  %cmp122 = icmp eq i32 %71, %73
  br i1 %cmp122, label %land.lhs.true124, label %land.lhs.true118.for.inc_crit_edge

land.lhs.true118.for.inc_crit_edge:               ; preds = %land.lhs.true118
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true124:                                 ; preds = %land.lhs.true118
  %74 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx125, align 4
  %arrayidx127 = getelementptr %struct.rsvp_filter, ptr %f.0358, i32 0, i32 1, i32 2
  %76 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx127, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %77)
  %cmp128 = icmp eq i32 %75, %77
  br i1 %cmp128, label %if.then130, label %land.lhs.true124.for.inc_crit_edge

land.lhs.true124.for.inc_crit_edge:               ; preds = %land.lhs.true124
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then130:                                       ; preds = %land.lhs.true124
  %res131 = getelementptr inbounds %struct.rsvp_filter, ptr %f.0358, i32 0, i32 4
  %78 = ptrtoint ptr %res131 to i32
  call void @__asan_loadN_noabort(i32 %78, i32 8)
  %79 = load i64, ptr %res131, align 4
  %80 = ptrtoint ptr %res to i32
  call void @__asan_storeN_noabort(i32 %80, i32 8)
  store i64 %79, ptr %res, align 4
  %actions.i = getelementptr inbounds %struct.rsvp_filter, ptr %f.0358, i32 0, i32 5, i32 2
  %81 = ptrtoint ptr %actions.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %actions.i, align 4
  %nr_actions.i = getelementptr inbounds %struct.rsvp_filter, ptr %f.0358, i32 0, i32 5, i32 1
  %83 = ptrtoint ptr %nr_actions.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %nr_actions.i, align 4
  %call.i = tail call i32 @tcf_action_exec(ptr noundef %skb, ptr noundef %82, i32 noundef %84, ptr noundef %res) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp133 = icmp slt i32 %call.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp136.not = icmp ne i32 %call.i, 0
  %. = zext i1 %cmp136.not to i32
  %cleanup.dest.slot.0 = select i1 %cmp133, i32 20, i32 %.
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %85 = icmp slt i32 %call.i, 1
  %retval.2 = select i1 %85, i32 %retval.1360, i32 %call.i
  %86 = zext i32 %cleanup.dest.slot.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %86, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cleanup.dest.slot.0, label %if.then130.cleanup249_crit_edge [
    i32 0, label %if.then130.matched_crit_edge
    i32 20, label %if.then130.for.inc_crit_edge
  ]

if.then130.for.inc_crit_edge:                     ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then130.matched_crit_edge:                     ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #10
  br label %matched

if.then130.cleanup249_crit_edge:                  ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup249

matched:                                          ; preds = %for.body191.matched_crit_edge, %if.then130.matched_crit_edge
  %f.1 = phi ptr [ %f.2362, %for.body191.matched_crit_edge ], [ %f.0358, %if.then130.matched_crit_edge ]
  %retval.3 = phi i32 [ %retval.6, %for.body191.matched_crit_edge ], [ %retval.2, %if.then130.matched_crit_edge ]
  %tunnelhdr = getelementptr inbounds %struct.rsvp_filter, ptr %f.1, i32 0, i32 3
  %87 = ptrtoint ptr %tunnelhdr to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %tunnelhdr, align 4
  %cmp142 = icmp eq i8 %88, 0
  br i1 %cmp142, label %matched.cleanup249_crit_edge, label %if.end145

matched.cleanup249_crit_edge:                     ; preds = %matched
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup249

if.end145:                                        ; preds = %matched
  call void @__sanitizer_cov_trace_pc() #10
  %conv141 = zext i8 %88 to i32
  %classid = getelementptr inbounds %struct.rsvp_filter, ptr %f.1, i32 0, i32 4, i32 0, i32 0, i32 1
  %89 = ptrtoint ptr %classid to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %classid, align 4
  %conv147 = trunc i32 %90 to i8
  %add.ptr151 = getelementptr i8, ptr %nhptr.0, i32 %conv141
  br label %restart

for.inc:                                          ; preds = %if.then130.for.inc_crit_edge, %land.lhs.true124.for.inc_crit_edge, %land.lhs.true118.for.inc_crit_edge, %land.lhs.true112.for.inc_crit_edge, %land.lhs.true102.for.inc_crit_edge, %for.body96.for.inc_crit_edge
  %retval.4 = phi i32 [ %retval.1360, %land.lhs.true102.for.inc_crit_edge ], [ %retval.2, %if.then130.for.inc_crit_edge ], [ %retval.1360, %land.lhs.true124.for.inc_crit_edge ], [ %retval.1360, %land.lhs.true118.for.inc_crit_edge ], [ %retval.1360, %land.lhs.true112.for.inc_crit_edge ], [ %retval.1360, %for.body96.for.inc_crit_edge ]
  %91 = ptrtoint ptr %f.0358 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile ptr, ptr %f.0358, align 4
  %call158 = tail call i32 @rcu_read_lock_bh_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call158)
  %tobool159.not = icmp eq i32 %call158, 0
  br i1 %tobool159.not, label %land.lhs.true160, label %for.inc.do.end168_crit_edge

for.inc.do.end168_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end168

land.lhs.true160:                                 ; preds = %for.inc
  %call161 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call161)
  %tobool162.not = icmp eq i32 %call161, 0
  br i1 %tobool162.not, label %land.lhs.true160.do.end168_crit_edge, label %land.lhs.true163

land.lhs.true160.do.end168_crit_edge:             ; preds = %land.lhs.true160
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end168

land.lhs.true163:                                 ; preds = %land.lhs.true160
  %.b317324 = load i1, ptr @rsvp_classify.__warned.4, align 1
  br i1 %.b317324, label %land.lhs.true163.do.end168_crit_edge, label %if.then165

land.lhs.true163.do.end168_crit_edge:             ; preds = %land.lhs.true163
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end168

if.then165:                                       ; preds = %land.lhs.true163
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rsvp_classify.__warned.4, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 184, ptr noundef nonnull @.str.1) #8
  br label %do.end168

do.end168:                                        ; preds = %if.then165, %land.lhs.true163.do.end168_crit_edge, %land.lhs.true160.do.end168_crit_edge, %for.inc.do.end168_crit_edge
  %tobool95.not = icmp eq ptr %92, null
  br i1 %tobool95.not, label %do.end168.for.end_crit_edge, label %do.end168.for.body96_crit_edge

do.end168.for.body96_crit_edge:                   ; preds = %do.end168
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body96

do.end168.for.end_crit_edge:                      ; preds = %do.end168
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %do.end168.for.end_crit_edge, %do.end92.for.end_crit_edge
  %retval.1.lcssa = phi i32 [ %retval.0, %do.end92.for.end_crit_edge ], [ %retval.4, %do.end168.for.end_crit_edge ]
  %arrayidx175 = getelementptr %struct.rsvp_session, ptr %s.0355, i32 0, i32 5, i32 16
  %93 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile ptr, ptr %arrayidx175, align 4
  %call177 = tail call i32 @rcu_read_lock_bh_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call177)
  %tobool178.not = icmp eq i32 %call177, 0
  br i1 %tobool178.not, label %land.lhs.true179, label %for.end.do.end187_crit_edge

for.end.do.end187_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end187

land.lhs.true179:                                 ; preds = %for.end
  %call180 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call180)
  %tobool181.not = icmp eq i32 %call180, 0
  br i1 %tobool181.not, label %land.lhs.true179.do.end187_crit_edge, label %land.lhs.true182

land.lhs.true179.do.end187_crit_edge:             ; preds = %land.lhs.true179
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end187

land.lhs.true182:                                 ; preds = %land.lhs.true179
  %.b318323 = load i1, ptr @rsvp_classify.__warned.5, align 1
  br i1 %.b318323, label %land.lhs.true182.do.end187_crit_edge, label %if.then184

land.lhs.true182.do.end187_crit_edge:             ; preds = %land.lhs.true182
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end187

if.then184:                                       ; preds = %land.lhs.true182
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rsvp_classify.__warned.5, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 208, ptr noundef nonnull @.str.1) #8
  br label %do.end187

do.end187:                                        ; preds = %if.then184, %land.lhs.true182.do.end187_crit_edge, %land.lhs.true179.do.end187_crit_edge, %for.end.do.end187_crit_edge
  %tobool190.not361 = icmp eq ptr %94, null
  br i1 %tobool190.not361, label %do.end187.cleanup249_crit_edge, label %do.end187.for.body191_crit_edge

do.end187.for.body191_crit_edge:                  ; preds = %do.end187
  br label %for.body191

do.end187.cleanup249_crit_edge:                   ; preds = %do.end187
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup249

for.body191:                                      ; preds = %do.end225.for.body191_crit_edge, %do.end187.for.body191_crit_edge
  %retval.5363 = phi i32 [ %retval.6, %do.end225.for.body191_crit_edge ], [ %retval.1.lcssa, %do.end187.for.body191_crit_edge ]
  %f.2362 = phi ptr [ %105, %do.end225.for.body191_crit_edge ], [ %94, %do.end187.for.body191_crit_edge ]
  %res192 = getelementptr inbounds %struct.rsvp_filter, ptr %f.2362, i32 0, i32 4
  %95 = ptrtoint ptr %res192 to i32
  call void @__asan_loadN_noabort(i32 %95, i32 8)
  %96 = load i64, ptr %res192, align 4
  %97 = ptrtoint ptr %res to i32
  call void @__asan_storeN_noabort(i32 %97, i32 8)
  store i64 %96, ptr %res, align 4
  %actions.i335 = getelementptr inbounds %struct.rsvp_filter, ptr %f.2362, i32 0, i32 5, i32 2
  %98 = ptrtoint ptr %actions.i335 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %actions.i335, align 4
  %nr_actions.i336 = getelementptr inbounds %struct.rsvp_filter, ptr %f.2362, i32 0, i32 5, i32 1
  %100 = ptrtoint ptr %nr_actions.i336 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %nr_actions.i336, align 4
  %call.i337 = tail call i32 @tcf_action_exec(ptr noundef %skb, ptr noundef %99, i32 noundef %101, ptr noundef %res) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i337)
  %cmp196 = icmp slt i32 %call.i337, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i337)
  %cmp200.not = icmp ne i32 %call.i337, 0
  %.328 = zext i1 %cmp200.not to i32
  %cleanup.dest.slot.1 = select i1 %cmp196, i32 32, i32 %.328
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i337)
  %102 = icmp slt i32 %call.i337, 1
  %retval.6 = select i1 %102, i32 %retval.5363, i32 %call.i337
  %103 = zext i32 %cleanup.dest.slot.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %103, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %cleanup.dest.slot.1, label %for.body191.cleanup249_crit_edge [
    i32 0, label %for.body191.matched_crit_edge
    i32 32, label %for.inc208
  ]

for.body191.matched_crit_edge:                    ; preds = %for.body191
  call void @__sanitizer_cov_trace_pc() #10
  br label %matched

for.body191.cleanup249_crit_edge:                 ; preds = %for.body191
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup249

for.inc208:                                       ; preds = %for.body191
  %104 = ptrtoint ptr %f.2362 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile ptr, ptr %f.2362, align 4
  %call215 = tail call i32 @rcu_read_lock_bh_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call215)
  %tobool216.not = icmp eq i32 %call215, 0
  br i1 %tobool216.not, label %land.lhs.true217, label %for.inc208.do.end225_crit_edge

for.inc208.do.end225_crit_edge:                   ; preds = %for.inc208
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end225

land.lhs.true217:                                 ; preds = %for.inc208
  %call218 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call218)
  %tobool219.not = icmp eq i32 %call218, 0
  br i1 %tobool219.not, label %land.lhs.true217.do.end225_crit_edge, label %land.lhs.true220

land.lhs.true217.do.end225_crit_edge:             ; preds = %land.lhs.true217
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end225

land.lhs.true220:                                 ; preds = %land.lhs.true217
  %.b319322 = load i1, ptr @rsvp_classify.__warned.6, align 1
  br i1 %.b319322, label %land.lhs.true220.do.end225_crit_edge, label %if.then222

land.lhs.true220.do.end225_crit_edge:             ; preds = %land.lhs.true220
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end225

if.then222:                                       ; preds = %land.lhs.true220
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rsvp_classify.__warned.6, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 209, ptr noundef nonnull @.str.1) #8
  br label %do.end225

do.end225:                                        ; preds = %if.then222, %land.lhs.true220.do.end225_crit_edge, %land.lhs.true217.do.end225_crit_edge, %for.inc208.do.end225_crit_edge
  %tobool190.not = icmp eq ptr %105, null
  br i1 %tobool190.not, label %do.end225.cleanup249_crit_edge, label %do.end225.for.body191_crit_edge

do.end225.for.body191_crit_edge:                  ; preds = %do.end225
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body191

do.end225.cleanup249_crit_edge:                   ; preds = %do.end225
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup249

for.inc229:                                       ; preds = %land.lhs.true68.for.inc229_crit_edge, %land.lhs.true62.for.inc229_crit_edge, %land.lhs.true56.for.inc229_crit_edge, %land.lhs.true50.for.inc229_crit_edge, %land.lhs.true45.for.inc229_crit_edge, %land.lhs.true40.for.inc229_crit_edge, %for.body.for.inc229_crit_edge
  %106 = ptrtoint ptr %s.0355 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load volatile ptr, ptr %s.0355, align 4
  %call236 = tail call i32 @rcu_read_lock_bh_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call236)
  %tobool237.not = icmp eq i32 %call236, 0
  br i1 %tobool237.not, label %land.lhs.true238, label %for.inc229.do.end246_crit_edge

for.inc229.do.end246_crit_edge:                   ; preds = %for.inc229
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end246

land.lhs.true238:                                 ; preds = %for.inc229
  %call239 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call239)
  %tobool240.not = icmp eq i32 %call239, 0
  br i1 %tobool240.not, label %land.lhs.true238.do.end246_crit_edge, label %land.lhs.true241

land.lhs.true238.do.end246_crit_edge:             ; preds = %land.lhs.true238
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end246

land.lhs.true241:                                 ; preds = %land.lhs.true238
  %.b320321 = load i1, ptr @rsvp_classify.__warned.7, align 1
  br i1 %.b320321, label %land.lhs.true241.do.end246_crit_edge, label %if.then243

land.lhs.true241.do.end246_crit_edge:             ; preds = %land.lhs.true241
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end246

if.then243:                                       ; preds = %land.lhs.true241
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rsvp_classify.__warned.7, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 171, ptr noundef nonnull @.str.1) #8
  br label %do.end246

do.end246:                                        ; preds = %if.then243, %land.lhs.true241.do.end246_crit_edge, %land.lhs.true238.do.end246_crit_edge, %for.inc229.do.end246_crit_edge
  %tobool36.not = icmp eq ptr %107, null
  br i1 %tobool36.not, label %do.end246.cleanup249_crit_edge, label %do.end246.for.body_crit_edge

do.end246.for.body_crit_edge:                     ; preds = %do.end246
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

do.end246.cleanup249_crit_edge:                   ; preds = %do.end246
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup249

cleanup249:                                       ; preds = %do.end246.cleanup249_crit_edge, %do.end225.cleanup249_crit_edge, %for.body191.cleanup249_crit_edge, %do.end187.cleanup249_crit_edge, %matched.cleanup249_crit_edge, %if.then130.cleanup249_crit_edge, %do.end34.cleanup249_crit_edge, %pskb_network_may_pull.exit.cleanup249_crit_edge, %if.end.i.i.cleanup249_crit_edge
  %retval.7 = phi i32 [ -1, %pskb_network_may_pull.exit.cleanup249_crit_edge ], [ -1, %if.end.i.i.cleanup249_crit_edge ], [ %retval.6, %for.body191.cleanup249_crit_edge ], [ -1, %do.end225.cleanup249_crit_edge ], [ %retval.2, %if.then130.cleanup249_crit_edge ], [ -1, %do.end246.cleanup249_crit_edge ], [ -1, %do.end187.cleanup249_crit_edge ], [ -1, %do.end34.cleanup249_crit_edge ], [ 0, %matched.cleanup249_crit_edge ]
  ret i32 %retval.7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsvp_init(ptr noundef %tp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1072) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !112
  %root22 = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 1
  %1 = ptrtoint ptr %root22 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %call7.i.i, ptr %root22, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -105, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rsvp_destroy(ptr nocapture noundef readonly %tp, i1 noundef zeroext %rtnl_held, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #8
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b144 = load i1, ptr @rsvp_destroy.__warned, align 1
  br i1 %.b144, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rsvp_destroy.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 314, ptr noundef nonnull @.str.8) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %root = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 1
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %do.end.while.cond.preheader_crit_edge

do.end.while.cond.preheader_crit_edge:            ; preds = %do.end
  br label %while.cond.preheader

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond.preheader:                             ; preds = %while.end105.while.cond.preheader_crit_edge, %do.end.while.cond.preheader_crit_edge
  %h1.0146 = phi i32 [ %inc107, %while.end105.while.cond.preheader_crit_edge ], [ 0, %do.end.while.cond.preheader_crit_edge ]
  %arrayidx = getelementptr %struct.rsvp_head, ptr %1, i32 0, i32 3, i32 %h1.0146
  br label %while.cond

while.cond:                                       ; preds = %do.end101, %while.cond.preheader
  %call8 = tail call zeroext i1 @lockdep_rtnl_is_held() #8
  br i1 %call8, label %while.cond.do.end17_crit_edge, label %land.lhs.true9

while.cond.do.end17_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end17

land.lhs.true9:                                   ; preds = %while.cond
  %call10 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true9.do.end17_crit_edge, label %land.lhs.true12

land.lhs.true9.do.end17_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end17

land.lhs.true12:                                  ; preds = %land.lhs.true9
  %.b140143 = load i1, ptr @rsvp_destroy.__warned.9, align 1
  br i1 %.b140143, label %land.lhs.true12.do.end17_crit_edge, label %if.then14

land.lhs.true12.do.end17_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end17

if.then14:                                        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rsvp_destroy.__warned.9, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 323, ptr noundef nonnull @.str.8) #8
  br label %do.end17

do.end17:                                         ; preds = %if.then14, %land.lhs.true12.do.end17_crit_edge, %land.lhs.true9.do.end17_crit_edge, %while.cond.do.end17_crit_edge
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %cmp19.not = icmp eq ptr %3, null
  br i1 %cmp19.not, label %while.end105, label %do.body25

do.body25:                                        ; preds = %do.end17
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %5, ptr %arrayidx, align 4
  br label %while.cond37.preheader

while.cond37.preheader:                           ; preds = %while.end.while.cond37.preheader_crit_edge, %do.body25
  %h2.0145 = phi i32 [ 0, %do.body25 ], [ %inc, %while.end.while.cond37.preheader_crit_edge ]
  %arrayidx51 = getelementptr %struct.rsvp_session, ptr %3, i32 0, i32 5, i32 %h2.0145
  br label %while.cond37

while.cond37:                                     ; preds = %do.body54, %while.cond37.preheader
  %call39 = tail call zeroext i1 @lockdep_rtnl_is_held() #8
  br i1 %call39, label %while.cond37.do.end48_crit_edge, label %land.lhs.true40

while.cond37.do.end48_crit_edge:                  ; preds = %while.cond37
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end48

land.lhs.true40:                                  ; preds = %while.cond37
  %call41 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %land.lhs.true40.do.end48_crit_edge, label %land.lhs.true43

land.lhs.true40.do.end48_crit_edge:               ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end48

land.lhs.true43:                                  ; preds = %land.lhs.true40
  %.b141142 = load i1, ptr @rsvp_destroy.__warned.10, align 1
  br i1 %.b141142, label %land.lhs.true43.do.end48_crit_edge, label %if.then45

land.lhs.true43.do.end48_crit_edge:               ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end48

if.then45:                                        ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rsvp_destroy.__warned.10, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 329, ptr noundef nonnull @.str.8) #8
  br label %do.end48

do.end48:                                         ; preds = %if.then45, %land.lhs.true43.do.end48_crit_edge, %land.lhs.true40.do.end48_crit_edge, %while.cond37.do.end48_crit_edge
  %7 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx51, align 4
  %cmp52.not = icmp eq ptr %8, null
  br i1 %cmp52.not, label %while.end, label %do.body54

do.body54:                                        ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !113
  %11 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %10, ptr %arrayidx51, align 4
  tail call fastcc void @rsvp_delete_filter(ptr noundef %tp, ptr noundef nonnull %8)
  br label %while.cond37

while.end:                                        ; preds = %do.end48
  %inc = add nuw nsw i32 %h2.0145, 1
  %exitcond.not = icmp eq i32 %inc, 17
  br i1 %exitcond.not, label %do.end101, label %while.end.while.cond37.preheader_crit_edge

while.end.while.cond37.preheader_crit_edge:       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond37.preheader

do.end101:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %rcu = getelementptr inbounds %struct.rsvp_session, ptr %3, i32 0, i32 6
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 104 to ptr)) #8
  br label %while.cond

while.end105:                                     ; preds = %do.end17
  %inc107 = add nuw nsw i32 %h1.0146, 1
  %exitcond147.not = icmp eq i32 %inc107, 256
  br i1 %exitcond147.not, label %do.end115, label %while.end105.while.cond.preheader_crit_edge

while.end105.while.cond.preheader_crit_edge:      ; preds = %while.end105
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.preheader

do.end115:                                        ; preds = %while.end105
  call void @__sanitizer_cov_trace_pc() #10
  %rcu116 = getelementptr inbounds %struct.rsvp_head, ptr %1, i32 0, i32 4
  tail call void @kvfree_call_rcu(ptr noundef %rcu116, ptr noundef nonnull inttoptr (i32 1064 to ptr)) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end115, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @rsvp_get(ptr nocapture noundef readonly %tp, i32 noundef %handle) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #8
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b88 = load i1, ptr @rsvp_get.__warned, align 1
  br i1 %.b88, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rsvp_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 249, ptr noundef nonnull @.str.8) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %root = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 1
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root, align 4
  %and = and i32 %handle, 255
  %shr = lshr i32 %handle, 8
  %and4 = and i32 %shr, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %and4)
  %cmp = icmp ugt i32 %and4, 16
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %do.body7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body7:                                         ; preds = %do.end
  %call8 = tail call zeroext i1 @lockdep_rtnl_is_held() #8
  br i1 %call8, label %do.body7.do.end17_crit_edge, label %land.lhs.true9

do.body7.do.end17_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end17

land.lhs.true9:                                   ; preds = %do.body7
  %call10 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true9.do.end17_crit_edge, label %land.lhs.true12

land.lhs.true9.do.end17_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end17

land.lhs.true12:                                  ; preds = %land.lhs.true9
  %.b8087 = load i1, ptr @rsvp_get.__warned.11, align 1
  br i1 %.b8087, label %land.lhs.true12.do.end17_crit_edge, label %if.then14

land.lhs.true12.do.end17_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end17

if.then14:                                        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rsvp_get.__warned.11, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 258, ptr noundef nonnull @.str.8) #8
  br label %do.end17

do.end17:                                         ; preds = %if.then14, %land.lhs.true12.do.end17_crit_edge, %land.lhs.true9.do.end17_crit_edge, %do.body7.do.end17_crit_edge
  %arrayidx = getelementptr %struct.rsvp_head, ptr %1, i32 0, i32 3, i32 %and
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %s.094 = load ptr, ptr %arrayidx, align 4
  %tobool19.not95 = icmp eq ptr %s.094, null
  br i1 %tobool19.not95, label %do.end17.cleanup_crit_edge, label %do.end17.do.body20_crit_edge

do.end17.do.body20_crit_edge:                     ; preds = %do.end17
  br label %do.body20

do.end17.cleanup_crit_edge:                       ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body20:                                        ; preds = %do.end64.do.body20_crit_edge, %do.end17.do.body20_crit_edge
  %s.096 = phi ptr [ %s.0, %do.end64.do.body20_crit_edge ], [ %s.094, %do.end17.do.body20_crit_edge ]
  %call21 = tail call zeroext i1 @lockdep_rtnl_is_held() #8
  br i1 %call21, label %do.body20.do.end30_crit_edge, label %land.lhs.true22

do.body20.do.end30_crit_edge:                     ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end30

land.lhs.true22:                                  ; preds = %do.body20
  %call23 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %land.lhs.true22.do.end30_crit_edge, label %land.lhs.true25

land.lhs.true22.do.end30_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end30

land.lhs.true25:                                  ; preds = %land.lhs.true22
  %.b8186 = load i1, ptr @rsvp_get.__warned.12, align 1
  br i1 %.b8186, label %land.lhs.true25.do.end30_crit_edge, label %if.then27

land.lhs.true25.do.end30_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end30

if.then27:                                        ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rsvp_get.__warned.12, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 260, ptr noundef nonnull @.str.8) #8
  br label %do.end30

do.end30:                                         ; preds = %if.then27, %land.lhs.true25.do.end30_crit_edge, %land.lhs.true22.do.end30_crit_edge, %do.body20.do.end30_crit_edge
  %arrayidx33 = getelementptr %struct.rsvp_session, ptr %s.096, i32 0, i32 5, i32 %and4
  %3 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %3)
  %f.091 = load ptr, ptr %arrayidx33, align 4
  %tobool35.not92 = icmp eq ptr %f.091, null
  br i1 %tobool35.not92, label %do.end30.do.body54_crit_edge, label %do.end30.for.body36_crit_edge

do.end30.for.body36_crit_edge:                    ; preds = %do.end30
  br label %for.body36

do.end30.do.body54_crit_edge:                     ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body54

for.body36:                                       ; preds = %do.end51.for.body36_crit_edge, %do.end30.for.body36_crit_edge
  %f.093 = phi ptr [ %f.0, %do.end51.for.body36_crit_edge ], [ %f.091, %do.end30.for.body36_crit_edge ]
  %handle37 = getelementptr inbounds %struct.rsvp_filter, ptr %f.093, i32 0, i32 6
  %4 = ptrtoint ptr %handle37 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %handle37, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %handle)
  %cmp38 = icmp eq i32 %5, %handle
  br i1 %cmp38, label %for.body36.cleanup_crit_edge, label %do.body41

for.body36.cleanup_crit_edge:                     ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body41:                                        ; preds = %for.body36
  %call42 = tail call zeroext i1 @lockdep_rtnl_is_held() #8
  br i1 %call42, label %do.body41.do.end51_crit_edge, label %land.lhs.true43

do.body41.do.end51_crit_edge:                     ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end51

land.lhs.true43:                                  ; preds = %do.body41
  %call44 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %land.lhs.true43.do.end51_crit_edge, label %land.lhs.true46

land.lhs.true43.do.end51_crit_edge:               ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end51

land.lhs.true46:                                  ; preds = %land.lhs.true43
  %.b8285 = load i1, ptr @rsvp_get.__warned.13, align 1
  br i1 %.b8285, label %land.lhs.true46.do.end51_crit_edge, label %if.then48

land.lhs.true46.do.end51_crit_edge:               ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end51

if.then48:                                        ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rsvp_get.__warned.13, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 261, ptr noundef nonnull @.str.8) #8
  br label %do.end51

do.end51:                                         ; preds = %if.then48, %land.lhs.true46.do.end51_crit_edge, %land.lhs.true43.do.end51_crit_edge, %do.body41.do.end51_crit_edge
  %6 = ptrtoint ptr %f.093 to i32
  call void @__asan_load4_noabort(i32 %6)
  %f.0 = load ptr, ptr %f.093, align 4
  %tobool35.not = icmp eq ptr %f.0, null
  br i1 %tobool35.not, label %do.end51.do.body54_crit_edge, label %do.end51.for.body36_crit_edge

do.end51.for.body36_crit_edge:                    ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body36

do.end51.do.body54_crit_edge:                     ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body54

do.body54:                                        ; preds = %do.end51.do.body54_crit_edge, %do.end30.do.body54_crit_edge
  %call55 = tail call zeroext i1 @lockdep_rtnl_is_held() #8
  br i1 %call55, label %do.body54.do.end64_crit_edge, label %land.lhs.true56

do.body54.do.end64_crit_edge:                     ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end64

land.lhs.true56:                                  ; preds = %do.body54
  %call57 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %land.lhs.true56.do.end64_crit_edge, label %land.lhs.true59

land.lhs.true56.do.end64_crit_edge:               ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end64

land.lhs.true59:                                  ; preds = %land.lhs.true56
  %.b8384 = load i1, ptr @rsvp_get.__warned.14, align 1
  br i1 %.b8384, label %land.lhs.true59.do.end64_crit_edge, label %if.then61

land.lhs.true59.do.end64_crit_edge:               ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end64

if.then61:                                        ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rsvp_get.__warned.14, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 259, ptr noundef nonnull @.str.8) #8
  br label %do.end64

do.end64:                                         ; preds = %if.then61, %land.lhs.true59.do.end64_crit_edge, %land.lhs.true56.do.end64_crit_edge, %do.body54.do.end64_crit_edge
  %7 = ptrtoint ptr %s.096 to i32
  call void @__asan_load4_noabort(i32 %7)
  %s.0 = load ptr, ptr %s.096, align 4
  %tobool19.not = icmp eq ptr %s.0, null
  br i1 %tobool19.not, label %do.end64.cleanup_crit_edge, label %do.end64.do.body20_crit_edge

do.end64.do.body20_crit_edge:                     ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body20

do.end64.cleanup_crit_edge:                       ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %do.end64.cleanup_crit_edge, %for.body36.cleanup_crit_edge, %do.end17.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end.cleanup_crit_edge ], [ null, %do.end17.cleanup_crit_edge ], [ %f.093, %for.body36.cleanup_crit_edge ], [ null, %do.end64.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsvp_change(ptr noundef %net, ptr nocapture noundef readnone %in_skb, ptr noundef %tp, i32 noundef %base, i32 noundef %handle, ptr nocapture noundef readonly %tca, ptr nocapture noundef %arg, i32 noundef %flags, ptr noundef %extack) #2 align 64 {
entry:
  %tb = alloca [7 x ptr], align 4
  %e = alloca %struct.tcf_exts, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #8
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b550 = load i1, ptr @rsvp_change.__warned, align 1
  br i1 %.b550, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rsvp_change.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 477, ptr noundef nonnull @.str.8) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %root = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 1
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root, align 4
  %arrayidx = getelementptr ptr, ptr %tca, i32 2
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %tb) #8
  %4 = getelementptr inbounds [7 x ptr], ptr %tb, i32 0, i32 1
  %5 = getelementptr inbounds [7 x ptr], ptr %tb, i32 0, i32 2
  %6 = getelementptr inbounds [7 x ptr], ptr %tb, i32 0, i32 3
  %7 = getelementptr inbounds [7 x ptr], ptr %tb, i32 0, i32 4
  %8 = call ptr @memset(ptr %tb, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %e) #8
  %9 = getelementptr inbounds %struct.tcf_exts, ptr %e, i32 0, i32 1
  %10 = getelementptr inbounds %struct.tcf_exts, ptr %e, i32 0, i32 2
  %11 = getelementptr inbounds %struct.tcf_exts, ptr %e, i32 0, i32 3
  %12 = getelementptr inbounds %struct.tcf_exts, ptr %e, i32 0, i32 5
  %13 = getelementptr inbounds %struct.tcf_exts, ptr %e, i32 0, i32 6
  %cmp = icmp eq ptr %3, null
  %14 = call ptr @memset(ptr %e, i32 255, i32 28)
  br i1 %cmp, label %if.then4, label %if.end6

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %handle)
  %tobool5.not = icmp eq i32 %handle, 0
  %cond = select i1 %tobool5.not, i32 0, i32 -22
  br label %cleanup408

if.end6:                                          ; preds = %do.end
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 4
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %3, align 2
  %conv.i.i = zext i16 %16 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 6, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @rsvp_policy, i32 noundef 0, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp8 = icmp slt i32 %call2.i, 0
  br i1 %cmp8, label %if.end6.cleanup408_crit_edge, label %if.end10

if.end6.cleanup408_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup408

if.end10:                                         ; preds = %if.end6
  %17 = ptrtoint ptr %e to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %e, align 4
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %9, align 4
  %19 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %net, ptr %11, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %20 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3520, i32 noundef 128) #11
  %21 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call7.i.i.i.i, ptr %10, align 4
  %tobool.not.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i, label %if.end10.cleanup408_crit_edge, label %if.end14

if.end10.cleanup408_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup408

if.end14:                                         ; preds = %if.end10
  %22 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 6, ptr %12, align 4
  %23 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 5, ptr %13, align 4
  %arrayidx16 = getelementptr ptr, ptr %tca, i32 5
  %24 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx16, align 4
  %call17 = call i32 @tcf_exts_validate(ptr noundef %net, ptr noundef %tp, ptr noundef nonnull %tb, ptr noundef %25, ptr noundef nonnull %e, i32 noundef %flags, ptr noundef %extack) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.end14.errout2_crit_edge, label %if.end20

if.end14.errout2_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %errout2

if.end20:                                         ; preds = %if.end14
  %26 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arg, align 4
  %tobool21.not = icmp eq ptr %27, null
  br i1 %tobool21.not, label %if.end45, label %if.then22

if.then22:                                        ; preds = %if.end20
  %handle23 = getelementptr inbounds %struct.rsvp_filter, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %handle23 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %handle23, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %handle)
  %cmp24.not = icmp eq i32 %29, %handle
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %handle)
  %tobool26.not = icmp eq i32 %handle, 0
  %or.cond = or i1 %tobool26.not, %cmp24.not
  br i1 %or.cond, label %if.end28, label %if.then22.errout2_crit_edge

if.then22.errout2_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %errout2

if.end28:                                         ; preds = %if.then22
  %call29 = call ptr @kmemdup(ptr noundef nonnull %27, i32 noundef 136, i32 noundef 3264) #8
  %tobool30.not = icmp eq ptr %call29, null
  br i1 %tobool30.not, label %if.end28.errout2_crit_edge, label %if.end32

if.end28.errout2_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %errout2

if.end32:                                         ; preds = %if.end28
  %exts = getelementptr inbounds %struct.rsvp_filter, ptr %call29, i32 0, i32 5
  %30 = ptrtoint ptr %exts to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %exts, align 4
  %nr_actions.i551 = getelementptr inbounds %struct.rsvp_filter, ptr %call29, i32 0, i32 5, i32 1
  %31 = ptrtoint ptr %nr_actions.i551 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %nr_actions.i551, align 4
  %net1.i552 = getelementptr inbounds %struct.rsvp_filter, ptr %call29, i32 0, i32 5, i32 3
  %32 = ptrtoint ptr %net1.i552 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %net, ptr %net1.i552, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %33 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i553 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %33, i32 noundef 3520, i32 noundef 128) #11
  %actions.i554 = getelementptr inbounds %struct.rsvp_filter, ptr %call29, i32 0, i32 5, i32 2
  %34 = ptrtoint ptr %actions.i554 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call7.i.i.i.i553, ptr %actions.i554, align 4
  %tobool.not.i555 = icmp eq ptr %call7.i.i.i.i553, null
  br i1 %tobool.not.i555, label %if.end32.errout2.sink.split_crit_edge, label %if.end36

if.end32.errout2.sink.split_crit_edge:            ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %errout2.sink.split

if.end36:                                         ; preds = %if.end32
  %action3.i556 = getelementptr inbounds %struct.rsvp_filter, ptr %call29, i32 0, i32 5, i32 5
  %35 = ptrtoint ptr %action3.i556 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 6, ptr %action3.i556, align 4
  %police4.i557 = getelementptr inbounds %struct.rsvp_filter, ptr %call29, i32 0, i32 5, i32 6
  %36 = ptrtoint ptr %police4.i557 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 5, ptr %police4.i557, align 4
  %37 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %4, align 4
  %tobool38.not = icmp eq ptr %38, null
  br i1 %tobool38.not, label %if.end36.cleanup_crit_edge, label %if.then39

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i561 = getelementptr i8, ptr %38, i32 4
  %39 = ptrtoint ptr %add.ptr.i.i561 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %add.ptr.i.i561, align 4
  %res = getelementptr inbounds %struct.rsvp_filter, ptr %call29, i32 0, i32 4
  %classid = getelementptr inbounds %struct.rsvp_filter, ptr %call29, i32 0, i32 4, i32 0, i32 0, i32 1
  %41 = ptrtoint ptr %classid to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %classid, align 4
  call fastcc void @tcf_bind_filter(ptr noundef %tp, ptr noundef %res, i32 noundef %base)
  br label %cleanup

cleanup:                                          ; preds = %if.then39, %if.end36.cleanup_crit_edge
  call void @tcf_exts_change(ptr noundef %exts, ptr noundef nonnull %e) #8
  call fastcc void @rsvp_replace(ptr noundef %tp, ptr noundef nonnull %call29, i32 noundef %handle)
  br label %cleanup408

if.end45:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %handle)
  %tobool46.not = icmp eq i32 %handle, 0
  br i1 %tobool46.not, label %if.end48, label %if.end45.errout2_crit_edge

if.end45.errout2_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %errout2

if.end48:                                         ; preds = %if.end45
  %42 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %5, align 4
  %cmp50 = icmp eq ptr %43, null
  br i1 %cmp50, label %if.end48.errout2_crit_edge, label %if.end52

if.end48.errout2_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %errout2

if.end52:                                         ; preds = %if.end48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %44 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %44, i32 noundef 3520, i32 noundef 136) #11
  %cmp54 = icmp eq ptr %call7.i.i, null
  br i1 %cmp54, label %if.end52.errout2_crit_edge, label %if.end56

if.end52.errout2_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %errout2

if.end56:                                         ; preds = %if.end52
  %exts57 = getelementptr inbounds %struct.rsvp_filter, ptr %call7.i.i, i32 0, i32 5
  %call58 = call fastcc i32 @tcf_exts_init(ptr noundef %exts57, ptr noundef %net)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59 = icmp slt i32 %call58, 0
  br i1 %cmp59, label %if.end56.errout_crit_edge, label %if.end61

if.end56.errout_crit_edge:                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %errout

if.end61:                                         ; preds = %if.end56
  %45 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %6, align 4
  %tobool63.not = icmp eq ptr %46, null
  br i1 %tobool63.not, label %if.end61.if.end71_crit_edge, label %if.then64

if.end61.if.end71_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

if.then64:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  %src = getelementptr inbounds %struct.rsvp_filter, ptr %call7.i.i, i32 0, i32 1
  %add.ptr.i = getelementptr i8, ptr %46, i32 4
  %47 = call ptr @memcpy(ptr %src, ptr %add.ptr.i, i32 16)
  %arrayidx.i = getelementptr %struct.rsvp_filter, ptr %call7.i.i, i32 0, i32 1, i32 3
  %48 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i, align 8
  %shr.i = lshr i32 %49, 16
  %xor.i = xor i32 %shr.i, %49
  %shr1.i = lshr i32 %xor.i, 8
  %xor2.i = xor i32 %shr1.i, %xor.i
  %shr3.i = lshr i32 %xor2.i, 4
  %xor4.i = xor i32 %shr3.i, %xor2.i
  %and.i = and i32 %xor4.i, 15
  br label %if.end71

if.end71:                                         ; preds = %if.then64, %if.end61.if.end71_crit_edge
  %h2.0 = phi i32 [ %and.i, %if.then64 ], [ 16, %if.end61.if.end71_crit_edge ]
  %50 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %7, align 4
  %tobool73.not = icmp eq ptr %51, null
  br i1 %tobool73.not, label %if.end71.if.end79_crit_edge, label %if.then74

if.end71.if.end79_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79

if.then74:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i562 = getelementptr i8, ptr %51, i32 4
  %spi = getelementptr inbounds %struct.rsvp_filter, ptr %call7.i.i, i32 0, i32 2
  %spi77 = getelementptr i8, ptr %51, i32 16
  %52 = call ptr @memcpy(ptr %spi, ptr %spi77, i32 12)
  %tunnelhdr = getelementptr i8, ptr %51, i32 30
  %53 = ptrtoint ptr %tunnelhdr to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %tunnelhdr, align 2
  %tunnelhdr78 = getelementptr inbounds %struct.rsvp_filter, ptr %call7.i.i, i32 0, i32 3
  %55 = ptrtoint ptr %tunnelhdr78 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %tunnelhdr78, align 8
  br label %if.end79

if.end79:                                         ; preds = %if.then74, %if.end71.if.end79_crit_edge
  %pinfo.0 = phi ptr [ %add.ptr.i562, %if.then74 ], [ null, %if.end71.if.end79_crit_edge ]
  %56 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %4, align 4
  %tobool81.not = icmp eq ptr %57, null
  br i1 %tobool81.not, label %if.end79.if.end87_crit_edge, label %if.then82

if.end79.if.end87_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87

if.then82:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i563 = getelementptr i8, ptr %57, i32 4
  %58 = ptrtoint ptr %add.ptr.i.i563 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %add.ptr.i.i563, align 4
  %classid86 = getelementptr inbounds %struct.rsvp_filter, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 0, i32 1
  %60 = ptrtoint ptr %classid86 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %classid86, align 8
  br label %if.end87

if.end87:                                         ; preds = %if.then82, %if.end79.if.end87_crit_edge
  %61 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %5, align 4
  %add.ptr.i564 = getelementptr i8, ptr %62, i32 4
  %tobool90.not = icmp eq ptr %pinfo.0, null
  br i1 %tobool90.not, label %if.end87.cond.end97_crit_edge, label %cond.true94

if.end87.cond.end97_crit_edge:                    ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end97

cond.true94:                                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  %protocol = getelementptr inbounds %struct.tc_rsvp_pinfo, ptr %pinfo.0, i32 0, i32 2
  %63 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %protocol, align 4
  %tunnelid = getelementptr inbounds %struct.tc_rsvp_pinfo, ptr %pinfo.0, i32 0, i32 3
  %65 = ptrtoint ptr %tunnelid to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %tunnelid, align 1
  %67 = xor i8 %66, %64
  br label %cond.end97

cond.end97:                                       ; preds = %cond.true94, %if.end87.cond.end97_crit_edge
  %xor3.masked10.i = phi i8 [ %67, %cond.true94 ], [ 0, %if.end87.cond.end97_crit_edge ]
  %arrayidx.i565 = getelementptr i8, ptr %62, i32 16
  %68 = ptrtoint ptr %arrayidx.i565 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx.i565, align 4
  %shr.i566 = lshr i32 %69, 16
  %xor.i567 = xor i32 %shr.i566, %69
  %shr1.i568 = lshr i32 %xor.i567, 8
  %xor2.i569 = xor i32 %shr1.i568, %xor.i567
  %xor2.masked.i = and i32 %xor2.i569, 255
  %xor3.masked.i = zext i8 %xor3.masked10.i to i32
  %and.i570 = xor i32 %xor2.masked.i, %xor3.masked.i
  %shl = shl nuw nsw i32 %h2.0, 8
  %or = or i32 %and.i570, %shl
  %call101 = call fastcc i32 @gen_handle(ptr noundef %tp, i32 noundef %or)
  %handle102 = getelementptr inbounds %struct.rsvp_filter, ptr %call7.i.i, i32 0, i32 6
  %70 = ptrtoint ptr %handle102 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %call101, ptr %handle102, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %cmp103 = icmp eq i32 %call101, 0
  br i1 %cmp103, label %cond.end97.errout_crit_edge, label %if.end106

cond.end97.errout_crit_edge:                      ; preds = %cond.end97
  call void @__sanitizer_cov_trace_pc() #10
  br label %errout

if.end106:                                        ; preds = %cond.end97
  %tunnelhdr107 = getelementptr inbounds %struct.rsvp_filter, ptr %call7.i.i, i32 0, i32 3
  %71 = ptrtoint ptr %tunnelhdr107 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %tunnelhdr107, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool108.not = icmp eq i8 %72, 0
  br i1 %tobool108.not, label %if.end106.if.end128_crit_edge, label %if.then109

if.end106.if.end128_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end128

if.then109:                                       ; preds = %if.end106
  %classid111 = getelementptr inbounds %struct.rsvp_filter, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 0, i32 1
  %73 = ptrtoint ptr %classid111 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %classid111, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %74)
  %cmp112 = icmp ugt i32 %74, 255
  br i1 %cmp112, label %if.then109.errout_crit_edge, label %if.end115

if.then109.errout_crit_edge:                      ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #10
  br label %errout

if.end115:                                        ; preds = %if.then109
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp118 = icmp eq i32 %74, 0
  br i1 %cmp118, label %land.lhs.true120, label %if.end115.if.end128_crit_edge

if.end115.if.end128_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end128

land.lhs.true120:                                 ; preds = %if.end115
  %call121 = call fastcc i32 @gen_tunnel(ptr noundef %1)
  %75 = ptrtoint ptr %classid111 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %call121, ptr %classid111, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %cmp124 = icmp eq i32 %call121, 0
  br i1 %cmp124, label %land.lhs.true120.errout_crit_edge, label %land.lhs.true120.if.end128_crit_edge

land.lhs.true120.if.end128_crit_edge:             ; preds = %land.lhs.true120
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end128

land.lhs.true120.errout_crit_edge:                ; preds = %land.lhs.true120
  call void @__sanitizer_cov_trace_pc() #10
  br label %errout

if.end128:                                        ; preds = %land.lhs.true120.if.end128_crit_edge, %if.end115.if.end128_crit_edge, %if.end106.if.end128_crit_edge
  %arrayidx129 = getelementptr %struct.rsvp_head, ptr %1, i32 0, i32 3, i32 %and.i570
  %protocol152 = getelementptr inbounds %struct.tc_rsvp_pinfo, ptr %pinfo.0, i32 0, i32 2
  %arrayidx170 = getelementptr i8, ptr %62, i32 8
  %arrayidx176 = getelementptr i8, ptr %62, i32 12
  %tunnelid182 = getelementptr inbounds %struct.tc_rsvp_pinfo, ptr %pinfo.0, i32 0, i32 3
  br label %for.cond

for.cond:                                         ; preds = %for.cond.backedge, %if.end128
  %sp.0 = phi ptr [ %arrayidx129, %if.end128 ], [ %77, %for.cond.backedge ]
  %call131 = call zeroext i1 @lockdep_rtnl_is_held() #8
  br i1 %call131, label %for.cond.do.end140_crit_edge, label %land.lhs.true132

for.cond.do.end140_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end140

land.lhs.true132:                                 ; preds = %for.cond
  %call133 = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %land.lhs.true132.do.end140_crit_edge, label %land.lhs.true135

land.lhs.true132.do.end140_crit_edge:             ; preds = %land.lhs.true132
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end140

land.lhs.true135:                                 ; preds = %land.lhs.true132
  %.b540549 = load i1, ptr @rsvp_change.__warned.15, align 1
  br i1 %.b540549, label %land.lhs.true135.do.end140_crit_edge, label %if.then137

land.lhs.true135.do.end140_crit_edge:             ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end140

if.then137:                                       ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rsvp_change.__warned.15, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 584, ptr noundef nonnull @.str.8) #8
  br label %do.end140

do.end140:                                        ; preds = %if.then137, %land.lhs.true135.do.end140_crit_edge, %land.lhs.true132.do.end140_crit_edge, %for.cond.do.end140_crit_edge
  %76 = ptrtoint ptr %sp.0 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %sp.0, align 4
  %cmp142.not = icmp eq ptr %77, null
  br i1 %cmp142.not, label %for.end293, label %for.body

for.body:                                         ; preds = %do.end140
  %78 = ptrtoint ptr %arrayidx.i565 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx.i565, align 4
  %dst145 = getelementptr inbounds %struct.rsvp_session, ptr %77, i32 0, i32 1
  %arrayidx146 = getelementptr %struct.rsvp_session, ptr %77, i32 0, i32 1, i32 3
  %80 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx146, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %81)
  %cmp147 = icmp ne i32 %79, %81
  %brmerge = select i1 %cmp147, i1 true, i1 %tobool90.not
  br i1 %brmerge, label %for.body.for.cond.backedge_crit_edge, label %land.lhs.true151

for.body.for.cond.backedge_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %land.lhs.true181.for.cond.backedge_crit_edge, %land.lhs.true175.for.cond.backedge_crit_edge, %land.lhs.true169.for.cond.backedge_crit_edge, %land.lhs.true163.for.cond.backedge_crit_edge, %land.lhs.true158.for.cond.backedge_crit_edge, %land.lhs.true151.for.cond.backedge_crit_edge, %for.body.for.cond.backedge_crit_edge
  br label %for.cond

land.lhs.true151:                                 ; preds = %for.body
  %82 = ptrtoint ptr %protocol152 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %protocol152, align 4
  %protocol154 = getelementptr inbounds %struct.rsvp_session, ptr %77, i32 0, i32 3
  %84 = ptrtoint ptr %protocol154 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %protocol154, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %83, i8 %85)
  %cmp156 = icmp eq i8 %83, %85
  br i1 %cmp156, label %land.lhs.true158, label %land.lhs.true151.for.cond.backedge_crit_edge

land.lhs.true151.for.cond.backedge_crit_edge:     ; preds = %land.lhs.true151
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.backedge

land.lhs.true158:                                 ; preds = %land.lhs.true151
  %dpi159 = getelementptr inbounds %struct.rsvp_session, ptr %77, i32 0, i32 2
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(12) %pinfo.0, ptr noundef dereferenceable(12) %dpi159, i32 12) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp161 = icmp eq i32 %bcmp, 0
  br i1 %cmp161, label %land.lhs.true163, label %land.lhs.true158.for.cond.backedge_crit_edge

land.lhs.true158.for.cond.backedge_crit_edge:     ; preds = %land.lhs.true158
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.backedge

land.lhs.true163:                                 ; preds = %land.lhs.true158
  %86 = ptrtoint ptr %add.ptr.i564 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %add.ptr.i564, align 4
  %88 = ptrtoint ptr %dst145 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %dst145, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %87, i32 %89)
  %cmp167 = icmp eq i32 %87, %89
  br i1 %cmp167, label %land.lhs.true169, label %land.lhs.true163.for.cond.backedge_crit_edge

land.lhs.true163.for.cond.backedge_crit_edge:     ; preds = %land.lhs.true163
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.backedge

land.lhs.true169:                                 ; preds = %land.lhs.true163
  %90 = ptrtoint ptr %arrayidx170 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx170, align 4
  %arrayidx172 = getelementptr %struct.rsvp_session, ptr %77, i32 0, i32 1, i32 1
  %92 = ptrtoint ptr %arrayidx172 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx172, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %91, i32 %93)
  %cmp173 = icmp eq i32 %91, %93
  br i1 %cmp173, label %land.lhs.true175, label %land.lhs.true169.for.cond.backedge_crit_edge

land.lhs.true169.for.cond.backedge_crit_edge:     ; preds = %land.lhs.true169
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.backedge

land.lhs.true175:                                 ; preds = %land.lhs.true169
  %94 = ptrtoint ptr %arrayidx176 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx176, align 4
  %arrayidx178 = getelementptr %struct.rsvp_session, ptr %77, i32 0, i32 1, i32 2
  %96 = ptrtoint ptr %arrayidx178 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx178, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %95, i32 %97)
  %cmp179 = icmp eq i32 %95, %97
  br i1 %cmp179, label %land.lhs.true181, label %land.lhs.true175.for.cond.backedge_crit_edge

land.lhs.true175.for.cond.backedge_crit_edge:     ; preds = %land.lhs.true175
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.backedge

land.lhs.true181:                                 ; preds = %land.lhs.true175
  %98 = ptrtoint ptr %tunnelid182 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %tunnelid182, align 1
  %tunnelid184 = getelementptr inbounds %struct.rsvp_session, ptr %77, i32 0, i32 4
  %100 = ptrtoint ptr %tunnelid184 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %tunnelid184, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %99, i8 %101)
  %cmp186 = icmp eq i8 %99, %101
  br i1 %cmp186, label %land.lhs.true181.insert_crit_edge, label %land.lhs.true181.for.cond.backedge_crit_edge

land.lhs.true181.for.cond.backedge_crit_edge:     ; preds = %land.lhs.true181
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.backedge

land.lhs.true181.insert_crit_edge:                ; preds = %land.lhs.true181
  call void @__sanitizer_cov_trace_pc() #10
  br label %insert

insert:                                           ; preds = %do.body358, %land.lhs.true181.insert_crit_edge
  %s.0 = phi ptr [ %call7.i.i571, %do.body358 ], [ %77, %land.lhs.true181.insert_crit_edge ]
  %sess = getelementptr inbounds %struct.rsvp_filter, ptr %call7.i.i, i32 0, i32 7
  %102 = ptrtoint ptr %sess to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %s.0, ptr %sess, align 4
  %103 = ptrtoint ptr %tunnelhdr107 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %tunnelhdr107, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %cmp193 = icmp eq i8 %104, 0
  br i1 %cmp193, label %if.then195, label %insert.if.end197_crit_edge

insert.if.end197_crit_edge:                       ; preds = %insert
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end197

if.then195:                                       ; preds = %insert
  call void @__sanitizer_cov_trace_pc() #10
  %res196 = getelementptr inbounds %struct.rsvp_filter, ptr %call7.i.i, i32 0, i32 4
  call fastcc void @tcf_bind_filter(ptr noundef %tp, ptr noundef %res196, i32 noundef %base)
  br label %if.end197

if.end197:                                        ; preds = %if.then195, %insert.if.end197_crit_edge
  call void @tcf_exts_change(ptr noundef %exts57, ptr noundef nonnull %e) #8
  %arrayidx200 = getelementptr %struct.rsvp_session, ptr %s.0, i32 0, i32 5, i32 %h2.0
  %call202 = call zeroext i1 @lockdep_rtnl_is_held() #8
  br i1 %call202, label %if.end197.do.end211_crit_edge, label %land.lhs.true203

if.end197.do.end211_crit_edge:                    ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end211

land.lhs.true203:                                 ; preds = %if.end197
  %call204 = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call204)
  %tobool205.not = icmp eq i32 %call204, 0
  br i1 %tobool205.not, label %land.lhs.true203.do.end211_crit_edge, label %land.lhs.true206

land.lhs.true203.do.end211_crit_edge:             ; preds = %land.lhs.true203
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end211

land.lhs.true206:                                 ; preds = %land.lhs.true203
  %.b541546 = load i1, ptr @rsvp_change.__warned.16, align 1
  br i1 %.b541546, label %land.lhs.true206.do.end211_crit_edge, label %if.then208

land.lhs.true206.do.end211_crit_edge:             ; preds = %land.lhs.true206
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end211

if.then208:                                       ; preds = %land.lhs.true206
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rsvp_change.__warned.16, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 608, ptr noundef nonnull @.str.8) #8
  br label %do.end211

do.end211:                                        ; preds = %if.then208, %land.lhs.true206.do.end211_crit_edge, %land.lhs.true203.do.end211_crit_edge, %if.end197.do.end211_crit_edge
  %105 = ptrtoint ptr %arrayidx200 to i32
  call void @__asan_load4_noabort(i32 %105)
  %nfp.0589 = load ptr, ptr %arrayidx200, align 4
  %tobool214.not590 = icmp eq ptr %nfp.0589, null
  br i1 %tobool214.not590, label %do.end211.do.body244_crit_edge, label %for.body215.lr.ph

do.end211.do.body244_crit_edge:                   ; preds = %do.end211
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body244

for.body215.lr.ph:                                ; preds = %do.end211
  %mask219 = getelementptr inbounds %struct.rsvp_filter, ptr %call7.i.i, i32 0, i32 2, i32 1
  %mask217607 = getelementptr inbounds %struct.rsvp_filter, ptr %nfp.0589, i32 0, i32 2, i32 1
  %106 = ptrtoint ptr %mask217607 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %mask217607, align 4
  %108 = ptrtoint ptr %mask219 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %mask219, align 8
  %and608 = and i32 %109, %107
  call void @__sanitizer_cov_trace_cmp4(i32 %and608, i32 %109)
  %cmp222.not609 = icmp eq i32 %and608, %109
  br i1 %cmp222.not609, label %for.body215.lr.ph.for.inc_crit_edge, label %for.body215.lr.ph.do.body244_crit_edge

for.body215.lr.ph.do.body244_crit_edge:           ; preds = %for.body215.lr.ph
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body244

for.body215.lr.ph.for.inc_crit_edge:              ; preds = %for.body215.lr.ph
  br label %for.inc

for.body215:                                      ; preds = %do.end237
  %mask217 = getelementptr inbounds %struct.rsvp_filter, ptr %nfp.0, i32 0, i32 2, i32 1
  %110 = ptrtoint ptr %mask217 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %mask217, align 4
  %112 = ptrtoint ptr %mask219 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %mask219, align 8
  %and = and i32 %113, %111
  %cmp222.not = icmp eq i32 %and, %113
  br i1 %cmp222.not, label %for.body215.for.inc_crit_edge, label %for.body215.do.body244_crit_edge

for.body215.do.body244_crit_edge:                 ; preds = %for.body215
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body244

for.body215.for.inc_crit_edge:                    ; preds = %for.body215
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %for.body215.for.inc_crit_edge, %for.body215.lr.ph.for.inc_crit_edge
  %nfp.0592610 = phi ptr [ %nfp.0, %for.body215.for.inc_crit_edge ], [ %nfp.0589, %for.body215.lr.ph.for.inc_crit_edge ]
  %call228 = call zeroext i1 @lockdep_rtnl_is_held() #8
  br i1 %call228, label %for.inc.do.end237_crit_edge, label %land.lhs.true229

for.inc.do.end237_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end237

land.lhs.true229:                                 ; preds = %for.inc
  %call230 = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call230)
  %tobool231.not = icmp eq i32 %call230, 0
  br i1 %tobool231.not, label %land.lhs.true229.do.end237_crit_edge, label %land.lhs.true232

land.lhs.true229.do.end237_crit_edge:             ; preds = %land.lhs.true229
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end237

land.lhs.true232:                                 ; preds = %land.lhs.true229
  %.b542545 = load i1, ptr @rsvp_change.__warned.17, align 1
  br i1 %.b542545, label %land.lhs.true232.do.end237_crit_edge, label %if.then234

land.lhs.true232.do.end237_crit_edge:             ; preds = %land.lhs.true232
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end237

if.then234:                                       ; preds = %land.lhs.true232
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rsvp_change.__warned.17, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 609, ptr noundef nonnull @.str.8) #8
  br label %do.end237

do.end237:                                        ; preds = %if.then234, %land.lhs.true232.do.end237_crit_edge, %land.lhs.true229.do.end237_crit_edge, %for.inc.do.end237_crit_edge
  %114 = ptrtoint ptr %nfp.0592610 to i32
  call void @__asan_load4_noabort(i32 %114)
  %nfp.0 = load ptr, ptr %nfp.0592610, align 4
  %tobool214.not = icmp eq ptr %nfp.0, null
  br i1 %tobool214.not, label %do.end237.do.body244_crit_edge, label %for.body215

do.end237.do.body244_crit_edge:                   ; preds = %do.end237
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body244

do.body244:                                       ; preds = %do.end237.do.body244_crit_edge, %for.body215.do.body244_crit_edge, %for.body215.lr.ph.do.body244_crit_edge, %do.end211.do.body244_crit_edge
  %fp.0.lcssa = phi ptr [ %arrayidx200, %do.end211.do.body244_crit_edge ], [ %arrayidx200, %for.body215.lr.ph.do.body244_crit_edge ], [ %nfp.0592610, %do.end237.do.body244_crit_edge ], [ %nfp.0592610, %for.body215.do.body244_crit_edge ]
  %nfp.0.lcssa = phi ptr [ null, %do.end211.do.body244_crit_edge ], [ %nfp.0589, %for.body215.lr.ph.do.body244_crit_edge ], [ null, %do.end237.do.body244_crit_edge ], [ %nfp.0, %for.body215.do.body244_crit_edge ]
  %115 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store volatile ptr %nfp.0.lcssa, ptr %call7.i.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !114
  %116 = ptrtoint ptr %fp.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %116)
  store volatile ptr %call7.i.i, ptr %fp.0.lcssa, align 4
  %117 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %call7.i.i, ptr %arg, align 4
  br label %cleanup408

for.end293:                                       ; preds = %do.end140
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %118 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i571 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %118, i32 noundef 3520, i32 noundef 112) #11
  %cmp295 = icmp eq ptr %call7.i.i571, null
  br i1 %cmp295, label %for.end293.errout_crit_edge, label %if.end298

for.end293.errout_crit_edge:                      ; preds = %for.end293
  call void @__sanitizer_cov_trace_pc() #10
  br label %errout

if.end298:                                        ; preds = %for.end293
  %dst299 = getelementptr inbounds %struct.rsvp_session, ptr %call7.i.i571, i32 0, i32 1
  %119 = call ptr @memcpy(ptr %dst299, ptr %add.ptr.i564, i32 16)
  br i1 %tobool90.not, label %if.end298.if.end309_crit_edge, label %if.then302

if.end298.if.end309_crit_edge:                    ; preds = %if.end298
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end309

if.then302:                                       ; preds = %if.end298
  call void @__sanitizer_cov_trace_pc() #10
  %dpi303 = getelementptr inbounds %struct.rsvp_session, ptr %call7.i.i571, i32 0, i32 2
  %120 = call ptr @memcpy(ptr %dpi303, ptr %pinfo.0, i32 12)
  %121 = ptrtoint ptr %protocol152 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %protocol152, align 4
  %protocol306 = getelementptr inbounds %struct.rsvp_session, ptr %call7.i.i571, i32 0, i32 3
  %123 = ptrtoint ptr %protocol306 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %122, ptr %protocol306, align 8
  %124 = ptrtoint ptr %tunnelid182 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %tunnelid182, align 1
  %tunnelid308 = getelementptr inbounds %struct.rsvp_session, ptr %call7.i.i571, i32 0, i32 4
  %126 = ptrtoint ptr %tunnelid308 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %125, ptr %tunnelid308, align 1
  br label %if.end309

if.end309:                                        ; preds = %if.then302, %if.end298.if.end309_crit_edge
  %call313 = call zeroext i1 @lockdep_rtnl_is_held() #8
  br i1 %call313, label %if.end309.do.end322_crit_edge, label %land.lhs.true314

if.end309.do.end322_crit_edge:                    ; preds = %if.end309
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end322

land.lhs.true314:                                 ; preds = %if.end309
  %call315 = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call315)
  %tobool316.not = icmp eq i32 %call315, 0
  br i1 %tobool316.not, label %land.lhs.true314.do.end322_crit_edge, label %land.lhs.true317

land.lhs.true314.do.end322_crit_edge:             ; preds = %land.lhs.true314
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end322

land.lhs.true317:                                 ; preds = %land.lhs.true314
  %.b543548 = load i1, ptr @rsvp_change.__warned.18, align 1
  br i1 %.b543548, label %land.lhs.true317.do.end322_crit_edge, label %if.then319

land.lhs.true317.do.end322_crit_edge:             ; preds = %land.lhs.true317
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end322

if.then319:                                       ; preds = %land.lhs.true317
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rsvp_change.__warned.18, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 637, ptr noundef nonnull @.str.8) #8
  br label %do.end322

do.end322:                                        ; preds = %if.then319, %land.lhs.true317.do.end322_crit_edge, %land.lhs.true314.do.end322_crit_edge, %if.end309.do.end322_crit_edge
  %127 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_load4_noabort(i32 %127)
  %nsp.0582 = load ptr, ptr %arrayidx129, align 4
  %tobool325.not583 = icmp eq ptr %nsp.0582, null
  br i1 %tobool325.not583, label %do.end322.do.body358_crit_edge, label %for.body326.lr.ph

do.end322.do.body358_crit_edge:                   ; preds = %do.end322
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body358

for.body326.lr.ph:                                ; preds = %do.end322
  %mask330 = getelementptr inbounds %struct.rsvp_session, ptr %call7.i.i571, i32 0, i32 2, i32 1
  %mask328600 = getelementptr inbounds %struct.rsvp_session, ptr %nsp.0582, i32 0, i32 2, i32 1
  %128 = ptrtoint ptr %mask328600 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %mask328600, align 4
  %130 = ptrtoint ptr %mask330 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %mask330, align 8
  %and331601 = and i32 %131, %129
  call void @__sanitizer_cov_trace_cmp4(i32 %and331601, i32 %131)
  %cmp334.not602 = icmp eq i32 %and331601, %131
  br i1 %cmp334.not602, label %for.body326.lr.ph.for.inc338_crit_edge, label %for.body326.lr.ph.do.body358_crit_edge

for.body326.lr.ph.do.body358_crit_edge:           ; preds = %for.body326.lr.ph
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body358

for.body326.lr.ph.for.inc338_crit_edge:           ; preds = %for.body326.lr.ph
  br label %for.inc338

for.body326:                                      ; preds = %do.end350
  %mask328 = getelementptr inbounds %struct.rsvp_session, ptr %nsp.0, i32 0, i32 2, i32 1
  %132 = ptrtoint ptr %mask328 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %mask328, align 4
  %134 = ptrtoint ptr %mask330 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %mask330, align 8
  %and331 = and i32 %135, %133
  %cmp334.not = icmp eq i32 %and331, %135
  br i1 %cmp334.not, label %for.body326.for.inc338_crit_edge, label %for.body326.do.body358_crit_edge

for.body326.do.body358_crit_edge:                 ; preds = %for.body326
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body358

for.body326.for.inc338_crit_edge:                 ; preds = %for.body326
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc338

for.inc338:                                       ; preds = %for.body326.for.inc338_crit_edge, %for.body326.lr.ph.for.inc338_crit_edge
  %nsp.0585603 = phi ptr [ %nsp.0, %for.body326.for.inc338_crit_edge ], [ %nsp.0582, %for.body326.lr.ph.for.inc338_crit_edge ]
  %call341 = call zeroext i1 @lockdep_rtnl_is_held() #8
  br i1 %call341, label %for.inc338.do.end350_crit_edge, label %land.lhs.true342

for.inc338.do.end350_crit_edge:                   ; preds = %for.inc338
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end350

land.lhs.true342:                                 ; preds = %for.inc338
  %call343 = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call343)
  %tobool344.not = icmp eq i32 %call343, 0
  br i1 %tobool344.not, label %land.lhs.true342.do.end350_crit_edge, label %land.lhs.true345

land.lhs.true342.do.end350_crit_edge:             ; preds = %land.lhs.true342
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end350

land.lhs.true345:                                 ; preds = %land.lhs.true342
  %.b544547 = load i1, ptr @rsvp_change.__warned.19, align 1
  br i1 %.b544547, label %land.lhs.true345.do.end350_crit_edge, label %if.then347

land.lhs.true345.do.end350_crit_edge:             ; preds = %land.lhs.true345
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end350

if.then347:                                       ; preds = %land.lhs.true345
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rsvp_change.__warned.19, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 638, ptr noundef nonnull @.str.8) #8
  br label %do.end350

do.end350:                                        ; preds = %if.then347, %land.lhs.true345.do.end350_crit_edge, %land.lhs.true342.do.end350_crit_edge, %for.inc338.do.end350_crit_edge
  %136 = ptrtoint ptr %nsp.0585603 to i32
  call void @__asan_load4_noabort(i32 %136)
  %nsp.0 = load ptr, ptr %nsp.0585603, align 4
  %tobool325.not = icmp eq ptr %nsp.0, null
  br i1 %tobool325.not, label %do.end350.do.body358_crit_edge, label %for.body326

do.end350.do.body358_crit_edge:                   ; preds = %do.end350
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body358

do.body358:                                       ; preds = %do.end350.do.body358_crit_edge, %for.body326.do.body358_crit_edge, %for.body326.lr.ph.do.body358_crit_edge, %do.end322.do.body358_crit_edge
  %sp.1.lcssa = phi ptr [ %arrayidx129, %do.end322.do.body358_crit_edge ], [ %arrayidx129, %for.body326.lr.ph.do.body358_crit_edge ], [ %nsp.0585603, %do.end350.do.body358_crit_edge ], [ %nsp.0585603, %for.body326.do.body358_crit_edge ]
  %nsp.0.lcssa = phi ptr [ null, %do.end322.do.body358_crit_edge ], [ %nsp.0582, %for.body326.lr.ph.do.body358_crit_edge ], [ null, %do.end350.do.body358_crit_edge ], [ %nsp.0, %for.body326.do.body358_crit_edge ]
  %137 = ptrtoint ptr %call7.i.i571 to i32
  call void @__asan_store4_noabort(i32 %137)
  store volatile ptr %nsp.0.lcssa, ptr %call7.i.i571, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !115
  %138 = ptrtoint ptr %sp.1.lcssa to i32
  call void @__asan_store4_noabort(i32 %138)
  store volatile ptr %call7.i.i571, ptr %sp.1.lcssa, align 4
  br label %insert

errout:                                           ; preds = %for.end293.errout_crit_edge, %land.lhs.true120.errout_crit_edge, %if.then109.errout_crit_edge, %cond.end97.errout_crit_edge, %if.end56.errout_crit_edge
  %err.1 = phi i32 [ %call58, %if.end56.errout_crit_edge ], [ -12, %cond.end97.errout_crit_edge ], [ -22, %if.then109.errout_crit_edge ], [ -12, %land.lhs.true120.errout_crit_edge ], [ -105, %for.end293.errout_crit_edge ]
  call void @tcf_exts_destroy(ptr noundef %exts57) #8
  br label %errout2.sink.split

errout2.sink.split:                               ; preds = %errout, %if.end32.errout2.sink.split_crit_edge
  %call29.sink = phi ptr [ %call7.i.i, %errout ], [ %call29, %if.end32.errout2.sink.split_crit_edge ]
  %err.2.ph = phi i32 [ %err.1, %errout ], [ -12, %if.end32.errout2.sink.split_crit_edge ]
  call void @kfree(ptr noundef nonnull %call29.sink) #8
  br label %errout2

errout2:                                          ; preds = %errout2.sink.split, %if.end52.errout2_crit_edge, %if.end48.errout2_crit_edge, %if.end45.errout2_crit_edge, %if.end28.errout2_crit_edge, %if.then22.errout2_crit_edge, %if.end14.errout2_crit_edge
  %err.2 = phi i32 [ %call17, %if.end14.errout2_crit_edge ], [ -22, %if.end45.errout2_crit_edge ], [ -22, %if.end48.errout2_crit_edge ], [ -105, %if.end52.errout2_crit_edge ], [ -12, %if.end28.errout2_crit_edge ], [ %call17, %if.then22.errout2_crit_edge ], [ %err.2.ph, %errout2.sink.split ]
  call void @tcf_exts_destroy(ptr noundef nonnull %e) #8
  br label %cleanup408

cleanup408:                                       ; preds = %errout2, %do.body244, %cleanup, %if.end10.cleanup408_crit_edge, %if.end6.cleanup408_crit_edge, %if.then4
  %retval.1 = phi i32 [ %cond, %if.then4 ], [ %err.2, %errout2 ], [ 0, %cleanup ], [ 0, %do.body244 ], [ %call2.i, %if.end6.cleanup408_crit_edge ], [ -12, %if.end10.cleanup408_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %e) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %tb) #8
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsvp_delete(ptr nocapture noundef readonly %tp, ptr noundef %arg, ptr nocapture noundef writeonly %last, i1 noundef zeroext %rtnl_held, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #8
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b161 = load i1, ptr @rsvp_delete.__warned, align 1
  br i1 %.b161, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rsvp_delete.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 343, ptr noundef nonnull @.str.8) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %root = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 1
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root, align 4
  %handle = getelementptr inbounds %struct.rsvp_filter, ptr %arg, i32 0, i32 6
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %handle, align 4
  %sess = getelementptr inbounds %struct.rsvp_filter, ptr %arg, i32 0, i32 7
  %4 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sess, align 4
  %shr = lshr i32 %3, 8
  %and = and i32 %shr, 255
  %arrayidx = getelementptr %struct.rsvp_session, ptr %5, i32 0, i32 5, i32 %and
  %call5 = tail call zeroext i1 @lockdep_rtnl_is_held() #8
  br i1 %call5, label %do.end.do.end14_crit_edge, label %land.lhs.true6

do.end.do.end14_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14

land.lhs.true6:                                   ; preds = %do.end
  %call7 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true6.do.end14_crit_edge, label %land.lhs.true9

land.lhs.true6.do.end14_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14

land.lhs.true9:                                   ; preds = %land.lhs.true6
  %.b153160 = load i1, ptr @rsvp_delete.__warned.29, align 1
  br i1 %.b153160, label %land.lhs.true9.do.end14_crit_edge, label %if.then11

land.lhs.true9.do.end14_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14

if.then11:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rsvp_delete.__warned.29, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 352, ptr noundef nonnull @.str.8) #8
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %land.lhs.true9.do.end14_crit_edge, %land.lhs.true6.do.end14_crit_edge, %do.end.do.end14_crit_edge
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %nfp.0166 = load ptr, ptr %arrayidx, align 4
  %tobool16.not167 = icmp eq ptr %nfp.0166, null
  br i1 %tobool16.not167, label %do.end14.out_crit_edge, label %for.body.preheader

do.end14.out_crit_edge:                           ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.body.preheader:                               ; preds = %do.end14
  %cmp186 = icmp eq ptr %nfp.0166, %arg
  br i1 %cmp186, label %for.body.preheader.do.body23_crit_edge, label %for.body.preheader.for.inc97_crit_edge

for.body.preheader.for.inc97_crit_edge:           ; preds = %for.body.preheader
  br label %for.inc97

for.body.preheader.do.body23_crit_edge:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body23

for.body:                                         ; preds = %do.end109
  %cmp = icmp eq ptr %nfp.0, %arg
  br i1 %cmp, label %for.body.do.body23_crit_edge, label %for.body.for.inc97_crit_edge

for.body.for.inc97_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc97

for.body.do.body23_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body23

do.body23:                                        ; preds = %for.body.do.body23_crit_edge, %for.body.preheader.do.body23_crit_edge
  %fp.0168.lcssa = phi ptr [ %arrayidx, %for.body.preheader.do.body23_crit_edge ], [ %nfp.0169187, %for.body.do.body23_crit_edge ]
  %7 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arg, align 4
  %9 = ptrtoint ptr %fp.0168.lcssa to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %8, ptr %fp.0168.lcssa, align 4
  tail call fastcc void @rsvp_delete_filter(ptr noundef %tp, ptr noundef %arg)
  %arrayidx34 = getelementptr %struct.rsvp_session, ptr %5, i32 0, i32 5, i32 0
  %10 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx34, align 4
  %tobool35.not = icmp eq ptr %11, null
  br i1 %tobool35.not, label %for.cond30, label %do.body23.out_crit_edge

do.body23.out_crit_edge:                          ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.cond30:                                       ; preds = %do.body23
  %arrayidx34.1 = getelementptr %struct.rsvp_session, ptr %5, i32 0, i32 5, i32 1
  %12 = ptrtoint ptr %arrayidx34.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx34.1, align 4
  %tobool35.not.1 = icmp eq ptr %13, null
  br i1 %tobool35.not.1, label %for.cond30.1, label %for.cond30.out_crit_edge

for.cond30.out_crit_edge:                         ; preds = %for.cond30
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.cond30.1:                                     ; preds = %for.cond30
  %arrayidx34.2 = getelementptr %struct.rsvp_session, ptr %5, i32 0, i32 5, i32 2
  %14 = ptrtoint ptr %arrayidx34.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx34.2, align 4
  %tobool35.not.2 = icmp eq ptr %15, null
  br i1 %tobool35.not.2, label %for.cond30.2, label %for.cond30.1.out_crit_edge

for.cond30.1.out_crit_edge:                       ; preds = %for.cond30.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.cond30.2:                                     ; preds = %for.cond30.1
  %arrayidx34.3 = getelementptr %struct.rsvp_session, ptr %5, i32 0, i32 5, i32 3
  %16 = ptrtoint ptr %arrayidx34.3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx34.3, align 4
  %tobool35.not.3 = icmp eq ptr %17, null
  br i1 %tobool35.not.3, label %for.cond30.3, label %for.cond30.2.out_crit_edge

for.cond30.2.out_crit_edge:                       ; preds = %for.cond30.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.cond30.3:                                     ; preds = %for.cond30.2
  %arrayidx34.4 = getelementptr %struct.rsvp_session, ptr %5, i32 0, i32 5, i32 4
  %18 = ptrtoint ptr %arrayidx34.4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx34.4, align 4
  %tobool35.not.4 = icmp eq ptr %19, null
  br i1 %tobool35.not.4, label %for.cond30.4, label %for.cond30.3.out_crit_edge

for.cond30.3.out_crit_edge:                       ; preds = %for.cond30.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.cond30.4:                                     ; preds = %for.cond30.3
  %arrayidx34.5 = getelementptr %struct.rsvp_session, ptr %5, i32 0, i32 5, i32 5
  %20 = ptrtoint ptr %arrayidx34.5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx34.5, align 4
  %tobool35.not.5 = icmp eq ptr %21, null
  br i1 %tobool35.not.5, label %for.cond30.5, label %for.cond30.4.out_crit_edge

for.cond30.4.out_crit_edge:                       ; preds = %for.cond30.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.cond30.5:                                     ; preds = %for.cond30.4
  %arrayidx34.6 = getelementptr %struct.rsvp_session, ptr %5, i32 0, i32 5, i32 6
  %22 = ptrtoint ptr %arrayidx34.6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx34.6, align 4
  %tobool35.not.6 = icmp eq ptr %23, null
  br i1 %tobool35.not.6, label %for.cond30.6, label %for.cond30.5.out_crit_edge

for.cond30.5.out_crit_edge:                       ; preds = %for.cond30.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.cond30.6:                                     ; preds = %for.cond30.5
  %arrayidx34.7 = getelementptr %struct.rsvp_session, ptr %5, i32 0, i32 5, i32 7
  %24 = ptrtoint ptr %arrayidx34.7 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx34.7, align 4
  %tobool35.not.7 = icmp eq ptr %25, null
  br i1 %tobool35.not.7, label %for.cond30.7, label %for.cond30.6.out_crit_edge

for.cond30.6.out_crit_edge:                       ; preds = %for.cond30.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.cond30.7:                                     ; preds = %for.cond30.6
  %arrayidx34.8 = getelementptr %struct.rsvp_session, ptr %5, i32 0, i32 5, i32 8
  %26 = ptrtoint ptr %arrayidx34.8 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx34.8, align 4
  %tobool35.not.8 = icmp eq ptr %27, null
  br i1 %tobool35.not.8, label %for.cond30.8, label %for.cond30.7.out_crit_edge

for.cond30.7.out_crit_edge:                       ; preds = %for.cond30.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.cond30.8:                                     ; preds = %for.cond30.7
  %arrayidx34.9 = getelementptr %struct.rsvp_session, ptr %5, i32 0, i32 5, i32 9
  %28 = ptrtoint ptr %arrayidx34.9 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx34.9, align 4
  %tobool35.not.9 = icmp eq ptr %29, null
  br i1 %tobool35.not.9, label %for.cond30.9, label %for.cond30.8.out_crit_edge

for.cond30.8.out_crit_edge:                       ; preds = %for.cond30.8
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.cond30.9:                                     ; preds = %for.cond30.8
  %arrayidx34.10 = getelementptr %struct.rsvp_session, ptr %5, i32 0, i32 5, i32 10
  %30 = ptrtoint ptr %arrayidx34.10 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx34.10, align 4
  %tobool35.not.10 = icmp eq ptr %31, null
  br i1 %tobool35.not.10, label %for.cond30.10, label %for.cond30.9.out_crit_edge

for.cond30.9.out_crit_edge:                       ; preds = %for.cond30.9
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.cond30.10:                                    ; preds = %for.cond30.9
  %arrayidx34.11 = getelementptr %struct.rsvp_session, ptr %5, i32 0, i32 5, i32 11
  %32 = ptrtoint ptr %arrayidx34.11 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx34.11, align 4
  %tobool35.not.11 = icmp eq ptr %33, null
  br i1 %tobool35.not.11, label %for.cond30.11, label %for.cond30.10.out_crit_edge

for.cond30.10.out_crit_edge:                      ; preds = %for.cond30.10
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.cond30.11:                                    ; preds = %for.cond30.10
  %arrayidx34.12 = getelementptr %struct.rsvp_session, ptr %5, i32 0, i32 5, i32 12
  %34 = ptrtoint ptr %arrayidx34.12 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx34.12, align 4
  %tobool35.not.12 = icmp eq ptr %35, null
  br i1 %tobool35.not.12, label %for.cond30.12, label %for.cond30.11.out_crit_edge

for.cond30.11.out_crit_edge:                      ; preds = %for.cond30.11
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.cond30.12:                                    ; preds = %for.cond30.11
  %arrayidx34.13 = getelementptr %struct.rsvp_session, ptr %5, i32 0, i32 5, i32 13
  %36 = ptrtoint ptr %arrayidx34.13 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx34.13, align 4
  %tobool35.not.13 = icmp eq ptr %37, null
  br i1 %tobool35.not.13, label %for.cond30.13, label %for.cond30.12.out_crit_edge

for.cond30.12.out_crit_edge:                      ; preds = %for.cond30.12
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.cond30.13:                                    ; preds = %for.cond30.12
  %arrayidx34.14 = getelementptr %struct.rsvp_session, ptr %5, i32 0, i32 5, i32 14
  %38 = ptrtoint ptr %arrayidx34.14 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx34.14, align 4
  %tobool35.not.14 = icmp eq ptr %39, null
  br i1 %tobool35.not.14, label %for.cond30.14, label %for.cond30.13.out_crit_edge

for.cond30.13.out_crit_edge:                      ; preds = %for.cond30.13
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.cond30.14:                                    ; preds = %for.cond30.13
  %arrayidx34.15 = getelementptr %struct.rsvp_session, ptr %5, i32 0, i32 5, i32 15
  %40 = ptrtoint ptr %arrayidx34.15 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx34.15, align 4
  %tobool35.not.15 = icmp eq ptr %41, null
  br i1 %tobool35.not.15, label %for.cond30.15, label %for.cond30.14.out_crit_edge

for.cond30.14.out_crit_edge:                      ; preds = %for.cond30.14
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.cond30.15:                                    ; preds = %for.cond30.14
  %arrayidx34.16 = getelementptr %struct.rsvp_session, ptr %5, i32 0, i32 5, i32 16
  %42 = ptrtoint ptr %arrayidx34.16 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx34.16, align 4
  %tobool35.not.16 = icmp eq ptr %43, null
  br i1 %tobool35.not.16, label %for.cond30.16, label %for.cond30.15.out_crit_edge

for.cond30.15.out_crit_edge:                      ; preds = %for.cond30.15
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.cond30.16:                                    ; preds = %for.cond30.15
  %and39 = and i32 %3, 255
  %arrayidx40 = getelementptr %struct.rsvp_head, ptr %1, i32 0, i32 3, i32 %and39
  %call42 = tail call zeroext i1 @lockdep_rtnl_is_held() #8
  br i1 %call42, label %for.cond30.16.do.end51_crit_edge, label %land.lhs.true43

for.cond30.16.do.end51_crit_edge:                 ; preds = %for.cond30.16
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end51

land.lhs.true43:                                  ; preds = %for.cond30.16
  %call44 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %land.lhs.true43.do.end51_crit_edge, label %land.lhs.true46

land.lhs.true43.do.end51_crit_edge:               ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end51

land.lhs.true46:                                  ; preds = %land.lhs.true43
  %.b154159 = load i1, ptr @rsvp_delete.__warned.30, align 1
  br i1 %.b154159, label %land.lhs.true46.do.end51_crit_edge, label %if.then48

land.lhs.true46.do.end51_crit_edge:               ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end51

if.then48:                                        ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rsvp_delete.__warned.30, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 366, ptr noundef nonnull @.str.8) #8
  br label %do.end51

do.end51:                                         ; preds = %if.then48, %land.lhs.true46.do.end51_crit_edge, %land.lhs.true43.do.end51_crit_edge, %for.cond30.16.do.end51_crit_edge
  %44 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %44)
  %nsp.0171 = load ptr, ptr %arrayidx40, align 4
  %tobool54.not172 = icmp eq ptr %nsp.0171, null
  br i1 %tobool54.not172, label %do.end51.out_crit_edge, label %for.body55.preheader

do.end51.out_crit_edge:                           ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.body55.preheader:                             ; preds = %do.end51
  %cmp56188 = icmp eq ptr %nsp.0171, %5
  br i1 %cmp56188, label %for.body55.preheader.do.body63_crit_edge, label %for.body55.preheader.for.inc81_crit_edge

for.body55.preheader.for.inc81_crit_edge:         ; preds = %for.body55.preheader
  br label %for.inc81

for.body55.preheader.do.body63_crit_edge:         ; preds = %for.body55.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body63

for.body55:                                       ; preds = %do.end93
  %cmp56 = icmp eq ptr %nsp.0, %5
  br i1 %cmp56, label %for.body55.do.body63_crit_edge, label %for.body55.for.inc81_crit_edge

for.body55.for.inc81_crit_edge:                   ; preds = %for.body55
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc81

for.body55.do.body63_crit_edge:                   ; preds = %for.body55
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body63

do.body63:                                        ; preds = %for.body55.do.body63_crit_edge, %for.body55.preheader.do.body63_crit_edge
  %sp.0173.lcssa = phi ptr [ %arrayidx40, %for.body55.preheader.do.body63_crit_edge ], [ %nsp.0174189, %for.body55.do.body63_crit_edge ]
  %45 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %5, align 4
  %47 = ptrtoint ptr %sp.0173.lcssa to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %46, ptr %sp.0173.lcssa, align 4
  %tobool72.not = icmp eq ptr %5, null
  br i1 %tobool72.not, label %do.body63.out_crit_edge, label %do.end76

do.body63.out_crit_edge:                          ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.end76:                                         ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #10
  %rcu = getelementptr inbounds %struct.rsvp_session, ptr %5, i32 0, i32 6
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 104 to ptr)) #8
  br label %out

for.inc81:                                        ; preds = %for.body55.for.inc81_crit_edge, %for.body55.preheader.for.inc81_crit_edge
  %nsp.0174189 = phi ptr [ %nsp.0, %for.body55.for.inc81_crit_edge ], [ %nsp.0171, %for.body55.preheader.for.inc81_crit_edge ]
  %call84 = tail call zeroext i1 @lockdep_rtnl_is_held() #8
  br i1 %call84, label %for.inc81.do.end93_crit_edge, label %land.lhs.true85

for.inc81.do.end93_crit_edge:                     ; preds = %for.inc81
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end93

land.lhs.true85:                                  ; preds = %for.inc81
  %call86 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %land.lhs.true85.do.end93_crit_edge, label %land.lhs.true88

land.lhs.true85.do.end93_crit_edge:               ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end93

land.lhs.true88:                                  ; preds = %land.lhs.true85
  %.b155158 = load i1, ptr @rsvp_delete.__warned.31, align 1
  br i1 %.b155158, label %land.lhs.true88.do.end93_crit_edge, label %if.then90

land.lhs.true88.do.end93_crit_edge:               ; preds = %land.lhs.true88
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end93

if.then90:                                        ; preds = %land.lhs.true88
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rsvp_delete.__warned.31, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 367, ptr noundef nonnull @.str.8) #8
  br label %do.end93

do.end93:                                         ; preds = %if.then90, %land.lhs.true88.do.end93_crit_edge, %land.lhs.true85.do.end93_crit_edge, %for.inc81.do.end93_crit_edge
  %48 = ptrtoint ptr %nsp.0174189 to i32
  call void @__asan_load4_noabort(i32 %48)
  %nsp.0 = load ptr, ptr %nsp.0174189, align 4
  %tobool54.not = icmp eq ptr %nsp.0, null
  br i1 %tobool54.not, label %do.end93.out_crit_edge, label %for.body55

do.end93.out_crit_edge:                           ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.inc97:                                        ; preds = %for.body.for.inc97_crit_edge, %for.body.preheader.for.inc97_crit_edge
  %nfp.0169187 = phi ptr [ %nfp.0, %for.body.for.inc97_crit_edge ], [ %nfp.0166, %for.body.preheader.for.inc97_crit_edge ]
  %call100 = tail call zeroext i1 @lockdep_rtnl_is_held() #8
  br i1 %call100, label %for.inc97.do.end109_crit_edge, label %land.lhs.true101

for.inc97.do.end109_crit_edge:                    ; preds = %for.inc97
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end109

land.lhs.true101:                                 ; preds = %for.inc97
  %call102 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %land.lhs.true101.do.end109_crit_edge, label %land.lhs.true104

land.lhs.true101.do.end109_crit_edge:             ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end109

land.lhs.true104:                                 ; preds = %land.lhs.true101
  %.b156157 = load i1, ptr @rsvp_delete.__warned.32, align 1
  br i1 %.b156157, label %land.lhs.true104.do.end109_crit_edge, label %if.then106

land.lhs.true104.do.end109_crit_edge:             ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end109

if.then106:                                       ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rsvp_delete.__warned.32, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 353, ptr noundef nonnull @.str.8) #8
  br label %do.end109

do.end109:                                        ; preds = %if.then106, %land.lhs.true104.do.end109_crit_edge, %land.lhs.true101.do.end109_crit_edge, %for.inc97.do.end109_crit_edge
  %49 = ptrtoint ptr %nfp.0169187 to i32
  call void @__asan_load4_noabort(i32 %49)
  %nfp.0 = load ptr, ptr %nfp.0169187, align 4
  %tobool16.not = icmp eq ptr %nfp.0, null
  br i1 %tobool16.not, label %do.end109.out_crit_edge, label %for.body

do.end109.out_crit_edge:                          ; preds = %do.end109
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

out:                                              ; preds = %do.end109.out_crit_edge, %do.end93.out_crit_edge, %do.end76, %do.body63.out_crit_edge, %do.end51.out_crit_edge, %for.cond30.15.out_crit_edge, %for.cond30.14.out_crit_edge, %for.cond30.13.out_crit_edge, %for.cond30.12.out_crit_edge, %for.cond30.11.out_crit_edge, %for.cond30.10.out_crit_edge, %for.cond30.9.out_crit_edge, %for.cond30.8.out_crit_edge, %for.cond30.7.out_crit_edge, %for.cond30.6.out_crit_edge, %for.cond30.5.out_crit_edge, %for.cond30.4.out_crit_edge, %for.cond30.3.out_crit_edge, %for.cond30.2.out_crit_edge, %for.cond30.1.out_crit_edge, %for.cond30.out_crit_edge, %do.body23.out_crit_edge, %do.end14.out_crit_edge
  %50 = ptrtoint ptr %last to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %last, align 1
  br label %for.body114

for.cond112:                                      ; preds = %for.body114
  %inc126 = add nuw nsw i32 %h1.0175, 1
  %exitcond.not = icmp eq i32 %inc126, 256
  br i1 %exitcond.not, label %for.cond112.for.end127_crit_edge, label %for.cond112.for.body114_crit_edge

for.cond112.for.body114_crit_edge:                ; preds = %for.cond112
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body114

for.cond112.for.end127_crit_edge:                 ; preds = %for.cond112
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end127

for.body114:                                      ; preds = %for.cond112.for.body114_crit_edge, %out
  %h1.0175 = phi i32 [ 0, %out ], [ %inc126, %for.cond112.for.body114_crit_edge ]
  %arrayidx120 = getelementptr %struct.rsvp_head, ptr %1, i32 0, i32 3, i32 %h1.0175
  %51 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile ptr, ptr %arrayidx120, align 4
  %tobool122.not = icmp eq ptr %52, null
  br i1 %tobool122.not, label %for.cond112, label %if.then123

if.then123:                                       ; preds = %for.body114
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %last to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %last, align 1
  br label %for.end127

for.end127:                                       ; preds = %if.then123, %for.cond112.for.end127_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rsvp_walk(ptr noundef %tp, ptr noundef %arg, i1 noundef zeroext %rtnl_held) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #8
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b120 = load i1, ptr @rsvp_walk.__warned, align 1
  br i1 %.b120, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rsvp_walk.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 658, ptr noundef nonnull @.str.8) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %root = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 1
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root, align 4
  %2 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool4.not = icmp eq i32 %3, 0
  br i1 %tobool4.not, label %for.cond.preheader, label %do.end.cleanup89_crit_edge

do.end.cleanup89_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

for.cond.preheader:                               ; preds = %do.end
  %count = getelementptr inbounds %struct.tcf_walker, ptr %arg, i32 0, i32 2
  %skip = getelementptr inbounds %struct.tcf_walker, ptr %arg, i32 0, i32 1
  %fn = getelementptr inbounds %struct.tcf_walker, ptr %arg, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc86.for.body_crit_edge, %for.cond.preheader
  %h.0130 = phi i32 [ 0, %for.cond.preheader ], [ %inc87.old, %for.inc86.for.body_crit_edge ]
  %call8 = tail call zeroext i1 @lockdep_rtnl_is_held() #8
  br i1 %call8, label %for.body.do.end17_crit_edge, label %land.lhs.true9

for.body.do.end17_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end17

land.lhs.true9:                                   ; preds = %for.body
  %call10 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true9.do.end17_crit_edge, label %land.lhs.true12

land.lhs.true9.do.end17_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end17

land.lhs.true12:                                  ; preds = %land.lhs.true9
  %.b112119 = load i1, ptr @rsvp_walk.__warned.33, align 1
  br i1 %.b112119, label %land.lhs.true12.do.end17_crit_edge, label %if.then14

land.lhs.true12.do.end17_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end17

if.then14:                                        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rsvp_walk.__warned.33, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 667, ptr noundef nonnull @.str.8) #8
  br label %do.end17

do.end17:                                         ; preds = %if.then14, %land.lhs.true12.do.end17_crit_edge, %land.lhs.true9.do.end17_crit_edge, %for.body.do.end17_crit_edge
  %arrayidx = getelementptr %struct.rsvp_head, ptr %1, i32 0, i32 3, i32 %h.0130
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %s.0126 = load ptr, ptr %arrayidx, align 4
  %tobool20.not127 = icmp eq ptr %s.0126, null
  br i1 %tobool20.not127, label %do.end17.for.inc86_crit_edge, label %do.end17.for.cond22.preheader_crit_edge

do.end17.for.cond22.preheader_crit_edge:          ; preds = %do.end17
  br label %for.cond22.preheader

do.end17.for.inc86_crit_edge:                     ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc86

for.cond22.preheader:                             ; preds = %do.end79.for.cond22.preheader_crit_edge, %do.end17.for.cond22.preheader_crit_edge
  %s.0128 = phi ptr [ %s.0, %do.end79.for.cond22.preheader_crit_edge ], [ %s.0126, %do.end17.for.cond22.preheader_crit_edge ]
  br label %for.body24

for.body24:                                       ; preds = %for.inc65.critedge.for.body24_crit_edge, %for.cond22.preheader
  %h1.0125 = phi i32 [ 0, %for.cond22.preheader ], [ %inc66, %for.inc65.critedge.for.body24_crit_edge ]
  %call26 = tail call zeroext i1 @lockdep_rtnl_is_held() #8
  br i1 %call26, label %for.body24.do.end35_crit_edge, label %land.lhs.true27

for.body24.do.end35_crit_edge:                    ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end35

land.lhs.true27:                                  ; preds = %for.body24
  %call28 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %land.lhs.true27.do.end35_crit_edge, label %land.lhs.true30

land.lhs.true27.do.end35_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end35

land.lhs.true30:                                  ; preds = %land.lhs.true27
  %.b113118 = load i1, ptr @rsvp_walk.__warned.34, align 1
  br i1 %.b113118, label %land.lhs.true30.do.end35_crit_edge, label %if.then32

land.lhs.true30.do.end35_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end35

if.then32:                                        ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rsvp_walk.__warned.34, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 672, ptr noundef nonnull @.str.8) #8
  br label %do.end35

do.end35:                                         ; preds = %if.then32, %land.lhs.true30.do.end35_crit_edge, %land.lhs.true27.do.end35_crit_edge, %for.body24.do.end35_crit_edge
  %arrayidx38 = getelementptr %struct.rsvp_session, ptr %s.0128, i32 0, i32 5, i32 %h1.0125
  %5 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %5)
  %f.0122 = load ptr, ptr %arrayidx38, align 4
  %tobool40.not123 = icmp eq ptr %f.0122, null
  br i1 %tobool40.not123, label %do.end35.for.inc65.critedge_crit_edge, label %do.end35.for.body41_crit_edge

do.end35.for.body41_crit_edge:                    ; preds = %do.end35
  br label %for.body41

do.end35.for.inc65.critedge_crit_edge:            ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc65.critedge

for.body41:                                       ; preds = %do.end63.for.body41_crit_edge, %do.end35.for.body41_crit_edge
  %f.0124 = phi ptr [ %f.0, %do.end63.for.body41_crit_edge ], [ %f.0122, %do.end35.for.body41_crit_edge ]
  %6 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count, align 4
  %8 = ptrtoint ptr %skip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %skip, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp42 = icmp slt i32 %7, %9
  br i1 %cmp42, label %for.body41.do.body53_crit_edge, label %if.end45

for.body41.do.body53_crit_edge:                   ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body53

if.end45:                                         ; preds = %for.body41
  %10 = ptrtoint ptr %fn to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fn, align 4
  %call46 = tail call i32 %11(ptr noundef %tp, ptr noundef nonnull %f.0124, ptr noundef %arg) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %if.then48, label %if.end50

if.then48:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %arg, align 4
  br label %cleanup89

if.end50:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %count, align 4
  br label %do.body53

do.body53:                                        ; preds = %if.end50, %for.body41.do.body53_crit_edge
  %storemerge.in = phi i32 [ %14, %if.end50 ], [ %7, %for.body41.do.body53_crit_edge ]
  %storemerge = add i32 %storemerge.in, 1
  %15 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %storemerge, ptr %count, align 4
  %call54 = tail call zeroext i1 @lockdep_rtnl_is_held() #8
  br i1 %call54, label %do.body53.do.end63_crit_edge, label %land.lhs.true55

do.body53.do.end63_crit_edge:                     ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end63

land.lhs.true55:                                  ; preds = %do.body53
  %call56 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %land.lhs.true55.do.end63_crit_edge, label %land.lhs.true58

land.lhs.true55.do.end63_crit_edge:               ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end63

land.lhs.true58:                                  ; preds = %land.lhs.true55
  %.b114117 = load i1, ptr @rsvp_walk.__warned.35, align 1
  br i1 %.b114117, label %land.lhs.true58.do.end63_crit_edge, label %if.then60

land.lhs.true58.do.end63_crit_edge:               ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end63

if.then60:                                        ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rsvp_walk.__warned.35, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 673, ptr noundef nonnull @.str.8) #8
  br label %do.end63

do.end63:                                         ; preds = %if.then60, %land.lhs.true58.do.end63_crit_edge, %land.lhs.true55.do.end63_crit_edge, %do.body53.do.end63_crit_edge
  %16 = ptrtoint ptr %f.0124 to i32
  call void @__asan_load4_noabort(i32 %16)
  %f.0 = load ptr, ptr %f.0124, align 4
  %tobool40.not = icmp eq ptr %f.0, null
  br i1 %tobool40.not, label %do.end63.for.inc65.critedge_crit_edge, label %do.end63.for.body41_crit_edge

do.end63.for.body41_crit_edge:                    ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body41

do.end63.for.inc65.critedge_crit_edge:            ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc65.critedge

for.inc65.critedge:                               ; preds = %do.end63.for.inc65.critedge_crit_edge, %do.end35.for.inc65.critedge_crit_edge
  %inc66 = add nuw nsw i32 %h1.0125, 1
  %exitcond.not = icmp eq i32 %inc66, 17
  br i1 %exitcond.not, label %do.body69, label %for.inc65.critedge.for.body24_crit_edge

for.inc65.critedge.for.body24_crit_edge:          ; preds = %for.inc65.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body24

do.body69:                                        ; preds = %for.inc65.critedge
  %call70 = tail call zeroext i1 @lockdep_rtnl_is_held() #8
  br i1 %call70, label %do.body69.do.end79_crit_edge, label %land.lhs.true71

do.body69.do.end79_crit_edge:                     ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end79

land.lhs.true71:                                  ; preds = %do.body69
  %call72 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %land.lhs.true71.do.end79_crit_edge, label %land.lhs.true74

land.lhs.true71.do.end79_crit_edge:               ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end79

land.lhs.true74:                                  ; preds = %land.lhs.true71
  %.b115116 = load i1, ptr @rsvp_walk.__warned.36, align 1
  br i1 %.b115116, label %land.lhs.true74.do.end79_crit_edge, label %if.then76

land.lhs.true74.do.end79_crit_edge:               ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end79

if.then76:                                        ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rsvp_walk.__warned.36, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 668, ptr noundef nonnull @.str.8) #8
  br label %do.end79

do.end79:                                         ; preds = %if.then76, %land.lhs.true74.do.end79_crit_edge, %land.lhs.true71.do.end79_crit_edge, %do.body69.do.end79_crit_edge
  %17 = ptrtoint ptr %s.0128 to i32
  call void @__asan_load4_noabort(i32 %17)
  %s.0 = load ptr, ptr %s.0128, align 4
  %tobool20.not = icmp eq ptr %s.0, null
  br i1 %tobool20.not, label %do.end79.for.inc86_crit_edge, label %do.end79.for.cond22.preheader_crit_edge

do.end79.for.cond22.preheader_crit_edge:          ; preds = %do.end79
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond22.preheader

do.end79.for.inc86_crit_edge:                     ; preds = %do.end79
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc86

for.inc86:                                        ; preds = %do.end79.for.inc86_crit_edge, %do.end17.for.inc86_crit_edge
  %inc87.old = add i32 %h.0130, 1
  %cmp.old = icmp ult i32 %inc87.old, 256
  br i1 %cmp.old, label %for.inc86.for.body_crit_edge, label %for.inc86.cleanup89_crit_edge

for.inc86.cleanup89_crit_edge:                    ; preds = %for.inc86
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

for.inc86.for.body_crit_edge:                     ; preds = %for.inc86
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup89:                                        ; preds = %for.inc86.cleanup89_crit_edge, %if.then48, %do.end.cleanup89_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rsvp_bind_class(ptr noundef %fh, i32 noundef %classid, i32 noundef %cl, ptr noundef %q, i32 noundef %base) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fh, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %land.lhs.true

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

land.lhs.true:                                    ; preds = %entry
  %res = getelementptr inbounds %struct.rsvp_filter, ptr %fh, i32 0, i32 4
  %classid1 = getelementptr inbounds %struct.rsvp_filter, ptr %fh, i32 0, i32 4, i32 0, i32 0, i32 1
  %0 = ptrtoint ptr %classid1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %classid1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %classid)
  %cmp = icmp eq i32 %1, %classid
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
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
  %call.i = tail call i32 %7(ptr noundef %q, i32 noundef %base, i32 noundef %9) #8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %res, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !116
  tail call void @llvm.prefetch.p0(ptr %res, i32 1, i32 3, i32 1) #8
  %10 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %call.i, ptr %res) #8, !srcloc !117
  %asmresult.i.i.i = extractvalue { i32, i32 } %10, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !118
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %tobool.not.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i, label %if.then3.if.end6_crit_edge, label %if.then3.if.end6.sink.split_crit_edge

if.then3.if.end6.sink.split_crit_edge:            ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.sink.split

if.then3.if.end6_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.else:                                          ; preds = %if.then
  %call.i.i.i11 = tail call zeroext i1 @__kasan_check_write(ptr noundef %res, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !116
  tail call void @llvm.prefetch.p0(ptr %res, i32 1, i32 3, i32 1) #8
  %11 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %res) #8, !srcloc !117
  %asmresult.i.i.i12 = extractvalue { i32, i32 } %11, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !118
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i12)
  %cmp.not.i = icmp eq i32 %asmresult.i.i.i12, 0
  br i1 %cmp.not.i, label %if.else.if.end6_crit_edge, label %if.then.i16

if.else.if.end6_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then.i16:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void %17(ptr noundef %q, i32 noundef %asmresult.i.i.i12.sink) #8
  br label %if.end6

if.end6:                                          ; preds = %if.end6.sink.split, %if.else.if.end6_crit_edge, %if.then3.if.end6_crit_edge, %land.lhs.true.if.end6_crit_edge, %entry.if.end6_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsvp_dump(ptr nocapture noundef readnone %net, ptr nocapture noundef readnone %tp, ptr noundef %fh, ptr noundef %skb, ptr nocapture noundef writeonly %t, i1 noundef zeroext %rtnl_held) #2 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  %pinfo = alloca %struct.tc_rsvp_pinfo, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %pinfo) #8
  %0 = getelementptr inbounds %struct.tc_rsvp_pinfo, ptr %pinfo, i32 0, i32 1
  %1 = getelementptr inbounds %struct.tc_rsvp_pinfo, ptr %pinfo, i32 0, i32 2
  %2 = getelementptr inbounds %struct.tc_rsvp_pinfo, ptr %pinfo, i32 0, i32 3
  %3 = getelementptr inbounds %struct.tc_rsvp_pinfo, ptr %pinfo, i32 0, i32 4
  %4 = getelementptr inbounds %struct.tc_rsvp_pinfo, ptr %pinfo, i32 0, i32 5
  %cmp = icmp eq ptr %fh, null
  %5 = call ptr @memset(ptr %pinfo, i32 255, i32 28)
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %sess = getelementptr inbounds %struct.rsvp_filter, ptr %fh, i32 0, i32 7
  %8 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sess, align 4
  %handle = getelementptr inbounds %struct.rsvp_filter, ptr %fh, i32 0, i32 6
  %10 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %handle, align 4
  %tcm_handle = getelementptr inbounds %struct.tcmsg, ptr %t, i32 0, i32 4
  %12 = ptrtoint ptr %tcm_handle to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %tcm_handle, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %13 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tail.i.i, align 8
  %call1.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 0, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %cmp170 = icmp eq ptr %14, null
  %cmp1 = select i1 %cmp.i, i1 true, i1 %cmp170
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %dst = getelementptr inbounds %struct.rsvp_session, ptr %9, i32 0, i32 1
  %call4 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 16, ptr noundef %dst) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end6, label %if.end3.if.then.i.i_crit_edge

if.end3.if.then.i.i_crit_edge:                    ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

if.end6:                                          ; preds = %if.end3
  %dpi7 = getelementptr inbounds %struct.rsvp_session, ptr %9, i32 0, i32 2
  %15 = call ptr @memcpy(ptr %pinfo, ptr %dpi7, i32 12)
  %spi8 = getelementptr inbounds %struct.rsvp_filter, ptr %fh, i32 0, i32 2
  %16 = call ptr @memcpy(ptr %0, ptr %spi8, i32 12)
  %protocol = getelementptr inbounds %struct.rsvp_session, ptr %9, i32 0, i32 3
  %17 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %protocol, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %1, align 4
  %tunnelid = getelementptr inbounds %struct.rsvp_session, ptr %9, i32 0, i32 4
  %20 = ptrtoint ptr %tunnelid to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %tunnelid, align 1
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %2, align 1
  %tunnelhdr = getelementptr inbounds %struct.rsvp_filter, ptr %fh, i32 0, i32 3
  %23 = ptrtoint ptr %tunnelhdr to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %tunnelhdr, align 4
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %3, align 2
  %26 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %4, align 1
  %call12 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 28, ptr noundef nonnull %pinfo) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end6.if.then.i.i_crit_edge

if.end6.if.then.i.i_crit_edge:                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

if.end15:                                         ; preds = %if.end6
  %classid = getelementptr inbounds %struct.rsvp_filter, ptr %fh, i32 0, i32 4, i32 0, i32 0, i32 1
  %27 = ptrtoint ptr %classid to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %classid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool16.not = icmp eq i32 %28, 0
  br i1 %tobool16.not, label %if.end15.if.end22_crit_edge, label %land.lhs.true

if.end15.if.end22_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

land.lhs.true:                                    ; preds = %if.end15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #8
  %29 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool20.not = icmp eq i32 %call.i, 0
  br i1 %tobool20.not, label %land.lhs.true.if.end22_crit_edge, label %land.lhs.true.if.then.i.i_crit_edge

land.lhs.true.if.then.i.i_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.end22:                                         ; preds = %land.lhs.true.if.end22_crit_edge, %if.end15.if.end22_crit_edge
  %30 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %handle, align 4
  %32 = and i32 %31, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %32)
  %cmp24.not = icmp eq i32 %32, 4096
  br i1 %cmp24.not, label %if.end22.if.end29_crit_edge, label %land.lhs.true25

if.end22.if.end29_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

land.lhs.true25:                                  ; preds = %if.end22
  %src = getelementptr inbounds %struct.rsvp_filter, ptr %fh, i32 0, i32 1
  %call26 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 16, ptr noundef %src) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %land.lhs.true25.if.end29_crit_edge, label %land.lhs.true25.if.then.i.i_crit_edge

land.lhs.true25.if.then.i.i_crit_edge:            ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

land.lhs.true25.if.end29_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.end29:                                         ; preds = %land.lhs.true25.if.end29_crit_edge, %if.end22.if.end29_crit_edge
  %exts = getelementptr inbounds %struct.rsvp_filter, ptr %fh, i32 0, i32 5
  %call30 = call i32 @tcf_exts_dump(ptr noundef %skb, ptr noundef %exts) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.end29.if.then.i.i_crit_edge, label %if.end33

if.end29.if.then.i.i_crit_edge:                   ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

if.end33:                                         ; preds = %if.end29
  %33 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %34 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %14 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %35 = ptrtoint ptr %14 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv.i, ptr %14, align 2
  %call36 = call i32 @tcf_exts_dump_stats(ptr noundef %skb, ptr noundef %exts) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %if.end33.if.then.i.i_crit_edge, label %if.end39

if.end33.if.then.i.i_crit_edge:                   ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

if.end39:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  %len40 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %36 = ptrtoint ptr %len40 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len40, align 4
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end33.if.then.i.i_crit_edge, %if.end29.if.then.i.i_crit_edge, %land.lhs.true25.if.then.i.i_crit_edge, %land.lhs.true.if.then.i.i_crit_edge, %if.end6.if.then.i.i_crit_edge, %if.end3.if.then.i.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %38 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp ugt ptr %39, %14
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.if.end.i.i_crit_edge, !prof !111

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 991, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %40 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %14 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %41 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end39, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %7, %if.then ], [ %37, %if.end39 ], [ -1, %if.end.cleanup_crit_edge ], [ -1, %if.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %pinfo) #8
  ret i32 %retval.0
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
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_action_exec(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rsvp_delete_filter(ptr nocapture noundef readonly %tp, ptr noundef %f) unnamed_addr #2 align 64 {
entry:
  %old.i.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chain.i = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 7
  %0 = ptrtoint ptr %chain.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chain.i, align 4
  %block.i = getelementptr inbounds %struct.tcf_chain, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %block.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %block.i, align 4
  %q1.i = getelementptr inbounds %struct.tcf_block, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %q1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %q1.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.tcf_unbind_filter.exit_crit_edge, label %if.end.i

entry.tcf_unbind_filter.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %tcf_unbind_filter.exit

if.end.i:                                         ; preds = %entry
  %res = getelementptr inbounds %struct.rsvp_filter, ptr %f, i32 0, i32 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %res, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !116
  tail call void @llvm.prefetch.p0(ptr %res, i32 1, i32 3, i32 1) #8
  %6 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %res) #8, !srcloc !117
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !118
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i, label %if.end.i.tcf_unbind_filter.exit_crit_edge, label %if.then.i.i

if.end.i.tcf_unbind_filter.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tcf_unbind_filter.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %ops.i.i = getelementptr inbounds %struct.Qdisc, ptr %5, i32 0, i32 4
  %7 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i.i, align 16
  %cl_ops.i.i = getelementptr inbounds %struct.Qdisc_ops, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %cl_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cl_ops.i.i, align 4
  %unbind_tcf.i.i = getelementptr inbounds %struct.Qdisc_class_ops, ptr %10, i32 0, i32 11
  %11 = ptrtoint ptr %unbind_tcf.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %unbind_tcf.i.i, align 4
  tail call void %12(ptr noundef nonnull %5, i32 noundef %asmresult.i.i.i.i) #8
  br label %tcf_unbind_filter.exit

tcf_unbind_filter.exit:                           ; preds = %if.then.i.i, %if.end.i.tcf_unbind_filter.exit_crit_edge, %entry.tcf_unbind_filter.exit_crit_edge
  %net.i = getelementptr inbounds %struct.rsvp_filter, ptr %f, i32 0, i32 5, i32 3
  %13 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %net.i, align 4
  %count.i.i = getelementptr inbounds %struct.net, ptr %14, i32 0, i32 14, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #8
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %count.i.i, i32 noundef 4) #8
  %15 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %count.i.i, align 4
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %tcf_unbind_filter.exit
  %17 = phi i32 [ %16, %tcf_unbind_filter.exit ], [ %asmresult3.i.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ]
  %18 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %old.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i.i.i.i.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i.i.i.i.i, label %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %do.cond.i.i.i.i.i

do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i.i.i.i.i

do.cond.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i
  %add.i.i.i.i.i = add i32 %17, 1
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #8
  %call.i3.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i, i32 noundef 4) #8
  %19 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %old.i.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #8
  br label %do.body.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i:                          ; preds = %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i.i
  %21 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 %20, i32 %add.i.i.i.i.i, ptr elementtype(i32) %count.i.i) #8, !srcloc !119
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %21, 0
  %tobool.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i:   ; preds = %do.body.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %21, 1
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i, %20
  br i1 %cmp.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, !prof !120

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i.i.i.i.i

if.end4.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge
  %22 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %old.i.i.i.i.i, align 4
  %add5.i.i.i.i.i = add i32 %23, 1
  %24 = or i32 %add5.i.i.i.i.i, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %.not.i.i.i.i.i = icmp sgt i32 %24, -1
  br i1 %.not.i.i.i.i.i, label %if.end4.i.i.i.i.i.maybe_get_net.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !120

if.end4.i.i.i.i.i.maybe_get_net.exit.i_crit_edge: ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %maybe_get_net.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %count.i.i, i32 noundef 0) #8
  br label %maybe_get_net.exit.i

maybe_get_net.exit.i:                             ; preds = %if.then10.i.i.i.i.i, %if.end4.i.i.i.i.i.maybe_get_net.exit.i_crit_edge
  %25 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %old.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool12.i.i.i.not.i.i = icmp eq i32 %26, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #8
  %spec.select.i.i = select i1 %tobool12.i.i.i.not.i.i, ptr null, ptr %14
  %27 = ptrtoint ptr %net.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %spec.select.i.i, ptr %net.i, align 4
  %tobool.not.i5 = icmp eq ptr %spec.select.i.i, null
  br i1 %tobool.not.i5, label %maybe_get_net.exit.i.if.else_crit_edge, label %tcf_exts_get_net.exit

maybe_get_net.exit.i.if.else_crit_edge:           ; preds = %maybe_get_net.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

tcf_exts_get_net.exit:                            ; preds = %maybe_get_net.exit.i
  %ns_tracker.i = getelementptr inbounds %struct.rsvp_filter, ptr %f, i32 0, i32 5, i32 4
  %refcnt_tracker.i.i = getelementptr inbounds %struct.net, ptr %spec.select.i.i, i32 0, i32 15
  %call.i.i = call i32 @ref_tracker_alloc(ptr noundef %refcnt_tracker.i.i, ptr noundef %ns_tracker.i, i32 noundef 3264) #8
  %28 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pr = load ptr, ptr %net.i, align 4
  %cmp.i.not = icmp eq ptr %.pr, null
  br i1 %cmp.i.not, label %tcf_exts_get_net.exit.if.else_crit_edge, label %if.then

tcf_exts_get_net.exit.if.else_crit_edge:          ; preds = %tcf_exts_get_net.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then:                                          ; preds = %tcf_exts_get_net.exit
  call void @__sanitizer_cov_trace_pc() #10
  %rwork = getelementptr inbounds %struct.rsvp_filter, ptr %f, i32 0, i32 8
  %call1 = call zeroext i1 @tcf_queue_work(ptr noundef %rwork, ptr noundef nonnull @rsvp_delete_filter_work) #8
  br label %if.end

if.else:                                          ; preds = %tcf_exts_get_net.exit.if.else_crit_edge, %maybe_get_net.exit.i.if.else_crit_edge
  call fastcc void @__rsvp_delete_filter(ptr noundef %f)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tcf_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rsvp_delete_filter_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -80
  tail call void @rtnl_lock() #8
  tail call fastcc void @__rsvp_delete_filter(ptr noundef %add.ptr)
  tail call void @rtnl_unlock() #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__rsvp_delete_filter(ptr noundef %f) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %exts = getelementptr inbounds %struct.rsvp_filter, ptr %f, i32 0, i32 5
  tail call void @tcf_exts_destroy(ptr noundef %exts) #8
  %net.i = getelementptr inbounds %struct.rsvp_filter, ptr %f, i32 0, i32 5, i32 3
  %0 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.tcf_exts_put_net.exit_crit_edge, label %if.then.i

entry.tcf_exts_put_net.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %tcf_exts_put_net.exit

if.then.i:                                        ; preds = %entry
  %ns_tracker.i = getelementptr inbounds %struct.rsvp_filter, ptr %f, i32 0, i32 5, i32 4
  %refcnt_tracker.i.i.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 15
  %call.i.i.i = tail call i32 @ref_tracker_free(ptr noundef %refcnt_tracker.i.i.i, ptr noundef %ns_tracker.i) #8
  %count.i.i.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 14, i32 3
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !121
  tail call void @llvm.prefetch.p0(ptr %count.i.i.i, i32 1, i32 3, i32 1) #8
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i.i, ptr %count.i.i.i, i32 1, ptr elementtype(i32) %count.i.i.i) #8, !srcloc !122
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.tcf_exts_put_net.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !120

if.end5.i.i.i.i.i.i.tcf_exts_put_net.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tcf_exts_put_net.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %count.i.i.i, i32 noundef 3) #8
  br label %tcf_exts_put_net.exit

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !123
  tail call void @__put_net(ptr noundef nonnull %1) #8
  br label %tcf_exts_put_net.exit

tcf_exts_put_net.exit:                            ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.tcf_exts_put_net.exit_crit_edge, %entry.tcf_exts_put_net.exit_crit_edge
  tail call void @kfree(ptr noundef %f) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

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
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ref_tracker_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_net(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tcf_exts_init(ptr nocapture noundef writeonly %exts, ptr noundef %net) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %exts to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %exts, align 4
  %nr_actions = getelementptr inbounds %struct.tcf_exts, ptr %exts, i32 0, i32 1
  %1 = ptrtoint ptr %nr_actions to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %nr_actions, align 4
  %net1 = getelementptr inbounds %struct.tcf_exts, ptr %exts, i32 0, i32 3
  %2 = ptrtoint ptr %net1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %net, ptr %net1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 128) #11
  %actions = getelementptr inbounds %struct.tcf_exts, ptr %exts, i32 0, i32 2
  %4 = ptrtoint ptr %actions to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i.i, ptr %actions, align 4
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %action3 = getelementptr inbounds %struct.tcf_exts, ptr %exts, i32 0, i32 5
  %5 = ptrtoint ptr %action3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 6, ptr %action3, align 4
  %police4 = getelementptr inbounds %struct.tcf_exts, ptr %exts, i32 0, i32 6
  %6 = ptrtoint ptr %police4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 5, ptr %police4, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_exts_validate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tcf_bind_filter(ptr nocapture noundef readonly %tp, ptr noundef %r, i32 noundef %base) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %chain = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 7
  %0 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chain, align 4
  %block = getelementptr inbounds %struct.tcf_chain, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %block, align 4
  %q1 = getelementptr inbounds %struct.tcf_block, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %q1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %q1, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags.i = getelementptr inbounds %struct.Qdisc, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.end.sch_tree_lock.exit_crit_edge

if.end.sch_tree_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sch_tree_lock.exit

if.else.i:                                        ; preds = %if.end
  %dev_queue.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %5, i32 0, i32 9
  %8 = ptrtoint ptr %dev_queue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_queue.i.i.i, align 8
  %qdisc_sleeping.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %qdisc_sleeping.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %qdisc_sleeping.i.i.i, align 4
  %call1.i.i = tail call i32 @rtnl_is_locked() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i, label %if.else.i.sch_tree_lock.exit_crit_edge

if.else.i.sch_tree_lock.exit_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sch_tree_lock.exit

land.rhs.i.i:                                     ; preds = %if.else.i
  %.b41.i.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i, label %land.rhs.i.i.sch_tree_lock.exit_crit_edge, label %if.then.i.i, !prof !120

land.rhs.i.i.sch_tree_lock.exit_crit_edge:        ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sch_tree_lock.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.20, i32 noundef 596) #8
  br label %sch_tree_lock.exit

sch_tree_lock.exit:                               ; preds = %if.then.i.i, %land.rhs.i.i.sch_tree_lock.exit_crit_edge, %if.else.i.sch_tree_lock.exit_crit_edge, %if.end.sch_tree_lock.exit_crit_edge
  %.sink.i = phi ptr [ %5, %if.end.sch_tree_lock.exit_crit_edge ], [ %11, %if.else.i.sch_tree_lock.exit_crit_edge ], [ %11, %land.rhs.i.i.sch_tree_lock.exit_crit_edge ], [ %11, %if.then.i.i ]
  %lock.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %.sink.i, i32 0, i32 17, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i.i.i) #8
  %ops.i = getelementptr inbounds %struct.Qdisc, ptr %5, i32 0, i32 4
  %12 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i, align 16
  %cl_ops.i = getelementptr inbounds %struct.Qdisc_ops, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %cl_ops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cl_ops.i, align 4
  %bind_tcf.i = getelementptr inbounds %struct.Qdisc_class_ops, ptr %15, i32 0, i32 10
  %16 = ptrtoint ptr %bind_tcf.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bind_tcf.i, align 4
  %classid.i = getelementptr inbounds %struct.anon.145, ptr %r, i32 0, i32 1
  %18 = ptrtoint ptr %classid.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %classid.i, align 4
  %call.i = tail call i32 %17(ptr noundef nonnull %5, i32 noundef %base, i32 noundef %19) #8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %r, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !116
  tail call void @llvm.prefetch.p0(ptr %r, i32 1, i32 3, i32 1) #8
  %20 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %call.i, ptr %r) #8, !srcloc !117
  %asmresult.i.i.i = extractvalue { i32, i32 } %20, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !118
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %tobool.not.i5 = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i5, label %sch_tree_lock.exit.__tcf_bind_filter.exit_crit_edge, label %if.then.i

sch_tree_lock.exit.__tcf_bind_filter.exit_crit_edge: ; preds = %sch_tree_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %__tcf_bind_filter.exit

if.then.i:                                        ; preds = %sch_tree_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops.i, align 16
  %cl_ops3.i = getelementptr inbounds %struct.Qdisc_ops, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %cl_ops3.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cl_ops3.i, align 4
  %unbind_tcf.i = getelementptr inbounds %struct.Qdisc_class_ops, ptr %24, i32 0, i32 11
  %25 = ptrtoint ptr %unbind_tcf.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %unbind_tcf.i, align 4
  tail call void %26(ptr noundef nonnull %5, i32 noundef %asmresult.i.i.i) #8
  br label %__tcf_bind_filter.exit

__tcf_bind_filter.exit:                           ; preds = %if.then.i, %sch_tree_lock.exit.__tcf_bind_filter.exit_crit_edge
  %27 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags.i, align 8
  %and.i7 = and i32 %28, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i7)
  %tobool.not.i8 = icmp eq i32 %and.i7, 0
  br i1 %tobool.not.i8, label %if.else.i13, label %__tcf_bind_filter.exit.sch_tree_unlock.exit_crit_edge

__tcf_bind_filter.exit.sch_tree_unlock.exit_crit_edge: ; preds = %__tcf_bind_filter.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sch_tree_unlock.exit

if.else.i13:                                      ; preds = %__tcf_bind_filter.exit
  %dev_queue.i.i.i9 = getelementptr inbounds %struct.Qdisc, ptr %5, i32 0, i32 9
  %29 = ptrtoint ptr %dev_queue.i.i.i9 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev_queue.i.i.i9, align 8
  %qdisc_sleeping.i.i.i10 = getelementptr inbounds %struct.netdev_queue, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %qdisc_sleeping.i.i.i10 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %qdisc_sleeping.i.i.i10, align 4
  %call1.i.i11 = tail call i32 @rtnl_is_locked() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i11)
  %tobool.not.i.i12 = icmp eq i32 %call1.i.i11, 0
  br i1 %tobool.not.i.i12, label %land.rhs.i.i15, label %if.else.i13.sch_tree_unlock.exit_crit_edge

if.else.i13.sch_tree_unlock.exit_crit_edge:       ; preds = %if.else.i13
  call void @__sanitizer_cov_trace_pc() #10
  br label %sch_tree_unlock.exit

land.rhs.i.i15:                                   ; preds = %if.else.i13
  %.b41.i.i14 = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i14, label %land.rhs.i.i15.sch_tree_unlock.exit_crit_edge, label %if.then.i.i16, !prof !120

land.rhs.i.i15.sch_tree_unlock.exit_crit_edge:    ; preds = %land.rhs.i.i15
  call void @__sanitizer_cov_trace_pc() #10
  br label %sch_tree_unlock.exit

if.then.i.i16:                                    ; preds = %land.rhs.i.i15
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.20, i32 noundef 596) #8
  br label %sch_tree_unlock.exit

sch_tree_unlock.exit:                             ; preds = %if.then.i.i16, %land.rhs.i.i15.sch_tree_unlock.exit_crit_edge, %if.else.i13.sch_tree_unlock.exit_crit_edge, %__tcf_bind_filter.exit.sch_tree_unlock.exit_crit_edge
  %.sink.i17 = phi ptr [ %5, %__tcf_bind_filter.exit.sch_tree_unlock.exit_crit_edge ], [ %32, %if.else.i13.sch_tree_unlock.exit_crit_edge ], [ %32, %land.rhs.i.i15.sch_tree_unlock.exit_crit_edge ], [ %32, %if.then.i.i16 ]
  %lock.i.i.i18 = getelementptr inbounds %struct.Qdisc, ptr %.sink.i17, i32 0, i32 17, i32 3
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i.i18) #8
  br label %cleanup

cleanup:                                          ; preds = %sch_tree_unlock.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcf_exts_change(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rsvp_replace(ptr nocapture noundef readonly %tp, ptr noundef %n, i32 noundef %h) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #8
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b140 = load i1, ptr @rsvp_replace.__warned, align 1
  br i1 %.b140, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rsvp_replace.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 222, ptr noundef nonnull @.str.8) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %root = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 1
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root, align 4
  %and = and i32 %h, 255
  %shr = lshr i32 %h, 8
  %and4 = and i32 %shr, 255
  %call6 = tail call zeroext i1 @lockdep_rtnl_is_held() #8
  br i1 %call6, label %do.end.do.end15_crit_edge, label %land.lhs.true7

do.end.do.end15_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end15

land.lhs.true7:                                   ; preds = %do.end
  %call8 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true7.do.end15_crit_edge, label %land.lhs.true10

land.lhs.true7.do.end15_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end15

land.lhs.true10:                                  ; preds = %land.lhs.true7
  %.b134139 = load i1, ptr @rsvp_replace.__warned.22, align 1
  br i1 %.b134139, label %land.lhs.true10.do.end15_crit_edge, label %if.then12

land.lhs.true10.do.end15_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end15

if.then12:                                        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rsvp_replace.__warned.22, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 229, ptr noundef nonnull @.str.8) #8
  br label %do.end15

do.end15:                                         ; preds = %if.then12, %land.lhs.true10.do.end15_crit_edge, %land.lhs.true7.do.end15_crit_edge, %do.end.do.end15_crit_edge
  %arrayidx = getelementptr %struct.rsvp_head, ptr %1, i32 0, i32 3, i32 %and
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool17.not = icmp eq ptr %3, null
  br i1 %tobool17.not, label %do.body113, label %for.body

for.body:                                         ; preds = %do.end15
  %arrayidx19 = getelementptr %struct.rsvp_session, ptr %3, i32 0, i32 5, i32 %and4
  %call21 = tail call zeroext i1 @lockdep_rtnl_is_held() #8
  br i1 %call21, label %for.body.do.end30_crit_edge, label %land.lhs.true22

for.body.do.end30_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end30

land.lhs.true22:                                  ; preds = %for.body
  %call23 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %land.lhs.true22.do.end30_crit_edge, label %land.lhs.true25

land.lhs.true22.do.end30_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end30

land.lhs.true25:                                  ; preds = %land.lhs.true22
  %.b135138 = load i1, ptr @rsvp_replace.__warned.23, align 1
  br i1 %.b135138, label %land.lhs.true25.do.end30_crit_edge, label %if.then27

land.lhs.true25.do.end30_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end30

if.then27:                                        ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rsvp_replace.__warned.23, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 231, ptr noundef nonnull @.str.8) #8
  br label %do.end30

do.end30:                                         ; preds = %if.then27, %land.lhs.true25.do.end30_crit_edge, %land.lhs.true22.do.end30_crit_edge, %for.body.do.end30_crit_edge
  %4 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %4)
  %pins.0141 = load ptr, ptr %arrayidx19, align 4
  %handle142 = getelementptr inbounds %struct.rsvp_filter, ptr %pins.0141, i32 0, i32 6
  %5 = ptrtoint ptr %handle142 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %handle142, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %h)
  %cmp143 = icmp eq i32 %6, %h
  br i1 %cmp143, label %do.end30.do.body39_crit_edge, label %do.end30.for.inc_crit_edge

do.end30.for.inc_crit_edge:                       ; preds = %do.end30
  br label %for.inc

do.end30.do.body39_crit_edge:                     ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body39

do.body39:                                        ; preds = %do.end96.do.body39_crit_edge, %do.end30.do.body39_crit_edge
  %ins.0.lcssa = phi ptr [ %arrayidx19, %do.end30.do.body39_crit_edge ], [ %pins.0144, %do.end96.do.body39_crit_edge ]
  %pins.0.lcssa = phi ptr [ %pins.0141, %do.end30.do.body39_crit_edge ], [ %pins.0, %do.end96.do.body39_crit_edge ]
  %7 = ptrtoint ptr %pins.0.lcssa to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pins.0.lcssa, align 4
  %9 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %8, ptr %n, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !124
  %10 = ptrtoint ptr %ins.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %n, ptr %ins.0.lcssa, align 4
  ret void

for.inc:                                          ; preds = %do.end96.for.inc_crit_edge, %do.end30.for.inc_crit_edge
  %pins.0144 = phi ptr [ %pins.0, %do.end96.for.inc_crit_edge ], [ %pins.0141, %do.end30.for.inc_crit_edge ]
  %call87 = tail call zeroext i1 @lockdep_rtnl_is_held() #8
  br i1 %call87, label %for.inc.do.end96_crit_edge, label %land.lhs.true88

for.inc.do.end96_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end96

land.lhs.true88:                                  ; preds = %for.inc
  %call89 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %land.lhs.true88.do.end96_crit_edge, label %land.lhs.true91

land.lhs.true88.do.end96_crit_edge:               ; preds = %land.lhs.true88
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end96

land.lhs.true91:                                  ; preds = %land.lhs.true88
  %.b136137 = load i1, ptr @rsvp_replace.__warned.24, align 1
  br i1 %.b136137, label %land.lhs.true91.do.end96_crit_edge, label %if.then93

land.lhs.true91.do.end96_crit_edge:               ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end96

if.then93:                                        ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rsvp_replace.__warned.24, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 232, ptr noundef nonnull @.str.8) #8
  br label %do.end96

do.end96:                                         ; preds = %if.then93, %land.lhs.true91.do.end96_crit_edge, %land.lhs.true88.do.end96_crit_edge, %for.inc.do.end96_crit_edge
  %11 = ptrtoint ptr %pins.0144 to i32
  call void @__asan_load4_noabort(i32 %11)
  %pins.0 = load ptr, ptr %pins.0144, align 4
  %handle = getelementptr inbounds %struct.rsvp_filter, ptr %pins.0, i32 0, i32 6
  %12 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %handle, align 4
  %cmp = icmp eq i32 %13, %h
  br i1 %cmp, label %do.end96.do.body39_crit_edge, label %do.end96.for.inc_crit_edge

do.end96.for.inc_crit_edge:                       ; preds = %do.end96
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.end96.do.body39_crit_edge:                     ; preds = %do.end96
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body39

do.body113:                                       ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/sched/cls_rsvp.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 244, 0\0A.popsection", ""() #8, !srcloc !125
  unreachable
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gen_handle(ptr nocapture noundef readonly %tp, i32 noundef %salt) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #8
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b19 = load i1, ptr @gen_handle.__warned, align 1
  br i1 %.b19, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @gen_handle.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 393, ptr noundef nonnull @.str.8) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %root = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 1
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root, align 4
  %hgenerator = getelementptr inbounds %struct.rsvp_head, ptr %1, i32 0, i32 1
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %do.end
  %i.0 = phi i32 [ 65535, %do.end ], [ %dec, %while.body.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0)
  %cmp.not = icmp eq i32 %i.0, 0
  br i1 %cmp.not, label %while.cond.cleanup13_crit_edge, label %while.body

while.cond.cleanup13_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup13

while.body:                                       ; preds = %while.cond
  %dec = add nsw i32 %i.0, -1
  %2 = ptrtoint ptr %hgenerator to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hgenerator, align 4
  %add = add i32 %3, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp4 = icmp eq i32 %add, 0
  %spec.select = select i1 %cmp4, i32 65536, i32 %add
  %4 = ptrtoint ptr %hgenerator to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %spec.select, ptr %hgenerator, align 4
  %or = or i32 %spec.select, %salt
  %call9 = tail call ptr @rsvp_get(ptr noundef %tp, i32 noundef %or)
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %while.body.cleanup13_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

while.body.cleanup13_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup13

cleanup13:                                        ; preds = %while.body.cleanup13_crit_edge, %while.cond.cleanup13_crit_edge
  %retval.2 = phi i32 [ %or, %while.body.cleanup13_crit_edge ], [ 0, %while.cond.cleanup13_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gen_tunnel(ptr nocapture noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tgenerator = getelementptr inbounds %struct.rsvp_head, ptr %data, i32 0, i32 2
  %ht.i = getelementptr inbounds %struct.rsvp_head, ptr %data, i32 0, i32 3
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %tunnel_recycle.exit.for.cond1.preheader_crit_edge, %entry
  %k.030 = phi i32 [ 0, %entry ], [ %inc12, %tunnel_recycle.exit.for.cond1.preheader_crit_edge ]
  %0 = ptrtoint ptr %tgenerator to i32
  call void @__asan_load1_noabort(i32 %0)
  %tgenerator.promoted = load i8, ptr %tgenerator, align 4
  br label %for.body3

for.cond1:                                        ; preds = %for.body3
  %dec = add nsw i32 %i.029, -1
  %cmp2 = icmp ugt i32 %i.029, 1
  br i1 %cmp2, label %for.cond1.for.body3_crit_edge, label %for.end

for.cond1.for.body3_crit_edge:                    ; preds = %for.cond1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body3

for.body3:                                        ; preds = %for.cond1.for.body3_crit_edge, %for.cond1.preheader
  %i.029 = phi i32 [ 255, %for.cond1.preheader ], [ %dec, %for.cond1.for.body3_crit_edge ]
  %spec.select2728 = phi i8 [ %tgenerator.promoted, %for.cond1.preheader ], [ %spec.select, %for.cond1.for.body3_crit_edge ]
  %inc = add i8 %spec.select2728, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %inc)
  %cmp4 = icmp eq i8 %inc, 0
  %spec.select = select i1 %cmp4, i8 1, i8 %inc
  %conv.i = zext i8 %spec.select to i32
  %1 = lshr i32 %conv.i, 5
  %and.i = and i32 %conv.i, 31
  %shl.i = shl nuw i32 1, %and.i
  %arrayidx.i = getelementptr [8 x i32], ptr %data, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  %and3.i = and i32 %shl.i, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool.not.i, label %if.then7, label %for.cond1

if.then7:                                         ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.le = getelementptr [8 x i32], ptr %data, i32 0, i32 %1
  %4 = ptrtoint ptr %tgenerator to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %spec.select, ptr %tgenerator, align 4
  %or.i = or i32 %shl.i, %3
  %5 = ptrtoint ptr %arrayidx.i.le to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or.i, ptr %arrayidx.i.le, align 4
  br label %cleanup

for.end:                                          ; preds = %for.cond1
  %6 = ptrtoint ptr %tgenerator to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %spec.select, ptr %tgenerator, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.end62.i.for.body.i_crit_edge, %for.end
  %h1.095.i = phi i32 [ 0, %for.end ], [ %inc64.i, %for.end62.i.for.body.i_crit_edge ]
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #8
  br i1 %call.i, label %for.body.i.do.end.i_crit_edge, label %land.lhs.true.i

for.body.i.do.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i22 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i22, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b87.i = load i1, ptr @tunnel_recycle.__warned, align 1
  br i1 %.b87.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @tunnel_recycle.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 429, ptr noundef nonnull @.str.8) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %for.body.i.do.end.i_crit_edge
  %arrayidx.i23 = getelementptr ptr, ptr %ht.i, i32 %h1.095.i
  %7 = ptrtoint ptr %arrayidx.i23 to i32
  call void @__asan_load4_noabort(i32 %7)
  %s.092.i = load ptr, ptr %arrayidx.i23, align 4
  %tobool6.not93.i = icmp eq ptr %s.092.i, null
  br i1 %tobool6.not93.i, label %do.end.i.for.end62.i_crit_edge, label %do.end.i.for.cond8.preheader.i_crit_edge

do.end.i.for.cond8.preheader.i_crit_edge:         ; preds = %do.end.i
  br label %for.cond8.preheader.i

do.end.i.for.end62.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end62.i

for.cond8.preheader.i:                            ; preds = %do.end59.i.for.cond8.preheader.i_crit_edge, %do.end.i.for.cond8.preheader.i_crit_edge
  %s.094.i = phi ptr [ %s.0.i, %do.end59.i.for.cond8.preheader.i_crit_edge ], [ %s.092.i, %do.end.i.for.cond8.preheader.i_crit_edge ]
  br label %for.body10.i

for.body10.i:                                     ; preds = %for.end.i.for.body10.i_crit_edge, %for.cond8.preheader.i
  %h2.091.i = phi i32 [ 0, %for.cond8.preheader.i ], [ %inc.i, %for.end.i.for.body10.i_crit_edge ]
  %call12.i = tail call zeroext i1 @lockdep_rtnl_is_held() #8
  br i1 %call12.i, label %for.body10.i.do.end21.i_crit_edge, label %land.lhs.true13.i

for.body10.i.do.end21.i_crit_edge:                ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end21.i

land.lhs.true13.i:                                ; preds = %for.body10.i
  %call14.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %land.lhs.true13.i.do.end21.i_crit_edge, label %land.lhs.true16.i

land.lhs.true13.i.do.end21.i_crit_edge:           ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end21.i

land.lhs.true16.i:                                ; preds = %land.lhs.true13.i
  %.b8186.i = load i1, ptr @tunnel_recycle.__warned.26, align 1
  br i1 %.b8186.i, label %land.lhs.true16.i.do.end21.i_crit_edge, label %if.then18.i

land.lhs.true16.i.do.end21.i_crit_edge:           ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end21.i

if.then18.i:                                      ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @tunnel_recycle.__warned.26, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 434, ptr noundef nonnull @.str.8) #8
  br label %do.end21.i

do.end21.i:                                       ; preds = %if.then18.i, %land.lhs.true16.i.do.end21.i_crit_edge, %land.lhs.true13.i.do.end21.i_crit_edge, %for.body10.i.do.end21.i_crit_edge
  %arrayidx24.i = getelementptr %struct.rsvp_session, ptr %s.094.i, i32 0, i32 5, i32 %h2.091.i
  %8 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %f.088.i = load ptr, ptr %arrayidx24.i, align 4
  %tobool26.not89.i = icmp eq ptr %f.088.i, null
  br i1 %tobool26.not89.i, label %do.end21.i.for.end.i_crit_edge, label %do.end21.i.for.body27.i_crit_edge

do.end21.i.for.body27.i_crit_edge:                ; preds = %do.end21.i
  br label %for.body27.i

do.end21.i.for.end.i_crit_edge:                   ; preds = %do.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body27.i:                                     ; preds = %do.end44.i.for.body27.i_crit_edge, %do.end21.i.for.body27.i_crit_edge
  %f.090.i = phi ptr [ %f.0.i, %do.end44.i.for.body27.i_crit_edge ], [ %f.088.i, %do.end21.i.for.body27.i_crit_edge ]
  %tunnelhdr.i = getelementptr inbounds %struct.rsvp_filter, ptr %f.090.i, i32 0, i32 3
  %9 = ptrtoint ptr %tunnelhdr.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %tunnelhdr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp28.i = icmp eq i8 %10, 0
  br i1 %cmp28.i, label %for.body27.i.do.body34.i_crit_edge, label %if.end31.i

for.body27.i.do.body34.i_crit_edge:               ; preds = %for.body27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body34.i

if.end31.i:                                       ; preds = %for.body27.i
  %classid.i = getelementptr inbounds %struct.rsvp_filter, ptr %f.090.i, i32 0, i32 4, i32 0, i32 0, i32 1
  %11 = ptrtoint ptr %classid.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %classid.i, align 4
  %conv32.i = trunc i32 %12 to i8
  %13 = ptrtoint ptr %tgenerator to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv32.i, ptr %tgenerator, align 4
  %conv.i.i = lshr i32 %12, 5
  %14 = and i32 %conv.i.i, 7
  %and.i.i = and i32 %12, 31
  %shl.i.i = shl nuw i32 1, %and.i.i
  %arrayidx.i.i = getelementptr [8 x i32], ptr %data, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i.i, align 4
  %and3.i.i = and i32 %shl.i.i, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool.not.i.i = icmp eq i32 %and3.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end31.i.do.body34.i_crit_edge

if.end31.i.do.body34.i_crit_edge:                 ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body34.i

if.end.i.i:                                       ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  %or.i.i = or i32 %shl.i.i, %16
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or.i.i, ptr %arrayidx.i.i, align 4
  br label %do.body34.i

do.body34.i:                                      ; preds = %if.end.i.i, %if.end31.i.do.body34.i_crit_edge, %for.body27.i.do.body34.i_crit_edge
  %call35.i = tail call zeroext i1 @lockdep_rtnl_is_held() #8
  br i1 %call35.i, label %do.body34.i.do.end44.i_crit_edge, label %land.lhs.true36.i

do.body34.i.do.end44.i_crit_edge:                 ; preds = %do.body34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end44.i

land.lhs.true36.i:                                ; preds = %do.body34.i
  %call37.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %tobool38.not.i = icmp eq i32 %call37.i, 0
  br i1 %tobool38.not.i, label %land.lhs.true36.i.do.end44.i_crit_edge, label %land.lhs.true39.i

land.lhs.true36.i.do.end44.i_crit_edge:           ; preds = %land.lhs.true36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end44.i

land.lhs.true39.i:                                ; preds = %land.lhs.true36.i
  %.b8285.i = load i1, ptr @tunnel_recycle.__warned.27, align 1
  br i1 %.b8285.i, label %land.lhs.true39.i.do.end44.i_crit_edge, label %if.then41.i

land.lhs.true39.i.do.end44.i_crit_edge:           ; preds = %land.lhs.true39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end44.i

if.then41.i:                                      ; preds = %land.lhs.true39.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @tunnel_recycle.__warned.27, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 435, ptr noundef nonnull @.str.8) #8
  br label %do.end44.i

do.end44.i:                                       ; preds = %if.then41.i, %land.lhs.true39.i.do.end44.i_crit_edge, %land.lhs.true36.i.do.end44.i_crit_edge, %do.body34.i.do.end44.i_crit_edge
  %18 = ptrtoint ptr %f.090.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %f.0.i = load ptr, ptr %f.090.i, align 4
  %tobool26.not.i = icmp eq ptr %f.0.i, null
  br i1 %tobool26.not.i, label %do.end44.i.for.end.i_crit_edge, label %do.end44.i.for.body27.i_crit_edge

do.end44.i.for.body27.i_crit_edge:                ; preds = %do.end44.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body27.i

do.end44.i.for.end.i_crit_edge:                   ; preds = %do.end44.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %do.end44.i.for.end.i_crit_edge, %do.end21.i.for.end.i_crit_edge
  %inc.i = add nuw nsw i32 %h2.091.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 17
  br i1 %exitcond.not.i, label %do.body49.i, label %for.end.i.for.body10.i_crit_edge

for.end.i.for.body10.i_crit_edge:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body10.i

do.body49.i:                                      ; preds = %for.end.i
  %call50.i = tail call zeroext i1 @lockdep_rtnl_is_held() #8
  br i1 %call50.i, label %do.body49.i.do.end59.i_crit_edge, label %land.lhs.true51.i

do.body49.i.do.end59.i_crit_edge:                 ; preds = %do.body49.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end59.i

land.lhs.true51.i:                                ; preds = %do.body49.i
  %call52.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i)
  %tobool53.not.i = icmp eq i32 %call52.i, 0
  br i1 %tobool53.not.i, label %land.lhs.true51.i.do.end59.i_crit_edge, label %land.lhs.true54.i

land.lhs.true51.i.do.end59.i_crit_edge:           ; preds = %land.lhs.true51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end59.i

land.lhs.true54.i:                                ; preds = %land.lhs.true51.i
  %.b8384.i = load i1, ptr @tunnel_recycle.__warned.28, align 1
  br i1 %.b8384.i, label %land.lhs.true54.i.do.end59.i_crit_edge, label %if.then56.i

land.lhs.true54.i.do.end59.i_crit_edge:           ; preds = %land.lhs.true54.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end59.i

if.then56.i:                                      ; preds = %land.lhs.true54.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @tunnel_recycle.__warned.28, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 430, ptr noundef nonnull @.str.8) #8
  br label %do.end59.i

do.end59.i:                                       ; preds = %if.then56.i, %land.lhs.true54.i.do.end59.i_crit_edge, %land.lhs.true51.i.do.end59.i_crit_edge, %do.body49.i.do.end59.i_crit_edge
  %19 = ptrtoint ptr %s.094.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %s.0.i = load ptr, ptr %s.094.i, align 4
  %tobool6.not.i = icmp eq ptr %s.0.i, null
  br i1 %tobool6.not.i, label %do.end59.i.for.end62.i_crit_edge, label %do.end59.i.for.cond8.preheader.i_crit_edge

do.end59.i.for.cond8.preheader.i_crit_edge:       ; preds = %do.end59.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond8.preheader.i

do.end59.i.for.end62.i_crit_edge:                 ; preds = %do.end59.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end62.i

for.end62.i:                                      ; preds = %do.end59.i.for.end62.i_crit_edge, %do.end.i.for.end62.i_crit_edge
  %inc64.i = add nuw nsw i32 %h1.095.i, 1
  %exitcond96.not.i = icmp eq i32 %inc64.i, 256
  br i1 %exitcond96.not.i, label %tunnel_recycle.exit, label %for.end62.i.for.body.i_crit_edge

for.end62.i.for.body.i_crit_edge:                 ; preds = %for.end62.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

tunnel_recycle.exit:                              ; preds = %for.end62.i
  %20 = call ptr @memset(ptr %data, i32 0, i32 32)
  %inc12 = add nuw nsw i32 %k.030, 1
  %exitcond.not = icmp eq i32 %inc12, 2
  br i1 %exitcond.not, label %tunnel_recycle.exit.cleanup_crit_edge, label %tunnel_recycle.exit.for.cond1.preheader_crit_edge

tunnel_recycle.exit.for.cond1.preheader_crit_edge: ; preds = %tunnel_recycle.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond1.preheader

tunnel_recycle.exit.cleanup_crit_edge:            ; preds = %tunnel_recycle.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %tunnel_recycle.exit.cleanup_crit_edge, %if.then7
  %retval.0 = phi i32 [ %conv.i, %if.then7 ], [ 0, %tunnel_recycle.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_exts_dump(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_exts_dump_stats(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_tcf_proto_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !13, !15, !17, !19, !21, !23, !25, !27, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !59, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100}
!llvm.module.flags = !{!102, !103, !104, !105, !106, !107, !108, !109}
!llvm.ident = !{!110}

!0 = !{ptr @__initcall__kmod_cls_rsvp6__539_775_init_rsvp6, !1, !"__initcall__kmod_cls_rsvp6__539_775_init_rsvp6", i1 false, i1 false}
!1 = !{!"../net/sched/cls_rsvp.h", i32 775, i32 1}
!2 = !{ptr @__exitcall_exit_rsvp, !3, !"__exitcall_exit_rsvp", i1 false, i1 false}
!3 = !{!"../net/sched/cls_rsvp.h", i32 776, i32 1}
!4 = !{ptr @__UNIQUE_ID_file540, !5, !"__UNIQUE_ID_file540", i1 false, i1 false}
!5 = !{!"../net/sched/cls_rsvp6.c", i32 24, i32 1}
!6 = !{ptr @__UNIQUE_ID_license541, !5, !"__UNIQUE_ID_license541", i1 false, i1 false}
!7 = !{ptr @cls_rsvp6_ops, !8, !"cls_rsvp6_ops", i1 false, i1 false}
!8 = !{!"../net/sched/cls_rsvp.h", i32 751, i32 29}
!9 = distinct !{null, !10, !"__warned", i1 false, i1 false}
!10 = !{!"../net/sched/cls_rsvp.h", i32 130, i32 27}
!11 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!13 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!14 = !{!"../net/sched/cls_rsvp.h", i32 170, i32 11}
!15 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!16 = !{!"../net/sched/cls_rsvp.h", i32 183, i32 13}
!17 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!18 = !{!"../net/sched/cls_rsvp.h", i32 184, i32 13}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../net/sched/cls_rsvp.h", i32 208, i32 13}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../net/sched/cls_rsvp.h", i32 209, i32 13}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../net/sched/cls_rsvp.h", i32 171, i32 11}
!25 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!26 = !{!"../net/sched/cls_rsvp.h", i32 314, i32 27}
!27 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!28 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!29 = !{!"../net/sched/cls_rsvp.h", i32 323, i32 15}
!30 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!31 = !{!"../net/sched/cls_rsvp.h", i32 329, i32 17}
!32 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!33 = !{!"../net/sched/cls_rsvp.h", i32 249, i32 27}
!34 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!35 = !{!"../net/sched/cls_rsvp.h", i32 258, i32 11}
!36 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!37 = !{!"../net/sched/cls_rsvp.h", i32 260, i32 12}
!38 = distinct !{null, !39, !"__warned", i1 false, i1 false}
!39 = !{!"../net/sched/cls_rsvp.h", i32 261, i32 12}
!40 = distinct !{null, !41, !"__warned", i1 false, i1 false}
!41 = !{!"../net/sched/cls_rsvp.h", i32 259, i32 11}
!42 = distinct !{null, !43, !"__warned", i1 false, i1 false}
!43 = !{!"../net/sched/cls_rsvp.h", i32 477, i32 27}
!44 = distinct !{null, !45, !"__warned", i1 false, i1 false}
!45 = !{!"../net/sched/cls_rsvp.h", i32 584, i32 12}
!46 = distinct !{null, !47, !"__warned", i1 false, i1 false}
!47 = !{!"../net/sched/cls_rsvp.h", i32 608, i32 15}
!48 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!49 = !{!"../net/sched/cls_rsvp.h", i32 609, i32 32}
!50 = distinct !{null, !51, !"__warned", i1 false, i1 false}
!51 = !{!"../net/sched/cls_rsvp.h", i32 637, i32 13}
!52 = distinct !{null, !53, !"__warned", i1 false, i1 false}
!53 = !{!"../net/sched/cls_rsvp.h", i32 638, i32 30}
!54 = !{ptr @rsvp_policy, !55, !"rsvp_policy", i1 false, i1 false}
!55 = !{!"../net/sched/cls_rsvp.h", i32 464, i32 32}
!56 = distinct !{null, !57, !"__already_done", i1 false, i1 false}
!57 = !{!"../include/net/sch_generic.h", i32 596, i32 2}
!58 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!60 = distinct !{null, !61, !"__warned", i1 false, i1 false}
!61 = !{!"../net/sched/cls_rsvp.h", i32 222, i32 27}
!62 = distinct !{null, !63, !"__warned", i1 false, i1 false}
!63 = !{!"../net/sched/cls_rsvp.h", i32 229, i32 11}
!64 = distinct !{null, !65, !"__warned", i1 false, i1 false}
!65 = !{!"../net/sched/cls_rsvp.h", i32 231, i32 33}
!66 = distinct !{null, !67, !"__warned", i1 false, i1 false}
!67 = !{!"../net/sched/cls_rsvp.h", i32 232, i32 34}
!68 = distinct !{null, !69, !"__warned", i1 false, i1 false}
!69 = !{!"../net/sched/cls_rsvp.h", i32 230, i32 11}
!70 = distinct !{null, !71, !"__warned", i1 false, i1 false}
!71 = !{!"../net/sched/cls_rsvp.h", i32 393, i32 27}
!72 = distinct !{null, !73, !"__warned", i1 false, i1 false}
!73 = !{!"../net/sched/cls_rsvp.h", i32 429, i32 12}
!74 = distinct !{null, !75, !"__warned", i1 false, i1 false}
!75 = !{!"../net/sched/cls_rsvp.h", i32 434, i32 14}
!76 = distinct !{null, !77, !"__warned", i1 false, i1 false}
!77 = !{!"../net/sched/cls_rsvp.h", i32 435, i32 14}
!78 = distinct !{null, !79, !"__warned", i1 false, i1 false}
!79 = !{!"../net/sched/cls_rsvp.h", i32 430, i32 12}
!80 = distinct !{null, !81, !"__warned", i1 false, i1 false}
!81 = !{!"../net/sched/cls_rsvp.h", i32 343, i32 27}
!82 = distinct !{null, !83, !"__warned", i1 false, i1 false}
!83 = !{!"../net/sched/cls_rsvp.h", i32 352, i32 13}
!84 = distinct !{null, !85, !"__warned", i1 false, i1 false}
!85 = !{!"../net/sched/cls_rsvp.h", i32 366, i32 15}
!86 = distinct !{null, !87, !"__warned", i1 false, i1 false}
!87 = !{!"../net/sched/cls_rsvp.h", i32 367, i32 32}
!88 = distinct !{null, !89, !"__warned", i1 false, i1 false}
!89 = !{!"../net/sched/cls_rsvp.h", i32 353, i32 30}
!90 = distinct !{null, !91, !"__warned", i1 false, i1 false}
!91 = !{!"../net/sched/cls_rsvp.h", i32 658, i32 27}
!92 = distinct !{null, !93, !"__warned", i1 false, i1 false}
!93 = !{!"../net/sched/cls_rsvp.h", i32 667, i32 12}
!94 = distinct !{null, !95, !"__warned", i1 false, i1 false}
!95 = !{!"../net/sched/cls_rsvp.h", i32 672, i32 14}
!96 = distinct !{null, !97, !"__warned", i1 false, i1 false}
!97 = !{!"../net/sched/cls_rsvp.h", i32 673, i32 14}
!98 = distinct !{null, !99, !"__warned", i1 false, i1 false}
!99 = !{!"../net/sched/cls_rsvp.h", i32 668, i32 12}
!100 = !{ptr @.str.37, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../include/net/netlink.h", i32 991, i32 3}
!102 = !{i32 1, !"wchar_size", i32 2}
!103 = !{i32 1, !"min_enum_size", i32 4}
!104 = !{i32 8, !"branch-target-enforcement", i32 0}
!105 = !{i32 8, !"sign-return-address", i32 0}
!106 = !{i32 8, !"sign-return-address-all", i32 0}
!107 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!108 = !{i32 7, !"uwtable", i32 1}
!109 = !{i32 7, !"frame-pointer", i32 2}
!110 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!111 = !{!"branch_weights", i32 1, i32 2000}
!112 = !{i64 2157418710}
!113 = !{i64 2157431957}
!114 = !{i64 2157466670}
!115 = !{i64 2157477244}
!116 = !{i64 2157336194}
!117 = !{i64 845407, i64 845424, i64 845448, i64 845474, i64 845492}
!118 = !{i64 2157336538}
!119 = !{i64 823172, i64 823196, i64 823217, i64 823234, i64 823251}
!120 = !{!"branch_weights", i32 2000, i32 1}
!121 = !{i64 2148428194}
!122 = !{i64 2148342634, i64 2148342666, i64 2148342695, i64 2148342729, i64 2148342760, i64 2148342783}
!123 = !{i64 2149304308}
!124 = !{i64 2157406063}
!125 = !{i64 2157408535, i64 2157409020, i64 2157408572, i64 2157408628, i64 2157408662, i64 2157408686, i64 2157408727, i64 2157408748, i64 2157408776, i64 2157408810}
