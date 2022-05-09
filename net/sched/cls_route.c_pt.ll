; ModuleID = '/llk/IR_all_yes/net/sched/cls_route.c_pt.bc'
source_filename = "../net/sched/cls_route.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tcf_proto_ops = type { %struct.list_head, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nla_policy = type { i8, i8, i16, %union.anon.27 }
%union.anon.27 = type { i32 }
%struct.tcf_proto = type { ptr, ptr, ptr, i16, i32, ptr, ptr, ptr, %struct.spinlock, i8, %struct.refcount_struct, %struct.callback_head, %struct.hlist_node }
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
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.rtable = type { %struct.dst_entry, i32, i32, i16, i8, i8, i32, i8, %union.anon.151, i32, %struct.list_head, ptr }
%union.anon.151 = type { %struct.in6_addr }
%struct.in6_addr = type { %union.anon.26 }
%union.anon.26 = type { [4 x i32] }
%struct.route4_fastmap = type { ptr, i32, i32 }
%struct.route4_filter = type { ptr, i32, i32, %struct.tcf_result, %struct.tcf_exts, i32, ptr, ptr, %struct.rcu_work }
%struct.tcf_result = type { %union.anon.144 }
%union.anon.144 = type { %struct.anon.145 }
%struct.anon.145 = type { i32, i32 }
%struct.tcf_exts = type { i32, i32, ptr, ptr, ptr, i32, i32 }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.route4_head = type { [16 x %struct.route4_fastmap], [257 x ptr], %struct.callback_head }
%struct.tcf_chain = type { %struct.mutex, ptr, %struct.list_head, ptr, i32, i32, i32, i8, i8, ptr, ptr, %struct.callback_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tcf_block = type { %struct.mutex, %struct.list_head, i32, i32, %struct.refcount_struct, ptr, ptr, %struct.rw_semaphore, %struct.flow_block, %struct.list_head, i8, %struct.atomic_t, i32, i32, %struct.anon.125, %struct.callback_head, [128 x %struct.hlist_head], %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.flow_block = type { %struct.list_head }
%struct.anon.125 = type { ptr, %struct.list_head }
%struct.hlist_head = type { ptr }
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
%struct.route4_bucket = type { [33 x ptr], %struct.callback_head }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.tcf_walker = type { i32, i32, i32, i8, i32, ptr }
%struct.tcmsg = type { i8, i8, i16, i32, i32, i32, i32 }
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

@cls_route4_ops = internal global %struct.tcf_proto_ops { %struct.list_head zeroinitializer, [16 x i8] c"route\00\00\00\00\00\00\00\00\00\00\00", ptr @route4_classify, ptr @route4_init, ptr @route4_destroy, ptr @route4_get, ptr null, ptr @route4_change, ptr @route4_delete, ptr null, ptr @route4_walk, ptr null, ptr null, ptr null, ptr @route4_bind_class, ptr null, ptr null, ptr @route4_dump, ptr null, ptr null, ptr null, i32 0 }, section ".data..read_mostly", align 4
@__initcall__kmod_cls_route__551_681_init_route46 = internal global ptr @init_route4, section ".initcall6.init", align 4
@__exitcall_exit_route4 = internal global ptr @exit_route4, section ".exitcall.exit", align 4
@__UNIQUE_ID_file552 = internal constant [35 x i8] c"cls_route.file=net/sched/cls_route\00", section ".modinfo", align 1
@__UNIQUE_ID_license553 = internal constant [22 x i8] c"cls_route.license=GPL\00", section ".modinfo", align 1
@route4_classify.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"net/sched/cls_route.c\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@fastmap_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.5 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.10, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@route4_classify.__warned.2 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@route4_classify.__warned.3 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@route4_classify.__warned.4 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@route4_classify.__warned.5 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@route4_classify.__warned.6 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@route4_classify.__warned.7 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@route4_classify.__warned.8 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fastmap_lock\00", [19 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@route4_destroy.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@route4_destroy.__warned.12 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@route4_destroy.__warned.13 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@route4_destroy.__warned.14 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@route4_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@route4_get.__warned.15 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@route4_get.__warned.16 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@route4_get.__warned.17 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@route4_change.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@route4_policy = internal constant { [7 x %struct.nla_policy], [40 x i8] } { [7 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.27 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.27 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.27 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.27 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer], [40 x i8] zeroinitializer }, align 32
@route4_change.__warned.18 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@route4_change.__warned.19 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@route4_change.__warned.20 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@route4_change.__warned.21 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@route4_change.__warned.22 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@route4_set_parms.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@route4_set_parms.__warned.23 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@route4_set_parms.__warned.24 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@qdisc_root_sleeping_lock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/net/sch_generic.h\00", [38 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@route4_delete.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@route4_delete.__warned.27 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@route4_delete.__warned.28 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@route4_delete.__warned.29 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@route4_delete.__warned.30 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@route4_walk.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@route4_walk.__warned.31 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@route4_walk.__warned.32 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@route4_walk.__warned.33 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 127, i32 29 }
@___asan_gen_.41 = private unnamed_addr constant [13 x i8] c"fastmap_lock\00", align 1
@___asan_gen_.45 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 1011, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 66, i32 8 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 278, i32 29 }
@___asan_gen_.53 = private unnamed_addr constant [14 x i8] c"route4_policy\00", align 1
@___asan_gen_.54 = private constant [25 x i8] c"../net/sched/cls_route.c\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 374, i32 32 }
@___asan_gen_.60 = private unnamed_addr constant [29 x i8] c"../include/net/sch_generic.h\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 596, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 991, i32 3 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID_file552, ptr @__UNIQUE_ID_license553, ptr @__exitcall_exit_route4, ptr @__initcall__kmod_cls_route__551_681_init_route46, ptr @exit_route4, ptr @.str, ptr @.str.1, ptr @fastmap_lock, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @route4_policy, ptr @.str.25, ptr @.str.26, ptr @.str.34], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fastmap_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @route4_policy to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_route4() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @unregister_tcf_proto_ops(ptr noundef nonnull @cls_route4_ops) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_tcf_proto_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_route4() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_tcf_proto_ops(ptr noundef nonnull @cls_route4_ops) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @route4_classify(ptr noundef %skb, ptr noundef %tp, ptr noundef %res) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %root = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 1
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %root, align 4
  %call = tail call i32 @rcu_read_lock_bh_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b331 = load i1, ptr @route4_classify.__warned, align 1
  br i1 %.b331, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @route4_classify.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 127, ptr noundef nonnull @.str.1) #7
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %entry.do.end7_crit_edge
  %2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 8
  %and.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end7.skb_dst.exit_crit_edge, label %land.lhs.true.i

do.end7.skb_dst.exit_crit_edge:                   ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %do.end7
  %call.i = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !102

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1013, i32 noundef 9, ptr noundef null) #7
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %do.end7.skb_dst.exit_crit_edge
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %2, align 8
  %and25.i = and i32 %6, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool10.not = icmp eq i32 %and25.i, 0
  br i1 %tobool10.not, label %skb_dst.exit.cleanup236_crit_edge, label %if.end12

skb_dst.exit.cleanup236_crit_edge:                ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup236

if.end12:                                         ; preds = %skb_dst.exit
  %7 = inttoptr i32 %and25.i to ptr
  %tclassid = getelementptr inbounds %struct.dst_entry, ptr %7, i32 0, i32 17
  %8 = ptrtoint ptr %tclassid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tclassid, align 4
  %and.i.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end12.skb_rtable.exit.i_crit_edge, label %land.lhs.true.i.i.i

if.end12.skb_rtable.exit.i_crit_edge:             ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_rtable.exit.i

land.lhs.true.i.i.i:                              ; preds = %if.end12
  %call.i.i.i = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i.i.skb_rtable.exit.i_crit_edge

land.lhs.true.i.i.i.skb_rtable.exit.i_crit_edge:  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_rtable.exit.i

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %call2.i.i.i = tail call i32 @rcu_read_lock_bh_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %do.end.i.i.i, label %land.rhs.i.i.i.skb_rtable.exit.i_crit_edge, !prof !102

land.rhs.i.i.i.skb_rtable.exit.i_crit_edge:       ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_rtable.exit.i

do.end.i.i.i:                                     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1013, i32 noundef 9, ptr noundef null) #7
  br label %skb_rtable.exit.i

skb_rtable.exit.i:                                ; preds = %do.end.i.i.i, %land.rhs.i.i.i.skb_rtable.exit.i_crit_edge, %land.lhs.true.i.i.i.skb_rtable.exit.i_crit_edge, %if.end12.skb_rtable.exit.i_crit_edge
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %2, align 8
  %and25.i.i.i = and i32 %11, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i.i)
  %tobool.not.i332 = icmp eq i32 %and25.i.i.i, 0
  br i1 %tobool.not.i332, label %skb_rtable.exit.i.if.end.i_crit_edge, label %land.lhs.true.i334

skb_rtable.exit.i.if.end.i_crit_edge:             ; preds = %skb_rtable.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.lhs.true.i334:                               ; preds = %skb_rtable.exit.i
  %12 = inttoptr i32 %and25.i.i.i to ptr
  %rt_iif.i = getelementptr inbounds %struct.rtable, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %rt_iif.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rt_iif.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool1.not.i333 = icmp eq i32 %14, 0
  br i1 %tobool1.not.i333, label %land.lhs.true.i334.if.end.i_crit_edge, label %land.lhs.true.i334.inet_iif.exit_crit_edge

land.lhs.true.i334.inet_iif.exit_crit_edge:       ; preds = %land.lhs.true.i334
  call void @__sanitizer_cov_trace_pc() #9
  br label %inet_iif.exit

land.lhs.true.i334.if.end.i_crit_edge:            ; preds = %land.lhs.true.i334
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i334.if.end.i_crit_edge, %skb_rtable.exit.i.if.end.i_crit_edge
  %skb_iif.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 7
  %15 = ptrtoint ptr %skb_iif.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %skb_iif.i, align 8
  br label %inet_iif.exit

inet_iif.exit:                                    ; preds = %if.end.i, %land.lhs.true.i334.inet_iif.exit_crit_edge
  %retval.0.i = phi i32 [ %16, %if.end.i ], [ %14, %land.lhs.true.i334.inet_iif.exit_crit_edge ]
  %and.i335 = and i32 %9, 15
  tail call void @_raw_spin_lock(ptr noundef nonnull @fastmap_lock) #7
  %arrayidx = getelementptr [16 x %struct.route4_fastmap], ptr %1, i32 0, i32 %and.i335
  %id15 = getelementptr [16 x %struct.route4_fastmap], ptr %1, i32 0, i32 %and.i335, i32 1
  %17 = ptrtoint ptr %id15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %id15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %18)
  %cmp = icmp eq i32 %9, %18
  br i1 %cmp, label %land.lhs.true16, label %inet_iif.exit.if.end30_crit_edge

inet_iif.exit.if.end30_crit_edge:                 ; preds = %inet_iif.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

land.lhs.true16:                                  ; preds = %inet_iif.exit
  %iif19 = getelementptr [16 x %struct.route4_fastmap], ptr %1, i32 0, i32 %and.i335, i32 2
  %19 = ptrtoint ptr %iif19 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %iif19, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %20)
  %cmp20 = icmp eq i32 %retval.0.i, %20
  br i1 %cmp20, label %land.lhs.true21, label %land.lhs.true16.if.end30_crit_edge

land.lhs.true16.if.end30_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

land.lhs.true21:                                  ; preds = %land.lhs.true16
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx, align 4
  %magicptr = ptrtoint ptr %22 to i32
  %23 = zext i32 %magicptr to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i32 %magicptr, label %if.end28 [
    i32 0, label %land.lhs.true21.if.end30_crit_edge
    i32 -1, label %if.then27
  ]

land.lhs.true21.if.end30_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then27:                                        ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock(ptr noundef nonnull @fastmap_lock) #7
  br label %cleanup236

if.end28:                                         ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #9
  %res29 = getelementptr inbounds %struct.route4_filter, ptr %22, i32 0, i32 3
  %24 = ptrtoint ptr %res29 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 8)
  %25 = load i64, ptr %res29, align 4
  %26 = ptrtoint ptr %res to i32
  call void @__asan_storeN_noabort(i32 %26, i32 8)
  store i64 %25, ptr %res, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @fastmap_lock) #7
  br label %cleanup236

if.end30:                                         ; preds = %land.lhs.true21.if.end30_crit_edge, %land.lhs.true16.if.end30_crit_edge, %inet_iif.exit.if.end30_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @fastmap_lock) #7
  %and.i336 = and i32 %9, 255
  %27 = lshr i32 %retval.0.i, 16
  %and.i340 = and i32 %27, 15
  %add.i = or i32 %and.i340, 16
  %28 = and i32 %9, -65536
  br label %restart

restart:                                          ; preds = %restart.backedge, %if.end30
  %dont_cache.0 = phi i32 [ 0, %if.end30 ], [ %dont_cache.0.be, %restart.backedge ]
  %h.0 = phi i32 [ %and.i336, %if.end30 ], [ 256, %restart.backedge ]
  %id.0 = phi i32 [ %9, %if.end30 ], [ %28, %restart.backedge ]
  %arrayidx36 = getelementptr %struct.route4_head, ptr %1, i32 0, i32 1, i32 %h.0
  %29 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %arrayidx36, align 4
  %call38 = tail call i32 @rcu_read_lock_bh_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %land.lhs.true40, label %restart.do.end48_crit_edge

restart.do.end48_crit_edge:                       ; preds = %restart
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end48

land.lhs.true40:                                  ; preds = %restart
  %call41 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %land.lhs.true40.do.end48_crit_edge, label %land.lhs.true43

land.lhs.true40.do.end48_crit_edge:               ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end48

land.lhs.true43:                                  ; preds = %land.lhs.true40
  %.b317330 = load i1, ptr @route4_classify.__warned.2, align 1
  br i1 %.b317330, label %land.lhs.true43.do.end48_crit_edge, label %if.then45

land.lhs.true43.do.end48_crit_edge:               ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end48

if.then45:                                        ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @route4_classify.__warned.2, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 162, ptr noundef nonnull @.str.1) #7
  br label %do.end48

do.end48:                                         ; preds = %if.then45, %land.lhs.true43.do.end48_crit_edge, %land.lhs.true40.do.end48_crit_edge, %restart.do.end48_crit_edge
  %tobool50.not = icmp eq ptr %30, null
  br i1 %tobool50.not, label %do.end48.if.end229_crit_edge, label %if.then51

do.end48.if.end229_crit_edge:                     ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end229

if.then51:                                        ; preds = %do.end48
  %shr.i = lshr i32 %id.0, 16
  %and.i337 = and i32 %shr.i, 15
  %arrayidx57 = getelementptr [33 x ptr], ptr %30, i32 0, i32 %and.i337
  %31 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %arrayidx57, align 4
  %call59 = tail call i32 @rcu_read_lock_bh_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true61, label %if.then51.do.end69_crit_edge

if.then51.do.end69_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end69

land.lhs.true61:                                  ; preds = %if.then51
  %call62 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %land.lhs.true61.do.end69_crit_edge, label %land.lhs.true64

land.lhs.true61.do.end69_crit_edge:               ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end69

land.lhs.true64:                                  ; preds = %land.lhs.true61
  %.b318329 = load i1, ptr @route4_classify.__warned.3, align 1
  br i1 %.b318329, label %land.lhs.true64.do.end69_crit_edge, label %if.then66

land.lhs.true64.do.end69_crit_edge:               ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end69

if.then66:                                        ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @route4_classify.__warned.3, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 164, ptr noundef nonnull @.str.1) #7
  br label %do.end69

do.end69:                                         ; preds = %if.then66, %land.lhs.true64.do.end69_crit_edge, %land.lhs.true61.do.end69_crit_edge, %if.then51.do.end69_crit_edge
  %tobool71.not375 = icmp eq ptr %32, null
  br i1 %tobool71.not375, label %do.end69.for.end_crit_edge, label %do.end69.for.body_crit_edge

do.end69.for.body_crit_edge:                      ; preds = %do.end69
  br label %for.body

do.end69.for.end_crit_edge:                       ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %do.end103.for.body_crit_edge, %do.end69.for.body_crit_edge
  %f.0377 = phi ptr [ %46, %do.end103.for.body_crit_edge ], [ %32, %do.end69.for.body_crit_edge ]
  %dont_cache.1376 = phi i32 [ %dont_cache.3, %do.end103.for.body_crit_edge ], [ %dont_cache.0, %do.end69.for.body_crit_edge ]
  %id72 = getelementptr inbounds %struct.route4_filter, ptr %f.0377, i32 0, i32 1
  %33 = ptrtoint ptr %id72 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %id72, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %id.0)
  %cmp73 = icmp eq i32 %34, %id.0
  br i1 %cmp73, label %if.then74, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then74:                                        ; preds = %for.body
  %res75 = getelementptr inbounds %struct.route4_filter, ptr %f.0377, i32 0, i32 3
  %35 = ptrtoint ptr %res75 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 8)
  %36 = load i64, ptr %res75, align 4
  %37 = ptrtoint ptr %res to i32
  call void @__asan_storeN_noabort(i32 %37, i32 8)
  store i64 %36, ptr %res, align 4
  %nr_actions.i = getelementptr inbounds %struct.route4_filter, ptr %f.0377, i32 0, i32 4, i32 1
  %38 = ptrtoint ptr %nr_actions.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %nr_actions.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.i.not = icmp eq i32 %39, 0
  br i1 %tobool.i.not, label %if.else, label %if.then77

if.then77:                                        ; preds = %if.then74
  %actions.i = getelementptr inbounds %struct.route4_filter, ptr %f.0377, i32 0, i32 4, i32 2
  %40 = ptrtoint ptr %actions.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %actions.i, align 4
  %call.i339 = tail call i32 @tcf_action_exec(ptr noundef %skb, ptr noundef %41, i32 noundef %39, ptr noundef %res) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i339)
  %cmp80 = icmp slt i32 %call.i339, 0
  br i1 %cmp80, label %if.then77.for.inc_crit_edge, label %if.then77.cleanup236_crit_edge

if.then77.cleanup236_crit_edge:                   ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup236

if.then77.for.inc_crit_edge:                      ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.else:                                          ; preds = %if.then74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dont_cache.1376)
  %tobool83.not = icmp eq i32 %dont_cache.1376, 0
  br i1 %tobool83.not, label %if.then84, label %if.else.cleanup236_crit_edge

if.else.cleanup236_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup236

if.then84:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %and.i.i = and i32 %id.0, 15
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @fastmap_lock) #7
  %arrayidx.i = getelementptr [16 x %struct.route4_fastmap], ptr %1, i32 0, i32 %and.i.i
  %id1.i = getelementptr [16 x %struct.route4_fastmap], ptr %1, i32 0, i32 %and.i.i, i32 1
  %42 = ptrtoint ptr %id1.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %id.0, ptr %id1.i, align 4
  %iif4.i = getelementptr [16 x %struct.route4_fastmap], ptr %1, i32 0, i32 %and.i.i, i32 2
  %43 = ptrtoint ptr %iif4.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %retval.0.i, ptr %iif4.i, align 4
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %f.0377, ptr %arrayidx.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @fastmap_lock) #7
  br label %cleanup236

