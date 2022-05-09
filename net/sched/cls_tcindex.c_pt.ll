; ModuleID = '/llk/IR_all_yes/net/sched/cls_tcindex.c_pt.bc'
source_filename = "../net/sched/cls_tcindex.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tcf_proto_ops = type { %struct.list_head, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.nla_policy = type { i8, i8, i16, %union.anon.5 }
%union.anon.5 = type { i32 }
%struct.tcf_proto = type { ptr, ptr, ptr, i16, i32, ptr, ptr, ptr, %struct.spinlock, i8, %struct.refcount_struct, %struct.callback_head, %struct.hlist_node }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.9 }
%union.anon.9 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.callback_head = type { ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
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
%struct.tcindex_data = type { ptr, ptr, ptr, i16, i32, i32, i32, i32, %struct.refcount_struct, %struct.rcu_work }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.anon.120 = type { i32, i32 }
%struct.tcindex_filter_result = type { %struct.tcf_exts, %struct.tcf_result, ptr, %struct.rcu_work }
%struct.tcf_exts = type { i32, i32, ptr, ptr, ptr, i32, i32 }
%struct.tcf_result = type { %union.anon.119 }
%union.anon.119 = type { %struct.anon.120 }
%struct.Qdisc_ops = type { ptr, ptr, [16 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Qdisc_class_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tcindex_filter = type { i16, %struct.tcindex_filter_result, ptr, %struct.rcu_work }
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
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }

@cls_tcindex_ops = internal global %struct.tcf_proto_ops { %struct.list_head zeroinitializer, [16 x i8] c"tcindex\00\00\00\00\00\00\00\00\00", ptr @tcindex_classify, ptr @tcindex_init, ptr @tcindex_destroy, ptr @tcindex_get, ptr null, ptr @tcindex_change, ptr @tcindex_delete, ptr null, ptr @tcindex_walk, ptr null, ptr null, ptr null, ptr @tcindex_bind_class, ptr null, ptr null, ptr @tcindex_dump, ptr null, ptr null, ptr null, i32 0 }, section ".data..read_mostly", align 4
@__initcall__kmod_cls_tcindex__398_736_init_tcindex6 = internal global ptr @init_tcindex, section ".initcall6.init", align 4
@__exitcall_exit_tcindex = internal global ptr @exit_tcindex, section ".exitcall.exit", align 4
@__UNIQUE_ID_file399 = internal constant [39 x i8] c"cls_tcindex.file=net/sched/cls_tcindex\00", section ".modinfo", align 1
@__UNIQUE_ID_license400 = internal constant [24 x i8] c"cls_tcindex.license=GPL\00", section ".modinfo", align 1
@tcindex_classify.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"net/sched/cls_tcindex.c\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@tcindex_classify.__UNIQUE_ID_ddebug372 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str, ptr @.str.4, i8 0, i8 27, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cls_tcindex\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tcindex_classify\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"tcindex_classify(skb %p,tp %p,res %p),p %p\0A\00", [52 x i8] zeroinitializer }, align 32
@tcindex_classify.__UNIQUE_ID_ddebug373 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str, ptr @.str.5, i8 0, i8 30, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"alg 0x%x\0A\00", [22 x i8] zeroinitializer }, align 32
@tcindex_classify.__UNIQUE_ID_ddebug374 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str, ptr @.str.6, i8 0, i8 31, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"map 0x%x\0A\00", [22 x i8] zeroinitializer }, align 32
@tcindex_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tcindex_lookup.__warned.7 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/pkt_cls.h\00", [42 x i8] zeroinitializer }, align 32
@tcindex_init.__UNIQUE_ID_ddebug376 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.9, ptr @.str, ptr @.str.10, i8 0, i8 36, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tcindex_init\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tcindex_init(tp %p)\0A\00", [43 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@tcindex_destroy.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@tcindex_destroy.__UNIQUE_ID_ddebug394 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.12, ptr @.str, ptr @.str.13, i8 0, i8 -106, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tcindex_destroy\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"tcindex_destroy(tp %p),p %p\0A\00", [35 x i8] zeroinitializer }, align 32
@tcindex_destroy.__warned.14 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tcindex_destroy.__warned.15 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tcindex_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tcindex_get.__UNIQUE_ID_ddebug375 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.16, ptr @.str, ptr @.str.17, i8 0, i8 33, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tcindex_get\00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"tcindex_get(tp %p,handle 0x%08x)\0A\00", [62 x i8] zeroinitializer }, align 32
@tcindex_change.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tcindex_change.__UNIQUE_ID_ddebug392 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.18, ptr @.str, ptr @.str.19, i8 0, i8 -121, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tcindex_change\00", [17 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"tcindex_change(tp %p,handle 0x%08x,tca %p,arg %p),opt %p,p %p,r %p,*arg %p\0A\00", [52 x i8] zeroinitializer }, align 32
@tcindex_policy = internal constant { [8 x %struct.nla_policy], [32 x i8] } { [8 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.5 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.5 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.5 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.5 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.5 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer], [32 x i8] zeroinitializer }, align 32
@tcindex_set_parms.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tcindex_set_parms.__warned.20 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@qdisc_root_sleeping_lock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/net/sch_generic.h\00", [38 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@tcindex_delete.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tcindex_delete.__UNIQUE_ID_ddebug380 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.23, ptr @.str, ptr @.str.24, i8 0, i8 51, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tcindex_delete\00", [17 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"tcindex_delete(tp %p,arg %p),p %p\0A\00", [61 x i8] zeroinitializer }, align 32
@tcindex_delete.__warned.25 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tcindex_delete.__warned.26 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tcindex_delete.__warned.27 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tcindex_walk.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tcindex_walk.__UNIQUE_ID_ddebug393 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.28, ptr @.str, ptr @.str.29, i8 0, i8 -115, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tcindex_walk\00", [19 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"tcindex_walk(tp %p,walker %p),p %p\0A\00", [60 x i8] zeroinitializer }, align 32
@tcindex_walk.__warned.30 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tcindex_walk.__warned.31 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tcindex_dump.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tcindex_dump.__UNIQUE_ID_ddebug395 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.32, ptr @.str, ptr @.str.33, i8 0, i8 -95, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tcindex_dump\00", [19 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"tcindex_dump(tp %p,fh %p,skb %p,t %p),p %p,r %p\0A\00", [47 x i8] zeroinitializer }, align 32
@tcindex_dump.__UNIQUE_ID_ddebug396 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.32, ptr @.str, ptr @.str.34, i8 0, i8 -95, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"p->perfect %p p->h %p\0A\00", [41 x i8] zeroinitializer }, align 32
@tcindex_dump.__warned.35 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tcindex_dump.__warned.36 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tcindex_dump.__UNIQUE_ID_ddebug397 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.32, ptr @.str, ptr @.str.37, i8 0, i8 -87, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"handle = %d\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 105, i32 27 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 109, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 120, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 124, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant [25 x i8] c"../include/net/pkt_cls.h\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 75, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 146, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 597, i32 27 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 600, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 135, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 541, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant [15 x i8] c"tcindex_policy\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 263, i32 32 }
@___asan_gen_.97 = private unnamed_addr constant [29 x i8] c"../include/net/sch_generic.h\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 596, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 205, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 564, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 644, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 646, i32 2 }
@___asan_gen_.121 = private constant [27 x i8] c"../net/sched/cls_tcindex.c\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 679, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.124 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 991, i32 3 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_file399, ptr @__UNIQUE_ID_license400, ptr @__exitcall_exit_tcindex, ptr @__initcall__kmod_cls_tcindex__398_736_init_tcindex6, ptr @exit_tcindex, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @tcindex_policy, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.28, ptr @.str.29, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.37, ptr @.str.38], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcindex_policy to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_tcindex() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @unregister_tcf_proto_ops(ptr noundef nonnull @cls_tcindex_ops) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_tcf_proto_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_tcindex() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_tcf_proto_ops(ptr noundef nonnull @cls_tcindex_ops) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcindex_classify(ptr noundef %skb, ptr noundef %tp, ptr noundef %res) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %root = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 1
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %root, align 4
  %call = tail call i32 @rcu_read_lock_bh_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b89 = load i1, ptr @tcindex_classify.__warned, align 1
  br i1 %.b89, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @tcindex_classify.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 105, ptr noundef nonnull @.str.1) #9
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %entry.do.end7_crit_edge
  %tc_index = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 4
  %2 = ptrtoint ptr %tc_index to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %tc_index, align 2
  %mask = getelementptr inbounds %struct.tcindex_data, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %mask to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %mask, align 4
  %and88 = and i16 %5, %3
  %and = zext i16 %and88 to i32
  %shift = getelementptr inbounds %struct.tcindex_data, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %shift, align 4
  %shr = lshr i32 %and, %7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcindex_classify.__UNIQUE_ID_ddebug372, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcindex_classify, %if.then16)) #9
          to label %do.end19 [label %if.then16], !srcloc !116

if.then16:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcindex_classify.__UNIQUE_ID_ddebug372, ptr noundef nonnull @.str.4, ptr noundef %skb, ptr noundef %tp, ptr noundef %res, ptr noundef %1) #9
  br label %do.end19

do.end19:                                         ; preds = %if.then16, %do.end7
  %conv20 = trunc i32 %shr to i16
  %call21 = tail call fastcc ptr @tcindex_lookup(ptr noundef %1, i16 noundef zeroext %conv20)
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %if.then23, label %if.end48

if.then23:                                        ; preds = %do.end19
  %chain = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 7
  %8 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chain, align 4
  %block = getelementptr inbounds %struct.tcf_chain, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %block, align 4
  %index.i.i = getelementptr inbounds %struct.tcf_block, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.i.not.i = icmp eq i32 %13, 0
  br i1 %tobool.i.not.i, label %if.then23.tcf_block_q.exit_crit_edge, label %do.end.i, !prof !117

if.then23.tcf_block_q.exit_crit_edge:             ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  br label %tcf_block_q.exit

do.end.i:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 75, i32 noundef 9, ptr noundef null) #9
  br label %tcf_block_q.exit

tcf_block_q.exit:                                 ; preds = %do.end.i, %if.then23.tcf_block_q.exit_crit_edge
  %fall_through = getelementptr inbounds %struct.tcindex_data, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %fall_through to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fall_through, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool25.not = icmp eq i32 %15, 0
  br i1 %tobool25.not, label %tcf_block_q.exit.cleanup68_crit_edge, label %if.end27

tcf_block_q.exit.cleanup68_crit_edge:             ; preds = %tcf_block_q.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup68

if.end27:                                         ; preds = %tcf_block_q.exit
  call void @__sanitizer_cov_trace_pc() #11
  %q.i = getelementptr inbounds %struct.tcf_block, ptr %11, i32 0, i32 6
  %16 = ptrtoint ptr %q.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %q.i, align 4
  %handle = getelementptr inbounds %struct.Qdisc, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %handle, align 32
  %and28 = and i32 %19, -65536
  %or = or i32 %and28, %shr
  %classid = getelementptr inbounds %struct.anon.120, ptr %res, i32 0, i32 1
  %20 = ptrtoint ptr %classid to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or, ptr %classid, align 4
  %21 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %res, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcindex_classify.__UNIQUE_ID_ddebug373, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcindex_classify, %if.then43)) #9
          to label %cleanup68 [label %if.then43], !srcloc !116

if.then43:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %classid to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %classid, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcindex_classify.__UNIQUE_ID_ddebug373, ptr noundef nonnull @.str.5, i32 noundef %23) #9
  br label %cleanup68

if.end48:                                         ; preds = %do.end19
  %res49 = getelementptr inbounds %struct.tcindex_filter_result, ptr %call21, i32 0, i32 1
  %24 = ptrtoint ptr %res49 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 8)
  %25 = load i64, ptr %res49, align 4
  %26 = ptrtoint ptr %res to i32
  call void @__asan_storeN_noabort(i32 %26, i32 8)
  store i64 %25, ptr %res, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcindex_classify.__UNIQUE_ID_ddebug374, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcindex_classify, %if.then62)) #9
          to label %do.end66 [label %if.then62], !srcloc !116

if.then62:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  %classid63 = getelementptr inbounds %struct.anon.120, ptr %res, i32 0, i32 1
  %27 = ptrtoint ptr %classid63 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %classid63, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcindex_classify.__UNIQUE_ID_ddebug374, ptr noundef nonnull @.str.6, i32 noundef %28) #9
  br label %do.end66

do.end66:                                         ; preds = %if.then62, %if.end48
  %actions.i = getelementptr inbounds %struct.tcf_exts, ptr %call21, i32 0, i32 2
  %29 = ptrtoint ptr %actions.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %actions.i, align 4
  %nr_actions.i = getelementptr inbounds %struct.tcf_exts, ptr %call21, i32 0, i32 1
  %31 = ptrtoint ptr %nr_actions.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nr_actions.i, align 4
  %call.i = tail call i32 @tcf_action_exec(ptr noundef %skb, ptr noundef %30, i32 noundef %32, ptr noundef %res) #9
  br label %cleanup68

cleanup68:                                        ; preds = %do.end66, %if.then43, %if.end27, %tcf_block_q.exit.cleanup68_crit_edge
  %retval.1 = phi i32 [ %call.i, %do.end66 ], [ -1, %tcf_block_q.exit.cleanup68_crit_edge ], [ 0, %if.then43 ], [ 0, %if.end27 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcindex_init(ptr noundef %tp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcindex_init.__UNIQUE_ID_ddebug376, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcindex_init, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !116

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcindex_init.__UNIQUE_ID_ddebug376, ptr noundef nonnull @.str.10, ptr noundef %tp) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 92) #12
  %tobool4.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %mask = getelementptr inbounds %struct.tcindex_data, ptr %call7.i.i, i32 0, i32 3
  %1 = ptrtoint ptr %mask to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %mask, align 4
  %hash = getelementptr inbounds %struct.tcindex_data, ptr %call7.i.i, i32 0, i32 5
  %2 = ptrtoint ptr %hash to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 64, ptr %hash, align 4
  %fall_through = getelementptr inbounds %struct.tcindex_data, ptr %call7.i.i, i32 0, i32 7
  %3 = ptrtoint ptr %fall_through to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %fall_through, align 4
  %refcnt = getelementptr inbounds %struct.tcindex_data, ptr %call7.i.i, i32 0, i32 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #9
  %4 = ptrtoint ptr %refcnt to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 1, ptr %refcnt, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !118
  %root31 = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 1
  %5 = ptrtoint ptr %root31 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %call7.i.i, ptr %root31, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -12, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcindex_destroy(ptr noundef %tp, i1 noundef zeroext %rtnl_held, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  %last = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #9
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b91 = load i1, ptr @tcindex_destroy.__warned, align 1
  br i1 %.b91, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @tcindex_destroy.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 597, ptr noundef nonnull @.str.11) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %root = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 1
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcindex_destroy.__UNIQUE_ID_ddebug394, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcindex_destroy, %if.then11)) #9
          to label %do.end14 [label %if.then11], !srcloc !116

if.then11:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcindex_destroy.__UNIQUE_ID_ddebug394, ptr noundef nonnull @.str.13, ptr noundef %tp, ptr noundef %1) #9
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %do.end
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool15.not = icmp eq ptr %3, null
  br i1 %tobool15.not, label %do.end14.if.end22_crit_edge, label %for.cond.preheader

do.end14.if.end22_crit_edge:                      ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

for.cond.preheader:                               ; preds = %do.end14
  %hash = getelementptr inbounds %struct.tcindex_data, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hash, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp93.not = icmp eq i32 %5, 0
  br i1 %cmp93.not, label %for.cond.preheader.if.end22_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end22_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %refcnt.i = getelementptr inbounds %struct.tcindex_data, ptr %1, i32 0, i32 8
  %chain.i = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %if.end21.for.body_crit_edge, %for.body.lr.ph
  %i.094 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end21.for.body_crit_edge ]
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr %struct.tcindex_filter_result, ptr %7, i32 %i.094
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #9
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #9, !srcloc !119
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %for.body.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !120

for.body.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %for.body
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %9 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.tcindex_data_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !117

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.tcindex_data_get.exit_crit_edge:  ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tcindex_data_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %for.body.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %for.body.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef %.sink.i.i.i.i) #9
  br label %tcindex_data_get.exit

tcindex_data_get.exit:                            ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.tcindex_data_get.exit_crit_edge
  %10 = ptrtoint ptr %chain.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chain.i, align 4
  %block.i = getelementptr inbounds %struct.tcf_chain, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %block.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %block.i, align 4
  %q1.i = getelementptr inbounds %struct.tcf_block, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %q1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %q1.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %tcindex_data_get.exit.tcf_unbind_filter.exit_crit_edge, label %if.end.i

tcindex_data_get.exit.tcf_unbind_filter.exit_crit_edge: ; preds = %tcindex_data_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %tcf_unbind_filter.exit

if.end.i:                                         ; preds = %tcindex_data_get.exit
  %res = getelementptr %struct.tcindex_filter_result, ptr %7, i32 %i.094, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %res, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !121
  tail call void @llvm.prefetch.p0(ptr %res, i32 1, i32 3, i32 1) #9
  %16 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %res) #9, !srcloc !122
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %16, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !123
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i, label %if.end.i.tcf_unbind_filter.exit_crit_edge, label %if.then.i.i

if.end.i.tcf_unbind_filter.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tcf_unbind_filter.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %ops.i.i = getelementptr inbounds %struct.Qdisc, ptr %15, i32 0, i32 4
  %17 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops.i.i, align 16
  %cl_ops.i.i = getelementptr inbounds %struct.Qdisc_ops, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %cl_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cl_ops.i.i, align 4
  %unbind_tcf.i.i = getelementptr inbounds %struct.Qdisc_class_ops, ptr %20, i32 0, i32 11
  %21 = ptrtoint ptr %unbind_tcf.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %unbind_tcf.i.i, align 4
  tail call void %22(ptr noundef nonnull %15, i32 noundef %asmresult.i.i.i.i) #9
  br label %tcf_unbind_filter.exit

tcf_unbind_filter.exit:                           ; preds = %if.then.i.i, %if.end.i.tcf_unbind_filter.exit_crit_edge, %tcindex_data_get.exit.tcf_unbind_filter.exit_crit_edge
  %call18 = tail call fastcc zeroext i1 @tcf_exts_get_net(ptr noundef %add.ptr)
  br i1 %call18, label %if.then19, label %if.else

if.then19:                                        ; preds = %tcf_unbind_filter.exit
  call void @__sanitizer_cov_trace_pc() #11
  %rwork = getelementptr %struct.tcindex_filter_result, ptr %7, i32 %i.094, i32 3
  %call20 = tail call zeroext i1 @tcf_queue_work(ptr noundef %rwork, ptr noundef nonnull @tcindex_destroy_rexts_work) #9
  br label %if.end21

