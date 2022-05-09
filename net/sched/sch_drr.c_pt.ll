; ModuleID = '/llk/IR_all_yes/net/sched/sch_drr.c_pt.bc'
source_filename = "../net/sched/sch_drr.c"
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
%struct.hlist_head = type { ptr }
%struct.Qdisc_class_common = type { i32, %struct.hlist_node }
%struct.drr_class = type { %struct.Qdisc_class_common, i32, %struct.gnet_stats_basic_sync, %struct.gnet_stats_queue, ptr, %struct.list_head, ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sk_buff_list = type { ptr, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.121, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.121 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.qdisc_walker = type { i32, i32, i32, ptr }
%struct.tcmsg = type { i8, i8, i16, i32, i32, i32, i32 }
%struct.tc_drr_stats = type { i32 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }

@drr_qdisc_ops = internal global %struct.Qdisc_ops { ptr null, ptr @drr_class_ops, [16 x i8] c"drr\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 32, i32 0, ptr @drr_enqueue, ptr @drr_dequeue, ptr @qdisc_peek_dequeued, ptr @drr_init_qdisc, ptr @drr_reset_qdisc, ptr @drr_destroy_qdisc, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, section ".data..read_mostly", align 4
@__initcall__kmod_sch_drr__368_503_drr_init6 = internal global ptr @drr_init, section ".initcall6.init", align 4
@__exitcall_drr_exit = internal global ptr @drr_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file369 = internal constant [31 x i8] c"sch_drr.file=net/sched/sch_drr\00", section ".modinfo", align 1
@__UNIQUE_ID_license370 = internal constant [20 x i8] c"sch_drr.license=GPL\00", section ".modinfo", align 1
@drr_class_ops = internal constant { %struct.Qdisc_class_ops, [40 x i8] } { %struct.Qdisc_class_ops { i32 0, ptr null, ptr @drr_graft_class, ptr @drr_class_leaf, ptr @drr_qlen_notify, ptr @drr_search_class, ptr @drr_change_class, ptr @drr_delete_class, ptr @drr_walk, ptr @drr_tcf_block, ptr @drr_bind_tcf, ptr @drr_unbind_tcf, ptr @drr_dump_class, ptr @drr_dump_class_stats }, [40 x i8] zeroinitializer }, align 32
@pfifo_qdisc_ops = external dso_local global %struct.Qdisc_ops, align 4
@noop_qdisc = external dso_local global %struct.Qdisc, align 128
@qdisc_root_sleeping_lock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/net/sch_generic.h\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@drr_change_class.__msg = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"DRR options are required for this operation\00", [52 x i8] zeroinitializer }, align 32
@drr_policy = internal constant { [2 x %struct.nla_policy], [16 x i8] } { [2 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.22 zeroinitializer }], [16 x i8] zeroinitializer }, align 32
@drr_change_class.__msg.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Specified DRR quantum cannot be zero\00", [59 x i8] zeroinitializer }, align 32
@drr_change_class.__msg.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to replace estimator\00", [36 x i8] zeroinitializer }, align 32
@drr_change_class.__msg.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to replace estimator\00", [36 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@drr_tcf_block.__msg = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"DRR classid must be zero\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@drr_classify.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/sched/sch_drr.c\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@qdisc_calculate_pkt_len.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.drr_dequeue = private unnamed_addr constant [12 x i8] c"drr_dequeue\00", align 1
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 4, i64 5, i64 8]
@___asan_gen_.9 = private unnamed_addr constant [14 x i8] c"drr_class_ops\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 465, i32 37 }
@___asan_gen_.16 = private unnamed_addr constant [29 x i8] c"../include/net/sch_generic.h\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 596, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 66, i32 3 }
@___asan_gen_.21 = private unnamed_addr constant [11 x i8] c"drr_policy\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 50, i32 32 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 78, i32 4 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 91, i32 5 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 123, i32 4 }
@___asan_gen_.33 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 178, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 991, i32 3 }
@___asan_gen_.43 = private constant [23 x i8] c"../net/sched/sch_drr.c\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 316, i32 7 }
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.46 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 271, i32 2 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__UNIQUE_ID_file369, ptr @__UNIQUE_ID_license370, ptr @__exitcall_drr_exit, ptr @__initcall__kmod_sch_drr__368_503_drr_init6, ptr @drr_exit, ptr @drr_class_ops, ptr @.str, ptr @.str.1, ptr @drr_change_class.__msg, ptr @drr_policy, ptr @drr_change_class.__msg.2, ptr @drr_change_class.__msg.3, ptr @drr_change_class.__msg.4, ptr @drr_tcf_block.__msg, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drr_class_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drr_change_class.__msg to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drr_policy to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drr_change_class.__msg.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drr_change_class.__msg.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drr_change_class.__msg.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drr_tcf_block.__msg to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @drr_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 @unregister_qdisc(ptr noundef nonnull @drr_qdisc_ops) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_qdisc(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @drr_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_qdisc(ptr noundef nonnull @drr_qdisc_ops) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @drr_enqueue(ptr noundef %skb, ptr noundef %sch, ptr noundef %to_free) #2 align 64 {
entry:
  %res.i = alloca %struct.tcf_result, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %0 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cb.i.i, align 4
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %res.i) #13
  %2 = ptrtoint ptr %res.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %res.i, align 4, !annotation !50
  %3 = getelementptr inbounds %struct.anon.118, ptr %res.i, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !50
  %priority.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %5 = ptrtoint ptr %priority.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %priority.i, align 4
  %handle.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 7
  %7 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %handle.i, align 32
  %xor.i = xor i32 %8, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %xor.i)
  %cmp.i = icmp ugt i32 %xor.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i.i = icmp eq i32 %6, 0
  %or.cond.i = or i1 %tobool.not.i.i.i, %cmp.i
  br i1 %or.cond.i, label %entry.if.end5.i_crit_edge, label %if.end.i.i.i

entry.if.end5.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5.i

if.end.i.i.i:                                     ; preds = %entry
  %clhash.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %hashmask.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 6
  %9 = ptrtoint ptr %hashmask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hashmask.i.i.i, align 4
  %shr.i.i.i.i = lshr i32 %6, 8
  %xor.i.i.i.i = xor i32 %shr.i.i.i.i, %6
  %shr1.i.i.i.i = lshr i32 %xor.i.i.i.i, 4
  %xor2.i.i.i.i = xor i32 %shr1.i.i.i.i, %xor.i.i.i.i
  %and.i.i.i.i = and i32 %10, %xor2.i.i.i.i
  %11 = ptrtoint ptr %clhash.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clhash.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.hlist_head, ptr %12, i32 %and.i.i.i.i
  %13 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i.i.i, align 4
  %tobool2.not.i.i.i = icmp eq ptr %14, null
  %add.ptr.i.i.i = getelementptr i8, ptr %14, i32 -4
  %tobool4.not3033.i.i.i = icmp eq ptr %add.ptr.i.i.i, null
  %tobool4.not30.i.i.i = or i1 %tobool2.not.i.i.i, %tobool4.not3033.i.i.i
  br i1 %tobool4.not30.i.i.i, label %if.end.i.i.i.if.end5.i_crit_edge, label %if.end.i.i.i.for.body.i.i.i_crit_edge

if.end.i.i.i.for.body.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  br label %for.body.i.i.i

if.end.i.i.i.if.end5.i_crit_edge:                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.end.i.i.i.for.body.i.i.i_crit_edge
  %cl.031.i.i.i = phi ptr [ %add.ptr13.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %add.ptr.i.i.i, %if.end.i.i.i.for.body.i.i.i_crit_edge ]
  %15 = ptrtoint ptr %cl.031.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cl.031.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %6)
  %cmp.i.i.i = icmp eq i32 %16, %6
  br i1 %cmp.i.i.i, label %for.body.i.i.i.drr_classify.exit.thread55_crit_edge, label %for.inc.i.i.i

for.body.i.i.i.drr_classify.exit.thread55_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %drr_classify.exit.thread55

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %hnode.i.i.i = getelementptr inbounds %struct.Qdisc_class_common, ptr %cl.031.i.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %hnode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hnode.i.i.i, align 4
  %tobool9.not.i.i.i = icmp eq ptr %18, null
  %add.ptr13.i.i.i = getelementptr i8, ptr %18, i32 -4
  %tobool4.not34.i.i.i = icmp eq ptr %add.ptr13.i.i.i, null
  %tobool4.not.i.i.i = or i1 %tobool9.not.i.i.i, %tobool4.not34.i.i.i
  br i1 %tobool4.not.i.i.i, label %for.inc.i.i.i.if.end5.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i.i

for.inc.i.i.i.if.end5.i_crit_edge:                ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5.i

if.end5.i:                                        ; preds = %for.inc.i.i.i.if.end5.i_crit_edge, %if.end.i.i.i.if.end5.i_crit_edge, %entry.if.end5.i_crit_edge
  %filter_list.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %19 = ptrtoint ptr %filter_list.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %filter_list.i, align 4
  %call7.i = tail call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end5.i.do.end15.i_crit_edge

if.end5.i.do.end15.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end15.i

land.lhs.true.i:                                  ; preds = %if.end5.i
  %call8.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %land.lhs.true.i.do.end15.i_crit_edge, label %land.lhs.true10.i

land.lhs.true.i.do.end15.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end15.i

land.lhs.true10.i:                                ; preds = %land.lhs.true.i
  %.b40.i = load i1, ptr @drr_classify.__warned, align 1
  br i1 %.b40.i, label %land.lhs.true10.i.do.end15.i_crit_edge, label %if.then12.i

land.lhs.true10.i.do.end15.i_crit_edge:           ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end15.i

if.then12.i:                                      ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @drr_classify.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 316, ptr noundef nonnull @.str.7) #13
  br label %do.end15.i

do.end15.i:                                       ; preds = %if.then12.i, %land.lhs.true10.i.do.end15.i_crit_edge, %land.lhs.true.i.do.end15.i_crit_edge, %if.end5.i.do.end15.i_crit_edge
  %call17.i = call i32 @tcf_classify(ptr noundef %skb, ptr noundef null, ptr noundef %20, ptr noundef nonnull %res.i, i1 noundef zeroext false) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call17.i)
  %cmp18.i = icmp sgt i32 %call17.i, -1
  br i1 %cmp18.i, label %if.then19.i, label %do.end15.i.if.then.thread65_crit_edge

do.end15.i.if.then.thread65_crit_edge:            ; preds = %do.end15.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.thread65

if.then19.i:                                      ; preds = %do.end15.i
  %21 = zext i32 %call17.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call17.i, label %sw.epilog.i [
    i32 5, label %if.then19.i.if.then.thread70_crit_edge
    i32 4, label %if.then19.i.if.then.thread70_crit_edge90
    i32 8, label %if.then19.i.if.then.thread70_crit_edge91
    i32 2, label %if.then19.i.if.then.thread65_crit_edge
  ]

if.then19.i.if.then.thread65_crit_edge:           ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.thread65

if.then19.i.if.then.thread70_crit_edge91:         ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.thread70

if.then19.i.if.then.thread70_crit_edge90:         ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.thread70

if.then19.i.if.then.thread70_crit_edge:           ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.thread70

sw.epilog.i:                                      ; preds = %if.then19.i
  %22 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %res.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp21.i = icmp eq i32 %23, 0
  br i1 %cmp21.i, label %if.then22.i, label %drr_classify.exit

if.then22.i:                                      ; preds = %sw.epilog.i
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i.i41.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i.i41.i, label %if.then22.i.if.then.thread65_crit_edge, label %if.end.i.i54.i

if.then22.i.if.then.thread65_crit_edge:           ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.thread65

if.end.i.i54.i:                                   ; preds = %if.then22.i
  %clhash.i42.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %hashmask.i.i43.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 6
  %26 = ptrtoint ptr %hashmask.i.i43.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hashmask.i.i43.i, align 4
  %shr.i.i.i44.i = lshr i32 %25, 8
  %xor.i.i.i45.i = xor i32 %shr.i.i.i44.i, %25
  %shr1.i.i.i46.i = lshr i32 %xor.i.i.i45.i, 4
  %xor2.i.i.i47.i = xor i32 %shr1.i.i.i46.i, %xor.i.i.i45.i
  %and.i.i.i48.i = and i32 %27, %xor2.i.i.i47.i
  %28 = ptrtoint ptr %clhash.i42.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %clhash.i42.i, align 4
  %arrayidx.i.i49.i = getelementptr %struct.hlist_head, ptr %29, i32 %and.i.i.i48.i
  %30 = ptrtoint ptr %arrayidx.i.i49.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i.i49.i, align 4
  %tobool2.not.i.i50.i = icmp eq ptr %31, null
  %add.ptr.i.i51.i = getelementptr i8, ptr %31, i32 -4
  %tobool4.not3033.i.i52.i = icmp eq ptr %add.ptr.i.i51.i, null
  %tobool4.not30.i.i53.i = or i1 %tobool2.not.i.i50.i, %tobool4.not3033.i.i52.i
  br i1 %tobool4.not30.i.i53.i, label %if.end.i.i54.i.if.then.thread65_crit_edge, label %if.end.i.i54.i.for.body.i.i57.i_crit_edge

if.end.i.i54.i.for.body.i.i57.i_crit_edge:        ; preds = %if.end.i.i54.i
  br label %for.body.i.i57.i

if.end.i.i54.i.if.then.thread65_crit_edge:        ; preds = %if.end.i.i54.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.thread65

