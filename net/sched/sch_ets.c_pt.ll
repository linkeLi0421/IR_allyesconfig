; ModuleID = '/llk/IR_all_yes/net/sched/sch_ets.c_pt.bc'
source_filename = "../net/sched/sch_ets.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.Qdisc_ops = type { ptr, ptr, [16 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Qdisc_class_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Qdisc = type { ptr, ptr, i32, i32, ptr, ptr, %struct.hlist_node, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, [64 x i8], %struct.sk_buff_head, %struct.qdisc_skb_head, %struct.gnet_stats_basic_sync, %struct.gnet_stats_queue, i32, i32, ptr, %struct.sk_buff_head, [8 x i8], %struct.spinlock, %struct.spinlock, %struct.callback_head, ptr, [28 x i8], [0 x i32] }
%struct.hlist_node = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.qdisc_skb_head = type { ptr, ptr, i32, %struct.spinlock }
%struct.gnet_stats_basic_sync = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.gnet_stats_queue = type { i32, i32, i32, i32, i32 }
%struct.sk_buff_head = type { %union.anon.70, i32, %struct.spinlock }
%union.anon.70 = type { %struct.anon.71 }
%struct.anon.71 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.25 }
%union.anon.25 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.26 }
%union.anon.26 = type { i32 }
%struct.callback_head = type { ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.22 }
%union.anon.22 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.tcf_result = type { %union.anon.117 }
%union.anon.117 = type { %struct.anon.118 }
%struct.anon.118 = type { i32, i32 }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.3, [48 x i8], %union.anon.4, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.6, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.3 = type { i64 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { i32, ptr }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.8, i32, i32, i32, i16, i16, %union.anon.10, i32, %union.anon.11, %union.anon.12, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.8 = type { i32 }
%union.anon.10 = type { i32 }
%union.anon.11 = type { i32 }
%union.anon.12 = type { i16 }
%struct.ets_sched = type { %struct.list_head, ptr, ptr, i32, i32, [16 x i8], [8 x i8], [16 x %struct.ets_class] }
%struct.list_head = type { ptr, ptr }
%struct.ets_class = type { %struct.list_head, ptr, i32, i32, [12 x i8], %struct.gnet_stats_basic_sync, %struct.gnet_stats_queue, [12 x i8] }
%struct.sk_buff_list = type { ptr, ptr }
%struct.tc_ets_qopt_offload = type { i32, i32, i32, %union.anon.126 }
%union.anon.126 = type { %struct.tc_ets_qopt_offload_replace_params }
%struct.tc_ets_qopt_offload_replace_params = type { i32, [16 x i8], [16 x i32], [16 x i32], ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.121, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.121 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nlattr = type { i16, i16 }
%struct.netlink_ext_ack = type { ptr, ptr, ptr, [20 x i8], i8 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.qdisc_walker = type { i32, i32, i32, ptr }
%struct.tcmsg = type { i8, i8, i16, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }

@ets_qdisc_ops = internal global %struct.Qdisc_ops { ptr null, ptr @ets_class_ops, [16 x i8] c"ets\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1840, i32 0, ptr @ets_qdisc_enqueue, ptr @ets_qdisc_dequeue, ptr @qdisc_peek_dequeued, ptr @ets_qdisc_init, ptr @ets_qdisc_reset, ptr @ets_qdisc_destroy, ptr @ets_qdisc_change, ptr null, ptr null, ptr null, ptr @ets_qdisc_dump, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, section ".data..read_mostly", align 4
@__initcall__kmod_sch_ets__368_840_ets_init6 = internal global ptr @ets_init, section ".initcall6.init", align 4
@__exitcall_ets_exit = internal global ptr @ets_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file369 = internal constant [31 x i8] c"sch_ets.file=net/sched/sch_ets\00", section ".modinfo", align 1
@__UNIQUE_ID_license370 = internal constant [20 x i8] c"sch_ets.license=GPL\00", section ".modinfo", align 1
@ets_class_ops = internal constant { %struct.Qdisc_class_ops, [40 x i8] } { %struct.Qdisc_class_ops { i32 0, ptr null, ptr @ets_class_graft, ptr @ets_class_leaf, ptr @ets_class_qlen_notify, ptr @ets_class_find, ptr @ets_class_change, ptr null, ptr @ets_qdisc_walk, ptr @ets_qdisc_tcf_block, ptr @ets_qdisc_bind_tcf, ptr @ets_qdisc_unbind_tcf, ptr @ets_class_dump, ptr @ets_class_dump_stats }, [40 x i8] zeroinitializer }, align 32
@pfifo_qdisc_ops = external dso_local global %struct.Qdisc_ops, align 4
@noop_qdisc = external dso_local global %struct.Qdisc, align 128
@qdisc_root_sleeping_lock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/net/sch_generic.h\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@ets_class_change.__msg = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Fine-grained class addition and removal is not supported\00", [39 x i8] zeroinitializer }, align 32
@ets_class_change.__msg.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"ETS options are required for this operation\00", [52 x i8] zeroinitializer }, align 32
@ets_class_policy = internal constant { [7 x %struct.nla_policy], [40 x i8] } { [7 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.22 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer], [40 x i8] zeroinitializer }, align 32
@ets_class_change.__msg.3 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Strict bands do not have a configurable quantum\00", [48 x i8] zeroinitializer }, align 32
@nla_parse_nested.__msg = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"NLA_F_NESTED is missing\00", [40 x i8] zeroinitializer }, align 32
@ets_quantum_parse.__msg = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ETS quantum cannot be zero\00", [37 x i8] zeroinitializer }, align 32
@ets_qdisc_tcf_block.__msg = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ETS classid must be zero\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@ets_classify.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/sched/sch_ets.c\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@qdisc_calculate_pkt_len.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.ets_qdisc_dequeue = private unnamed_addr constant [18 x i8] c"ets_qdisc_dequeue\00", align 1
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@ets_qdisc_change.__msg = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"ETS options are required for this operation\00", [52 x i8] zeroinitializer }, align 32
@ets_policy = internal constant { [7 x %struct.nla_policy], [40 x i8] } { [7 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.22 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.22 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.22 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.22 zeroinitializer }, %struct.nla_policy zeroinitializer], [40 x i8] zeroinitializer }, align 32
@ets_qdisc_change.__msg.8 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"sch_ets: Number of bands is a required argument\00", [48 x i8] zeroinitializer }, align 32
@ets_qdisc_change.__msg.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"sch_ets: Invalid number of bands\00", [63 x i8] zeroinitializer }, align 32
@ets_qdisc_change.__msg.10 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"sch_ets: Invalid number of strict bands\00", [56 x i8] zeroinitializer }, align 32
@ets_priomap_policy = internal constant { [7 x %struct.nla_policy], [40 x i8] } { [7 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.22 zeroinitializer }], [40 x i8] zeroinitializer }, align 32
@ets_qdisc_priomap_parse.__msg = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"sch_ets: Too many priorities in ETS priomap\00", [52 x i8] zeroinitializer }, align 32
@ets_qdisc_priomap_parse.__msg.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"sch_ets: Invalid band number in ETS priomap\00", [52 x i8] zeroinitializer }, align 32
@ets_qdisc_priomap_parse.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ets_quanta_policy = internal constant { [7 x %struct.nla_policy], [40 x i8] } { [7 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.22 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer], [40 x i8] zeroinitializer }, align 32
@ets_qdisc_quanta_parse.__msg = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"sch_ets: ETS quanta has more values than bands\00", [49 x i8] zeroinitializer }, align 32
@ets_qdisc_quanta_parse.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 4, i64 5, i64 8]
@___asan_gen_.12 = private unnamed_addr constant [14 x i8] c"ets_class_ops\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 801, i32 37 }
@___asan_gen_.19 = private unnamed_addr constant [29 x i8] c"../include/net/sch_generic.h\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 596, i32 2 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 212, i32 3 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 217, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"ets_class_policy\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 73, i32 32 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 230, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 1208, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 83, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 363, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 991, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 391, i32 8 }
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 271, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 598, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant [11 x i8] c"ets_policy\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 58, i32 32 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 607, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 612, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 621, i32 4 }
@___asan_gen_.69 = private unnamed_addr constant [19 x i8] c"ets_priomap_policy\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 65, i32 32 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 527, i32 5 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 532, i32 5 }
@___asan_gen_.78 = private unnamed_addr constant [18 x i8] c"ets_quanta_policy\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 69, i32 32 }
@___asan_gen_.81 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.82 = private constant [23 x i8] c"../net/sched/sch_ets.c\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 566, i32 5 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @__UNIQUE_ID_file369, ptr @__UNIQUE_ID_license370, ptr @__exitcall_ets_exit, ptr @__initcall__kmod_sch_ets__368_840_ets_init6, ptr @ets_exit, ptr @ets_class_ops, ptr @.str, ptr @.str.1, ptr @ets_class_change.__msg, ptr @ets_class_change.__msg.2, ptr @ets_class_policy, ptr @ets_class_change.__msg.3, ptr @nla_parse_nested.__msg, ptr @ets_quantum_parse.__msg, ptr @ets_qdisc_tcf_block.__msg, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @ets_qdisc_change.__msg, ptr @ets_policy, ptr @ets_qdisc_change.__msg.8, ptr @ets_qdisc_change.__msg.9, ptr @ets_qdisc_change.__msg.10, ptr @ets_priomap_policy, ptr @ets_qdisc_priomap_parse.__msg, ptr @ets_qdisc_priomap_parse.__msg.11, ptr @ets_quanta_policy, ptr @ets_qdisc_quanta_parse.__msg], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ets_class_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ets_class_change.__msg to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ets_class_change.__msg.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ets_class_policy to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ets_class_change.__msg.3 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nla_parse_nested.__msg to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ets_quantum_parse.__msg to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ets_qdisc_tcf_block.__msg to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ets_qdisc_change.__msg to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ets_policy to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ets_qdisc_change.__msg.8 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ets_qdisc_change.__msg.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ets_qdisc_change.__msg.10 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ets_priomap_policy to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ets_qdisc_priomap_parse.__msg to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ets_qdisc_priomap_parse.__msg.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ets_quanta_policy to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ets_qdisc_quanta_parse.__msg to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ets_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @unregister_qdisc(ptr noundef nonnull @ets_qdisc_ops) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_qdisc(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ets_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_qdisc(ptr noundef nonnull @ets_qdisc_ops) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ets_qdisc_enqueue(ptr noundef %skb, ptr noundef %sch, ptr noundef %to_free) #2 align 64 {
entry:
  %res.i = alloca %struct.tcf_result, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %0 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cb.i.i, align 4
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %priority.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %2 = ptrtoint ptr %priority.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %priority.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %res.i) #11
  %4 = ptrtoint ptr %res.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %res.i, align 4, !annotation !76
  %5 = getelementptr inbounds %struct.anon.118, ptr %res.i, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !76
  %and.i = and i32 %3, -65536
  %handle.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 7
  %7 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %handle.i, align 32
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %8)
  %cmp.not.i = icmp eq i32 %and.i, %8
  br i1 %cmp.not.i, label %entry.if.end24.i_crit_edge, label %if.then.i

entry.if.end24.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24.i

if.then.i:                                        ; preds = %entry
  %filter_list.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %9 = ptrtoint ptr %filter_list.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %filter_list.i, align 8
  %call3.i = tail call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.then.i.do.end10.i_crit_edge

if.then.i.do.end10.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end10.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %call4.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.do.end10.i_crit_edge, label %land.lhs.true6.i

land.lhs.true.i.do.end10.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end10.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %.b56.i = load i1, ptr @ets_classify.__warned, align 1
  br i1 %.b56.i, label %land.lhs.true6.i.do.end10.i_crit_edge, label %if.then8.i

land.lhs.true6.i.do.end10.i_crit_edge:            ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end10.i

if.then8.i:                                       ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @ets_classify.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 391, ptr noundef nonnull @.str.6) #11
  br label %do.end10.i

do.end10.i:                                       ; preds = %if.then8.i, %land.lhs.true6.i.do.end10.i_crit_edge, %land.lhs.true.i.do.end10.i_crit_edge, %if.then.i.do.end10.i_crit_edge
  %call12.i = call i32 @tcf_classify(ptr noundef %skb, ptr noundef null, ptr noundef %10, ptr noundef nonnull %res.i, i1 noundef zeroext false) #11
  %11 = zext i32 %call12.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call12.i, label %sw.epilog.i [
    i32 4, label %do.end10.i.if.then.thread61_crit_edge
    i32 5, label %do.end10.i.if.then.thread61_crit_edge65
    i32 8, label %do.end10.i.if.then.thread61_crit_edge66
    i32 2, label %if.then
  ]

do.end10.i.if.then.thread61_crit_edge66:          ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.thread61

do.end10.i.if.then.thread61_crit_edge65:          ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.thread61

do.end10.i.if.then.thread61_crit_edge:            ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.thread61

if.then.thread61:                                 ; preds = %do.end10.i.if.then.thread61_crit_edge, %do.end10.i.if.then.thread61_crit_edge65, %do.end10.i.if.then.thread61_crit_edge66
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %res.i) #11
  br label %if.end

sw.epilog.i:                                      ; preds = %do.end10.i
  %tobool14.not.i = icmp eq ptr %10, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp15.i = icmp slt i32 %call12.i, 0
  %or.cond.i = select i1 %tobool14.not.i, i1 true, i1 %cmp15.i
  br i1 %or.cond.i, label %if.then16.i, label %if.end23.i

if.then16.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  %12 = call i32 @llvm.umin.i32(i32 %3, i32 65536) #11
  %and21.i = and i32 %12, 15
  %arrayidx.i = getelementptr %struct.ets_sched, ptr %privdata.i, i32 0, i32 5, i32 %and21.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i, align 1
  %idxprom.i = zext i8 %14 to i32
  br label %ets_classify.exit

if.end23.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %5, align 4
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.end23.i, %entry.if.end24.i_crit_edge
  %band.0.i = phi i32 [ %16, %if.end23.i ], [ %3, %entry.if.end24.i_crit_edge ]
  %and25.i = and i32 %band.0.i, 65535
  %sub.i = add nsw i32 %and25.i, -1
  %nbands.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %17 = ptrtoint ptr %nbands.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nbands.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %18)
  %cmp26.not.i = icmp ult i32 %sub.i, %18
  br i1 %cmp26.not.i, label %if.end24.i.ets_classify.exit_crit_edge, label %if.then27.i

if.end24.i.ets_classify.exit_crit_edge:           ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ets_classify.exit

if.then27.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #13
  %prio2band29.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 6
  %19 = ptrtoint ptr %prio2band29.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %prio2band29.i, align 8
  %idxprom31.i = zext i8 %20 to i32
  br label %ets_classify.exit

ets_classify.exit:                                ; preds = %if.then27.i, %if.end24.i.ets_classify.exit_crit_edge, %if.then16.i
  %idxprom.i.sink = phi i32 [ %idxprom.i, %if.then16.i ], [ %idxprom31.i, %if.then27.i ], [ %sub.i, %if.end24.i.ets_classify.exit_crit_edge ]
  %arrayidx22.i = getelementptr %struct.ets_sched, ptr %privdata.i, i32 0, i32 7, i32 %idxprom.i.sink
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %res.i) #11
  %tobool.not = icmp eq ptr %arrayidx22.i, null
  br i1 %tobool.not, label %ets_classify.exit.if.then4_crit_edge, label %if.end5

ets_classify.exit.if.then4_crit_edge:             ; preds = %ets_classify.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then4

if.then:                                          ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %res.i) #11
  br label %if.then4

if.then4:                                         ; preds = %if.then, %ets_classify.exit.if.then4_crit_edge
  %drops.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  %21 = ptrtoint ptr %drops.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %drops.i.i, align 4
  %inc.i.i = add i32 %22, 1
  store i32 %inc.i.i, ptr %drops.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then.thread61
  %err.05560 = phi i32 [ 131072, %if.then4 ], [ 65536, %if.then.thread61 ]
  %23 = ptrtoint ptr %to_free to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %to_free, align 4
  %25 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %skb, align 8
  store ptr %skb, ptr %to_free, align 4
  br label %cleanup

if.end5:                                          ; preds = %ets_classify.exit
  %qdisc = getelementptr %struct.ets_sched, ptr %privdata.i, i32 0, i32 7, i32 %idxprom.i.sink, i32 1
  %26 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %qdisc, align 8
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %27, i32 0, i32 17, i32 2
  %28 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %qlen, align 8
  %stab1.i.i = getelementptr inbounds %struct.Qdisc, ptr %27, i32 0, i32 5
  %30 = ptrtoint ptr %stab1.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %stab1.i.i, align 4
  %call.i.i = call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %if.end5.do.end8.i.i_crit_edge

if.end5.do.end8.i.i_crit_edge:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8.i.i

land.lhs.true.i.i:                                ; preds = %if.end5
  %call3.i.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.do.end8.i.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i.i.do.end8.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8.i.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i.i
  %.b14.i.i = load i1, ptr @qdisc_calculate_pkt_len.__warned, align 1
  br i1 %.b14.i.i, label %land.lhs.true5.i.i.do.end8.i.i_crit_edge, label %if.then.i.i

land.lhs.true5.i.i.do.end8.i.i_crit_edge:         ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8.i.i

if.then.i.i:                                      ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @qdisc_calculate_pkt_len.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 835, ptr noundef nonnull @.str.6) #11
  br label %do.end8.i.i

do.end8.i.i:                                      ; preds = %if.then.i.i, %land.lhs.true5.i.i.do.end8.i.i_crit_edge, %land.lhs.true.i.i.do.end8.i.i_crit_edge, %if.end5.do.end8.i.i_crit_edge
  %tobool10.not.i.i = icmp eq ptr %31, null
  br i1 %tobool10.not.i.i, label %do.end8.i.i.qdisc_enqueue.exit_crit_edge, label %if.then11.i.i

do.end8.i.i.qdisc_enqueue.exit_crit_edge:         ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qdisc_enqueue.exit

if.then11.i.i:                                    ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__qdisc_calculate_pkt_len(ptr noundef %skb, ptr noundef nonnull %31) #11
  br label %qdisc_enqueue.exit

qdisc_enqueue.exit:                               ; preds = %if.then11.i.i, %do.end8.i.i.qdisc_enqueue.exit_crit_edge
  %32 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %27, align 128
  %call.i = call i32 %33(ptr noundef %skb, ptr noundef %27, ptr noundef %to_free) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %if.end18, label %if.then13, !prof !77

if.then13:                                        ; preds = %qdisc_enqueue.exit
  %and14 = and i32 %call.i, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.then16, label %if.then13.cleanup_crit_edge

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then16:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  %drops = getelementptr %struct.ets_sched, ptr %privdata.i, i32 0, i32 7, i32 %idxprom.i.sink, i32 6, i32 2
  %34 = ptrtoint ptr %drops to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %drops, align 8
  %inc = add i32 %35, 1
  store i32 %inc, ptr %drops, align 8
  %drops.i.i48 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  %36 = ptrtoint ptr %drops.i.i48 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %drops.i.i48, align 4
  %inc.i.i49 = add i32 %37, 1
  store i32 %inc.i.i49, ptr %drops.i.i48, align 4
  br label %cleanup

if.end18:                                         ; preds = %qdisc_enqueue.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool7.not = icmp eq i32 %29, 0
  br i1 %tobool7.not, label %land.lhs.true, label %if.end18.if.end22_crit_edge

if.end18.if.end22_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

land.lhs.true:                                    ; preds = %if.end18
  %classes.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 11
  %sub.ptr.lhs.cast.i = ptrtoint ptr %arrayidx22.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %classes.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 112
  %nstrict.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 5
  %38 = ptrtoint ptr %nstrict.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %nstrict.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.div.i, i32 %39)
  %cmp.i = icmp ult i32 %sub.ptr.div.i, %39
  br i1 %cmp.i, label %land.lhs.true.if.end22_crit_edge, label %if.then21

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.then21:                                        ; preds = %land.lhs.true
  %prev.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 1
  %40 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i, align 4
  %call.i.i50 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %arrayidx22.i, ptr noundef %41, ptr noundef %privdata.i) #11
  br i1 %call.i.i50, label %if.end.i.i, label %if.then21.list_add_tail.exit_crit_edge