if.else:                                          ; preds = %tcf_unbind_filter.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @__tcindex_destroy_rexts(ptr noundef %add.ptr)
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then19
  %inc = add nuw i32 %i.094, 1
  %23 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hash, align 4
  %cmp = icmp ult i32 %inc, %24
  br i1 %cmp, label %if.end21.for.body_crit_edge, label %if.end21.if.end22_crit_edge

if.end21.if.end22_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.end21.for.body_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end22:                                         ; preds = %if.end21.if.end22_crit_edge, %for.cond.preheader.if.end22_crit_edge, %do.end14.if.end22_crit_edge
  %hash25 = getelementptr inbounds %struct.tcindex_data, ptr %1, i32 0, i32 5
  %h = getelementptr inbounds %struct.tcindex_data, ptr %1, i32 0, i32 1
  %25 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %h, align 4
  %tobool24.not98 = icmp eq ptr %26, null
  br i1 %tobool24.not98, label %if.end22.for.end63_crit_edge, label %if.end22.land.rhs_crit_edge

if.end22.land.rhs_crit_edge:                      ; preds = %if.end22
  br label %land.rhs

if.end22.for.end63_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end63

land.rhs:                                         ; preds = %for.end60.land.rhs_crit_edge, %if.end22.land.rhs_crit_edge
  %i.199 = phi i32 [ %inc62, %for.end60.land.rhs_crit_edge ], [ 0, %if.end22.land.rhs_crit_edge ]
  %27 = ptrtoint ptr %hash25 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %hash25, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.199, i32 %28)
  %cmp26 = icmp ult i32 %i.199, %28
  br i1 %cmp26, label %for.body27, label %land.rhs.for.end63_crit_edge

land.rhs.for.end63_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end63

for.body27:                                       ; preds = %land.rhs
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %last) #9
  %call29 = tail call zeroext i1 @lockdep_rtnl_is_held() #9
  br i1 %call29, label %for.body27.do.end38_crit_edge, label %land.lhs.true30

for.body27.do.end38_crit_edge:                    ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end38

land.lhs.true30:                                  ; preds = %for.body27
  %call31 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %land.lhs.true30.do.end38_crit_edge, label %land.lhs.true33

land.lhs.true30.do.end38_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end38

land.lhs.true33:                                  ; preds = %land.lhs.true30
  %.b8790 = load i1, ptr @tcindex_destroy.__warned.14, align 1
  br i1 %.b8790, label %land.lhs.true33.do.end38_crit_edge, label %if.then35

land.lhs.true33.do.end38_crit_edge:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end38

if.then35:                                        ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @tcindex_destroy.__warned.14, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 627, ptr noundef nonnull @.str.11) #9
  br label %do.end38

do.end38:                                         ; preds = %if.then35, %land.lhs.true33.do.end38_crit_edge, %land.lhs.true30.do.end38_crit_edge, %for.body27.do.end38_crit_edge
  %29 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %h, align 4
  %arrayidx = getelementptr ptr, ptr %30, i32 %i.199
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx, align 4
  %tobool42.not96 = icmp eq ptr %32, null
  br i1 %tobool42.not96, label %do.end38.for.end60_crit_edge, label %do.end38.do.body44_crit_edge

do.end38.do.body44_crit_edge:                     ; preds = %do.end38
  br label %do.body44

do.end38.for.end60_crit_edge:                     ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end60

do.body44:                                        ; preds = %do.end54.do.body44_crit_edge, %do.end38.do.body44_crit_edge
  %f.097 = phi ptr [ %34, %do.end54.do.body44_crit_edge ], [ %32, %do.end38.do.body44_crit_edge ]
  %call45 = tail call zeroext i1 @lockdep_rtnl_is_held() #9
  br i1 %call45, label %do.body44.do.end54_crit_edge, label %land.lhs.true46

do.body44.do.end54_crit_edge:                     ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end54

land.lhs.true46:                                  ; preds = %do.body44
  %call47 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %land.lhs.true46.do.end54_crit_edge, label %land.lhs.true49

land.lhs.true46.do.end54_crit_edge:               ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end54

land.lhs.true49:                                  ; preds = %land.lhs.true46
  %.b8889 = load i1, ptr @tcindex_destroy.__warned.15, align 1
  br i1 %.b8889, label %land.lhs.true49.do.end54_crit_edge, label %if.then51

land.lhs.true49.do.end54_crit_edge:               ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end54

if.then51:                                        ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @tcindex_destroy.__warned.15, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 628, ptr noundef nonnull @.str.11) #9
  br label %do.end54

do.end54:                                         ; preds = %if.then51, %land.lhs.true49.do.end54_crit_edge, %land.lhs.true46.do.end54_crit_edge, %do.body44.do.end54_crit_edge
  %next56 = getelementptr inbounds %struct.tcindex_filter, ptr %f.097, i32 0, i32 2
  %33 = ptrtoint ptr %next56 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %next56, align 4
  %result = getelementptr inbounds %struct.tcindex_filter, ptr %f.097, i32 0, i32 1
  %call58 = call i32 @tcindex_delete(ptr noundef %tp, ptr noundef %result, ptr noundef nonnull %last, i1 noundef zeroext %rtnl_held, ptr noundef null)
  %tobool42.not = icmp eq ptr %34, null
  br i1 %tobool42.not, label %for.end60thread-pre-split, label %do.end54.do.body44_crit_edge

do.end54.do.body44_crit_edge:                     ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body44

for.end60thread-pre-split:                        ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pr = load ptr, ptr %h, align 4
  br label %for.end60

for.end60:                                        ; preds = %for.end60thread-pre-split, %do.end38.for.end60_crit_edge
  %36 = phi ptr [ %.pr, %for.end60thread-pre-split ], [ %30, %do.end38.for.end60_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %last) #9
  %inc62 = add i32 %i.199, 1
  %tobool24.not = icmp eq ptr %36, null
  br i1 %tobool24.not, label %for.end60.for.end63_crit_edge, label %for.end60.land.rhs_crit_edge

for.end60.land.rhs_crit_edge:                     ; preds = %for.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

for.end60.for.end63_crit_edge:                    ; preds = %for.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end63

for.end63:                                        ; preds = %for.end60.for.end63_crit_edge, %land.rhs.for.end63_crit_edge, %if.end22.for.end63_crit_edge
  %rwork64 = getelementptr inbounds %struct.tcindex_data, ptr %1, i32 0, i32 9
  %call65 = tail call zeroext i1 @tcf_queue_work(ptr noundef %rwork64, ptr noundef nonnull @tcindex_destroy_work) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @tcindex_get(ptr noundef %tp, i32 noundef %handle) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #9
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b31 = load i1, ptr @tcindex_get.__warned, align 1
  br i1 %.b31, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @tcindex_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 132, ptr noundef nonnull @.str.11) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %root = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 1
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcindex_get.__UNIQUE_ID_ddebug375, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcindex_get, %if.then10)) #9
          to label %do.end13 [label %if.then10], !srcloc !116

if.then10:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcindex_get.__UNIQUE_ID_ddebug375, ptr noundef nonnull @.str.17, ptr noundef %tp, i32 noundef %handle) #9
  br label %do.end13

do.end13:                                         ; preds = %if.then10, %do.end
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool14.not = icmp eq ptr %3, null
  br i1 %tobool14.not, label %do.end13.if.end17_crit_edge, label %land.lhs.true15

do.end13.if.end17_crit_edge:                      ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

land.lhs.true15:                                  ; preds = %do.end13
  %alloc_hash = getelementptr inbounds %struct.tcindex_data, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %alloc_hash to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %alloc_hash, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %handle)
  %cmp.not = icmp ugt i32 %5, %handle
  br i1 %cmp.not, label %land.lhs.true15.if.end17_crit_edge, label %land.lhs.true15.cleanup_crit_edge

land.lhs.true15.cleanup_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true15.if.end17_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.end17:                                         ; preds = %land.lhs.true15.if.end17_crit_edge, %do.end13.if.end17_crit_edge
  %conv = trunc i32 %handle to i16
  %call18 = tail call fastcc ptr @tcindex_lookup(ptr noundef %1, i16 noundef zeroext %conv)
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %if.end17.cleanup_crit_edge, label %land.lhs.true20

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true20:                                  ; preds = %if.end17
  %nr_actions.i.i = getelementptr inbounds %struct.tcf_exts, ptr %call18, i32 0, i32 1
  %6 = ptrtoint ptr %nr_actions.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_actions.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i.not.i = icmp eq i32 %7, 0
  br i1 %tobool.i.not.i, label %tcindex_filter_is_set.exit, label %land.lhs.true20.cleanup_crit_edge

land.lhs.true20.cleanup_crit_edge:                ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

tcindex_filter_is_set.exit:                       ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #11
  %classid.i = getelementptr inbounds %struct.tcindex_filter_result, ptr %call18, i32 0, i32 1, i32 0, i32 0, i32 1
  %8 = ptrtoint ptr %classid.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %classid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.i.not = icmp eq i32 %9, 0
  %spec.select = select i1 %tobool.i.not, ptr null, ptr %call18
  br label %cleanup

cleanup:                                          ; preds = %tcindex_filter_is_set.exit, %land.lhs.true20.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %land.lhs.true15.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %land.lhs.true15.cleanup_crit_edge ], [ null, %if.end17.cleanup_crit_edge ], [ %call18, %land.lhs.true20.cleanup_crit_edge ], [ %spec.select, %tcindex_filter_is_set.exit ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcindex_change(ptr noundef %net, ptr nocapture noundef readnone %in_skb, ptr noundef %tp, i32 noundef %base, i32 noundef %handle, ptr noundef %tca, ptr noundef %arg, i32 noundef %flags, ptr noundef %extack) #2 align 64 {
entry:
  %new_filter_result.i = alloca %struct.tcindex_filter_result, align 4
  %cr.i = alloca %struct.tcf_result, align 8
  %e.i = alloca %struct.tcf_exts, align 4
  %tb = alloca [8 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr ptr, ptr %tca, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tb) #9
  %2 = getelementptr inbounds [8 x ptr], ptr %tb, i32 0, i32 1
  %3 = getelementptr inbounds [8 x ptr], ptr %tb, i32 0, i32 2
  %4 = getelementptr inbounds [8 x ptr], ptr %tb, i32 0, i32 3
  %5 = getelementptr inbounds [8 x ptr], ptr %tb, i32 0, i32 4
  %6 = getelementptr inbounds [8 x ptr], ptr %tb, i32 0, i32 5
  %7 = call ptr @memset(ptr %tb, i32 255, i32 32)
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #9
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b39 = load i1, ptr @tcindex_change.__warned, align 1
  br i1 %.b39, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @tcindex_change.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 537, ptr noundef nonnull @.str.11) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %root = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 1
  %8 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %root, align 4
  %10 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arg, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcindex_change.__UNIQUE_ID_ddebug392, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcindex_change, %if.then10)) #9
          to label %do.end13 [label %if.then10], !srcloc !116

if.then10:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arg, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcindex_change.__UNIQUE_ID_ddebug392, ptr noundef nonnull @.str.19, ptr noundef %tp, i32 noundef %handle, ptr noundef %tca, ptr noundef %arg, ptr noundef %1, ptr noundef %9, ptr noundef %11, ptr noundef %13) #9
  br label %do.end13

do.end13:                                         ; preds = %if.then10, %do.end
  %tobool14.not = icmp eq ptr %1, null
  br i1 %tobool14.not, label %do.end13.cleanup_crit_edge, label %if.end16

do.end13.cleanup_crit_edge:                       ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %do.end13
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %1, align 2
  %conv.i.i = zext i16 %15 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 7, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @tcindex_policy, i32 noundef 0, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %if.end16.cleanup_crit_edge, label %if.end19

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end19:                                         ; preds = %if.end16
  %arrayidx21 = getelementptr ptr, ptr %tca, i32 5
  %16 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx21, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %new_filter_result.i) #9
  %18 = call ptr @memset(ptr %new_filter_result.i, i32 255, i32 96)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cr.i) #9
  %19 = ptrtoint ptr %cr.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 0, ptr %cr.i, align 8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %e.i) #9
  %20 = getelementptr inbounds %struct.tcf_exts, ptr %e.i, i32 0, i32 1
  %21 = getelementptr inbounds %struct.tcf_exts, ptr %e.i, i32 0, i32 2
  %22 = getelementptr inbounds %struct.tcf_exts, ptr %e.i, i32 0, i32 3
  %23 = getelementptr inbounds i8, ptr %e.i, i32 16
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %23, align 4
  %25 = ptrtoint ptr %e.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %e.i, align 4
  %26 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %20, align 4
  %27 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %net, ptr %22, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %28 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %28, i32 noundef 3520, i32 noundef 128) #12
  %29 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call7.i.i.i.i.i, ptr %21, align 4
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end19.tcindex_set_parms.exit_crit_edge, label %if.end.i

if.end19.tcindex_set_parms.exit_crit_edge:        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %tcindex_set_parms.exit

if.end.i:                                         ; preds = %if.end19
  %30 = getelementptr inbounds %struct.tcf_exts, ptr %e.i, i32 0, i32 6
  %31 = getelementptr inbounds %struct.tcf_exts, ptr %e.i, i32 0, i32 5
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 7, ptr %31, align 4
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 6, ptr %30, align 4
  %call1.i = call i32 @tcf_exts_validate(ptr noundef %net, ptr noundef %tp, ptr noundef nonnull %tb, ptr noundef %17, ptr noundef nonnull %e.i, i32 noundef %flags, ptr noundef %extack) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp slt i32 %call1.i, 0
  br i1 %cmp2.i, label %if.end.i.errout.i_crit_edge, label %if.end4.i

if.end.i.errout.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %errout.i

if.end4.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %34 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %34, i32 noundef 3520, i32 noundef 92) #12
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end4.i.errout.i_crit_edge, label %if.end7.i

if.end4.i.errout.i_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %errout.i

if.end7.i:                                        ; preds = %if.end4.i
  %mask.i = getelementptr inbounds %struct.tcindex_data, ptr %9, i32 0, i32 3
  %35 = ptrtoint ptr %mask.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %mask.i, align 4
  %mask8.i = getelementptr inbounds %struct.tcindex_data, ptr %call7.i.i.i, i32 0, i32 3
  %37 = ptrtoint ptr %mask8.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %mask8.i, align 4
  %shift.i = getelementptr inbounds %struct.tcindex_data, ptr %9, i32 0, i32 4
  %38 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %shift.i, align 4
  %shift9.i = getelementptr inbounds %struct.tcindex_data, ptr %call7.i.i.i, i32 0, i32 4
  %40 = ptrtoint ptr %shift9.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %shift9.i, align 8
  %hash.i = getelementptr inbounds %struct.tcindex_data, ptr %9, i32 0, i32 5
  %41 = ptrtoint ptr %hash.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %hash.i, align 4
  %hash10.i = getelementptr inbounds %struct.tcindex_data, ptr %call7.i.i.i, i32 0, i32 5
  %43 = ptrtoint ptr %hash10.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %hash10.i, align 4
  %alloc_hash.i = getelementptr inbounds %struct.tcindex_data, ptr %9, i32 0, i32 6
  %44 = ptrtoint ptr %alloc_hash.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %alloc_hash.i, align 4
  %alloc_hash11.i = getelementptr inbounds %struct.tcindex_data, ptr %call7.i.i.i, i32 0, i32 6
  %46 = ptrtoint ptr %alloc_hash11.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %alloc_hash11.i, align 8
  %fall_through.i = getelementptr inbounds %struct.tcindex_data, ptr %9, i32 0, i32 7
  %47 = ptrtoint ptr %fall_through.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %fall_through.i, align 4
  %fall_through12.i = getelementptr inbounds %struct.tcindex_data, ptr %call7.i.i.i, i32 0, i32 7
  %49 = ptrtoint ptr %fall_through12.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %fall_through12.i, align 4
  %tp13.i = getelementptr inbounds %struct.tcindex_data, ptr %call7.i.i.i, i32 0, i32 2
  %50 = ptrtoint ptr %tp13.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %tp, ptr %tp13.i, align 8
  %refcnt.i = getelementptr inbounds %struct.tcindex_data, ptr %call7.i.i.i, i32 0, i32 8
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #9
  %51 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile i32 1, ptr %refcnt.i, align 8
  %52 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %2, align 4
  %tobool14.not.i = icmp eq ptr %53, null
  br i1 %tobool14.not.i, label %if.end7.i.if.end19.i_crit_edge, label %if.then15.i

if.end7.i.if.end19.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19.i

if.then15.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i = getelementptr i8, ptr %53, i32 4
  %54 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %add.ptr.i.i.i, align 4
  %56 = ptrtoint ptr %hash10.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %hash10.i, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then15.i, %if.end7.i.if.end19.i_crit_edge
  %57 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %3, align 4
  %tobool21.not.i = icmp eq ptr %58, null
  br i1 %tobool21.not.i, label %if.end19.i.if.end26.i_crit_edge, label %if.then22.i

if.end19.i.if.end26.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26.i

if.then22.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i489.i = getelementptr i8, ptr %58, i32 4
  %59 = ptrtoint ptr %add.ptr.i.i489.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %add.ptr.i.i489.i, align 2
  %61 = ptrtoint ptr %mask8.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %60, ptr %mask8.i, align 4
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then22.i, %if.end19.i.if.end26.i_crit_edge
  %62 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %4, align 4
  %tobool28.not.i = icmp eq ptr %63, null
  br i1 %tobool28.not.i, label %if.end26.i.if.end37.i_crit_edge, label %if.then29.i

if.end26.i.if.end37.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37.i

if.then29.i:                                      ; preds = %if.end26.i
  %add.ptr.i.i490.i = getelementptr i8, ptr %63, i32 4
  %64 = ptrtoint ptr %add.ptr.i.i490.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %add.ptr.i.i490.i, align 4
  %66 = ptrtoint ptr %shift9.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %shift9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %65)
  %cmp34.i = icmp ugt i32 %65, 16
  br i1 %cmp34.i, label %if.then29.i.errout.i_crit_edge, label %if.then29.i.if.end37.i_crit_edge

if.then29.i.if.end37.i_crit_edge:                 ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37.i

if.then29.i.errout.i_crit_edge:                   ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %errout.i

if.end37.i:                                       ; preds = %if.then29.i.if.end37.i_crit_edge, %if.end26.i.if.end37.i_crit_edge
  %67 = ptrtoint ptr %hash10.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %hash10.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool39.not.i = icmp eq i32 %68, 0
  br i1 %tobool39.not.i, label %if.then40.i, label %if.end37.i.if.end53.i_crit_edge

if.end37.i.if.end53.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53.i