for.body.i.i57.i:                                 ; preds = %for.inc.i.i63.i.for.body.i.i57.i_crit_edge, %if.end.i.i54.i.for.body.i.i57.i_crit_edge
  %cl.031.i.i55.i = phi ptr [ %add.ptr13.i.i60.i, %for.inc.i.i63.i.for.body.i.i57.i_crit_edge ], [ %add.ptr.i.i51.i, %if.end.i.i54.i.for.body.i.i57.i_crit_edge ]
  %32 = ptrtoint ptr %cl.031.i.i55.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cl.031.i.i55.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %25)
  %cmp.i.i56.i = icmp eq i32 %33, %25
  br i1 %cmp.i.i56.i, label %for.body.i.i57.i.drr_classify.exit.thread55_crit_edge, label %for.inc.i.i63.i

for.body.i.i57.i.drr_classify.exit.thread55_crit_edge: ; preds = %for.body.i.i57.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %drr_classify.exit.thread55

for.inc.i.i63.i:                                  ; preds = %for.body.i.i57.i
  %hnode.i.i58.i = getelementptr inbounds %struct.Qdisc_class_common, ptr %cl.031.i.i55.i, i32 0, i32 1
  %34 = ptrtoint ptr %hnode.i.i58.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hnode.i.i58.i, align 4
  %tobool9.not.i.i59.i = icmp eq ptr %35, null
  %add.ptr13.i.i60.i = getelementptr i8, ptr %35, i32 -4
  %tobool4.not34.i.i61.i = icmp eq ptr %add.ptr13.i.i60.i, null
  %tobool4.not.i.i62.i = or i1 %tobool9.not.i.i59.i, %tobool4.not34.i.i61.i
  br i1 %tobool4.not.i.i62.i, label %for.inc.i.i63.i.if.then.thread65_crit_edge, label %for.inc.i.i63.i.for.body.i.i57.i_crit_edge

for.inc.i.i63.i.for.body.i.i57.i_crit_edge:       ; preds = %for.inc.i.i63.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i57.i

for.inc.i.i63.i.if.then.thread65_crit_edge:       ; preds = %for.inc.i.i63.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.thread65

drr_classify.exit.thread55:                       ; preds = %for.body.i.i57.i.drr_classify.exit.thread55_crit_edge, %for.body.i.i.i.drr_classify.exit.thread55_crit_edge
  %retval.0.i.ph = phi ptr [ %cl.031.i.i55.i, %for.body.i.i57.i.drr_classify.exit.thread55_crit_edge ], [ %cl.031.i.i.i, %for.body.i.i.i.drr_classify.exit.thread55_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %res.i) #13
  br label %if.end4

drr_classify.exit:                                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  %36 = inttoptr i32 %23 to ptr
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %res.i) #13
  br label %if.end4

if.then.thread65:                                 ; preds = %for.inc.i.i63.i.if.then.thread65_crit_edge, %if.end.i.i54.i.if.then.thread65_crit_edge, %if.then22.i.if.then.thread65_crit_edge, %if.then19.i.if.then.thread65_crit_edge, %do.end15.i.if.then.thread65_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %res.i) #13
  %drops.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  %37 = ptrtoint ptr %drops.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %drops.i.i, align 4
  %inc.i.i = add i32 %38, 1
  store i32 %inc.i.i, ptr %drops.i.i, align 4
  br label %if.end

if.then.thread70:                                 ; preds = %if.then19.i.if.then.thread70_crit_edge, %if.then19.i.if.then.thread70_crit_edge90, %if.then19.i.if.then.thread70_crit_edge91
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %res.i) #13
  br label %if.end

if.end:                                           ; preds = %if.then.thread70, %if.then.thread65
  %err.05264 = phi i32 [ 131072, %if.then.thread65 ], [ 65536, %if.then.thread70 ]
  %39 = ptrtoint ptr %to_free to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %to_free, align 4
  %41 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %skb, align 8
  store ptr %skb, ptr %to_free, align 4
  br label %cleanup

if.end4:                                          ; preds = %drr_classify.exit, %drr_classify.exit.thread55
  %retval.0.i59 = phi ptr [ %retval.0.i.ph, %drr_classify.exit.thread55 ], [ %36, %drr_classify.exit ]
  %qdisc = getelementptr inbounds %struct.drr_class, ptr %retval.0.i59, i32 0, i32 6
  %42 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %qdisc, align 16
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %43, i32 0, i32 17, i32 2
  %44 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %qlen, align 8
  %stab1.i.i = getelementptr inbounds %struct.Qdisc, ptr %43, i32 0, i32 5
  %46 = ptrtoint ptr %stab1.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile ptr, ptr %stab1.i.i, align 4
  %call.i.i = call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %if.end4.do.end8.i.i_crit_edge

if.end4.do.end8.i.i_crit_edge:                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end8.i.i

land.lhs.true.i.i:                                ; preds = %if.end4
  %call3.i.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.do.end8.i.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i.i.do.end8.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end8.i.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i.i
  %.b14.i.i = load i1, ptr @qdisc_calculate_pkt_len.__warned, align 1
  br i1 %.b14.i.i, label %land.lhs.true5.i.i.do.end8.i.i_crit_edge, label %if.then.i.i

land.lhs.true5.i.i.do.end8.i.i_crit_edge:         ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end8.i.i

if.then.i.i:                                      ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @qdisc_calculate_pkt_len.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 835, ptr noundef nonnull @.str.7) #13
  br label %do.end8.i.i

do.end8.i.i:                                      ; preds = %if.then.i.i, %land.lhs.true5.i.i.do.end8.i.i_crit_edge, %land.lhs.true.i.i.do.end8.i.i_crit_edge, %if.end4.do.end8.i.i_crit_edge
  %tobool10.not.i.i = icmp eq ptr %47, null
  br i1 %tobool10.not.i.i, label %do.end8.i.i.qdisc_enqueue.exit_crit_edge, label %if.then11.i.i

do.end8.i.i.qdisc_enqueue.exit_crit_edge:         ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qdisc_enqueue.exit

if.then11.i.i:                                    ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__qdisc_calculate_pkt_len(ptr noundef %skb, ptr noundef nonnull %47) #13
  br label %qdisc_enqueue.exit

qdisc_enqueue.exit:                               ; preds = %if.then11.i.i, %do.end8.i.i.qdisc_enqueue.exit_crit_edge
  %48 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %43, align 128
  %call.i = call i32 %49(ptr noundef %skb, ptr noundef %43, ptr noundef %to_free) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp9.not = icmp eq i32 %call.i, 0
  br i1 %cmp9.not, label %if.end18, label %if.then13, !prof !51

if.then13:                                        ; preds = %qdisc_enqueue.exit
  %and14 = and i32 %call.i, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.then16, label %if.then13.cleanup_crit_edge

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then16:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #15
  %drops = getelementptr inbounds %struct.drr_class, ptr %retval.0.i59, i32 0, i32 3, i32 2
  %50 = ptrtoint ptr %drops to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %drops, align 8
  %inc = add i32 %51, 1
  store i32 %inc, ptr %drops, align 8
  %drops.i.i45 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  %52 = ptrtoint ptr %drops.i.i45 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %drops.i.i45, align 4
  %inc.i.i46 = add i32 %53, 1
  store i32 %inc.i.i46, ptr %drops.i.i45, align 4
  br label %cleanup

if.end18:                                         ; preds = %qdisc_enqueue.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool6.not = icmp eq i32 %45, 0
  br i1 %tobool6.not, label %if.then20, label %if.end18.if.end21_crit_edge

if.end18.if.end21_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.then20:                                        ; preds = %if.end18
  %alist = getelementptr inbounds %struct.drr_class, ptr %retval.0.i59, i32 0, i32 5
  %prev.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 1
  %54 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %prev.i, align 4
  %call.i.i47 = call zeroext i1 @__list_add_valid(ptr noundef %alist, ptr noundef %55, ptr noundef %privdata.i) #13
  br i1 %call.i.i47, label %if.end.i.i, label %if.then20.list_add_tail.exit_crit_edge

if.then20.list_add_tail.exit_crit_edge:           ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #15
  %56 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %alist, ptr %prev.i, align 4
  %57 = ptrtoint ptr %alist to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %privdata.i, ptr %alist, align 4
  %prev3.i.i = getelementptr inbounds %struct.drr_class, ptr %retval.0.i59, i32 0, i32 5, i32 1
  %58 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %55, ptr %prev3.i.i, align 4
  %59 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %alist, ptr %55, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then20.list_add_tail.exit_crit_edge
  %quantum = getelementptr inbounds %struct.drr_class, ptr %retval.0.i59, i32 0, i32 7
  %60 = ptrtoint ptr %quantum to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %quantum, align 4
  %deficit = getelementptr inbounds %struct.drr_class, ptr %retval.0.i59, i32 0, i32 8
  %62 = ptrtoint ptr %deficit to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %deficit, align 8
  br label %if.end21

if.end21:                                         ; preds = %list_add_tail.exit, %if.end18.if.end21_crit_edge
  %backlog = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %63 = ptrtoint ptr %backlog to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %backlog, align 4
  %add = add i32 %64, %1
  store i32 %add, ptr %backlog, align 4
  %qlen24 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %65 = ptrtoint ptr %qlen24 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %qlen24, align 8
  %inc25 = add i32 %66, 1
  store i32 %inc25, ptr %qlen24, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then16, %if.then13.cleanup_crit_edge, %if.end
  %err.1 = phi i32 [ %err.05264, %if.end ], [ 0, %if.end21 ], [ %call.i, %if.then16 ], [ %call.i, %if.then13.cleanup_crit_edge ]
  ret i32 %err.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @drr_dequeue(ptr noundef %sch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %0 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %privdata.i, align 4
  %cmp.i.not = icmp eq ptr %1, %privdata.i
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %2 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %privdata.i, align 4
  %qdisc69 = getelementptr i8, ptr %3, i32 8
  %4 = ptrtoint ptr %qdisc69 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %qdisc69, align 16
  %ops70 = getelementptr inbounds %struct.Qdisc, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ops70 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops70, align 16
  %peek71 = getelementptr inbounds %struct.Qdisc_ops, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %peek71 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %peek71, align 4
  %call472 = tail call ptr %9(ptr noundef %5) #13
  %cmp73 = icmp eq ptr %call472, null
  br i1 %cmp73, label %while.cond.preheader.if.then5_crit_edge, label %if.end7.lr.ph

while.cond.preheader.if.then5_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then5

if.end7.lr.ph:                                    ; preds = %while.cond.preheader
  %prev.i2.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 1
  br label %if.end7

if.then5:                                         ; preds = %list_move_tail.exit.if.then5_crit_edge, %while.cond.preheader.if.then5_crit_edge
  %.lcssa68 = phi ptr [ %3, %while.cond.preheader.if.then5_crit_edge ], [ %104, %list_move_tail.exit.if.then5_crit_edge ]
  %qdisc.le67 = getelementptr i8, ptr %.lcssa68, i32 8
  %10 = ptrtoint ptr %qdisc.le67 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %qdisc.le67, align 16
  tail call void @qdisc_warn_nonwc(ptr noundef nonnull @__func__.drr_dequeue, ptr noundef %11) #13
  br label %cleanup

if.end7:                                          ; preds = %list_move_tail.exit.if.end7_crit_edge, %if.end7.lr.ph
  %call474 = phi ptr [ %call472, %if.end7.lr.ph ], [ %call4, %list_move_tail.exit.if.end7_crit_edge ]
  %12 = phi ptr [ %3, %if.end7.lr.ph ], [ %104, %list_move_tail.exit.if.end7_crit_edge ]
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %call474, i32 0, i32 3
  %13 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cb.i.i, align 4
  %deficit = getelementptr i8, ptr %12, i32 16
  %15 = ptrtoint ptr %deficit to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %deficit, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %14)
  %cmp9.not = icmp ult i32 %16, %14
  br i1 %cmp9.not, label %if.end26, label %if.then10

if.then10:                                        ; preds = %if.end7
  %qdisc.le = getelementptr i8, ptr %12, i32 8
  %sub = sub i32 %16, %14
  %17 = ptrtoint ptr %deficit to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %sub, ptr %deficit, align 8
  %18 = ptrtoint ptr %qdisc.le to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %qdisc.le, align 16
  %gso_skb.i = getelementptr inbounds %struct.Qdisc, ptr %19, i32 0, i32 16
  %20 = ptrtoint ptr %gso_skb.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %gso_skb.i, align 4
  %cmp.i.i = icmp eq ptr %21, %gso_skb.i
  %tobool.not31.i = icmp eq ptr %21, null
  %tobool.not.i = or i1 %cmp.i.i, %tobool.not31.i
  br i1 %tobool.not.i, label %qdisc_dequeue_peeked.exit, label %__skb_dequeue.exit.i

__skb_dequeue.exit.i:                             ; preds = %if.then10
  %qlen.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %19, i32 0, i32 16, i32 1
  %22 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %qlen.i.i.i, align 4
  %sub.i.i.i = add i32 %23, -1
  store volatile i32 %sub.i.i.i, ptr %qlen.i.i.i, align 4
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %21, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon.0, ptr %21, i32 0, i32 1
  %26 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %21, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon.0, ptr %25, i32 0, i32 1
  %28 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %27, ptr %prev17.i.i.i, align 4
  %29 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %25, ptr %27, align 8
  %flags.i.i = getelementptr inbounds %struct.Qdisc, ptr %19, i32 0, i32 2
  %30 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %31, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then4.i