for.inc:                                          ; preds = %if.then77.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %dont_cache.3 = phi i32 [ 1, %if.then77.for.inc_crit_edge ], [ %dont_cache.1376, %for.body.for.inc_crit_edge ]
  %45 = ptrtoint ptr %f.0377 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile ptr, ptr %f.0377, align 4
  %call93 = tail call i32 @rcu_read_lock_bh_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %land.lhs.true95, label %for.inc.do.end103_crit_edge

for.inc.do.end103_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end103

land.lhs.true95:                                  ; preds = %for.inc
  %call96 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %land.lhs.true95.do.end103_crit_edge, label %land.lhs.true98

land.lhs.true95.do.end103_crit_edge:              ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end103

land.lhs.true98:                                  ; preds = %land.lhs.true95
  %.b319328 = load i1, ptr @route4_classify.__warned.4, align 1
  br i1 %.b319328, label %land.lhs.true98.do.end103_crit_edge, label %if.then100

land.lhs.true98.do.end103_crit_edge:              ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end103

if.then100:                                       ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @route4_classify.__warned.4, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 166, ptr noundef nonnull @.str.1) #7
  br label %do.end103

do.end103:                                        ; preds = %if.then100, %land.lhs.true98.do.end103_crit_edge, %land.lhs.true95.do.end103_crit_edge, %for.inc.do.end103_crit_edge
  %tobool71.not = icmp eq ptr %46, null
  br i1 %tobool71.not, label %do.end103.for.end_crit_edge, label %do.end103.for.body_crit_edge

do.end103.for.body_crit_edge:                     ; preds = %do.end103
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

do.end103.for.end_crit_edge:                      ; preds = %do.end103
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %do.end103.for.end_crit_edge, %do.end69.for.end_crit_edge
  %dont_cache.1.lcssa = phi i32 [ %dont_cache.0, %do.end69.for.end_crit_edge ], [ %dont_cache.3, %do.end103.for.end_crit_edge ]
  %arrayidx111 = getelementptr [33 x ptr], ptr %30, i32 0, i32 %add.i
  %47 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile ptr, ptr %arrayidx111, align 4
  %call113 = tail call i32 @rcu_read_lock_bh_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %land.lhs.true115, label %for.end.do.end123_crit_edge

for.end.do.end123_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end123

land.lhs.true115:                                 ; preds = %for.end
  %call116 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %land.lhs.true115.do.end123_crit_edge, label %land.lhs.true118

land.lhs.true115.do.end123_crit_edge:             ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end123

land.lhs.true118:                                 ; preds = %land.lhs.true115
  %.b320327 = load i1, ptr @route4_classify.__warned.5, align 1
  br i1 %.b320327, label %land.lhs.true118.do.end123_crit_edge, label %if.then120

land.lhs.true118.do.end123_crit_edge:             ; preds = %land.lhs.true118
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end123

if.then120:                                       ; preds = %land.lhs.true118
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @route4_classify.__warned.5, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 170, ptr noundef nonnull @.str.1) #7
  br label %do.end123

do.end123:                                        ; preds = %if.then120, %land.lhs.true118.do.end123_crit_edge, %land.lhs.true115.do.end123_crit_edge, %for.end.do.end123_crit_edge
  %tobool126.not379 = icmp eq ptr %48, null
  br i1 %tobool126.not379, label %do.end123.for.end168_crit_edge, label %do.end123.for.body127_crit_edge

do.end123.for.body127_crit_edge:                  ; preds = %do.end123
  br label %for.body127

do.end123.for.end168_crit_edge:                   ; preds = %do.end123
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end168

for.body127:                                      ; preds = %do.end166.for.body127_crit_edge, %do.end123.for.body127_crit_edge
  %f.1381 = phi ptr [ %62, %do.end166.for.body127_crit_edge ], [ %48, %do.end123.for.body127_crit_edge ]
  %dont_cache.4380 = phi i32 [ %dont_cache.6, %do.end166.for.body127_crit_edge ], [ %dont_cache.1.lcssa, %do.end123.for.body127_crit_edge ]
  %iif128 = getelementptr inbounds %struct.route4_filter, ptr %f.1381, i32 0, i32 2
  %49 = ptrtoint ptr %iif128 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %iif128, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %retval.0.i)
  %cmp129 = icmp eq i32 %50, %retval.0.i
  br i1 %cmp129, label %if.then130, label %for.body127.for.inc149_crit_edge

for.body127.for.inc149_crit_edge:                 ; preds = %for.body127
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc149

if.then130:                                       ; preds = %for.body127
  %res131 = getelementptr inbounds %struct.route4_filter, ptr %f.1381, i32 0, i32 3
  %51 = ptrtoint ptr %res131 to i32
  call void @__asan_loadN_noabort(i32 %51, i32 8)
  %52 = load i64, ptr %res131, align 4
  %53 = ptrtoint ptr %res to i32
  call void @__asan_storeN_noabort(i32 %53, i32 8)
  store i64 %52, ptr %res, align 4
  %nr_actions.i341 = getelementptr inbounds %struct.route4_filter, ptr %f.1381, i32 0, i32 4, i32 1
  %54 = ptrtoint ptr %nr_actions.i341 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %nr_actions.i341, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.i342.not = icmp eq i32 %55, 0
  br i1 %tobool.i342.not, label %if.else143, label %if.then134

if.then134:                                       ; preds = %if.then130
  %actions.i343 = getelementptr inbounds %struct.route4_filter, ptr %f.1381, i32 0, i32 4, i32 2
  %56 = ptrtoint ptr %actions.i343 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %actions.i343, align 4
  %call.i345 = tail call i32 @tcf_action_exec(ptr noundef %skb, ptr noundef %57, i32 noundef %55, ptr noundef %res) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i345)
  %cmp138 = icmp slt i32 %call.i345, 0
  br i1 %cmp138, label %if.then134.for.inc149_crit_edge, label %if.then134.cleanup236_crit_edge

if.then134.cleanup236_crit_edge:                  ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup236

if.then134.for.inc149_crit_edge:                  ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc149

if.else143:                                       ; preds = %if.then130
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dont_cache.4380)
  %tobool144.not = icmp eq i32 %dont_cache.4380, 0
  br i1 %tobool144.not, label %if.then145, label %if.else143.cleanup236_crit_edge

if.else143.cleanup236_crit_edge:                  ; preds = %if.else143
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup236

if.then145:                                       ; preds = %if.else143
  call void @__sanitizer_cov_trace_pc() #9
  %and.i.i346 = and i32 %id.0, 15
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @fastmap_lock) #7
  %arrayidx.i347 = getelementptr [16 x %struct.route4_fastmap], ptr %1, i32 0, i32 %and.i.i346
  %id1.i348 = getelementptr [16 x %struct.route4_fastmap], ptr %1, i32 0, i32 %and.i.i346, i32 1
  %58 = ptrtoint ptr %id1.i348 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %id.0, ptr %id1.i348, align 4
  %iif4.i349 = getelementptr [16 x %struct.route4_fastmap], ptr %1, i32 0, i32 %and.i.i346, i32 2
  %59 = ptrtoint ptr %iif4.i349 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %retval.0.i, ptr %iif4.i349, align 4
  %60 = ptrtoint ptr %arrayidx.i347 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %f.1381, ptr %arrayidx.i347, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @fastmap_lock) #7
  br label %cleanup236

for.inc149:                                       ; preds = %if.then134.for.inc149_crit_edge, %for.body127.for.inc149_crit_edge
  %dont_cache.6 = phi i32 [ 1, %if.then134.for.inc149_crit_edge ], [ %dont_cache.4380, %for.body127.for.inc149_crit_edge ]
  %61 = ptrtoint ptr %f.1381 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile ptr, ptr %f.1381, align 4
  %call156 = tail call i32 @rcu_read_lock_bh_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156)
  %tobool157.not = icmp eq i32 %call156, 0
  br i1 %tobool157.not, label %land.lhs.true158, label %for.inc149.do.end166_crit_edge

for.inc149.do.end166_crit_edge:                   ; preds = %for.inc149
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end166

land.lhs.true158:                                 ; preds = %for.inc149
  %call159 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call159)
  %tobool160.not = icmp eq i32 %call159, 0
  br i1 %tobool160.not, label %land.lhs.true158.do.end166_crit_edge, label %land.lhs.true161

land.lhs.true158.do.end166_crit_edge:             ; preds = %land.lhs.true158
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end166

land.lhs.true161:                                 ; preds = %land.lhs.true158
  %.b321326 = load i1, ptr @route4_classify.__warned.6, align 1
  br i1 %.b321326, label %land.lhs.true161.do.end166_crit_edge, label %if.then163

land.lhs.true161.do.end166_crit_edge:             ; preds = %land.lhs.true161
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end166

if.then163:                                       ; preds = %land.lhs.true161
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @route4_classify.__warned.6, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 172, ptr noundef nonnull @.str.1) #7
  br label %do.end166

do.end166:                                        ; preds = %if.then163, %land.lhs.true161.do.end166_crit_edge, %land.lhs.true158.do.end166_crit_edge, %for.inc149.do.end166_crit_edge
  %tobool126.not = icmp eq ptr %62, null
  br i1 %tobool126.not, label %do.end166.for.end168_crit_edge, label %do.end166.for.body127_crit_edge

do.end166.for.body127_crit_edge:                  ; preds = %do.end166
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body127

do.end166.for.end168_crit_edge:                   ; preds = %do.end166
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end168

for.end168:                                       ; preds = %do.end166.for.end168_crit_edge, %do.end123.for.end168_crit_edge
  %dont_cache.4.lcssa = phi i32 [ %dont_cache.1.lcssa, %do.end123.for.end168_crit_edge ], [ %dont_cache.6, %do.end166.for.end168_crit_edge ]
  %arrayidx175 = getelementptr [33 x ptr], ptr %30, i32 0, i32 32
  %63 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile ptr, ptr %arrayidx175, align 4
  %call177 = tail call i32 @rcu_read_lock_bh_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call177)
  %tobool178.not = icmp eq i32 %call177, 0
  br i1 %tobool178.not, label %land.lhs.true179, label %for.end168.do.end187_crit_edge

for.end168.do.end187_crit_edge:                   ; preds = %for.end168
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end187

land.lhs.true179:                                 ; preds = %for.end168
  %call180 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call180)
  %tobool181.not = icmp eq i32 %call180, 0
  br i1 %tobool181.not, label %land.lhs.true179.do.end187_crit_edge, label %land.lhs.true182

land.lhs.true179.do.end187_crit_edge:             ; preds = %land.lhs.true179
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end187

land.lhs.true182:                                 ; preds = %land.lhs.true179
  %.b322325 = load i1, ptr @route4_classify.__warned.7, align 1
  br i1 %.b322325, label %land.lhs.true182.do.end187_crit_edge, label %if.then184

land.lhs.true182.do.end187_crit_edge:             ; preds = %land.lhs.true182
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end187

if.then184:                                       ; preds = %land.lhs.true182
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @route4_classify.__warned.7, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 176, ptr noundef nonnull @.str.1) #7
  br label %do.end187

do.end187:                                        ; preds = %if.then184, %land.lhs.true182.do.end187_crit_edge, %land.lhs.true179.do.end187_crit_edge, %for.end168.do.end187_crit_edge
  %tobool190.not384 = icmp eq ptr %64, null
  br i1 %tobool190.not384, label %do.end187.if.end229_crit_edge, label %for.body191.preheader

do.end187.if.end229_crit_edge:                    ; preds = %do.end187
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end229

for.body191.preheader:                            ; preds = %do.end187
  %res192460 = getelementptr inbounds %struct.route4_filter, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %res192460 to i32
  call void @__asan_loadN_noabort(i32 %65, i32 8)
  %66 = load i64, ptr %res192460, align 4
  %67 = ptrtoint ptr %res to i32
  call void @__asan_storeN_noabort(i32 %67, i32 8)
  store i64 %66, ptr %res, align 4
  %nr_actions.i350461 = getelementptr inbounds %struct.route4_filter, ptr %64, i32 0, i32 4, i32 1
  %68 = ptrtoint ptr %nr_actions.i350461 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %nr_actions.i350461, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool.i351.not462 = icmp eq i32 %69, 0
  br i1 %tobool.i351.not462, label %for.body191.preheader.if.else204_crit_edge, label %for.body191.preheader.if.then195_crit_edge

for.body191.preheader.if.then195_crit_edge:       ; preds = %for.body191.preheader
  br label %if.then195

for.body191.preheader.if.else204_crit_edge:       ; preds = %for.body191.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else204

for.body191:                                      ; preds = %do.end226
  %res192 = getelementptr inbounds %struct.route4_filter, ptr %79, i32 0, i32 3
  %70 = ptrtoint ptr %res192 to i32
  call void @__asan_loadN_noabort(i32 %70, i32 8)
  %71 = load i64, ptr %res192, align 4
  %72 = ptrtoint ptr %res to i32
  call void @__asan_storeN_noabort(i32 %72, i32 8)
  store i64 %71, ptr %res, align 4
  %nr_actions.i350 = getelementptr inbounds %struct.route4_filter, ptr %79, i32 0, i32 4, i32 1
  %73 = ptrtoint ptr %nr_actions.i350 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %nr_actions.i350, align 4
  %tobool.i351.not = icmp eq i32 %74, 0
  br i1 %tobool.i351.not, label %for.body191.if.else204_crit_edge, label %for.body191.if.then195_crit_edge

for.body191.if.then195_crit_edge:                 ; preds = %for.body191
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then195

for.body191.if.else204_crit_edge:                 ; preds = %for.body191
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else204

if.then195:                                       ; preds = %for.body191.if.then195_crit_edge, %for.body191.preheader.if.then195_crit_edge
  %75 = phi i32 [ %74, %for.body191.if.then195_crit_edge ], [ %69, %for.body191.preheader.if.then195_crit_edge ]
  %f.2386463 = phi ptr [ %79, %for.body191.if.then195_crit_edge ], [ %64, %for.body191.preheader.if.then195_crit_edge ]
  %actions.i352 = getelementptr inbounds %struct.route4_filter, ptr %f.2386463, i32 0, i32 4, i32 2
  %76 = ptrtoint ptr %actions.i352 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %actions.i352, align 4
  %call.i354 = tail call i32 @tcf_action_exec(ptr noundef %skb, ptr noundef %77, i32 noundef %75, ptr noundef %res) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i354)
  %cmp199 = icmp slt i32 %call.i354, 0
  br i1 %cmp199, label %for.inc209, label %if.then195.cleanup236_crit_edge

if.then195.cleanup236_crit_edge:                  ; preds = %if.then195
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup236

if.else204:                                       ; preds = %for.body191.if.else204_crit_edge, %for.body191.preheader.if.else204_crit_edge
  %f.2386.lcssa = phi ptr [ %79, %for.body191.if.else204_crit_edge ], [ %64, %for.body191.preheader.if.else204_crit_edge ]
  %dont_cache.7385.lcssa = phi i32 [ 1, %for.body191.if.else204_crit_edge ], [ %dont_cache.4.lcssa, %for.body191.preheader.if.else204_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dont_cache.7385.lcssa)
  %tobool205.not = icmp eq i32 %dont_cache.7385.lcssa, 0
  br i1 %tobool205.not, label %if.then206, label %if.else204.cleanup236_crit_edge

if.else204.cleanup236_crit_edge:                  ; preds = %if.else204
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup236

if.then206:                                       ; preds = %if.else204
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @route4_set_fastmap(ptr noundef %1, i32 noundef %id.0, i32 noundef %retval.0.i, ptr noundef nonnull %f.2386.lcssa)
  br label %cleanup236

for.inc209:                                       ; preds = %if.then195
  %78 = ptrtoint ptr %f.2386463 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile ptr, ptr %f.2386463, align 4
  %call216 = tail call i32 @rcu_read_lock_bh_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call216)
  %tobool217.not = icmp eq i32 %call216, 0
  br i1 %tobool217.not, label %land.lhs.true218, label %for.inc209.do.end226_crit_edge

for.inc209.do.end226_crit_edge:                   ; preds = %for.inc209
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end226

land.lhs.true218:                                 ; preds = %for.inc209
  %call219 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call219)
  %tobool220.not = icmp eq i32 %call219, 0
  br i1 %tobool220.not, label %land.lhs.true218.do.end226_crit_edge, label %land.lhs.true221

land.lhs.true218.do.end226_crit_edge:             ; preds = %land.lhs.true218
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end226

land.lhs.true221:                                 ; preds = %land.lhs.true218
  %.b323324 = load i1, ptr @route4_classify.__warned.8, align 1
  br i1 %.b323324, label %land.lhs.true221.do.end226_crit_edge, label %if.then223

land.lhs.true221.do.end226_crit_edge:             ; preds = %land.lhs.true221
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end226

if.then223:                                       ; preds = %land.lhs.true221
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @route4_classify.__warned.8, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 178, ptr noundef nonnull @.str.1) #7
  br label %do.end226

do.end226:                                        ; preds = %if.then223, %land.lhs.true221.do.end226_crit_edge, %land.lhs.true218.do.end226_crit_edge, %for.inc209.do.end226_crit_edge
  %tobool190.not = icmp eq ptr %79, null
  br i1 %tobool190.not, label %if.end229.thread, label %for.body191

if.end229:                                        ; preds = %do.end187.if.end229_crit_edge, %do.end48.if.end229_crit_edge
  %dont_cache.9 = phi i32 [ %dont_cache.0, %do.end48.if.end229_crit_edge ], [ %dont_cache.4.lcssa, %do.end187.if.end229_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %h.0)
  %cmp230 = icmp ult i32 %h.0, 256
  br i1 %cmp230, label %if.end229.restart.backedge_crit_edge, label %if.end232

if.end229.restart.backedge_crit_edge:             ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #9
  br label %restart.backedge

restart.backedge:                                 ; preds = %if.end229.thread.restart.backedge_crit_edge, %if.end229.restart.backedge_crit_edge
  %dont_cache.0.be = phi i32 [ %dont_cache.9, %if.end229.restart.backedge_crit_edge ], [ 1, %if.end229.thread.restart.backedge_crit_edge ]
  br label %restart

if.end229.thread:                                 ; preds = %do.end226
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %h.0)
  %cmp230410 = icmp ult i32 %h.0, 256
  br i1 %cmp230410, label %if.end229.thread.restart.backedge_crit_edge, label %if.end229.thread.cleanup236_crit_edge

if.end229.thread.cleanup236_crit_edge:            ; preds = %if.end229.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup236

if.end229.thread.restart.backedge_crit_edge:      ; preds = %if.end229.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %restart.backedge

if.end232:                                        ; preds = %if.end229
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dont_cache.9)
  %tobool233.not = icmp eq i32 %dont_cache.9, 0
  br i1 %tobool233.not, label %if.then234, label %if.end232.cleanup236_crit_edge

if.end232.cleanup236_crit_edge:                   ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup236

if.then234:                                       ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @route4_set_fastmap(ptr noundef %1, i32 noundef %id.0, i32 noundef %retval.0.i, ptr noundef nonnull inttoptr (i32 -1 to ptr))
  br label %cleanup236