if.then40.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #11
  %69 = ptrtoint ptr %mask8.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %mask8.i, align 4
  %conv.i = zext i16 %70 to i32
  %71 = ptrtoint ptr %shift9.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %shift9.i, align 8
  %shr.i = lshr i32 %conv.i, %72
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %shr.i)
  %cmp43.i = icmp ult i32 %shr.i, 64
  %add.i = add nuw nsw i32 %shr.i, 1
  %add.sink.i = select i1 %cmp43.i, i32 %add.i, i32 64
  %73 = ptrtoint ptr %hash10.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %add.sink.i, ptr %hash10.i, align 4
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.then40.i, %if.end37.i.if.end53.i_crit_edge
  %74 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %9, align 4
  %tobool54.not.i = icmp eq ptr %75, null
  br i1 %tobool54.not.i, label %if.end53.i.if.end74.i_crit_edge, label %if.then55.i

if.end53.i.if.end74.i_crit_edge:                  ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74.i

if.then55.i:                                      ; preds = %if.end53.i
  %call56.i = call fastcc i32 @tcindex_alloc_perfect_hash(ptr noundef %net, ptr noundef nonnull %call7.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56.i)
  %cmp57.i = icmp slt i32 %call56.i, 0
  br i1 %cmp57.i, label %if.then55.i.errout.i_crit_edge, label %if.end60.i

if.then55.i.errout.i_crit_edge:                   ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %errout.i

if.end60.i:                                       ; preds = %if.then55.i
  %76 = ptrtoint ptr %hash10.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %hash10.i, align 4
  %78 = ptrtoint ptr %alloc_hash11.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %alloc_hash11.i, align 8
  %79 = ptrtoint ptr %hash.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %hash.i, align 4
  %81 = call i32 @llvm.umin.i32(i32 %77, i32 %80) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp67535.not.i = icmp eq i32 %81, 0
  br i1 %cmp67535.not.i, label %if.end60.i.if.end74.i_crit_edge, label %if.end60.i.for.body.i_crit_edge

if.end60.i.for.body.i_crit_edge:                  ; preds = %if.end60.i
  br label %for.body.i

if.end60.i.if.end74.i_crit_edge:                  ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end60.i.for.body.i_crit_edge
  %i.0536.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end60.i.for.body.i_crit_edge ]
  %82 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %call7.i.i.i, align 8
  %res.i = getelementptr %struct.tcindex_filter_result, ptr %83, i32 %i.0536.i, i32 1
  %84 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %9, align 4
  %res73.i = getelementptr %struct.tcindex_filter_result, ptr %85, i32 %i.0536.i, i32 1
  %86 = ptrtoint ptr %res73.i to i32
  call void @__asan_loadN_noabort(i32 %86, i32 8)
  %87 = load i64, ptr %res73.i, align 4
  %88 = ptrtoint ptr %res.i to i32
  call void @__asan_storeN_noabort(i32 %88, i32 8)
  store i64 %87, ptr %res.i, align 4
  %inc.i = add nuw i32 %i.0536.i, 1
  %89 = ptrtoint ptr %hash10.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %hash10.i, align 4
  %91 = ptrtoint ptr %hash.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %hash.i, align 4
  %93 = call i32 @llvm.umin.i32(i32 %90, i32 %92) #9
  %cmp67.i = icmp ult i32 %inc.i, %93
  br i1 %cmp67.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end74.i_crit_edge

for.body.i.if.end74.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.end74.i:                                       ; preds = %for.body.i.if.end74.i_crit_edge, %if.end60.i.if.end74.i_crit_edge, %if.end53.i.if.end74.i_crit_edge
  %balloc.1.i = phi i32 [ 0, %if.end53.i.if.end74.i_crit_edge ], [ 1, %if.end60.i.if.end74.i_crit_edge ], [ 1, %for.body.i.if.end74.i_crit_edge ]
  %h.i = getelementptr inbounds %struct.tcindex_data, ptr %9, i32 0, i32 1
  %94 = ptrtoint ptr %h.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %h.i, align 4
  %h75.i = getelementptr inbounds %struct.tcindex_data, ptr %call7.i.i.i, i32 0, i32 1
  %96 = ptrtoint ptr %h75.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %95, ptr %h75.i, align 4
  %97 = getelementptr inbounds i8, ptr %new_filter_result.i, i32 8
  %98 = call ptr @memset(ptr %97, i32 0, i32 88)
  %p1.i.i = getelementptr inbounds %struct.tcindex_filter_result, ptr %new_filter_result.i, i32 0, i32 2
  %99 = ptrtoint ptr %p1.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %call7.i.i.i, ptr %p1.i.i, align 4
  %100 = ptrtoint ptr %new_filter_result.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 0, ptr %new_filter_result.i, align 4
  %nr_actions.i.i.i = getelementptr inbounds %struct.tcf_exts, ptr %new_filter_result.i, i32 0, i32 1
  %101 = ptrtoint ptr %nr_actions.i.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 0, ptr %nr_actions.i.i.i, align 4
  %net1.i.i.i = getelementptr inbounds %struct.tcf_exts, ptr %new_filter_result.i, i32 0, i32 3
  %102 = ptrtoint ptr %net1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %net, ptr %net1.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %103 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %103, i32 noundef 3520, i32 noundef 128) #12
  %104 = ptrtoint ptr %97 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %call7.i.i.i.i.i.i, ptr %97, align 4
  %tobool.not.i.i.i = icmp eq ptr %call7.i.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end74.i.errout_alloc.i_crit_edge, label %if.end80.i

if.end74.i.errout_alloc.i_crit_edge:              ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %errout_alloc.i

if.end80.i:                                       ; preds = %if.end74.i
  %action3.i.i.i = getelementptr inbounds %struct.tcf_exts, ptr %new_filter_result.i, i32 0, i32 5
  %105 = ptrtoint ptr %action3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 7, ptr %action3.i.i.i, align 4
  %police4.i.i.i = getelementptr inbounds %struct.tcf_exts, ptr %new_filter_result.i, i32 0, i32 6
  %106 = ptrtoint ptr %police4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 6, ptr %police4.i.i.i, align 4
  %tobool81.not.i = icmp eq ptr %11, null
  br i1 %tobool81.not.i, label %if.end80.i.if.end84.i_crit_edge, label %if.then82.i

if.end80.i.if.end84.i_crit_edge:                  ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end84.i

if.then82.i:                                      ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #11
  %res83.i = getelementptr inbounds %struct.tcindex_filter_result, ptr %11, i32 0, i32 1
  %107 = ptrtoint ptr %res83.i to i32
  call void @__asan_loadN_noabort(i32 %107, i32 8)
  %108 = load i64, ptr %res83.i, align 4
  %109 = ptrtoint ptr %cr.i to i32
  call void @__asan_store8_noabort(i32 %109)
  store i64 %108, ptr %cr.i, align 8
  br label %if.end84.i

if.end84.i:                                       ; preds = %if.then82.i, %if.end80.i.if.end84.i_crit_edge
  %110 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %call7.i.i.i, align 8
  %tobool86.not.i = icmp eq ptr %111, null
  br i1 %tobool86.not.i, label %if.else96.i, label %if.then87.i

if.then87.i:                                      ; preds = %if.end84.i
  %112 = ptrtoint ptr %hash10.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %hash10.i, align 4
  %114 = ptrtoint ptr %mask8.i to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %mask8.i, align 4
  %conv.i.i40 = zext i16 %115 to i32
  %116 = ptrtoint ptr %shift9.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %shift9.i, align 8
  %shr.i.i = lshr i32 %conv.i.i40, %117
  call void @__sanitizer_cov_trace_cmp4(i32 %113, i32 %shr.i.i)
  %cmp.i.not.i = icmp ugt i32 %113, %shr.i.i
  br i1 %cmp.i.not.i, label %lor.lhs.false.i, label %if.then87.i.errout_alloc.i_crit_edge

if.then87.i.errout_alloc.i_crit_edge:             ; preds = %if.then87.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %errout_alloc.i

lor.lhs.false.i:                                  ; preds = %if.then87.i
  %118 = ptrtoint ptr %alloc_hash11.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %alloc_hash11.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %113, i32 %119)
  %cmp92.i = icmp ugt i32 %113, %119
  br i1 %cmp92.i, label %lor.lhs.false.i.errout_alloc.i_crit_edge, label %lor.lhs.false.i.if.end105.i_crit_edge

lor.lhs.false.i.if.end105.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end105.i

lor.lhs.false.i.errout_alloc.i_crit_edge:         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %errout_alloc.i

if.else96.i:                                      ; preds = %if.end84.i
  %120 = ptrtoint ptr %h75.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %h75.i, align 4
  %tobool98.not.i = icmp eq ptr %121, null
  br i1 %tobool98.not.i, label %if.else96.i.if.end105.i_crit_edge, label %land.lhs.true.i

if.else96.i.if.end105.i_crit_edge:                ; preds = %if.else96.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end105.i

land.lhs.true.i:                                  ; preds = %if.else96.i
  %122 = ptrtoint ptr %hash10.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %hash10.i, align 4
  %124 = ptrtoint ptr %alloc_hash11.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %alloc_hash11.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %123, i32 %125)
  %cmp101.not.i = icmp eq i32 %123, %125
  br i1 %cmp101.not.i, label %land.lhs.true.i.if.end105.i_crit_edge, label %land.lhs.true.i.errout_alloc.i_crit_edge

land.lhs.true.i.errout_alloc.i_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %errout_alloc.i

land.lhs.true.i.if.end105.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end105.i

if.end105.i:                                      ; preds = %land.lhs.true.i.if.end105.i_crit_edge, %if.else96.i.if.end105.i_crit_edge, %lor.lhs.false.i.if.end105.i_crit_edge
  %126 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %5, align 4
  %tobool107.not.i = icmp eq ptr %127, null
  br i1 %tobool107.not.i, label %if.end105.i.if.end112.i_crit_edge, label %if.then108.i

if.end105.i.if.end112.i_crit_edge:                ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end112.i

if.then108.i:                                     ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i491.i = getelementptr i8, ptr %127, i32 4
  %128 = ptrtoint ptr %add.ptr.i.i491.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %add.ptr.i.i491.i, align 4
  %130 = ptrtoint ptr %fall_through12.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %129, ptr %fall_through12.i, align 4
  br label %if.end112.i

if.end112.i:                                      ; preds = %if.then108.i, %if.end105.i.if.end112.i_crit_edge
  %131 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %call7.i.i.i, align 8
  %tobool114.not.i = icmp eq ptr %132, null
  br i1 %tobool114.not.i, label %land.lhs.true115.i, label %if.then127.i

land.lhs.true115.i:                               ; preds = %if.end112.i
  %133 = ptrtoint ptr %h75.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %h75.i, align 4
  %tobool117.not.i = icmp eq ptr %134, null
  br i1 %tobool117.not.i, label %if.end121.i, label %land.lhs.true115.i.lor.lhs.false124.i_crit_edge

land.lhs.true115.i.lor.lhs.false124.i_crit_edge:  ; preds = %land.lhs.true115.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false124.i

if.end121.i:                                      ; preds = %land.lhs.true115.i
  call void @__sanitizer_cov_trace_pc() #11
  %135 = ptrtoint ptr %hash10.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %hash10.i, align 4
  %137 = ptrtoint ptr %alloc_hash11.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %136, ptr %alloc_hash11.i, align 8
  br label %lor.lhs.false124.i

lor.lhs.false124.i:                               ; preds = %if.end121.i, %land.lhs.true115.i.lor.lhs.false124.i_crit_edge
  %138 = ptrtoint ptr %hash10.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %hash10.i, align 4
  %140 = ptrtoint ptr %mask8.i to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %mask8.i, align 4
  %conv.i494.i = zext i16 %141 to i32
  %142 = ptrtoint ptr %shift9.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %shift9.i, align 8
  %shr.i496.i = lshr i32 %conv.i494.i, %143
  call void @__sanitizer_cov_trace_cmp4(i32 %139, i32 %shr.i496.i)
  %cmp.i497.not.i = icmp ugt i32 %139, %shr.i496.i
  br i1 %cmp.i497.not.i, label %if.then127.thread.i, label %land.lhs.true136.i.thread

if.then127.i:                                     ; preds = %if.end112.i
  %144 = ptrtoint ptr %alloc_hash11.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %alloc_hash11.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %145, i32 %handle)
  %cmp129.not.i = icmp ugt i32 %145, %handle
  br i1 %cmp129.not.i, label %if.then127.i.if.then163.i_crit_edge, label %if.then127.i.errout_alloc.i_crit_edge

if.then127.i.errout_alloc.i_crit_edge:            ; preds = %if.then127.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %errout_alloc.i

if.then127.i.if.then163.i_crit_edge:              ; preds = %if.then127.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then163.i

if.then127.thread.i:                              ; preds = %lor.lhs.false124.i
  %146 = ptrtoint ptr %alloc_hash11.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %alloc_hash11.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %147, i32 %handle)
  %cmp129.not541.i = icmp ugt i32 %147, %handle
  br i1 %cmp129.not541.i, label %land.lhs.true136.i, label %if.then127.thread.i.errout_alloc.i_crit_edge

if.then127.thread.i.errout_alloc.i_crit_edge:     ; preds = %if.then127.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %errout_alloc.i

land.lhs.true136.i:                               ; preds = %if.then127.thread.i
  %148 = ptrtoint ptr %h75.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %h75.i, align 4
  %tobool138.not.i = icmp eq ptr %149, null
  br i1 %tobool138.not.i, label %if.then142.i, label %land.lhs.true136.i.if.end160.i_crit_edge

land.lhs.true136.i.if.end160.i_crit_edge:         ; preds = %land.lhs.true136.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end160.i

land.lhs.true136.i.thread:                        ; preds = %lor.lhs.false124.i
  %150 = ptrtoint ptr %h75.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %h75.i, align 4
  %tobool138.not.i43 = icmp eq ptr %151, null
  br i1 %tobool138.not.i43, label %if.else148.i, label %land.lhs.true136.i.thread.if.end160.i_crit_edge

land.lhs.true136.i.thread.if.end160.i_crit_edge:  ; preds = %land.lhs.true136.i.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end160.i

if.then142.i:                                     ; preds = %land.lhs.true136.i
  %call143.i = call fastcc i32 @tcindex_alloc_perfect_hash(ptr noundef %net, ptr noundef nonnull %call7.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143.i)
  %cmp144.i = icmp slt i32 %call143.i, 0
  br i1 %cmp144.i, label %if.then142.i.errout_alloc.i_crit_edge, label %if.then142.i.if.end160.i_crit_edge

if.then142.i.if.end160.i_crit_edge:               ; preds = %if.then142.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end160.i

if.then142.i.errout_alloc.i_crit_edge:            ; preds = %if.then142.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %errout_alloc.i

if.else148.i:                                     ; preds = %land.lhs.true136.i.thread
  %152 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %139, i32 4) #9
  %153 = extractvalue { i32, i1 } %152, 1
  br i1 %153, label %if.else148.i.errout_alloc.i_crit_edge, label %if.end7.i.i.i, !prof !120

if.else148.i.errout_alloc.i_crit_edge:            ; preds = %if.else148.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %errout_alloc.i

if.end7.i.i.i:                                    ; preds = %if.else148.i
  %154 = extractvalue { i32, i1 } %152, 0
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %154, i32 noundef 3520) #13
  %tobool152.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool152.not.i, label %if.end7.i.i.i.errout_alloc.i_crit_edge, label %cleanup156.i

if.end7.i.i.i.errout_alloc.i_crit_edge:           ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %errout_alloc.i

cleanup156.i:                                     ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %155 = ptrtoint ptr %h75.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %call8.i.i.i, ptr %h75.i, align 4
  br label %if.end160.i

if.end160.i:                                      ; preds = %cleanup156.i, %if.then142.i.if.end160.i_crit_edge, %land.lhs.true136.i.thread.if.end160.i_crit_edge, %land.lhs.true136.i.if.end160.i_crit_edge
  %balloc.3.i.ph = phi i32 [ %balloc.1.i, %land.lhs.true136.i.thread.if.end160.i_crit_edge ], [ 1, %if.then142.i.if.end160.i_crit_edge ], [ 2, %cleanup156.i ], [ %balloc.1.i, %land.lhs.true136.i.if.end160.i_crit_edge ]
  %156 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %.pr = load ptr, ptr %call7.i.i.i, align 8
  %tobool162.not.i = icmp eq ptr %.pr, null
  br i1 %tobool162.not.i, label %if.else165.i, label %if.end160.i.if.then163.i_crit_edge

if.end160.i.if.then163.i_crit_edge:               ; preds = %if.end160.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then163.i

if.then163.i:                                     ; preds = %if.end160.i.if.then163.i_crit_edge, %if.then127.i.if.then163.i_crit_edge
  %balloc.3.i47 = phi i32 [ %balloc.3.i.ph, %if.end160.i.if.then163.i_crit_edge ], [ %balloc.1.i, %if.then127.i.if.then163.i_crit_edge ]
  %157 = phi ptr [ %.pr, %if.end160.i.if.then163.i_crit_edge ], [ %132, %if.then127.i.if.then163.i_crit_edge ]
  %add.ptr.i = getelementptr %struct.tcindex_filter_result, ptr %157, i32 %handle
  br label %if.end173.i

if.else165.i:                                     ; preds = %if.end160.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv166.i = trunc i32 %handle to i16
  %call167.i = call fastcc ptr @tcindex_lookup(ptr noundef nonnull %call7.i.i.i, i16 noundef zeroext %conv166.i) #9
  %tobool168.not.i = icmp eq ptr %call167.i, null
  %call167.new_filter_result.i = select i1 %tobool168.not.i, ptr %new_filter_result.i, ptr %call167.i
  br label %if.end173.i

if.end173.i:                                      ; preds = %if.else165.i, %if.then163.i
  %balloc.3.i46 = phi i32 [ %balloc.3.i47, %if.then163.i ], [ %balloc.3.i.ph, %if.else165.i ]
  %r.addr.0.i = phi ptr [ %add.ptr.i, %if.then163.i ], [ %call167.new_filter_result.i, %if.else165.i ]
  %cmp174.i = icmp eq ptr %r.addr.0.i, %new_filter_result.i
  br i1 %cmp174.i, label %if.then176.i, label %if.end173.i.if.end187.i_crit_edge

if.end173.i.if.end187.i_crit_edge:                ; preds = %if.end173.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end187.i

if.then176.i:                                     ; preds = %if.end173.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %158 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i510.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %158, i32 noundef 3520, i32 noundef 160) #12
  %tobool178.not.i = icmp eq ptr %call7.i.i510.i, null
  br i1 %tobool178.not.i, label %if.then176.i.errout_alloc.i_crit_edge, label %if.end180.i

if.then176.i.errout_alloc.i_crit_edge:            ; preds = %if.then176.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %errout_alloc.i