if.then4.i:                                       ; preds = %__skb_dequeue.exit.i
  %32 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !52
  %cb.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 3
  %33 = ptrtoint ptr %cb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cb.i.i.i.i, align 4
  %cpu_qstats.i.i = getelementptr inbounds %struct.Qdisc, ptr %19, i32 0, i32 12
  %35 = ptrtoint ptr %cpu_qstats.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cpu_qstats.i.i, align 4
  %backlog.i.i = getelementptr inbounds %struct.gnet_stats_queue, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %backlog.i.i to i32
  %38 = tail call i32 @llvm.read_register.i32(metadata !40) #13
  %and.i.i.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %41
  %42 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %43, %37
  %44 = inttoptr i32 %add.i.i to ptr
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 4
  %add14.i.i = sub i32 %46, %34
  store i32 %add14.i.i, ptr %44, align 4
  %47 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !53
  %and.i.i.i.i = and i32 %47, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i19.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i19.i, label %if.then.i20.i, label %if.then4.i.qdisc_qstats_cpu_backlog_dec.exit.i_crit_edge, !prof !54

if.then4.i.qdisc_qstats_cpu_backlog_dec.exit.i_crit_edge: ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qdisc_qstats_cpu_backlog_dec.exit.i

if.then.i20.i:                                    ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %qdisc_qstats_cpu_backlog_dec.exit.i

qdisc_qstats_cpu_backlog_dec.exit.i:              ; preds = %if.then.i20.i, %if.then4.i.qdisc_qstats_cpu_backlog_dec.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %32) #13, !srcloc !55
  %48 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !52
  %49 = ptrtoint ptr %cpu_qstats.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cpu_qstats.i.i, align 4
  %51 = ptrtoint ptr %50 to i32
  %52 = tail call i32 @llvm.read_register.i32(metadata !40) #13
  %and.i.i22.i = and i32 %52, -16384
  %53 = inttoptr i32 %and.i.i22.i to ptr
  %cpu.i23.i = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %cpu.i23.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cpu.i23.i, align 4
  %arrayidx.i24.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %55
  %56 = ptrtoint ptr %arrayidx.i24.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx.i24.i, align 4
  %add.i25.i = add i32 %57, %51
  %58 = inttoptr i32 %add.i25.i to ptr
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %58, align 4
  %add13.i.i = add i32 %60, -1
  store i32 %add13.i.i, ptr %58, align 4
  %61 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !53
  %and.i.i.i26.i = and i32 %61, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i26.i)
  %tobool.not.i27.i = icmp eq i32 %and.i.i.i26.i, 0
  br i1 %tobool.not.i27.i, label %if.then.i28.i, label %qdisc_qstats_cpu_backlog_dec.exit.i.qdisc_qstats_cpu_qlen_dec.exit.i_crit_edge, !prof !54

qdisc_qstats_cpu_backlog_dec.exit.i.qdisc_qstats_cpu_qlen_dec.exit.i_crit_edge: ; preds = %qdisc_qstats_cpu_backlog_dec.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qdisc_qstats_cpu_qlen_dec.exit.i

if.then.i28.i:                                    ; preds = %qdisc_qstats_cpu_backlog_dec.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %qdisc_qstats_cpu_qlen_dec.exit.i

qdisc_qstats_cpu_qlen_dec.exit.i:                 ; preds = %if.then.i28.i, %qdisc_qstats_cpu_backlog_dec.exit.i.qdisc_qstats_cpu_qlen_dec.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %48) #13, !srcloc !55
  br label %if.end18

if.else.i:                                        ; preds = %__skb_dequeue.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %cb.i.i.i29.i = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 3
  %62 = ptrtoint ptr %cb.i.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %cb.i.i.i29.i, align 4
  %backlog.i30.i = getelementptr inbounds %struct.Qdisc, ptr %19, i32 0, i32 19, i32 1
  %64 = ptrtoint ptr %backlog.i30.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %backlog.i30.i, align 4
  %sub.i.i = sub i32 %65, %63
  store i32 %sub.i.i, ptr %backlog.i30.i, align 4
  %qlen.i = getelementptr inbounds %struct.Qdisc, ptr %19, i32 0, i32 17, i32 2
  %66 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %qlen.i, align 8
  %dec.i = add i32 %67, -1
  store i32 %dec.i, ptr %qlen.i, align 8
  br label %if.end18

qdisc_dequeue_peeked.exit:                        ; preds = %if.then10
  %dequeue.i = getelementptr inbounds %struct.Qdisc, ptr %19, i32 0, i32 1
  %68 = ptrtoint ptr %dequeue.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dequeue.i, align 4
  %call6.i = tail call ptr %69(ptr noundef %19) #13
  %cmp14 = icmp eq ptr %call6.i, null
  br i1 %cmp14, label %qdisc_dequeue_peeked.exit.cleanup_crit_edge, label %qdisc_dequeue_peeked.exit.if.end18_crit_edge, !prof !54

qdisc_dequeue_peeked.exit.if.end18_crit_edge:     ; preds = %qdisc_dequeue_peeked.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

qdisc_dequeue_peeked.exit.cleanup_crit_edge:      ; preds = %qdisc_dequeue_peeked.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end18:                                         ; preds = %qdisc_dequeue_peeked.exit.if.end18_crit_edge, %if.else.i, %qdisc_qstats_cpu_qlen_dec.exit.i
  %skb.0.i62 = phi ptr [ %call6.i, %qdisc_dequeue_peeked.exit.if.end18_crit_edge ], [ %21, %qdisc_qstats_cpu_qlen_dec.exit.i ], [ %21, %if.else.i ]
  %70 = ptrtoint ptr %qdisc.le to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %qdisc.le, align 16
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %71, i32 0, i32 17, i32 2
  %72 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %qlen, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp21 = icmp eq i32 %73, 0
  br i1 %cmp21, label %if.then22, label %if.end18.if.end23_crit_edge

if.end18.if.end23_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

if.then22:                                        ; preds = %if.end18
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %12) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.then22.list_del.exit_crit_edge

if.then22.list_del.exit_crit_edge:                ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %74 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %prev.i.i, align 4
  %76 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %12, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %75, ptr %prev1.i.i.i, align 4
  %79 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %77, ptr %75, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then22.list_del.exit_crit_edge
  %80 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr inttoptr (i32 256 to ptr), ptr %12, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %81 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %if.end23

if.end23:                                         ; preds = %list_del.exit, %if.end18.if.end23_crit_edge
  %bstats = getelementptr i8, ptr %12, i32 -72
  tail call fastcc void @bstats_update(ptr noundef %bstats, ptr noundef nonnull %skb.0.i62)
  %bstats.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18
  tail call fastcc void @bstats_update(ptr noundef %bstats.i, ptr noundef nonnull %skb.0.i62) #13
  %cb.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i62, i32 0, i32 3
  %82 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %cb.i.i.i, align 4
  %backlog.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %84 = ptrtoint ptr %backlog.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %backlog.i, align 4
  %sub.i = sub i32 %85, %83
  store i32 %sub.i, ptr %backlog.i, align 4
  %qlen25 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %86 = ptrtoint ptr %qlen25 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %qlen25, align 8
  %dec = add i32 %87, -1
  store i32 %dec, ptr %qlen25, align 8
  br label %cleanup

if.end26:                                         ; preds = %if.end7
  %quantum = getelementptr i8, ptr %12, i32 12
  %88 = ptrtoint ptr %quantum to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %quantum, align 4
  %add = add i32 %89, %16
  %90 = ptrtoint ptr %deficit to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %add, ptr %deficit, align 8
  %call.i.i56 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %12) #13
  br i1 %call.i.i56, label %if.end.i.i59, label %if.end26.__list_del_entry.exit.i_crit_edge

if.end26.__list_del_entry.exit.i_crit_edge:       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %__list_del_entry.exit.i

if.end.i.i59:                                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i57 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %91 = ptrtoint ptr %prev.i.i57 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %prev.i.i57, align 4
  %93 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %12, align 4
  %prev1.i.i.i58 = getelementptr inbounds %struct.list_head, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %prev1.i.i.i58 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %92, ptr %prev1.i.i.i58, align 4
  %96 = ptrtoint ptr %92 to i32
  call void @__asan_store4_noabort(i32 %96)
  store volatile ptr %94, ptr %92, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i59, %if.end26.__list_del_entry.exit.i_crit_edge
  %97 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %12, ptr noundef %98, ptr noundef %privdata.i) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %99 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %12, ptr %prev.i2.i, align 4
  %100 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %privdata.i, ptr %12, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %101 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %98, ptr %prev3.i.i.i, align 4
  %102 = ptrtoint ptr %98 to i32
  call void @__asan_store4_noabort(i32 %102)
  store volatile ptr %12, ptr %98, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %103 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %privdata.i, align 4
  %qdisc = getelementptr i8, ptr %104, i32 8
  %105 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %qdisc, align 16
  %ops = getelementptr inbounds %struct.Qdisc, ptr %106, i32 0, i32 4
  %107 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %ops, align 16
  %peek = getelementptr inbounds %struct.Qdisc_ops, ptr %108, i32 0, i32 7
  %109 = ptrtoint ptr %peek to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %peek, align 4
  %call4 = tail call ptr %110(ptr noundef %106) #13
  %cmp = icmp eq ptr %call4, null
  br i1 %cmp, label %list_move_tail.exit.if.then5_crit_edge, label %list_move_tail.exit.if.end7_crit_edge

list_move_tail.exit.if.end7_crit_edge:            ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

list_move_tail.exit.if.then5_crit_edge:           ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then5

cleanup:                                          ; preds = %if.end23, %qdisc_dequeue_peeked.exit.cleanup_crit_edge, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %skb.0.i62, %if.end23 ], [ null, %qdisc_dequeue_peeked.exit.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ null, %if.then5 ]
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @qdisc_peek_dequeued(ptr noundef %sch) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %gso_skb = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 16
  %0 = ptrtoint ptr %gso_skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gso_skb, align 4
  %cmp.i = icmp eq ptr %1, %gso_skb
  %tobool.not15 = icmp eq ptr %1, null
  %tobool.not = or i1 %cmp.i, %tobool.not15
  br i1 %tobool.not, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.then:                                          ; preds = %entry
  %dequeue = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 1
  %2 = ptrtoint ptr %dequeue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dequeue, align 4
  %call1 = tail call ptr %3(ptr noundef %sch) #13
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then.if.end5_crit_edge, label %if.then3

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
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
define internal i32 @drr_init_qdisc(ptr noundef %sch, ptr nocapture noundef readnone %opt, ptr noundef %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %block = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 3
  %filter_list = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %call1 = tail call i32 @tcf_block_get(ptr noundef %block, ptr noundef %filter_list, ptr noundef %sch, ptr noundef %extack) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %clhash = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %call2 = tail call i32 @qdisc_class_hash_init(ptr noundef %clhash) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %privdata.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %privdata.i, ptr %privdata.i, align 4
  %prev.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %privdata.i, ptr %prev.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ %call1, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @drr_reset_qdisc(ptr nocapture noundef %sch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hashsize = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 5
  %0 = ptrtoint ptr %hashsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hashsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp42.not = icmp eq i32 %1, 0
  br i1 %cmp42.not, label %entry.for.end20_crit_edge, label %for.body.lr.ph

entry.for.end20_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end20

for.body.lr.ph:                                   ; preds = %entry
  %clhash = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc19.for.body_crit_edge, %for.body.lr.ph
  %i.043 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc19.for.body_crit_edge ]
  %2 = ptrtoint ptr %clhash to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clhash, align 4
  %arrayidx = getelementptr %struct.hlist_head, ptr %3, i32 %i.043
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  %add.ptr = getelementptr i8, ptr %5, i32 -4
  %tobool4.not3844 = icmp eq ptr %add.ptr, null
  %tobool4.not38 = or i1 %tobool.not, %tobool4.not3844
  br i1 %tobool4.not38, label %for.body.for.inc19_crit_edge, label %for.body.for.body5_crit_edge

for.body.for.body5_crit_edge:                     ; preds = %for.body
  br label %for.body5

for.body.for.inc19_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc19

for.body5:                                        ; preds = %if.end.for.body5_crit_edge, %for.body.for.body5_crit_edge
  %cl.039 = phi ptr [ %add.ptr15, %if.end.for.body5_crit_edge ], [ %add.ptr, %for.body.for.body5_crit_edge ]
  %qdisc = getelementptr inbounds %struct.drr_class, ptr %cl.039, i32 0, i32 6
  %6 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %qdisc, align 16
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %7, i32 0, i32 17, i32 2
  %8 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %qlen, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool7.not = icmp eq i32 %9, 0
  br i1 %tobool7.not, label %for.body5.if.end_crit_edge, label %if.then

for.body5.if.end_crit_edge:                       ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %for.body5
  %alist = getelementptr inbounds %struct.drr_class, ptr %cl.039, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %alist) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.drr_class, ptr %cl.039, i32 0, i32 5, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %alist to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %alist, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %16 = ptrtoint ptr %alist to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 256 to ptr), ptr %alist, align 4
  %prev.i = getelementptr inbounds %struct.drr_class, ptr %cl.039, i32 0, i32 5, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %if.end