cleanup236:                                       ; preds = %if.then234, %if.end232.cleanup236_crit_edge, %if.end229.thread.cleanup236_crit_edge, %if.then206, %if.else204.cleanup236_crit_edge, %if.then195.cleanup236_crit_edge, %if.then145, %if.else143.cleanup236_crit_edge, %if.then134.cleanup236_crit_edge, %if.then84, %if.else.cleanup236_crit_edge, %if.then77.cleanup236_crit_edge, %if.end28, %if.then27, %skb_dst.exit.cleanup236_crit_edge
  %retval.10 = phi i32 [ 0, %if.end28 ], [ 0, %if.else.cleanup236_crit_edge ], [ 0, %if.then84 ], [ 0, %if.else143.cleanup236_crit_edge ], [ 0, %if.then145 ], [ 0, %if.else204.cleanup236_crit_edge ], [ 0, %if.then206 ], [ -1, %if.end232.cleanup236_crit_edge ], [ -1, %if.then234 ], [ -1, %skb_dst.exit.cleanup236_crit_edge ], [ -1, %if.then27 ], [ %call.i354, %if.then195.cleanup236_crit_edge ], [ %call.i345, %if.then134.cleanup236_crit_edge ], [ %call.i339, %if.then77.cleanup236_crit_edge ], [ -1, %if.end229.thread.cleanup236_crit_edge ]
  ret i32 %retval.10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @route4_init(ptr noundef %tp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1228) #10
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !103
  %root23 = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 1
  %1 = ptrtoint ptr %root23 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %call7.i.i, ptr %root23, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -105, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @route4_destroy(ptr nocapture noundef readonly %tp, i1 noundef zeroext %rtnl_held, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #7
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b135 = load i1, ptr @route4_destroy.__warned, align 1
  br i1 %.b135, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @route4_destroy.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 278, ptr noundef nonnull @.str.11) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %root = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 1
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %for.cond.preheader

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %do.end
  %chain.i = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %if.end91.for.body_crit_edge, %for.cond.preheader
  %h1.0137 = phi i32 [ 0, %for.cond.preheader ], [ %inc93, %if.end91.for.body_crit_edge ]
  %call8 = tail call zeroext i1 @lockdep_rtnl_is_held() #7
  br i1 %call8, label %for.body.do.end17_crit_edge, label %land.lhs.true9

for.body.do.end17_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end17

land.lhs.true9:                                   ; preds = %for.body
  %call10 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true9.do.end17_crit_edge, label %land.lhs.true12

land.lhs.true9.do.end17_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end17

land.lhs.true12:                                  ; preds = %land.lhs.true9
  %.b129134 = load i1, ptr @route4_destroy.__warned.12, align 1
  br i1 %.b129134, label %land.lhs.true12.do.end17_crit_edge, label %if.then14

land.lhs.true12.do.end17_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end17

if.then14:                                        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @route4_destroy.__warned.12, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 287, ptr noundef nonnull @.str.11) #7
  br label %do.end17

do.end17:                                         ; preds = %if.then14, %land.lhs.true12.do.end17_crit_edge, %land.lhs.true9.do.end17_crit_edge, %for.body.do.end17_crit_edge
  %arrayidx = getelementptr %struct.route4_head, ptr %1, i32 0, i32 1, i32 %h1.0137
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool19.not = icmp eq ptr %3, null
  br i1 %tobool19.not, label %do.end17.if.end91_crit_edge, label %do.end17.while.cond.preheader_crit_edge

do.end17.while.cond.preheader_crit_edge:          ; preds = %do.end17
  br label %while.cond.preheader

do.end17.if.end91_crit_edge:                      ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end91

while.cond.preheader:                             ; preds = %while.end.while.cond.preheader_crit_edge, %do.end17.while.cond.preheader_crit_edge
  %h2.0136 = phi i32 [ %inc, %while.end.while.cond.preheader_crit_edge ], [ 0, %do.end17.while.cond.preheader_crit_edge ]
  %arrayidx36 = getelementptr [33 x ptr], ptr %3, i32 0, i32 %h2.0136
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %while.cond.preheader
  %call25 = tail call zeroext i1 @lockdep_rtnl_is_held() #7
  br i1 %call25, label %while.cond.do.end34_crit_edge, label %land.lhs.true26

while.cond.do.end34_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end34

land.lhs.true26:                                  ; preds = %while.cond
  %call27 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %land.lhs.true26.do.end34_crit_edge, label %land.lhs.true29

land.lhs.true26.do.end34_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end34

land.lhs.true29:                                  ; preds = %land.lhs.true26
  %.b130133 = load i1, ptr @route4_destroy.__warned.13, align 1
  br i1 %.b130133, label %land.lhs.true29.do.end34_crit_edge, label %if.then31

land.lhs.true29.do.end34_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end34

if.then31:                                        ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @route4_destroy.__warned.13, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 292, ptr noundef nonnull @.str.11) #7
  br label %do.end34

do.end34:                                         ; preds = %if.then31, %land.lhs.true29.do.end34_crit_edge, %land.lhs.true26.do.end34_crit_edge, %while.cond.do.end34_crit_edge
  %4 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx36, align 4
  %cmp37.not = icmp eq ptr %5, null
  br i1 %cmp37.not, label %while.end, label %while.body

while.body:                                       ; preds = %do.end34
  %call39 = tail call zeroext i1 @lockdep_rtnl_is_held() #7
  br i1 %call39, label %while.body.do.end48_crit_edge, label %land.lhs.true40

while.body.do.end48_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end48

land.lhs.true40:                                  ; preds = %while.body
  %call41 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %land.lhs.true40.do.end48_crit_edge, label %land.lhs.true43

land.lhs.true40.do.end48_crit_edge:               ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end48

land.lhs.true43:                                  ; preds = %land.lhs.true40
  %.b131132 = load i1, ptr @route4_destroy.__warned.14, align 1
  br i1 %.b131132, label %land.lhs.true43.do.end48_crit_edge, label %if.then45

land.lhs.true43.do.end48_crit_edge:               ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end48

if.then45:                                        ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @route4_destroy.__warned.14, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 295, ptr noundef nonnull @.str.11) #7
  br label %do.end48

do.end48:                                         ; preds = %if.then45, %land.lhs.true43.do.end48_crit_edge, %land.lhs.true40.do.end48_crit_edge, %while.body.do.end48_crit_edge
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %8 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %7, ptr %arrayidx36, align 4
  %9 = ptrtoint ptr %chain.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chain.i, align 4
  %block.i = getelementptr inbounds %struct.tcf_chain, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %block.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %block.i, align 4
  %q1.i = getelementptr inbounds %struct.tcf_block, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %q1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %q1.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %do.end48.tcf_unbind_filter.exit_crit_edge, label %if.end.i

do.end48.tcf_unbind_filter.exit_crit_edge:        ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %tcf_unbind_filter.exit

if.end.i:                                         ; preds = %do.end48
  %res = getelementptr inbounds %struct.route4_filter, ptr %5, i32 0, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %res, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !104
  tail call void @llvm.prefetch.p0(ptr %res, i32 1, i32 3, i32 1) #7
  %15 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %res) #7, !srcloc !105
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %15, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !106
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i, label %if.end.i.tcf_unbind_filter.exit_crit_edge, label %if.then.i.i

if.end.i.tcf_unbind_filter.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tcf_unbind_filter.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %ops.i.i = getelementptr inbounds %struct.Qdisc, ptr %14, i32 0, i32 4
  %16 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i.i, align 16
  %cl_ops.i.i = getelementptr inbounds %struct.Qdisc_ops, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %cl_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cl_ops.i.i, align 4
  %unbind_tcf.i.i = getelementptr inbounds %struct.Qdisc_class_ops, ptr %19, i32 0, i32 11
  %20 = ptrtoint ptr %unbind_tcf.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %unbind_tcf.i.i, align 4
  tail call void %21(ptr noundef nonnull %14, i32 noundef %asmresult.i.i.i.i) #7
  br label %tcf_unbind_filter.exit

tcf_unbind_filter.exit:                           ; preds = %if.then.i.i, %if.end.i.tcf_unbind_filter.exit_crit_edge, %do.end48.tcf_unbind_filter.exit_crit_edge
  %exts = getelementptr inbounds %struct.route4_filter, ptr %5, i32 0, i32 4
  %call65 = tail call fastcc zeroext i1 @tcf_exts_get_net(ptr noundef %exts)
  br i1 %call65, label %if.then66, label %if.else

if.then66:                                        ; preds = %tcf_unbind_filter.exit
  call void @__sanitizer_cov_trace_pc() #9
  %rwork.i = getelementptr inbounds %struct.route4_filter, ptr %5, i32 0, i32 8
  %call.i = tail call zeroext i1 @tcf_queue_work(ptr noundef %rwork.i, ptr noundef nonnull @route4_delete_filter_work) #7
  br label %while.cond.backedge

if.else:                                          ; preds = %tcf_unbind_filter.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @__route4_delete_filter(ptr noundef nonnull %5)
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.else, %if.then66
  br label %while.cond

while.end:                                        ; preds = %do.end34
  %inc = add nuw nsw i32 %h2.0136, 1
  %exitcond.not = icmp eq i32 %inc, 33
  br i1 %exitcond.not, label %do.body73, label %while.end.while.cond.preheader_crit_edge

while.end.while.cond.preheader_crit_edge:         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.preheader

do.body73:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr null, ptr %arrayidx, align 4
  %rcu = getelementptr inbounds %struct.route4_bucket, ptr %3, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 132 to ptr)) #7
  br label %if.end91

if.end91:                                         ; preds = %do.body73, %do.end17.if.end91_crit_edge
  %inc93 = add nuw nsw i32 %h1.0137, 1
  %exitcond138.not = icmp eq i32 %inc93, 257
  br i1 %exitcond138.not, label %do.end101, label %if.end91.for.body_crit_edge

if.end91.for.body_crit_edge:                      ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

do.end101:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #9
  %rcu102 = getelementptr inbounds %struct.route4_head, ptr %1, i32 0, i32 2
  tail call void @kvfree_call_rcu(ptr noundef %rcu102, ptr noundef nonnull inttoptr (i32 1220 to ptr)) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end101, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @route4_get(ptr nocapture noundef readonly %tp, i32 noundef %handle) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #7
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b74 = load i1, ptr @route4_get.__warned, align 1
  br i1 %.b74, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @route4_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 217, ptr noundef nonnull @.str.11) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %root = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 1
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root, align 4
  %and.i = and i32 %handle, 255
  %and1.i = lshr i32 %handle, 7
  %2 = and i32 %and1.i, 256
  %3 = or i32 %2, %and.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %3)
  %cmp = icmp ugt i32 %3, 256
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %shr = lshr i32 %handle, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %shr)
  %cmp.i = icmp eq i32 %shr, 65535
  br i1 %cmp.i, label %if.end6.do.body11_crit_edge, label %if.end.i

if.end6.do.body11_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body11

if.end.i:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %handle)
  %tobool.not.i = icmp sgt i32 %handle, -1
  %and6.i = and i32 %shr, 15
  br i1 %tobool.not.i, label %if.then2.i, label %from_hash.exit

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %handle)
  %cmp3.inv.i = icmp ult i32 %handle, 16777216
  br i1 %cmp3.inv.i, label %if.then2.i.do.body11_crit_edge, label %if.then2.i.cleanup_crit_edge

if.then2.i.cleanup_crit_edge:                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then2.i.do.body11_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body11

from_hash.exit:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.i = or i32 %and6.i, 16
  br label %do.body11

do.body11:                                        ; preds = %from_hash.exit, %if.then2.i.do.body11_crit_edge, %if.end6.do.body11_crit_edge
  %retval.0.i78 = phi i32 [ %add.i, %from_hash.exit ], [ 32, %if.end6.do.body11_crit_edge ], [ %and6.i, %if.then2.i.do.body11_crit_edge ]
  %call12 = tail call zeroext i1 @lockdep_rtnl_is_held() #7
  br i1 %call12, label %do.body11.do.end21_crit_edge, label %land.lhs.true13

do.body11.do.end21_crit_edge:                     ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end21

land.lhs.true13:                                  ; preds = %do.body11
  %call14 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %land.lhs.true13.do.end21_crit_edge, label %land.lhs.true16

land.lhs.true13.do.end21_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end21

land.lhs.true16:                                  ; preds = %land.lhs.true13
  %.b6873 = load i1, ptr @route4_get.__warned.15, align 1
  br i1 %.b6873, label %land.lhs.true16.do.end21_crit_edge, label %if.then18

land.lhs.true16.do.end21_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end21

if.then18:                                        ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @route4_get.__warned.15, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 230, ptr noundef nonnull @.str.11) #7
  br label %do.end21

do.end21:                                         ; preds = %if.then18, %land.lhs.true16.do.end21_crit_edge, %land.lhs.true13.do.end21_crit_edge, %do.body11.do.end21_crit_edge
  %arrayidx = getelementptr %struct.route4_head, ptr %1, i32 0, i32 1, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool23.not = icmp eq ptr %5, null
  br i1 %tobool23.not, label %do.end21.cleanup_crit_edge, label %do.body25

do.end21.cleanup_crit_edge:                       ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body25:                                        ; preds = %do.end21
  %call26 = tail call zeroext i1 @lockdep_rtnl_is_held() #7
  br i1 %call26, label %do.body25.do.end35_crit_edge, label %land.lhs.true27

do.body25.do.end35_crit_edge:                     ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end35

land.lhs.true27:                                  ; preds = %do.body25
  %call28 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %land.lhs.true27.do.end35_crit_edge, label %land.lhs.true30

land.lhs.true27.do.end35_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end35

land.lhs.true30:                                  ; preds = %land.lhs.true27
  %.b6972 = load i1, ptr @route4_get.__warned.16, align 1
  br i1 %.b6972, label %land.lhs.true30.do.end35_crit_edge, label %if.then32

land.lhs.true30.do.end35_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end35

if.then32:                                        ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @route4_get.__warned.16, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 232, ptr noundef nonnull @.str.11) #7
  br label %do.end35

do.end35:                                         ; preds = %if.then32, %land.lhs.true30.do.end35_crit_edge, %land.lhs.true27.do.end35_crit_edge, %do.body25.do.end35_crit_edge
  %arrayidx37 = getelementptr [33 x ptr], ptr %5, i32 0, i32 %retval.0.i78
  %6 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %6)
  %f.082 = load ptr, ptr %arrayidx37, align 4
  %tobool38.not83 = icmp eq ptr %f.082, null
  br i1 %tobool38.not83, label %do.end35.cleanup_crit_edge, label %do.end35.for.body_crit_edge

do.end35.for.body_crit_edge:                      ; preds = %do.end35
  br label %for.body

do.end35.cleanup_crit_edge:                       ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %do.end53.for.body_crit_edge, %do.end35.for.body_crit_edge
  %f.084 = phi ptr [ %f.0, %do.end53.for.body_crit_edge ], [ %f.082, %do.end35.for.body_crit_edge ]
  %handle39 = getelementptr inbounds %struct.route4_filter, ptr %f.084, i32 0, i32 5
  %7 = ptrtoint ptr %handle39 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %handle39, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %handle)
  %cmp40 = icmp eq i32 %8, %handle
  br i1 %cmp40, label %for.body.cleanup_crit_edge, label %do.body43

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body43:                                        ; preds = %for.body
  %call44 = tail call zeroext i1 @lockdep_rtnl_is_held() #7
  br i1 %call44, label %do.body43.do.end53_crit_edge, label %land.lhs.true45

do.body43.do.end53_crit_edge:                     ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end53

land.lhs.true45:                                  ; preds = %do.body43
  %call46 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %land.lhs.true45.do.end53_crit_edge, label %land.lhs.true48

land.lhs.true45.do.end53_crit_edge:               ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end53

land.lhs.true48:                                  ; preds = %land.lhs.true45
  %.b7071 = load i1, ptr @route4_get.__warned.17, align 1
  br i1 %.b7071, label %land.lhs.true48.do.end53_crit_edge, label %if.then50

land.lhs.true48.do.end53_crit_edge:               ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end53

if.then50:                                        ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @route4_get.__warned.17, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 234, ptr noundef nonnull @.str.11) #7
  br label %do.end53

do.end53:                                         ; preds = %if.then50, %land.lhs.true48.do.end53_crit_edge, %land.lhs.true45.do.end53_crit_edge, %do.body43.do.end53_crit_edge
  %9 = ptrtoint ptr %f.084 to i32
  call void @__asan_load4_noabort(i32 %9)
  %f.0 = load ptr, ptr %f.084, align 4
  %tobool38.not = icmp eq ptr %f.0, null
  br i1 %tobool38.not, label %do.end53.cleanup_crit_edge, label %do.end53.for.body_crit_edge

do.end53.for.body_crit_edge:                      ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

do.end53.cleanup_crit_edge:                       ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %do.end53.cleanup_crit_edge, %for.body.cleanup_crit_edge, %do.end35.cleanup_crit_edge, %do.end21.cleanup_crit_edge, %if.then2.i.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end.cleanup_crit_edge ], [ null, %do.end21.cleanup_crit_edge ], [ null, %if.then2.i.cleanup_crit_edge ], [ null, %do.end35.cleanup_crit_edge ], [ %f.084, %for.body.cleanup_crit_edge ], [ null, %do.end53.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @route4_change(ptr noundef %net, ptr nocapture noundef readnone %in_skb, ptr noundef %tp, i32 noundef %base, i32 noundef %handle, ptr nocapture noundef readonly %tca, ptr nocapture noundef %arg, i32 noundef %flags, ptr noundef %extack) #2 align 64 {
entry:
  %tb = alloca [7 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #7
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b372 = load i1, ptr @route4_change.__warned, align 1
  br i1 %.b372, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @route4_change.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 470, ptr noundef nonnull @.str.11) #7
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
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %tb) #7
  %4 = getelementptr inbounds [7 x ptr], ptr %tb, i32 0, i32 1
  %5 = getelementptr inbounds [7 x ptr], ptr %tb, i32 0, i32 2
  %6 = getelementptr inbounds [7 x ptr], ptr %tb, i32 0, i32 3
  %7 = getelementptr inbounds [7 x ptr], ptr %tb, i32 0, i32 4
  %cmp = icmp eq ptr %3, null
  %8 = call ptr @memset(ptr %tb, i32 255, i32 28)
  br i1 %cmp, label %if.then4, label %if.end6

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %handle)
  %tobool5.not = icmp eq i32 %handle, 0
  %cond = select i1 %tobool5.not, i32 0, i32 -22
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %3, align 2
  %conv.i.i = zext i16 %10 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 6, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @route4_policy, i32 noundef 0, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp8 = icmp slt i32 %call2.i, 0
  br i1 %cmp8, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %11 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arg, align 4
  %tobool11.not = icmp eq ptr %12, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %handle)
  %tobool13.not = icmp eq i32 %handle, 0
  %or.cond = or i1 %tobool13.not, %tobool11.not
  br i1 %or.cond, label %if.end10.if.end18_crit_edge, label %land.lhs.true14

if.end10.if.end18_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

land.lhs.true14:                                  ; preds = %if.end10
  %handle15 = getelementptr inbounds %struct.route4_filter, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %handle15 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %handle15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %handle)
  %cmp16.not = icmp eq i32 %14, %handle
  br i1 %cmp16.not, label %land.lhs.true14.if.end18_crit_edge, label %land.lhs.true14.cleanup_crit_edge