if.end180.i:                                      ; preds = %if.then176.i
  %conv181.i = trunc i32 %handle to i16
  %159 = ptrtoint ptr %call7.i.i510.i to i32
  call void @__asan_store2_noabort(i32 %159)
  store i16 %conv181.i, ptr %call7.i.i510.i, align 8
  %next.i = getelementptr inbounds %struct.tcindex_filter, ptr %call7.i.i510.i, i32 0, i32 2
  %160 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr null, ptr %next.i, align 4
  %result.i = getelementptr inbounds %struct.tcindex_filter, ptr %call7.i.i510.i, i32 0, i32 1
  %call182.i = call fastcc i32 @tcindex_filter_result_init(ptr noundef %result.i, ptr noundef nonnull %call7.i.i.i, ptr noundef %net) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call182.i)
  %cmp183.i = icmp slt i32 %call182.i, 0
  br i1 %cmp183.i, label %if.then185.i, label %if.end180.i.if.end187.i_crit_edge

if.end180.i.if.end187.i_crit_edge:                ; preds = %if.end180.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end187.i

if.then185.i:                                     ; preds = %if.end180.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @kfree(ptr noundef nonnull %call7.i.i510.i) #9
  br label %errout_alloc.i

if.end187.i:                                      ; preds = %if.end180.i.if.end187.i_crit_edge, %if.end173.i.if.end187.i_crit_edge
  %f.0.i = phi ptr [ %call7.i.i510.i, %if.end180.i.if.end187.i_crit_edge ], [ null, %if.end173.i.if.end187.i_crit_edge ]
  %161 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %6, align 4
  %tobool189.not.i = icmp eq ptr %162, null
  br i1 %tobool189.not.i, label %if.end187.i.if.end193.i_crit_edge, label %if.then190.i

if.end187.i.if.end193.i_crit_edge:                ; preds = %if.end187.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end193.i

if.then190.i:                                     ; preds = %if.end187.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i511.i = getelementptr i8, ptr %162, i32 4
  %163 = ptrtoint ptr %add.ptr.i.i511.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %add.ptr.i.i511.i, align 4
  %classid.i = getelementptr inbounds %struct.anon.120, ptr %cr.i, i32 0, i32 1
  %165 = ptrtoint ptr %classid.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %164, ptr %classid.i, align 4
  call fastcc void @tcf_bind_filter(ptr noundef %tp, ptr noundef nonnull %cr.i, i32 noundef %base) #9
  br label %if.end193.i

if.end193.i:                                      ; preds = %if.then190.i, %if.end187.i.if.end193.i_crit_edge
  %cmp196.not.i = icmp eq ptr %r.addr.0.i, %11
  %or.cond.i = select i1 %tobool81.not.i, i1 true, i1 %cmp196.not.i
  br i1 %or.cond.i, label %if.end193.i.if.end204.i_crit_edge, label %if.then198.i

if.end193.i.if.end204.i_crit_edge:                ; preds = %if.end193.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end204.i

if.then198.i:                                     ; preds = %if.end193.i
  %call199.i = call fastcc i32 @tcindex_filter_result_init(ptr noundef nonnull %11, ptr noundef nonnull %call7.i.i.i, ptr noundef %net) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call199.i)
  %cmp200.i = icmp slt i32 %call199.i, 0
  br i1 %cmp200.i, label %if.then202.i, label %if.then198.i.if.end204.i_crit_edge

if.then198.i.if.end204.i_crit_edge:               ; preds = %if.then198.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end204.i

if.then202.i:                                     ; preds = %if.then198.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @kfree(ptr noundef %f.0.i) #9
  br label %errout_alloc.i

if.end204.i:                                      ; preds = %if.then198.i.if.end204.i_crit_edge, %if.end193.i.if.end204.i_crit_edge
  %res205.i = getelementptr inbounds %struct.tcindex_filter_result, ptr %r.addr.0.i, i32 0, i32 1
  %166 = ptrtoint ptr %cr.i to i32
  call void @__asan_load8_noabort(i32 %166)
  %167 = load i64, ptr %cr.i, align 8
  %168 = ptrtoint ptr %res205.i to i32
  call void @__asan_storeN_noabort(i32 %168, i32 8)
  store i64 %167, ptr %res205.i, align 4
  call void @tcf_exts_change(ptr noundef %r.addr.0.i, ptr noundef nonnull %e.i) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !124
  %169 = ptrtoint ptr %root to i32
  call void @__asan_store4_noabort(i32 %169)
  store volatile ptr %call7.i.i.i, ptr %root, align 4
  br i1 %cmp174.i, label %if.then245.i, label %if.else325.i

if.then245.i:                                     ; preds = %if.end204.i
  %result246.i = getelementptr inbounds %struct.tcindex_filter, ptr %f.0.i, i32 0, i32 1
  %res247.i = getelementptr inbounds %struct.tcindex_filter, ptr %f.0.i, i32 0, i32 1, i32 1
  %170 = ptrtoint ptr %res205.i to i32
  call void @__asan_loadN_noabort(i32 %170, i32 8)
  %171 = load i64, ptr %res205.i, align 4
  %172 = ptrtoint ptr %res247.i to i32
  call void @__asan_store8_noabort(i32 %172)
  store i64 %171, ptr %res247.i, align 8
  call void @tcf_exts_change(ptr noundef %result246.i, ptr noundef nonnull %new_filter_result.i) #9
  %173 = ptrtoint ptr %h75.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %h75.i, align 4
  %175 = ptrtoint ptr %hash10.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %hash10.i, align 4
  %rem.i = urem i32 %handle, %176
  %add.ptr254.i = getelementptr ptr, ptr %174, i32 %rem.i
  %call256.i = call zeroext i1 @lockdep_rtnl_is_held() #9
  br i1 %call256.i, label %if.then245.i.do.end265.i_crit_edge, label %land.lhs.true257.i

if.then245.i.do.end265.i_crit_edge:               ; preds = %if.then245.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end265.i

land.lhs.true257.i:                               ; preds = %if.then245.i
  %call258.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call258.i)
  %tobool259.not.i = icmp eq i32 %call258.i, 0
  br i1 %tobool259.not.i, label %land.lhs.true257.i.do.end265.i_crit_edge, label %land.lhs.true260.i

land.lhs.true257.i.do.end265.i_crit_edge:         ; preds = %land.lhs.true257.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end265.i

land.lhs.true260.i:                               ; preds = %land.lhs.true257.i
  %.b487.i = load i1, ptr @tcindex_set_parms.__warned, align 1
  br i1 %.b487.i, label %land.lhs.true260.i.do.end265.i_crit_edge, label %if.then262.i

land.lhs.true260.i.do.end265.i_crit_edge:         ; preds = %land.lhs.true260.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end265.i

if.then262.i:                                     ; preds = %land.lhs.true260.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @tcindex_set_parms.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 503, ptr noundef nonnull @.str.11) #9
  br label %do.end265.i

do.end265.i:                                      ; preds = %if.then262.i, %land.lhs.true260.i.do.end265.i_crit_edge, %land.lhs.true257.i.do.end265.i_crit_edge, %if.then245.i.do.end265.i_crit_edge
  %177 = ptrtoint ptr %add.ptr254.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %nfp.0537.i = load ptr, ptr %add.ptr254.i, align 4
  %tobool268.not538.i = icmp eq ptr %nfp.0537.i, null
  br i1 %tobool268.not538.i, label %do.end265.i.do.body285.i_crit_edge, label %do.end265.i.for.inc270.i_crit_edge

do.end265.i.for.inc270.i_crit_edge:               ; preds = %do.end265.i
  br label %for.inc270.i

do.end265.i.do.body285.i_crit_edge:               ; preds = %do.end265.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body285.i

for.inc270.i:                                     ; preds = %do.end282.i.for.inc270.i_crit_edge, %do.end265.i.for.inc270.i_crit_edge
  %nfp.0539.i = phi ptr [ %nfp.0.i, %do.end282.i.for.inc270.i_crit_edge ], [ %nfp.0537.i, %do.end265.i.for.inc270.i_crit_edge ]
  %next271.i = getelementptr inbounds %struct.tcindex_filter, ptr %nfp.0539.i, i32 0, i32 2
  %call273.i = call zeroext i1 @lockdep_rtnl_is_held() #9
  br i1 %call273.i, label %for.inc270.i.do.end282.i_crit_edge, label %land.lhs.true274.i

for.inc270.i.do.end282.i_crit_edge:               ; preds = %for.inc270.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end282.i

land.lhs.true274.i:                               ; preds = %for.inc270.i
  %call275.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call275.i)
  %tobool276.not.i = icmp eq i32 %call275.i, 0
  br i1 %tobool276.not.i, label %land.lhs.true274.i.do.end282.i_crit_edge, label %land.lhs.true277.i

land.lhs.true274.i.do.end282.i_crit_edge:         ; preds = %land.lhs.true274.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end282.i

land.lhs.true277.i:                               ; preds = %land.lhs.true274.i
  %.b485486.i = load i1, ptr @tcindex_set_parms.__warned.20, align 1
  br i1 %.b485486.i, label %land.lhs.true277.i.do.end282.i_crit_edge, label %if.then279.i

land.lhs.true277.i.do.end282.i_crit_edge:         ; preds = %land.lhs.true277.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end282.i

if.then279.i:                                     ; preds = %land.lhs.true277.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @tcindex_set_parms.__warned.20, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 505, ptr noundef nonnull @.str.11) #9
  br label %do.end282.i

do.end282.i:                                      ; preds = %if.then279.i, %land.lhs.true277.i.do.end282.i_crit_edge, %land.lhs.true274.i.do.end282.i_crit_edge, %for.inc270.i.do.end282.i_crit_edge
  %178 = ptrtoint ptr %next271.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %nfp.0.i = load ptr, ptr %next271.i, align 4
  %tobool268.not.i = icmp eq ptr %nfp.0.i, null
  br i1 %tobool268.not.i, label %do.end282.i.do.body285.i_crit_edge, label %do.end282.i.for.inc270.i_crit_edge

do.end282.i.for.inc270.i_crit_edge:               ; preds = %do.end282.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc270.i

do.end282.i.do.body285.i_crit_edge:               ; preds = %do.end282.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body285.i

do.body285.i:                                     ; preds = %do.end282.i.do.body285.i_crit_edge, %do.end265.i.do.body285.i_crit_edge
  %fp.0.lcssa.i = phi ptr [ %add.ptr254.i, %do.end265.i.do.body285.i_crit_edge ], [ %next271.i, %do.end282.i.do.body285.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !125
  %179 = ptrtoint ptr %fp.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store volatile ptr %f.0.i, ptr %fp.0.lcssa.i, align 4
  br label %if.end327.i

if.else325.i:                                     ; preds = %if.end204.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @tcf_exts_destroy(ptr noundef nonnull %new_filter_result.i) #9
  br label %if.end327.i

if.end327.i:                                      ; preds = %if.else325.i, %do.body285.i
  %tobool328.not.i = icmp eq ptr %9, null
  br i1 %tobool328.not.i, label %if.end327.i.tcindex_set_parms.exit_crit_edge, label %if.then329.i

if.end327.i.tcindex_set_parms.exit_crit_edge:     ; preds = %if.end327.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tcindex_set_parms.exit

if.then329.i:                                     ; preds = %if.end327.i
  call void @__sanitizer_cov_trace_pc() #11
  %rwork.i = getelementptr inbounds %struct.tcindex_data, ptr %9, i32 0, i32 9
  %call330.i = call zeroext i1 @tcf_queue_work(ptr noundef %rwork.i, ptr noundef nonnull @tcindex_partial_destroy_work) #9
  br label %tcindex_set_parms.exit

errout_alloc.i:                                   ; preds = %if.then202.i, %if.then185.i, %if.then176.i.errout_alloc.i_crit_edge, %if.end7.i.i.i.errout_alloc.i_crit_edge, %if.else148.i.errout_alloc.i_crit_edge, %if.then142.i.errout_alloc.i_crit_edge, %if.then127.thread.i.errout_alloc.i_crit_edge, %if.then127.i.errout_alloc.i_crit_edge, %land.lhs.true.i.errout_alloc.i_crit_edge, %lor.lhs.false.i.errout_alloc.i_crit_edge, %if.then87.i.errout_alloc.i_crit_edge, %if.end74.i.errout_alloc.i_crit_edge
  %err.0.i = phi i32 [ -16, %lor.lhs.false.i.errout_alloc.i_crit_edge ], [ -22, %if.then127.i.errout_alloc.i_crit_edge ], [ %call182.i, %if.then185.i ], [ %call199.i, %if.then202.i ], [ -12, %if.then176.i.errout_alloc.i_crit_edge ], [ -12, %if.then142.i.errout_alloc.i_crit_edge ], [ -16, %if.then87.i.errout_alloc.i_crit_edge ], [ -16, %land.lhs.true.i.errout_alloc.i_crit_edge ], [ -12, %if.end74.i.errout_alloc.i_crit_edge ], [ -12, %if.end7.i.i.i.errout_alloc.i_crit_edge ], [ -12, %if.else148.i.errout_alloc.i_crit_edge ], [ -22, %if.then127.thread.i.errout_alloc.i_crit_edge ]
  %balloc.4.i = phi i32 [ %balloc.1.i, %lor.lhs.false.i.errout_alloc.i_crit_edge ], [ %balloc.1.i, %if.then127.i.errout_alloc.i_crit_edge ], [ %balloc.3.i46, %if.then185.i ], [ %balloc.3.i46, %if.then202.i ], [ %balloc.3.i46, %if.then176.i.errout_alloc.i_crit_edge ], [ %balloc.1.i, %if.then142.i.errout_alloc.i_crit_edge ], [ %balloc.1.i, %if.then87.i.errout_alloc.i_crit_edge ], [ %balloc.1.i, %land.lhs.true.i.errout_alloc.i_crit_edge ], [ %balloc.1.i, %if.end74.i.errout_alloc.i_crit_edge ], [ %balloc.1.i, %if.end7.i.i.i.errout_alloc.i_crit_edge ], [ %balloc.1.i, %if.else148.i.errout_alloc.i_crit_edge ], [ %balloc.1.i, %if.then127.thread.i.errout_alloc.i_crit_edge ]
  %180 = zext i32 %balloc.4.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %180, ptr @__sancov_gen_cov_switch_values)
  switch i32 %balloc.4.i, label %errout_alloc.i.if.end341.i_crit_edge [
    i32 1, label %if.then334.i
    i32 2, label %errout_alloc.i.if.end341.sink.split.i_crit_edge
  ]

errout_alloc.i.if.end341.sink.split.i_crit_edge:  ; preds = %errout_alloc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end341.sink.split.i

errout_alloc.i.if.end341.i_crit_edge:             ; preds = %errout_alloc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end341.i

if.then334.i:                                     ; preds = %errout_alloc.i
  %181 = ptrtoint ptr %hash10.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %hash10.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %182)
  %cmp6.not.i.i = icmp eq i32 %182, 0
  br i1 %cmp6.not.i.i, label %if.then334.i.if.end341.sink.split.i_crit_edge, label %if.then334.i.for.body.i.i_crit_edge

if.then334.i.for.body.i.i_crit_edge:              ; preds = %if.then334.i
  br label %for.body.i.i

if.then334.i.if.end341.sink.split.i_crit_edge:    ; preds = %if.then334.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end341.sink.split.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then334.i.for.body.i.i_crit_edge
  %i.07.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.then334.i.for.body.i.i_crit_edge ]
  %183 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %call7.i.i.i, align 8
  %arrayidx.i.i = getelementptr %struct.tcindex_filter_result, ptr %184, i32 %i.07.i.i
  call void @tcf_exts_destroy(ptr noundef %arrayidx.i.i) #9
  %inc.i.i = add nuw i32 %i.07.i.i, 1
  %185 = ptrtoint ptr %hash10.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %hash10.i, align 4
  %cmp.i513.i = icmp ult i32 %inc.i.i, %186
  br i1 %cmp.i513.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.if.end341.sink.split.i_crit_edge

for.body.i.i.if.end341.sink.split.i_crit_edge:    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end341.sink.split.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

if.end341.sink.split.i:                           ; preds = %for.body.i.i.if.end341.sink.split.i_crit_edge, %if.then334.i.if.end341.sink.split.i_crit_edge, %errout_alloc.i.if.end341.sink.split.i_crit_edge
  %.sink.in.i = phi ptr [ %call7.i.i.i, %if.then334.i.if.end341.sink.split.i_crit_edge ], [ %h75.i, %errout_alloc.i.if.end341.sink.split.i_crit_edge ], [ %call7.i.i.i, %for.body.i.i.if.end341.sink.split.i_crit_edge ]
  %187 = ptrtoint ptr %.sink.in.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %.sink.i = load ptr, ptr %.sink.in.i, align 4
  call void @kfree(ptr noundef %.sink.i) #9
  br label %if.end341.i

if.end341.i:                                      ; preds = %if.end341.sink.split.i, %errout_alloc.i.if.end341.i_crit_edge
  call void @tcf_exts_destroy(ptr noundef nonnull %new_filter_result.i) #9
  br label %errout.i

errout.i:                                         ; preds = %if.end341.i, %if.then55.i.errout.i_crit_edge, %if.then29.i.errout.i_crit_edge, %if.end4.i.errout.i_crit_edge, %if.end.i.errout.i_crit_edge
  %err.1.i = phi i32 [ %call1.i, %if.end.i.errout.i_crit_edge ], [ %err.0.i, %if.end341.i ], [ -12, %if.end4.i.errout.i_crit_edge ], [ -22, %if.then29.i.errout.i_crit_edge ], [ -12, %if.then55.i.errout.i_crit_edge ]
  %cp.0.i = phi ptr [ null, %if.end.i.errout.i_crit_edge ], [ %call7.i.i.i, %if.end341.i ], [ null, %if.end4.i.errout.i_crit_edge ], [ %call7.i.i.i, %if.then29.i.errout.i_crit_edge ], [ %call7.i.i.i, %if.then55.i.errout.i_crit_edge ]
  call void @kfree(ptr noundef %cp.0.i) #9
  call void @tcf_exts_destroy(ptr noundef nonnull %e.i) #9
  br label %tcindex_set_parms.exit

tcindex_set_parms.exit:                           ; preds = %errout.i, %if.then329.i, %if.end327.i.tcindex_set_parms.exit_crit_edge, %if.end19.tcindex_set_parms.exit_crit_edge
  %retval.0.i41 = phi i32 [ %err.1.i, %errout.i ], [ 0, %if.then329.i ], [ 0, %if.end327.i.tcindex_set_parms.exit_crit_edge ], [ -12, %if.end19.tcindex_set_parms.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %e.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cr.i) #9
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %new_filter_result.i) #9
  br label %cleanup