if.end:                                           ; preds = %list_del.exit, %for.body5.if.end_crit_edge
  %18 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %qdisc, align 16
  tail call void @qdisc_reset(ptr noundef %19) #13
  %hnode = getelementptr inbounds %struct.Qdisc_class_common, ptr %cl.039, i32 0, i32 1
  %20 = ptrtoint ptr %hnode to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hnode, align 4
  %tobool11.not = icmp eq ptr %21, null
  %add.ptr15 = getelementptr i8, ptr %21, i32 -4
  %tobool4.not45 = icmp eq ptr %add.ptr15, null
  %tobool4.not = or i1 %tobool11.not, %tobool4.not45
  br i1 %tobool4.not, label %if.end.for.inc19_crit_edge, label %if.end.for.body5_crit_edge

if.end.for.body5_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body5

if.end.for.inc19_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc19

for.inc19:                                        ; preds = %if.end.for.inc19_crit_edge, %for.body.for.inc19_crit_edge
  %inc = add nuw i32 %i.043, 1
  %22 = ptrtoint ptr %hashsize to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %hashsize, align 4
  %cmp = icmp ult i32 %inc, %23
  br i1 %cmp, label %for.inc19.for.body_crit_edge, label %for.inc19.for.end20_crit_edge

for.inc19.for.end20_crit_edge:                    ; preds = %for.inc19
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end20

for.inc19.for.body_crit_edge:                     ; preds = %for.inc19
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end20:                                        ; preds = %for.inc19.for.end20_crit_edge, %entry.for.end20_crit_edge
  %backlog = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %24 = ptrtoint ptr %backlog to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %backlog, align 4
  %qlen22 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %25 = ptrtoint ptr %qlen22 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %qlen22, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @drr_destroy_qdisc(ptr noundef %sch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %block = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 3
  %0 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %block, align 4
  tail call void @tcf_block_put(ptr noundef %1) #13
  %clhash = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %hashsize = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 5
  %2 = ptrtoint ptr %hashsize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hashsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp37.not = icmp eq i32 %3, 0
  br i1 %cmp37.not, label %entry.for.end20_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end20_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end20

for.body:                                         ; preds = %for.inc19.for.body_crit_edge, %entry.for.body_crit_edge
  %i.038 = phi i32 [ %inc, %for.inc19.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %4 = ptrtoint ptr %clhash to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clhash, align 4
  %arrayidx = getelementptr %struct.hlist_head, ptr %5, i32 %i.038
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %7, null
  %add.ptr = getelementptr i8, ptr %7, i32 -4
  %tobool4.not3539 = icmp eq ptr %add.ptr, null
  %tobool4.not35 = or i1 %tobool.not, %tobool4.not3539
  br i1 %tobool4.not35, label %for.body.for.inc19_crit_edge, label %for.body.land.rhs_crit_edge

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  br label %land.rhs

for.body.for.inc19_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc19

land.rhs:                                         ; preds = %land.rhs.land.rhs_crit_edge, %for.body.land.rhs_crit_edge
  %cl.036 = phi ptr [ %add.ptr15, %land.rhs.land.rhs_crit_edge ], [ %add.ptr, %for.body.land.rhs_crit_edge ]
  %hnode = getelementptr inbounds %struct.Qdisc_class_common, ptr %cl.036, i32 0, i32 1
  %8 = ptrtoint ptr %hnode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hnode, align 4
  %rate_est.i = getelementptr inbounds %struct.drr_class, ptr %cl.036, i32 0, i32 4
  tail call void @gen_kill_estimator(ptr noundef %rate_est.i) #13
  %qdisc.i = getelementptr inbounds %struct.drr_class, ptr %cl.036, i32 0, i32 6
  %10 = ptrtoint ptr %qdisc.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %qdisc.i, align 16
  tail call void @qdisc_put(ptr noundef %11) #13
  tail call void @kfree(ptr noundef nonnull %cl.036) #13
  %tobool11.not = icmp eq ptr %9, null
  %add.ptr15 = getelementptr i8, ptr %9, i32 -4
  %tobool4.not40 = icmp eq ptr %add.ptr15, null
  %tobool4.not = or i1 %tobool11.not, %tobool4.not40
  br i1 %tobool4.not, label %land.rhs.for.inc19_crit_edge, label %land.rhs.land.rhs_crit_edge

land.rhs.land.rhs_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs

land.rhs.for.inc19_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc19

for.inc19:                                        ; preds = %land.rhs.for.inc19_crit_edge, %for.body.for.inc19_crit_edge
  %inc = add nuw i32 %i.038, 1
  %12 = ptrtoint ptr %hashsize to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hashsize, align 4
  %cmp = icmp ult i32 %inc, %13
  br i1 %cmp, label %for.inc19.for.body_crit_edge, label %for.inc19.for.end20_crit_edge

for.inc19.for.end20_crit_edge:                    ; preds = %for.inc19
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end20

for.inc19.for.body_crit_edge:                     ; preds = %for.inc19
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end20:                                        ; preds = %for.inc19.for.end20_crit_edge, %entry.for.end20_crit_edge
  tail call void @qdisc_class_hash_destroy(ptr noundef %clhash) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @drr_graft_class(ptr noundef %sch, i32 noundef %arg, ptr noundef %new, ptr nocapture noundef writeonly %old, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  %qstats.i.i.i = alloca %struct.gnet_stats_queue, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %arg to ptr
  %cmp = icmp eq ptr %new, null
  br i1 %cmp, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dev_queue = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %1 = ptrtoint ptr %dev_queue to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev_queue, align 8
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 16
  %call = tail call ptr @qdisc_create_dflt(ptr noundef %2, ptr noundef nonnull @pfifo_qdisc_ops, i32 noundef %4, ptr noundef null) #13
  %cmp1 = icmp eq ptr %call, null
  %spec.store.select = select i1 %cmp1, ptr @noop_qdisc, ptr %call
  br label %if.end3

if.end3:                                          ; preds = %if.then, %entry.if.end3_crit_edge
  %new.addr.0 = phi ptr [ %spec.store.select, %if.then ], [ %new, %entry.if.end3_crit_edge ]
  %qdisc = getelementptr inbounds %struct.drr_class, ptr %0, i32 0, i32 6
  %flags.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 2
  %5 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.end3.sch_tree_lock.exit.i_crit_edge

if.end3.sch_tree_lock.exit.i_crit_edge:           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %sch_tree_lock.exit.i

if.else.i.i:                                      ; preds = %if.end3
  %dev_queue.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %7 = ptrtoint ptr %dev_queue.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_queue.i.i.i.i, align 8
  %qdisc_sleeping.i.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %qdisc_sleeping.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %qdisc_sleeping.i.i.i.i, align 4
  %call1.i.i.i = tail call i32 @rtnl_is_locked() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.rhs.i.i.i, label %if.else.i.i.sch_tree_lock.exit.i_crit_edge

if.else.i.i.sch_tree_lock.exit.i_crit_edge:       ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sch_tree_lock.exit.i

land.rhs.i.i.i:                                   ; preds = %if.else.i.i
  %.b41.i.i.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i.i, label %land.rhs.i.i.i.sch_tree_lock.exit.i_crit_edge, label %if.then.i.i.i, !prof !51

land.rhs.i.i.i.sch_tree_lock.exit.i_crit_edge:    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sch_tree_lock.exit.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 596) #13
  br label %sch_tree_lock.exit.i

sch_tree_lock.exit.i:                             ; preds = %if.then.i.i.i, %land.rhs.i.i.i.sch_tree_lock.exit.i_crit_edge, %if.else.i.i.sch_tree_lock.exit.i_crit_edge, %if.end3.sch_tree_lock.exit.i_crit_edge
  %.sink.i.i = phi ptr [ %sch, %if.end3.sch_tree_lock.exit.i_crit_edge ], [ %10, %if.else.i.i.sch_tree_lock.exit.i_crit_edge ], [ %10, %land.rhs.i.i.i.sch_tree_lock.exit.i_crit_edge ], [ %10, %if.then.i.i.i ]
  %lock.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %.sink.i.i, i32 0, i32 17, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i.i.i.i) #13
  %11 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %qdisc, align 4
  store ptr %new.addr.0, ptr %qdisc, align 4
  %cmp.not.i = icmp eq ptr %12, null
  br i1 %cmp.not.i, label %sch_tree_lock.exit.i.if.end.i_crit_edge, label %if.then.i

sch_tree_lock.exit.i.if.end.i_crit_edge:          ; preds = %sch_tree_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %sch_tree_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %qstats.i.i.i) #13
  %13 = call ptr @memset(ptr %qstats.i.i.i, i32 0, i32 20)
  %cpu_qstats.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %12, i32 0, i32 12
  %14 = ptrtoint ptr %cpu_qstats.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cpu_qstats.i.i.i, align 4
  %qstats1.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %12, i32 0, i32 19
  call void @gnet_stats_add_queue(ptr noundef nonnull %qstats.i.i.i, ptr noundef %15, ptr noundef %qstats1.i.i.i) #13
  %16 = ptrtoint ptr %qstats.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %qstats.i.i.i, align 4
  %qlen.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %12, i32 0, i32 17, i32 2
  %18 = ptrtoint ptr %qlen.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %qlen.i.i.i.i, align 8
  %add.i.i.i = add i32 %19, %17
  %backlog3.i.i.i = getelementptr inbounds %struct.gnet_stats_queue, ptr %qstats.i.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %backlog3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %backlog3.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qstats.i.i.i) #13
  call void @qdisc_reset(ptr noundef nonnull %12) #13
  call void @qdisc_tree_reduce_backlog(ptr noundef nonnull %12, i32 noundef %add.i.i.i, i32 noundef %21) #13
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sch_tree_lock.exit.i.if.end.i_crit_edge
  %22 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags.i.i, align 8
  %and.i6.i = and i32 %23, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i6.i)
  %tobool.not.i7.i = icmp eq i32 %and.i6.i, 0
  br i1 %tobool.not.i7.i, label %if.else.i12.i, label %if.end.i.qdisc_replace.exit_crit_edge

if.end.i.qdisc_replace.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qdisc_replace.exit

if.else.i12.i:                                    ; preds = %if.end.i
  %dev_queue.i.i.i8.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %24 = ptrtoint ptr %dev_queue.i.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_queue.i.i.i8.i, align 8
  %qdisc_sleeping.i.i.i9.i = getelementptr inbounds %struct.netdev_queue, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %qdisc_sleeping.i.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %qdisc_sleeping.i.i.i9.i, align 4
  %call1.i.i10.i = call i32 @rtnl_is_locked() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i10.i)
  %tobool.not.i.i11.i = icmp eq i32 %call1.i.i10.i, 0
  br i1 %tobool.not.i.i11.i, label %land.rhs.i.i14.i, label %if.else.i12.i.qdisc_replace.exit_crit_edge

if.else.i12.i.qdisc_replace.exit_crit_edge:       ; preds = %if.else.i12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qdisc_replace.exit

land.rhs.i.i14.i:                                 ; preds = %if.else.i12.i
  %.b41.i.i13.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i13.i, label %land.rhs.i.i14.i.qdisc_replace.exit_crit_edge, label %if.then.i.i15.i, !prof !51

land.rhs.i.i14.i.qdisc_replace.exit_crit_edge:    ; preds = %land.rhs.i.i14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qdisc_replace.exit

if.then.i.i15.i:                                  ; preds = %land.rhs.i.i14.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 596) #13
  br label %qdisc_replace.exit

qdisc_replace.exit:                               ; preds = %if.then.i.i15.i, %land.rhs.i.i14.i.qdisc_replace.exit_crit_edge, %if.else.i12.i.qdisc_replace.exit_crit_edge, %if.end.i.qdisc_replace.exit_crit_edge
  %.sink.i16.i = phi ptr [ %sch, %if.end.i.qdisc_replace.exit_crit_edge ], [ %27, %if.else.i12.i.qdisc_replace.exit_crit_edge ], [ %27, %land.rhs.i.i14.i.qdisc_replace.exit_crit_edge ], [ %27, %if.then.i.i15.i ]
  %lock.i.i.i17.i = getelementptr inbounds %struct.Qdisc, ptr %.sink.i16.i, i32 0, i32 17, i32 3
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i.i17.i) #13
  %28 = ptrtoint ptr %old to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %12, ptr %old, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @drr_class_leaf(ptr nocapture noundef readnone %sch, i32 noundef %arg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %arg to ptr
  %qdisc = getelementptr inbounds %struct.drr_class, ptr %0, i32 0, i32 6
  %1 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %qdisc, align 16
  ret ptr %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @drr_qlen_notify(ptr nocapture noundef readnone %csh, i32 noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %arg to ptr
  %alist = getelementptr inbounds %struct.drr_class, ptr %0, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %alist) #13
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.drr_class, ptr %0, i32 0, i32 5, i32 1
  %1 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prev.i.i, align 4
  %3 = ptrtoint ptr %alist to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %alist, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %prev1.i.i.i, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %4, ptr %2, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %7 = ptrtoint ptr %alist to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 256 to ptr), ptr %alist, align 4
  %prev.i = getelementptr inbounds %struct.drr_class, ptr %0, i32 0, i32 5, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @drr_search_class(ptr nocapture noundef readonly %sch, i32 noundef %classid) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %classid)
  %tobool.not.i.i = icmp eq i32 %classid, 0
  br i1 %tobool.not.i.i, label %entry.drr_find_class.exit_crit_edge, label %if.end.i.i