land.lhs.true14.cleanup_crit_edge:                ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true14.if.end18_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.end18:                                         ; preds = %land.lhs.true14.if.end18_crit_edge, %if.end10.if.end18_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 116) #10
  %tobool20.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool20.not, label %if.end18.if.end281_crit_edge, label %if.end22

if.end18.if.end281_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end281

if.end22:                                         ; preds = %if.end18
  %exts = getelementptr inbounds %struct.route4_filter, ptr %call7.i.i, i32 0, i32 4
  %16 = ptrtoint ptr %exts to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %exts, align 4
  %nr_actions.i = getelementptr inbounds %struct.route4_filter, ptr %call7.i.i, i32 0, i32 4, i32 1
  %17 = ptrtoint ptr %nr_actions.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %nr_actions.i, align 8
  %net1.i = getelementptr inbounds %struct.route4_filter, ptr %call7.i.i, i32 0, i32 4, i32 3
  %18 = ptrtoint ptr %net1.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %net, ptr %net1.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %19 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3520, i32 noundef 128) #10
  %actions.i = getelementptr inbounds %struct.route4_filter, ptr %call7.i.i, i32 0, i32 4, i32 2
  %20 = ptrtoint ptr %actions.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i.i.i.i, ptr %actions.i, align 4
  %tobool.not.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i, label %if.end22.if.then279_crit_edge, label %if.end26

if.end22.if.then279_crit_edge:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then279

if.end26:                                         ; preds = %if.end22
  %action3.i = getelementptr inbounds %struct.route4_filter, ptr %call7.i.i, i32 0, i32 4, i32 5
  %21 = ptrtoint ptr %action3.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 6, ptr %action3.i, align 8
  %police4.i = getelementptr inbounds %struct.route4_filter, ptr %call7.i.i, i32 0, i32 4, i32 6
  %22 = ptrtoint ptr %police4.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 5, ptr %police4.i, align 4
  br i1 %tobool11.not, label %if.end26.if.end37_crit_edge, label %if.then28

if.end26.if.end37_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  %id = getelementptr inbounds %struct.route4_filter, ptr %12, i32 0, i32 1
  %23 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %id, align 4
  %id29 = getelementptr inbounds %struct.route4_filter, ptr %call7.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %id29 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %id29, align 4
  %iif = getelementptr inbounds %struct.route4_filter, ptr %12, i32 0, i32 2
  %26 = ptrtoint ptr %iif to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %iif, align 4
  %iif30 = getelementptr inbounds %struct.route4_filter, ptr %call7.i.i, i32 0, i32 2
  %28 = ptrtoint ptr %iif30 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %iif30, align 8
  %res = getelementptr inbounds %struct.route4_filter, ptr %call7.i.i, i32 0, i32 3
  %res31 = getelementptr inbounds %struct.route4_filter, ptr %12, i32 0, i32 3
  %29 = ptrtoint ptr %res31 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 8)
  %30 = load i64, ptr %res31, align 4
  %31 = ptrtoint ptr %res to i32
  call void @__asan_storeN_noabort(i32 %31, i32 8)
  store i64 %30, ptr %res, align 4
  %handle32 = getelementptr inbounds %struct.route4_filter, ptr %12, i32 0, i32 5
  %32 = ptrtoint ptr %handle32 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %handle32, align 4
  %handle33 = getelementptr inbounds %struct.route4_filter, ptr %call7.i.i, i32 0, i32 5
  %34 = ptrtoint ptr %handle33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %handle33, align 8
  %tp34 = getelementptr inbounds %struct.route4_filter, ptr %12, i32 0, i32 7
  %35 = ptrtoint ptr %tp34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tp34, align 4
  %tp35 = getelementptr inbounds %struct.route4_filter, ptr %call7.i.i, i32 0, i32 7
  %37 = ptrtoint ptr %tp35 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %tp35, align 8
  %bkt = getelementptr inbounds %struct.route4_filter, ptr %12, i32 0, i32 6
  %38 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bkt, align 4
  %bkt36 = getelementptr inbounds %struct.route4_filter, ptr %call7.i.i, i32 0, i32 6
  %40 = ptrtoint ptr %bkt36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %bkt36, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then28, %if.end26.if.end37_crit_edge
  %41 = xor i1 %tobool11.not, true
  %arrayidx39 = getelementptr ptr, ptr %tca, i32 5
  %42 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx39, align 4
  %call.i = call i32 @tcf_exts_validate(ptr noundef %net, ptr noundef %tp, ptr noundef nonnull %tb, ptr noundef %43, ptr noundef %exts, i32 noundef %flags, ptr noundef %extack) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end37.if.then279_crit_edge, label %if.end.i374

if.end37.if.then279_crit_edge:                    ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then279

if.end.i374:                                      ; preds = %if.end37
  %44 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %5, align 4
  %tobool.not.i373 = icmp eq ptr %45, null
  br i1 %tobool.not.i373, label %if.end.i374.if.end11.i_crit_edge, label %if.then1.i

if.end.i374.if.end11.i_crit_edge:                 ; preds = %if.end.i374
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

if.then1.i:                                       ; preds = %if.end.i374
  %and.i = and i32 %handle, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp ne i32 %and.i, 0
  %46 = and i1 %tobool3.not.i, %tobool11.not
  br i1 %46, label %if.then1.i.if.then279_crit_edge, label %if.end5.i

if.then1.i.if.then279_crit_edge:                  ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then279

if.end5.i:                                        ; preds = %if.then1.i
  %add.ptr.i.i.i = getelementptr i8, ptr %45, i32 4
  %47 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %add.ptr.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %48)
  %cmp8.i = icmp ugt i32 %48, 255
  br i1 %cmp8.i, label %if.end5.i.if.then279_crit_edge, label %if.end5.i.if.end11.i_crit_edge

if.end5.i.if.end11.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

if.end5.i.if.then279_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then279

if.end11.i:                                       ; preds = %if.end5.i.if.end11.i_crit_edge, %if.end.i374.if.end11.i_crit_edge
  %nhandle.0.i = phi i32 [ 32768, %if.end.i374.if.end11.i_crit_edge ], [ %48, %if.end5.i.if.end11.i_crit_edge ]
  %to.0.i = phi i32 [ 0, %if.end.i374.if.end11.i_crit_edge ], [ %48, %if.end5.i.if.end11.i_crit_edge ]
  %49 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %6, align 4
  %tobool13.not.i = icmp eq ptr %50, null
  %51 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %7, align 4
  %tobool25.not.i = icmp eq ptr %52, null
  br i1 %tobool13.not.i, label %if.else.i, label %if.then14.i

if.then14.i:                                      ; preds = %if.end11.i
  br i1 %tobool25.not.i, label %if.end18.i, label %if.then14.i.if.then279_crit_edge

if.then14.i.if.then279_crit_edge:                 ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then279

if.end18.i:                                       ; preds = %if.then14.i
  %add.ptr.i.i234.i = getelementptr i8, ptr %50, i32 4
  %53 = ptrtoint ptr %add.ptr.i.i234.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %add.ptr.i.i234.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %54)
  %cmp21.i = icmp ugt i32 %54, 255
  br i1 %cmp21.i, label %if.end18.i.if.then279_crit_edge, label %if.end23.i

if.end18.i.if.then279_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then279

if.end23.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i = shl nuw nsw i32 %54, 16
  br label %if.end38.i

if.else.i:                                        ; preds = %if.end11.i
  br i1 %tobool25.not.i, label %if.else.i.if.end38.i_crit_edge, label %if.then26.i

if.else.i.if.end38.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38.i

if.then26.i:                                      ; preds = %if.else.i
  %add.ptr.i.i235.i = getelementptr i8, ptr %52, i32 4
  %55 = ptrtoint ptr %add.ptr.i.i235.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %add.ptr.i.i235.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %56)
  %cmp29.i = icmp ugt i32 %56, 32767
  br i1 %cmp29.i, label %if.then26.i.if.then279_crit_edge, label %if.end31.i

if.then26.i.if.then279_crit_edge:                 ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then279

if.end31.i:                                       ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #9
  %or32.i = shl nuw nsw i32 %56, 16
  %shl33.i = or i32 %or32.i, -2147483648
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.end31.i, %if.else.i.if.end38.i_crit_edge, %if.end23.i
  %shl.pn.i = phi i32 [ %shl.i, %if.end23.i ], [ %shl33.i, %if.end31.i ], [ -65536, %if.else.i.if.end38.i_crit_edge ]
  %id.0.i = phi i32 [ %54, %if.end23.i ], [ %56, %if.end31.i ], [ 0, %if.else.i.if.end38.i_crit_edge ]
  %nhandle.1.i = or i32 %shl.pn.i, %nhandle.0.i
  %or.cond233.i = or i1 %tobool13.not, %41
  br i1 %or.cond233.i, label %if.end38.i.if.end48.i_crit_edge, label %if.then42.i

if.end38.i.if.end48.i_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48.i

if.then42.i:                                      ; preds = %if.end38.i
  %and43.i = and i32 %handle, 32512
  %or44.i = or i32 %nhandle.1.i, %and43.i
  call void @__sanitizer_cov_trace_cmp4(i32 %or44.i, i32 %handle)
  %cmp45.not.i = icmp eq i32 %or44.i, %handle
  br i1 %cmp45.not.i, label %if.then42.i.if.end48.i_crit_edge, label %if.then42.i.if.then279_crit_edge

if.then42.i.if.then279_crit_edge:                 ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then279

if.then42.i.if.end48.i_crit_edge:                 ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.then42.i.if.end48.i_crit_edge, %if.end38.i.if.end48.i_crit_edge
  %nhandle.2.i = phi i32 [ %handle, %if.then42.i.if.end48.i_crit_edge ], [ %nhandle.1.i, %if.end38.i.if.end48.i_crit_edge ]
  %and.i.i = and i32 %nhandle.2.i, 255
  %and1.i.i = lshr i32 %nhandle.2.i, 7
  %57 = and i32 %and1.i.i, 256
  %58 = or i32 %57, %and.i.i
  %call50.i = call zeroext i1 @lockdep_rtnl_is_held() #7
  br i1 %call50.i, label %if.end48.i.do.end.i_crit_edge, label %land.lhs.true51.i

if.end48.i.do.end.i_crit_edge:                    ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

land.lhs.true51.i:                                ; preds = %if.end48.i
  %call52.i = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i)
  %tobool53.not.i = icmp eq i32 %call52.i, 0
  br i1 %tobool53.not.i, label %land.lhs.true51.i.do.end.i_crit_edge, label %land.lhs.true54.i

land.lhs.true51.i.do.end.i_crit_edge:             ; preds = %land.lhs.true51.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

land.lhs.true54.i:                                ; preds = %land.lhs.true51.i
  %.b232.i = load i1, ptr @route4_set_parms.__warned, align 1
  br i1 %.b232.i, label %land.lhs.true54.i.do.end.i_crit_edge, label %if.then56.i

land.lhs.true54.i.do.end.i_crit_edge:             ; preds = %land.lhs.true54.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

if.then56.i:                                      ; preds = %land.lhs.true54.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @route4_set_parms.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 428, ptr noundef nonnull @.str.11) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then56.i, %land.lhs.true54.i.do.end.i_crit_edge, %land.lhs.true51.i.do.end.i_crit_edge, %if.end48.i.do.end.i_crit_edge
  %arrayidx58.i = getelementptr %struct.route4_head, ptr %1, i32 0, i32 1, i32 %58
  %59 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx58.i, align 4
  %tobool59.not.i = icmp eq ptr %60, null
  br i1 %tobool59.not.i, label %if.then60.i, label %if.else107.i

if.then60.i:                                      ; preds = %do.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %61 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %61, i32 noundef 3520, i32 noundef 140) #10
  %cmp62.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp62.i, label %if.then60.i.if.then279_crit_edge, label %do.body65.i

if.then60.i.if.then279_crit_edge:                 ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then279

do.body65.i:                                      ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !107
  %62 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %call7.i.i.i, ptr %arrayidx58.i, align 4
  br label %if.end140.i

if.else107.i:                                     ; preds = %do.end.i
  %shr.i = lshr i32 %nhandle.2.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %shr.i)
  %cmp.i.i = icmp eq i32 %shr.i, 65535
  br i1 %cmp.i.i, label %if.else107.i.from_hash.exit.i_crit_edge, label %if.end.i.i

if.else107.i.from_hash.exit.i_crit_edge:          ; preds = %if.else107.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %from_hash.exit.i

if.end.i.i:                                       ; preds = %if.else107.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %nhandle.2.i)
  %tobool.not.i.i = icmp sgt i32 %nhandle.2.i, -1
  %and6.i.i = and i32 %shr.i, 15
  br i1 %tobool.not.i.i, label %if.then2.i.i, label %if.end7.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %nhandle.2.i)
  %cmp3.inv.i.i = icmp ult i32 %nhandle.2.i, 16777216
  %spec.select.i.i = select i1 %cmp3.inv.i.i, i32 %and6.i.i, i32 256
  br label %from_hash.exit.i

if.end7.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.i.i = or i32 %and6.i.i, 16
  br label %from_hash.exit.i

from_hash.exit.i:                                 ; preds = %if.end7.i.i, %if.then2.i.i, %if.else107.i.from_hash.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %add.i.i, %if.end7.i.i ], [ 32, %if.else107.i.from_hash.exit.i_crit_edge ], [ %spec.select.i.i, %if.then2.i.i ]
  %call110.i = call zeroext i1 @lockdep_rtnl_is_held() #7
  br i1 %call110.i, label %from_hash.exit.i.do.end119.i_crit_edge, label %land.lhs.true111.i

from_hash.exit.i.do.end119.i_crit_edge:           ; preds = %from_hash.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end119.i

land.lhs.true111.i:                               ; preds = %from_hash.exit.i
  %call112.i = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112.i)
  %tobool113.not.i = icmp eq i32 %call112.i, 0
  br i1 %tobool113.not.i, label %land.lhs.true111.i.do.end119.i_crit_edge, label %land.lhs.true114.i

land.lhs.true111.i.do.end119.i_crit_edge:         ; preds = %land.lhs.true111.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end119.i

land.lhs.true114.i:                               ; preds = %land.lhs.true111.i
  %.b228231.i = load i1, ptr @route4_set_parms.__warned.23, align 1
  br i1 %.b228231.i, label %land.lhs.true114.i.do.end119.i_crit_edge, label %if.then116.i

land.lhs.true114.i.do.end119.i_crit_edge:         ; preds = %land.lhs.true114.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end119.i

if.then116.i:                                     ; preds = %land.lhs.true114.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @route4_set_parms.__warned.23, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 438, ptr noundef nonnull @.str.11) #7
  br label %do.end119.i

do.end119.i:                                      ; preds = %if.then116.i, %land.lhs.true114.i.do.end119.i_crit_edge, %land.lhs.true111.i.do.end119.i_crit_edge, %from_hash.exit.i.do.end119.i_crit_edge
  %arrayidx121.i = getelementptr [33 x ptr], ptr %60, i32 0, i32 %retval.0.i.i
  %63 = ptrtoint ptr %arrayidx121.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %fp.0240.i = load ptr, ptr %arrayidx121.i, align 4
  %tobool122.not241.i = icmp eq ptr %fp.0240.i, null
  br i1 %tobool122.not241.i, label %do.end119.i.if.end140.i_crit_edge, label %for.body.lr.ph.i

do.end119.i.if.end140.i_crit_edge:                ; preds = %do.end119.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end140.i

for.body.lr.ph.i:                                 ; preds = %do.end119.i
  %handle124.i = getelementptr inbounds %struct.route4_filter, ptr %call7.i.i, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %do.end138.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %fp.0242.i = phi ptr [ %fp.0240.i, %for.body.lr.ph.i ], [ %fp.0.i, %do.end138.i.for.body.i_crit_edge ]
  %handle123.i = getelementptr inbounds %struct.route4_filter, ptr %fp.0242.i, i32 0, i32 5
  %64 = ptrtoint ptr %handle123.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %handle123.i, align 4
  %66 = ptrtoint ptr %handle124.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %handle124.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %67)
  %cmp125.i = icmp eq i32 %65, %67
  br i1 %cmp125.i, label %for.body.i.if.then279_crit_edge, label %do.body128.i

for.body.i.if.then279_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then279

do.body128.i:                                     ; preds = %for.body.i
  %call129.i = call zeroext i1 @lockdep_rtnl_is_held() #7
  br i1 %call129.i, label %do.body128.i.do.end138.i_crit_edge, label %land.lhs.true130.i

do.body128.i.do.end138.i_crit_edge:               ; preds = %do.body128.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end138.i

land.lhs.true130.i:                               ; preds = %do.body128.i
  %call131.i = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131.i)
  %tobool132.not.i = icmp eq i32 %call131.i, 0
  br i1 %tobool132.not.i, label %land.lhs.true130.i.do.end138.i_crit_edge, label %land.lhs.true133.i

land.lhs.true130.i.do.end138.i_crit_edge:         ; preds = %land.lhs.true130.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end138.i

land.lhs.true133.i:                               ; preds = %land.lhs.true130.i
  %.b229230.i = load i1, ptr @route4_set_parms.__warned.24, align 1
  br i1 %.b229230.i, label %land.lhs.true133.i.do.end138.i_crit_edge, label %if.then135.i

land.lhs.true133.i.do.end138.i_crit_edge:         ; preds = %land.lhs.true133.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end138.i

if.then135.i:                                     ; preds = %land.lhs.true133.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @route4_set_parms.__warned.24, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 440, ptr noundef nonnull @.str.11) #7
  br label %do.end138.i

do.end138.i:                                      ; preds = %if.then135.i, %land.lhs.true133.i.do.end138.i_crit_edge, %land.lhs.true130.i.do.end138.i_crit_edge, %do.body128.i.do.end138.i_crit_edge
  %68 = ptrtoint ptr %fp.0242.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %fp.0.i = load ptr, ptr %fp.0242.i, align 4
  %tobool122.not.i = icmp eq ptr %fp.0.i, null
  br i1 %tobool122.not.i, label %do.end138.i.if.end140.i_crit_edge, label %do.end138.i.for.body.i_crit_edge

do.end138.i.for.body.i_crit_edge:                 ; preds = %do.end138.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

do.end138.i.if.end140.i_crit_edge:                ; preds = %do.end138.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end140.i

if.end140.i:                                      ; preds = %do.end138.i.if.end140.i_crit_edge, %do.end119.i.if.end140.i_crit_edge, %do.body65.i
  %b.0.i = phi ptr [ %call7.i.i.i, %do.body65.i ], [ %60, %do.end119.i.if.end140.i_crit_edge ], [ %60, %do.end138.i.if.end140.i_crit_edge ]
  %69 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %5, align 4
  %tobool142.not.i = icmp eq ptr %70, null
  br i1 %tobool142.not.i, label %if.end140.i.if.end145.i_crit_edge, label %if.then143.i

if.end140.i.if.end145.i_crit_edge:                ; preds = %if.end140.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end145.i

if.then143.i:                                     ; preds = %if.end140.i
  call void @__sanitizer_cov_trace_pc() #9
  %id144.i = getelementptr inbounds %struct.route4_filter, ptr %call7.i.i, i32 0, i32 1
  %71 = ptrtoint ptr %id144.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %to.0.i, ptr %id144.i, align 4
  br label %if.end145.i