if.then21.list_add_tail.exit_crit_edge:           ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  %42 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %arrayidx22.i, ptr %prev.i, align 4
  %43 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %privdata.i, ptr %arrayidx22.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %arrayidx22.i, i32 0, i32 1
  %44 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev3.i.i, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %arrayidx22.i, ptr %41, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then21.list_add_tail.exit_crit_edge
  %quantum = getelementptr %struct.ets_sched, ptr %privdata.i, i32 0, i32 7, i32 %idxprom.i.sink, i32 2
  %46 = ptrtoint ptr %quantum to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %quantum, align 4
  %deficit = getelementptr %struct.ets_sched, ptr %privdata.i, i32 0, i32 7, i32 %idxprom.i.sink, i32 3
  %48 = ptrtoint ptr %deficit to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %deficit, align 16
  br label %if.end22

if.end22:                                         ; preds = %list_add_tail.exit, %land.lhs.true.if.end22_crit_edge, %if.end18.if.end22_crit_edge
  %backlog = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %49 = ptrtoint ptr %backlog to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %backlog, align 4
  %add = add i32 %50, %1
  store i32 %add, ptr %backlog, align 4
  %qlen25 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %51 = ptrtoint ptr %qlen25 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %qlen25, align 8
  %inc26 = add i32 %52, 1
  store i32 %inc26, ptr %qlen25, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then16, %if.then13.cleanup_crit_edge, %if.end
  %err.1 = phi i32 [ %err.05560, %if.end ], [ 0, %if.end22 ], [ %call.i, %if.then16 ], [ %call.i, %if.then13.cleanup_crit_edge ]
  ret i32 %err.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ets_qdisc_dequeue(ptr noundef %sch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %nstrict = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 5
  %prev.i2.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 1
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %0 = ptrtoint ptr %nstrict to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nstrict, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp75.not = icmp eq i32 %1, 0
  br i1 %cmp75.not, label %while.cond.for.end_crit_edge, label %while.cond.for.body_crit_edge

while.cond.for.body_crit_edge:                    ; preds = %while.cond
  br label %for.body

while.cond.for.end_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %band.076, 1
  %2 = ptrtoint ptr %nstrict to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nstrict, align 4
  %cmp = icmp ult i32 %inc, %3
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %while.cond.for.body_crit_edge
  %band.076 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %while.cond.for.body_crit_edge ]
  %qdisc = getelementptr %struct.ets_sched, ptr %privdata.i, i32 0, i32 7, i32 %band.076, i32 1
  %4 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %qdisc, align 8
  %call1 = tail call fastcc ptr @qdisc_dequeue_peeked(ptr noundef %5)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %for.cond, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = tail call fastcc ptr @ets_qdisc_dequeue_skb(ptr noundef %sch, ptr noundef nonnull %call1)
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %while.cond.for.end_crit_edge
  %6 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %privdata.i, align 4
  %cmp.i.not = icmp eq ptr %7, %privdata.i
  br i1 %cmp.i.not, label %for.end.cleanup_crit_edge, label %if.end6

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %for.end
  %qdisc8 = getelementptr inbounds %struct.ets_class, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %qdisc8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %qdisc8, align 8
  %ops = getelementptr inbounds %struct.Qdisc, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 16
  %peek = getelementptr inbounds %struct.Qdisc_ops, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %peek to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %peek, align 4
  %call10 = tail call ptr %13(ptr noundef %9) #11
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %qdisc8.le90 = getelementptr inbounds %struct.ets_class, ptr %7, i32 0, i32 1
  %14 = ptrtoint ptr %qdisc8.le90 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %qdisc8.le90, align 8
  tail call void @qdisc_warn_nonwc(ptr noundef nonnull @__func__.ets_qdisc_dequeue, ptr noundef %15) #11
  br label %cleanup

if.end14:                                         ; preds = %if.end6
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %call10, i32 0, i32 3
  %16 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cb.i.i, align 4
  %deficit = getelementptr inbounds %struct.ets_class, ptr %7, i32 0, i32 3
  %18 = ptrtoint ptr %deficit to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %deficit, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %17)
  %cmp16.not = icmp ult i32 %19, %17
  br i1 %cmp16.not, label %if.end33, label %if.then17

if.then17:                                        ; preds = %if.end14
  %qdisc8.le = getelementptr inbounds %struct.ets_class, ptr %7, i32 0, i32 1
  %sub = sub i32 %19, %17
  %20 = ptrtoint ptr %deficit to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %sub, ptr %deficit, align 16
  %21 = ptrtoint ptr %qdisc8.le to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %qdisc8.le, align 8
  %call20 = tail call fastcc ptr @qdisc_dequeue_peeked(ptr noundef %22)
  %tobool21.not = icmp eq ptr %call20, null
  br i1 %tobool21.not, label %if.then17.cleanup_crit_edge, label %if.end26, !prof !78

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end26:                                         ; preds = %if.then17
  %23 = ptrtoint ptr %qdisc8.le to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %qdisc8.le, align 8
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %24, i32 0, i32 17, i32 2
  %25 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %qlen, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp29 = icmp eq i32 %26, 0
  br i1 %cmp29, label %if.then30, label %if.end26.if.end31_crit_edge

if.end26.if.end31_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.then30:                                        ; preds = %if.end26
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %7) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then30.list_del.exit_crit_edge

if.then30.list_del.exit_crit_edge:                ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i, align 4
  %29 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %7, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev1.i.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %30, ptr %28, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then30.list_del.exit_crit_edge
  %33 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 256 to ptr), ptr %7, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %if.end31

if.end31:                                         ; preds = %list_del.exit, %if.end26.if.end31_crit_edge
  %call32 = tail call fastcc ptr @ets_qdisc_dequeue_skb(ptr noundef %sch, ptr noundef nonnull %call20)
  br label %cleanup

if.end33:                                         ; preds = %if.end14
  %quantum = getelementptr inbounds %struct.ets_class, ptr %7, i32 0, i32 2
  %35 = ptrtoint ptr %quantum to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %quantum, align 4
  %add = add i32 %36, %19
  %37 = ptrtoint ptr %deficit to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %add, ptr %deficit, align 16
  %call.i.i66 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %7) #11
  br i1 %call.i.i66, label %if.end.i.i69, label %if.end33.__list_del_entry.exit.i_crit_edge

if.end33.__list_del_entry.exit.i_crit_edge:       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %__list_del_entry.exit.i

if.end.i.i69:                                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i67 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i.i67 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i.i67, align 4
  %40 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %7, align 4
  %prev1.i.i.i68 = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %prev1.i.i.i68 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev1.i.i.i68, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %41, ptr %39, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i69, %if.end33.__list_del_entry.exit.i_crit_edge
  %44 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %7, ptr noundef %45, ptr noundef %privdata.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.while.cond.backedge_crit_edge

__list_del_entry.exit.i.while.cond.backedge_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.while.cond.backedge_crit_edge
  br label %while.cond

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %46 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %7, ptr %prev.i2.i, align 4
  %47 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %privdata.i, ptr %7, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %48 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %45, ptr %prev3.i.i.i, align 4
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %7, ptr %45, align 4
  br label %while.cond.backedge

cleanup:                                          ; preds = %if.end31, %if.then17.cleanup_crit_edge, %if.then12, %for.end.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ %call1, %if.then ], [ %call20, %if.end31 ], [ null, %if.then17.cleanup_crit_edge ], [ null, %if.then12 ], [ null, %for.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @qdisc_peek_dequeued(ptr noundef %sch) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %gso_skb = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 16
  %0 = ptrtoint ptr %gso_skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gso_skb, align 4
  %cmp.i = icmp eq ptr %1, %gso_skb
  %tobool.not15 = icmp eq ptr %1, null
  %tobool.not = or i1 %cmp.i, %tobool.not15
  br i1 %tobool.not, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then:                                          ; preds = %entry
  %dequeue = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 1
  %2 = ptrtoint ptr %dequeue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dequeue, align 4
  %call1 = tail call ptr %3(ptr noundef %sch) #11
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then.if.end5_crit_edge, label %if.then3

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %gso_skb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gso_skb, align 4
  %6 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %5, ptr %call1, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.0, ptr %call1, i32 0, i32 1
  %7 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %gso_skb, ptr %prev10.i.i.i, align 4
  %prev17.i.i.i = getelementptr inbounds %struct.sk_buff_list, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %call1, ptr %prev17.i.i.i, align 4
  store volatile ptr %call1, ptr %gso_skb, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 16, i32 1
  %9 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i = add i32 %10, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i.i, align 4
  %cb.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 3
  %11 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cb.i.i.i, align 4
  %backlog.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %13 = ptrtoint ptr %backlog.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %backlog.i, align 4
  %add.i = add i32 %14, %12
  store i32 %add.i, ptr %backlog.i, align 4
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %15 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %qlen, align 8
  %inc = add i32 %16, 1
  store i32 %inc, ptr %qlen, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %skb.0 = phi ptr [ %1, %entry.if.end5_crit_edge ], [ %call1, %if.then3 ], [ null, %if.then.if.end5_crit_edge ]
  ret ptr %skb.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ets_qdisc_init(ptr noundef %sch, ptr noundef %opt, ptr noundef %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %tobool.not = icmp eq ptr %opt, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %block = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 3
  %filter_list = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %call1 = tail call i32 @tcf_block_get(ptr noundef %block, ptr noundef %filter_list, ptr noundef %sch, ptr noundef %extack) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %privdata.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %privdata.i, ptr %privdata.i, align 4
  %prev.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %privdata.i, ptr %prev.i, align 4
  %arrayidx = getelementptr %struct.Qdisc, ptr %sch, i32 1, i32 11
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %arrayidx, ptr %arrayidx, align 4
  %prev.i18 = getelementptr %struct.Qdisc, ptr %sch, i32 1, i32 12
  %3 = ptrtoint ptr %prev.i18 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %arrayidx, ptr %prev.i18, align 4
  %arrayidx.1 = getelementptr %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2, i32 0, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %arrayidx.1, ptr %arrayidx.1, align 4
  %prev.i18.1 = getelementptr %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2, i32 0, i32 0, i32 4, i32 1, i32 1
  %5 = ptrtoint ptr %prev.i18.1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %arrayidx.1, ptr %prev.i18.1, align 4
  %arrayidx.2 = getelementptr %struct.Qdisc, ptr %sch, i32 1, i32 18, i32 2, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %arrayidx.2, ptr %arrayidx.2, align 4
  %prev.i18.2 = getelementptr %struct.Qdisc, ptr %sch, i32 1, i32 18, i32 2, i32 0, i32 1, i32 3
  %7 = ptrtoint ptr %prev.i18.2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %arrayidx.2, ptr %prev.i18.2, align 4
  %arrayidx.3 = getelementptr %struct.Qdisc, ptr %sch, i32 1, i32 25
  %8 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %arrayidx.3, ptr %arrayidx.3, align 4
  %prev.i18.3 = getelementptr %struct.Qdisc, ptr %sch, i32 1, i32 25, i32 0, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i18.3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %arrayidx.3, ptr %prev.i18.3, align 4
  %arrayidx.4 = getelementptr %struct.Qdisc, ptr %sch, i32 1, i32 29, i32 12
  %10 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %arrayidx.4, ptr %arrayidx.4, align 4
  %prev.i18.4 = getelementptr %struct.Qdisc, ptr %sch, i32 1, i32 29, i32 16
  %11 = ptrtoint ptr %prev.i18.4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %arrayidx.4, ptr %prev.i18.4, align 4
  %arrayidx.5 = getelementptr %struct.Qdisc, ptr %sch, i32 2, i32 15, i32 32
  %12 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %arrayidx.5, ptr %arrayidx.5, align 4
  %prev.i18.5 = getelementptr %struct.Qdisc, ptr %sch, i32 2, i32 15, i32 36
  %13 = ptrtoint ptr %prev.i18.5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %arrayidx.5, ptr %prev.i18.5, align 4
  %arrayidx.6 = getelementptr %struct.Qdisc, ptr %sch, i32 2, i32 17, i32 3, i32 0, i32 0, i32 3
  %14 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %arrayidx.6, ptr %arrayidx.6, align 4
  %prev.i18.6 = getelementptr %struct.Qdisc, ptr %sch, i32 2, i32 17, i32 3, i32 0, i32 0, i32 4
  %15 = ptrtoint ptr %prev.i18.6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %arrayidx.6, ptr %prev.i18.6, align 4
  %arrayidx.7 = getelementptr %struct.Qdisc, ptr %sch, i32 2, i32 23
  %16 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %arrayidx.7, ptr %arrayidx.7, align 4
  %prev.i18.7 = getelementptr %struct.Qdisc, ptr %sch, i32 2, i32 23, i32 0, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i18.7 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %arrayidx.7, ptr %prev.i18.7, align 4
  %arrayidx.8 = getelementptr %struct.Qdisc, ptr %sch, i32 2, i32 26, i32 0, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %arrayidx.8, ptr %arrayidx.8, align 4
  %prev.i18.8 = getelementptr %struct.Qdisc, ptr %sch, i32 2, i32 26, i32 0, i32 0, i32 2
  %19 = ptrtoint ptr %prev.i18.8 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %arrayidx.8, ptr %prev.i18.8, align 4
  %arrayidx.9 = getelementptr %struct.Qdisc, ptr %sch, i32 3, i32 7
  %20 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %arrayidx.9, ptr %arrayidx.9, align 4
  %prev.i18.9 = getelementptr %struct.Qdisc, ptr %sch, i32 3, i32 8
  %21 = ptrtoint ptr %prev.i18.9 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %arrayidx.9, ptr %prev.i18.9, align 4
  %arrayidx.10 = getelementptr %struct.Qdisc, ptr %sch, i32 3, i32 16, i32 2, i32 0, i32 0, i32 1
  %22 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %arrayidx.10, ptr %arrayidx.10, align 4
  %prev.i18.10 = getelementptr %struct.Qdisc, ptr %sch, i32 3, i32 16, i32 2, i32 0, i32 0, i32 2
  %23 = ptrtoint ptr %prev.i18.10 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %arrayidx.10, ptr %prev.i18.10, align 4
  %arrayidx.11 = getelementptr %struct.Qdisc, ptr %sch, i32 3, i32 18, i32 2
  %24 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %arrayidx.11, ptr %arrayidx.11, align 4
  %prev.i18.11 = getelementptr %struct.Qdisc, ptr %sch, i32 3, i32 18, i32 2, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i18.11 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %arrayidx.11, ptr %prev.i18.11, align 4
  %arrayidx.12 = getelementptr %struct.Qdisc, ptr %sch, i32 3, i32 23, i32 2, i32 0, i32 0, i32 4, i32 6
  %26 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %arrayidx.12, ptr %arrayidx.12, align 4
  %prev.i18.12 = getelementptr %struct.Qdisc, ptr %sch, i32 3, i32 23, i32 2, i32 0, i32 0, i32 4, i32 7
  %27 = ptrtoint ptr %prev.i18.12 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %arrayidx.12, ptr %prev.i18.12, align 4
  %arrayidx.13 = getelementptr %struct.Qdisc, ptr %sch, i32 3, i32 28
  %28 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %arrayidx.13, ptr %arrayidx.13, align 4
  %prev.i18.13 = getelementptr %struct.Qdisc, ptr %sch, i32 3, i32 29
  %29 = ptrtoint ptr %prev.i18.13 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %arrayidx.13, ptr %prev.i18.13, align 4
  %arrayidx.14 = getelementptr %struct.Qdisc, ptr %sch, i32 4, i32 15, i32 16
  %30 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %arrayidx.14, ptr %arrayidx.14, align 4
  %prev.i18.14 = getelementptr %struct.Qdisc, ptr %sch, i32 4, i32 15, i32 20
  %31 = ptrtoint ptr %prev.i18.14 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %arrayidx.14, ptr %prev.i18.14, align 4
  %arrayidx.15 = getelementptr %struct.Qdisc, ptr %sch, i32 4, i32 17, i32 2
  %32 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %arrayidx.15, ptr %arrayidx.15, align 4
  %prev.i18.15 = getelementptr %struct.Qdisc, ptr %sch, i32 4, i32 17, i32 3
  %33 = ptrtoint ptr %prev.i18.15 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %arrayidx.15, ptr %prev.i18.15, align 4
  %call5 = tail call i32 @ets_qdisc_change(ptr noundef %sch, ptr noundef nonnull %opt, ptr noundef %extack)
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end4 ], [ -22, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ets_qdisc_reset(ptr noundef %sch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %nstrict = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 5
  %0 = ptrtoint ptr %nstrict to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nstrict, align 4
  %nbands = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %2 = ptrtoint ptr %nbands to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nbands, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp29 = icmp ult i32 %1, %3
  br i1 %cmp29, label %entry.for.body_crit_edge, label %entry.for.cond4.preheader_crit_edge

entry.for.cond4.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond4.preheader

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.cond4.preheader:                              ; preds = %for.inc.for.cond4.preheader_crit_edge, %entry.for.cond4.preheader_crit_edge
  %4 = phi i32 [ %3, %entry.for.cond4.preheader_crit_edge ], [ %18, %for.inc.for.cond4.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp632.not = icmp eq i32 %4, 0
  br i1 %cmp632.not, label %for.cond4.preheader.for.end13_crit_edge, label %for.cond4.preheader.for.body7_crit_edge

for.cond4.preheader.for.body7_crit_edge:          ; preds = %for.cond4.preheader
  br label %for.body7

for.cond4.preheader.for.end13_crit_edge:          ; preds = %for.cond4.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end13

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %band.030 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %qdisc = getelementptr %struct.ets_sched, ptr %privdata.i, i32 0, i32 7, i32 %band.030, i32 1
  %5 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %qdisc, align 8
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %6, i32 0, i32 17, i32 2
  %7 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %qlen, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then:                                          ; preds = %for.body
  %arrayidx = getelementptr %struct.ets_sched, ptr %privdata.i, i32 0, i32 7, i32 %band.030
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %arrayidx) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %arrayidx, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %arrayidx, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %arrayidx, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %list_del.exit, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %band.030, 1
  %17 = ptrtoint ptr %nbands to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nbands, align 16
  %cmp = icmp ult i32 %inc, %18
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.cond4.preheader_crit_edge

for.inc.for.cond4.preheader_crit_edge:            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond4.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body7:                                        ; preds = %for.body7.for.body7_crit_edge, %for.cond4.preheader.for.body7_crit_edge
  %band.133 = phi i32 [ %inc12, %for.body7.for.body7_crit_edge ], [ 0, %for.cond4.preheader.for.body7_crit_edge ]
  %qdisc10 = getelementptr %struct.ets_sched, ptr %privdata.i, i32 0, i32 7, i32 %band.133, i32 1
  %19 = ptrtoint ptr %qdisc10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %qdisc10, align 8
  tail call void @qdisc_reset(ptr noundef %20) #11
  %inc12 = add nuw i32 %band.133, 1
  %21 = ptrtoint ptr %nbands to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nbands, align 16
  %cmp6 = icmp ult i32 %inc12, %22
  br i1 %cmp6, label %for.body7.for.body7_crit_edge, label %for.body7.for.end13_crit_edge

for.body7.for.end13_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end13

for.body7.for.body7_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body7

for.end13:                                        ; preds = %for.body7.for.end13_crit_edge, %for.cond4.preheader.for.end13_crit_edge
  %backlog = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %23 = ptrtoint ptr %backlog to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %backlog, align 4
  %qlen15 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %24 = ptrtoint ptr %qlen15 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %qlen15, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ets_qdisc_destroy(ptr nocapture noundef readonly %sch) #2 align 64 {
entry:
  %qopt.i = alloca %struct.tc_ets_qopt_offload, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %dev_queue.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %0 = ptrtoint ptr %dev_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_queue.i.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 164, ptr nonnull %qopt.i) #11
  %4 = getelementptr inbounds i8, ptr %qopt.i, i32 12
  %5 = call ptr @memset(ptr %4, i32 255, i32 152)
  %features.i.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 23
  %6 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %features.i.i, align 16
  %and.i.i = and i64 %7, 562949953421312
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.ets_offload_destroy.exit_crit_edge, label %lor.lhs.false.i

entry.ets_offload_destroy.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %ets_offload_destroy.exit

lor.lhs.false.i:                                  ; preds = %entry
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 16
  %8 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %netdev_ops.i, align 8
  %ndo_setup_tc.i = getelementptr inbounds %struct.net_device_ops, ptr %9, i32 0, i32 42
  %10 = ptrtoint ptr %ndo_setup_tc.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ndo_setup_tc.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %lor.lhs.false.i.ets_offload_destroy.exit_crit_edge, label %if.end.i

lor.lhs.false.i.ets_offload_destroy.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ets_offload_destroy.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %qopt.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %qopt.i, align 4
  %handle.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 7
  %13 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %handle.i, align 32
  %handle2.i = getelementptr inbounds %struct.tc_ets_qopt_offload, ptr %qopt.i, i32 0, i32 1
  %15 = ptrtoint ptr %handle2.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %handle2.i, align 4
  %parent.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 8
  %16 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %parent.i, align 4
  %parent3.i = getelementptr inbounds %struct.tc_ets_qopt_offload, ptr %qopt.i, i32 0, i32 2
  %18 = ptrtoint ptr %parent3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %parent3.i, align 4
  %call6.i = call i32 %11(ptr noundef %3, i32 noundef 15, ptr noundef nonnull %qopt.i) #11
  br label %ets_offload_destroy.exit

ets_offload_destroy.exit:                         ; preds = %if.end.i, %lor.lhs.false.i.ets_offload_destroy.exit_crit_edge, %entry.ets_offload_destroy.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 164, ptr nonnull %qopt.i) #11
  %block = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 3
  %19 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %block, align 4
  call void @tcf_block_put(ptr noundef %20) #11
  %nbands = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %21 = ptrtoint ptr %nbands to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nbands, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp6.not = icmp eq i32 %22, 0
  br i1 %cmp6.not, label %ets_offload_destroy.exit.for.end_crit_edge, label %ets_offload_destroy.exit.for.body_crit_edge

ets_offload_destroy.exit.for.body_crit_edge:      ; preds = %ets_offload_destroy.exit
  br label %for.body

ets_offload_destroy.exit.for.end_crit_edge:       ; preds = %ets_offload_destroy.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %ets_offload_destroy.exit.for.body_crit_edge
  %band.07 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %ets_offload_destroy.exit.for.body_crit_edge ]
  %qdisc = getelementptr %struct.ets_sched, ptr %privdata.i, i32 0, i32 7, i32 %band.07, i32 1
  %23 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %qdisc, align 8
  call void @qdisc_put(ptr noundef %24) #11
  %inc = add nuw i32 %band.07, 1
  %25 = ptrtoint ptr %nbands to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nbands, align 16
  %cmp = icmp ult i32 %inc, %26
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %ets_offload_destroy.exit.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ets_qdisc_change(ptr noundef %sch, ptr noundef %opt, ptr noundef %extack) #2 align 64 {
entry:
  %qstats.i.i = alloca %struct.gnet_stats_queue, align 4
  %quanta = alloca [16 x i32], align 4
  %queues = alloca [16 x ptr], align 4
  %tb = alloca [7 x ptr], align 4
  %priomap = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %quanta) #11
  %0 = call ptr @memset(ptr %quanta, i32 0, i32 64)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %queues) #11
  %1 = call ptr @memset(ptr %queues, i32 255, i32 64)
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %tb) #11
  %2 = getelementptr inbounds [7 x ptr], ptr %tb, i32 0, i32 1
  %3 = getelementptr inbounds [7 x ptr], ptr %tb, i32 0, i32 2
  %4 = getelementptr inbounds [7 x ptr], ptr %tb, i32 0, i32 3
  %5 = getelementptr inbounds [7 x ptr], ptr %tb, i32 0, i32 5
  %nbands = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %6 = call ptr @memset(ptr %tb, i32 255, i32 28)
  %7 = ptrtoint ptr %nbands to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nbands, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %priomap) #11
  %tobool.not = icmp eq ptr %opt, null
  %9 = call ptr @memset(ptr %priomap, i32 255, i32 16)
  br i1 %tobool.not, label %do.body, label %if.end4