entry.drr_find_class.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %drr_find_class.exit

if.end.i.i:                                       ; preds = %entry
  %clhash.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %hashmask.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 6
  %0 = ptrtoint ptr %hashmask.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hashmask.i.i, align 4
  %shr.i.i.i = lshr i32 %classid, 8
  %xor.i.i.i = xor i32 %shr.i.i.i, %classid
  %shr1.i.i.i = lshr i32 %xor.i.i.i, 4
  %xor2.i.i.i = xor i32 %shr1.i.i.i, %xor.i.i.i
  %and.i.i.i = and i32 %1, %xor2.i.i.i
  %2 = ptrtoint ptr %clhash.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clhash.i, align 4
  %arrayidx.i.i = getelementptr %struct.hlist_head, ptr %3, i32 %and.i.i.i
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %5, null
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 -4
  %tobool4.not3033.i.i = icmp eq ptr %add.ptr.i.i, null
  %tobool4.not30.i.i = or i1 %tobool2.not.i.i, %tobool4.not3033.i.i
  br i1 %tobool4.not30.i.i, label %if.end.i.i.drr_find_class.exit_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  br label %for.body.i.i

if.end.i.i.drr_find_class.exit_crit_edge:         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %drr_find_class.exit

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.i.i.for.body.i.i_crit_edge
  %cl.031.i.i = phi ptr [ %add.ptr13.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %add.ptr.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %6 = ptrtoint ptr %cl.031.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cl.031.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %classid)
  %cmp.i.i = icmp eq i32 %7, %classid
  br i1 %cmp.i.i, label %for.body.i.i.drr_find_class.exit_crit_edge, label %for.inc.i.i

for.body.i.i.drr_find_class.exit_crit_edge:       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %drr_find_class.exit

for.inc.i.i:                                      ; preds = %for.body.i.i
  %hnode.i.i = getelementptr inbounds %struct.Qdisc_class_common, ptr %cl.031.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %hnode.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hnode.i.i, align 4
  %tobool9.not.i.i = icmp eq ptr %9, null
  %add.ptr13.i.i = getelementptr i8, ptr %9, i32 -4
  %tobool4.not34.i.i = icmp eq ptr %add.ptr13.i.i, null
  %tobool4.not.i.i = or i1 %tobool9.not.i.i, %tobool4.not34.i.i
  br i1 %tobool4.not.i.i, label %for.inc.i.i.drr_find_class.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.inc.i.i.drr_find_class.exit_crit_edge:        ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %drr_find_class.exit

drr_find_class.exit:                              ; preds = %for.inc.i.i.drr_find_class.exit_crit_edge, %for.body.i.i.drr_find_class.exit_crit_edge, %if.end.i.i.drr_find_class.exit_crit_edge, %entry.drr_find_class.exit_crit_edge
  %retval.0.i.i = phi ptr [ null, %entry.drr_find_class.exit_crit_edge ], [ null, %if.end.i.i.drr_find_class.exit_crit_edge ], [ %cl.031.i.i, %for.body.i.i.drr_find_class.exit_crit_edge ], [ null, %for.inc.i.i.drr_find_class.exit_crit_edge ]
  %10 = ptrtoint ptr %retval.0.i.i to i32
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @drr_change_class(ptr noundef %sch, i32 noundef %classid, i32 noundef %parentid, ptr nocapture noundef readonly %tca, ptr nocapture noundef %arg, ptr noundef %extack) #2 align 64 {
entry:
  %tb = alloca [2 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arg, align 4
  %2 = inttoptr i32 %1 to ptr
  %arrayidx = getelementptr ptr, ptr %tca, i32 2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tb) #13
  %5 = ptrtoint ptr %tb to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %tb, align 4, !annotation !50
  %6 = getelementptr inbounds [2 x ptr], ptr %tb, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %6, align 4, !annotation !50
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %do.body, label %if.end3

do.body:                                          ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @drr_change_class.__msg) #13
  %tobool1.not = icmp eq ptr %extack, null
  br i1 %tobool1.not, label %do.body.cleanup_crit_edge, label %if.then2

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @drr_change_class.__msg, ptr %extack, align 4
  br label %cleanup

if.end3:                                          ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 4
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %4, align 2
  %conv.i.i = zext i16 %10 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 1, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @drr_policy, i32 noundef 0, ptr noundef %extack) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %if.end3.cleanup_crit_edge, label %if.end6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %6, align 4
  %tobool8.not = icmp eq ptr %12, null
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end6
  %add.ptr.i.i144 = getelementptr i8, ptr %12, i32 4
  %13 = ptrtoint ptr %add.ptr.i.i144 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.i.i144, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp12 = icmp eq i32 %14, 0
  br i1 %cmp12, label %do.body14, label %if.then9.if.end25_crit_edge

if.then9.if.end25_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

do.body14:                                        ; preds = %if.then9
  call void @do_trace_netlink_extack(ptr noundef nonnull @drr_change_class.__msg.2) #13
  %tobool16.not = icmp eq ptr %extack, null
  br i1 %tobool16.not, label %do.body14.cleanup_crit_edge, label %if.then17

do.body14.cleanup_crit_edge:                      ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then17:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #15
  %15 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @drr_change_class.__msg.2, ptr %extack, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  %dev_queue.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %16 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_queue.i, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 128
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 20
  %20 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mtu.i, align 4
  %hard_header_len.i = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 19
  %22 = ptrtoint ptr %hard_header_len.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %hard_header_len.i, align 2
  %conv.i = zext i16 %23 to i32
  %add.i = add i32 %21, %conv.i
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then9.if.end25_crit_edge
  %quantum.0 = phi i32 [ %14, %if.then9.if.end25_crit_edge ], [ %add.i, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp26.not = icmp eq i32 %1, 0
  br i1 %cmp26.not, label %if.end50, label %if.then27

if.then27:                                        ; preds = %if.end25
  %arrayidx28 = getelementptr ptr, ptr %tca, i32 5
  %24 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx28, align 4
  %tobool29.not = icmp eq ptr %25, null
  br i1 %tobool29.not, label %if.then27.if.end44_crit_edge, label %if.then30

if.then27.if.end44_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44

if.then30:                                        ; preds = %if.then27
  %bstats = getelementptr inbounds %struct.drr_class, ptr %2, i32 0, i32 2
  %rate_est = getelementptr inbounds %struct.drr_class, ptr %2, i32 0, i32 4
  %call32 = call i32 @gen_replace_estimator(ptr noundef %bstats, ptr noundef null, ptr noundef %rate_est, ptr noundef null, i1 noundef zeroext true, ptr noundef nonnull %25) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then30.if.end44_crit_edge, label %do.body35

if.then30.if.end44_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44

do.body35:                                        ; preds = %if.then30
  call void @do_trace_netlink_extack(ptr noundef nonnull @drr_change_class.__msg.3) #13
  %tobool37.not = icmp eq ptr %extack, null
  br i1 %tobool37.not, label %do.body35.cleanup_crit_edge, label %if.then38

do.body35.cleanup_crit_edge:                      ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then38:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #15
  %26 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @drr_change_class.__msg.3, ptr %extack, align 4
  br label %cleanup

if.end44:                                         ; preds = %if.then30.if.end44_crit_edge, %if.then27.if.end44_crit_edge
  %flags.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 2
  %27 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %28, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.end44.sch_tree_lock.exit_crit_edge

if.end44.sch_tree_lock.exit_crit_edge:            ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  br label %sch_tree_lock.exit

if.else.i:                                        ; preds = %if.end44
  %dev_queue.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %29 = ptrtoint ptr %dev_queue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev_queue.i.i.i, align 8
  %qdisc_sleeping.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %qdisc_sleeping.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %qdisc_sleeping.i.i.i, align 4
  %call1.i.i = call i32 @rtnl_is_locked() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i, label %if.else.i.sch_tree_lock.exit_crit_edge

if.else.i.sch_tree_lock.exit_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sch_tree_lock.exit

land.rhs.i.i:                                     ; preds = %if.else.i
  %.b41.i.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i, label %land.rhs.i.i.sch_tree_lock.exit_crit_edge, label %if.then.i.i, !prof !51

land.rhs.i.i.sch_tree_lock.exit_crit_edge:        ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sch_tree_lock.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 596) #13
  br label %sch_tree_lock.exit

sch_tree_lock.exit:                               ; preds = %if.then.i.i, %land.rhs.i.i.sch_tree_lock.exit_crit_edge, %if.else.i.sch_tree_lock.exit_crit_edge, %if.end44.sch_tree_lock.exit_crit_edge
  %.sink.i = phi ptr [ %sch, %if.end44.sch_tree_lock.exit_crit_edge ], [ %32, %if.else.i.sch_tree_lock.exit_crit_edge ], [ %32, %land.rhs.i.i.sch_tree_lock.exit_crit_edge ], [ %32, %if.then.i.i ]
  %lock.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %.sink.i, i32 0, i32 17, i32 3
  call void @_raw_spin_lock_bh(ptr noundef %lock.i.i.i) #13
  %33 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %6, align 4
  %tobool46.not = icmp eq ptr %34, null
  br i1 %tobool46.not, label %sch_tree_lock.exit.if.end49_crit_edge, label %if.then47

sch_tree_lock.exit.if.end49_crit_edge:            ; preds = %sch_tree_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49

if.then47:                                        ; preds = %sch_tree_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  %quantum48 = getelementptr inbounds %struct.drr_class, ptr %2, i32 0, i32 7
  %35 = ptrtoint ptr %quantum48 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %quantum.0, ptr %quantum48, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %sch_tree_lock.exit.if.end49_crit_edge
  %36 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags.i, align 8
  %and.i146 = and i32 %37, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i146)
  %tobool.not.i147 = icmp eq i32 %and.i146, 0
  br i1 %tobool.not.i147, label %if.else.i152, label %if.end49.sch_tree_unlock.exit_crit_edge

if.end49.sch_tree_unlock.exit_crit_edge:          ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #15
  br label %sch_tree_unlock.exit

if.else.i152:                                     ; preds = %if.end49
  %dev_queue.i.i.i148 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %38 = ptrtoint ptr %dev_queue.i.i.i148 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev_queue.i.i.i148, align 8
  %qdisc_sleeping.i.i.i149 = getelementptr inbounds %struct.netdev_queue, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %qdisc_sleeping.i.i.i149 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %qdisc_sleeping.i.i.i149, align 4
  %call1.i.i150 = call i32 @rtnl_is_locked() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i150)
  %tobool.not.i.i151 = icmp eq i32 %call1.i.i150, 0
  br i1 %tobool.not.i.i151, label %land.rhs.i.i154, label %if.else.i152.sch_tree_unlock.exit_crit_edge

if.else.i152.sch_tree_unlock.exit_crit_edge:      ; preds = %if.else.i152
  call void @__sanitizer_cov_trace_pc() #15
  br label %sch_tree_unlock.exit

land.rhs.i.i154:                                  ; preds = %if.else.i152
  %.b41.i.i153 = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i153, label %land.rhs.i.i154.sch_tree_unlock.exit_crit_edge, label %if.then.i.i155, !prof !51

land.rhs.i.i154.sch_tree_unlock.exit_crit_edge:   ; preds = %land.rhs.i.i154
  call void @__sanitizer_cov_trace_pc() #15
  br label %sch_tree_unlock.exit

if.then.i.i155:                                   ; preds = %land.rhs.i.i154
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 596) #13
  br label %sch_tree_unlock.exit

sch_tree_unlock.exit:                             ; preds = %if.then.i.i155, %land.rhs.i.i154.sch_tree_unlock.exit_crit_edge, %if.else.i152.sch_tree_unlock.exit_crit_edge, %if.end49.sch_tree_unlock.exit_crit_edge
  %.sink.i156 = phi ptr [ %sch, %if.end49.sch_tree_unlock.exit_crit_edge ], [ %41, %if.else.i152.sch_tree_unlock.exit_crit_edge ], [ %41, %land.rhs.i.i154.sch_tree_unlock.exit_crit_edge ], [ %41, %if.then.i.i155 ]
  %lock.i.i.i157 = getelementptr inbounds %struct.Qdisc, ptr %.sink.i156, i32 0, i32 17, i32 3
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i.i157) #13
  br label %cleanup

if.end50:                                         ; preds = %if.end25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %42 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %42, i32 noundef 3520, i32 noundef 112) #16
  %cmp52 = icmp eq ptr %call7.i.i, null
  br i1 %cmp52, label %if.end50.cleanup_crit_edge, label %if.end54

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end54:                                         ; preds = %if.end50
  %bstats55 = getelementptr inbounds %struct.drr_class, ptr %call7.i.i, i32 0, i32 2
  call void @gnet_stats_basic_sync_init(ptr noundef %bstats55) #13
  %43 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %classid, ptr %call7.i.i, align 16
  %quantum57 = getelementptr inbounds %struct.drr_class, ptr %call7.i.i, i32 0, i32 7
  %44 = ptrtoint ptr %quantum57 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %quantum.0, ptr %quantum57, align 4
  %dev_queue = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %45 = ptrtoint ptr %dev_queue to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev_queue, align 8
  %call58 = call ptr @qdisc_create_dflt(ptr noundef %46, ptr noundef nonnull @pfifo_qdisc_ops, i32 noundef %classid, ptr noundef null) #13
  %qdisc = getelementptr inbounds %struct.drr_class, ptr %call7.i.i, i32 0, i32 6
  %47 = ptrtoint ptr %qdisc to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call58, ptr %qdisc, align 16
  %cmp60 = icmp eq ptr %call58, null
  br i1 %cmp60, label %if.then61, label %if.else63