if.end145.i:                                      ; preds = %if.then143.i, %if.end140.i.if.end145.i_crit_edge
  %72 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %6, align 4
  %tobool147.not.i = icmp eq ptr %73, null
  br i1 %tobool147.not.i, label %if.else152.i, label %if.then148.i

if.then148.i:                                     ; preds = %if.end145.i
  call void @__sanitizer_cov_trace_pc() #9
  %shl149.i = shl i32 %id.0.i, 16
  %or150.i = or i32 %shl149.i, %to.0.i
  %id151.i = getelementptr inbounds %struct.route4_filter, ptr %call7.i.i, i32 0, i32 1
  %74 = ptrtoint ptr %id151.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %or150.i, ptr %id151.i, align 4
  br label %if.end157.i

if.else152.i:                                     ; preds = %if.end145.i
  %75 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %7, align 4
  %tobool154.not.i = icmp eq ptr %76, null
  br i1 %tobool154.not.i, label %if.else152.i.if.end157.i_crit_edge, label %if.then155.i

if.else152.i.if.end157.i_crit_edge:               ; preds = %if.else152.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end157.i

if.then155.i:                                     ; preds = %if.else152.i
  call void @__sanitizer_cov_trace_pc() #9
  %iif.i = getelementptr inbounds %struct.route4_filter, ptr %call7.i.i, i32 0, i32 2
  %77 = ptrtoint ptr %iif.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %id.0.i, ptr %iif.i, align 8
  br label %if.end157.i

if.end157.i:                                      ; preds = %if.then155.i, %if.else152.i.if.end157.i_crit_edge, %if.then148.i
  %handle158.i = getelementptr inbounds %struct.route4_filter, ptr %call7.i.i, i32 0, i32 5
  %78 = ptrtoint ptr %handle158.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %nhandle.2.i, ptr %handle158.i, align 8
  %bkt.i = getelementptr inbounds %struct.route4_filter, ptr %call7.i.i, i32 0, i32 6
  %79 = ptrtoint ptr %bkt.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %b.0.i, ptr %bkt.i, align 4
  %tp159.i = getelementptr inbounds %struct.route4_filter, ptr %call7.i.i, i32 0, i32 7
  %80 = ptrtoint ptr %tp159.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %tp, ptr %tp159.i, align 8
  %81 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %4, align 4
  %tobool161.not.i = icmp eq ptr %82, null
  br i1 %tobool161.not.i, label %if.end157.i.if.end45_crit_edge, label %if.then162.i

if.end157.i.if.end45_crit_edge:                   ; preds = %if.end157.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.then162.i:                                     ; preds = %if.end157.i
  %add.ptr.i.i237.i = getelementptr i8, ptr %82, i32 4
  %83 = ptrtoint ptr %add.ptr.i.i237.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %add.ptr.i.i237.i, align 4
  %res.i = getelementptr inbounds %struct.route4_filter, ptr %call7.i.i, i32 0, i32 3
  %classid.i = getelementptr inbounds %struct.route4_filter, ptr %call7.i.i, i32 0, i32 3, i32 0, i32 0, i32 1
  %85 = ptrtoint ptr %classid.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %classid.i, align 8
  %chain.i.i = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 7
  %86 = ptrtoint ptr %chain.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %chain.i.i, align 4
  %block.i.i = getelementptr inbounds %struct.tcf_chain, ptr %87, i32 0, i32 3
  %88 = ptrtoint ptr %block.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %block.i.i, align 4
  %q1.i.i = getelementptr inbounds %struct.tcf_block, ptr %89, i32 0, i32 6
  %90 = ptrtoint ptr %q1.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %q1.i.i, align 4
  %tobool.not.i238.i = icmp eq ptr %91, null
  br i1 %tobool.not.i238.i, label %if.then162.i.if.end45_crit_edge, label %if.end.i239.i

if.then162.i.if.end45_crit_edge:                  ; preds = %if.then162.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.end.i239.i:                                    ; preds = %if.then162.i
  %flags.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %91, i32 0, i32 2
  %92 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %flags.i.i.i, align 8
  %and.i.i.i = and i32 %93, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.end.i239.i.sch_tree_lock.exit.i.i_crit_edge

if.end.i239.i.sch_tree_lock.exit.i.i_crit_edge:   ; preds = %if.end.i239.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sch_tree_lock.exit.i.i

if.else.i.i.i:                                    ; preds = %if.end.i239.i
  %dev_queue.i.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %91, i32 0, i32 9
  %94 = ptrtoint ptr %dev_queue.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev_queue.i.i.i.i.i, align 8
  %qdisc_sleeping.i.i.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %95, i32 0, i32 3
  %96 = ptrtoint ptr %qdisc_sleeping.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %qdisc_sleeping.i.i.i.i.i, align 4
  %call1.i.i.i.i = call i32 @rtnl_is_locked() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %land.rhs.i.i.i.i, label %if.else.i.i.i.sch_tree_lock.exit.i.i_crit_edge

if.else.i.i.i.sch_tree_lock.exit.i.i_crit_edge:   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sch_tree_lock.exit.i.i

land.rhs.i.i.i.i:                                 ; preds = %if.else.i.i.i
  %.b41.i.i.i.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i.i.i, label %land.rhs.i.i.i.i.sch_tree_lock.exit.i.i_crit_edge, label %if.then.i.i.i.i, !prof !108

land.rhs.i.i.i.i.sch_tree_lock.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sch_tree_lock.exit.i.i

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.25, i32 noundef 596) #7
  br label %sch_tree_lock.exit.i.i

sch_tree_lock.exit.i.i:                           ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.sch_tree_lock.exit.i.i_crit_edge, %if.else.i.i.i.sch_tree_lock.exit.i.i_crit_edge, %if.end.i239.i.sch_tree_lock.exit.i.i_crit_edge
  %.sink.i.i.i = phi ptr [ %91, %if.end.i239.i.sch_tree_lock.exit.i.i_crit_edge ], [ %97, %if.else.i.i.i.sch_tree_lock.exit.i.i_crit_edge ], [ %97, %land.rhs.i.i.i.i.sch_tree_lock.exit.i.i_crit_edge ], [ %97, %if.then.i.i.i.i ]
  %lock.i.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %.sink.i.i.i, i32 0, i32 17, i32 3
  call void @_raw_spin_lock_bh(ptr noundef %lock.i.i.i.i.i) #7
  %ops.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %91, i32 0, i32 4
  %98 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %ops.i.i.i, align 16
  %cl_ops.i.i.i = getelementptr inbounds %struct.Qdisc_ops, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %cl_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %cl_ops.i.i.i, align 4
  %bind_tcf.i.i.i = getelementptr inbounds %struct.Qdisc_class_ops, ptr %101, i32 0, i32 10
  %102 = ptrtoint ptr %bind_tcf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %bind_tcf.i.i.i, align 4
  %104 = ptrtoint ptr %classid.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %classid.i, align 8
  %call.i.i.i = call i32 %103(ptr noundef nonnull %91, i32 noundef %base, i32 noundef %105) #7
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %res.i, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !104
  call void @llvm.prefetch.p0(ptr %res.i, i32 1, i32 3, i32 1) #7
  %106 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %call.i.i.i, ptr %res.i) #7, !srcloc !105
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %106, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !106
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool.not.i5.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool.not.i5.i.i, label %sch_tree_lock.exit.i.i.__tcf_bind_filter.exit.i.i_crit_edge, label %if.then.i.i.i

sch_tree_lock.exit.i.i.__tcf_bind_filter.exit.i.i_crit_edge: ; preds = %sch_tree_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__tcf_bind_filter.exit.i.i

if.then.i.i.i:                                    ; preds = %sch_tree_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %107 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %ops.i.i.i, align 16
  %cl_ops3.i.i.i = getelementptr inbounds %struct.Qdisc_ops, ptr %108, i32 0, i32 1
  %109 = ptrtoint ptr %cl_ops3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %cl_ops3.i.i.i, align 4
  %unbind_tcf.i.i.i = getelementptr inbounds %struct.Qdisc_class_ops, ptr %110, i32 0, i32 11
  %111 = ptrtoint ptr %unbind_tcf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %unbind_tcf.i.i.i, align 4
  call void %112(ptr noundef nonnull %91, i32 noundef %asmresult.i.i.i.i.i) #7
  br label %__tcf_bind_filter.exit.i.i

__tcf_bind_filter.exit.i.i:                       ; preds = %if.then.i.i.i, %sch_tree_lock.exit.i.i.__tcf_bind_filter.exit.i.i_crit_edge
  %113 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %flags.i.i.i, align 8
  %and.i7.i.i = and i32 %114, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i7.i.i)
  %tobool.not.i8.i.i = icmp eq i32 %and.i7.i.i, 0
  br i1 %tobool.not.i8.i.i, label %if.else.i13.i.i, label %__tcf_bind_filter.exit.i.i.sch_tree_unlock.exit.i.i_crit_edge

__tcf_bind_filter.exit.i.i.sch_tree_unlock.exit.i.i_crit_edge: ; preds = %__tcf_bind_filter.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sch_tree_unlock.exit.i.i

if.else.i13.i.i:                                  ; preds = %__tcf_bind_filter.exit.i.i
  %dev_queue.i.i.i9.i.i = getelementptr inbounds %struct.Qdisc, ptr %91, i32 0, i32 9
  %115 = ptrtoint ptr %dev_queue.i.i.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dev_queue.i.i.i9.i.i, align 8
  %qdisc_sleeping.i.i.i10.i.i = getelementptr inbounds %struct.netdev_queue, ptr %116, i32 0, i32 3
  %117 = ptrtoint ptr %qdisc_sleeping.i.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %qdisc_sleeping.i.i.i10.i.i, align 4
  %call1.i.i11.i.i = call i32 @rtnl_is_locked() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i11.i.i)
  %tobool.not.i.i12.i.i = icmp eq i32 %call1.i.i11.i.i, 0
  br i1 %tobool.not.i.i12.i.i, label %land.rhs.i.i15.i.i, label %if.else.i13.i.i.sch_tree_unlock.exit.i.i_crit_edge

if.else.i13.i.i.sch_tree_unlock.exit.i.i_crit_edge: ; preds = %if.else.i13.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sch_tree_unlock.exit.i.i

land.rhs.i.i15.i.i:                               ; preds = %if.else.i13.i.i
  %.b41.i.i14.i.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i14.i.i, label %land.rhs.i.i15.i.i.sch_tree_unlock.exit.i.i_crit_edge, label %if.then.i.i16.i.i, !prof !108

land.rhs.i.i15.i.i.sch_tree_unlock.exit.i.i_crit_edge: ; preds = %land.rhs.i.i15.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sch_tree_unlock.exit.i.i

if.then.i.i16.i.i:                                ; preds = %land.rhs.i.i15.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.25, i32 noundef 596) #7
  br label %sch_tree_unlock.exit.i.i

sch_tree_unlock.exit.i.i:                         ; preds = %if.then.i.i16.i.i, %land.rhs.i.i15.i.i.sch_tree_unlock.exit.i.i_crit_edge, %if.else.i13.i.i.sch_tree_unlock.exit.i.i_crit_edge, %__tcf_bind_filter.exit.i.i.sch_tree_unlock.exit.i.i_crit_edge
  %.sink.i17.i.i = phi ptr [ %91, %__tcf_bind_filter.exit.i.i.sch_tree_unlock.exit.i.i_crit_edge ], [ %118, %if.else.i13.i.i.sch_tree_unlock.exit.i.i_crit_edge ], [ %118, %land.rhs.i.i15.i.i.sch_tree_unlock.exit.i.i_crit_edge ], [ %118, %if.then.i.i16.i.i ]
  %lock.i.i.i18.i.i = getelementptr inbounds %struct.Qdisc, ptr %.sink.i17.i.i, i32 0, i32 17, i32 3
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i.i18.i.i) #7
  br label %if.end45

if.end45:                                         ; preds = %sch_tree_unlock.exit.i.i, %if.then162.i.if.end45_crit_edge, %if.end157.i.if.end45_crit_edge
  %119 = ptrtoint ptr %handle158.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %handle158.i, align 8
  %shr = lshr i32 %120, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %shr)
  %cmp.i375 = icmp eq i32 %shr, 65535
  br i1 %cmp.i375, label %if.end45.from_hash.exit_crit_edge, label %if.end.i377

if.end45.from_hash.exit_crit_edge:                ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %from_hash.exit

if.end.i377:                                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %120)
  %tobool.not.i376 = icmp sgt i32 %120, -1
  %and6.i = and i32 %shr, 15
  br i1 %tobool.not.i376, label %if.then2.i, label %if.end7.i

if.then2.i:                                       ; preds = %if.end.i377
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %120)
  %cmp3.inv.i = icmp ult i32 %120, 16777216
  %spec.select.i = select i1 %cmp3.inv.i, i32 %and6.i, i32 256
  br label %from_hash.exit

if.end7.i:                                        ; preds = %if.end.i377
  call void @__sanitizer_cov_trace_pc() #9
  %add.i = or i32 %and6.i, 16
  br label %from_hash.exit

from_hash.exit:                                   ; preds = %if.end7.i, %if.then2.i, %if.end45.from_hash.exit_crit_edge
  %retval.0.i378 = phi i32 [ %add.i, %if.end7.i ], [ 32, %if.end45.from_hash.exit_crit_edge ], [ %spec.select.i, %if.then2.i ]
  %121 = ptrtoint ptr %bkt.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %bkt.i, align 4
  %arrayidx49 = getelementptr [33 x ptr], ptr %122, i32 0, i32 %retval.0.i378
  %call51 = call zeroext i1 @lockdep_rtnl_is_held() #7
  br i1 %call51, label %from_hash.exit.for.cond.preheader_crit_edge, label %land.lhs.true52

from_hash.exit.for.cond.preheader_crit_edge:      ; preds = %from_hash.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.preheader

land.lhs.true52:                                  ; preds = %from_hash.exit
  %call53 = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %land.lhs.true52.for.cond.preheader_crit_edge, label %land.lhs.true55

land.lhs.true52.for.cond.preheader_crit_edge:     ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.preheader

land.lhs.true55:                                  ; preds = %land.lhs.true52
  %.b362371 = load i1, ptr @route4_change.__warned.18, align 1
  br i1 %.b362371, label %land.lhs.true55.for.cond.preheader_crit_edge, label %if.then57

land.lhs.true55.for.cond.preheader_crit_edge:     ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.preheader

if.then57:                                        ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @route4_change.__warned.18, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 519, ptr noundef nonnull @.str.11) #7
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then57, %land.lhs.true55.for.cond.preheader_crit_edge, %land.lhs.true52.for.cond.preheader_crit_edge, %from_hash.exit.for.cond.preheader_crit_edge
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %for.cond.preheader
  %fp.0 = phi ptr [ %124, %for.body.for.cond_crit_edge ], [ %arrayidx49, %for.cond.preheader ]
  %call63 = call zeroext i1 @lockdep_rtnl_is_held() #7
  br i1 %call63, label %for.cond.do.end72_crit_edge, label %land.lhs.true64

for.cond.do.end72_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end72

land.lhs.true64:                                  ; preds = %for.cond
  %call65 = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %land.lhs.true64.do.end72_crit_edge, label %land.lhs.true67

land.lhs.true64.do.end72_crit_edge:               ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end72

land.lhs.true67:                                  ; preds = %land.lhs.true64
  %.b363370 = load i1, ptr @route4_change.__warned.19, align 1
  br i1 %.b363370, label %land.lhs.true67.do.end72_crit_edge, label %if.then69

land.lhs.true67.do.end72_crit_edge:               ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end72

if.then69:                                        ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @route4_change.__warned.19, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 520, ptr noundef nonnull @.str.11) #7
  br label %do.end72

do.end72:                                         ; preds = %if.then69, %land.lhs.true67.do.end72_crit_edge, %land.lhs.true64.do.end72_crit_edge, %for.cond.do.end72_crit_edge
  %123 = ptrtoint ptr %fp.0 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %fp.0, align 4
  %cmp74.not = icmp eq ptr %124, null
  br i1 %cmp74.not, label %do.end72.for.end_crit_edge, label %for.body

do.end72.for.end_crit_edge:                       ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %do.end72
  %125 = ptrtoint ptr %handle158.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %handle158.i, align 8
  %handle77 = getelementptr inbounds %struct.route4_filter, ptr %124, i32 0, i32 5
  %127 = ptrtoint ptr %handle77 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %handle77, align 4
  %cmp78 = icmp ult i32 %126, %128
  br i1 %cmp78, label %for.body.for.end_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end72.for.end_crit_edge
  %chain = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 7
  %129 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %chain, align 4
  %block = getelementptr inbounds %struct.tcf_chain, ptr %130, i32 0, i32 3
  %131 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %block, align 4
  call void @tcf_block_netif_keep_dst(ptr noundef %132) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !109
  %133 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store volatile ptr %124, ptr %call7.i.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !110
  %134 = ptrtoint ptr %fp.0 to i32
  call void @__asan_store4_noabort(i32 %134)
  store volatile ptr %call7.i.i, ptr %fp.0, align 4
  br i1 %tobool11.not, label %if.end277.critedge, label %land.lhs.true163

land.lhs.true163:                                 ; preds = %for.end
  %handle164 = getelementptr inbounds %struct.route4_filter, ptr %12, i32 0, i32 5
  %135 = ptrtoint ptr %handle164 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %handle164, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %tobool165.not = icmp eq i32 %136, 0
  br i1 %tobool165.not, label %land.lhs.true163.if.then272_crit_edge, label %land.lhs.true166

land.lhs.true163.if.then272_crit_edge:            ; preds = %land.lhs.true163
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then272

land.lhs.true166:                                 ; preds = %land.lhs.true163
  %137 = ptrtoint ptr %handle158.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %handle158.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %138, i32 %136)
  %cmp169.not = icmp eq i32 %138, %136
  br i1 %cmp169.not, label %land.lhs.true166.if.then272_crit_edge, label %if.then171

land.lhs.true166.if.then272_crit_edge:            ; preds = %land.lhs.true166
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then272

if.then171:                                       ; preds = %land.lhs.true166
  %and.i379 = and i32 %136, 255
  %and1.i380 = lshr i32 %136, 7
  %139 = and i32 %and1.i380, 256
  %140 = or i32 %139, %and.i379
  %shr175 = lshr i32 %136, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %shr175)
  %cmp.i381 = icmp eq i32 %shr175, 65535
  br i1 %cmp.i381, label %if.then171.from_hash.exit392_crit_edge, label %if.end.i385

if.then171.from_hash.exit392_crit_edge:           ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #9
  br label %from_hash.exit392

if.end.i385:                                      ; preds = %if.then171
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %136)
  %tobool.not.i383 = icmp sgt i32 %136, -1
  %and6.i384 = and i32 %shr175, 15
  br i1 %tobool.not.i383, label %if.then2.i388, label %if.end7.i390

if.then2.i388:                                    ; preds = %if.end.i385
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %136)
  %cmp3.inv.i386 = icmp ult i32 %136, 16777216
  %spec.select.i387 = select i1 %cmp3.inv.i386, i32 %and6.i384, i32 256
  br label %from_hash.exit392