do.body:                                          ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ets_qdisc_change.__msg) #11
  %tobool2.not = icmp eq ptr %extack, null
  br i1 %tobool2.not, label %do.body.cleanup_crit_edge, label %if.then3

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @ets_qdisc_change.__msg, ptr %extack, align 4
  br label %cleanup

if.end4:                                          ; preds = %entry
  %nla_type.i = getelementptr inbounds %struct.nlattr, ptr %opt, i32 0, i32 1
  %11 = ptrtoint ptr %nla_type.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %nla_type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %12)
  %tobool.not.i = icmp sgt i16 %12, -1
  br i1 %tobool.not.i, label %do.body.i, label %nla_parse_nested.exit

do.body.i:                                        ; preds = %if.end4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nla_parse_nested.__msg) #11
  %tobool1.not.i = icmp eq ptr %extack, null
  br i1 %tobool1.not.i, label %do.body.i.cleanup_crit_edge, label %if.then2.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then2.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @nla_parse_nested.__msg, ptr %extack, align 4
  %bad_attr.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %14 = ptrtoint ptr %bad_attr.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %opt, ptr %bad_attr.i, align 4
  %policy3.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %15 = ptrtoint ptr %policy3.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %policy3.i, align 4
  br label %cleanup

nla_parse_nested.exit:                            ; preds = %if.end4
  %add.ptr.i.i = getelementptr i8, ptr %opt, i32 4
  %16 = ptrtoint ptr %opt to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %opt, align 2
  %conv.i.i = zext i16 %17 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call6.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 6, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @ets_policy, i32 noundef 31, ptr noundef %extack) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp = icmp slt i32 %call6.i, 0
  br i1 %cmp, label %nla_parse_nested.exit.cleanup_crit_edge, label %if.end7

nla_parse_nested.exit.cleanup_crit_edge:          ; preds = %nla_parse_nested.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %nla_parse_nested.exit
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %2, align 4
  %tobool8.not = icmp eq ptr %19, null
  br i1 %tobool8.not, label %do.body10, label %if.end18

do.body10:                                        ; preds = %if.end7
  call void @do_trace_netlink_extack(ptr noundef nonnull @ets_qdisc_change.__msg.8) #11
  %tobool12.not = icmp eq ptr %extack, null
  br i1 %tobool12.not, label %do.body10.cleanup_crit_edge, label %if.then13

do.body10.cleanup_crit_edge:                      ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then13:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @ets_qdisc_change.__msg.8, ptr %extack, align 4
  br label %cleanup

if.end18:                                         ; preds = %if.end7
  %add.ptr.i.i328 = getelementptr i8, ptr %19, i32 4
  %21 = ptrtoint ptr %add.ptr.i.i328 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %add.ptr.i.i328, align 1
  %conv = zext i8 %22 to i32
  %23 = add i8 %22, -17
  call void @__sanitizer_cov_trace_const_cmp1(i8 -16, i8 %23)
  %24 = icmp ult i8 %23, -16
  br i1 %24, label %do.body26, label %if.end34

do.body26:                                        ; preds = %if.end18
  call void @do_trace_netlink_extack(ptr noundef nonnull @ets_qdisc_change.__msg.9) #11
  %tobool28.not = icmp eq ptr %extack, null
  br i1 %tobool28.not, label %do.body26.cleanup_crit_edge, label %if.then29

do.body26.cleanup_crit_edge:                      ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then29:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @ets_qdisc_change.__msg.9, ptr %extack, align 4
  br label %cleanup

if.end34:                                         ; preds = %if.end18
  %sub = add nsw i8 %22, -1
  %26 = zext i8 %sub to i32
  %27 = call ptr @memset(ptr %priomap, i32 %26, i32 16)
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %3, align 4
  %tobool37.not = icmp eq ptr %29, null
  br i1 %tobool37.not, label %if.end34.if.end54_crit_edge, label %if.then38

if.end34.if.end54_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54

if.then38:                                        ; preds = %if.end34
  %add.ptr.i.i329 = getelementptr i8, ptr %29, i32 4
  %30 = ptrtoint ptr %add.ptr.i.i329 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %add.ptr.i.i329, align 1
  %conv41 = zext i8 %31 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %31, i8 %22)
  %cmp42 = icmp ugt i8 %31, %22
  br i1 %cmp42, label %do.body45, label %if.then38.if.end54_crit_edge

if.then38.if.end54_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54

do.body45:                                        ; preds = %if.then38
  call void @do_trace_netlink_extack(ptr noundef nonnull @ets_qdisc_change.__msg.10) #11
  %tobool47.not = icmp eq ptr %extack, null
  br i1 %tobool47.not, label %do.body45.cleanup_crit_edge, label %if.then48

do.body45.cleanup_crit_edge:                      ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then48:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @ets_qdisc_change.__msg.10, ptr %extack, align 4
  br label %cleanup

if.end54:                                         ; preds = %if.then38.if.end54_crit_edge, %if.end34.if.end54_crit_edge
  %nstrict.0 = phi i32 [ %conv41, %if.then38.if.end54_crit_edge ], [ 0, %if.end34.if.end54_crit_edge ]
  %33 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %5, align 4
  %tobool56.not = icmp eq ptr %34, null
  br i1 %tobool56.not, label %if.end54.if.end64_crit_edge, label %if.then57

if.end54.if.end64_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end64

if.then57:                                        ; preds = %if.end54
  %add.ptr.i.i.i = getelementptr i8, ptr %34, i32 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %34, align 2
  %conv.i.i.i = zext i16 %36 to i32
  %sub.i.i.i = add nsw i32 %conv.i.i.i, -4
  %call2.i.i = call i32 @__nla_validate(ptr noundef %add.ptr.i.i.i, i32 noundef %sub.i.i.i, i32 noundef 6, ptr noundef nonnull @ets_priomap_policy, i32 noundef 31, ptr noundef %extack) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i330 = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i330, label %if.end.i, label %if.then57.cleanup_crit_edge

if.then57.cleanup_crit_edge:                      ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %if.then57
  %37 = ptrtoint ptr %34 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %34, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %38)
  %cmp.i91.i = icmp ugt i16 %38, 7
  br i1 %cmp.i91.i, label %land.lhs.true.i.preheader.i, label %if.end.i.if.end64_crit_edge

if.end.i.if.end64_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end64

land.lhs.true.i.preheader.i:                      ; preds = %if.end.i
  %conv.i.i331 = zext i16 %38 to i32
  %sub.i.i332 = add nsw i32 %conv.i.i331, -4
  br label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %if.end23.i.land.lhs.true.i.i_crit_edge, %land.lhs.true.i.preheader.i
  %attr.094.i = phi ptr [ %add.ptr.i88.i, %if.end23.i.land.lhs.true.i.i_crit_edge ], [ %add.ptr.i.i.i, %land.lhs.true.i.preheader.i ]
  %prio.093.i = phi i32 [ %inc.i, %if.end23.i.land.lhs.true.i.i_crit_edge ], [ 0, %land.lhs.true.i.preheader.i ]
  %rem.092.i = phi i32 [ %sub1.i.i, %if.end23.i.land.lhs.true.i.i_crit_edge ], [ %sub.i.i332, %land.lhs.true.i.preheader.i ]
  %39 = ptrtoint ptr %attr.094.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %attr.094.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %40)
  %cmp1.i.i = icmp ult i16 %40, 4
  %conv.i83.i = zext i16 %40 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.092.i, i32 %conv.i83.i)
  %cmp5.i.not.i = icmp ult i32 %rem.092.i, %conv.i83.i
  %or.cond.i = select i1 %cmp1.i.i, i1 true, i1 %cmp5.i.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.i.if.end64_crit_edge, label %for.body.i

land.lhs.true.i.i.if.end64_crit_edge:             ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end64

for.body.i:                                       ; preds = %land.lhs.true.i.i
  %nla_type.i.i = getelementptr inbounds %struct.nlattr, ptr %attr.094.i, i32 0, i32 1
  %41 = ptrtoint ptr %nla_type.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %nla_type.i.i, align 2
  %43 = and i16 %42, 16383
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %43)
  %cond.i = icmp eq i16 %43, 6
  br i1 %cond.i, label %sw.bb.i, label %land.end.i

sw.bb.i:                                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %prio.093.i)
  %exitcond.i = icmp eq i32 %prio.093.i, 16
  br i1 %exitcond.i, label %do.body.i333, label %if.end10.i

do.body.i333:                                     ; preds = %sw.bb.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @ets_qdisc_priomap_parse.__msg) #11
  %tobool7.not.i = icmp eq ptr %extack, null
  br i1 %tobool7.not.i, label %do.body.i333.cleanup_crit_edge, label %if.then8.i

do.body.i333.cleanup_crit_edge:                   ; preds = %do.body.i333
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then8.i:                                       ; preds = %do.body.i333
  call void @__sanitizer_cov_trace_pc() #13
  %44 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @ets_qdisc_priomap_parse.__msg, ptr %extack, align 4
  br label %cleanup

if.end10.i:                                       ; preds = %sw.bb.i
  %add.ptr.i.i84.i = getelementptr i8, ptr %attr.094.i, i32 4
  %45 = ptrtoint ptr %add.ptr.i.i84.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %add.ptr.i.i84.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %46, i8 %22)
  %cmp12.not.i = icmp ult i8 %46, %22
  br i1 %cmp12.not.i, label %if.end23.i, label %do.body15.i

do.body15.i:                                      ; preds = %if.end10.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @ets_qdisc_priomap_parse.__msg.11) #11
  %tobool17.not.i = icmp eq ptr %extack, null
  br i1 %tobool17.not.i, label %do.body15.i.cleanup_crit_edge, label %if.then18.i

do.body15.i.cleanup_crit_edge:                    ; preds = %do.body15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then18.i:                                      ; preds = %do.body15.i
  call void @__sanitizer_cov_trace_pc() #13
  %47 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @ets_qdisc_priomap_parse.__msg.11, ptr %extack, align 4
  br label %cleanup

if.end23.i:                                       ; preds = %if.end10.i
  %inc.i = add nuw nsw i32 %prio.093.i, 1
  %arrayidx.i = getelementptr i8, ptr %priomap, i32 %prio.093.i
  %48 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %46, ptr %arrayidx.i, align 1
  %49 = ptrtoint ptr %attr.094.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %attr.094.i, align 2
  %conv.i85.i = zext i16 %50 to i32
  %sub.i86.i = add nuw nsw i32 %conv.i85.i, 3
  %and.i87.i = and i32 %sub.i86.i, 131068
  %sub1.i.i = sub nsw i32 %rem.092.i, %and.i87.i
  %add.ptr.i88.i = getelementptr i8, ptr %attr.094.i, i32 %and.i87.i
  %cmp.i.i = icmp sgt i32 %sub1.i.i, 3
  br i1 %cmp.i.i, label %if.end23.i.land.lhs.true.i.i_crit_edge, label %if.end23.i.if.end64_crit_edge

if.end23.i.if.end64_crit_edge:                    ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end64

if.end23.i.land.lhs.true.i.i_crit_edge:           ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i.i

land.end.i:                                       ; preds = %for.body.i
  %.b82.i = load i1, ptr @ets_qdisc_priomap_parse.__already_done, align 1
  br i1 %.b82.i, label %land.end.i.cleanup_crit_edge, label %if.then30.i, !prof !77

land.end.i.cleanup_crit_edge:                     ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then30.i:                                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @ets_qdisc_priomap_parse.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 538, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end64:                                         ; preds = %if.end23.i.if.end64_crit_edge, %land.lhs.true.i.i.if.end64_crit_edge, %if.end.i.if.end64_crit_edge, %if.end54.if.end64_crit_edge
  %51 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %4, align 4
  %tobool66.not = icmp eq ptr %52, null
  br i1 %tobool66.not, label %if.end64.if.end74_crit_edge, label %if.then67

if.end64.if.end74_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end74

if.then67:                                        ; preds = %if.end64
  %add.ptr.i.i.i335 = getelementptr i8, ptr %52, i32 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %52, align 2
  %conv.i.i.i336 = zext i16 %54 to i32
  %sub.i.i.i337 = add nsw i32 %conv.i.i.i336, -4
  %call2.i.i338 = call i32 @__nla_validate(ptr noundef %add.ptr.i.i.i335, i32 noundef %sub.i.i.i337, i32 noundef 6, ptr noundef nonnull @ets_quanta_policy, i32 noundef 31, ptr noundef %extack) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i338)
  %cmp.i = icmp slt i32 %call2.i.i338, 0
  br i1 %cmp.i, label %if.then67.cleanup_crit_edge, label %if.end.i339

if.then67.cleanup_crit_edge:                      ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i339:                                      ; preds = %if.then67
  %55 = ptrtoint ptr %52 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %52, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %56)
  %cmp.i11.i = icmp ugt i16 %56, 7
  br i1 %cmp.i11.i, label %land.lhs.true.i.preheader.i342, label %if.end.i339.if.end74_crit_edge

if.end.i339.if.end74_crit_edge:                   ; preds = %if.end.i339
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end74

land.lhs.true.i.preheader.i342:                   ; preds = %if.end.i339
  %conv.i.i340 = zext i16 %56 to i32
  %sub.i.i341 = add nsw i32 %conv.i.i340, -4
  %umax.i = call i32 @llvm.umax.i32(i32 %nstrict.0, i32 %conv) #11
  br label %land.lhs.true.i.i346

land.lhs.true.i.i346:                             ; preds = %for.inc.i.land.lhs.true.i.i346_crit_edge, %land.lhs.true.i.preheader.i342
  %attr.014.i = phi ptr [ %add.ptr.i6.i, %for.inc.i.land.lhs.true.i.i346_crit_edge ], [ %add.ptr.i.i.i335, %land.lhs.true.i.preheader.i342 ]
  %band.013.i = phi i32 [ %inc.i357, %for.inc.i.land.lhs.true.i.i346_crit_edge ], [ %nstrict.0, %land.lhs.true.i.preheader.i342 ]
  %rem.012.i = phi i32 [ %sub1.i.i358, %for.inc.i.land.lhs.true.i.i346_crit_edge ], [ %sub.i.i341, %land.lhs.true.i.preheader.i342 ]
  %57 = ptrtoint ptr %attr.014.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %attr.014.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %58)
  %cmp1.i.i343 = icmp ult i16 %58, 4
  %conv.i2.i = zext i16 %58 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.012.i, i32 %conv.i2.i)
  %cmp5.i.not.i344 = icmp ult i32 %rem.012.i, %conv.i2.i
  %or.cond.i345 = select i1 %cmp1.i.i343, i1 true, i1 %cmp5.i.not.i344
  br i1 %or.cond.i345, label %land.lhs.true.i.i346.if.end74_crit_edge, label %for.body.i349

land.lhs.true.i.i346.if.end74_crit_edge:          ; preds = %land.lhs.true.i.i346
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end74

for.body.i349:                                    ; preds = %land.lhs.true.i.i346
  %nla_type.i.i347 = getelementptr inbounds %struct.nlattr, ptr %attr.014.i, i32 0, i32 1
  %59 = ptrtoint ptr %nla_type.i.i347 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %nla_type.i.i347, align 2
  %61 = and i16 %60, 16383
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %61)
  %cond.i348 = icmp eq i16 %61, 4
  br i1 %cond.i348, label %sw.bb.i350, label %land.end.i356

sw.bb.i350:                                       ; preds = %for.body.i349
  call void @__sanitizer_cov_trace_cmp4(i32 %band.013.i, i32 %umax.i)
  %exitcond.not.i = icmp eq i32 %band.013.i, %umax.i
  br i1 %exitcond.not.i, label %do.body.i352, label %if.end10.i355

do.body.i352:                                     ; preds = %sw.bb.i350
  call void @do_trace_netlink_extack(ptr noundef nonnull @ets_qdisc_quanta_parse.__msg) #11
  %tobool7.not.i351 = icmp eq ptr %extack, null
  br i1 %tobool7.not.i351, label %do.body.i352.cleanup_crit_edge, label %if.then8.i353