if.then61:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #15
  %48 = ptrtoint ptr %qdisc to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @noop_qdisc, ptr %qdisc, align 16
  br label %if.end65

if.else63:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #15
  call void @qdisc_hash_add(ptr noundef nonnull %call58, i1 noundef zeroext true) #13
  br label %if.end65

if.end65:                                         ; preds = %if.else63, %if.then61
  %arrayidx66 = getelementptr ptr, ptr %tca, i32 5
  %49 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx66, align 4
  %tobool67.not = icmp eq ptr %50, null
  br i1 %tobool67.not, label %if.end65.if.end85_crit_edge, label %if.then68

if.end65.if.end85_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end85

if.then68:                                        ; preds = %if.end65
  %rate_est70 = getelementptr inbounds %struct.drr_class, ptr %call7.i.i, i32 0, i32 4
  %call72 = call i32 @gen_replace_estimator(ptr noundef %bstats55, ptr noundef null, ptr noundef %rate_est70, ptr noundef null, i1 noundef zeroext true, ptr noundef nonnull %50) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.then68.if.end85_crit_edge, label %do.body75

if.then68.if.end85_crit_edge:                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end85

do.body75:                                        ; preds = %if.then68
  call void @do_trace_netlink_extack(ptr noundef nonnull @drr_change_class.__msg.4) #13
  %tobool77.not = icmp eq ptr %extack, null
  br i1 %tobool77.not, label %do.body75.if.end80_crit_edge, label %if.then78

do.body75.if.end80_crit_edge:                     ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end80

if.then78:                                        ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #15
  %51 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @drr_change_class.__msg.4, ptr %extack, align 4
  br label %if.end80

if.end80:                                         ; preds = %if.then78, %do.body75.if.end80_crit_edge
  %52 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %qdisc, align 16
  call void @qdisc_put(ptr noundef %53) #13
  call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

if.end85:                                         ; preds = %if.then68.if.end85_crit_edge, %if.end65.if.end85_crit_edge
  %flags.i158 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 2
  %54 = ptrtoint ptr %flags.i158 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %flags.i158, align 8
  %and.i159 = and i32 %55, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i159)
  %tobool.not.i160 = icmp eq i32 %and.i159, 0
  br i1 %tobool.not.i160, label %if.else.i165, label %if.end85.sch_tree_lock.exit171_crit_edge

if.end85.sch_tree_lock.exit171_crit_edge:         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #15
  br label %sch_tree_lock.exit171

if.else.i165:                                     ; preds = %if.end85
  %56 = ptrtoint ptr %dev_queue to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev_queue, align 8
  %qdisc_sleeping.i.i.i162 = getelementptr inbounds %struct.netdev_queue, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %qdisc_sleeping.i.i.i162 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %qdisc_sleeping.i.i.i162, align 4
  %call1.i.i163 = call i32 @rtnl_is_locked() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i163)
  %tobool.not.i.i164 = icmp eq i32 %call1.i.i163, 0
  br i1 %tobool.not.i.i164, label %land.rhs.i.i167, label %if.else.i165.sch_tree_lock.exit171_crit_edge

if.else.i165.sch_tree_lock.exit171_crit_edge:     ; preds = %if.else.i165
  call void @__sanitizer_cov_trace_pc() #15
  br label %sch_tree_lock.exit171

land.rhs.i.i167:                                  ; preds = %if.else.i165
  %.b41.i.i166 = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i166, label %land.rhs.i.i167.sch_tree_lock.exit171_crit_edge, label %if.then.i.i168, !prof !51

land.rhs.i.i167.sch_tree_lock.exit171_crit_edge:  ; preds = %land.rhs.i.i167
  call void @__sanitizer_cov_trace_pc() #15
  br label %sch_tree_lock.exit171

if.then.i.i168:                                   ; preds = %land.rhs.i.i167
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 596) #13
  br label %sch_tree_lock.exit171

sch_tree_lock.exit171:                            ; preds = %if.then.i.i168, %land.rhs.i.i167.sch_tree_lock.exit171_crit_edge, %if.else.i165.sch_tree_lock.exit171_crit_edge, %if.end85.sch_tree_lock.exit171_crit_edge
  %.sink.i169 = phi ptr [ %sch, %if.end85.sch_tree_lock.exit171_crit_edge ], [ %59, %if.else.i165.sch_tree_lock.exit171_crit_edge ], [ %59, %land.rhs.i.i167.sch_tree_lock.exit171_crit_edge ], [ %59, %if.then.i.i168 ]
  %lock.i.i.i170 = getelementptr inbounds %struct.Qdisc, ptr %.sink.i169, i32 0, i32 17, i32 3
  call void @_raw_spin_lock_bh(ptr noundef %lock.i.i.i170) #13
  %clhash = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  call void @qdisc_class_hash_insert(ptr noundef %clhash, ptr noundef nonnull %call7.i.i) #13
  %60 = ptrtoint ptr %flags.i158 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %flags.i158, align 8
  %and.i173 = and i32 %61, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i173)
  %tobool.not.i174 = icmp eq i32 %and.i173, 0
  br i1 %tobool.not.i174, label %if.else.i179, label %sch_tree_lock.exit171.sch_tree_unlock.exit185_crit_edge

sch_tree_lock.exit171.sch_tree_unlock.exit185_crit_edge: ; preds = %sch_tree_lock.exit171
  call void @__sanitizer_cov_trace_pc() #15
  br label %sch_tree_unlock.exit185

if.else.i179:                                     ; preds = %sch_tree_lock.exit171
  %62 = ptrtoint ptr %dev_queue to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev_queue, align 8
  %qdisc_sleeping.i.i.i176 = getelementptr inbounds %struct.netdev_queue, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %qdisc_sleeping.i.i.i176 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %qdisc_sleeping.i.i.i176, align 4
  %call1.i.i177 = call i32 @rtnl_is_locked() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i177)
  %tobool.not.i.i178 = icmp eq i32 %call1.i.i177, 0
  br i1 %tobool.not.i.i178, label %land.rhs.i.i181, label %if.else.i179.sch_tree_unlock.exit185_crit_edge

if.else.i179.sch_tree_unlock.exit185_crit_edge:   ; preds = %if.else.i179
  call void @__sanitizer_cov_trace_pc() #15
  br label %sch_tree_unlock.exit185

land.rhs.i.i181:                                  ; preds = %if.else.i179
  %.b41.i.i180 = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i180, label %land.rhs.i.i181.sch_tree_unlock.exit185_crit_edge, label %if.then.i.i182, !prof !51

land.rhs.i.i181.sch_tree_unlock.exit185_crit_edge: ; preds = %land.rhs.i.i181
  call void @__sanitizer_cov_trace_pc() #15
  br label %sch_tree_unlock.exit185

if.then.i.i182:                                   ; preds = %land.rhs.i.i181
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 596) #13
  br label %sch_tree_unlock.exit185

sch_tree_unlock.exit185:                          ; preds = %if.then.i.i182, %land.rhs.i.i181.sch_tree_unlock.exit185_crit_edge, %if.else.i179.sch_tree_unlock.exit185_crit_edge, %sch_tree_lock.exit171.sch_tree_unlock.exit185_crit_edge
  %.sink.i183 = phi ptr [ %sch, %sch_tree_lock.exit171.sch_tree_unlock.exit185_crit_edge ], [ %65, %if.else.i179.sch_tree_unlock.exit185_crit_edge ], [ %65, %land.rhs.i.i181.sch_tree_unlock.exit185_crit_edge ], [ %65, %if.then.i.i182 ]
  %lock.i.i.i184 = getelementptr inbounds %struct.Qdisc, ptr %.sink.i183, i32 0, i32 17, i32 3
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i.i184) #13
  call void @qdisc_class_hash_grow(ptr noundef %sch, ptr noundef %clhash) #13
  %66 = ptrtoint ptr %call7.i.i to i32
  %67 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %arg, align 4
  br label %cleanup

cleanup:                                          ; preds = %sch_tree_unlock.exit185, %if.end80, %if.end50.cleanup_crit_edge, %sch_tree_unlock.exit, %if.then38, %do.body35.cleanup_crit_edge, %if.then17, %do.body14.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.then2, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sch_tree_unlock.exit ], [ %call72, %if.end80 ], [ 0, %sch_tree_unlock.exit185 ], [ -22, %if.then2 ], [ -22, %do.body.cleanup_crit_edge ], [ %call2.i, %if.end3.cleanup_crit_edge ], [ -22, %if.then17 ], [ -22, %do.body14.cleanup_crit_edge ], [ %call32, %if.then38 ], [ %call32, %do.body35.cleanup_crit_edge ], [ -105, %if.end50.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tb) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @drr_delete_class(ptr noundef %sch, i32 noundef %arg, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  %qstats.i.i = alloca %struct.gnet_stats_queue, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %arg to ptr
  %filter_cnt = getelementptr inbounds %struct.drr_class, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %filter_cnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %filter_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 2
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.end.sch_tree_lock.exit_crit_edge

if.end.sch_tree_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sch_tree_lock.exit

if.else.i:                                        ; preds = %if.end
  %dev_queue.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %5 = ptrtoint ptr %dev_queue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_queue.i.i.i, align 8
  %qdisc_sleeping.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %qdisc_sleeping.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %qdisc_sleeping.i.i.i, align 4
  %call1.i.i = tail call i32 @rtnl_is_locked() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i, label %if.else.i.sch_tree_lock.exit_crit_edge

if.else.i.sch_tree_lock.exit_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sch_tree_lock.exit

land.rhs.i.i:                                     ; preds = %if.else.i
  %.b41.i.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i, label %land.rhs.i.i.sch_tree_lock.exit_crit_edge, label %if.then.i.i, !prof !51

land.rhs.i.i.sch_tree_lock.exit_crit_edge:        ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sch_tree_lock.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 596) #13
  br label %sch_tree_lock.exit

sch_tree_lock.exit:                               ; preds = %if.then.i.i, %land.rhs.i.i.sch_tree_lock.exit_crit_edge, %if.else.i.sch_tree_lock.exit_crit_edge, %if.end.sch_tree_lock.exit_crit_edge
  %.sink.i = phi ptr [ %sch, %if.end.sch_tree_lock.exit_crit_edge ], [ %8, %if.else.i.sch_tree_lock.exit_crit_edge ], [ %8, %land.rhs.i.i.sch_tree_lock.exit_crit_edge ], [ %8, %if.then.i.i ]
  %lock.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %.sink.i, i32 0, i32 17, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i.i.i) #13
  %qdisc = getelementptr inbounds %struct.drr_class, ptr %0, i32 0, i32 6
  %9 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %qdisc, align 16
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %qstats.i.i) #13
  %11 = call ptr @memset(ptr %qstats.i.i, i32 0, i32 20)
  %cpu_qstats.i.i = getelementptr inbounds %struct.Qdisc, ptr %10, i32 0, i32 12
  %12 = ptrtoint ptr %cpu_qstats.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cpu_qstats.i.i, align 4
  %qstats1.i.i = getelementptr inbounds %struct.Qdisc, ptr %10, i32 0, i32 19
  call void @gnet_stats_add_queue(ptr noundef nonnull %qstats.i.i, ptr noundef %13, ptr noundef %qstats1.i.i) #13
  %14 = ptrtoint ptr %qstats.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %qstats.i.i, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %10, i32 0, i32 17, i32 2
  %16 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %qlen.i.i.i, align 8
  %add.i.i = add i32 %17, %15
  %backlog3.i.i = getelementptr inbounds %struct.gnet_stats_queue, ptr %qstats.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %backlog3.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %backlog3.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qstats.i.i) #13
  call void @qdisc_reset(ptr noundef %10) #13
  call void @qdisc_tree_reduce_backlog(ptr noundef %10, i32 noundef %add.i.i, i32 noundef %19) #13
  %clhash = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  call void @qdisc_class_hash_remove(ptr noundef %clhash, ptr noundef %0) #13
  %20 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags.i, align 8
  %and.i9 = and i32 %21, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i9)
  %tobool.not.i10 = icmp eq i32 %and.i9, 0
  br i1 %tobool.not.i10, label %if.else.i15, label %sch_tree_lock.exit.sch_tree_unlock.exit_crit_edge

sch_tree_lock.exit.sch_tree_unlock.exit_crit_edge: ; preds = %sch_tree_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %sch_tree_unlock.exit

if.else.i15:                                      ; preds = %sch_tree_lock.exit
  %dev_queue.i.i.i11 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %22 = ptrtoint ptr %dev_queue.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev_queue.i.i.i11, align 8
  %qdisc_sleeping.i.i.i12 = getelementptr inbounds %struct.netdev_queue, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %qdisc_sleeping.i.i.i12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %qdisc_sleeping.i.i.i12, align 4
  %call1.i.i13 = call i32 @rtnl_is_locked() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i13)
  %tobool.not.i.i14 = icmp eq i32 %call1.i.i13, 0
  br i1 %tobool.not.i.i14, label %land.rhs.i.i17, label %if.else.i15.sch_tree_unlock.exit_crit_edge