if.end7.i390:                                     ; preds = %if.end.i385
  call void @__sanitizer_cov_trace_pc() #9
  %add.i389 = or i32 %and6.i384, 16
  br label %from_hash.exit392

from_hash.exit392:                                ; preds = %if.end7.i390, %if.then2.i388, %if.then171.from_hash.exit392_crit_edge
  %retval.0.i391 = phi i32 [ %add.i389, %if.end7.i390 ], [ 32, %if.then171.from_hash.exit392_crit_edge ], [ %spec.select.i387, %if.then2.i388 ]
  %call178 = call zeroext i1 @lockdep_rtnl_is_held() #7
  br i1 %call178, label %from_hash.exit392.do.end187_crit_edge, label %land.lhs.true179

from_hash.exit392.do.end187_crit_edge:            ; preds = %from_hash.exit392
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end187

land.lhs.true179:                                 ; preds = %from_hash.exit392
  %call180 = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call180)
  %tobool181.not = icmp eq i32 %call180, 0
  br i1 %tobool181.not, label %land.lhs.true179.do.end187_crit_edge, label %land.lhs.true182

land.lhs.true179.do.end187_crit_edge:             ; preds = %land.lhs.true179
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end187

land.lhs.true182:                                 ; preds = %land.lhs.true179
  %.b364369 = load i1, ptr @route4_change.__warned.20, align 1
  br i1 %.b364369, label %land.lhs.true182.do.end187_crit_edge, label %if.then184

land.lhs.true182.do.end187_crit_edge:             ; preds = %land.lhs.true182
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end187

if.then184:                                       ; preds = %land.lhs.true182
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @route4_change.__warned.20, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 532, ptr noundef nonnull @.str.11) #7
  br label %do.end187

do.end187:                                        ; preds = %if.then184, %land.lhs.true182.do.end187_crit_edge, %land.lhs.true179.do.end187_crit_edge, %from_hash.exit392.do.end187_crit_edge
  %arrayidx189 = getelementptr %struct.route4_head, ptr %1, i32 0, i32 1, i32 %140
  %141 = ptrtoint ptr %arrayidx189 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %arrayidx189, align 4
  %tobool190.not = icmp eq ptr %142, null
  br i1 %tobool190.not, label %do.end187.if.then272_crit_edge, label %if.then191

do.end187.if.then272_crit_edge:                   ; preds = %do.end187
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then272

if.then191:                                       ; preds = %do.end187
  %arrayidx193 = getelementptr [33 x ptr], ptr %142, i32 0, i32 %retval.0.i391
  %call195 = call zeroext i1 @lockdep_rtnl_is_held() #7
  br i1 %call195, label %if.then191.do.end204_crit_edge, label %land.lhs.true196

if.then191.do.end204_crit_edge:                   ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end204

land.lhs.true196:                                 ; preds = %if.then191
  %call197 = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call197)
  %tobool198.not = icmp eq i32 %call197, 0
  br i1 %tobool198.not, label %land.lhs.true196.do.end204_crit_edge, label %land.lhs.true199

land.lhs.true196.do.end204_crit_edge:             ; preds = %land.lhs.true196
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end204

land.lhs.true199:                                 ; preds = %land.lhs.true196
  %.b365368 = load i1, ptr @route4_change.__warned.21, align 1
  br i1 %.b365368, label %land.lhs.true199.do.end204_crit_edge, label %if.then201

land.lhs.true199.do.end204_crit_edge:             ; preds = %land.lhs.true199
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end204

if.then201:                                       ; preds = %land.lhs.true199
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @route4_change.__warned.21, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 535, ptr noundef nonnull @.str.11) #7
  br label %do.end204

do.end204:                                        ; preds = %if.then201, %land.lhs.true199.do.end204_crit_edge, %land.lhs.true196.do.end204_crit_edge, %if.then191.do.end204_crit_edge
  %143 = ptrtoint ptr %arrayidx193 to i32
  call void @__asan_load4_noabort(i32 %143)
  %pfp.0407 = load ptr, ptr %arrayidx193, align 4
  %tobool207.not408 = icmp eq ptr %pfp.0407, null
  br i1 %tobool207.not408, label %do.end204.if.then272_crit_edge, label %for.body208.preheader

do.end204.if.then272_crit_edge:                   ; preds = %do.end204
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then272

for.body208.preheader:                            ; preds = %do.end204
  %cmp209414 = icmp eq ptr %pfp.0407, %12
  br i1 %cmp209414, label %for.body208.preheader.do.body212_crit_edge, label %for.body208.preheader.for.inc254_crit_edge

for.body208.preheader.for.inc254_crit_edge:       ; preds = %for.body208.preheader
  br label %for.inc254

for.body208.preheader.do.body212_crit_edge:       ; preds = %for.body208.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body212

for.body208:                                      ; preds = %do.end266
  %cmp209 = icmp eq ptr %pfp.0, %12
  br i1 %cmp209, label %for.body208.do.body212_crit_edge, label %for.body208.for.inc254_crit_edge

for.body208.for.inc254_crit_edge:                 ; preds = %for.body208
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc254

for.body208.do.body212_crit_edge:                 ; preds = %for.body208
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body212

do.body212:                                       ; preds = %for.body208.do.body212_crit_edge, %for.body208.preheader.do.body212_crit_edge
  %fp.1409.lcssa = phi ptr [ %arrayidx193, %for.body208.preheader.do.body212_crit_edge ], [ %pfp.0410415, %for.body208.do.body212_crit_edge ]
  %144 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %12, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !111
  %146 = ptrtoint ptr %fp.1409.lcssa to i32
  call void @__asan_store4_noabort(i32 %146)
  store volatile ptr %145, ptr %fp.1409.lcssa, align 4
  br label %if.then272

for.inc254:                                       ; preds = %for.body208.for.inc254_crit_edge, %for.body208.preheader.for.inc254_crit_edge
  %pfp.0410415 = phi ptr [ %pfp.0, %for.body208.for.inc254_crit_edge ], [ %pfp.0407, %for.body208.preheader.for.inc254_crit_edge ]
  %call257 = call zeroext i1 @lockdep_rtnl_is_held() #7
  br i1 %call257, label %for.inc254.do.end266_crit_edge, label %land.lhs.true258

for.inc254.do.end266_crit_edge:                   ; preds = %for.inc254
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end266

land.lhs.true258:                                 ; preds = %for.inc254
  %call259 = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call259)
  %tobool260.not = icmp eq i32 %call259, 0
  br i1 %tobool260.not, label %land.lhs.true258.do.end266_crit_edge, label %land.lhs.true261

land.lhs.true258.do.end266_crit_edge:             ; preds = %land.lhs.true258
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end266

land.lhs.true261:                                 ; preds = %land.lhs.true258
  %.b366367 = load i1, ptr @route4_change.__warned.22, align 1
  br i1 %.b366367, label %land.lhs.true261.do.end266_crit_edge, label %if.then263

land.lhs.true261.do.end266_crit_edge:             ; preds = %land.lhs.true261
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end266

if.then263:                                       ; preds = %land.lhs.true261
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @route4_change.__warned.22, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 536, ptr noundef nonnull @.str.11) #7
  br label %do.end266

do.end266:                                        ; preds = %if.then263, %land.lhs.true261.do.end266_crit_edge, %land.lhs.true258.do.end266_crit_edge, %for.inc254.do.end266_crit_edge
  %147 = ptrtoint ptr %pfp.0410415 to i32
  call void @__asan_load4_noabort(i32 %147)
  %pfp.0 = load ptr, ptr %pfp.0410415, align 4
  %tobool207.not = icmp eq ptr %pfp.0, null
  br i1 %tobool207.not, label %do.end266.if.then272_crit_edge, label %for.body208

do.end266.if.then272_crit_edge:                   ; preds = %do.end266
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then272

if.then272:                                       ; preds = %do.end266.if.then272_crit_edge, %do.body212, %do.end204.if.then272_crit_edge, %do.end187.if.then272_crit_edge, %land.lhs.true166.if.then272_crit_edge, %land.lhs.true163.if.then272_crit_edge
  call void @_raw_spin_lock_bh(ptr noundef nonnull @fastmap_lock) #7
  %148 = call ptr @memset(ptr %1, i32 0, i32 192)
  call void @_raw_spin_unlock_bh(ptr noundef nonnull @fastmap_lock) #7
  %149 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %call7.i.i, ptr %arg, align 4
  %150 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %chain, align 4
  %block.i = getelementptr inbounds %struct.tcf_chain, ptr %151, i32 0, i32 3
  %152 = ptrtoint ptr %block.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %block.i, align 4
  %q1.i = getelementptr inbounds %struct.tcf_block, ptr %153, i32 0, i32 6
  %154 = ptrtoint ptr %q1.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %q1.i, align 4
  %tobool.not.i393 = icmp eq ptr %155, null
  br i1 %tobool.not.i393, label %if.then272.tcf_unbind_filter.exit_crit_edge, label %if.end.i394

if.then272.tcf_unbind_filter.exit_crit_edge:      ; preds = %if.then272
  call void @__sanitizer_cov_trace_pc() #9
  br label %tcf_unbind_filter.exit

if.end.i394:                                      ; preds = %if.then272
  %res273 = getelementptr inbounds %struct.route4_filter, ptr %12, i32 0, i32 3
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %res273, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !104
  call void @llvm.prefetch.p0(ptr %res273, i32 1, i32 3, i32 1) #7
  %156 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %res273) #7, !srcloc !105
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %156, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !106
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i, label %if.end.i394.tcf_unbind_filter.exit_crit_edge, label %if.then.i.i

if.end.i394.tcf_unbind_filter.exit_crit_edge:     ; preds = %if.end.i394
  call void @__sanitizer_cov_trace_pc() #9
  br label %tcf_unbind_filter.exit

if.then.i.i:                                      ; preds = %if.end.i394
  call void @__sanitizer_cov_trace_pc() #9
  %ops.i.i = getelementptr inbounds %struct.Qdisc, ptr %155, i32 0, i32 4
  %157 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %ops.i.i, align 16
  %cl_ops.i.i = getelementptr inbounds %struct.Qdisc_ops, ptr %158, i32 0, i32 1
  %159 = ptrtoint ptr %cl_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %cl_ops.i.i, align 4
  %unbind_tcf.i.i = getelementptr inbounds %struct.Qdisc_class_ops, ptr %160, i32 0, i32 11
  %161 = ptrtoint ptr %unbind_tcf.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %unbind_tcf.i.i, align 4
  call void %162(ptr noundef nonnull %155, i32 noundef %asmresult.i.i.i.i) #7
  br label %tcf_unbind_filter.exit

tcf_unbind_filter.exit:                           ; preds = %if.then.i.i, %if.end.i394.tcf_unbind_filter.exit_crit_edge, %if.then272.tcf_unbind_filter.exit_crit_edge
  %exts274 = getelementptr inbounds %struct.route4_filter, ptr %12, i32 0, i32 4
  %call275 = call fastcc zeroext i1 @tcf_exts_get_net(ptr noundef %exts274)
  %rwork = getelementptr inbounds %struct.route4_filter, ptr %12, i32 0, i32 8
  %call276 = call zeroext i1 @tcf_queue_work(ptr noundef %rwork, ptr noundef nonnull @route4_delete_filter_work) #7
  br label %cleanup

if.end277.critedge:                               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @_raw_spin_lock_bh(ptr noundef nonnull @fastmap_lock) #7
  %163 = call ptr @memset(ptr %1, i32 0, i32 192)
  call void @_raw_spin_unlock_bh(ptr noundef nonnull @fastmap_lock) #7
  %164 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr %call7.i.i, ptr %arg, align 4
  br label %cleanup

if.then279:                                       ; preds = %for.body.i.if.then279_crit_edge, %if.then60.i.if.then279_crit_edge, %if.then42.i.if.then279_crit_edge, %if.then26.i.if.then279_crit_edge, %if.end18.i.if.then279_crit_edge, %if.then14.i.if.then279_crit_edge, %if.end5.i.if.then279_crit_edge, %if.then1.i.if.then279_crit_edge, %if.end37.if.then279_crit_edge, %if.end22.if.then279_crit_edge
  %err.0403 = phi i32 [ -12, %if.end22.if.then279_crit_edge ], [ %call.i, %if.end37.if.then279_crit_edge ], [ -22, %if.then1.i.if.then279_crit_edge ], [ -22, %if.end5.i.if.then279_crit_edge ], [ -22, %if.then14.i.if.then279_crit_edge ], [ -22, %if.end18.i.if.then279_crit_edge ], [ -22, %if.then26.i.if.then279_crit_edge ], [ -22, %if.then42.i.if.then279_crit_edge ], [ -105, %if.then60.i.if.then279_crit_edge ], [ -17, %for.body.i.if.then279_crit_edge ]
  call void @tcf_exts_destroy(ptr noundef %exts) #7
  br label %if.end281

if.end281:                                        ; preds = %if.then279, %if.end18.if.end281_crit_edge
  %err.0400 = phi i32 [ %err.0403, %if.then279 ], [ -105, %if.end18.if.end281_crit_edge ]
  call void @kfree(ptr noundef %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end281, %if.end277.critedge, %tcf_unbind_filter.exit, %land.lhs.true14.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.then4
  %retval.0 = phi i32 [ %cond, %if.then4 ], [ %err.0400, %if.end281 ], [ %call2.i, %if.end6.cleanup_crit_edge ], [ -22, %land.lhs.true14.cleanup_crit_edge ], [ 0, %if.end277.critedge ], [ 0, %tcf_unbind_filter.exit ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %tb) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @route4_delete(ptr nocapture noundef readonly %tp, ptr noundef %arg, ptr nocapture noundef writeonly %last, i1 noundef zeroext %rtnl_held, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #7
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b165 = load i1, ptr @route4_delete.__warned, align 1
  br i1 %.b165, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @route4_delete.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 314, ptr noundef nonnull @.str.11) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %root = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 1
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root, align 4
  %tobool4.not = icmp eq ptr %1, null
  %tobool5.not = icmp eq ptr %arg, null
  %or.cond = or i1 %tobool5.not, %tobool4.not
  br i1 %or.cond, label %do.end.cleanup124_crit_edge, label %if.end7

do.end.cleanup124_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup124

if.end7:                                          ; preds = %do.end
  %handle = getelementptr inbounds %struct.route4_filter, ptr %arg, i32 0, i32 5
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %handle, align 4
  %bkt = getelementptr inbounds %struct.route4_filter, ptr %arg, i32 0, i32 6
  %4 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bkt, align 4
  %shr = lshr i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %shr)
  %cmp.i = icmp eq i32 %shr, 65535
  br i1 %cmp.i, label %if.end7.from_hash.exit_crit_edge, label %if.end.i

if.end7.from_hash.exit_crit_edge:                 ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %from_hash.exit

if.end.i:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %tobool.not.i = icmp sgt i32 %3, -1
  %and6.i = and i32 %shr, 15
  br i1 %tobool.not.i, label %if.then2.i, label %if.end7.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %3)
  %cmp3.inv.i = icmp ult i32 %3, 16777216
  %spec.select.i = select i1 %cmp3.inv.i, i32 %and6.i, i32 256
  br label %from_hash.exit

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.i = or i32 %and6.i, 16
  br label %from_hash.exit

from_hash.exit:                                   ; preds = %if.end7.i, %if.then2.i, %if.end7.from_hash.exit_crit_edge
  %retval.0.i = phi i32 [ %add.i, %if.end7.i ], [ 32, %if.end7.from_hash.exit_crit_edge ], [ %spec.select.i, %if.then2.i ]
  %arrayidx = getelementptr [33 x ptr], ptr %5, i32 0, i32 %retval.0.i
  %call10 = tail call zeroext i1 @lockdep_rtnl_is_held() #7
  br i1 %call10, label %from_hash.exit.do.end19_crit_edge, label %land.lhs.true11

from_hash.exit.do.end19_crit_edge:                ; preds = %from_hash.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end19

land.lhs.true11:                                  ; preds = %from_hash.exit
  %call12 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %land.lhs.true11.do.end19_crit_edge, label %land.lhs.true14

land.lhs.true11.do.end19_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end19

land.lhs.true14:                                  ; preds = %land.lhs.true11
  %.b157164 = load i1, ptr @route4_delete.__warned.27, align 1
  br i1 %.b157164, label %land.lhs.true14.do.end19_crit_edge, label %if.then16

land.lhs.true14.do.end19_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end19

if.then16:                                        ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @route4_delete.__warned.27, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 329, ptr noundef nonnull @.str.11) #7
  br label %do.end19

do.end19:                                         ; preds = %if.then16, %land.lhs.true14.do.end19_crit_edge, %land.lhs.true11.do.end19_crit_edge, %from_hash.exit.do.end19_crit_edge
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %nf.0171 = load ptr, ptr %arrayidx, align 4
  %tobool21.not172 = icmp eq ptr %nf.0171, null
  br i1 %tobool21.not172, label %do.end19.out_crit_edge, label %for.body.preheader

do.end19.out_crit_edge:                           ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

for.body.preheader:                               ; preds = %do.end19
  %cmp184 = icmp eq ptr %nf.0171, %arg
  br i1 %cmp184, label %for.body.preheader.do.body29_crit_edge, label %for.body.preheader.for.inc93_crit_edge

for.body.preheader.for.inc93_crit_edge:           ; preds = %for.body.preheader
  br label %for.inc93

for.body.preheader.do.body29_crit_edge:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body29

for.body:                                         ; preds = %do.end105
  %cmp = icmp eq ptr %nf.0, %arg
  br i1 %cmp, label %for.body.do.body29_crit_edge, label %for.body.for.inc93_crit_edge

for.body.for.inc93_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc93

for.body.do.body29_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body29

do.body29:                                        ; preds = %for.body.do.body29_crit_edge, %for.body.preheader.do.body29_crit_edge
  %fp.0173.lcssa = phi ptr [ %arrayidx, %for.body.preheader.do.body29_crit_edge ], [ %nf.0174185, %for.body.do.body29_crit_edge ]
  %call30 = tail call zeroext i1 @lockdep_rtnl_is_held() #7
  br i1 %call30, label %do.body29.do.end39_crit_edge, label %land.lhs.true31

do.body29.do.end39_crit_edge:                     ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end39

land.lhs.true31:                                  ; preds = %do.body29
  %call32 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %land.lhs.true31.do.end39_crit_edge, label %land.lhs.true34

land.lhs.true31.do.end39_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end39

land.lhs.true34:                                  ; preds = %land.lhs.true31
  %.b158163 = load i1, ptr @route4_delete.__warned.28, align 1
  br i1 %.b158163, label %land.lhs.true34.do.end39_crit_edge, label %if.then36

land.lhs.true34.do.end39_crit_edge:               ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end39

if.then36:                                        ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @route4_delete.__warned.28, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 333, ptr noundef nonnull @.str.11) #7
  br label %do.end39