do.body.i352.cleanup_crit_edge:                   ; preds = %do.body.i352
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then8.i353:                                    ; preds = %do.body.i352
  call void @__sanitizer_cov_trace_pc() #13
  %62 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @ets_qdisc_quanta_parse.__msg, ptr %extack, align 4
  br label %cleanup

if.end10.i355:                                    ; preds = %sw.bb.i350
  %arrayidx.i354 = getelementptr i32, ptr %quanta, i32 %band.013.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %attr.014.i, i32 4
  %63 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %add.ptr.i.i.i.i, align 4
  %65 = ptrtoint ptr %arrayidx.i354 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %arrayidx.i354, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool.not.i.i = icmp eq i32 %64, 0
  br i1 %tobool.not.i.i, label %do.body.i.i, label %for.inc.i

do.body.i.i:                                      ; preds = %if.end10.i355
  call void @do_trace_netlink_extack(ptr noundef nonnull @ets_quantum_parse.__msg) #11
  %tobool1.not.i.i = icmp eq ptr %extack, null
  br i1 %tobool1.not.i.i, label %do.body.i.i.cleanup_crit_edge, label %if.then2.i.i

do.body.i.i.cleanup_crit_edge:                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then2.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %66 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @ets_quantum_parse.__msg, ptr %extack, align 4
  br label %cleanup

land.end.i356:                                    ; preds = %for.body.i349
  %.b1.i = load i1, ptr @ets_qdisc_quanta_parse.__already_done, align 1
  br i1 %.b1.i, label %land.end.i356.cleanup_crit_edge, label %if.then20.i, !prof !77

land.end.i356.cleanup_crit_edge:                  ; preds = %land.end.i356
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then20.i:                                      ; preds = %land.end.i356
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @ets_qdisc_quanta_parse.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 575, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

for.inc.i:                                        ; preds = %if.end10.i355
  %inc.i357 = add i32 %band.013.i, 1
  %sub.i4.i = add nuw nsw i32 %conv.i2.i, 3
  %and.i5.i = and i32 %sub.i4.i, 131068
  %sub1.i.i358 = sub nsw i32 %rem.012.i, %and.i5.i
  %add.ptr.i6.i = getelementptr i8, ptr %attr.014.i, i32 %and.i5.i
  %cmp.i.i359 = icmp sgt i32 %sub1.i.i358, 3
  br i1 %cmp.i.i359, label %for.inc.i.land.lhs.true.i.i346_crit_edge, label %for.inc.i.if.end74_crit_edge

for.inc.i.if.end74_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end74

for.inc.i.land.lhs.true.i.i346_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i.i346

if.end74:                                         ; preds = %for.inc.i.if.end74_crit_edge, %land.lhs.true.i.i346.if.end74_crit_edge, %if.end.i339.if.end74_crit_edge, %if.end64.if.end74_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %nstrict.0, i32 %conv)
  %cmp75374 = icmp ult i32 %nstrict.0, %conv
  br i1 %cmp75374, label %for.body.lr.ph, label %if.end74.for.cond84.preheader_crit_edge

if.end74.for.cond84.preheader_crit_edge:          ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond84.preheader

for.body.lr.ph:                                   ; preds = %if.end74
  %dev_queue.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  br label %for.body

for.cond84.preheader:                             ; preds = %for.inc.for.cond84.preheader_crit_edge, %if.end74.for.cond84.preheader_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %conv)
  %cmp85376 = icmp ult i32 %8, %conv
  br i1 %cmp85376, label %for.body87.lr.ph, label %for.cond84.preheader.for.end101_crit_edge

for.cond84.preheader.for.end101_crit_edge:        ; preds = %for.cond84.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end101

for.body87.lr.ph:                                 ; preds = %for.cond84.preheader
  %dev_queue = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %classes.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 11
  %sub.ptr.rhs.cast.i = ptrtoint ptr %classes.i to i32
  %handle.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 7
  br label %for.body87

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0375 = phi i32 [ %nstrict.0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx77 = getelementptr [16 x i32], ptr %quanta, i32 0, i32 %i.0375
  %67 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx77, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool78.not = icmp eq i32 %68, 0
  br i1 %tobool78.not, label %if.then79, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then79:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %69 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev_queue.i, align 8
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 128
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %72, i32 0, i32 20
  %73 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %mtu.i, align 4
  %hard_header_len.i = getelementptr inbounds %struct.net_device, ptr %72, i32 0, i32 19
  %75 = ptrtoint ptr %hard_header_len.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %hard_header_len.i, align 2
  %conv.i361 = zext i16 %76 to i32
  %add.i = add i32 %74, %conv.i361
  %77 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %add.i, ptr %arrayidx77, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then79, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0375, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.inc.for.cond84.preheader_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.cond84.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond84.preheader

for.body87:                                       ; preds = %for.inc99.for.body87_crit_edge, %for.body87.lr.ph
  %i.1377 = phi i32 [ %8, %for.body87.lr.ph ], [ %inc100, %for.inc99.for.body87_crit_edge ]
  %78 = ptrtoint ptr %dev_queue to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev_queue, align 8
  %arrayidx88 = getelementptr %struct.ets_sched, ptr %privdata.i, i32 0, i32 7, i32 %i.1377
  %sub.ptr.lhs.cast.i = ptrtoint ptr %arrayidx88 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 112
  %80 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %handle.i, align 32
  %and.i = and i32 %81, -65536
  %add.i362 = add nsw i32 %sub.ptr.div.i, 1
  %and1.i = and i32 %add.i362, 65535
  %or.i = or i32 %and.i, %and1.i
  %call90 = call ptr @qdisc_create_dflt(ptr noundef %79, ptr noundef nonnull @pfifo_qdisc_ops, i32 noundef %or.i, ptr noundef %extack) #11
  %arrayidx91 = getelementptr [16 x ptr], ptr %queues, i32 0, i32 %i.1377
  %82 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call90, ptr %arrayidx91, align 4
  %tobool93.not = icmp eq ptr %call90, null
  br i1 %tobool93.not, label %while.cond.preheader, label %for.inc99

while.cond.preheader:                             ; preds = %for.body87
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1377, i32 %8)
  %cmp95390 = icmp ugt i32 %i.1377, %8
  br i1 %cmp95390, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.cleanup_crit_edge

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %i.2391 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %i.1377, %while.cond.preheader.while.body_crit_edge ]
  %dec = add i32 %i.2391, -1
  %arrayidx97 = getelementptr [16 x ptr], ptr %queues, i32 0, i32 %dec
  %83 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx97, align 4
  call void @qdisc_put(ptr noundef %84) #11
  %cmp95 = icmp ugt i32 %dec, %8
  br i1 %cmp95, label %while.body.while.body_crit_edge, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

for.inc99:                                        ; preds = %for.body87
  %inc100 = add nsw i32 %i.1377, 1
  %exitcond394.not = icmp eq i32 %inc100, %conv
  br i1 %exitcond394.not, label %for.inc99.for.end101_crit_edge, label %for.inc99.for.body87_crit_edge

for.inc99.for.body87_crit_edge:                   ; preds = %for.inc99
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body87

for.inc99.for.end101_crit_edge:                   ; preds = %for.inc99
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end101

for.end101:                                       ; preds = %for.inc99.for.end101_crit_edge, %for.cond84.preheader.for.end101_crit_edge
  call fastcc void @sch_tree_lock(ptr noundef %sch)
  %85 = ptrtoint ptr %nbands to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %conv, ptr %nbands, align 16
  %nstrict104 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 5
  %86 = ptrtoint ptr %nstrict104 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %nstrict104, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %nstrict.0, i32 %87)
  %cmp105378 = icmp ult i32 %nstrict.0, %87
  br i1 %cmp105378, label %for.body107.lr.ph, label %for.end101.for.end121_crit_edge

for.end101.for.end121_crit_edge:                  ; preds = %for.end101
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end121

for.body107.lr.ph:                                ; preds = %for.end101
  %prev.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 1
  br label %for.body107

for.body107:                                      ; preds = %for.inc119.for.body107_crit_edge, %for.body107.lr.ph
  %i.3379 = phi i32 [ %nstrict.0, %for.body107.lr.ph ], [ %inc120, %for.inc119.for.body107_crit_edge ]
  %qdisc = getelementptr %struct.ets_sched, ptr %privdata.i, i32 0, i32 7, i32 %i.3379, i32 1
  %88 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %qdisc, align 8
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %89, i32 0, i32 17, i32 2
  %90 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %qlen, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool111.not = icmp eq i32 %91, 0
  br i1 %tobool111.not, label %for.body107.for.inc119_crit_edge, label %if.then112

for.body107.for.inc119_crit_edge:                 ; preds = %for.body107
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc119

if.then112:                                       ; preds = %for.body107
  %arrayidx109 = getelementptr %struct.ets_sched, ptr %privdata.i, i32 0, i32 7, i32 %i.3379
  %92 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %arrayidx109, ptr noundef %93, ptr noundef %privdata.i) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then112.list_add_tail.exit_crit_edge

if.then112.list_add_tail.exit_crit_edge:          ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #13
  %94 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %arrayidx109, ptr %prev.i, align 4
  %95 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %privdata.i, ptr %arrayidx109, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %arrayidx109, i32 0, i32 1
  %96 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %93, ptr %prev3.i.i, align 4
  %97 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile ptr %arrayidx109, ptr %93, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then112.list_add_tail.exit_crit_edge
  %arrayidx115 = getelementptr [16 x i32], ptr %quanta, i32 0, i32 %i.3379
  %98 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx115, align 4
  %deficit = getelementptr %struct.ets_sched, ptr %privdata.i, i32 0, i32 7, i32 %i.3379, i32 3
  %100 = ptrtoint ptr %deficit to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %deficit, align 16
  br label %for.inc119

for.inc119:                                       ; preds = %list_add_tail.exit, %for.body107.for.inc119_crit_edge
  %inc120 = add nuw i32 %i.3379, 1
  %101 = ptrtoint ptr %nstrict104 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %nstrict104, align 4
  %cmp105 = icmp ult i32 %inc120, %102
  br i1 %cmp105, label %for.inc119.for.body107_crit_edge, label %for.inc119.for.end121_crit_edge

for.inc119.for.end121_crit_edge:                  ; preds = %for.inc119
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end121

for.inc119.for.body107_crit_edge:                 ; preds = %for.inc119
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body107

for.end121:                                       ; preds = %for.inc119.for.end121_crit_edge, %for.end101.for.end121_crit_edge
  %103 = ptrtoint ptr %nbands to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %nbands, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %104, i32 %8)
  %cmp124381 = icmp ult i32 %104, %8
  br i1 %cmp124381, label %for.body126.lr.ph, label %for.end121.for.end146_crit_edge

for.end121.for.end146_crit_edge:                  ; preds = %for.end121
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end146

for.body126.lr.ph:                                ; preds = %for.end121
  %backlog3.i.i = getelementptr inbounds %struct.gnet_stats_queue, ptr %qstats.i.i, i32 0, i32 1
  br label %for.body126

for.body126:                                      ; preds = %if.end140.for.body126_crit_edge, %for.body126.lr.ph
  %i.4382 = phi i32 [ %104, %for.body126.lr.ph ], [ %inc145, %if.end140.for.body126_crit_edge ]
  %105 = ptrtoint ptr %nstrict104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %nstrict104, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.4382, i32 %106)
  %cmp128.not = icmp ult i32 %i.4382, %106
  br i1 %cmp128.not, label %for.body126.if.end140_crit_edge, label %land.lhs.true

for.body126.if.end140_crit_edge:                  ; preds = %for.body126
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end140

land.lhs.true:                                    ; preds = %for.body126
  %qdisc132 = getelementptr %struct.ets_sched, ptr %privdata.i, i32 0, i32 7, i32 %i.4382, i32 1
  %107 = ptrtoint ptr %qdisc132 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %qdisc132, align 8
  %qlen134 = getelementptr inbounds %struct.Qdisc, ptr %108, i32 0, i32 17, i32 2
  %109 = ptrtoint ptr %qlen134 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %qlen134, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool135.not = icmp eq i32 %110, 0
  br i1 %tobool135.not, label %land.lhs.true.if.end140_crit_edge, label %if.then136

land.lhs.true.if.end140_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end140

if.then136:                                       ; preds = %land.lhs.true
  %arrayidx131 = getelementptr %struct.ets_sched, ptr %privdata.i, i32 0, i32 7, i32 %i.4382
  %call.i.i363 = call zeroext i1 @__list_del_entry_valid(ptr noundef %arrayidx131) #11
  br i1 %call.i.i363, label %if.end.i.i364, label %if.then136.list_del.exit_crit_edge

if.then136.list_del.exit_crit_edge:               ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i364:                                    ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %arrayidx131, i32 0, i32 1
  %111 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %prev.i.i, align 4
  %113 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %arrayidx131, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %114, i32 0, i32 1
  %115 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %112, ptr %prev1.i.i.i, align 4
  %116 = ptrtoint ptr %112 to i32
  call void @__asan_store4_noabort(i32 %116)
  store volatile ptr %114, ptr %112, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i364, %if.then136.list_del.exit_crit_edge
  %117 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr inttoptr (i32 256 to ptr), ptr %arrayidx131, align 4
  %prev.i365 = getelementptr inbounds %struct.list_head, ptr %arrayidx131, i32 0, i32 1
  %118 = ptrtoint ptr %prev.i365 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i365, align 4
  br label %if.end140

if.end140:                                        ; preds = %list_del.exit, %land.lhs.true.if.end140_crit_edge, %for.body126.if.end140_crit_edge
  %qdisc143 = getelementptr %struct.ets_sched, ptr %privdata.i, i32 0, i32 7, i32 %i.4382, i32 1
  %119 = ptrtoint ptr %qdisc143 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %qdisc143, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %qstats.i.i) #11
  %121 = call ptr @memset(ptr %qstats.i.i, i32 0, i32 20)
  %cpu_qstats.i.i = getelementptr inbounds %struct.Qdisc, ptr %120, i32 0, i32 12
  %122 = ptrtoint ptr %cpu_qstats.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %cpu_qstats.i.i, align 4
  %qstats1.i.i = getelementptr inbounds %struct.Qdisc, ptr %120, i32 0, i32 19
  call void @gnet_stats_add_queue(ptr noundef nonnull %qstats.i.i, ptr noundef %123, ptr noundef %qstats1.i.i) #11
  %124 = ptrtoint ptr %qstats.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %qstats.i.i, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %120, i32 0, i32 17, i32 2
  %126 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %qlen.i.i.i, align 8
  %add.i.i = add i32 %127, %125
  %128 = ptrtoint ptr %backlog3.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %backlog3.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qstats.i.i) #11
  call void @qdisc_tree_reduce_backlog(ptr noundef %120, i32 noundef %add.i.i, i32 noundef %129) #11
  %inc145 = add i32 %i.4382, 1
  %exitcond395.not = icmp eq i32 %inc145, %8
  br i1 %exitcond395.not, label %for.end146thread-pre-split, label %if.end140.for.body126_crit_edge

if.end140.for.body126_crit_edge:                  ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body126

for.end146thread-pre-split:                       ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #13
  %130 = ptrtoint ptr %nbands to i32
  call void @__asan_load4_noabort(i32 %130)
  %.pr = load i32, ptr %nbands, align 16
  br label %for.end146

for.end146:                                       ; preds = %for.end146thread-pre-split, %for.end121.for.end146_crit_edge
  %131 = phi i32 [ %.pr, %for.end146thread-pre-split ], [ %104, %for.end121.for.end146_crit_edge ]
  %132 = ptrtoint ptr %nstrict104 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %nstrict.0, ptr %nstrict104, align 4
  %prio2band = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 6
  %133 = call ptr @memcpy(ptr %prio2band, ptr %priomap, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %cmp152384.not = icmp eq i32 %131, 0
  br i1 %cmp152384.not, label %for.end146.for.cond161.preheader_crit_edge, label %for.end146.for.body154_crit_edge

for.end146.for.body154_crit_edge:                 ; preds = %for.end146
  br label %for.body154

for.end146.for.cond161.preheader_crit_edge:       ; preds = %for.end146
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond161.preheader

for.cond161.preheader:                            ; preds = %for.body154.for.cond161.preheader_crit_edge, %for.end146.for.cond161.preheader_crit_edge
  %134 = ptrtoint ptr %nbands to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %nbands, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %135)
  %cmp163386 = icmp ult i32 %8, %135
  br i1 %cmp163386, label %for.cond161.preheader.for.body165_crit_edge, label %for.cond161.preheader.for.end182_crit_edge

for.cond161.preheader.for.end182_crit_edge:       ; preds = %for.cond161.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end182

for.cond161.preheader.for.body165_crit_edge:      ; preds = %for.cond161.preheader
  br label %for.body165

for.body154:                                      ; preds = %for.body154.for.body154_crit_edge, %for.end146.for.body154_crit_edge
  %i.5385 = phi i32 [ %inc159, %for.body154.for.body154_crit_edge ], [ 0, %for.end146.for.body154_crit_edge ]
  %arrayidx155 = getelementptr [16 x i32], ptr %quanta, i32 0, i32 %i.5385
  %136 = ptrtoint ptr %arrayidx155 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %arrayidx155, align 4
  %quantum = getelementptr %struct.ets_sched, ptr %privdata.i, i32 0, i32 7, i32 %i.5385, i32 2
  %138 = ptrtoint ptr %quantum to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %137, ptr %quantum, align 4
  %inc159 = add nuw i32 %i.5385, 1
  %exitcond396.not = icmp eq i32 %inc159, %131
  br i1 %exitcond396.not, label %for.body154.for.cond161.preheader_crit_edge, label %for.body154.for.body154_crit_edge

for.body154.for.body154_crit_edge:                ; preds = %for.body154
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body154

for.body154.for.cond161.preheader_crit_edge:      ; preds = %for.body154
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond161.preheader

for.body165:                                      ; preds = %for.inc180.for.body165_crit_edge, %for.cond161.preheader.for.body165_crit_edge
  %i.6387 = phi i32 [ %inc181, %for.inc180.for.body165_crit_edge ], [ %8, %for.cond161.preheader.for.body165_crit_edge ]
  %arrayidx166 = getelementptr [16 x ptr], ptr %queues, i32 0, i32 %i.6387
  %139 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %arrayidx166, align 4
  %qdisc169 = getelementptr %struct.ets_sched, ptr %privdata.i, i32 0, i32 7, i32 %i.6387, i32 1
  %141 = ptrtoint ptr %qdisc169 to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %140, ptr %qdisc169, align 8
  %cmp173.not = icmp eq ptr %140, @noop_qdisc
  br i1 %cmp173.not, label %for.body165.for.inc180_crit_edge, label %if.then175

for.body165.for.inc180_crit_edge:                 ; preds = %for.body165
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc180

if.then175:                                       ; preds = %for.body165
  call void @__sanitizer_cov_trace_pc() #13
  call void @qdisc_hash_add(ptr noundef %140, i1 noundef zeroext true) #11
  br label %for.inc180

for.inc180:                                       ; preds = %if.then175, %for.body165.for.inc180_crit_edge
  %inc181 = add nuw i32 %i.6387, 1
  %142 = ptrtoint ptr %nbands to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %nbands, align 16
  %cmp163 = icmp ult i32 %inc181, %143
  br i1 %cmp163, label %for.inc180.for.body165_crit_edge, label %for.inc180.for.end182_crit_edge

for.inc180.for.end182_crit_edge:                  ; preds = %for.inc180
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end182

for.inc180.for.body165_crit_edge:                 ; preds = %for.inc180
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body165

for.end182:                                       ; preds = %for.inc180.for.end182_crit_edge, %for.cond161.preheader.for.end182_crit_edge
  call fastcc void @sch_tree_unlock(ptr noundef %sch)
  call fastcc void @ets_offload_change(ptr noundef %sch)
  %144 = ptrtoint ptr %nbands to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %nbands, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %145, i32 %8)
  %cmp185388 = icmp ult i32 %145, %8
  br i1 %cmp185388, label %for.end182.for.body187_crit_edge, label %for.end182.cleanup_crit_edge