cleanup:                                          ; preds = %tcindex_set_parms.exit, %if.end16.cleanup_crit_edge, %do.end13.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i41, %tcindex_set_parms.exit ], [ 0, %do.end13.cleanup_crit_edge ], [ %call2.i, %if.end16.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tb) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcindex_delete(ptr noundef %tp, ptr noundef %arg, ptr nocapture noundef writeonly %last, i1 noundef zeroext %rtnl_held, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #9
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b141 = load i1, ptr @tcindex_delete.__warned, align 1
  br i1 %.b141, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @tcindex_delete.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 200, ptr noundef nonnull @.str.11) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %root = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 1
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcindex_delete.__UNIQUE_ID_ddebug380, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcindex_delete, %if.then11)) #9
          to label %do.end14 [label %if.then11], !srcloc !116

if.then11:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcindex_delete.__UNIQUE_ID_ddebug380, ptr noundef nonnull @.str.24, ptr noundef %tp, ptr noundef %arg, ptr noundef %1) #9
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %do.end
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool15.not = icmp eq ptr %3, null
  br i1 %tobool15.not, label %for.cond.preheader, label %if.then16

for.cond.preheader:                               ; preds = %do.end14
  %hash = getelementptr inbounds %struct.tcindex_data, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hash, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp151.not = icmp eq i32 %5, 0
  br i1 %cmp151.not, label %for.cond.preheader.cleanup108_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup108_crit_edge:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup108

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %h = getelementptr inbounds %struct.tcindex_data, ptr %1, i32 0, i32 1
  br label %for.body

if.then16:                                        ; preds = %do.end14
  %res = getelementptr inbounds %struct.tcindex_filter_result, ptr %arg, i32 0, i32 1
  %6 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %res, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool17.not = icmp eq i32 %7, 0
  br i1 %tobool17.not, label %if.then16.cleanup108_crit_edge, label %if.then16.if.end89_crit_edge

if.then16.if.end89_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end89

if.then16.cleanup108_crit_edge:                   ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup108

for.body:                                         ; preds = %for.inc50.for.body_crit_edge, %for.body.lr.ph
  %i.0152 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc50.for.body_crit_edge ]
  %8 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %h, align 4
  %add.ptr = getelementptr ptr, ptr %9, i32 %i.0152
  %call21 = tail call zeroext i1 @lockdep_rtnl_is_held() #9
  br i1 %call21, label %for.body.do.end30_crit_edge, label %land.lhs.true22

for.body.do.end30_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end30

land.lhs.true22:                                  ; preds = %for.body
  %call23 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %land.lhs.true22.do.end30_crit_edge, label %land.lhs.true25

land.lhs.true22.do.end30_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end30

land.lhs.true25:                                  ; preds = %land.lhs.true22
  %.b135140 = load i1, ptr @tcindex_delete.__warned.25, align 1
  br i1 %.b135140, label %land.lhs.true25.do.end30_crit_edge, label %if.then27

land.lhs.true25.do.end30_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end30

if.then27:                                        ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @tcindex_delete.__warned.25, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 214, ptr noundef nonnull @.str.11) #9
  br label %do.end30

do.end30:                                         ; preds = %if.then27, %land.lhs.true25.do.end30_crit_edge, %land.lhs.true22.do.end30_crit_edge, %for.body.do.end30_crit_edge
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %f.1147 = load ptr, ptr %add.ptr, align 4
  %tobool33.not148 = icmp eq ptr %f.1147, null
  br i1 %tobool33.not148, label %do.end30.for.inc50_crit_edge, label %for.body34.preheader

do.end30.for.inc50_crit_edge:                     ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc50

for.body34.preheader:                             ; preds = %do.end30
  %result161 = getelementptr inbounds %struct.tcindex_filter, ptr %f.1147, i32 0, i32 1
  %cmp35162 = icmp eq ptr %result161, %arg
  br i1 %cmp35162, label %for.body34.preheader.do.body52_crit_edge, label %for.body34.preheader.for.inc_crit_edge

for.body34.preheader.for.inc_crit_edge:           ; preds = %for.body34.preheader
  br label %for.inc

for.body34.preheader.do.body52_crit_edge:         ; preds = %for.body34.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body52

for.body34:                                       ; preds = %do.end48
  %result = getelementptr inbounds %struct.tcindex_filter, ptr %f.1, i32 0, i32 1
  %cmp35 = icmp eq ptr %result, %arg
  br i1 %cmp35, label %for.body34.do.body52_crit_edge, label %for.body34.for.inc_crit_edge

for.body34.for.inc_crit_edge:                     ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.body34.do.body52_crit_edge:                   ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body52

for.inc:                                          ; preds = %for.body34.for.inc_crit_edge, %for.body34.preheader.for.inc_crit_edge
  %f.1150163 = phi ptr [ %f.1, %for.body34.for.inc_crit_edge ], [ %f.1147, %for.body34.preheader.for.inc_crit_edge ]
  %next = getelementptr inbounds %struct.tcindex_filter, ptr %f.1150163, i32 0, i32 2
  %call39 = tail call zeroext i1 @lockdep_rtnl_is_held() #9
  br i1 %call39, label %for.inc.do.end48_crit_edge, label %land.lhs.true40

for.inc.do.end48_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end48

land.lhs.true40:                                  ; preds = %for.inc
  %call41 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %land.lhs.true40.do.end48_crit_edge, label %land.lhs.true43

land.lhs.true40.do.end48_crit_edge:               ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end48

land.lhs.true43:                                  ; preds = %land.lhs.true40
  %.b136138 = load i1, ptr @tcindex_delete.__warned.26, align 1
  br i1 %.b136138, label %land.lhs.true43.do.end48_crit_edge, label %if.then45

land.lhs.true43.do.end48_crit_edge:               ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end48

if.then45:                                        ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @tcindex_delete.__warned.26, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 215, ptr noundef nonnull @.str.11) #9
  br label %do.end48

do.end48:                                         ; preds = %if.then45, %land.lhs.true43.do.end48_crit_edge, %land.lhs.true40.do.end48_crit_edge, %for.inc.do.end48_crit_edge
  %11 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %11)
  %f.1 = load ptr, ptr %next, align 4
  %tobool33.not = icmp eq ptr %f.1, null
  br i1 %tobool33.not, label %do.end48.for.inc50_crit_edge, label %for.body34

do.end48.for.inc50_crit_edge:                     ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc50

for.inc50:                                        ; preds = %do.end48.for.inc50_crit_edge, %do.end30.for.inc50_crit_edge
  %inc = add nuw i32 %i.0152, 1
  %12 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hash, align 4
  %cmp = icmp ult i32 %inc, %13
  br i1 %cmp, label %for.inc50.for.body_crit_edge, label %for.inc50.cleanup108_crit_edge

for.inc50.cleanup108_crit_edge:                   ; preds = %for.inc50
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup108

for.inc50.for.body_crit_edge:                     ; preds = %for.inc50
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

do.body52:                                        ; preds = %for.body34.do.body52_crit_edge, %for.body34.preheader.do.body52_crit_edge
  %f.1150.lcssa = phi ptr [ %f.1, %for.body34.do.body52_crit_edge ], [ %f.1147, %for.body34.preheader.do.body52_crit_edge ]
  %walk.0149.lcssa = phi ptr [ %next, %for.body34.do.body52_crit_edge ], [ %add.ptr, %for.body34.preheader.do.body52_crit_edge ]
  %call54 = tail call zeroext i1 @lockdep_rtnl_is_held() #9
  br i1 %call54, label %do.body52.cleanup_crit_edge, label %land.lhs.true55

do.body52.cleanup_crit_edge:                      ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true55:                                  ; preds = %do.body52
  %call56 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %land.lhs.true55.cleanup_crit_edge, label %land.lhs.true58

land.lhs.true55.cleanup_crit_edge:                ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true58:                                  ; preds = %land.lhs.true55
  %.b137139 = load i1, ptr @tcindex_delete.__warned.27, align 1
  br i1 %.b137139, label %land.lhs.true58.cleanup_crit_edge, label %if.then60

land.lhs.true58.cleanup_crit_edge:                ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then60:                                        ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @tcindex_delete.__warned.27, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 223, ptr noundef nonnull @.str.11) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then60, %land.lhs.true58.cleanup_crit_edge, %land.lhs.true55.cleanup_crit_edge, %do.body52.cleanup_crit_edge
  %next65 = getelementptr inbounds %struct.tcindex_filter, ptr %f.1150.lcssa, i32 0, i32 2
  %14 = ptrtoint ptr %next65 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %next65, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !126
  %16 = ptrtoint ptr %walk.0149.lcssa to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %15, ptr %walk.0149.lcssa, align 4
  br label %if.end89

if.end89:                                         ; preds = %cleanup, %if.then16.if.end89_crit_edge
  %f.3 = phi ptr [ null, %if.then16.if.end89_crit_edge ], [ %f.1150.lcssa, %cleanup ]
  %chain.i = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 7
  %17 = ptrtoint ptr %chain.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chain.i, align 4
  %block.i = getelementptr inbounds %struct.tcf_chain, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %block.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %block.i, align 4
  %q1.i = getelementptr inbounds %struct.tcf_block, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %q1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %q1.i, align 4
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %if.end89.tcf_unbind_filter.exit_crit_edge, label %if.end.i

if.end89.tcf_unbind_filter.exit_crit_edge:        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #11
  br label %tcf_unbind_filter.exit

if.end.i:                                         ; preds = %if.end89
  %res90 = getelementptr inbounds %struct.tcindex_filter_result, ptr %arg, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %res90, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !121
  tail call void @llvm.prefetch.p0(ptr %res90, i32 1, i32 3, i32 1) #9
  %23 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %res90) #9, !srcloc !122
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %23, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !123
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i, label %if.end.i.tcf_unbind_filter.exit_crit_edge, label %if.then.i.i

if.end.i.tcf_unbind_filter.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tcf_unbind_filter.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %ops.i.i = getelementptr inbounds %struct.Qdisc, ptr %22, i32 0, i32 4
  %24 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops.i.i, align 16
  %cl_ops.i.i = getelementptr inbounds %struct.Qdisc_ops, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %cl_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cl_ops.i.i, align 4
  %unbind_tcf.i.i = getelementptr inbounds %struct.Qdisc_class_ops, ptr %27, i32 0, i32 11
  %28 = ptrtoint ptr %unbind_tcf.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %unbind_tcf.i.i, align 4
  tail call void %29(ptr noundef nonnull %22, i32 noundef %asmresult.i.i.i.i) #9
  br label %tcf_unbind_filter.exit

tcf_unbind_filter.exit:                           ; preds = %if.then.i.i, %if.end.i.tcf_unbind_filter.exit_crit_edge, %if.end89.tcf_unbind_filter.exit_crit_edge
  %tobool91.not = icmp eq ptr %f.3, null
  br i1 %tobool91.not, label %if.else99, label %if.then92

if.then92:                                        ; preds = %tcf_unbind_filter.exit
  %result93 = getelementptr inbounds %struct.tcindex_filter, ptr %f.3, i32 0, i32 1
  %call94 = tail call fastcc zeroext i1 @tcf_exts_get_net(ptr noundef %result93)
  br i1 %call94, label %if.then95, label %if.else97

if.then95:                                        ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #11
  %rwork = getelementptr inbounds %struct.tcindex_filter, ptr %f.3, i32 0, i32 3
  %call96 = tail call zeroext i1 @tcf_queue_work(ptr noundef %rwork, ptr noundef nonnull @tcindex_destroy_fexts_work) #9
  br label %if.end107

if.else97:                                        ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @__tcindex_destroy_fexts(ptr noundef nonnull %f.3)
  br label %if.end107

if.else99:                                        ; preds = %tcf_unbind_filter.exit
  %refcnt.i = getelementptr inbounds %struct.tcindex_data, ptr %1, i32 0, i32 8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #9
  %30 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #9, !srcloc !119
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.else99.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !120

if.else99.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.else99
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.else99
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %31 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %31)
  %.not.i.i.i.i = icmp sgt i32 %31, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.tcindex_data_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !117

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.tcindex_data_get.exit_crit_edge:  ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tcindex_data_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.else99.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.else99.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef %.sink.i.i.i.i) #9
  br label %tcindex_data_get.exit

tcindex_data_get.exit:                            ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.tcindex_data_get.exit_crit_edge
  %call101 = tail call fastcc zeroext i1 @tcf_exts_get_net(ptr noundef %arg)
  br i1 %call101, label %if.then102, label %if.else105

if.then102:                                       ; preds = %tcindex_data_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  %rwork103 = getelementptr inbounds %struct.tcindex_filter_result, ptr %arg, i32 0, i32 3
  %call104 = tail call zeroext i1 @tcf_queue_work(ptr noundef %rwork103, ptr noundef nonnull @tcindex_destroy_rexts_work) #9
  br label %if.end107

if.else105:                                       ; preds = %tcindex_data_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @__tcindex_destroy_rexts(ptr noundef %arg)
  br label %if.end107

if.end107:                                        ; preds = %if.else105, %if.then102, %if.else97, %if.then95
  %32 = ptrtoint ptr %last to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %last, align 1
  br label %cleanup108

cleanup108:                                       ; preds = %if.end107, %for.inc50.cleanup108_crit_edge, %if.then16.cleanup108_crit_edge, %for.cond.preheader.cleanup108_crit_edge
  %retval.1 = phi i32 [ 0, %if.end107 ], [ -2, %if.then16.cleanup108_crit_edge ], [ -2, %for.cond.preheader.cleanup108_crit_edge ], [ -2, %for.inc50.cleanup108_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcindex_walk(ptr noundef %tp, ptr noundef %walker, i1 noundef zeroext %rtnl_held) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #9
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b124 = load i1, ptr @tcindex_walk.__warned, align 1
  br i1 %.b124, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @tcindex_walk.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 560, ptr noundef nonnull @.str.11) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %root = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 1
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcindex_walk.__UNIQUE_ID_ddebug393, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcindex_walk, %if.then11)) #9
          to label %do.end14 [label %if.then11], !srcloc !116

if.then11:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcindex_walk.__UNIQUE_ID_ddebug393, ptr noundef nonnull @.str.29, ptr noundef %tp, ptr noundef %walker, ptr noundef %1) #9
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %do.end
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool15.not = icmp eq ptr %3, null
  br i1 %tobool15.not, label %do.end14.if.end31_crit_edge, label %for.cond.preheader

do.end14.if.end31_crit_edge:                      ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

for.cond.preheader:                               ; preds = %do.end14
  %hash = getelementptr inbounds %struct.tcindex_data, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hash, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp126.not = icmp eq i32 %5, 0
  br i1 %cmp126.not, label %for.cond.preheader.if.end31_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end31_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %count = getelementptr inbounds %struct.tcf_walker, ptr %walker, i32 0, i32 2
  %skip = getelementptr inbounds %struct.tcf_walker, ptr %walker, i32 0, i32 1
  %fn = getelementptr inbounds %struct.tcf_walker, ptr %walker, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0127 = phi i32 [ 0, %for.body.lr.ph ], [ %inc30, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %arrayidx = getelementptr %struct.tcindex_filter_result, ptr %7, i32 %i.0127
  %res = getelementptr %struct.tcindex_filter_result, ptr %7, i32 %i.0127, i32 1
  %8 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %res, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool18.not = icmp eq i32 %9, 0
  br i1 %tobool18.not, label %for.body.for.inc_crit_edge, label %if.end20

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end20:                                         ; preds = %for.body
  %10 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %count, align 4
  %12 = ptrtoint ptr %skip to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %skip, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp21.not = icmp slt i32 %11, %13
  br i1 %cmp21.not, label %if.end20.if.end28_crit_edge, label %if.then22

if.end20.if.end28_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then22:                                        ; preds = %if.end20
  %14 = ptrtoint ptr %fn to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fn, align 4
  %call24 = tail call i32 %15(ptr noundef %tp, ptr noundef %arrayidx, ptr noundef %walker) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %if.then22.cleanup.sink.split_crit_edge, label %if.then22.if.end28_crit_edge

if.then22.if.end28_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then22.cleanup.sink.split_crit_edge:           ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end28:                                         ; preds = %if.then22.if.end28_crit_edge, %if.end20.if.end28_crit_edge
  %16 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %count, align 4
  %inc = add i32 %17, 1
  store i32 %inc, ptr %count, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end28, %for.body.for.inc_crit_edge
  %inc30 = add nuw i32 %i.0127, 1
  %18 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %hash, align 4
  %cmp = icmp ult i32 %inc30, %19
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.if.end31_crit_edge

for.inc.if.end31_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end31:                                         ; preds = %for.inc.if.end31_crit_edge, %for.cond.preheader.if.end31_crit_edge, %do.end14.if.end31_crit_edge
  %h = getelementptr inbounds %struct.tcindex_data, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %h, align 4
  %tobool32.not = icmp eq ptr %21, null
  br i1 %tobool32.not, label %if.end31.cleanup_crit_edge, label %for.cond35.preheader

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond35.preheader:                             ; preds = %if.end31
  %hash36 = getelementptr inbounds %struct.tcindex_data, ptr %1, i32 0, i32 5
  %22 = ptrtoint ptr %hash36 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %hash36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp37130.not = icmp eq i32 %23, 0
  br i1 %cmp37130.not, label %for.cond35.preheader.cleanup_crit_edge, label %do.body39.lr.ph

for.cond35.preheader.cleanup_crit_edge:           ; preds = %for.cond35.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body39.lr.ph:                                  ; preds = %for.cond35.preheader
  %count69 = getelementptr inbounds %struct.tcf_walker, ptr %walker, i32 0, i32 2
  %skip70 = getelementptr inbounds %struct.tcf_walker, ptr %walker, i32 0, i32 1
  %fn73 = getelementptr inbounds %struct.tcf_walker, ptr %walker, i32 0, i32 5
  br label %do.body39

do.body39:                                        ; preds = %for.inc84.do.body39_crit_edge, %do.body39.lr.ph
  %i.1131 = phi i32 [ 0, %do.body39.lr.ph ], [ %inc85, %for.inc84.do.body39_crit_edge ]
  %call40 = tail call zeroext i1 @lockdep_rtnl_is_held() #9
  br i1 %call40, label %do.body39.do.end49_crit_edge, label %land.lhs.true41

do.body39.do.end49_crit_edge:                     ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end49

land.lhs.true41:                                  ; preds = %do.body39
  %call42 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %land.lhs.true41.do.end49_crit_edge, label %land.lhs.true44

land.lhs.true41.do.end49_crit_edge:               ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end49

land.lhs.true44:                                  ; preds = %land.lhs.true41
  %.b120123 = load i1, ptr @tcindex_walk.__warned.30, align 1
  br i1 %.b120123, label %land.lhs.true44.do.end49_crit_edge, label %if.then46

land.lhs.true44.do.end49_crit_edge:               ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end49

if.then46:                                        ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @tcindex_walk.__warned.30, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 581, ptr noundef nonnull @.str.11) #9
  br label %do.end49