if.else.i15.sch_tree_unlock.exit_crit_edge:       ; preds = %if.else.i15
  call void @__sanitizer_cov_trace_pc() #15
  br label %sch_tree_unlock.exit

land.rhs.i.i17:                                   ; preds = %if.else.i15
  %.b41.i.i16 = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i16, label %land.rhs.i.i17.sch_tree_unlock.exit_crit_edge, label %if.then.i.i18, !prof !51

land.rhs.i.i17.sch_tree_unlock.exit_crit_edge:    ; preds = %land.rhs.i.i17
  call void @__sanitizer_cov_trace_pc() #15
  br label %sch_tree_unlock.exit

if.then.i.i18:                                    ; preds = %land.rhs.i.i17
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 596) #13
  br label %sch_tree_unlock.exit

sch_tree_unlock.exit:                             ; preds = %if.then.i.i18, %land.rhs.i.i17.sch_tree_unlock.exit_crit_edge, %if.else.i15.sch_tree_unlock.exit_crit_edge, %sch_tree_lock.exit.sch_tree_unlock.exit_crit_edge
  %.sink.i19 = phi ptr [ %sch, %sch_tree_lock.exit.sch_tree_unlock.exit_crit_edge ], [ %25, %if.else.i15.sch_tree_unlock.exit_crit_edge ], [ %25, %land.rhs.i.i17.sch_tree_unlock.exit_crit_edge ], [ %25, %if.then.i.i18 ]
  %lock.i.i.i20 = getelementptr inbounds %struct.Qdisc, ptr %.sink.i19, i32 0, i32 17, i32 3
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i.i20) #13
  %rate_est.i = getelementptr inbounds %struct.drr_class, ptr %0, i32 0, i32 4
  call void @gen_kill_estimator(ptr noundef %rate_est.i) #13
  %26 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %qdisc, align 16
  call void @qdisc_put(ptr noundef %27) #13
  call void @kfree(ptr noundef %0) #13
  br label %cleanup

cleanup:                                          ; preds = %sch_tree_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sch_tree_unlock.exit ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @drr_walk(ptr noundef %sch, ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %hashsize = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 5
  %2 = ptrtoint ptr %hashsize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hashsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp55.not = icmp eq i32 %3, 0
  br i1 %cmp55.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %clhash = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %count = getelementptr inbounds %struct.qdisc_walker, ptr %arg, i32 0, i32 2
  %skip = getelementptr inbounds %struct.qdisc_walker, ptr %arg, i32 0, i32 1
  %fn = getelementptr inbounds %struct.qdisc_walker, ptr %arg, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc28.for.body_crit_edge, %for.body.lr.ph
  %i.056 = phi i32 [ 0, %for.body.lr.ph ], [ %inc29, %for.inc28.for.body_crit_edge ]
  %4 = ptrtoint ptr %clhash to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clhash, align 4
  %arrayidx = getelementptr %struct.hlist_head, ptr %5, i32 %i.056
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool2.not = icmp eq ptr %7, null
  %add.ptr = getelementptr i8, ptr %7, i32 -4
  %tobool5.not5357 = icmp eq ptr %add.ptr, null
  %tobool5.not53 = or i1 %tobool2.not, %tobool5.not5357
  br i1 %tobool5.not53, label %for.body.for.inc28_crit_edge, label %for.body.for.body6_crit_edge

for.body.for.body6_crit_edge:                     ; preds = %for.body
  br label %for.body6

for.body.for.inc28_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc28

for.body6:                                        ; preds = %for.inc.for.body6_crit_edge, %for.body.for.body6_crit_edge
  %cl.054 = phi ptr [ %add.ptr24, %for.inc.for.body6_crit_edge ], [ %add.ptr, %for.body.for.body6_crit_edge ]
  %8 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count, align 4
  %10 = ptrtoint ptr %skip to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %skip, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp7 = icmp slt i32 %9, %11
  br i1 %cmp7, label %for.body6.for.inc_crit_edge, label %if.end10

for.body6.for.inc_crit_edge:                      ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end10:                                         ; preds = %for.body6
  %12 = ptrtoint ptr %fn to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fn, align 4
  %14 = ptrtoint ptr %cl.054 to i32
  %call11 = tail call i32 %13(ptr noundef %sch, i32 noundef %14, ptr noundef %arg) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  %15 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %arg, align 4
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %count, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end15, %for.body6.for.inc_crit_edge
  %storemerge.in = phi i32 [ %17, %if.end15 ], [ %9, %for.body6.for.inc_crit_edge ]
  %storemerge = add i32 %storemerge.in, 1
  %18 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %storemerge, ptr %count, align 4
  %hnode = getelementptr inbounds %struct.Qdisc_class_common, ptr %cl.054, i32 0, i32 1
  %19 = ptrtoint ptr %hnode to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hnode, align 4
  %tobool20.not = icmp eq ptr %20, null
  %add.ptr24 = getelementptr i8, ptr %20, i32 -4
  %tobool5.not58 = icmp eq ptr %add.ptr24, null
  %tobool5.not = or i1 %tobool20.not, %tobool5.not58
  br i1 %tobool5.not, label %for.inc.for.inc28_crit_edge, label %for.inc.for.body6_crit_edge

for.inc.for.body6_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body6

for.inc.for.inc28_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc28

for.inc28:                                        ; preds = %for.inc.for.inc28_crit_edge, %for.body.for.inc28_crit_edge
  %inc29 = add nuw i32 %i.056, 1
  %21 = ptrtoint ptr %hashsize to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %hashsize, align 4
  %cmp = icmp ult i32 %inc29, %22
  br i1 %cmp, label %for.inc28.for.body_crit_edge, label %for.inc28.cleanup_crit_edge

for.inc28.cleanup_crit_edge:                      ; preds = %for.inc28
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.inc28.for.body_crit_edge:                     ; preds = %for.inc28
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cleanup:                                          ; preds = %for.inc28.cleanup_crit_edge, %if.then13, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @drr_tcf_block(ptr nocapture noundef readonly %sch, i32 noundef %cl, ptr noundef writeonly %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cl)
  %tobool.not = icmp eq i32 %cl, 0
  br i1 %tobool.not, label %if.end3, label %do.body

do.body:                                          ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @drr_tcf_block.__msg) #13
  %tobool1.not = icmp eq ptr %extack, null
  br i1 %tobool1.not, label %do.body.cleanup_crit_edge, label %if.then2

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @drr_tcf_block.__msg, ptr %extack, align 4
  br label %cleanup

if.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %block = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 3
  %1 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %block, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then2, %do.body.cleanup_crit_edge
  %retval.0 = phi ptr [ %2, %if.end3 ], [ null, %if.then2 ], [ null, %do.body.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @drr_bind_tcf(ptr nocapture noundef readonly %sch, i32 noundef %parent, i32 noundef %classid) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %classid)
  %tobool.not.i.i = icmp eq i32 %classid, 0
  br i1 %tobool.not.i.i, label %entry.if.end_crit_edge, label %if.end.i.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end.i.i:                                       ; preds = %entry
  %clhash.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %hashmask.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 6
  %0 = ptrtoint ptr %hashmask.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hashmask.i.i, align 4
  %shr.i.i.i = lshr i32 %classid, 8
  %xor.i.i.i = xor i32 %shr.i.i.i, %classid
  %shr1.i.i.i = lshr i32 %xor.i.i.i, 4
  %xor2.i.i.i = xor i32 %shr1.i.i.i, %xor.i.i.i
  %and.i.i.i = and i32 %1, %xor2.i.i.i
  %2 = ptrtoint ptr %clhash.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clhash.i, align 4
  %arrayidx.i.i = getelementptr %struct.hlist_head, ptr %3, i32 %and.i.i.i
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %5, null
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 -4
  %tobool4.not3033.i.i = icmp eq ptr %add.ptr.i.i, null
  %tobool4.not30.i.i = or i1 %tobool2.not.i.i, %tobool4.not3033.i.i
  br i1 %tobool4.not30.i.i, label %if.end.i.i.if.end_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  br label %for.body.i.i

if.end.i.i.if.end_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.i.i.for.body.i.i_crit_edge
  %cl.031.i.i = phi ptr [ %add.ptr13.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %add.ptr.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %6 = ptrtoint ptr %cl.031.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cl.031.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %classid)
  %cmp.i.i = icmp eq i32 %7, %classid
  br i1 %cmp.i.i, label %if.then, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %hnode.i.i = getelementptr inbounds %struct.Qdisc_class_common, ptr %cl.031.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %hnode.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hnode.i.i, align 4
  %tobool9.not.i.i = icmp eq ptr %9, null
  %add.ptr13.i.i = getelementptr i8, ptr %9, i32 -4
  %tobool4.not34.i.i = icmp eq ptr %add.ptr13.i.i, null
  %tobool4.not.i.i = or i1 %tobool9.not.i.i, %tobool4.not34.i.i
  br i1 %tobool4.not.i.i, label %for.inc.i.i.if.end_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.inc.i.i.if.end_crit_edge:                     ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %filter_cnt = getelementptr inbounds %struct.drr_class, ptr %cl.031.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %filter_cnt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %filter_cnt, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %filter_cnt, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.inc.i.i.if.end_crit_edge, %if.end.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  %retval.0.i.i5 = phi ptr [ %cl.031.i.i, %if.then ], [ null, %entry.if.end_crit_edge ], [ null, %if.end.i.i.if.end_crit_edge ], [ null, %for.inc.i.i.if.end_crit_edge ]
  %12 = ptrtoint ptr %retval.0.i.i5 to i32
  ret i32 %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @drr_unbind_tcf(ptr nocapture noundef readnone %sch, i32 noundef %arg) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %arg to ptr
  %filter_cnt = getelementptr inbounds %struct.drr_class, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %filter_cnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %filter_cnt, align 4
  %dec = add i32 %2, -1
  store i32 %dec, ptr %filter_cnt, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @drr_dump_class(ptr nocapture noundef readnone %sch, i32 noundef %arg, ptr noundef %skb, ptr nocapture noundef writeonly %tcm) #2 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %arg to ptr
  %tcm_parent = getelementptr inbounds %struct.tcmsg, ptr %tcm, i32 0, i32 5
  %1 = ptrtoint ptr %tcm_parent to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %tcm_parent, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %0, align 16
  %tcm_handle = getelementptr inbounds %struct.tcmsg, ptr %tcm, i32 0, i32 4
  %4 = ptrtoint ptr %tcm_handle to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %tcm_handle, align 4
  %qdisc = getelementptr inbounds %struct.drr_class, ptr %0, i32 0, i32 6
  %5 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %qdisc, align 16
  %handle = getelementptr inbounds %struct.Qdisc, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %handle, align 32
  %tcm_info = getelementptr inbounds %struct.tcmsg, ptr %tcm, i32 0, i32 6
  %9 = ptrtoint ptr %tcm_info to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %tcm_info, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %10 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tail.i.i, align 8
  %call1.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 0, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %cmp16 = icmp eq ptr %11, null
  %cmp = select i1 %cmp.i, i1 true, i1 %cmp16
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %quantum = getelementptr inbounds %struct.drr_class, ptr %0, i32 0, i32 7
  %12 = ptrtoint ptr %quantum to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %quantum, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #13
  %14 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end3, label %if.then.i.i

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %15 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %16 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %17 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv.i, ptr %11, align 2
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %18 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len.i, align 4
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %20 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp ugt ptr %21, %11
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.if.end.i.i_crit_edge, !prof !54

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 991, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %22 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %11 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %23 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %19, %if.end3 ], [ -90, %if.end.i.i ], [ -90, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @drr_dump_class_stats(ptr nocapture noundef readnone %sch, i32 noundef %arg, ptr noundef %d) #2 align 64 {
entry:
  %xstats = alloca %struct.tc_drr_stats, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %arg to ptr
  %qdisc = getelementptr inbounds %struct.drr_class, ptr %0, i32 0, i32 6
  %1 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %qdisc, align 16
  %qstats.i = getelementptr inbounds %struct.Qdisc, ptr %2, i32 0, i32 19
  %3 = ptrtoint ptr %qstats.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %qstats.i, align 32
  %flags.i.i = getelementptr inbounds %struct.Qdisc, ptr %2, i32 0, i32 2
  %5 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %6, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.else.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %7 = load i32, ptr @nr_cpu_ids, align 4
  %call216.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #17
  call void @__sanitizer_cov_trace_cmp4(i32 %call216.i, i32 %7)
  %cmp17.i = icmp ult i32 %call216.i, %7
  br i1 %cmp17.i, label %do.body.lr.ph.i, label %for.cond.preheader.i.qdisc_qlen_sum.exit_crit_edge

for.cond.preheader.i.qdisc_qlen_sum.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qdisc_qlen_sum.exit

do.body.lr.ph.i:                                  ; preds = %for.cond.preheader.i
  %cpu_qstats.i = getelementptr inbounds %struct.Qdisc, ptr %2, i32 0, i32 12
  %8 = ptrtoint ptr %cpu_qstats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cpu_qstats.i, align 4
  %10 = ptrtoint ptr %9 to i32
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.lr.ph.i
  %call219.i = phi i32 [ %call216.i, %do.body.lr.ph.i ], [ %call2.i, %do.body.i.do.body.i_crit_edge ]
  %qlen.018.i = phi i32 [ %4, %do.body.lr.ph.i ], [ %add5.i, %do.body.i.do.body.i_crit_edge ]
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call219.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %12, %10
  %13 = inttoptr i32 %add.i to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add5.i = add i32 %15, %qlen.018.i
  %call2.i = tail call i32 @cpumask_next(i32 noundef %call219.i, ptr noundef nonnull @__cpu_possible_mask) #17
  %cmp.i = icmp ult i32 %call2.i, %7
  br i1 %cmp.i, label %do.body.i.do.body.i_crit_edge, label %do.body.i.qdisc_qlen_sum.exit_crit_edge

do.body.i.qdisc_qlen_sum.exit_crit_edge:          ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qdisc_qlen_sum.exit

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %qlen7.i = getelementptr inbounds %struct.Qdisc, ptr %2, i32 0, i32 17, i32 2
  %16 = ptrtoint ptr %qlen7.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %qlen7.i, align 8
  %add8.i = add i32 %17, %4
  br label %qdisc_qlen_sum.exit

qdisc_qlen_sum.exit:                              ; preds = %if.else.i, %do.body.i.qdisc_qlen_sum.exit_crit_edge, %for.cond.preheader.i.qdisc_qlen_sum.exit_crit_edge
  %qlen.1.i = phi i32 [ %add8.i, %if.else.i ], [ %4, %for.cond.preheader.i.qdisc_qlen_sum.exit_crit_edge ], [ %add5.i, %do.body.i.qdisc_qlen_sum.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %xstats) #13
  %18 = ptrtoint ptr %xstats to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %xstats, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %qlen.1.i)
  %tobool.not = icmp eq i32 %qlen.1.i, 0
  br i1 %tobool.not, label %qdisc_qlen_sum.exit.if.end_crit_edge, label %if.then