for.end182.cleanup_crit_edge:                     ; preds = %for.end182
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.end182.for.body187_crit_edge:                 ; preds = %for.end182
  br label %for.body187

for.body187:                                      ; preds = %for.body187.for.body187_crit_edge, %for.end182.for.body187_crit_edge
  %i.7389 = phi i32 [ %inc205, %for.body187.for.body187_crit_edge ], [ %145, %for.end182.for.body187_crit_edge ]
  %qdisc190 = getelementptr %struct.ets_sched, ptr %privdata.i, i32 0, i32 7, i32 %i.7389, i32 1
  %146 = ptrtoint ptr %qdisc190 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %qdisc190, align 8
  call void @qdisc_put(ptr noundef %147) #11
  %148 = ptrtoint ptr %qdisc190 to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr null, ptr %qdisc190, align 8
  %quantum196 = getelementptr %struct.ets_sched, ptr %privdata.i, i32 0, i32 7, i32 %i.7389, i32 2
  %149 = ptrtoint ptr %quantum196 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 0, ptr %quantum196, align 4
  %deficit199 = getelementptr %struct.ets_sched, ptr %privdata.i, i32 0, i32 7, i32 %i.7389, i32 3
  %150 = ptrtoint ptr %deficit199 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 0, ptr %deficit199, align 16
  %bstats = getelementptr %struct.ets_sched, ptr %privdata.i, i32 0, i32 7, i32 %i.7389, i32 5
  call void @gnet_stats_basic_sync_init(ptr noundef %bstats) #11
  %qstats = getelementptr %struct.ets_sched, ptr %privdata.i, i32 0, i32 7, i32 %i.7389, i32 6
  %151 = call ptr @memset(ptr %qstats, i32 0, i32 20)
  %inc205 = add i32 %i.7389, 1
  %exitcond397.not = icmp eq i32 %inc205, %8
  br i1 %exitcond397.not, label %for.body187.cleanup_crit_edge, label %for.body187.for.body187_crit_edge

for.body187.for.body187_crit_edge:                ; preds = %for.body187
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body187

for.body187.cleanup_crit_edge:                    ; preds = %for.body187
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.body187.cleanup_crit_edge, %for.end182.cleanup_crit_edge, %while.body.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %if.then20.i, %land.end.i356.cleanup_crit_edge, %if.then2.i.i, %do.body.i.i.cleanup_crit_edge, %if.then8.i353, %do.body.i352.cleanup_crit_edge, %if.then67.cleanup_crit_edge, %if.then30.i, %land.end.i.cleanup_crit_edge, %if.then18.i, %do.body15.i.cleanup_crit_edge, %if.then8.i, %do.body.i333.cleanup_crit_edge, %if.then57.cleanup_crit_edge, %if.then48, %do.body45.cleanup_crit_edge, %if.then29, %do.body26.cleanup_crit_edge, %if.then13, %do.body10.cleanup_crit_edge, %nla_parse_nested.exit.cleanup_crit_edge, %if.then2.i, %do.body.i.cleanup_crit_edge, %if.then3, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then3 ], [ -22, %do.body.cleanup_crit_edge ], [ %call6.i, %nla_parse_nested.exit.cleanup_crit_edge ], [ -22, %if.then13 ], [ -22, %do.body10.cleanup_crit_edge ], [ -22, %if.then29 ], [ -22, %do.body26.cleanup_crit_edge ], [ -22, %if.then48 ], [ -22, %do.body45.cleanup_crit_edge ], [ -22, %if.then2.i ], [ -22, %do.body.i.cleanup_crit_edge ], [ -22, %land.end.i.cleanup_crit_edge ], [ -22, %if.then30.i ], [ -22, %do.body15.i.cleanup_crit_edge ], [ -22, %if.then18.i ], [ -22, %do.body.i333.cleanup_crit_edge ], [ -22, %if.then8.i ], [ %call2.i.i, %if.then57.cleanup_crit_edge ], [ -22, %do.body.i.i.cleanup_crit_edge ], [ -22, %if.then2.i.i ], [ -22, %land.end.i356.cleanup_crit_edge ], [ -22, %if.then20.i ], [ -22, %do.body.i352.cleanup_crit_edge ], [ -22, %if.then8.i353 ], [ %call2.i.i338, %if.then67.cleanup_crit_edge ], [ -12, %while.cond.preheader.cleanup_crit_edge ], [ 0, %for.end182.cleanup_crit_edge ], [ -12, %while.body.cleanup_crit_edge ], [ 0, %for.body187.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %priomap) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %tb) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %queues) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %quanta) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ets_qdisc_dump(ptr noundef %sch, ptr noundef %skb) #2 align 64 {
entry:
  %tmp.i97 = alloca i8, align 1
  %tmp.i90 = alloca i32, align 4
  %tmp.i88 = alloca i8, align 1
  %tmp.i = alloca i8, align 1
  %qopt.i = alloca %struct.tc_ets_qopt_offload, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  call void @llvm.lifetime.start.p0(i64 164, ptr nonnull %qopt.i) #11
  %0 = getelementptr inbounds i8, ptr %qopt.i, i32 20
  %1 = call ptr @memset(ptr %0, i32 255, i32 144)
  %2 = ptrtoint ptr %qopt.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %qopt.i, align 4
  %handle.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 7
  %3 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %handle.i, align 32
  %handle1.i = getelementptr inbounds %struct.tc_ets_qopt_offload, ptr %qopt.i, i32 0, i32 1
  %5 = ptrtoint ptr %handle1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %handle1.i, align 4
  %parent.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 8
  %6 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %parent.i, align 4
  %parent2.i = getelementptr inbounds %struct.tc_ets_qopt_offload, ptr %qopt.i, i32 0, i32 2
  %8 = ptrtoint ptr %parent2.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %parent2.i, align 4
  %bstats.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18
  %9 = getelementptr inbounds %struct.tc_ets_qopt_offload, ptr %qopt.i, i32 0, i32 3
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %bstats.i, ptr %9, align 4
  %qstats.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19
  %qstats4.i = getelementptr inbounds %struct.tc_ets_qopt_offload, ptr %qopt.i, i32 0, i32 3, i32 0, i32 1
  %11 = ptrtoint ptr %qstats4.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %qstats.i, ptr %qstats4.i, align 4
  %call.i = call i32 @qdisc_offload_dump_helper(ptr noundef %sch, i32 noundef 15, ptr noundef nonnull %qopt.i) #11
  call void @llvm.lifetime.end.p0(i64 164, ptr nonnull %qopt.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %12 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tail.i.i, align 8
  %call1.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %tobool3.not113 = icmp eq ptr %13, null
  %tobool3.not = select i1 %cmp.i, i1 true, i1 %tobool3.not113
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %nbands = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %14 = ptrtoint ptr %nbands to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nbands, align 16
  %conv = trunc i32 %15 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #11
  %16 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv, ptr %tmp.i, align 1
  %call.i87 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %tmp.i) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i87)
  %tobool7.not = icmp eq i32 %call.i87, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.if.then.i.i_crit_edge

if.end5.if.then.i.i_crit_edge:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.end9:                                          ; preds = %if.end5
  %nstrict = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 5
  %17 = ptrtoint ptr %nstrict to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nstrict, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool10.not = icmp eq i32 %18, 0
  br i1 %tobool10.not, label %if.end9.if.end16_crit_edge, label %land.lhs.true

if.end9.if.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end9
  %conv12 = trunc i32 %18 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i88) #11
  %19 = ptrtoint ptr %tmp.i88 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv12, ptr %tmp.i88, align 1
  %call.i89 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %tmp.i88) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i88) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i89)
  %tobool14.not = icmp eq i32 %call.i89, 0
  br i1 %tobool14.not, label %land.lhs.true.if.end16_crit_edge, label %land.lhs.true.if.then.i.i_crit_edge

land.lhs.true.if.then.i.i_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.end16:                                         ; preds = %land.lhs.true.if.end16_crit_edge, %if.end9.if.end16_crit_edge
  %20 = ptrtoint ptr %nbands to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nbands, align 16
  %22 = ptrtoint ptr %nstrict to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nstrict, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp = icmp ugt i32 %21, %23
  br i1 %cmp, label %if.then20, label %if.end16.if.end34_crit_edge

if.end16.if.end34_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.then20:                                        ; preds = %if.end16
  %24 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tail.i.i, align 8
  %call1.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 32771, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %tobool22.not114 = icmp eq ptr %25, null
  %tobool22.not = select i1 %cmp.i.i, i1 true, i1 %tobool22.not114
  br i1 %tobool22.not, label %if.then20.if.then.i.i_crit_edge, label %if.end24

if.then20.if.then.i.i_crit_edge:                  ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.end24:                                         ; preds = %if.then20
  %26 = ptrtoint ptr %nstrict to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nstrict, align 4
  %28 = ptrtoint ptr %nbands to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nbands, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp27116 = icmp ult i32 %27, %29
  br i1 %cmp27116, label %if.end24.for.body_crit_edge, label %if.end24.for.end_crit_edge

if.end24.for.end_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end24.for.body_crit_edge:                      ; preds = %if.end24
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %band.0117, 1
  %30 = ptrtoint ptr %nbands to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nbands, align 16
  %cmp27 = icmp ult i32 %inc, %31
  br i1 %cmp27, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end24.for.body_crit_edge
  %band.0117 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ %27, %if.end24.for.body_crit_edge ]
  %quantum = getelementptr %struct.ets_sched, ptr %privdata.i, i32 0, i32 7, i32 %band.0117, i32 2
  %32 = ptrtoint ptr %quantum to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %quantum, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i90) #11
  %34 = ptrtoint ptr %tmp.i90 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %tmp.i90, align 4
  %call.i91 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i90) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i90) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i91)
  %tobool30.not = icmp eq i32 %call.i91, 0
  br i1 %tobool30.not, label %for.cond, label %for.body.if.then.i.i_crit_edge

for.body.if.then.i.i_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.end24.for.end_crit_edge
  %35 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %36 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %25 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %37 = ptrtoint ptr %25 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv.i, ptr %25, align 2
  br label %if.end34

if.end34:                                         ; preds = %for.end, %if.end16.if.end34_crit_edge
  %38 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tail.i.i, align 8
  %call1.i.i94 = call i32 @nla_put(ptr noundef %skb, i32 noundef 32773, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i94)
  %cmp.i.i95 = icmp slt i32 %call1.i.i94, 0
  %tobool36.not120 = icmp eq ptr %39, null
  %tobool36.not = select i1 %cmp.i.i95, i1 true, i1 %tobool36.not120
  br i1 %tobool36.not, label %if.end34.if.then.i.i_crit_edge, label %if.end34.for.body42_crit_edge

if.end34.for.body42_crit_edge:                    ; preds = %if.end34
  br label %for.body42

if.end34.if.then.i.i_crit_edge:                   ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

for.cond39:                                       ; preds = %for.body42
  %inc49 = add nuw nsw i32 %prio.0118, 1
  %exitcond.not = icmp eq i32 %inc49, 16
  br i1 %exitcond.not, label %for.end50, label %for.cond39.for.body42_crit_edge

for.cond39.for.body42_crit_edge:                  ; preds = %for.cond39
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body42

for.body42:                                       ; preds = %for.cond39.for.body42_crit_edge, %if.end34.for.body42_crit_edge
  %prio.0118 = phi i32 [ %inc49, %for.cond39.for.body42_crit_edge ], [ 0, %if.end34.for.body42_crit_edge ]
  %arrayidx43 = getelementptr %struct.ets_sched, ptr %privdata.i, i32 0, i32 5, i32 %prio.0118
  %40 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx43, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i97) #11
  %42 = ptrtoint ptr %tmp.i97 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %tmp.i97, align 1
  %call.i98 = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 1, ptr noundef nonnull %tmp.i97) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i97) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i98)
  %tobool45.not = icmp eq i32 %call.i98, 0
  br i1 %tobool45.not, label %for.cond39, label %for.body42.if.then.i.i_crit_edge

for.body42.if.then.i.i_crit_edge:                 ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

for.end50:                                        ; preds = %for.cond39
  call void @__sanitizer_cov_trace_pc() #13
  %43 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i100 = ptrtoint ptr %44 to i32
  %sub.ptr.rhs.cast.i101 = ptrtoint ptr %39 to i32
  %sub.ptr.sub.i102 = sub i32 %sub.ptr.lhs.cast.i100, %sub.ptr.rhs.cast.i101
  %conv.i103 = trunc i32 %sub.ptr.sub.i102 to i16
  %45 = ptrtoint ptr %39 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv.i103, ptr %39, align 2
  %len.i104 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %46 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i106 = ptrtoint ptr %46 to i32
  %sub.ptr.rhs.cast.i107 = ptrtoint ptr %13 to i32
  %sub.ptr.sub.i108 = sub i32 %sub.ptr.lhs.cast.i106, %sub.ptr.rhs.cast.i107
  %conv.i109 = trunc i32 %sub.ptr.sub.i108 to i16
  %47 = ptrtoint ptr %13 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv.i109, ptr %13, align 2
  %48 = ptrtoint ptr %len.i104 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %len.i104, align 4
  br label %cleanup

if.then.i.i:                                      ; preds = %for.body42.if.then.i.i_crit_edge, %if.end34.if.then.i.i_crit_edge, %for.body.if.then.i.i_crit_edge, %if.then20.if.then.i.i_crit_edge, %land.lhs.true.if.then.i.i_crit_edge, %if.end5.if.then.i.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %50 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i111 = icmp ugt ptr %51, %13
  br i1 %cmp.i.i111, label %do.end.i.i, label %if.then.i.i.if.end.i.i_crit_edge, !prof !78

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 991, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %52 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %13 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %53 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %for.end50, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %49, %for.end50 ], [ %call.i, %entry.cleanup_crit_edge ], [ -90, %if.end.i.i ], [ -90, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ets_class_graft(ptr noundef %sch, i32 noundef %arg, ptr noundef %new, ptr nocapture noundef writeonly %old, ptr noundef %extack) #2 align 64 {
entry:
  %qopt.i = alloca %struct.tc_ets_qopt_offload, align 4
  %qstats.i.i.i = alloca %struct.gnet_stats_queue, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %sub.i = add i32 %arg, -1
  %tobool.not = icmp eq ptr %new, null
  br i1 %tobool.not, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then:                                          ; preds = %entry
  %arrayidx.i = getelementptr %struct.ets_sched, ptr %privdata.i.i, i32 0, i32 7, i32 %sub.i
  %dev_queue = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %0 = ptrtoint ptr %dev_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_queue, align 8
  %classes.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 11
  %sub.ptr.lhs.cast.i = ptrtoint ptr %arrayidx.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %classes.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 112
  %handle.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 7
  %2 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %handle.i, align 32
  %and.i = and i32 %3, -65536
  %add.i = add nsw i32 %sub.ptr.div.i, 1
  %and1.i = and i32 %add.i, 65535
  %or.i = or i32 %and.i, %and1.i
  %call2 = tail call ptr @qdisc_create_dflt(ptr noundef %1, ptr noundef nonnull @pfifo_qdisc_ops, i32 noundef %or.i, ptr noundef null) #11
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.then.if.end5_crit_edge, label %if.else

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @qdisc_hash_add(ptr noundef nonnull %call2, i1 noundef zeroext true) #11
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %new.addr.0 = phi ptr [ %new, %entry.if.end5_crit_edge ], [ %call2, %if.else ], [ @noop_qdisc, %if.then.if.end5_crit_edge ]
  %qdisc = getelementptr %struct.ets_sched, ptr %privdata.i.i, i32 0, i32 7, i32 %sub.i, i32 1
  %flags.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 2
  %4 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.end5.sch_tree_lock.exit.i_crit_edge

if.end5.sch_tree_lock.exit.i_crit_edge:           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %sch_tree_lock.exit.i

if.else.i.i:                                      ; preds = %if.end5
  %dev_queue.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %6 = ptrtoint ptr %dev_queue.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_queue.i.i.i.i, align 8
  %qdisc_sleeping.i.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %qdisc_sleeping.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %qdisc_sleeping.i.i.i.i, align 4
  %call1.i.i.i = tail call i32 @rtnl_is_locked() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.rhs.i.i.i, label %if.else.i.i.sch_tree_lock.exit.i_crit_edge

if.else.i.i.sch_tree_lock.exit.i_crit_edge:       ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sch_tree_lock.exit.i

land.rhs.i.i.i:                                   ; preds = %if.else.i.i
  %.b41.i.i.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i.i, label %land.rhs.i.i.i.sch_tree_lock.exit.i_crit_edge, label %if.then.i.i.i, !prof !77

land.rhs.i.i.i.sch_tree_lock.exit.i_crit_edge:    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sch_tree_lock.exit.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 596) #11
  br label %sch_tree_lock.exit.i

sch_tree_lock.exit.i:                             ; preds = %if.then.i.i.i, %land.rhs.i.i.i.sch_tree_lock.exit.i_crit_edge, %if.else.i.i.sch_tree_lock.exit.i_crit_edge, %if.end5.sch_tree_lock.exit.i_crit_edge
  %.sink.i.i = phi ptr [ %sch, %if.end5.sch_tree_lock.exit.i_crit_edge ], [ %9, %if.else.i.i.sch_tree_lock.exit.i_crit_edge ], [ %9, %land.rhs.i.i.i.sch_tree_lock.exit.i_crit_edge ], [ %9, %if.then.i.i.i ]
  %lock.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %.sink.i.i, i32 0, i32 17, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i.i.i.i) #11
  %10 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %qdisc, align 4
  store ptr %new.addr.0, ptr %qdisc, align 4
  %cmp.not.i = icmp eq ptr %11, null
  br i1 %cmp.not.i, label %sch_tree_lock.exit.i.if.end.i_crit_edge, label %if.then.i

sch_tree_lock.exit.i.if.end.i_crit_edge:          ; preds = %sch_tree_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %sch_tree_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %qstats.i.i.i) #11
  %12 = call ptr @memset(ptr %qstats.i.i.i, i32 0, i32 20)
  %cpu_qstats.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %11, i32 0, i32 12
  %13 = ptrtoint ptr %cpu_qstats.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cpu_qstats.i.i.i, align 4
  %qstats1.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %11, i32 0, i32 19
  call void @gnet_stats_add_queue(ptr noundef nonnull %qstats.i.i.i, ptr noundef %14, ptr noundef %qstats1.i.i.i) #11
  %15 = ptrtoint ptr %qstats.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %qstats.i.i.i, align 4
  %qlen.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %11, i32 0, i32 17, i32 2
  %17 = ptrtoint ptr %qlen.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %qlen.i.i.i.i, align 8
  %add.i.i.i = add i32 %18, %16
  %backlog3.i.i.i = getelementptr inbounds %struct.gnet_stats_queue, ptr %qstats.i.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %backlog3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %backlog3.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qstats.i.i.i) #11
  call void @qdisc_reset(ptr noundef nonnull %11) #11
  call void @qdisc_tree_reduce_backlog(ptr noundef nonnull %11, i32 noundef %add.i.i.i, i32 noundef %20) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sch_tree_lock.exit.i.if.end.i_crit_edge
  %21 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags.i.i, align 8
  %and.i6.i = and i32 %22, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i6.i)
  %tobool.not.i7.i = icmp eq i32 %and.i6.i, 0
  br i1 %tobool.not.i7.i, label %if.else.i12.i, label %if.end.i.qdisc_replace.exit_crit_edge

if.end.i.qdisc_replace.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qdisc_replace.exit

if.else.i12.i:                                    ; preds = %if.end.i
  %dev_queue.i.i.i8.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %23 = ptrtoint ptr %dev_queue.i.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev_queue.i.i.i8.i, align 8
  %qdisc_sleeping.i.i.i9.i = getelementptr inbounds %struct.netdev_queue, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %qdisc_sleeping.i.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %qdisc_sleeping.i.i.i9.i, align 4
  %call1.i.i10.i = call i32 @rtnl_is_locked() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i10.i)
  %tobool.not.i.i11.i = icmp eq i32 %call1.i.i10.i, 0
  br i1 %tobool.not.i.i11.i, label %land.rhs.i.i14.i, label %if.else.i12.i.qdisc_replace.exit_crit_edge