do.end39:                                         ; preds = %if.then36, %land.lhs.true34.do.end39_crit_edge, %land.lhs.true31.do.end39_crit_edge, %do.body29.do.end39_crit_edge
  %7 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arg, align 4
  %9 = ptrtoint ptr %fp.0173.lcssa to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %8, ptr %fp.0173.lcssa, align 4
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @fastmap_lock) #7
  %10 = call ptr @memset(ptr %1, i32 0, i32 192)
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @fastmap_lock) #7
  %chain.i = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 7
  %11 = ptrtoint ptr %chain.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chain.i, align 4
  %block.i = getelementptr inbounds %struct.tcf_chain, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %block.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %block.i, align 4
  %q1.i = getelementptr inbounds %struct.tcf_block, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %q1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %q1.i, align 4
  %tobool.not.i166 = icmp eq ptr %16, null
  br i1 %tobool.not.i166, label %do.end39.tcf_unbind_filter.exit_crit_edge, label %if.end.i167

do.end39.tcf_unbind_filter.exit_crit_edge:        ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %tcf_unbind_filter.exit

if.end.i167:                                      ; preds = %do.end39
  %res = getelementptr inbounds %struct.route4_filter, ptr %arg, i32 0, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %res, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !104
  tail call void @llvm.prefetch.p0(ptr %res, i32 1, i32 3, i32 1) #7
  %17 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %res) #7, !srcloc !105
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %17, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !106
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i, label %if.end.i167.tcf_unbind_filter.exit_crit_edge, label %if.then.i.i

if.end.i167.tcf_unbind_filter.exit_crit_edge:     ; preds = %if.end.i167
  call void @__sanitizer_cov_trace_pc() #9
  br label %tcf_unbind_filter.exit

if.then.i.i:                                      ; preds = %if.end.i167
  call void @__sanitizer_cov_trace_pc() #9
  %ops.i.i = getelementptr inbounds %struct.Qdisc, ptr %16, i32 0, i32 4
  %18 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i.i, align 16
  %cl_ops.i.i = getelementptr inbounds %struct.Qdisc_ops, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %cl_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cl_ops.i.i, align 4
  %unbind_tcf.i.i = getelementptr inbounds %struct.Qdisc_class_ops, ptr %21, i32 0, i32 11
  %22 = ptrtoint ptr %unbind_tcf.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %unbind_tcf.i.i, align 4
  tail call void %23(ptr noundef nonnull %16, i32 noundef %asmresult.i.i.i.i) #7
  br label %tcf_unbind_filter.exit

tcf_unbind_filter.exit:                           ; preds = %if.then.i.i, %if.end.i167.tcf_unbind_filter.exit_crit_edge, %do.end39.tcf_unbind_filter.exit_crit_edge
  %exts = getelementptr inbounds %struct.route4_filter, ptr %arg, i32 0, i32 4
  %call47 = tail call fastcc zeroext i1 @tcf_exts_get_net(ptr noundef %exts)
  %rwork = getelementptr inbounds %struct.route4_filter, ptr %arg, i32 0, i32 8
  %call48 = tail call zeroext i1 @tcf_queue_work(ptr noundef %rwork, ptr noundef nonnull @route4_delete_filter_work) #7
  br label %for.body51

for.cond49:                                       ; preds = %do.end62
  %inc = add nuw nsw i32 %i.0175, 1
  %exitcond.not = icmp eq i32 %inc, 33
  br i1 %exitcond.not, label %do.body74, label %for.cond49.for.body51_crit_edge

for.cond49.for.body51_crit_edge:                  ; preds = %for.cond49
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body51

for.body51:                                       ; preds = %for.cond49.for.body51_crit_edge, %tcf_unbind_filter.exit
  %i.0175 = phi i32 [ 0, %tcf_unbind_filter.exit ], [ %inc, %for.cond49.for.body51_crit_edge ]
  %call53 = tail call zeroext i1 @lockdep_rtnl_is_held() #7
  br i1 %call53, label %for.body51.do.end62_crit_edge, label %land.lhs.true54

for.body51.do.end62_crit_edge:                    ; preds = %for.body51
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end62

land.lhs.true54:                                  ; preds = %for.body51
  %call55 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %land.lhs.true54.do.end62_crit_edge, label %land.lhs.true57

land.lhs.true54.do.end62_crit_edge:               ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end62

land.lhs.true57:                                  ; preds = %land.lhs.true54
  %.b159162 = load i1, ptr @route4_delete.__warned.29, align 1
  br i1 %.b159162, label %land.lhs.true57.do.end62_crit_edge, label %if.then59

land.lhs.true57.do.end62_crit_edge:               ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end62

if.then59:                                        ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @route4_delete.__warned.29, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 350, ptr noundef nonnull @.str.11) #7
  br label %do.end62

do.end62:                                         ; preds = %if.then59, %land.lhs.true57.do.end62_crit_edge, %land.lhs.true54.do.end62_crit_edge, %for.body51.do.end62_crit_edge
  %arrayidx65 = getelementptr [33 x ptr], ptr %5, i32 0, i32 %i.0175
  %24 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx65, align 4
  %tobool66.not = icmp eq ptr %25, null
  br i1 %tobool66.not, label %for.cond49, label %do.end62.out_crit_edge

do.end62.out_crit_edge:                           ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

do.body74:                                        ; preds = %for.cond49
  %and.i = and i32 %3, 255
  %and1.i168 = lshr i32 %3, 7
  %26 = and i32 %and1.i168, 256
  %27 = or i32 %26, %and.i
  %arrayidx76 = getelementptr %struct.route4_head, ptr %1, i32 0, i32 1, i32 %27
  %28 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr null, ptr %arrayidx76, align 4
  %tobool84.not = icmp eq ptr %5, null
  br i1 %tobool84.not, label %do.body74.out_crit_edge, label %do.end88

do.body74.out_crit_edge:                          ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

do.end88:                                         ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #9
  %rcu = getelementptr inbounds %struct.route4_bucket, ptr %5, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 132 to ptr)) #7
  br label %out

for.inc93:                                        ; preds = %for.body.for.inc93_crit_edge, %for.body.preheader.for.inc93_crit_edge
  %nf.0174185 = phi ptr [ %nf.0, %for.body.for.inc93_crit_edge ], [ %nf.0171, %for.body.preheader.for.inc93_crit_edge ]
  %call96 = tail call zeroext i1 @lockdep_rtnl_is_held() #7
  br i1 %call96, label %for.inc93.do.end105_crit_edge, label %land.lhs.true97

for.inc93.do.end105_crit_edge:                    ; preds = %for.inc93
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end105

land.lhs.true97:                                  ; preds = %for.inc93
  %call98 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %land.lhs.true97.do.end105_crit_edge, label %land.lhs.true100

land.lhs.true97.do.end105_crit_edge:              ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end105

land.lhs.true100:                                 ; preds = %land.lhs.true97
  %.b160161 = load i1, ptr @route4_delete.__warned.30, align 1
  br i1 %.b160161, label %land.lhs.true100.do.end105_crit_edge, label %if.then102

land.lhs.true100.do.end105_crit_edge:             ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end105

if.then102:                                       ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @route4_delete.__warned.30, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 330, ptr noundef nonnull @.str.11) #7
  br label %do.end105

do.end105:                                        ; preds = %if.then102, %land.lhs.true100.do.end105_crit_edge, %land.lhs.true97.do.end105_crit_edge, %for.inc93.do.end105_crit_edge
  %29 = ptrtoint ptr %nf.0174185 to i32
  call void @__asan_load4_noabort(i32 %29)
  %nf.0 = load ptr, ptr %nf.0174185, align 4
  %tobool21.not = icmp eq ptr %nf.0, null
  br i1 %tobool21.not, label %do.end105.out_crit_edge, label %for.body

do.end105.out_crit_edge:                          ; preds = %do.end105
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

out:                                              ; preds = %do.end105.out_crit_edge, %do.end88, %do.body74.out_crit_edge, %do.end62.out_crit_edge, %do.end19.out_crit_edge
  %30 = ptrtoint ptr %last to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %last, align 1
  br label %for.body110

for.cond108:                                      ; preds = %for.body110
  %inc122 = add nuw nsw i32 %h1.0176, 1
  %exitcond179.not = icmp eq i32 %inc122, 257
  br i1 %exitcond179.not, label %for.cond108.cleanup124_crit_edge, label %for.cond108.for.body110_crit_edge

for.cond108.for.body110_crit_edge:                ; preds = %for.cond108
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body110

for.cond108.cleanup124_crit_edge:                 ; preds = %for.cond108
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup124

for.body110:                                      ; preds = %for.cond108.for.body110_crit_edge, %out
  %h1.0176 = phi i32 [ 0, %out ], [ %inc122, %for.cond108.for.body110_crit_edge ]
  %arrayidx116 = getelementptr %struct.route4_head, ptr %1, i32 0, i32 1, i32 %h1.0176
  %31 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %arrayidx116, align 4
  %tobool118.not = icmp eq ptr %32, null
  br i1 %tobool118.not, label %for.cond108, label %if.then119

if.then119:                                       ; preds = %for.body110
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %last to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %last, align 1
  br label %cleanup124

cleanup124:                                       ; preds = %if.then119, %for.cond108.cleanup124_crit_edge, %do.end.cleanup124_crit_edge
  %retval.0 = phi i32 [ -22, %do.end.cleanup124_crit_edge ], [ 0, %if.then119 ], [ 0, %for.cond108.cleanup124_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @route4_walk(ptr noundef %tp, ptr noundef %arg, i1 noundef zeroext %rtnl_held) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #7
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b105 = load i1, ptr @route4_walk.__warned, align 1
  br i1 %.b105, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @route4_walk.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 564, ptr noundef nonnull @.str.11) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %root = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 1
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.end.cleanup74_crit_edge, label %lor.lhs.false

do.end.cleanup74_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup74

lor.lhs.false:                                    ; preds = %do.end
  %2 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool4.not = icmp eq i32 %3, 0
  br i1 %tobool4.not, label %for.cond.preheader, label %lor.lhs.false.cleanup74_crit_edge

lor.lhs.false.cleanup74_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup74

for.cond.preheader:                               ; preds = %lor.lhs.false
  %count = getelementptr inbounds %struct.tcf_walker, ptr %arg, i32 0, i32 2
  %skip = getelementptr inbounds %struct.tcf_walker, ptr %arg, i32 0, i32 1
  %fn = getelementptr inbounds %struct.tcf_walker, ptr %arg, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc71.for.body_crit_edge, %for.cond.preheader
  %h.0110 = phi i32 [ 0, %for.cond.preheader ], [ %inc72, %for.inc71.for.body_crit_edge ]
  %call9 = tail call zeroext i1 @lockdep_rtnl_is_held() #7
  br i1 %call9, label %for.body.do.end18_crit_edge, label %land.lhs.true10

for.body.do.end18_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end18

land.lhs.true10:                                  ; preds = %for.body
  %call11 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.lhs.true10.do.end18_crit_edge, label %land.lhs.true13

land.lhs.true10.do.end18_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end18

land.lhs.true13:                                  ; preds = %land.lhs.true10
  %.b99104 = load i1, ptr @route4_walk.__warned.31, align 1
  br i1 %.b99104, label %land.lhs.true13.do.end18_crit_edge, label %if.then15

land.lhs.true13.do.end18_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end18

if.then15:                                        ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @route4_walk.__warned.31, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 571, ptr noundef nonnull @.str.11) #7
  br label %do.end18

do.end18:                                         ; preds = %if.then15, %land.lhs.true13.do.end18_crit_edge, %land.lhs.true10.do.end18_crit_edge, %for.body.do.end18_crit_edge
  %arrayidx = getelementptr %struct.route4_head, ptr %1, i32 0, i32 1, i32 %h.0110
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool20.not = icmp eq ptr %5, null
  br i1 %tobool20.not, label %do.end18.for.inc71_crit_edge, label %do.end18.for.body24_crit_edge

do.end18.for.body24_crit_edge:                    ; preds = %do.end18
  br label %for.body24

do.end18.for.inc71_crit_edge:                     ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc71

for.body24:                                       ; preds = %for.inc64.critedge.for.body24_crit_edge, %do.end18.for.body24_crit_edge
  %h1.0109 = phi i32 [ %inc65, %for.inc64.critedge.for.body24_crit_edge ], [ 0, %do.end18.for.body24_crit_edge ]
  %call26 = tail call zeroext i1 @lockdep_rtnl_is_held() #7
  br i1 %call26, label %for.body24.do.end35_crit_edge, label %land.lhs.true27

for.body24.do.end35_crit_edge:                    ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end35

land.lhs.true27:                                  ; preds = %for.body24
  %call28 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %land.lhs.true27.do.end35_crit_edge, label %land.lhs.true30

land.lhs.true27.do.end35_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end35

land.lhs.true30:                                  ; preds = %land.lhs.true27
  %.b100103 = load i1, ptr @route4_walk.__warned.32, align 1
  br i1 %.b100103, label %land.lhs.true30.do.end35_crit_edge, label %if.then32

land.lhs.true30.do.end35_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end35

if.then32:                                        ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @route4_walk.__warned.32, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 577, ptr noundef nonnull @.str.11) #7
  br label %do.end35

do.end35:                                         ; preds = %if.then32, %land.lhs.true30.do.end35_crit_edge, %land.lhs.true27.do.end35_crit_edge, %for.body24.do.end35_crit_edge
  %arrayidx37 = getelementptr [33 x ptr], ptr %5, i32 0, i32 %h1.0109
  %6 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %6)
  %f.0106 = load ptr, ptr %arrayidx37, align 4
  %tobool39.not107 = icmp eq ptr %f.0106, null
  br i1 %tobool39.not107, label %do.end35.for.inc64.critedge_crit_edge, label %do.end35.for.body40_crit_edge

do.end35.for.body40_crit_edge:                    ; preds = %do.end35
  br label %for.body40

do.end35.for.inc64.critedge_crit_edge:            ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc64.critedge

for.body40:                                       ; preds = %do.end62.for.body40_crit_edge, %do.end35.for.body40_crit_edge
  %f.0108 = phi ptr [ %f.0, %do.end62.for.body40_crit_edge ], [ %f.0106, %do.end35.for.body40_crit_edge ]
  %7 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %count, align 4
  %9 = ptrtoint ptr %skip to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %skip, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp41 = icmp slt i32 %8, %10
  br i1 %cmp41, label %for.body40.do.body52_crit_edge, label %if.end44

for.body40.do.body52_crit_edge:                   ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body52

if.end44:                                         ; preds = %for.body40
  %11 = ptrtoint ptr %fn to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fn, align 4
  %call45 = tail call i32 %12(ptr noundef %tp, ptr noundef nonnull %f.0108, ptr noundef %arg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %if.then47, label %if.end49

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %arg, align 4
  br label %cleanup74

if.end49:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %count, align 4
  br label %do.body52

do.body52:                                        ; preds = %if.end49, %for.body40.do.body52_crit_edge
  %storemerge.in = phi i32 [ %15, %if.end49 ], [ %8, %for.body40.do.body52_crit_edge ]
  %storemerge = add i32 %storemerge.in, 1
  %16 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %storemerge, ptr %count, align 4
  %call53 = tail call zeroext i1 @lockdep_rtnl_is_held() #7
  br i1 %call53, label %do.body52.do.end62_crit_edge, label %land.lhs.true54

do.body52.do.end62_crit_edge:                     ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end62

land.lhs.true54:                                  ; preds = %do.body52
  %call55 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %land.lhs.true54.do.end62_crit_edge, label %land.lhs.true57

land.lhs.true54.do.end62_crit_edge:               ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end62

land.lhs.true57:                                  ; preds = %land.lhs.true54
  %.b101102 = load i1, ptr @route4_walk.__warned.33, align 1
  br i1 %.b101102, label %land.lhs.true57.do.end62_crit_edge, label %if.then59

land.lhs.true57.do.end62_crit_edge:               ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end62

if.then59:                                        ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @route4_walk.__warned.33, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 579, ptr noundef nonnull @.str.11) #7
  br label %do.end62

do.end62:                                         ; preds = %if.then59, %land.lhs.true57.do.end62_crit_edge, %land.lhs.true54.do.end62_crit_edge, %do.body52.do.end62_crit_edge
  %17 = ptrtoint ptr %f.0108 to i32
  call void @__asan_load4_noabort(i32 %17)
  %f.0 = load ptr, ptr %f.0108, align 4
  %tobool39.not = icmp eq ptr %f.0, null
  br i1 %tobool39.not, label %do.end62.for.inc64.critedge_crit_edge, label %do.end62.for.body40_crit_edge

do.end62.for.body40_crit_edge:                    ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body40

do.end62.for.inc64.critedge_crit_edge:            ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc64.critedge

for.inc64.critedge:                               ; preds = %do.end62.for.inc64.critedge_crit_edge, %do.end35.for.inc64.critedge_crit_edge
  %inc65 = add nuw nsw i32 %h1.0109, 1
  %exitcond.not = icmp eq i32 %inc65, 33
  br i1 %exitcond.not, label %for.inc64.critedge.for.inc71_crit_edge, label %for.inc64.critedge.for.body24_crit_edge

for.inc64.critedge.for.body24_crit_edge:          ; preds = %for.inc64.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body24

for.inc64.critedge.for.inc71_crit_edge:           ; preds = %for.inc64.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc71

for.inc71:                                        ; preds = %for.inc64.critedge.for.inc71_crit_edge, %do.end18.for.inc71_crit_edge
  %inc72 = add nuw nsw i32 %h.0110, 1
  %exitcond111.not = icmp eq i32 %inc72, 257
  br i1 %exitcond111.not, label %for.inc71.cleanup74_crit_edge, label %for.inc71.for.body_crit_edge

for.inc71.for.body_crit_edge:                     ; preds = %for.inc71
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc71.cleanup74_crit_edge:                    ; preds = %for.inc71
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup74

cleanup74:                                        ; preds = %for.inc71.cleanup74_crit_edge, %if.then47, %lor.lhs.false.cleanup74_crit_edge, %do.end.cleanup74_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @route4_bind_class(ptr noundef %fh, i32 noundef %classid, i32 noundef %cl, ptr noundef %q, i32 noundef %base) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fh, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %land.lhs.true

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

land.lhs.true:                                    ; preds = %entry
  %res = getelementptr inbounds %struct.route4_filter, ptr %fh, i32 0, i32 3
  %classid1 = getelementptr inbounds %struct.route4_filter, ptr %fh, i32 0, i32 3, i32 0, i32 0, i32 1
  %0 = ptrtoint ptr %classid1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %classid1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %classid)
  %cmp = icmp eq i32 %1, %classid
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
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
  %call.i = tail call i32 %7(ptr noundef %q, i32 noundef %base, i32 noundef %9) #7
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %res, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !104
  tail call void @llvm.prefetch.p0(ptr %res, i32 1, i32 3, i32 1) #7
  %10 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %call.i, ptr %res) #7, !srcloc !105
  %asmresult.i.i.i = extractvalue { i32, i32 } %10, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !106
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %tobool.not.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i, label %if.then3.if.end6_crit_edge, label %if.then3.if.end6.sink.split_crit_edge

if.then3.if.end6.sink.split_crit_edge:            ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.sink.split

if.then3.if.end6_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.else:                                          ; preds = %if.then
  %call.i.i.i11 = tail call zeroext i1 @__kasan_check_write(ptr noundef %res, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !104
  tail call void @llvm.prefetch.p0(ptr %res, i32 1, i32 3, i32 1) #7
  %11 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %res) #7, !srcloc !105
  %asmresult.i.i.i12 = extractvalue { i32, i32 } %11, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !106
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i12)
  %cmp.not.i = icmp eq i32 %asmresult.i.i.i12, 0
  br i1 %cmp.not.i, label %if.else.if.end6_crit_edge, label %if.then.i16