do.end49:                                         ; preds = %if.then46, %land.lhs.true44.do.end49_crit_edge, %land.lhs.true41.do.end49_crit_edge, %do.body39.do.end49_crit_edge
  %24 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %h, align 4
  %arrayidx52 = getelementptr ptr, ptr %25, i32 %i.1131
  %26 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx52, align 4
  %tobool54.not128 = icmp eq ptr %27, null
  br i1 %tobool54.not128, label %do.end49.for.inc84_crit_edge, label %do.end49.do.body56_crit_edge

do.end49.do.body56_crit_edge:                     ; preds = %do.end49
  br label %do.body56

do.end49.for.inc84_crit_edge:                     ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc84

do.body56:                                        ; preds = %if.end79.do.body56_crit_edge, %do.end49.do.body56_crit_edge
  %f.0129 = phi ptr [ %29, %if.end79.do.body56_crit_edge ], [ %27, %do.end49.do.body56_crit_edge ]
  %call57 = tail call zeroext i1 @lockdep_rtnl_is_held() #9
  br i1 %call57, label %do.body56.do.end66_crit_edge, label %land.lhs.true58

do.body56.do.end66_crit_edge:                     ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end66

land.lhs.true58:                                  ; preds = %do.body56
  %call59 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true58.do.end66_crit_edge, label %land.lhs.true61

land.lhs.true58.do.end66_crit_edge:               ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end66

land.lhs.true61:                                  ; preds = %land.lhs.true58
  %.b121122 = load i1, ptr @tcindex_walk.__warned.31, align 1
  br i1 %.b121122, label %land.lhs.true61.do.end66_crit_edge, label %if.then63

land.lhs.true61.do.end66_crit_edge:               ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end66

if.then63:                                        ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @tcindex_walk.__warned.31, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 582, ptr noundef nonnull @.str.11) #9
  br label %do.end66

do.end66:                                         ; preds = %if.then63, %land.lhs.true61.do.end66_crit_edge, %land.lhs.true58.do.end66_crit_edge, %do.body56.do.end66_crit_edge
  %next68 = getelementptr inbounds %struct.tcindex_filter, ptr %f.0129, i32 0, i32 2
  %28 = ptrtoint ptr %next68 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %next68, align 4
  %30 = ptrtoint ptr %count69 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %count69, align 4
  %32 = ptrtoint ptr %skip70 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %skip70, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %cmp71.not = icmp slt i32 %31, %33
  br i1 %cmp71.not, label %do.end66.if.end79_crit_edge, label %if.then72

do.end66.if.end79_crit_edge:                      ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79

if.then72:                                        ; preds = %do.end66
  %34 = ptrtoint ptr %fn73 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fn73, align 4
  %result = getelementptr inbounds %struct.tcindex_filter, ptr %f.0129, i32 0, i32 1
  %call74 = tail call i32 %35(ptr noundef %tp, ptr noundef %result, ptr noundef %walker) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %cmp75 = icmp slt i32 %call74, 0
  br i1 %cmp75, label %if.then72.cleanup.sink.split_crit_edge, label %if.then72.if.end79_crit_edge

if.then72.if.end79_crit_edge:                     ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79

if.then72.cleanup.sink.split_crit_edge:           ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end79:                                         ; preds = %if.then72.if.end79_crit_edge, %do.end66.if.end79_crit_edge
  %36 = ptrtoint ptr %count69 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %count69, align 4
  %inc81 = add i32 %37, 1
  store i32 %inc81, ptr %count69, align 4
  %tobool54.not = icmp eq ptr %29, null
  br i1 %tobool54.not, label %if.end79.for.inc84_crit_edge, label %if.end79.do.body56_crit_edge

if.end79.do.body56_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body56

if.end79.for.inc84_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc84

for.inc84:                                        ; preds = %if.end79.for.inc84_crit_edge, %do.end49.for.inc84_crit_edge
  %inc85 = add nuw i32 %i.1131, 1
  %38 = ptrtoint ptr %hash36 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %hash36, align 4
  %cmp37 = icmp ult i32 %inc85, %39
  br i1 %cmp37, label %for.inc84.do.body39_crit_edge, label %for.inc84.cleanup_crit_edge

for.inc84.cleanup_crit_edge:                      ; preds = %for.inc84
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc84.do.body39_crit_edge:                    ; preds = %for.inc84
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body39

cleanup.sink.split:                               ; preds = %if.then72.cleanup.sink.split_crit_edge, %if.then22.cleanup.sink.split_crit_edge
  %40 = ptrtoint ptr %walker to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %walker, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.inc84.cleanup_crit_edge, %for.cond35.preheader.cleanup_crit_edge, %if.end31.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcindex_bind_class(ptr noundef %fh, i32 noundef %classid, i32 noundef %cl, ptr noundef %q, i32 noundef %base) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fh, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %land.lhs.true

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

land.lhs.true:                                    ; preds = %entry
  %res = getelementptr inbounds %struct.tcindex_filter_result, ptr %fh, i32 0, i32 1
  %classid1 = getelementptr inbounds %struct.tcindex_filter_result, ptr %fh, i32 0, i32 1, i32 0, i32 0, i32 1
  %0 = ptrtoint ptr %classid1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %classid1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %classid)
  %cmp = icmp eq i32 %1, %classid
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
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
  %call.i = tail call i32 %7(ptr noundef %q, i32 noundef %base, i32 noundef %9) #9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %res, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !121
  tail call void @llvm.prefetch.p0(ptr %res, i32 1, i32 3, i32 1) #9
  %10 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %call.i, ptr %res) #9, !srcloc !122
  %asmresult.i.i.i = extractvalue { i32, i32 } %10, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !123
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %tobool.not.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i, label %if.then3.if.end6_crit_edge, label %if.then3.if.end6.sink.split_crit_edge

if.then3.if.end6.sink.split_crit_edge:            ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.sink.split

if.then3.if.end6_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.else:                                          ; preds = %if.then
  %call.i.i.i11 = tail call zeroext i1 @__kasan_check_write(ptr noundef %res, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !121
  tail call void @llvm.prefetch.p0(ptr %res, i32 1, i32 3, i32 1) #9
  %11 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %res) #9, !srcloc !122
  %asmresult.i.i.i12 = extractvalue { i32, i32 } %11, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !123
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i12)
  %cmp.not.i = icmp eq i32 %asmresult.i.i.i12, 0
  br i1 %cmp.not.i, label %if.else.if.end6_crit_edge, label %if.then.i16

if.else.if.end6_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then.i16:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
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
  tail call void %17(ptr noundef %q, i32 noundef %asmresult.i.i.i12.sink) #9
  br label %if.end6

if.end6:                                          ; preds = %if.end6.sink.split, %if.else.if.end6_crit_edge, %if.then3.if.end6_crit_edge, %land.lhs.true.if.end6_crit_edge, %entry.if.end6_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcindex_dump(ptr nocapture noundef readnone %net, ptr noundef %tp, ptr noundef %fh, ptr noundef %skb, ptr noundef %t, i1 noundef zeroext %rtnl_held) #2 align 64 {
entry:
  %tmp.i203 = alloca i32, align 4
  %tmp.i200 = alloca i32, align 4
  %tmp.i198 = alloca i32, align 4
  %tmp.i196 = alloca i16, align 2
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #9
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b189 = load i1, ptr @tcindex_dump.__warned, align 1
  br i1 %.b189, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @tcindex_dump.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 640, ptr noundef nonnull @.str.11) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %root = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 1
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcindex_dump.__UNIQUE_ID_ddebug395, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcindex_dump, %if.then11)) #9
          to label %do.body15 [label %if.then11], !srcloc !116

if.then11:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcindex_dump.__UNIQUE_ID_ddebug395, ptr noundef nonnull @.str.33, ptr noundef %tp, ptr noundef %fh, ptr noundef %skb, ptr noundef %t, ptr noundef %1, ptr noundef %fh) #9
  br label %do.body15

do.body15:                                        ; preds = %if.then11, %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcindex_dump.__UNIQUE_ID_ddebug396, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcindex_dump, %if.then27)) #9
          to label %do.end30 [label %if.then27], !srcloc !116

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %h = getelementptr inbounds %struct.tcindex_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %h, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcindex_dump.__UNIQUE_ID_ddebug396, ptr noundef nonnull @.str.34, ptr noundef %3, ptr noundef %5) #9
  br label %do.end30

do.end30:                                         ; preds = %if.then27, %do.body15
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %6 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tail.i.i, align 8
  %call1.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 0, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %cmp214 = icmp eq ptr %7, null
  %cmp = select i1 %cmp.i, i1 true, i1 %cmp214
  br i1 %cmp, label %do.end30.cleanup_crit_edge, label %if.end33

do.end30.cleanup_crit_edge:                       ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end33:                                         ; preds = %do.end30
  %tobool34.not = icmp eq ptr %fh, null
  br i1 %tobool34.not, label %if.then35, label %if.else

if.then35:                                        ; preds = %if.end33
  %tcm_handle = getelementptr inbounds %struct.tcmsg, ptr %t, i32 0, i32 4
  %8 = ptrtoint ptr %tcm_handle to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %tcm_handle, align 4
  %hash = getelementptr inbounds %struct.tcindex_data, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hash, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #9
  %11 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool37.not = icmp eq i32 %call.i, 0
  br i1 %tobool37.not, label %lor.lhs.false, label %if.then35.if.then.i.i_crit_edge

if.then35.if.then.i.i_crit_edge:                  ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

lor.lhs.false:                                    ; preds = %if.then35
  %mask = getelementptr inbounds %struct.tcindex_data, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %mask to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %mask, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i196) #9
  %14 = ptrtoint ptr %tmp.i196 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %tmp.i196, align 2
  %call.i197 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 2, ptr noundef nonnull %tmp.i196) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i196) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i197)
  %tobool39.not = icmp eq i32 %call.i197, 0
  br i1 %tobool39.not, label %lor.lhs.false40, label %lor.lhs.false.if.then.i.i_crit_edge

lor.lhs.false.if.then.i.i_crit_edge:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

lor.lhs.false40:                                  ; preds = %lor.lhs.false
  %shift = getelementptr inbounds %struct.tcindex_data, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %shift, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i198) #9
  %17 = ptrtoint ptr %tmp.i198 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %tmp.i198, align 4
  %call.i199 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i198) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i198) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i199)
  %tobool42.not = icmp eq i32 %call.i199, 0
  br i1 %tobool42.not, label %lor.lhs.false43, label %lor.lhs.false40.if.then.i.i_crit_edge

lor.lhs.false40.if.then.i.i_crit_edge:            ; preds = %lor.lhs.false40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

lor.lhs.false43:                                  ; preds = %lor.lhs.false40
  %fall_through = getelementptr inbounds %struct.tcindex_data, ptr %1, i32 0, i32 7
  %18 = ptrtoint ptr %fall_through to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fall_through, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i200) #9
  %20 = ptrtoint ptr %tmp.i200 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %tmp.i200, align 4
  %call.i201 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i200) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i200) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i201)
  %tobool45.not = icmp eq i32 %call.i201, 0
  br i1 %tobool45.not, label %if.end47, label %lor.lhs.false43.if.then.i.i_crit_edge

lor.lhs.false43.if.then.i.i_crit_edge:            ; preds = %lor.lhs.false43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

if.end47:                                         ; preds = %lor.lhs.false43
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %22 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %23 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv.i, ptr %7, align 2
  br label %if.end135

if.else:                                          ; preds = %if.end33
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %tobool50.not = icmp eq ptr %25, null
  br i1 %tobool50.not, label %if.else54, label %if.then51

if.then51:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %sub.ptr.lhs.cast = ptrtoint ptr %fh to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %25 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 96
  %tcm_handle53 = getelementptr inbounds %struct.tcmsg, ptr %t, i32 0, i32 4
  %26 = ptrtoint ptr %tcm_handle53 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %sub.ptr.div, ptr %tcm_handle53, align 4
  br label %do.body99

if.else54:                                        ; preds = %if.else
  %tcm_handle55 = getelementptr inbounds %struct.tcmsg, ptr %t, i32 0, i32 4
  %27 = ptrtoint ptr %tcm_handle55 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %tcm_handle55, align 4
  %hash58 = getelementptr inbounds %struct.tcindex_data, ptr %1, i32 0, i32 5
  %h60 = getelementptr inbounds %struct.tcindex_data, ptr %1, i32 0, i32 1
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc96.land.rhs_crit_edge, %if.else54
  %i.0220 = phi i32 [ 0, %if.else54 ], [ %inc, %for.inc96.land.rhs_crit_edge ]
  %28 = ptrtoint ptr %hash58 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %hash58, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0220, i32 %29)
  %cmp59 = icmp ult i32 %i.0220, %29
  br i1 %cmp59, label %for.body, label %land.rhs.do.body99_crit_edge

land.rhs.do.body99_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body99

for.body:                                         ; preds = %land.rhs
  %30 = ptrtoint ptr %h60 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %h60, align 4
  %arrayidx = getelementptr ptr, ptr %31, i32 %i.0220
  %call62 = tail call zeroext i1 @lockdep_rtnl_is_held() #9
  br i1 %call62, label %for.body.do.end71_crit_edge, label %land.lhs.true63

for.body.do.end71_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end71

land.lhs.true63:                                  ; preds = %for.body
  %call64 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %land.lhs.true63.do.end71_crit_edge, label %land.lhs.true66

land.lhs.true63.do.end71_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end71

land.lhs.true66:                                  ; preds = %land.lhs.true63
  %.b185188 = load i1, ptr @tcindex_dump.__warned.35, align 1
  br i1 %.b185188, label %land.lhs.true66.do.end71_crit_edge, label %if.then68

land.lhs.true66.do.end71_crit_edge:               ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end71

if.then68:                                        ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @tcindex_dump.__warned.35, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 671, ptr noundef nonnull @.str.11) #9
  br label %do.end71

do.end71:                                         ; preds = %if.then68, %land.lhs.true66.do.end71_crit_edge, %land.lhs.true63.do.end71_crit_edge, %for.body.do.end71_crit_edge
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %32)
  %f.0215 = load ptr, ptr %arrayidx, align 4
  %33 = ptrtoint ptr %tcm_handle55 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tcm_handle55, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool75.not216 = icmp ne i32 %34, 0
  %tobool77.not217 = icmp eq ptr %f.0215, null
  %or.cond218 = select i1 %tobool75.not216, i1 true, i1 %tobool77.not217
  br i1 %or.cond218, label %do.end71.for.inc96_crit_edge, label %do.end71.for.body79_crit_edge

do.end71.for.body79_crit_edge:                    ; preds = %do.end71
  br label %for.body79

do.end71.for.inc96_crit_edge:                     ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc96

for.body79:                                       ; preds = %do.end94.for.body79_crit_edge, %do.end71.for.body79_crit_edge
  %f.0219 = phi ptr [ %f.0, %do.end94.for.body79_crit_edge ], [ %f.0215, %do.end71.for.body79_crit_edge ]
  %result = getelementptr inbounds %struct.tcindex_filter, ptr %f.0219, i32 0, i32 1
  %cmp80 = icmp eq ptr %result, %fh
  br i1 %cmp80, label %if.then81, label %for.body79.for.inc_crit_edge

for.body79.for.inc_crit_edge:                     ; preds = %for.body79
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then81:                                        ; preds = %for.body79
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %f.0219 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %f.0219, align 4
  %conv = zext i16 %36 to i32
  %37 = ptrtoint ptr %tcm_handle55 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %conv, ptr %tcm_handle55, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then81, %for.body79.for.inc_crit_edge
  %next = getelementptr inbounds %struct.tcindex_filter, ptr %f.0219, i32 0, i32 2
  %call85 = tail call zeroext i1 @lockdep_rtnl_is_held() #9
  br i1 %call85, label %for.inc.do.end94_crit_edge, label %land.lhs.true86

for.inc.do.end94_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end94

land.lhs.true86:                                  ; preds = %for.inc
  %call87 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %land.lhs.true86.do.end94_crit_edge, label %land.lhs.true89

land.lhs.true86.do.end94_crit_edge:               ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end94

land.lhs.true89:                                  ; preds = %land.lhs.true86
  %.b186187 = load i1, ptr @tcindex_dump.__warned.36, align 1
  br i1 %.b186187, label %land.lhs.true89.do.end94_crit_edge, label %if.then91

land.lhs.true89.do.end94_crit_edge:               ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end94

if.then91:                                        ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @tcindex_dump.__warned.36, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 673, ptr noundef nonnull @.str.11) #9
  br label %do.end94

do.end94:                                         ; preds = %if.then91, %land.lhs.true89.do.end94_crit_edge, %land.lhs.true86.do.end94_crit_edge, %for.inc.do.end94_crit_edge
  %38 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %38)
  %f.0 = load ptr, ptr %next, align 4
  %39 = ptrtoint ptr %tcm_handle55 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tcm_handle55, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool75.not = icmp ne i32 %40, 0
  %tobool77.not = icmp eq ptr %f.0, null
  %or.cond = select i1 %tobool75.not, i1 true, i1 %tobool77.not
  br i1 %or.cond, label %do.end94.for.inc96_crit_edge, label %do.end94.for.body79_crit_edge

do.end94.for.body79_crit_edge:                    ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body79

do.end94.for.inc96_crit_edge:                     ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc96

for.inc96:                                        ; preds = %do.end94.for.inc96_crit_edge, %do.end71.for.inc96_crit_edge
  %.pr = phi i32 [ %34, %do.end71.for.inc96_crit_edge ], [ %40, %do.end94.for.inc96_crit_edge ]
  %inc = add i32 %i.0220, 1
  %tobool57.not = icmp eq i32 %.pr, 0
  br i1 %tobool57.not, label %for.inc96.land.rhs_crit_edge, label %for.inc96.do.body99_crit_edge

for.inc96.do.body99_crit_edge:                    ; preds = %for.inc96
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body99

for.inc96.land.rhs_crit_edge:                     ; preds = %for.inc96
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

do.body99:                                        ; preds = %for.inc96.do.body99_crit_edge, %land.rhs.do.body99_crit_edge, %if.then51
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcindex_dump.__UNIQUE_ID_ddebug397, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcindex_dump, %if.then111)) #9
          to label %do.end115 [label %if.then111], !srcloc !116

if.then111:                                       ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #11
  %tcm_handle112 = getelementptr inbounds %struct.tcmsg, ptr %t, i32 0, i32 4
  %41 = ptrtoint ptr %tcm_handle112 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tcm_handle112, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcindex_dump.__UNIQUE_ID_ddebug397, ptr noundef nonnull @.str.37, i32 noundef %42) #9
  br label %do.end115