if.else.i12.i.qdisc_replace.exit_crit_edge:       ; preds = %if.else.i12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qdisc_replace.exit

land.rhs.i.i14.i:                                 ; preds = %if.else.i12.i
  %.b41.i.i13.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i13.i, label %land.rhs.i.i14.i.qdisc_replace.exit_crit_edge, label %if.then.i.i15.i, !prof !77

land.rhs.i.i14.i.qdisc_replace.exit_crit_edge:    ; preds = %land.rhs.i.i14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qdisc_replace.exit

if.then.i.i15.i:                                  ; preds = %land.rhs.i.i14.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 596) #11
  br label %qdisc_replace.exit

qdisc_replace.exit:                               ; preds = %if.then.i.i15.i, %land.rhs.i.i14.i.qdisc_replace.exit_crit_edge, %if.else.i12.i.qdisc_replace.exit_crit_edge, %if.end.i.qdisc_replace.exit_crit_edge
  %.sink.i16.i = phi ptr [ %sch, %if.end.i.qdisc_replace.exit_crit_edge ], [ %26, %if.else.i12.i.qdisc_replace.exit_crit_edge ], [ %26, %land.rhs.i.i14.i.qdisc_replace.exit_crit_edge ], [ %26, %if.then.i.i15.i ]
  %lock.i.i.i17.i = getelementptr inbounds %struct.Qdisc, ptr %.sink.i16.i, i32 0, i32 17, i32 3
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i.i17.i) #11
  %27 = ptrtoint ptr %old to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %11, ptr %old, align 4
  %dev_queue.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %28 = ptrtoint ptr %dev_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev_queue.i.i, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 128
  call void @llvm.lifetime.start.p0(i64 164, ptr nonnull %qopt.i) #11
  %32 = getelementptr inbounds i8, ptr %qopt.i, i32 12
  %33 = call ptr @memset(ptr %32, i32 255, i32 152)
  %34 = ptrtoint ptr %qopt.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 3, ptr %qopt.i, align 4
  %handle.i18 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 7
  %35 = ptrtoint ptr %handle.i18 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %handle.i18, align 32
  %handle1.i = getelementptr inbounds %struct.tc_ets_qopt_offload, ptr %qopt.i, i32 0, i32 1
  %37 = ptrtoint ptr %handle1.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %handle1.i, align 4
  %parent.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 8
  %38 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %parent.i, align 4
  %parent2.i = getelementptr inbounds %struct.tc_ets_qopt_offload, ptr %qopt.i, i32 0, i32 2
  %40 = ptrtoint ptr %parent2.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %parent2.i, align 4
  %41 = trunc i32 %arg to i8
  %conv.i = add i8 %41, -1
  %42 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv.i, ptr %32, align 4
  %handle3.i = getelementptr inbounds %struct.Qdisc, ptr %new.addr.0, i32 0, i32 7
  %43 = ptrtoint ptr %handle3.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %handle3.i, align 32
  %child_handle.i = getelementptr inbounds %struct.tc_ets_qopt_offload, ptr %qopt.i, i32 0, i32 3, i32 0, i32 1
  %45 = ptrtoint ptr %child_handle.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %child_handle.i, align 4
  call void @qdisc_offload_graft_helper(ptr noundef %31, ptr noundef %sch, ptr noundef %new.addr.0, ptr noundef %11, i32 noundef 15, ptr noundef nonnull %qopt.i, ptr noundef %extack) #11
  call void @llvm.lifetime.end.p0(i64 164, ptr nonnull %qopt.i) #11
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @ets_class_leaf(ptr nocapture noundef readonly %sch, i32 noundef %arg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %sub.i = add i32 %arg, -1
  %qdisc = getelementptr %struct.ets_sched, ptr %privdata.i.i, i32 0, i32 7, i32 %sub.i, i32 1
  %0 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qdisc, align 8
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ets_class_qlen_notify(ptr noundef %sch, i32 noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %sub.i = add i32 %arg, -1
  %arrayidx.i = getelementptr %struct.ets_sched, ptr %privdata.i.i, i32 0, i32 7, i32 %sub.i
  %classes.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 11
  %sub.ptr.lhs.cast.i = ptrtoint ptr %arrayidx.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %classes.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 112
  %nstrict.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 5
  %0 = ptrtoint ptr %nstrict.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nstrict.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.div.i, i32 %1)
  %cmp.i = icmp ult i32 %sub.ptr.div.i, %1
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %2 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qlen, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %arrayidx.i) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %arrayidx.i, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %arrayidx.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %arrayidx.i, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %if.end

if.end:                                           ; preds = %list_del.exit, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ets_class_find(ptr nocapture noundef readonly %sch, i32 noundef %classid) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %classid, 65535
  %sub = add nsw i32 %and, -1
  %nbands = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %0 = ptrtoint ptr %nbands to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nbands, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %1)
  %cmp.not = icmp ult i32 %sub, %1
  %and. = select i1 %cmp.not, i32 %and, i32 0
  ret i32 %and.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ets_class_change(ptr noundef %sch, i32 noundef %classid, i32 noundef %parentid, ptr nocapture noundef readonly %tca, ptr nocapture noundef readonly %arg, ptr noundef %extack) #2 align 64 {
entry:
  %qopt.i = alloca %struct.tc_ets_qopt_offload, align 4
  %tb = alloca [7 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arg, align 4
  %privdata.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %sub.i = add i32 %1, -1
  %arrayidx.i = getelementptr %struct.ets_sched, ptr %privdata.i.i, i32 0, i32 7, i32 %sub.i
  %arrayidx = getelementptr ptr, ptr %tca, i32 2
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %tb) #11
  %4 = getelementptr inbounds [7 x ptr], ptr %tb, i32 0, i32 4
  %tobool.not = icmp eq ptr %arrayidx.i, null
  %5 = call ptr @memset(ptr %tb, i32 255, i32 28)
  br i1 %tobool.not, label %do.body, label %if.end4

do.body:                                          ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ets_class_change.__msg) #11
  %tobool2.not = icmp eq ptr %extack, null
  br i1 %tobool2.not, label %do.body.cleanup_crit_edge, label %if.then3

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @ets_class_change.__msg, ptr %extack, align 4
  br label %cleanup

if.end4:                                          ; preds = %entry
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %do.body7, label %if.end15

do.body7:                                         ; preds = %if.end4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ets_class_change.__msg.2) #11
  %tobool9.not = icmp eq ptr %extack, null
  br i1 %tobool9.not, label %do.body7.cleanup_crit_edge, label %if.then10

do.body7.cleanup_crit_edge:                       ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @ets_class_change.__msg.2, ptr %extack, align 4
  br label %cleanup

if.end15:                                         ; preds = %if.end4
  %nla_type.i = getelementptr inbounds %struct.nlattr, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %nla_type.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %nla_type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %9)
  %tobool.not.i = icmp sgt i16 %9, -1
  br i1 %tobool.not.i, label %do.body.i, label %nla_parse_nested.exit

do.body.i:                                        ; preds = %if.end15
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nla_parse_nested.__msg) #11
  %tobool1.not.i = icmp eq ptr %extack, null
  br i1 %tobool1.not.i, label %do.body.i.cleanup_crit_edge, label %if.then2.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then2.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @nla_parse_nested.__msg, ptr %extack, align 4
  %bad_attr.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %11 = ptrtoint ptr %bad_attr.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %3, ptr %bad_attr.i, align 4
  %policy3.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %12 = ptrtoint ptr %policy3.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %policy3.i, align 4
  br label %cleanup

nla_parse_nested.exit:                            ; preds = %if.end15
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 4
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %3, align 2
  %conv.i.i = zext i16 %14 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call6.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 6, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @ets_class_policy, i32 noundef 31, ptr noundef %extack) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp = icmp slt i32 %call6.i, 0
  br i1 %cmp, label %nla_parse_nested.exit.cleanup_crit_edge, label %if.end18

nla_parse_nested.exit.cleanup_crit_edge:          ; preds = %nla_parse_nested.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end18:                                         ; preds = %nla_parse_nested.exit
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %4, align 4
  %tobool20.not = icmp eq ptr %16, null
  br i1 %tobool20.not, label %if.end18.cleanup_crit_edge, label %if.end22

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end22:                                         ; preds = %if.end18
  %classes.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 11
  %sub.ptr.lhs.cast.i = ptrtoint ptr %arrayidx.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %classes.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 112
  %nstrict.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 5
  %17 = ptrtoint ptr %nstrict.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nstrict.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.div.i, i32 %18)
  %cmp.i = icmp ult i32 %sub.ptr.div.i, %18
  br i1 %cmp.i, label %do.body25, label %if.end33

do.body25:                                        ; preds = %if.end22
  call void @do_trace_netlink_extack(ptr noundef nonnull @ets_class_change.__msg.3) #11
  %tobool27.not = icmp eq ptr %extack, null
  br i1 %tobool27.not, label %do.body25.cleanup_crit_edge, label %if.then28

do.body25.cleanup_crit_edge:                      ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then28:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @ets_class_change.__msg.3, ptr %extack, align 4
  br label %cleanup

if.end33:                                         ; preds = %if.end22
  %add.ptr.i.i.i = getelementptr i8, ptr %16, i32 4
  %20 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i63 = icmp eq i32 %21, 0
  br i1 %tobool.not.i63, label %do.body.i65, label %if.end38

do.body.i65:                                      ; preds = %if.end33
  call void @do_trace_netlink_extack(ptr noundef nonnull @ets_quantum_parse.__msg) #11
  %tobool1.not.i64 = icmp eq ptr %extack, null
  br i1 %tobool1.not.i64, label %do.body.i65.cleanup_crit_edge, label %if.then2.i66

do.body.i65.cleanup_crit_edge:                    ; preds = %do.body.i65
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then2.i66:                                     ; preds = %do.body.i65
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @ets_quantum_parse.__msg, ptr %extack, align 4
  br label %cleanup

if.end38:                                         ; preds = %if.end33
  %flags.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 2
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %24, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i68 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i68, label %if.else.i, label %if.end38.sch_tree_lock.exit_crit_edge

if.end38.sch_tree_lock.exit_crit_edge:            ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %sch_tree_lock.exit

if.else.i:                                        ; preds = %if.end38
  %dev_queue.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %25 = ptrtoint ptr %dev_queue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev_queue.i.i.i, align 8
  %qdisc_sleeping.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %qdisc_sleeping.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %qdisc_sleeping.i.i.i, align 4
  %call1.i.i = call i32 @rtnl_is_locked() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i, label %if.else.i.sch_tree_lock.exit_crit_edge

if.else.i.sch_tree_lock.exit_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sch_tree_lock.exit

land.rhs.i.i:                                     ; preds = %if.else.i
  %.b41.i.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i, label %land.rhs.i.i.sch_tree_lock.exit_crit_edge, label %if.then.i.i, !prof !77

land.rhs.i.i.sch_tree_lock.exit_crit_edge:        ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sch_tree_lock.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 596) #11
  br label %sch_tree_lock.exit

sch_tree_lock.exit:                               ; preds = %if.then.i.i, %land.rhs.i.i.sch_tree_lock.exit_crit_edge, %if.else.i.sch_tree_lock.exit_crit_edge, %if.end38.sch_tree_lock.exit_crit_edge
  %.sink.i = phi ptr [ %sch, %if.end38.sch_tree_lock.exit_crit_edge ], [ %28, %if.else.i.sch_tree_lock.exit_crit_edge ], [ %28, %land.rhs.i.i.sch_tree_lock.exit_crit_edge ], [ %28, %if.then.i.i ]
  %lock.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %.sink.i, i32 0, i32 17, i32 3
  call void @_raw_spin_lock_bh(ptr noundef %lock.i.i.i) #11
  %quantum39 = getelementptr %struct.ets_sched, ptr %privdata.i.i, i32 0, i32 7, i32 %sub.i, i32 2
  %29 = ptrtoint ptr %quantum39 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %21, ptr %quantum39, align 4
  %30 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags.i, align 8
  %and.i70 = and i32 %31, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i70)
  %tobool.not.i71 = icmp eq i32 %and.i70, 0
  br i1 %tobool.not.i71, label %if.else.i76, label %sch_tree_lock.exit.sch_tree_unlock.exit_crit_edge

sch_tree_lock.exit.sch_tree_unlock.exit_crit_edge: ; preds = %sch_tree_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sch_tree_unlock.exit

if.else.i76:                                      ; preds = %sch_tree_lock.exit
  %dev_queue.i.i.i72 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %32 = ptrtoint ptr %dev_queue.i.i.i72 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev_queue.i.i.i72, align 8
  %qdisc_sleeping.i.i.i73 = getelementptr inbounds %struct.netdev_queue, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %qdisc_sleeping.i.i.i73 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %qdisc_sleeping.i.i.i73, align 4
  %call1.i.i74 = call i32 @rtnl_is_locked() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i74)
  %tobool.not.i.i75 = icmp eq i32 %call1.i.i74, 0
  br i1 %tobool.not.i.i75, label %land.rhs.i.i78, label %if.else.i76.sch_tree_unlock.exit_crit_edge

if.else.i76.sch_tree_unlock.exit_crit_edge:       ; preds = %if.else.i76
  call void @__sanitizer_cov_trace_pc() #13
  br label %sch_tree_unlock.exit

land.rhs.i.i78:                                   ; preds = %if.else.i76
  %.b41.i.i77 = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i77, label %land.rhs.i.i78.sch_tree_unlock.exit_crit_edge, label %if.then.i.i79, !prof !77

land.rhs.i.i78.sch_tree_unlock.exit_crit_edge:    ; preds = %land.rhs.i.i78
  call void @__sanitizer_cov_trace_pc() #13
  br label %sch_tree_unlock.exit

if.then.i.i79:                                    ; preds = %land.rhs.i.i78
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 596) #11
  br label %sch_tree_unlock.exit

sch_tree_unlock.exit:                             ; preds = %if.then.i.i79, %land.rhs.i.i78.sch_tree_unlock.exit_crit_edge, %if.else.i76.sch_tree_unlock.exit_crit_edge, %sch_tree_lock.exit.sch_tree_unlock.exit_crit_edge
  %.sink.i80 = phi ptr [ %sch, %sch_tree_lock.exit.sch_tree_unlock.exit_crit_edge ], [ %35, %if.else.i76.sch_tree_unlock.exit_crit_edge ], [ %35, %land.rhs.i.i78.sch_tree_unlock.exit_crit_edge ], [ %35, %if.then.i.i79 ]
  %lock.i.i.i81 = getelementptr inbounds %struct.Qdisc, ptr %.sink.i80, i32 0, i32 17, i32 3
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i.i81) #11
  %dev_queue.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %36 = ptrtoint ptr %dev_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev_queue.i.i, align 8
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 128
  call void @llvm.lifetime.start.p0(i64 164, ptr nonnull %qopt.i) #11
  %40 = getelementptr inbounds i8, ptr %qopt.i, i32 32
  %41 = call ptr @memset(ptr %40, i32 255, i32 128)
  %features.i.i = getelementptr inbounds %struct.net_device, ptr %39, i32 0, i32 23
  %42 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %features.i.i, align 16
  %and.i.i = and i64 %43, 562949953421312
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sch_tree_unlock.exit.ets_offload_change.exit_crit_edge, label %lor.lhs.false.i

sch_tree_unlock.exit.ets_offload_change.exit_crit_edge: ; preds = %sch_tree_unlock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %ets_offload_change.exit

lor.lhs.false.i:                                  ; preds = %sch_tree_unlock.exit
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %39, i32 0, i32 16
  %44 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %netdev_ops.i, align 8
  %ndo_setup_tc.i = getelementptr inbounds %struct.net_device_ops, ptr %45, i32 0, i32 42
  %46 = ptrtoint ptr %ndo_setup_tc.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ndo_setup_tc.i, align 4
  %tobool.not.i83 = icmp eq ptr %47, null
  br i1 %tobool.not.i83, label %lor.lhs.false.i.ets_offload_change.exit_crit_edge, label %if.end.i

lor.lhs.false.i.ets_offload_change.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ets_offload_change.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %48 = ptrtoint ptr %qopt.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %qopt.i, align 4
  %handle.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 7
  %49 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %handle.i, align 32
  %handle3.i = getelementptr inbounds %struct.tc_ets_qopt_offload, ptr %qopt.i, i32 0, i32 1
  %51 = ptrtoint ptr %handle3.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %handle3.i, align 4
  %parent.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 8
  %52 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %parent.i, align 4
  %parent4.i = getelementptr inbounds %struct.tc_ets_qopt_offload, ptr %qopt.i, i32 0, i32 2
  %54 = ptrtoint ptr %parent4.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %parent4.i, align 4
  %nbands.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %55 = ptrtoint ptr %nbands.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %nbands.i, align 16
  %57 = getelementptr inbounds %struct.tc_ets_qopt_offload, ptr %qopt.i, i32 0, i32 3
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %56, ptr %57, align 4
  %qstats.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19
  %qstats5.i = getelementptr inbounds %struct.tc_ets_qopt_offload, ptr %qopt.i, i32 0, i32 3, i32 0, i32 4
  %59 = ptrtoint ptr %qstats5.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %qstats.i, ptr %qstats5.i, align 4
  %priomap.i = getelementptr inbounds %struct.tc_ets_qopt_offload, ptr %qopt.i, i32 0, i32 3, i32 0, i32 1
  %prio2band.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 6
  %60 = call ptr @memcpy(ptr %priomap.i, ptr %prio2band.i, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp58.not.i = icmp eq i32 %56, 0
  br i1 %cmp58.not.i, label %if.end.i.for.end21.i_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.for.end21.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end21.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.060.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %q_sum.059.i = phi i32 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %quantum7.i = getelementptr %struct.ets_sched, ptr %privdata.i.i, i32 0, i32 7, i32 %i.060.i, i32 2
  %61 = ptrtoint ptr %quantum7.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %quantum7.i, align 4
  %add.i = add i32 %62, %q_sum.059.i
  %inc.i = add nuw i32 %i.060.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %56
  br i1 %exitcond.not.i, label %for.body.i.for.body11.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.for.body11.i_crit_edge:                ; preds = %for.body.i
  br label %for.body11.i

for.body11.i:                                     ; preds = %cond.end.i.for.body11.i_crit_edge, %for.body.i.for.body11.i_crit_edge
  %i.164.i = phi i32 [ %inc20.i, %cond.end.i.for.body11.i_crit_edge ], [ 0, %for.body.i.for.body11.i_crit_edge ]
  %q_psum.063.i = phi i32 [ %add15.i, %cond.end.i.for.body11.i_crit_edge ], [ 0, %for.body.i.for.body11.i_crit_edge ]
  %w_psum_prev.062.i = phi i32 [ %cond.i, %cond.end.i.for.body11.i_crit_edge ], [ 0, %for.body.i.for.body11.i_crit_edge ]
  %quantum14.i = getelementptr %struct.ets_sched, ptr %privdata.i.i, i32 0, i32 7, i32 %i.164.i, i32 2
  %63 = ptrtoint ptr %quantum14.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %quantum14.i, align 4
  %add15.i = add i32 %64, %q_psum.063.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool16.not.i = icmp eq i32 %64, 0
  br i1 %tobool16.not.i, label %for.body11.i.cond.end.i_crit_edge, label %cond.true.i

for.body11.i.cond.end.i_crit_edge:                ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i

cond.true.i:                                      ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #13
  %mul.i = mul i32 %add15.i, 100
  %div.i = udiv i32 %mul.i, %add.i
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %for.body11.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %div.i, %cond.true.i ], [ 0, %for.body11.i.cond.end.i_crit_edge ]
  %sub.i84 = sub i32 %cond.i, %w_psum_prev.062.i
  %arrayidx17.i = getelementptr %struct.tc_ets_qopt_offload, ptr %qopt.i, i32 0, i32 3, i32 0, i32 2, i32 %i.164.i
  %65 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %arrayidx17.i, align 4
  %arrayidx18.i = getelementptr %struct.tc_ets_qopt_offload, ptr %qopt.i, i32 0, i32 3, i32 0, i32 3, i32 %i.164.i
  %66 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %sub.i84, ptr %arrayidx18.i, align 4
  %inc20.i = add nuw i32 %i.164.i, 1
  %exitcond65.not.i = icmp eq i32 %inc20.i, %56
  br i1 %exitcond65.not.i, label %cond.end.i.for.end21.i_crit_edge, label %cond.end.i.for.body11.i_crit_edge