if.else.if.end6_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then.i16:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void %17(ptr noundef %q, i32 noundef %asmresult.i.i.i12.sink) #7
  br label %if.end6

if.end6:                                          ; preds = %if.end6.sink.split, %if.else.if.end6_crit_edge, %if.then3.if.end6_crit_edge, %land.lhs.true.if.end6_crit_edge, %entry.if.end6_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @route4_dump(ptr nocapture noundef readnone %net, ptr nocapture noundef readnone %tp, ptr noundef %fh, ptr noundef %skb, ptr nocapture noundef writeonly %t, i1 noundef zeroext %rtnl_held) #2 align 64 {
entry:
  %tmp.i79 = alloca i32, align 4
  %tmp.i77 = alloca i32, align 4
  %tmp.i75 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %fh, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %handle = getelementptr inbounds %struct.route4_filter, ptr %fh, i32 0, i32 5
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %handle, align 4
  %tcm_handle = getelementptr inbounds %struct.tcmsg, ptr %t, i32 0, i32 4
  %4 = ptrtoint ptr %tcm_handle to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %tcm_handle, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %5 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tail.i.i, align 8
  %call1.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 0, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %cmp182 = icmp eq ptr %6, null
  %cmp1 = select i1 %cmp.i, i1 true, i1 %cmp182
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %7 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %handle, align 4
  %and = and i32 %8, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then5, label %if.end3.if.end12_crit_edge

if.end3.if.end12_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then5:                                         ; preds = %if.end3
  %id6 = getelementptr inbounds %struct.route4_filter, ptr %fh, i32 0, i32 1
  %9 = ptrtoint ptr %id6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id6, align 4
  %and7 = and i32 %10, 255
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #7
  %11 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and7, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool9.not = icmp eq i32 %call.i, 0
  br i1 %tobool9.not, label %if.end12thread-pre-split, label %if.then5.if.then.i.i_crit_edge

if.then5.if.then.i.i_crit_edge:                   ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

if.end12thread-pre-split:                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr = load i32, ptr %handle, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.end12thread-pre-split, %if.end3.if.end12_crit_edge
  %13 = phi i32 [ %.pr, %if.end12thread-pre-split ], [ %8, %if.end3.if.end12_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %tobool15.not = icmp sgt i32 %13, -1
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65537, i32 %13)
  %cmp18.not = icmp ugt i32 %13, -65537
  br i1 %cmp18.not, label %if.then16.if.end29_crit_edge, label %land.lhs.true

if.then16.if.end29_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

land.lhs.true:                                    ; preds = %if.then16
  %iif = getelementptr inbounds %struct.route4_filter, ptr %fh, i32 0, i32 2
  %14 = ptrtoint ptr %iif to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %iif, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i75) #7
  %16 = ptrtoint ptr %tmp.i75 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %tmp.i75, align 4
  %call.i76 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i75) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i75) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i76)
  %tobool20.not = icmp eq i32 %call.i76, 0
  br i1 %tobool20.not, label %land.lhs.true.if.end29_crit_edge, label %land.lhs.true.if.then.i.i_crit_edge

land.lhs.true.if.then.i.i_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.else:                                          ; preds = %if.end12
  %id23 = getelementptr inbounds %struct.route4_filter, ptr %fh, i32 0, i32 1
  %17 = ptrtoint ptr %id23 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %id23, align 4
  %shr24 = lshr i32 %18, 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i77) #7
  %19 = ptrtoint ptr %tmp.i77 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %shr24, ptr %tmp.i77, align 4
  %call.i78 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i77) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i77) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78)
  %tobool26.not = icmp eq i32 %call.i78, 0
  br i1 %tobool26.not, label %if.else.if.end29_crit_edge, label %if.else.if.then.i.i_crit_edge

if.else.if.then.i.i_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

if.else.if.end29_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.end29:                                         ; preds = %if.else.if.end29_crit_edge, %land.lhs.true.if.end29_crit_edge, %if.then16.if.end29_crit_edge
  %classid = getelementptr inbounds %struct.route4_filter, ptr %fh, i32 0, i32 3, i32 0, i32 0, i32 1
  %20 = ptrtoint ptr %classid to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %classid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool30.not = icmp eq i32 %21, 0
  br i1 %tobool30.not, label %if.end29.if.end37_crit_edge, label %land.lhs.true31

if.end29.if.end37_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

land.lhs.true31:                                  ; preds = %if.end29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i79) #7
  %22 = ptrtoint ptr %tmp.i79 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %tmp.i79, align 4
  %call.i80 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i79) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i79) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i80)
  %tobool35.not = icmp eq i32 %call.i80, 0
  br i1 %tobool35.not, label %land.lhs.true31.if.end37_crit_edge, label %land.lhs.true31.if.then.i.i_crit_edge

land.lhs.true31.if.then.i.i_crit_edge:            ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

land.lhs.true31.if.end37_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.end37:                                         ; preds = %land.lhs.true31.if.end37_crit_edge, %if.end29.if.end37_crit_edge
  %exts = getelementptr inbounds %struct.route4_filter, ptr %fh, i32 0, i32 4
  %call38 = call i32 @tcf_exts_dump(ptr noundef %skb, ptr noundef %exts) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %if.end37.if.then.i.i_crit_edge, label %if.end41

if.end37.if.then.i.i_crit_edge:                   ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

if.end41:                                         ; preds = %if.end37
  %23 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %24 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %6 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %25 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv.i, ptr %6, align 2
  %call44 = call i32 @tcf_exts_dump_stats(ptr noundef %skb, ptr noundef %exts) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %if.end41.if.then.i.i_crit_edge, label %if.end47

if.end41.if.then.i.i_crit_edge:                   ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

if.end47:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  %len48 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %26 = ptrtoint ptr %len48 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len48, align 4
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end41.if.then.i.i_crit_edge, %if.end37.if.then.i.i_crit_edge, %land.lhs.true31.if.then.i.i_crit_edge, %if.else.if.then.i.i_crit_edge, %land.lhs.true.if.then.i.i_crit_edge, %if.then5.if.then.i.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %28 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp ugt ptr %29, %6
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.if.end.i.i_crit_edge, !prof !102

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.34, i32 noundef 991, i32 noundef 9, ptr noundef null) #7
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %30 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %6 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %31 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end47, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ %27, %if.end47 ], [ -1, %if.end.cleanup_crit_edge ], [ -1, %if.end.i.i ]
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @route4_set_fastmap(ptr nocapture noundef writeonly %head, i32 noundef %id, i32 noundef %iif, ptr noundef %f) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i32 %id, 15
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @fastmap_lock) #7
  %arrayidx = getelementptr [16 x %struct.route4_fastmap], ptr %head, i32 0, i32 %and.i
  %id1 = getelementptr [16 x %struct.route4_fastmap], ptr %head, i32 0, i32 %and.i, i32 1
  %0 = ptrtoint ptr %id1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %id, ptr %id1, align 4
  %iif4 = getelementptr [16 x %struct.route4_fastmap], ptr %head, i32 0, i32 %and.i, i32 2
  %1 = ptrtoint ptr %iif4 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %iif, ptr %iif4, align 4
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %f, ptr %arrayidx, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @fastmap_lock) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_action_exec(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @tcf_exts_get_net(ptr noundef %exts) unnamed_addr #5 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  %net = getelementptr inbounds %struct.tcf_exts, ptr %exts, i32 0, i32 3
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  %count.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 14, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #7
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %count.i, i32 noundef 4) #7
  %2 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %count.i, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %entry
  %4 = phi i32 [ %3, %entry ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %5 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i.i.i.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %4, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #7
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #7
  %6 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #7
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %8 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 %7, i32 %add.i.i.i.i, ptr elementtype(i32) %count.i) #7, !srcloc !112
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %8, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %8, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %7
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !108

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %9 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %10, 1
  %11 = or i32 %add5.i.i.i.i, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %.not.i.i.i.i = icmp sgt i32 %11, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.maybe_get_net.exit_crit_edge, label %if.then10.i.i.i.i, !prof !108

if.end4.i.i.i.i.maybe_get_net.exit_crit_edge:     ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %maybe_get_net.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef 0) #7
  br label %maybe_get_net.exit

maybe_get_net.exit:                               ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.maybe_get_net.exit_crit_edge
  %12 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool12.i.i.i.not.i = icmp eq i32 %13, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #7
  %spec.select.i = select i1 %tobool12.i.i.i.not.i, ptr null, ptr %1
  %14 = ptrtoint ptr %net to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %spec.select.i, ptr %net, align 4
  %tobool.not = icmp eq ptr %spec.select.i, null
  br i1 %tobool.not, label %maybe_get_net.exit.if.end_crit_edge, label %if.then

maybe_get_net.exit.if.end_crit_edge:              ; preds = %maybe_get_net.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %maybe_get_net.exit
  call void @__sanitizer_cov_trace_pc() #9
  %ns_tracker = getelementptr inbounds %struct.tcf_exts, ptr %exts, i32 0, i32 4
  %refcnt_tracker.i = getelementptr inbounds %struct.net, ptr %spec.select.i, i32 0, i32 15
  %call.i = call i32 @ref_tracker_alloc(ptr noundef %refcnt_tracker.i, ptr noundef %ns_tracker, i32 noundef 3264) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %maybe_get_net.exit.if.end_crit_edge
  %15 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %net, align 4
  %cmp = icmp ne ptr %16, null
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__route4_delete_filter(ptr noundef %f) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %exts = getelementptr inbounds %struct.route4_filter, ptr %f, i32 0, i32 4
  tail call void @tcf_exts_destroy(ptr noundef %exts) #7
  %net.i = getelementptr inbounds %struct.route4_filter, ptr %f, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.tcf_exts_put_net.exit_crit_edge, label %if.then.i

entry.tcf_exts_put_net.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %tcf_exts_put_net.exit

if.then.i:                                        ; preds = %entry
  %ns_tracker.i = getelementptr inbounds %struct.route4_filter, ptr %f, i32 0, i32 4, i32 4
  %refcnt_tracker.i.i.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 15
  %call.i.i.i = tail call i32 @ref_tracker_free(ptr noundef %refcnt_tracker.i.i.i, ptr noundef %ns_tracker.i) #7
  %count.i.i.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 14, i32 3
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !113
  tail call void @llvm.prefetch.p0(ptr %count.i.i.i, i32 1, i32 3, i32 1) #7
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i.i, ptr %count.i.i.i, i32 1, ptr elementtype(i32) %count.i.i.i) #7, !srcloc !114
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.tcf_exts_put_net.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !108

if.end5.i.i.i.i.i.i.tcf_exts_put_net.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tcf_exts_put_net.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %count.i.i.i, i32 noundef 3) #7
  br label %tcf_exts_put_net.exit

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !115
  tail call void @__put_net(ptr noundef nonnull %1) #7
  br label %tcf_exts_put_net.exit

tcf_exts_put_net.exit:                            ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.tcf_exts_put_net.exit_crit_edge, %entry.tcf_exts_put_net.exit_crit_edge
  tail call void @kfree(ptr noundef %f) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ref_tracker_alloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tcf_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @route4_delete_filter_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -60
  tail call void @rtnl_lock() #7
  tail call fastcc void @__route4_delete_filter(ptr noundef %add.ptr)
  tail call void @rtnl_unlock() #7
  ret void
}

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

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcf_block_netif_keep_dst(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_exts_validate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_exts_dump(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_exts_dump_stats(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_tcf_proto_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !32, !34, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !72, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91}
!llvm.module.flags = !{!93, !94, !95, !96, !97, !98, !99, !100}
!llvm.ident = !{!101}

!0 = !{ptr @__initcall__kmod_cls_route__551_681_init_route46, !1, !"__initcall__kmod_cls_route__551_681_init_route46", i1 false, i1 false}
!1 = !{!"../net/sched/cls_route.c", i32 681, i32 1}
!2 = !{ptr @__exitcall_exit_route4, !3, !"__exitcall_exit_route4", i1 false, i1 false}
!3 = !{!"../net/sched/cls_route.c", i32 682, i32 1}
!4 = !{ptr @__UNIQUE_ID_file552, !5, !"__UNIQUE_ID_file552", i1 false, i1 false}
!5 = !{!"../net/sched/cls_route.c", i32 683, i32 1}
!6 = !{ptr @__UNIQUE_ID_license553, !5, !"__UNIQUE_ID_license553", i1 false, i1 false}
!7 = !{ptr @cls_route4_ops, !8, !"cls_route4_ops", i1 false, i1 false}
!8 = !{!"../net/sched/cls_route.c", i32 657, i32 29}
!9 = distinct !{null, !10, !"__warned", i1 false, i1 false}
!10 = !{!"../net/sched/cls_route.c", i32 127, i32 29}
!11 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!13 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!14 = !{!"../net/sched/cls_route.c", i32 162, i32 6}
!15 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!16 = !{!"../net/sched/cls_route.c", i32 164, i32 12}
!17 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!18 = !{!"../net/sched/cls_route.c", i32 166, i32 12}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../net/sched/cls_route.c", i32 170, i32 12}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../net/sched/cls_route.c", i32 172, i32 12}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../net/sched/cls_route.c", i32 176, i32 12}
!25 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!26 = !{!"../net/sched/cls_route.c", i32 178, i32 12}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../net/sched/cls_route.c", i32 66, i32 8}
!31 = !{ptr @fastmap_lock, !30, !"fastmap_lock", i1 false, i1 false}
!32 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!33 = !{!"../net/sched/cls_route.c", i32 278, i32 29}
!34 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!35 = distinct !{null, !36, !"__warned", i1 false, i1 false}
!36 = !{!"../net/sched/cls_route.c", i32 287, i32 7}
!37 = distinct !{null, !38, !"__warned", i1 false, i1 false}
!38 = !{!"../net/sched/cls_route.c", i32 292, i32 17}
!39 = distinct !{null, !40, !"__warned", i1 false, i1 false}
!40 = !{!"../net/sched/cls_route.c", i32 295, i32 13}
!41 = distinct !{null, !42, !"__warned", i1 false, i1 false}
!42 = !{!"../net/sched/cls_route.c", i32 217, i32 29}
!43 = distinct !{null, !44, !"__warned", i1 false, i1 false}
!44 = !{!"../net/sched/cls_route.c", i32 230, i32 6}
!45 = distinct !{null, !46, !"__warned", i1 false, i1 false}
!46 = !{!"../net/sched/cls_route.c", i32 232, i32 12}
!47 = distinct !{null, !48, !"__warned", i1 false, i1 false}
!48 = !{!"../net/sched/cls_route.c", i32 234, i32 12}
!49 = distinct !{null, !50, !"__warned", i1 false, i1 false}
!50 = !{!"../net/sched/cls_route.c", i32 470, i32 29}
!51 = distinct !{null, !52, !"__warned", i1 false, i1 false}
!52 = !{!"../net/sched/cls_route.c", i32 519, i32 13}
!53 = distinct !{null, !54, !"__warned", i1 false, i1 false}
!54 = !{!"../net/sched/cls_route.c", i32 520, i32 13}
!55 = distinct !{null, !56, !"__warned", i1 false, i1 false}
!56 = !{!"../net/sched/cls_route.c", i32 532, i32 7}
!57 = distinct !{null, !58, !"__warned", i1 false, i1 false}
!58 = !{!"../net/sched/cls_route.c", i32 535, i32 15}
!59 = distinct !{null, !60, !"__warned", i1 false, i1 false}
!60 = !{!"../net/sched/cls_route.c", i32 536, i32 32}
!61 = !{ptr @route4_policy, !62, !"route4_policy", i1 false, i1 false}
!62 = !{!"../net/sched/cls_route.c", i32 374, i32 32}
!63 = distinct !{null, !64, !"__warned", i1 false, i1 false}
!64 = !{!"../net/sched/cls_route.c", i32 428, i32 6}
!65 = distinct !{null, !66, !"__warned", i1 false, i1 false}
!66 = !{!"../net/sched/cls_route.c", i32 438, i32 13}
!67 = distinct !{null, !68, !"__warned", i1 false, i1 false}
!68 = !{!"../net/sched/cls_route.c", i32 440, i32 13}
!69 = distinct !{null, !70, !"__already_done", i1 false, i1 false}
!70 = !{!"../include/net/sch_generic.h", i32 596, i32 2}
!71 = !{ptr @.str.25, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.26, !70, !"<string literal>", i1 false, i1 false}
!73 = distinct !{null, !74, !"__warned", i1 false, i1 false}
!74 = !{!"../net/sched/cls_route.c", i32 314, i32 29}
!75 = distinct !{null, !76, !"__warned", i1 false, i1 false}
!76 = !{!"../net/sched/cls_route.c", i32 329, i32 12}
!77 = distinct !{null, !78, !"__warned", i1 false, i1 false}
!78 = !{!"../net/sched/cls_route.c", i32 333, i32 4}
!79 = distinct !{null, !80, !"__warned", i1 false, i1 false}
!80 = !{!"../net/sched/cls_route.c", i32 350, i32 10}
!81 = distinct !{null, !82, !"__warned", i1 false, i1 false}
!82 = !{!"../net/sched/cls_route.c", i32 330, i32 28}
!83 = distinct !{null, !84, !"__warned", i1 false, i1 false}
!84 = !{!"../net/sched/cls_route.c", i32 564, i32 29}
!85 = distinct !{null, !86, !"__warned", i1 false, i1 false}
!86 = !{!"../net/sched/cls_route.c", i32 571, i32 29}
!87 = distinct !{null, !88, !"__warned", i1 false, i1 false}
!88 = !{!"../net/sched/cls_route.c", i32 577, i32 14}
!89 = distinct !{null, !90, !"__warned", i1 false, i1 false}
!90 = !{!"../net/sched/cls_route.c", i32 579, i32 14}
!91 = !{ptr @.str.34, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../include/net/netlink.h", i32 991, i32 3}
!93 = !{i32 1, !"wchar_size", i32 2}
!94 = !{i32 1, !"min_enum_size", i32 4}
!95 = !{i32 8, !"branch-target-enforcement", i32 0}
!96 = !{i32 8, !"sign-return-address", i32 0}
!97 = !{i32 8, !"sign-return-address-all", i32 0}
!98 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!99 = !{i32 7, !"uwtable", i32 1}
!100 = !{i32 7, !"frame-pointer", i32 2}
!101 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!102 = !{!"branch_weights", i32 1, i32 2000}
!103 = !{i64 2157584021}
!104 = !{i64 2157531084}
!105 = !{i64 859588, i64 859605, i64 859629, i64 859655, i64 859673}
!106 = !{i64 2157531428}
!107 = !{i64 2157623906}
!108 = !{!"branch_weights", i32 2000, i32 1}
!109 = !{i64 2157639338}
!110 = !{i64 2157646145}
!111 = !{i64 2157655152}
!112 = !{i64 837353, i64 837377, i64 837398, i64 837415, i64 837432}
!113 = !{i64 2148442375}
!114 = !{i64 2148356815, i64 2148356847, i64 2148356876, i64 2148356910, i64 2148356941, i64 2148356964}
!115 = !{i64 2149318489}