do.end115:                                        ; preds = %if.then111, %do.body99
  %res = getelementptr inbounds %struct.tcindex_filter_result, ptr %fh, i32 0, i32 1
  %43 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %res, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool116.not = icmp eq i32 %44, 0
  br i1 %tobool116.not, label %do.end115.if.end122_crit_edge, label %land.lhs.true117

do.end115.if.end122_crit_edge:                    ; preds = %do.end115
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end122

land.lhs.true117:                                 ; preds = %do.end115
  %classid = getelementptr inbounds %struct.tcindex_filter_result, ptr %fh, i32 0, i32 1, i32 0, i32 0, i32 1
  %45 = ptrtoint ptr %classid to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %classid, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i203) #9
  %47 = ptrtoint ptr %tmp.i203 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %tmp.i203, align 4
  %call.i204 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %tmp.i203) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i203) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i204)
  %tobool120.not = icmp eq i32 %call.i204, 0
  br i1 %tobool120.not, label %land.lhs.true117.if.end122_crit_edge, label %land.lhs.true117.if.then.i.i_crit_edge

land.lhs.true117.if.then.i.i_crit_edge:           ; preds = %land.lhs.true117
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

land.lhs.true117.if.end122_crit_edge:             ; preds = %land.lhs.true117
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end122

if.end122:                                        ; preds = %land.lhs.true117.if.end122_crit_edge, %do.end115.if.end122_crit_edge
  %call123 = call i32 @tcf_exts_dump(ptr noundef %skb, ptr noundef nonnull %fh) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %cmp124 = icmp slt i32 %call123, 0
  br i1 %cmp124, label %if.end122.if.then.i.i_crit_edge, label %if.end127

if.end122.if.then.i.i_crit_edge:                  ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

if.end127:                                        ; preds = %if.end122
  %48 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i206 = ptrtoint ptr %49 to i32
  %sub.ptr.rhs.cast.i207 = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i208 = sub i32 %sub.ptr.lhs.cast.i206, %sub.ptr.rhs.cast.i207
  %conv.i209 = trunc i32 %sub.ptr.sub.i208 to i16
  %50 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %conv.i209, ptr %7, align 2
  %call130 = call i32 @tcf_exts_dump_stats(ptr noundef %skb, ptr noundef nonnull %fh) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130)
  %cmp131 = icmp slt i32 %call130, 0
  br i1 %cmp131, label %if.end127.if.then.i.i_crit_edge, label %if.end127.if.end135_crit_edge

if.end127.if.end135_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end135

if.end127.if.then.i.i_crit_edge:                  ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

if.end135:                                        ; preds = %if.end127.if.end135_crit_edge, %if.end47
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %51 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %len, align 4
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end127.if.then.i.i_crit_edge, %if.end122.if.then.i.i_crit_edge, %land.lhs.true117.if.then.i.i_crit_edge, %lor.lhs.false43.if.then.i.i_crit_edge, %lor.lhs.false40.if.then.i.i_crit_edge, %lor.lhs.false.if.then.i.i_crit_edge, %if.then35.if.then.i.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %53 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp ugt ptr %54, %7
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.if.end.i.i_crit_edge, !prof !120

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 991, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %55 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %7 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %56 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end135, %do.end30.cleanup_crit_edge
  %retval.0 = phi i32 [ %52, %if.end135 ], [ -1, %if.end.i.i ], [ -1, %do.end30.cleanup_crit_edge ]
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
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @tcindex_lookup(ptr nocapture noundef readonly %p, i16 noundef zeroext %key) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %conv = zext i16 %key to i32
  %add.ptr = getelementptr %struct.tcindex_filter_result, ptr %1, i32 %conv
  %nr_actions.i.i = getelementptr inbounds %struct.tcf_exts, ptr %add.ptr, i32 0, i32 1
  %2 = ptrtoint ptr %nr_actions.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_actions.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.not.i = icmp eq i32 %3, 0
  br i1 %tobool.i.not.i, label %tcindex_filter_is_set.exit, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

tcindex_filter_is_set.exit:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %classid.i = getelementptr %struct.tcindex_filter_result, ptr %1, i32 %conv, i32 1, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %classid.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %classid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not = icmp eq i32 %5, 0
  %spec.select = select i1 %tobool.i.not, ptr null, ptr %add.ptr
  br label %return

if.else:                                          ; preds = %entry
  %h = getelementptr inbounds %struct.tcindex_data, ptr %p, i32 0, i32 1
  %6 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %h, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %if.else.return_crit_edge, label %if.then4

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then4:                                         ; preds = %if.else
  %conv7 = zext i16 %key to i32
  %hash = getelementptr inbounds %struct.tcindex_data, ptr %p, i32 0, i32 5
  %8 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hash, align 4
  %rem = urem i32 %conv7, %9
  %arrayidx = getelementptr ptr, ptr %7, i32 %rem
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %arrayidx, align 4
  %call9 = tail call zeroext i1 @lockdep_rtnl_is_held() #9
  br i1 %call9, label %if.then4.do.end19_crit_edge, label %lor.lhs.false

if.then4.do.end19_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end19

lor.lhs.false:                                    ; preds = %if.then4
  %call11 = tail call i32 @rcu_read_lock_bh_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.lhs.true, label %lor.lhs.false.do.end19_crit_edge

lor.lhs.false.do.end19_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end19

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call13 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %land.lhs.true.do.end19_crit_edge, label %land.lhs.true15

land.lhs.true.do.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end19

land.lhs.true15:                                  ; preds = %land.lhs.true
  %.b65 = load i1, ptr @tcindex_lookup.__warned, align 1
  br i1 %.b65, label %land.lhs.true15.do.end19_crit_edge, label %if.then17

land.lhs.true15.do.end19_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end19

if.then17:                                        ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @tcindex_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 91, ptr noundef nonnull @.str.1) #9
  br label %do.end19

do.end19:                                         ; preds = %if.then17, %land.lhs.true15.do.end19_crit_edge, %land.lhs.true.do.end19_crit_edge, %lor.lhs.false.do.end19_crit_edge, %if.then4.do.end19_crit_edge
  %tobool21.not69 = icmp eq ptr %11, null
  br i1 %tobool21.not69, label %do.end19.return_crit_edge, label %do.end19.for.body_crit_edge

do.end19.for.body_crit_edge:                      ; preds = %do.end19
  br label %for.body

do.end19.return_crit_edge:                        ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

for.body:                                         ; preds = %do.end46.for.body_crit_edge, %do.end19.for.body_crit_edge
  %f5.070 = phi ptr [ %15, %do.end46.for.body_crit_edge ], [ %11, %do.end19.for.body_crit_edge ]
  %12 = ptrtoint ptr %f5.070 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %f5.070, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %key)
  %cmp = icmp eq i16 %13, %key
  br i1 %cmp, label %cleanup, label %for.inc

for.inc:                                          ; preds = %for.body
  %next = getelementptr inbounds %struct.tcindex_filter, ptr %f5.070, i32 0, i32 2
  %14 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %next, align 4
  %call33 = tail call zeroext i1 @lockdep_rtnl_is_held() #9
  br i1 %call33, label %for.inc.do.end46_crit_edge, label %lor.lhs.false35

for.inc.do.end46_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end46

lor.lhs.false35:                                  ; preds = %for.inc
  %call36 = tail call i32 @rcu_read_lock_bh_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %land.lhs.true38, label %lor.lhs.false35.do.end46_crit_edge

lor.lhs.false35.do.end46_crit_edge:               ; preds = %lor.lhs.false35
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end46

land.lhs.true38:                                  ; preds = %lor.lhs.false35
  %call39 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %land.lhs.true38.do.end46_crit_edge, label %land.lhs.true41

land.lhs.true38.do.end46_crit_edge:               ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end46

land.lhs.true41:                                  ; preds = %land.lhs.true38
  %.b6364 = load i1, ptr @tcindex_lookup.__warned.7, align 1
  br i1 %.b6364, label %land.lhs.true41.do.end46_crit_edge, label %if.then43

land.lhs.true41.do.end46_crit_edge:               ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end46

if.then43:                                        ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @tcindex_lookup.__warned.7, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 93, ptr noundef nonnull @.str.1) #9
  br label %do.end46

do.end46:                                         ; preds = %if.then43, %land.lhs.true41.do.end46_crit_edge, %land.lhs.true38.do.end46_crit_edge, %lor.lhs.false35.do.end46_crit_edge, %for.inc.do.end46_crit_edge
  %tobool21.not = icmp eq ptr %15, null
  br i1 %tobool21.not, label %do.end46.return_crit_edge, label %do.end46.for.body_crit_edge

do.end46.for.body_crit_edge:                      ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

do.end46.return_crit_edge:                        ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

cleanup:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %result = getelementptr inbounds %struct.tcindex_filter, ptr %f5.070, i32 0, i32 1
  br label %return

return:                                           ; preds = %cleanup, %do.end46.return_crit_edge, %do.end19.return_crit_edge, %if.else.return_crit_edge, %tcindex_filter_is_set.exit, %if.then.return_crit_edge
  %retval.1 = phi ptr [ %result, %cleanup ], [ null, %if.else.return_crit_edge ], [ %add.ptr, %if.then.return_crit_edge ], [ %spec.select, %tcindex_filter_is_set.exit ], [ null, %do.end19.return_crit_edge ], [ null, %do.end46.return_crit_edge ]
  ret ptr %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_action_exec(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @tcf_exts_get_net(ptr noundef %exts) unnamed_addr #6 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  %net = getelementptr inbounds %struct.tcf_exts, ptr %exts, i32 0, i32 3
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  %count.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 14, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #9
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %count.i, i32 noundef 4) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %4, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #9
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #9
  %6 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #9
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %8 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 %7, i32 %add.i.i.i.i, ptr elementtype(i32) %count.i) #9, !srcloc !127
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %8, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %8, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %7
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !117

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %9 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %10, 1
  %11 = or i32 %add5.i.i.i.i, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %.not.i.i.i.i = icmp sgt i32 %11, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.maybe_get_net.exit_crit_edge, label %if.then10.i.i.i.i, !prof !117

if.end4.i.i.i.i.maybe_get_net.exit_crit_edge:     ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %maybe_get_net.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef 0) #9
  br label %maybe_get_net.exit

maybe_get_net.exit:                               ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.maybe_get_net.exit_crit_edge
  %12 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool12.i.i.i.not.i = icmp eq i32 %13, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #9
  %spec.select.i = select i1 %tobool12.i.i.i.not.i, ptr null, ptr %1
  %14 = ptrtoint ptr %net to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %spec.select.i, ptr %net, align 4
  %tobool.not = icmp eq ptr %spec.select.i, null
  br i1 %tobool.not, label %maybe_get_net.exit.if.end_crit_edge, label %if.then

maybe_get_net.exit.if.end_crit_edge:              ; preds = %maybe_get_net.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %maybe_get_net.exit
  call void @__sanitizer_cov_trace_pc() #11
  %ns_tracker = getelementptr inbounds %struct.tcf_exts, ptr %exts, i32 0, i32 4
  %refcnt_tracker.i = getelementptr inbounds %struct.net, ptr %spec.select.i, i32 0, i32 15
  %call.i = call i32 @ref_tracker_alloc(ptr noundef %refcnt_tracker.i, ptr noundef %ns_tracker, i32 noundef 3264) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %maybe_get_net.exit.if.end_crit_edge
  %15 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %net, align 4
  %cmp = icmp ne ptr %16, null
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tcf_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcindex_destroy_rexts_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -40
  tail call void @rtnl_lock() #9
  tail call fastcc void @__tcindex_destroy_rexts(ptr noundef %add.ptr)
  tail call void @rtnl_unlock() #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__tcindex_destroy_rexts(ptr noundef %r) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @tcf_exts_destroy(ptr noundef %r) #9
  %net.i = getelementptr inbounds %struct.tcf_exts, ptr %r, i32 0, i32 3
  %0 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.tcf_exts_put_net.exit_crit_edge, label %if.then.i

entry.tcf_exts_put_net.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %tcf_exts_put_net.exit

if.then.i:                                        ; preds = %entry
  %ns_tracker.i = getelementptr inbounds %struct.tcf_exts, ptr %r, i32 0, i32 4
  %refcnt_tracker.i.i.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 15
  %call.i.i.i = tail call i32 @ref_tracker_free(ptr noundef %refcnt_tracker.i.i.i, ptr noundef %ns_tracker.i) #9
  %count.i.i.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 14, i32 3
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !128
  tail call void @llvm.prefetch.p0(ptr %count.i.i.i, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i.i, ptr %count.i.i.i, i32 1, ptr elementtype(i32) %count.i.i.i) #9, !srcloc !129
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.tcf_exts_put_net.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !117

if.end5.i.i.i.i.i.i.tcf_exts_put_net.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tcf_exts_put_net.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %count.i.i.i, i32 noundef 3) #9
  br label %tcf_exts_put_net.exit

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !130
  tail call void @__put_net(ptr noundef nonnull %1) #9
  br label %tcf_exts_put_net.exit

tcf_exts_put_net.exit:                            ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.tcf_exts_put_net.exit_crit_edge, %entry.tcf_exts_put_net.exit_crit_edge
  %p = getelementptr inbounds %struct.tcindex_filter_result, ptr %r, i32 0, i32 2
  %3 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %p, align 4
  tail call fastcc void @tcindex_data_put(ptr noundef %4)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcindex_destroy_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -36
  tail call fastcc void @tcindex_data_put(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tcindex_data_put(ptr noundef %p) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %refcnt = getelementptr inbounds %struct.tcindex_data, ptr %p, i32 0, i32 8
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !128
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #9, !srcloc !129
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !117

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 3) #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !130
  %1 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %p, align 4
  tail call void @kfree(ptr noundef %2) #9
  %h = getelementptr inbounds %struct.tcindex_data, ptr %p, i32 0, i32 1
  %3 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %h, align 4
  tail call void @kfree(ptr noundef %4) #9
  tail call void @kfree(ptr noundef %p) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ref_tracker_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_net(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_exts_validate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tcindex_alloc_perfect_hash(ptr noundef %net, ptr noundef %cp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hash = getelementptr inbounds %struct.tcindex_data, ptr %cp, i32 0, i32 5
  %0 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hash, align 4
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 96) #9
  %3 = extractvalue { i32, i1 } %2, 1
  br i1 %3, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !120

kcalloc.exit.thread:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %cp to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %cp, align 4
  br label %cleanup

if.end7.i.i:                                      ; preds = %entry
  %5 = extractvalue { i32, i1 } %2, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 11712) #13
  %6 = ptrtoint ptr %cp to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call8.i.i, ptr %cp, align 4
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.cleanup_crit_edge, label %for.cond.preheader

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end7.i.i
  %7 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hash, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp27.not = icmp eq i32 %8, 0
  br i1 %cmp27.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %if.end7.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.028 = phi i32 [ %inc, %if.end7.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %9 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cp, align 4
  %arrayidx = getelementptr %struct.tcindex_filter_result, ptr %10, i32 %i.028
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %arrayidx, align 4
  %nr_actions.i = getelementptr inbounds %struct.tcf_exts, ptr %arrayidx, i32 0, i32 1
  %12 = ptrtoint ptr %nr_actions.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %nr_actions.i, align 4
  %net1.i = getelementptr inbounds %struct.tcf_exts, ptr %arrayidx, i32 0, i32 3
  %13 = ptrtoint ptr %net1.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %net, ptr %net1.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 128) #12
  %actions.i = getelementptr inbounds %struct.tcf_exts, ptr %arrayidx, i32 0, i32 2
  %15 = ptrtoint ptr %actions.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i.i.i.i, ptr %actions.i, align 4
  %tobool.not.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i, label %errout, label %if.end7

if.end7:                                          ; preds = %for.body
  %action3.i = getelementptr inbounds %struct.tcf_exts, ptr %arrayidx, i32 0, i32 5
  %16 = ptrtoint ptr %action3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 7, ptr %action3.i, align 4
  %police4.i = getelementptr inbounds %struct.tcf_exts, ptr %arrayidx, i32 0, i32 6
  %17 = ptrtoint ptr %police4.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 6, ptr %police4.i, align 4
  %18 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cp, align 4
  %p = getelementptr %struct.tcindex_filter_result, ptr %19, i32 %i.028, i32 2
  %20 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %cp, ptr %p, align 4
  %inc = add nuw i32 %i.028, 1
  %21 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %hash, align 4
  %cmp = icmp ult i32 %inc, %22
  br i1 %cmp, label %if.end7.for.body_crit_edge, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7.for.body_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

errout:                                           ; preds = %for.body
  %23 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hash, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp6.not.i = icmp eq i32 %24, 0
  br i1 %cmp6.not.i, label %errout.tcindex_free_perfect_hash.exit_crit_edge, label %errout.for.body.i_crit_edge

errout.for.body.i_crit_edge:                      ; preds = %errout
  br label %for.body.i

errout.tcindex_free_perfect_hash.exit_crit_edge:  ; preds = %errout
  call void @__sanitizer_cov_trace_pc() #11
  br label %tcindex_free_perfect_hash.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %errout.for.body.i_crit_edge
  %i.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %errout.for.body.i_crit_edge ]
  %25 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cp, align 4
  %arrayidx.i = getelementptr %struct.tcindex_filter_result, ptr %26, i32 %i.07.i
  tail call void @tcf_exts_destroy(ptr noundef %arrayidx.i) #9
  %inc.i = add nuw i32 %i.07.i, 1
  %27 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %hash, align 4
  %cmp.i = icmp ult i32 %inc.i, %28
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.tcindex_free_perfect_hash.exit_crit_edge

for.body.i.tcindex_free_perfect_hash.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tcindex_free_perfect_hash.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

tcindex_free_perfect_hash.exit:                   ; preds = %for.body.i.tcindex_free_perfect_hash.exit_crit_edge, %errout.tcindex_free_perfect_hash.exit_crit_edge
  %29 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cp, align 4
  tail call void @kfree(ptr noundef %30) #9
  br label %cleanup

cleanup:                                          ; preds = %tcindex_free_perfect_hash.exit, %if.end7.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end7.i.i.cleanup_crit_edge, %kcalloc.exit.thread
  %retval.0 = phi i32 [ -12, %tcindex_free_perfect_hash.exit ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %kcalloc.exit.thread ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tcindex_filter_result_init(ptr nocapture noundef writeonly %r, ptr noundef %p, ptr noundef %net) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds i8, ptr %r, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 88)
  %p1 = getelementptr inbounds %struct.tcindex_filter_result, ptr %r, i32 0, i32 2
  %2 = ptrtoint ptr %p1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %p, ptr %p1, align 4
  %3 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %r, align 4
  %nr_actions.i = getelementptr inbounds %struct.tcf_exts, ptr %r, i32 0, i32 1
  %4 = ptrtoint ptr %nr_actions.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %nr_actions.i, align 4
  %net1.i = getelementptr inbounds %struct.tcf_exts, ptr %r, i32 0, i32 3
  %5 = ptrtoint ptr %net1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %net, ptr %net1.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 128) #12
  %actions.i = getelementptr inbounds %struct.tcf_exts, ptr %r, i32 0, i32 2
  %7 = ptrtoint ptr %actions.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i.i.i, ptr %actions.i, align 4
  %tobool.not.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i, label %entry.tcf_exts_init.exit_crit_edge, label %if.end.i