cond.end.i.for.body11.i_crit_edge:                ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body11.i

cond.end.i.for.end21.i_crit_edge:                 ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end21.i

for.end21.i:                                      ; preds = %cond.end.i.for.end21.i_crit_edge, %if.end.i.for.end21.i_crit_edge
  %67 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %netdev_ops.i, align 8
  %ndo_setup_tc23.i = getelementptr inbounds %struct.net_device_ops, ptr %68, i32 0, i32 42
  %69 = ptrtoint ptr %ndo_setup_tc23.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ndo_setup_tc23.i, align 4
  %call24.i = call i32 %70(ptr noundef %39, i32 noundef 15, ptr noundef nonnull %qopt.i) #11
  br label %ets_offload_change.exit

ets_offload_change.exit:                          ; preds = %for.end21.i, %lor.lhs.false.i.ets_offload_change.exit_crit_edge, %sch_tree_unlock.exit.ets_offload_change.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 164, ptr nonnull %qopt.i) #11
  br label %cleanup

cleanup:                                          ; preds = %ets_offload_change.exit, %if.then2.i66, %do.body.i65.cleanup_crit_edge, %if.then28, %do.body25.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %nla_parse_nested.exit.cleanup_crit_edge, %if.then2.i, %do.body.i.cleanup_crit_edge, %if.then10, %do.body7.cleanup_crit_edge, %if.then3, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %ets_offload_change.exit ], [ -95, %if.then3 ], [ -95, %do.body.cleanup_crit_edge ], [ -22, %if.then10 ], [ -22, %do.body7.cleanup_crit_edge ], [ %call6.i, %nla_parse_nested.exit.cleanup_crit_edge ], [ 0, %if.end18.cleanup_crit_edge ], [ -22, %if.then28 ], [ -22, %do.body25.cleanup_crit_edge ], [ -22, %if.then2.i ], [ -22, %do.body.i.cleanup_crit_edge ], [ -22, %if.then2.i66 ], [ -22, %do.body.i65.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %tb) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ets_qdisc_walk(ptr noundef %sch, ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %nbands = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %2 = ptrtoint ptr %nbands to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nbands, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp24.not = icmp eq i32 %3, 0
  br i1 %cmp24.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %count = getelementptr inbounds %struct.qdisc_walker, ptr %arg, i32 0, i32 2
  %skip = getelementptr inbounds %struct.qdisc_walker, ptr %arg, i32 0, i32 1
  %fn = getelementptr inbounds %struct.qdisc_walker, ptr %arg, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.025 = phi i32 [ 0, %for.body.lr.ph ], [ %inc12.pre-phi, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count, align 4
  %6 = ptrtoint ptr %skip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %skip, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp1 = icmp slt i32 %5, %7
  br i1 %cmp1, label %for.body.for.inc_crit_edge, label %if.end4

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %.pre = add nuw i32 %i.025, 1
  br label %for.inc

if.end4:                                          ; preds = %for.body
  %8 = ptrtoint ptr %fn to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fn, align 4
  %add = add nuw i32 %i.025, 1
  %call5 = tail call i32 %9(ptr noundef %sch, i32 noundef %add, ptr noundef %arg) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %arg, align 4
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %count, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end9, %for.body.for.inc_crit_edge
  %inc12.pre-phi = phi i32 [ %.pre, %for.body.for.inc_crit_edge ], [ %add, %if.end9 ]
  %storemerge.in = phi i32 [ %5, %for.body.for.inc_crit_edge ], [ %12, %if.end9 ]
  %storemerge = add i32 %storemerge.in, 1
  %13 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %storemerge, ptr %count, align 4
  %14 = ptrtoint ptr %nbands to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nbands, align 16
  %cmp = icmp ult i32 %inc12.pre-phi, %15
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then7, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ets_qdisc_tcf_block(ptr nocapture noundef readonly %sch, i32 noundef %cl, ptr noundef writeonly %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cl)
  %tobool.not = icmp eq i32 %cl, 0
  br i1 %tobool.not, label %if.end3, label %do.body

do.body:                                          ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ets_qdisc_tcf_block.__msg) #11
  %tobool1.not = icmp eq ptr %extack, null
  br i1 %tobool1.not, label %do.body.cleanup_crit_edge, label %if.then2

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @ets_qdisc_tcf_block.__msg, ptr %extack, align 4
  br label %cleanup

if.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %block = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 3
  %1 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %block, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then2, %do.body.cleanup_crit_edge
  %retval.0 = phi ptr [ %2, %if.end3 ], [ null, %if.then2 ], [ null, %do.body.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ets_qdisc_bind_tcf(ptr nocapture noundef readonly %sch, i32 noundef %parent, i32 noundef %classid) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i32 %classid, 65535
  %sub.i = add nsw i32 %and.i, -1
  %nbands.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %0 = ptrtoint ptr %nbands.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nbands.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %1)
  %cmp.not.i = icmp ult i32 %sub.i, %1
  %and..i = select i1 %cmp.not.i, i32 %and.i, i32 0
  ret i32 %and..i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ets_qdisc_unbind_tcf(ptr nocapture noundef %sch, i32 noundef %arg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ets_class_dump(ptr noundef %sch, i32 noundef %arg, ptr noundef %skb, ptr nocapture noundef writeonly %tcm) #2 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %sub.i = add i32 %arg, -1
  %arrayidx.i = getelementptr %struct.ets_sched, ptr %privdata.i.i, i32 0, i32 7, i32 %sub.i
  %tcm_parent = getelementptr inbounds %struct.tcmsg, ptr %tcm, i32 0, i32 5
  %0 = ptrtoint ptr %tcm_parent to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tcm_parent, align 4
  %classes.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 11
  %sub.ptr.lhs.cast.i = ptrtoint ptr %arrayidx.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %classes.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 112
  %handle.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 7
  %1 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %handle.i, align 32
  %and.i = and i32 %2, -65536
  %add.i = add nsw i32 %sub.ptr.div.i, 1
  %and1.i = and i32 %add.i, 65535
  %or.i = or i32 %and.i, %and1.i
  %tcm_handle = getelementptr inbounds %struct.tcmsg, ptr %tcm, i32 0, i32 4
  %3 = ptrtoint ptr %tcm_handle to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or.i, ptr %tcm_handle, align 4
  %qdisc = getelementptr %struct.ets_sched, ptr %privdata.i.i, i32 0, i32 7, i32 %sub.i, i32 1
  %4 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %qdisc, align 8
  %handle = getelementptr inbounds %struct.Qdisc, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %handle, align 32
  %tcm_info = getelementptr inbounds %struct.tcmsg, ptr %tcm, i32 0, i32 6
  %8 = ptrtoint ptr %tcm_info to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %tcm_info, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %9 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tail.i.i, align 8
  %call1.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %tobool.not36 = icmp eq ptr %10, null
  %tobool.not = select i1 %cmp.i, i1 true, i1 %tobool.not36
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %nstrict.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 5
  %11 = ptrtoint ptr %nstrict.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nstrict.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.div.i, i32 %12)
  %cmp.i31 = icmp ult i32 %sub.ptr.div.i, %12
  br i1 %cmp.i31, label %if.end.if.end10_crit_edge, label %if.then5

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then5:                                         ; preds = %if.end
  %quantum = getelementptr %struct.ets_sched, ptr %privdata.i.i, i32 0, i32 7, i32 %sub.i, i32 2
  %13 = ptrtoint ptr %quantum to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %quantum, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #11
  %15 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not = icmp eq i32 %call.i, 0
  br i1 %tobool7.not, label %if.then5.if.end10_crit_edge, label %if.then.i.i

if.then5.if.end10_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.end10:                                         ; preds = %if.then5.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %16 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i33 = ptrtoint ptr %17 to i32
  %sub.ptr.rhs.cast.i34 = ptrtoint ptr %10 to i32
  %sub.ptr.sub.i35 = sub i32 %sub.ptr.lhs.cast.i33, %sub.ptr.rhs.cast.i34
  %conv.i = trunc i32 %sub.ptr.sub.i35 to i16
  %18 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv.i, ptr %10, align 2
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %19 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len.i, align 4
  br label %cleanup

if.then.i.i:                                      ; preds = %if.then5
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %21 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp ugt ptr %22, %10
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.if.end.i.i_crit_edge, !prof !78

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 991, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %23 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %10 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %24 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %20, %if.end10 ], [ -90, %if.end.i.i ], [ -90, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ets_class_dump_stats(ptr nocapture noundef readonly %sch, i32 noundef %arg, ptr noundef %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %sub.i = add i32 %arg, -1
  %qdisc = getelementptr %struct.ets_sched, ptr %privdata.i.i, i32 0, i32 7, i32 %sub.i, i32 1
  %0 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qdisc, align 8
  %bstats = getelementptr inbounds %struct.Qdisc, ptr %1, i32 0, i32 18
  %call1 = tail call i32 @gnet_stats_copy_basic(ptr noundef %d, ptr noundef null, ptr noundef %bstats, i1 noundef zeroext true) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %qstats.i.i = getelementptr inbounds %struct.Qdisc, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %qstats.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qstats.i.i, align 32
  %flags.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i.i.i, align 8
  %and.i.i.i = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.else.i.i, label %for.cond.preheader.i.i

for.cond.preheader.i.i:                           ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %6 = load i32, ptr @nr_cpu_ids, align 4
  %call216.i.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %call216.i.i, i32 %6)
  %cmp17.i.i = icmp ult i32 %call216.i.i, %6
  br i1 %cmp17.i.i, label %do.body.lr.ph.i.i, label %for.cond.preheader.i.i.qdisc_qstats_copy.exit_crit_edge

for.cond.preheader.i.i.qdisc_qstats_copy.exit_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qdisc_qstats_copy.exit

do.body.lr.ph.i.i:                                ; preds = %for.cond.preheader.i.i
  %cpu_qstats.i.i = getelementptr inbounds %struct.Qdisc, ptr %1, i32 0, i32 12
  %7 = ptrtoint ptr %cpu_qstats.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cpu_qstats.i.i, align 4
  %9 = ptrtoint ptr %8 to i32
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %do.body.lr.ph.i.i
  %call219.i.i = phi i32 [ %call216.i.i, %do.body.lr.ph.i.i ], [ %call2.i.i, %do.body.i.i.do.body.i.i_crit_edge ]
  %qlen.018.i.i = phi i32 [ %3, %do.body.lr.ph.i.i ], [ %add5.i.i, %do.body.i.i.do.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call219.i.i
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %11, %9
  %12 = inttoptr i32 %add.i.i to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %add5.i.i = add i32 %14, %qlen.018.i.i
  %call2.i.i = tail call i32 @cpumask_next(i32 noundef %call219.i.i, ptr noundef nonnull @__cpu_possible_mask) #14
  %cmp.i.i = icmp ult i32 %call2.i.i, %6
  br i1 %cmp.i.i, label %do.body.i.i.do.body.i.i_crit_edge, label %do.body.i.i.qdisc_qstats_copy.exit_crit_edge

do.body.i.i.qdisc_qstats_copy.exit_crit_edge:     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qdisc_qstats_copy.exit

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i

if.else.i.i:                                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %qlen7.i.i = getelementptr inbounds %struct.Qdisc, ptr %1, i32 0, i32 17, i32 2
  %15 = ptrtoint ptr %qlen7.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %qlen7.i.i, align 8
  %add8.i.i = add i32 %16, %3
  br label %qdisc_qstats_copy.exit

qdisc_qstats_copy.exit:                           ; preds = %if.else.i.i, %do.body.i.i.qdisc_qstats_copy.exit_crit_edge, %for.cond.preheader.i.i.qdisc_qstats_copy.exit_crit_edge
  %qlen.1.i.i = phi i32 [ %add8.i.i, %if.else.i.i ], [ %3, %for.cond.preheader.i.i.qdisc_qstats_copy.exit_crit_edge ], [ %add5.i.i, %do.body.i.i.qdisc_qstats_copy.exit_crit_edge ]
  %cpu_qstats.i = getelementptr inbounds %struct.Qdisc, ptr %1, i32 0, i32 12
  %17 = ptrtoint ptr %cpu_qstats.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cpu_qstats.i, align 4
  %call1.i = tail call i32 @gnet_stats_copy_queue(ptr noundef %d, ptr noundef %18, ptr noundef %qstats.i.i, i32 noundef %qlen.1.i.i) #11
  %call1.i.lobit = ashr i32 %call1.i, 31
  br label %cleanup

cleanup:                                          ; preds = %qdisc_qstats_copy.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ %call1.i.lobit, %qdisc_qstats_copy.exit ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qdisc_create_dflt(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_hash_add(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sch_tree_lock(ptr noundef %q) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %flags = getelementptr inbounds %struct.Qdisc, ptr %q, i32 0, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.else:                                          ; preds = %entry
  %dev_queue.i.i = getelementptr inbounds %struct.Qdisc, ptr %q, i32 0, i32 9
  %2 = ptrtoint ptr %dev_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_queue.i.i, align 8
  %qdisc_sleeping.i.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %qdisc_sleeping.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %qdisc_sleeping.i.i, align 4
  %call1.i = tail call i32 @rtnl_is_locked() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.rhs.i:                                       ; preds = %if.else
  %.b41.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i, label %land.rhs.i.if.end_crit_edge, label %if.then.i, !prof !77

land.rhs.i.if.end_crit_edge:                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 596) #11
  br label %if.end

if.end:                                           ; preds = %if.then.i, %land.rhs.i.if.end_crit_edge, %if.else.if.end_crit_edge, %entry.if.end_crit_edge
  %.sink = phi ptr [ %q, %entry.if.end_crit_edge ], [ %5, %if.else.if.end_crit_edge ], [ %5, %land.rhs.i.if.end_crit_edge ], [ %5, %if.then.i ]
  %lock.i.i = getelementptr inbounds %struct.Qdisc, ptr %.sink, i32 0, i32 17, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i.i) #11
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sch_tree_unlock(ptr noundef %q) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %flags = getelementptr inbounds %struct.Qdisc, ptr %q, i32 0, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.else:                                          ; preds = %entry
  %dev_queue.i.i = getelementptr inbounds %struct.Qdisc, ptr %q, i32 0, i32 9
  %2 = ptrtoint ptr %dev_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_queue.i.i, align 8
  %qdisc_sleeping.i.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %qdisc_sleeping.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %qdisc_sleeping.i.i, align 4
  %call1.i = tail call i32 @rtnl_is_locked() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.rhs.i:                                       ; preds = %if.else
  %.b41.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i, label %land.rhs.i.if.end_crit_edge, label %if.then.i, !prof !77

land.rhs.i.if.end_crit_edge:                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 596) #11
  br label %if.end

if.end:                                           ; preds = %if.then.i, %land.rhs.i.if.end_crit_edge, %if.else.if.end_crit_edge, %entry.if.end_crit_edge
  %.sink = phi ptr [ %q, %entry.if.end_crit_edge ], [ %5, %if.else.if.end_crit_edge ], [ %5, %land.rhs.i.if.end_crit_edge ], [ %5, %if.then.i ]
  %lock.i.i = getelementptr inbounds %struct.Qdisc, ptr %.sink, i32 0, i32 17, i32 3
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_tree_reduce_backlog(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gnet_stats_add_queue(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_offload_graft_helper(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ets_offload_change(ptr noundef %sch) unnamed_addr #2 align 64 {
entry:
  %qopt = alloca %struct.tc_ets_qopt_offload, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_queue.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %0 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_queue.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  call void @llvm.lifetime.start.p0(i64 164, ptr nonnull %qopt) #11
  %4 = getelementptr inbounds i8, ptr %qopt, i32 32
  %5 = call ptr @memset(ptr %4, i32 255, i32 128)
  %features.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 23
  %6 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %features.i, align 16
  %and.i = and i64 %7, 562949953421312
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 16
  %8 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %netdev_ops, align 8
  %ndo_setup_tc = getelementptr inbounds %struct.net_device_ops, ptr %9, i32 0, i32 42
  %10 = ptrtoint ptr %ndo_setup_tc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ndo_setup_tc, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %12 = ptrtoint ptr %qopt to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %qopt, align 4
  %handle = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 7
  %13 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %handle, align 32
  %handle3 = getelementptr inbounds %struct.tc_ets_qopt_offload, ptr %qopt, i32 0, i32 1
  %15 = ptrtoint ptr %handle3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %handle3, align 4
  %parent = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 8
  %16 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %parent, align 4
  %parent4 = getelementptr inbounds %struct.tc_ets_qopt_offload, ptr %qopt, i32 0, i32 2
  %18 = ptrtoint ptr %parent4 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %parent4, align 4
  %nbands = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %19 = ptrtoint ptr %nbands to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nbands, align 16
  %21 = getelementptr inbounds %struct.tc_ets_qopt_offload, ptr %qopt, i32 0, i32 3
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %20, ptr %21, align 4
  %qstats = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19
  %qstats5 = getelementptr inbounds %struct.tc_ets_qopt_offload, ptr %qopt, i32 0, i32 3, i32 0, i32 4
  %23 = ptrtoint ptr %qstats5 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %qstats, ptr %qstats5, align 4
  %priomap = getelementptr inbounds %struct.tc_ets_qopt_offload, ptr %qopt, i32 0, i32 3, i32 0, i32 1
  %prio2band = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 6
  %24 = call ptr @memcpy(ptr %priomap, ptr %prio2band, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp58.not = icmp eq i32 %20, 0
  br i1 %cmp58.not, label %if.end.for.end21_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end21_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end21

for.cond8.preheader:                              ; preds = %for.body
  br i1 %cmp58.not, label %for.cond8.preheader.for.end21_crit_edge, label %for.cond8.preheader.for.body11_crit_edge

for.cond8.preheader.for.body11_crit_edge:         ; preds = %for.cond8.preheader
  br label %for.body11

for.cond8.preheader.for.end21_crit_edge:          ; preds = %for.cond8.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end21

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.060 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %q_sum.059 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %quantum7 = getelementptr %struct.ets_sched, ptr %privdata.i, i32 0, i32 7, i32 %i.060, i32 2
  %25 = ptrtoint ptr %quantum7 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %quantum7, align 4
  %add = add i32 %26, %q_sum.059
  %inc = add nuw i32 %i.060, 1
  %exitcond.not = icmp eq i32 %inc, %20
  br i1 %exitcond.not, label %for.cond8.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body11:                                       ; preds = %cond.end.for.body11_crit_edge, %for.cond8.preheader.for.body11_crit_edge
  %i.164 = phi i32 [ %inc20, %cond.end.for.body11_crit_edge ], [ 0, %for.cond8.preheader.for.body11_crit_edge ]
  %q_psum.063 = phi i32 [ %add15, %cond.end.for.body11_crit_edge ], [ 0, %for.cond8.preheader.for.body11_crit_edge ]
  %w_psum_prev.062 = phi i32 [ %cond, %cond.end.for.body11_crit_edge ], [ 0, %for.cond8.preheader.for.body11_crit_edge ]
  %quantum14 = getelementptr %struct.ets_sched, ptr %privdata.i, i32 0, i32 7, i32 %i.164, i32 2
  %27 = ptrtoint ptr %quantum14 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %quantum14, align 4
  %add15 = add i32 %28, %q_psum.063
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool16.not = icmp eq i32 %28, 0
  br i1 %tobool16.not, label %for.body11.cond.end_crit_edge, label %cond.true

for.body11.cond.end_crit_edge:                    ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #13
  %mul = mul i32 %add15, 100
  %div = udiv i32 %mul, %add
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %for.body11.cond.end_crit_edge
  %cond = phi i32 [ %div, %cond.true ], [ 0, %for.body11.cond.end_crit_edge ]
  %sub = sub i32 %cond, %w_psum_prev.062
  %arrayidx17 = getelementptr %struct.tc_ets_qopt_offload, ptr %qopt, i32 0, i32 3, i32 0, i32 2, i32 %i.164
  %29 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx17, align 4
  %arrayidx18 = getelementptr %struct.tc_ets_qopt_offload, ptr %qopt, i32 0, i32 3, i32 0, i32 3, i32 %i.164
  %30 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %sub, ptr %arrayidx18, align 4
  %inc20 = add nuw i32 %i.164, 1
  %exitcond65.not = icmp eq i32 %inc20, %20
  br i1 %exitcond65.not, label %cond.end.for.end21_crit_edge, label %cond.end.for.body11_crit_edge

cond.end.for.body11_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body11

cond.end.for.end21_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end21

for.end21:                                        ; preds = %cond.end.for.end21_crit_edge, %for.cond8.preheader.for.end21_crit_edge, %if.end.for.end21_crit_edge
  %31 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %netdev_ops, align 8
  %ndo_setup_tc23 = getelementptr inbounds %struct.net_device_ops, ptr %32, i32 0, i32 42
  %33 = ptrtoint ptr %ndo_setup_tc23 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ndo_setup_tc23, align 4
  %call24 = call i32 %34(ptr noundef %3, i32 noundef 15, ptr noundef nonnull %qopt) #11
  br label %cleanup

cleanup:                                          ; preds = %for.end21, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 164, ptr nonnull %qopt) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gnet_stats_copy_basic(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gnet_stats_copy_queue(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_classify(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__qdisc_calculate_pkt_len(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @qdisc_dequeue_peeked(ptr noundef %sch) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %gso_skb = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 16
  %0 = ptrtoint ptr %gso_skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gso_skb, align 4
  %cmp.i = icmp eq ptr %1, %gso_skb
  %tobool.not31 = icmp eq ptr %1, null
  %tobool.not = or i1 %cmp.i, %tobool.not31
  br i1 %tobool.not, label %if.else5, label %__skb_dequeue.exit

__skb_dequeue.exit:                               ; preds = %entry
  %qlen.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 16, i32 1
  %2 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i, ptr %qlen.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.0, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %1, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.0, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %7, ptr %prev17.i.i, align 4
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %5, ptr %7, align 8
  %flags.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 2
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %11, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %__skb_dequeue.exit
  %12 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !79
  %cb.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cb.i.i.i, align 4
  %cpu_qstats.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 12
  %15 = ptrtoint ptr %cpu_qstats.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cpu_qstats.i, align 4
  %backlog.i = getelementptr inbounds %struct.gnet_stats_queue, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %backlog.i to i32
  %18 = tail call i32 @llvm.read_register.i32(metadata !66) #11
  %and.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %23, %17
  %24 = inttoptr i32 %add.i to ptr
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %add14.i = sub i32 %26, %14
  store i32 %add14.i, ptr %24, align 4
  %27 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !80
  %and.i.i.i = and i32 %27, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i19 = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i19, label %if.then.i20, label %if.then4.qdisc_qstats_cpu_backlog_dec.exit_crit_edge, !prof !78

if.then4.qdisc_qstats_cpu_backlog_dec.exit_crit_edge: ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %qdisc_qstats_cpu_backlog_dec.exit

if.then.i20:                                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %qdisc_qstats_cpu_backlog_dec.exit

qdisc_qstats_cpu_backlog_dec.exit:                ; preds = %if.then.i20, %if.then4.qdisc_qstats_cpu_backlog_dec.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %12) #11, !srcloc !81
  %28 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !79
  %29 = ptrtoint ptr %cpu_qstats.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cpu_qstats.i, align 4
  %31 = ptrtoint ptr %30 to i32
  %32 = tail call i32 @llvm.read_register.i32(metadata !66) #11
  %and.i.i22 = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i22 to ptr
  %cpu.i23 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %cpu.i23 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cpu.i23, align 4
  %arrayidx.i24 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %35
  %36 = ptrtoint ptr %arrayidx.i24 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i24, align 4
  %add.i25 = add i32 %37, %31
  %38 = inttoptr i32 %add.i25 to ptr
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 4
  %add13.i = add i32 %40, -1
  store i32 %add13.i, ptr %38, align 4
  %41 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !80
  %and.i.i.i26 = and i32 %41, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i26)
  %tobool.not.i27 = icmp eq i32 %and.i.i.i26, 0
  br i1 %tobool.not.i27, label %if.then.i28, label %qdisc_qstats_cpu_backlog_dec.exit.qdisc_qstats_cpu_qlen_dec.exit_crit_edge, !prof !78

qdisc_qstats_cpu_backlog_dec.exit.qdisc_qstats_cpu_qlen_dec.exit_crit_edge: ; preds = %qdisc_qstats_cpu_backlog_dec.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %qdisc_qstats_cpu_qlen_dec.exit

if.then.i28:                                      ; preds = %qdisc_qstats_cpu_backlog_dec.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %qdisc_qstats_cpu_qlen_dec.exit

qdisc_qstats_cpu_qlen_dec.exit:                   ; preds = %if.then.i28, %qdisc_qstats_cpu_backlog_dec.exit.qdisc_qstats_cpu_qlen_dec.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %28) #11, !srcloc !81
  br label %if.end7

if.else:                                          ; preds = %__skb_dequeue.exit
  call void @__sanitizer_cov_trace_pc() #13
  %cb.i.i.i29 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %42 = ptrtoint ptr %cb.i.i.i29 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cb.i.i.i29, align 4
  %backlog.i30 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %44 = ptrtoint ptr %backlog.i30 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %backlog.i30, align 4
  %sub.i = sub i32 %45, %43
  store i32 %sub.i, ptr %backlog.i30, align 4
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %46 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %qlen, align 8
  %dec = add i32 %47, -1
  store i32 %dec, ptr %qlen, align 8
  br label %if.end7

if.else5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dequeue = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 1
  %48 = ptrtoint ptr %dequeue to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dequeue, align 4
  %call6 = tail call ptr %49(ptr noundef %sch) #11
  br label %if.end7

if.end7:                                          ; preds = %if.else5, %if.else, %qdisc_qstats_cpu_qlen_dec.exit
  %skb.0 = phi ptr [ %1, %qdisc_qstats_cpu_qlen_dec.exit ], [ %1, %if.else ], [ %call6, %if.else5 ]
  ret ptr %skb.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ets_qdisc_dequeue_skb(ptr noundef %sch, ptr noundef readonly returned %skb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cb.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %0 = ptrtoint ptr %cb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cb.i.i.i.i, align 4
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %2 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %end.i.i.i.i, align 4
  %gso_size.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %gso_size.i.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %gso_size.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.i.not.i.i = icmp eq i16 %5, 0
  br i1 %tobool.i.not.i.i, label %entry.cond.end.i.i_crit_edge, label %cond.true.i.i

entry.cond.end.i.i_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i.i

cond.true.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %gso_segs.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %gso_segs.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %gso_segs.i.i, align 2
  %conv4.i.i = zext i16 %7 to i32
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.true.i.i, %entry.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %conv4.i.i, %cond.true.i.i ], [ 1, %entry.cond.end.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %8 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i.i.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i.i.i.i, label %cond.end.i.i.qdisc_bstats_update.exit_crit_edge, label %land.lhs.true.i.i.i.i.i

cond.end.i.i.qdisc_bstats_update.exit_crit_edge:  ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qdisc_bstats_update.exit

land.lhs.true.i.i.i.i.i:                          ; preds = %cond.end.i.i
  %9 = tail call i32 @llvm.read_register.i32(metadata !66) #11
  %and.i.i.i.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i = add i32 %12, 1
  store volatile i32 %add.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !82
  %13 = tail call i32 @llvm.read_register.i32(metadata !66) #11
  %and.i.i.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %cpu.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cpu.i.i.i.i.i, align 4
  %arrayidx.i.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %18, ptrtoint (ptr @lockdep_recursion to i32)
  %19 = inttoptr i32 %add.i.i.i.i.i to ptr
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %19, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !83
  %22 = tail call i32 @llvm.read_register.i32(metadata !66) #11
  %and.i.i.i7.i.i.i.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i7.i.i.i.i.i to ptr
  %preempt_count.i.i8.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i8.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i8.i.i.i.i.i, align 4
  %sub.i.i.i.i.i.i = add i32 %25, -1
  store volatile i32 %sub.i.i.i.i.i.i, ptr %preempt_count.i.i8.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool20.not.i.i.i.i.i = icmp eq i32 %21, 0
  br i1 %tobool20.not.i.i.i.i.i, label %land.rhs.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge

land.lhs.true.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qdisc_bstats_update.exit

land.rhs.i.i.i.i.i:                               ; preds = %land.lhs.true.i.i.i.i.i
  %26 = tail call i32 @llvm.read_register.i32(metadata !66) #11
  %and.i.i.i.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.i.i.i.i.i = icmp eq i32 %29, 0
  br i1 %cmp.i.i.i.i.i, label %land.rhs22.i.i.i.i.i, label %land.rhs.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge

land.rhs.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge: ; preds = %land.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qdisc_bstats_update.exit

land.rhs22.i.i.i.i.i:                             ; preds = %land.rhs.i.i.i.i.i
  %30 = tail call i32 @llvm.read_register.i32(metadata !66) #11
  %and.i.i.i9.i.i.i.i.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i9.i.i.i.i.i to ptr
  %preempt_count.i.i10.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i.i, align 4
  %add.i11.i.i.i.i.i = add i32 %33, 1
  store volatile i32 %add.i11.i.i.i.i.i, ptr %preempt_count.i.i10.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !84
  %34 = ptrtoint ptr %cpu.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cpu.i.i.i.i.i, align 4
  %arrayidx46.i.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %35
  %36 = ptrtoint ptr %arrayidx46.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx46.i.i.i.i.i, align 4
  %add47.i.i.i.i.i = add i32 %37, ptrtoint (ptr @hardirqs_enabled to i32)
  %38 = inttoptr i32 %add47.i.i.i.i.i to ptr
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %38, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !85
  %41 = tail call i32 @llvm.read_register.i32(metadata !66) #11
  %and.i.i.i12.i.i.i.i.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i12.i.i.i.i.i to ptr
  %preempt_count.i.i13.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %preempt_count.i.i13.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %preempt_count.i.i13.i.i.i.i.i, align 4
  %sub.i14.i.i.i.i.i = add i32 %44, -1
  store volatile i32 %sub.i14.i.i.i.i.i, ptr %preempt_count.i.i13.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool54.not.i.i.i.i.i = icmp eq i32 %40, 0
  br i1 %tobool54.not.i.i.i.i.i, label %land.rhs22.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, label %land.rhs58.i.i.i.i.i

land.rhs22.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge: ; preds = %land.rhs22.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qdisc_bstats_update.exit

land.rhs58.i.i.i.i.i:                             ; preds = %land.rhs22.i.i.i.i.i
  %.b1.i.i.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i.i.i, label %land.rhs58.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, label %if.then.i.i.i.i.i, !prof !77

land.rhs58.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge: ; preds = %land.rhs58.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qdisc_bstats_update.exit

if.then.i.i.i.i.i:                                ; preds = %land.rhs58.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 271, i32 noundef 9, ptr noundef null) #11
  br label %qdisc_bstats_update.exit

qdisc_bstats_update.exit:                         ; preds = %if.then.i.i.i.i.i, %land.rhs58.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, %land.rhs22.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, %land.rhs.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, %land.lhs.true.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, %cond.end.i.i.qdisc_bstats_update.exit_crit_edge
  %bstats.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18
  %conv.i.i = zext i32 %1 to i64
  %syncp.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18, i32 2
  %45 = ptrtoint ptr %syncp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %syncp.i.i.i, align 4
  %inc.i.i.i.i.i.i.i = add i32 %46, 1
  store i32 %inc.i.i.i.i.i.i.i, ptr %syncp.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !86
  %dep_map.i.i.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18, i32 2, i32 0, i32 1
  %47 = tail call ptr @llvm.returnaddress(i32 0) #11
  %48 = ptrtoint ptr %47 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %48) #11
  %49 = ptrtoint ptr %bstats.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %bstats.i, align 8
  %add.i.i.i.i = add i64 %50, %conv.i.i
  store i64 %add.i.i.i.i, ptr %bstats.i, align 8
  %packets2.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18, i32 1
  %conv.i7.i.i.i = zext i32 %cond.i.i to i64
  %51 = ptrtoint ptr %packets2.i.i.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %packets2.i.i.i, align 8
  %add.i8.i.i.i = add i64 %52, %conv.i7.i.i.i
  store i64 %add.i8.i.i.i, ptr %packets2.i.i.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i.i.i, i32 noundef %48) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !87
  %53 = ptrtoint ptr %syncp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %syncp.i.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %54, 1
  store i32 %inc.i.i.i.i.i.i, ptr %syncp.i.i.i, align 4
  %55 = ptrtoint ptr %cb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cb.i.i.i.i, align 4
  %backlog.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %57 = ptrtoint ptr %backlog.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %backlog.i, align 4
  %sub.i = sub i32 %58, %56
  store i32 %sub.i, ptr %backlog.i, align 4
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %59 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %qlen, align 8
  %dec = add i32 %60, -1
  store i32 %dec, ptr %qlen, align 8
  ret ptr %skb
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_warn_nonwc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_block_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcf_block_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gnet_stats_basic_sync_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_validate(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qdisc_offload_dump_helper(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_qdisc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !34, !35, !37, !39, !41, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64}
!llvm.named.register.sp = !{!66}
!llvm.module.flags = !{!67, !68, !69, !70, !71, !72, !73, !74}
!llvm.ident = !{!75}

!0 = !{ptr @__initcall__kmod_sch_ets__368_840_ets_init6, !1, !"__initcall__kmod_sch_ets__368_840_ets_init6", i1 false, i1 false}
!1 = !{!"../net/sched/sch_ets.c", i32 840, i32 1}
!2 = !{ptr @__exitcall_ets_exit, !3, !"__exitcall_ets_exit", i1 false, i1 false}
!3 = !{!"../net/sched/sch_ets.c", i32 841, i32 1}
!4 = !{ptr @__UNIQUE_ID_file369, !5, !"__UNIQUE_ID_file369", i1 false, i1 false}
!5 = !{!"../net/sched/sch_ets.c", i32 842, i32 1}
!6 = !{ptr @__UNIQUE_ID_license370, !5, !"__UNIQUE_ID_license370", i1 false, i1 false}
!7 = !{ptr @ets_qdisc_ops, !8, !"ets_qdisc_ops", i1 false, i1 false}
!8 = !{!"../net/sched/sch_ets.c", i32 815, i32 25}
!9 = !{ptr @ets_class_ops, !10, !"ets_class_ops", i1 false, i1 false}
!10 = !{!"../net/sched/sch_ets.c", i32 801, i32 37}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../include/net/sch_generic.h", i32 596, i32 2}
!13 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @ets_class_change.__msg, !16, !"__msg", i1 false, i1 false}
!16 = !{!"../net/sched/sch_ets.c", i32 212, i32 3}
!17 = !{ptr @ets_class_change.__msg.2, !18, !"__msg", i1 false, i1 false}
!18 = !{!"../net/sched/sch_ets.c", i32 217, i32 3}
!19 = !{ptr @ets_class_change.__msg.3, !20, !"__msg", i1 false, i1 false}
!20 = !{!"../net/sched/sch_ets.c", i32 230, i32 3}
!21 = !{ptr @nla_parse_nested.__msg, !22, !"__msg", i1 false, i1 false}
!22 = !{!"../include/net/netlink.h", i32 1208, i32 3}
!23 = !{ptr @ets_class_policy, !24, !"ets_class_policy", i1 false, i1 false}
!24 = !{!"../net/sched/sch_ets.c", i32 73, i32 32}
!25 = !{ptr @ets_quantum_parse.__msg, !26, !"__msg", i1 false, i1 false}
!26 = !{!"../net/sched/sch_ets.c", i32 83, i32 3}
!27 = !{ptr @ets_qdisc_tcf_block.__msg, !28, !"__msg", i1 false, i1 false}
!28 = !{!"../net/sched/sch_ets.c", i32 363, i32 3}
!29 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../include/net/netlink.h", i32 991, i32 3}
!31 = distinct !{null, !32, !"__warned", i1 false, i1 false}
!32 = !{!"../net/sched/sch_ets.c", i32 391, i32 8}
!33 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!35 = distinct !{null, !36, !"__warned", i1 false, i1 false}
!36 = !{!"../include/net/sch_generic.h", i32 835, i32 34}
!37 = !{ptr @__func__.ets_qdisc_dequeue, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../net/sched/sch_ets.c", i32 485, i32 21}
!39 = distinct !{null, !40, !"__already_done", i1 false, i1 false}
!40 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!41 = !{ptr @.str.7, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @ets_qdisc_change.__msg, !43, !"__msg", i1 false, i1 false}
!43 = !{!"../net/sched/sch_ets.c", i32 598, i32 3}
!44 = !{ptr @ets_qdisc_change.__msg.8, !45, !"__msg", i1 false, i1 false}
!45 = !{!"../net/sched/sch_ets.c", i32 607, i32 3}
!46 = !{ptr @ets_qdisc_change.__msg.9, !47, !"__msg", i1 false, i1 false}
!47 = !{!"../net/sched/sch_ets.c", i32 612, i32 3}
!48 = !{ptr @ets_qdisc_change.__msg.10, !49, !"__msg", i1 false, i1 false}
!49 = !{!"../net/sched/sch_ets.c", i32 621, i32 4}
!50 = !{ptr @ets_policy, !51, !"ets_policy", i1 false, i1 false}
!51 = !{!"../net/sched/sch_ets.c", i32 58, i32 32}
!52 = !{ptr @ets_qdisc_priomap_parse.__msg, !53, !"__msg", i1 false, i1 false}
!53 = !{!"../net/sched/sch_ets.c", i32 527, i32 5}
!54 = !{ptr @ets_qdisc_priomap_parse.__msg.11, !55, !"__msg", i1 false, i1 false}
!55 = !{!"../net/sched/sch_ets.c", i32 532, i32 5}
!56 = distinct !{null, !57, !"__already_done", i1 false, i1 false}
!57 = !{!"../net/sched/sch_ets.c", i32 538, i32 4}
!58 = !{ptr @ets_priomap_policy, !59, !"ets_priomap_policy", i1 false, i1 false}
!59 = !{!"../net/sched/sch_ets.c", i32 65, i32 32}
!60 = !{ptr @ets_qdisc_quanta_parse.__msg, !61, !"__msg", i1 false, i1 false}
!61 = !{!"../net/sched/sch_ets.c", i32 566, i32 5}
!62 = distinct !{null, !63, !"__already_done", i1 false, i1 false}
!63 = !{!"../net/sched/sch_ets.c", i32 575, i32 4}
!64 = !{ptr @ets_quanta_policy, !65, !"ets_quanta_policy", i1 false, i1 false}
!65 = !{!"../net/sched/sch_ets.c", i32 69, i32 32}
!66 = !{!"sp"}
!67 = !{i32 1, !"wchar_size", i32 2}
!68 = !{i32 1, !"min_enum_size", i32 4}
!69 = !{i32 8, !"branch-target-enforcement", i32 0}
!70 = !{i32 8, !"sign-return-address", i32 0}
!71 = !{i32 8, !"sign-return-address-all", i32 0}
!72 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!73 = !{i32 7, !"uwtable", i32 1}
!74 = !{i32 7, !"frame-pointer", i32 2}
!75 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!76 = !{!"auto-init"}
!77 = !{!"branch_weights", i32 2000, i32 1}
!78 = !{!"branch_weights", i32 1, i32 2000}
!79 = !{i64 762535, i64 762596}
!80 = !{i64 765267}
!81 = !{i64 765552}
!82 = !{i64 2149882993}
!83 = !{i64 2149887925}
!84 = !{i64 2149909637}
!85 = !{i64 2149914529}
!86 = !{i64 2149990986}
!87 = !{i64 2149991311}