qdisc_qlen_sum.exit.if.end_crit_edge:             ; preds = %qdisc_qlen_sum.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %qdisc_qlen_sum.exit
  call void @__sanitizer_cov_trace_pc() #15
  %deficit = getelementptr inbounds %struct.drr_class, ptr %0, i32 0, i32 8
  %19 = ptrtoint ptr %deficit to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %deficit, align 8
  %21 = ptrtoint ptr %xstats to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %xstats, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %qdisc_qlen_sum.exit.if.end_crit_edge
  %bstats = getelementptr inbounds %struct.drr_class, ptr %0, i32 0, i32 2
  %call3 = tail call i32 @gnet_stats_copy_basic(ptr noundef %d, ptr noundef null, ptr noundef %bstats, i1 noundef zeroext true) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %rate_est = getelementptr inbounds %struct.drr_class, ptr %0, i32 0, i32 4
  %call4 = tail call i32 @gnet_stats_copy_rate_est(ptr noundef %d, ptr noundef %rate_est) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false6

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %cpu_qstats = getelementptr inbounds %struct.Qdisc, ptr %2, i32 0, i32 12
  %22 = ptrtoint ptr %cpu_qstats to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cpu_qstats, align 4
  %call7 = tail call i32 @gnet_stats_copy_queue(ptr noundef %d, ptr noundef %23, ptr noundef %qstats.i, i32 noundef %qlen.1.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %lor.lhs.false6.cleanup_crit_edge, label %if.end10

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #15
  %call11 = call i32 @gnet_stats_copy_app(ptr noundef %d, ptr noundef nonnull %xstats, i32 noundef 4) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %lor.lhs.false6.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.end10 ], [ -1, %lor.lhs.false6.cleanup_crit_edge ], [ -1, %lor.lhs.false.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %xstats) #13
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qdisc_create_dflt(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

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
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_replace_estimator(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gnet_stats_basic_sync_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_hash_add(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_class_hash_insert(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_class_hash_grow(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_class_hash_remove(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gen_kill_estimator(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gnet_stats_copy_basic(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gnet_stats_copy_rate_est(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gnet_stats_copy_queue(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gnet_stats_copy_app(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #10

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

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_warn_nonwc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bstats_update(ptr noundef %bstats, ptr nocapture noundef readonly %skb) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %0 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cb.i.i, align 4
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %2 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %end.i.i, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.i.not = icmp eq i16 %5, 0
  br i1 %tobool.i.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %gso_segs = getelementptr inbounds %struct.skb_shared_info, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %gso_segs to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %gso_segs, align 2
  %conv4 = zext i16 %7 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %conv4, %cond.true ], [ 1, %entry.cond.end_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %8 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i.i, label %cond.end._bstats_update.exit_crit_edge, label %land.lhs.true.i.i.i

cond.end._bstats_update.exit_crit_edge:           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %_bstats_update.exit

land.lhs.true.i.i.i:                              ; preds = %cond.end
  %9 = tail call i32 @llvm.read_register.i32(metadata !40) #13
  %and.i.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %12, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !56
  %13 = tail call i32 @llvm.read_register.i32(metadata !40) #13
  %and.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %18, ptrtoint (ptr @lockdep_recursion to i32)
  %19 = inttoptr i32 %add.i.i.i to ptr
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %19, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !57
  %22 = tail call i32 @llvm.read_register.i32(metadata !40) #13
  %and.i.i.i7.i.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i7.i.i.i to ptr
  %preempt_count.i.i8.i.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i8.i.i.i, align 4
  %sub.i.i.i.i = add i32 %25, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i8.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool20.not.i.i.i = icmp eq i32 %21, 0
  br i1 %tobool20.not.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i.i._bstats_update.exit_crit_edge

land.lhs.true.i.i.i._bstats_update.exit_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %_bstats_update.exit

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %26 = tail call i32 @llvm.read_register.i32(metadata !40) #13
  %and.i.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.i.i.i = icmp eq i32 %29, 0
  br i1 %cmp.i.i.i, label %land.rhs22.i.i.i, label %land.rhs.i.i.i._bstats_update.exit_crit_edge

land.rhs.i.i.i._bstats_update.exit_crit_edge:     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %_bstats_update.exit

land.rhs22.i.i.i:                                 ; preds = %land.rhs.i.i.i
  %30 = tail call i32 @llvm.read_register.i32(metadata !40) #13
  %and.i.i.i9.i.i.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i9.i.i.i to ptr
  %preempt_count.i.i10.i.i.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %preempt_count.i.i10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %preempt_count.i.i10.i.i.i, align 4
  %add.i11.i.i.i = add i32 %33, 1
  store volatile i32 %add.i11.i.i.i, ptr %preempt_count.i.i10.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !58
  %34 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx46.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %35
  %36 = ptrtoint ptr %arrayidx46.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx46.i.i.i, align 4
  %add47.i.i.i = add i32 %37, ptrtoint (ptr @hardirqs_enabled to i32)
  %38 = inttoptr i32 %add47.i.i.i to ptr
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %38, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !59
  %41 = tail call i32 @llvm.read_register.i32(metadata !40) #13
  %and.i.i.i12.i.i.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i12.i.i.i to ptr
  %preempt_count.i.i13.i.i.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %preempt_count.i.i13.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %preempt_count.i.i13.i.i.i, align 4
  %sub.i14.i.i.i = add i32 %44, -1
  store volatile i32 %sub.i14.i.i.i, ptr %preempt_count.i.i13.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool54.not.i.i.i = icmp eq i32 %40, 0
  br i1 %tobool54.not.i.i.i, label %land.rhs22.i.i.i._bstats_update.exit_crit_edge, label %land.rhs58.i.i.i

land.rhs22.i.i.i._bstats_update.exit_crit_edge:   ; preds = %land.rhs22.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %_bstats_update.exit

land.rhs58.i.i.i:                                 ; preds = %land.rhs22.i.i.i
  %.b1.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs58.i.i.i._bstats_update.exit_crit_edge, label %if.then.i.i.i, !prof !51

land.rhs58.i.i.i._bstats_update.exit_crit_edge:   ; preds = %land.rhs58.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %_bstats_update.exit

if.then.i.i.i:                                    ; preds = %land.rhs58.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 271, i32 noundef 9, ptr noundef null) #13
  br label %_bstats_update.exit

_bstats_update.exit:                              ; preds = %if.then.i.i.i, %land.rhs58.i.i.i._bstats_update.exit_crit_edge, %land.rhs22.i.i.i._bstats_update.exit_crit_edge, %land.rhs.i.i.i._bstats_update.exit_crit_edge, %land.lhs.true.i.i.i._bstats_update.exit_crit_edge, %cond.end._bstats_update.exit_crit_edge
  %conv = zext i32 %1 to i64
  %syncp.i = getelementptr inbounds %struct.gnet_stats_basic_sync, ptr %bstats, i32 0, i32 2
  %45 = ptrtoint ptr %syncp.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %syncp.i, align 4
  %inc.i.i.i.i.i = add i32 %46, 1
  store i32 %inc.i.i.i.i.i, ptr %syncp.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !60
  %dep_map.i.i.i.i = getelementptr inbounds %struct.gnet_stats_basic_sync, ptr %bstats, i32 0, i32 2, i32 0, i32 1
  %47 = tail call ptr @llvm.returnaddress(i32 0) #13
  %48 = ptrtoint ptr %47 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %48) #13
  %49 = ptrtoint ptr %bstats to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %bstats, align 8
  %add.i.i = add i64 %50, %conv
  store i64 %add.i.i, ptr %bstats, align 8
  %packets2.i = getelementptr inbounds %struct.gnet_stats_basic_sync, ptr %bstats, i32 0, i32 1
  %conv.i7.i = zext i32 %cond to i64
  %51 = ptrtoint ptr %packets2.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %packets2.i, align 8
  %add.i8.i = add i64 %52, %conv.i7.i
  store i64 %add.i8.i, ptr %packets2.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i, i32 noundef %48) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !61
  %53 = ptrtoint ptr %syncp.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %syncp.i, align 4
  %inc.i.i.i.i = add i32 %54, 1
  store i32 %inc.i.i.i.i, ptr %syncp.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_block_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qdisc_class_hash_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcf_block_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_class_hash_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_qdisc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind readonly }
attributes #12 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !15, !17, !19, !21, !23, !25, !27, !29, !31, !32, !33, !35, !37, !39}
!llvm.named.register.sp = !{!40}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @__initcall__kmod_sch_drr__368_503_drr_init6, !1, !"__initcall__kmod_sch_drr__368_503_drr_init6", i1 false, i1 false}
!1 = !{!"../net/sched/sch_drr.c", i32 503, i32 1}
!2 = !{ptr @__exitcall_drr_exit, !3, !"__exitcall_drr_exit", i1 false, i1 false}
!3 = !{!"../net/sched/sch_drr.c", i32 504, i32 1}
!4 = !{ptr @__UNIQUE_ID_file369, !5, !"__UNIQUE_ID_file369", i1 false, i1 false}
!5 = !{!"../net/sched/sch_drr.c", i32 505, i32 1}
!6 = !{ptr @__UNIQUE_ID_license370, !5, !"__UNIQUE_ID_license370", i1 false, i1 false}
!7 = !{ptr @drr_qdisc_ops, !8, !"drr_qdisc_ops", i1 false, i1 false}
!8 = !{!"../net/sched/sch_drr.c", i32 480, i32 25}
!9 = !{ptr @drr_class_ops, !10, !"drr_class_ops", i1 false, i1 false}
!10 = !{!"../net/sched/sch_drr.c", i32 465, i32 37}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../include/net/sch_generic.h", i32 596, i32 2}
!13 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @drr_change_class.__msg, !16, !"__msg", i1 false, i1 false}
!16 = !{!"../net/sched/sch_drr.c", i32 66, i32 3}
!17 = !{ptr @drr_change_class.__msg.2, !18, !"__msg", i1 false, i1 false}
!18 = !{!"../net/sched/sch_drr.c", i32 78, i32 4}
!19 = !{ptr @drr_change_class.__msg.3, !20, !"__msg", i1 false, i1 false}
!20 = !{!"../net/sched/sch_drr.c", i32 91, i32 5}
!21 = !{ptr @drr_change_class.__msg.4, !22, !"__msg", i1 false, i1 false}
!22 = !{!"../net/sched/sch_drr.c", i32 123, i32 4}
!23 = !{ptr @drr_policy, !24, !"drr_policy", i1 false, i1 false}
!24 = !{!"../net/sched/sch_drr.c", i32 50, i32 32}
!25 = !{ptr @drr_tcf_block.__msg, !26, !"__msg", i1 false, i1 false}
!26 = !{!"../net/sched/sch_drr.c", i32 178, i32 3}
!27 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../include/net/netlink.h", i32 991, i32 3}
!29 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!30 = !{!"../net/sched/sch_drr.c", i32 316, i32 7}
!31 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!33 = distinct !{null, !34, !"__warned", i1 false, i1 false}
!34 = !{!"../include/net/sch_generic.h", i32 835, i32 34}
!35 = !{ptr @__func__.drr_dequeue, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../net/sched/sch_drr.c", i32 388, i32 21}
!37 = distinct !{null, !38, !"__already_done", i1 false, i1 false}
!38 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!39 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!40 = !{!"sp"}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!50 = !{!"auto-init"}
!51 = !{!"branch_weights", i32 2000, i32 1}
!52 = !{i64 753243, i64 753304}
!53 = !{i64 755975}
!54 = !{!"branch_weights", i32 1, i32 2000}
!55 = !{i64 756260}
!56 = !{i64 2149873701}
!57 = !{i64 2149878633}
!58 = !{i64 2149900345}
!59 = !{i64 2149905237}
!60 = !{i64 2149981694}
!61 = !{i64 2149982019}