entry.tcf_exts_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %tcf_exts_init.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %action3.i = getelementptr inbounds %struct.tcf_exts, ptr %r, i32 0, i32 5
  %8 = ptrtoint ptr %action3.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 7, ptr %action3.i, align 4
  %police4.i = getelementptr inbounds %struct.tcf_exts, ptr %r, i32 0, i32 6
  %9 = ptrtoint ptr %police4.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 6, ptr %police4.i, align 4
  br label %tcf_exts_init.exit

tcf_exts_init.exit:                               ; preds = %if.end.i, %entry.tcf_exts_init.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -12, %entry.tcf_exts_init.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tcf_bind_filter(ptr nocapture noundef readonly %tp, ptr noundef %r, i32 noundef %base) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_pc() #11
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
  %call1.i.i = tail call i32 @rtnl_is_locked() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i, label %if.else.i.sch_tree_lock.exit_crit_edge

if.else.i.sch_tree_lock.exit_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sch_tree_lock.exit

land.rhs.i.i:                                     ; preds = %if.else.i
  %.b41.i.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i, label %land.rhs.i.i.sch_tree_lock.exit_crit_edge, label %if.then.i.i, !prof !117

land.rhs.i.i.sch_tree_lock.exit_crit_edge:        ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sch_tree_lock.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.21, i32 noundef 596) #9
  br label %sch_tree_lock.exit

sch_tree_lock.exit:                               ; preds = %if.then.i.i, %land.rhs.i.i.sch_tree_lock.exit_crit_edge, %if.else.i.sch_tree_lock.exit_crit_edge, %if.end.sch_tree_lock.exit_crit_edge
  %.sink.i = phi ptr [ %5, %if.end.sch_tree_lock.exit_crit_edge ], [ %11, %if.else.i.sch_tree_lock.exit_crit_edge ], [ %11, %land.rhs.i.i.sch_tree_lock.exit_crit_edge ], [ %11, %if.then.i.i ]
  %lock.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %.sink.i, i32 0, i32 17, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i.i.i) #9
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
  %classid.i = getelementptr inbounds %struct.anon.120, ptr %r, i32 0, i32 1
  %18 = ptrtoint ptr %classid.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %classid.i, align 4
  %call.i = tail call i32 %17(ptr noundef nonnull %5, i32 noundef %base, i32 noundef %19) #9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %r, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !121
  tail call void @llvm.prefetch.p0(ptr %r, i32 1, i32 3, i32 1) #9
  %20 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %call.i, ptr %r) #9, !srcloc !122
  %asmresult.i.i.i = extractvalue { i32, i32 } %20, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !123
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %tobool.not.i5 = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i5, label %sch_tree_lock.exit.__tcf_bind_filter.exit_crit_edge, label %if.then.i

sch_tree_lock.exit.__tcf_bind_filter.exit_crit_edge: ; preds = %sch_tree_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %__tcf_bind_filter.exit

if.then.i:                                        ; preds = %sch_tree_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
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
  tail call void %26(ptr noundef nonnull %5, i32 noundef %asmresult.i.i.i) #9
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
  call void @__sanitizer_cov_trace_pc() #11
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
  %call1.i.i11 = tail call i32 @rtnl_is_locked() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i11)
  %tobool.not.i.i12 = icmp eq i32 %call1.i.i11, 0
  br i1 %tobool.not.i.i12, label %land.rhs.i.i15, label %if.else.i13.sch_tree_unlock.exit_crit_edge

if.else.i13.sch_tree_unlock.exit_crit_edge:       ; preds = %if.else.i13
  call void @__sanitizer_cov_trace_pc() #11
  br label %sch_tree_unlock.exit

land.rhs.i.i15:                                   ; preds = %if.else.i13
  %.b41.i.i14 = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i14, label %land.rhs.i.i15.sch_tree_unlock.exit_crit_edge, label %if.then.i.i16, !prof !117

land.rhs.i.i15.sch_tree_unlock.exit_crit_edge:    ; preds = %land.rhs.i.i15
  call void @__sanitizer_cov_trace_pc() #11
  br label %sch_tree_unlock.exit

if.then.i.i16:                                    ; preds = %land.rhs.i.i15
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.21, i32 noundef 596) #9
  br label %sch_tree_unlock.exit

sch_tree_unlock.exit:                             ; preds = %if.then.i.i16, %land.rhs.i.i15.sch_tree_unlock.exit_crit_edge, %if.else.i13.sch_tree_unlock.exit_crit_edge, %__tcf_bind_filter.exit.sch_tree_unlock.exit_crit_edge
  %.sink.i17 = phi ptr [ %5, %__tcf_bind_filter.exit.sch_tree_unlock.exit_crit_edge ], [ %32, %if.else.i13.sch_tree_unlock.exit_crit_edge ], [ %32, %land.rhs.i.i15.sch_tree_unlock.exit_crit_edge ], [ %32, %if.then.i.i16 ]
  %lock.i.i.i18 = getelementptr inbounds %struct.Qdisc, ptr %.sink.i17, i32 0, i32 17, i32 3
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i.i18) #9
  br label %cleanup

cleanup:                                          ; preds = %sch_tree_unlock.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcf_exts_change(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcindex_partial_destroy_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -36
  tail call void @rtnl_lock() #9
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %hash.i = getelementptr i8, ptr %work, i32 -16
  %2 = ptrtoint ptr %hash.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hash.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp6.not.i = icmp eq i32 %3, 0
  br i1 %cmp6.not.i, label %if.then.tcindex_free_perfect_hash.exit_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.tcindex_free_perfect_hash.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %tcindex_free_perfect_hash.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %i.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %arrayidx.i = getelementptr %struct.tcindex_filter_result, ptr %5, i32 %i.07.i
  tail call void @tcf_exts_destroy(ptr noundef %arrayidx.i) #9
  %inc.i = add nuw i32 %i.07.i, 1
  %6 = ptrtoint ptr %hash.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hash.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %7
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.tcindex_free_perfect_hash.exit_crit_edge

for.body.i.tcindex_free_perfect_hash.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tcindex_free_perfect_hash.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

tcindex_free_perfect_hash.exit:                   ; preds = %for.body.i.tcindex_free_perfect_hash.exit_crit_edge, %if.then.tcindex_free_perfect_hash.exit_crit_edge
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 4
  tail call void @kfree(ptr noundef %9) #9
  br label %if.end

if.end:                                           ; preds = %tcindex_free_perfect_hash.exit, %entry.if.end_crit_edge
  tail call void @kfree(ptr noundef %add.ptr) #9
  tail call void @rtnl_unlock() #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcindex_destroy_fexts_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -104
  tail call void @rtnl_lock() #9
  tail call fastcc void @__tcindex_destroy_fexts(ptr noundef %add.ptr)
  tail call void @rtnl_unlock() #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__tcindex_destroy_fexts(ptr noundef %f) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %result = getelementptr inbounds %struct.tcindex_filter, ptr %f, i32 0, i32 1
  tail call void @tcf_exts_destroy(ptr noundef %result) #9
  %net.i = getelementptr inbounds %struct.tcindex_filter, ptr %f, i32 0, i32 1, i32 0, i32 3
  %0 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.tcf_exts_put_net.exit_crit_edge, label %if.then.i

entry.tcf_exts_put_net.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %tcf_exts_put_net.exit

if.then.i:                                        ; preds = %entry
  %ns_tracker.i = getelementptr inbounds %struct.tcindex_filter, ptr %f, i32 0, i32 1, i32 0, i32 4
  %refcnt_tracker.i.i.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 15
  %call.i.i.i = tail call i32 @ref_tracker_free(ptr noundef %refcnt_tracker.i.i.i, ptr noundef %ns_tracker.i) #9
  %count.i.i.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 14, i32 3
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !128
  tail call void @llvm.prefetch.p0(ptr %count.i.i.i, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i.i, ptr %count.i.i.i, i32 1, ptr elementtype(i32) %count.i.i.i) #9, !srcloc !129
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.tcf_exts_put_net.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !117

if.end5.i.i.i.i.i.i.tcf_exts_put_net.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tcf_exts_put_net.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %count.i.i.i, i32 noundef 3) #9
  br label %tcf_exts_put_net.exit

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !130
  tail call void @__put_net(ptr noundef nonnull %1) #9
  br label %tcf_exts_put_net.exit

tcf_exts_put_net.exit:                            ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.tcf_exts_put_net.exit_crit_edge, %entry.tcf_exts_put_net.exit_crit_edge
  tail call void @kfree(ptr noundef %f) #9
  ret void
}

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

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !13, !15, !16, !17, !18, !20, !21, !23, !24, !26, !28, !30, !32, !33, !34, !36, !37, !39, !40, !41, !43, !45, !47, !49, !50, !51, !53, !55, !56, !57, !59, !61, !63, !65, !66, !67, !69, !71, !72, !73, !75, !77, !79, !81, !83, !84, !85, !87, !89, !91, !93, !94, !95, !97, !98, !100, !102, !104, !105}
!llvm.module.flags = !{!107, !108, !109, !110, !111, !112, !113, !114}
!llvm.ident = !{!115}

!0 = !{ptr @__initcall__kmod_cls_tcindex__398_736_init_tcindex6, !1, !"__initcall__kmod_cls_tcindex__398_736_init_tcindex6", i1 false, i1 false}
!1 = !{!"../net/sched/cls_tcindex.c", i32 736, i32 1}
!2 = !{ptr @__exitcall_exit_tcindex, !3, !"__exitcall_exit_tcindex", i1 false, i1 false}
!3 = !{!"../net/sched/cls_tcindex.c", i32 737, i32 1}
!4 = !{ptr @__UNIQUE_ID_file399, !5, !"__UNIQUE_ID_file399", i1 false, i1 false}
!5 = !{!"../net/sched/cls_tcindex.c", i32 738, i32 1}
!6 = !{ptr @__UNIQUE_ID_license400, !5, !"__UNIQUE_ID_license400", i1 false, i1 false}
!7 = !{ptr @cls_tcindex_ops, !8, !"cls_tcindex_ops", i1 false, i1 false}
!8 = !{!"../net/sched/cls_tcindex.c", i32 712, i32 29}
!9 = distinct !{null, !10, !"__warned", i1 false, i1 false}
!10 = !{!"../net/sched/cls_tcindex.c", i32 105, i32 27}
!11 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/sched/cls_tcindex.c", i32 109, i32 2}
!15 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @tcindex_classify.__UNIQUE_ID_ddebug372, !14, !"__UNIQUE_ID_ddebug372", i1 false, i1 false}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../net/sched/cls_tcindex.c", i32 120, i32 3}
!20 = !{ptr @tcindex_classify.__UNIQUE_ID_ddebug373, !19, !"__UNIQUE_ID_ddebug373", i1 false, i1 false}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/sched/cls_tcindex.c", i32 124, i32 2}
!23 = !{ptr @tcindex_classify.__UNIQUE_ID_ddebug374, !22, !"__UNIQUE_ID_ddebug374", i1 false, i1 false}
!24 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!25 = !{!"../net/sched/cls_tcindex.c", i32 91, i32 12}
!26 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!27 = !{!"../net/sched/cls_tcindex.c", i32 93, i32 27}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../include/net/pkt_cls.h", i32 75, i32 2}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../net/sched/cls_tcindex.c", i32 146, i32 2}
!32 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @tcindex_init.__UNIQUE_ID_ddebug376, !31, !"__UNIQUE_ID_ddebug376", i1 false, i1 false}
!34 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!35 = !{!"../net/sched/cls_tcindex.c", i32 597, i32 27}
!36 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../net/sched/cls_tcindex.c", i32 600, i32 2}
!39 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @tcindex_destroy.__UNIQUE_ID_ddebug394, !38, !"__UNIQUE_ID_ddebug394", i1 false, i1 false}
!41 = distinct !{null, !42, !"__warned", i1 false, i1 false}
!42 = !{!"../net/sched/cls_tcindex.c", i32 627, i32 12}
!43 = distinct !{null, !44, !"__warned", i1 false, i1 false}
!44 = !{!"../net/sched/cls_tcindex.c", i32 628, i32 11}
!45 = distinct !{null, !46, !"__warned", i1 false, i1 false}
!46 = !{!"../net/sched/cls_tcindex.c", i32 132, i32 27}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../net/sched/cls_tcindex.c", i32 135, i32 2}
!49 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @tcindex_get.__UNIQUE_ID_ddebug375, !48, !"__UNIQUE_ID_ddebug375", i1 false, i1 false}
!51 = distinct !{null, !52, !"__warned", i1 false, i1 false}
!52 = !{!"../net/sched/cls_tcindex.c", i32 537, i32 27}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../net/sched/cls_tcindex.c", i32 541, i32 2}
!55 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @tcindex_change.__UNIQUE_ID_ddebug392, !54, !"__UNIQUE_ID_ddebug392", i1 false, i1 false}
!57 = !{ptr @tcindex_policy, !58, !"tcindex_policy", i1 false, i1 false}
!58 = !{!"../net/sched/cls_tcindex.c", i32 263, i32 32}
!59 = distinct !{null, !60, !"__warned", i1 false, i1 false}
!60 = !{!"../net/sched/cls_tcindex.c", i32 503, i32 14}
!61 = distinct !{null, !62, !"__warned", i1 false, i1 false}
!62 = !{!"../net/sched/cls_tcindex.c", i32 505, i32 31}
!63 = distinct !{null, !64, !"__already_done", i1 false, i1 false}
!64 = !{!"../include/net/sch_generic.h", i32 596, i32 2}
!65 = !{ptr @.str.21, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.22, !64, !"<string literal>", i1 false, i1 false}
!67 = distinct !{null, !68, !"__warned", i1 false, i1 false}
!68 = !{!"../net/sched/cls_tcindex.c", i32 200, i32 27}
!69 = !{ptr @.str.23, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../net/sched/cls_tcindex.c", i32 205, i32 2}
!71 = !{ptr @.str.24, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @tcindex_delete.__UNIQUE_ID_ddebug380, !70, !"__UNIQUE_ID_ddebug380", i1 false, i1 false}
!73 = distinct !{null, !74, !"__warned", i1 false, i1 false}
!74 = !{!"../net/sched/cls_tcindex.c", i32 214, i32 13}
!75 = distinct !{null, !76, !"__warned", i1 false, i1 false}
!76 = !{!"../net/sched/cls_tcindex.c", i32 215, i32 30}
!77 = distinct !{null, !78, !"__warned", i1 false, i1 false}
!78 = !{!"../net/sched/cls_tcindex.c", i32 223, i32 3}
!79 = distinct !{null, !80, !"__warned", i1 false, i1 false}
!80 = !{!"../net/sched/cls_tcindex.c", i32 560, i32 27}
!81 = !{ptr @.str.28, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../net/sched/cls_tcindex.c", i32 564, i32 2}
!83 = !{ptr @.str.29, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @tcindex_walk.__UNIQUE_ID_ddebug393, !82, !"__UNIQUE_ID_ddebug393", i1 false, i1 false}
!85 = distinct !{null, !86, !"__warned", i1 false, i1 false}
!86 = !{!"../net/sched/cls_tcindex.c", i32 581, i32 12}
!87 = distinct !{null, !88, !"__warned", i1 false, i1 false}
!88 = !{!"../net/sched/cls_tcindex.c", i32 582, i32 11}
!89 = distinct !{null, !90, !"__warned", i1 false, i1 false}
!90 = !{!"../net/sched/cls_tcindex.c", i32 640, i32 27}
!91 = !{ptr @.str.32, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../net/sched/cls_tcindex.c", i32 644, i32 2}
!93 = !{ptr @.str.33, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @tcindex_dump.__UNIQUE_ID_ddebug395, !92, !"__UNIQUE_ID_ddebug395", i1 false, i1 false}
!95 = !{ptr @.str.34, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../net/sched/cls_tcindex.c", i32 646, i32 2}
!97 = !{ptr @tcindex_dump.__UNIQUE_ID_ddebug396, !96, !"__UNIQUE_ID_ddebug396", i1 false, i1 false}
!98 = distinct !{null, !99, !"__warned", i1 false, i1 false}
!99 = !{!"../net/sched/cls_tcindex.c", i32 671, i32 14}
!100 = distinct !{null, !101, !"__warned", i1 false, i1 false}
!101 = !{!"../net/sched/cls_tcindex.c", i32 673, i32 29}
!102 = !{ptr @.str.37, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../net/sched/cls_tcindex.c", i32 679, i32 3}
!104 = !{ptr @tcindex_dump.__UNIQUE_ID_ddebug397, !103, !"__UNIQUE_ID_ddebug397", i1 false, i1 false}
!105 = !{ptr @.str.38, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../include/net/netlink.h", i32 991, i32 3}
!107 = !{i32 1, !"wchar_size", i32 2}
!108 = !{i32 1, !"min_enum_size", i32 4}
!109 = !{i32 8, !"branch-target-enforcement", i32 0}
!110 = !{i32 8, !"sign-return-address", i32 0}
!111 = !{i32 8, !"sign-return-address-all", i32 0}
!112 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!113 = !{i32 7, !"uwtable", i32 1}
!114 = !{i32 7, !"frame-pointer", i32 2}
!115 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!116 = !{i64 2148969393, i64 2148969398, i64 2148969411, i64 2148969455, i64 2148969489, i64 2148969510}
!117 = !{!"branch_weights", i32 2000, i32 1}
!118 = !{i64 2156434084}
!119 = !{i64 2148357546, i64 2148357578, i64 2148357607, i64 2148357641, i64 2148357672, i64 2148357695}
!120 = !{!"branch_weights", i32 1, i32 2000}
!121 = !{i64 2156396536}
!122 = !{i64 862784, i64 862801, i64 862825, i64 862851, i64 862869}
!123 = !{i64 2156396880}
!124 = !{i64 2156462202}
!125 = !{i64 2156470534}
!126 = !{i64 2156450122}
!127 = !{i64 840549, i64 840573, i64 840594, i64 840611, i64 840628}
!128 = !{i64 2148445571}
!129 = !{i64 2148360011, i64 2148360043, i64 2148360072, i64 2148360106, i64 2148360137, i64 2148360160}
!130 = !{i64 2149321685}
